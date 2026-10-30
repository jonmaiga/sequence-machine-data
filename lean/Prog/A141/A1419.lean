import SequenceMachineLib.Basic
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A141900: a(n) = smallest term in A141586 that is divisible by 2^n but not by 2^(n+1).

The programs for A141900, there is no canonical definition to state claims against.
-/

/-! ## A141900.P13816240982395033643

`lcm(2*a(n-1), A028233(A007955(n+1)))` with `a(0)=1`
-/

namespace A141900.P13816240982395033643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (2 * a (n - 1) : ℤ) (A028233 (A007955 (n + 1)).toNat)

end

end A141900.P13816240982395033643

/-! ## A141900.P13833773728260409142

`lcm(2*a(n-1), A340070(A163102(n)))` with `a(0)=1`
-/

namespace A141900.P13833773728260409142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (2 * a (n - 1) : ℤ) (A340070 (A163102 n).toNat)

end

end A141900.P13833773728260409142

/-! ## A141900.P15636064868908554562

`lcm(A000010(A001317(n)), A340516(n+1))`
-/

namespace A141900.P15636064868908554562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (A001317 n).toNat) (A340516 (n + 1))

end

end A141900.P15636064868908554562

/-! ## A141900.P1609784147348948877

`lcm(A000010(A011782(n+2)), A066616(n+1))`
-/

namespace A141900.P1609784147348948877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (A011782 (n + 2)).toNat) (A066616 (n + 1))

end

end A141900.P1609784147348948877

/-! ## A141900.P15885002419676631095

`lcm(2^n, A340515(n+1))`
-/

namespace A141900.P15885002419676631095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A340515 (n + 1))

end

end A141900.P15885002419676631095

/-!
# A141901: Triangle T(n, k) = Sum_{j=0..n-k-1} binomial(n, j+k+1) - 2^(n-k) with T(n, 0) = 1, read by rows.

The programs for A141901, there is no canonical definition to state claims against.
-/

/-! ## A141901.P2003249624763402026

`A159255(A276974(n)%A011000(n))`
-/

namespace A141901.P2003249624763402026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159255 (Int.tmod (A276974 n) (A011000 (n + 47))).toNat

end

end A141901.P2003249624763402026

/-! ## A141901.P7775934302759234843

`A051171(A040000(n)^A106234(n+1))`
-/

namespace A141901.P7775934302759234843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051171 (SequenceMachineLib.roundAway ((A040000 n : ℚ) ^ (A106234 (n + 1) : ℤ))).toNat

end

end A141901.P7775934302759234843

/-! ## A141901.P9650603953784574743

`A287272(A225816(n)²)-A033999(A013613(n))`
-/

namespace A141901.P9650603953784574743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A225816 n ^ 2).toNat - A033999 (A013613 n).toNat

end

end A141901.P9650603953784574743

/-! ## A141901.P2835930646423899925

`A287272(A225816(n)²)-A033999(A038220(n))`
-/

namespace A141901.P2835930646423899925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A225816 n ^ 2).toNat - A033999 (A038220 n).toNat

end

end A141901.P2835930646423899925

/-! ## A141901.P2446899271547035145

`A287272(A225816(n)²)-A033999(A175840(n))`
-/

namespace A141901.P2446899271547035145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A225816 n ^ 2).toNat - A033999 (A175840 n).toNat

end

end A141901.P2446899271547035145

/-!
# A141903: A linear combination of A008292 and A130595: t(n,m)=2*A008292(n,m)- A130595(n,m).

The programs for A141903, there is no canonical definition to state claims against.
-/

/-! ## A141903.P1463532896888885900

`A154338(n)+2*A262227(n)`
-/

namespace A141903.P1463532896888885900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154338 n + 2 * A262227 n

end

end A141903.P1463532896888885900

/-! ## A141903.P16201517578791469761

`2*A008292(n+1)-A130595(A061579(n))`
-/

namespace A141903.P16201517578791469761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A130595 (A061579 n).toNat

end

end A141903.P16201517578791469761

/-! ## A141903.P11574223366778919381

`2*A123125(A014132(n+1))-A130595(A061579(n))`
-/

namespace A141903.P11574223366778919381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123125 (A014132 (n + 1)).toNat - A130595 (A061579 n).toNat

end

end A141903.P11574223366778919381

/-! ## A141903.P8631224460932721338

`A124846(n)+A008586(A290448(n))`
-/

namespace A141903.P8631224460932721338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124846 n + A008586 (A290448 n).toNat

end

end A141903.P8631224460932721338

/-! ## A141903.P12027037208340248420

`A005843(A008292(n+1))-A130595(A061579(n))`
-/

namespace A141903.P12027037208340248420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008292 (n + 1)).toNat - A130595 (A061579 n).toNat

end

end A141903.P12027037208340248420

/-!
# A141905: Triangle read by rows, T(n, k) = binomial(n, k)*A052509(n, k) for 0 <= k <= n.

The programs for A141905, the canonical program `A141905.P1694949766339538005` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141905 has offset 0).

The definition of A141905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052509, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141905.P1694949766339538005

`C(row(n), col(n))*A052509(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141905

/-- `C(row(n), col(n))*A052509(C(row(n)+1, 2)+col(n))` -/
def P1694949766339538005.Spec : Prop :=
  ∀ n, P1694949766339538005.a n = A141905 n

theorem P1694949766339538005.correct : P1694949766339538005.Spec := by
  intro n
  simp only [A141905]

end A141905

/-! ## A141905.P12805804918332887852

`A007318(n)*A052509(n)`
-/

namespace A141905.P12805804918332887852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052509 n

end

end A141905.P12805804918332887852

namespace A141905

/-- `A007318(n)*A052509(n)` -/
def P12805804918332887852.Spec : Prop :=
  ∀ n, P12805804918332887852.a n = A141905 n

end A141905

/-! ## A141905.P13710455583900604459

`abs(A052509(n)*A117440(n))`
-/

namespace A141905.P13710455583900604459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052509 n * A117440 n|

end

end A141905.P13710455583900604459

namespace A141905

/-- `abs(A052509(n)*A117440(n))` -/
def P13710455583900604459.Spec : Prop :=
  ∀ n, P13710455583900604459.a n = A141905 n

end A141905

/-! ## A141905.P5570318336827580260

`abs(A052509(n)*A130595(n))`
-/

namespace A141905.P5570318336827580260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052509 n * A130595 n|

end

end A141905.P5570318336827580260

namespace A141905

/-- `abs(A052509(n)*A130595(n))` -/
def P5570318336827580260.Spec : Prop :=
  ∀ n, P5570318336827580260.a n = A141905 n

end A141905

/-! ## A141905.P8964473870073170297

`Δ[A102363(n)]*A052509(n)`
-/

namespace A141905.P8964473870073170297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052509 n

end

end A141905.P8964473870073170297

namespace A141905

/-- `Δ[A102363(n)]*A052509(n)` -/
def P8964473870073170297.Spec : Prop :=
  ∀ n, P8964473870073170297.a n = A141905 n

end A141905

/-! ## A141905.P7233750991998309688

`A028326(n)/2*A052509(n)`
-/

namespace A141905.P7233750991998309688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A052509 n : ℚ)

end

end A141905.P7233750991998309688

namespace A141905

/-- `A028326(n)/2*A052509(n)` -/
def P7233750991998309688.Spec : Prop :=
  ∀ n, P7233750991998309688.a n = (A141905 n : ℚ)

end A141905

/-! ## A141905.P10262066199602342796

`(A131247(n)+1)/2*A007318(n)`
-/

namespace A141905.P10262066199602342796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131247 n + 1 : ℚ) / 2 * (A007318 n : ℚ)

end

end A141905.P10262066199602342796

namespace A141905

/-- `(A131247(n)+1)/2*A007318(n)` -/
def P10262066199602342796.Spec : Prop :=
  ∀ n, P10262066199602342796.a n = (A141905 n : ℚ)

end A141905

/-! ## A141905.P16058065390628707299

`A007318(n)*A004070(A061579(n))`
-/

namespace A141905.P16058065390628707299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A004070 (A061579 n).toNat

end

end A141905.P16058065390628707299

namespace A141905

/-- `A007318(n)*A004070(A061579(n))` -/
def P16058065390628707299.Spec : Prop :=
  ∀ n, P16058065390628707299.a n = A141905 n

end A141905

/-! ## A141905.P2946075627146252221

`A007318(n)*A054123(A007401(n+1))`
-/

namespace A141905.P2946075627146252221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A054123 (A007401 (n + 1)).toNat

end

end A141905.P2946075627146252221

namespace A141905

/-- `A007318(n)*A054123(A007401(n+1))` -/
def P2946075627146252221.Spec : Prop :=
  ∀ n, P2946075627146252221.a n = A141905 n

end A141905

/-! ## A141905.P3857113228137108651

`A007318(n)*A001057(A131247(n))`
-/

namespace A141905.P3857113228137108651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001057 (A131247 n).toNat

end

end A141905.P3857113228137108651

namespace A141905

/-- `A007318(n)*A001057(A131247(n))` -/
def P3857113228137108651.Spec : Prop :=
  ∀ n, P3857113228137108651.a n = A141905 n

end A141905

/-! ## A141905.P5437612216013206509

`A014682(A028326(n))*A052509(n)`
-/

namespace A141905.P5437612216013206509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028326 n).toNat * A052509 n

end

end A141905.P5437612216013206509

namespace A141905

/-- `A014682(A028326(n))*A052509(n)` -/
def P5437612216013206509.Spec : Prop :=
  ∀ n, P5437612216013206509.a n = A141905 n

end A141905

/-!
# A141906: Triangle t(n,m) = (n*m)!/(m!^n) read by rows, 0<=m<=n.

The programs for A141906, the canonical program `A141906.P4865742585058893762` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141906 has offset 0).

The definition of A141906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141906.P4865742585058893762

`(row(n)*col(n))!/col(n)!^row(n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141906

/-- `(row(n)*col(n))!/col(n)!^row(n)` -/
def P4865742585058893762.Spec : Prop :=
  ∀ n, P4865742585058893762.a n = (A141906 n : ℚ)

end A141906

/-! ## A141906.P12879840269060341214

`A187783(C(row(n)+col(n)+1, 2)+row(n))`
-/

namespace A141906.P12879840269060341214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) 2 + SequenceMachineLib.triRow n)

end

end A141906.P12879840269060341214

namespace A141906

/-- `A187783(C(row(n)+col(n)+1, 2)+row(n))` -/
def P12879840269060341214.Spec : Prop :=
  ∀ n, P12879840269060341214.a n = A141906 n

end A141906

/-! ## A141906.P2769433207567026143

`A089759(A245300(n))`
-/

namespace A141906.P2769433207567026143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A245300 n).toNat

end

end A141906.P2769433207567026143

namespace A141906

/-- `A089759(A245300(n))` -/
def P2769433207567026143.Spec : Prop :=
  ∀ n, P2769433207567026143.a n = A141906 n

end A141906

/-! ## A141906.P6681510748054817234

`A187783(A245300(n)+A025581(n))`
-/

namespace A141906.P6681510748054817234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A245300 n + A025581 n).toNat

end

end A141906.P6681510748054817234

namespace A141906

/-- `A187783(A245300(n)+A025581(n))` -/
def P6681510748054817234.Spec : Prop :=
  ∀ n, P6681510748054817234.a n = A141906 n

end A141906

/-! ## A141906.P10732826110392931406

`(col(n)*row(n))!/col(n)!^row(n)`
-/

namespace A141906.P10732826110392931406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n * SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) ^ SequenceMachineLib.triRow n : ℚ)

end

end A141906.P10732826110392931406

namespace A141906

/-- `(col(n)*row(n))!/col(n)!^row(n)` -/
def P10732826110392931406.Spec : Prop :=
  ∀ n, P10732826110392931406.a n = (A141906 n : ℚ)

end A141906

/-!
# A141908: Primes congruent to 2 mod 23.

The programs for A141908, there is no canonical definition to state claims against.
-/

/-! ## A141908.P9127167239853998972

`∪[A007352(n+1), A142344(n+1)]`
-/

namespace A141908.P9127167239853998972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P9127167239853998972

/-! ## A141908.P2517064105931690437

`∪[A142344(n+1), A247214(n+1)]`
-/

namespace A141908.P2517064105931690437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P2517064105931690437

/-! ## A141908.P18082772387522779965

`∪[A142344(n+1), A262729(n+1)]`
-/

namespace A141908.P18082772387522779965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P18082772387522779965

/-! ## A141908.P18201154320230361314

`∪[A142344(n+1), A263645(n+1)]`
-/

namespace A141908.P18201154320230361314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P18201154320230361314

/-! ## A141908.P12954821732579458916

`p?[23*n+2]`
-/

namespace A141908.P12954821732579458916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141908.P12954821732579458916

/-! ## A141908.P8118436591465601791

`p?[a(n-1)+23]%A078144(n+1)` with `a(0)=2`
-/

namespace A141908.P8118436591465601791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A078144 (n + 1))

end

end A141908.P8118436591465601791

/-! ## A141908.P11066765303146374785

`A000027(p?[A008605(n)+2])`
-/

namespace A141908.P11066765303146374785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141908.P11066765303146374785

/-! ## A141908.P1211871499180411281

`A000027(p?[A017545(n)+A008593(n)])`
-/

namespace A141908.P1211871499180411281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141908.P1211871499180411281

/-! ## A141908.P3239978981078362026

`A000027(p?[A053741(n)-A124388(n)])`
-/

namespace A141908.P3239978981078362026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141908.P3239978981078362026

/-! ## A141908.P13899764071265529616

`p?[A053741(n)-A124388(n)]%A017137(n)²`
-/

namespace A141908.P13899764071265529616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017137 n ^ 2)

end

end A141908.P13899764071265529616

/-! ## A141908.P189089771861152769

`p?[A053741(n)-A124388(n)]^A008836(n+1)²`
-/

namespace A141908.P189089771861152769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A124388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A008836 (n + 1) ^ 2 : ℤ)

end

end A141908.P189089771861152769

/-! ## A141908.P4120162265573057008

`∩[A191021(n+1), A215148(n)+1]`
-/

namespace A141908.P4120162265573057008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P4120162265573057008

/-! ## A141908.P5120434015272869236

`∩[A296932(n+1), A215148(n)+1]`
-/

namespace A141908.P5120434015272869236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P5120434015272869236

/-! ## A141908.P11984091833497257416

`∩[A000040(n+1), A215148(n)+1]`
-/

namespace A141908.P11984091833497257416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P11984091833497257416

/-! ## A141908.P9921294339834236232

`∩[A045319(n+1), A215148(n)+1]`
-/

namespace A141908.P9921294339834236232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P9921294339834236232

/-! ## A141908.P10259120008455094883

`∩[A045344(n+1), A215148(n)+1]`
-/

namespace A141908.P10259120008455094883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P10259120008455094883

/-! ## A141908.P1255399250603539005

`∩[A051948(n+1), A215148(n)+1]`
-/

namespace A141908.P1255399250603539005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P1255399250603539005

/-! ## A141908.P2823523361334258852

`∩[A053813(n+1), A215148(n)+1]`
-/

namespace A141908.P2823523361334258852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141908.P2823523361334258852

/-! ## A141908.P10678055518001406564

`record[A020639(A215148(n+2)+1)]`
-/

namespace A141908.P10678055518001406564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215148 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141908.P10678055518001406564

/-! ## A141908.P17420404838453861492

`A008472(p?[A161709(n)+1+n])`
-/

namespace A141908.P17420404838453861492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141908.P17420404838453861492

/-!
# A141909: Primes congruent to 4 mod 23.

The programs for A141909, the canonical program `A141909.P13650298499783670270` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141909 has offset 1).

The definition of A141909 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141909.anchor (n : ℕ) (hn : 1 ≤ n) : A141909 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 4) (n - 1) : ℤ)` in `Proof.A141.A141909`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141909.P13650298499783670270

`p?[23*n+4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141909

/-- `p?[23*n+4]` -/
def P13650298499783670270.Spec : Prop :=
  ∀ n, (P13650298499783670270.a n : ℤ) = A141909 (n + 1)

theorem P13650298499783670270.correct : P13650298499783670270.Spec := by
  intro n
  simp only [A141909, Nat.add_sub_cancel]

end A141909

/-! ## A141909.P7519912040431058509

`A000027(p?[A017545(n)+A017413(n)])`
-/

namespace A141909.P7519912040431058509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141909.P7519912040431058509

namespace A141909

/-- `A000027(p?[A017545(n)+A017413(n)])` -/
def P7519912040431058509.Spec : Prop :=
  ∀ n, P7519912040431058509.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P7460299315846395015

`A000027(p?[A259751(n+1)+A008593(n)])`
-/

namespace A141909.P7460299315846395015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259751 (n + 1) + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141909.P7460299315846395015

namespace A141909

/-- `A000027(p?[A259751(n+1)+A008593(n)])` -/
def P7460299315846395015.Spec : Prop :=
  ∀ n, P7460299315846395015.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P17651011932740109985

`A000027(p?[A017413(n)+A017413(n)+n])`
-/

namespace A141909.P17651011932740109985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n + (A017413 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141909.P17651011932740109985

namespace A141909

/-- `A000027(p?[A017413(n)+A017413(n)+n])` -/
def P17651011932740109985.Spec : Prop :=
  ∀ n, P17651011932740109985.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P4975432897386713269

`∩[A155450(n+1)-1, A191021(n+1)]`
-/

namespace A141909.P4975432897386713269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141909.P4975432897386713269

namespace A141909

/-- `∩[A155450(n+1)-1, A191021(n+1)]` -/
def P4975432897386713269.Spec : Prop :=
  ∀ n, (P4975432897386713269.a n : ℤ) = A141909 (n + 1)

end A141909

/-! ## A141909.P11412982744571452987

`∩[A155450(n+1)-1, A296932(n+1)]`
-/

namespace A141909.P11412982744571452987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141909.P11412982744571452987

namespace A141909

/-- `∩[A155450(n+1)-1, A296932(n+1)]` -/
def P11412982744571452987.Spec : Prop :=
  ∀ n, (P11412982744571452987.a n : ℤ) = A141909 (n + 1)

end A141909

/-! ## A141909.P12059741778215995600

`record[A006530(23*n+73)]`
-/

namespace A141909.P12059741778215995600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (23 * n + 73)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141909.P12059741778215995600

namespace A141909

/-- `record[A006530(23*n+73)]` -/
def P12059741778215995600.Spec : Prop :=
  ∀ n, P12059741778215995600.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P4610160543420277003

`A000265(p?[A017545(n)+A017413(n)])`
-/

namespace A141909.P4610160543420277003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141909.P4610160543420277003

namespace A141909

/-- `A000265(p?[A017545(n)+A017413(n)])` -/
def P4610160543420277003.Spec : Prop :=
  ∀ n, P4610160543420277003.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P17557442082044585797

`A007913(p?[A259751(n+1)+A008593(n)])`
-/

namespace A141909.P17557442082044585797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259751 (n + 1) + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141909.P17557442082044585797

namespace A141909

/-- `A007913(p?[A259751(n+1)+A008593(n)])` -/
def P17557442082044585797.Spec : Prop :=
  ∀ n, P17557442082044585797.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P3225740073944553526

`A034699(p?[A161709(n+1)+4+n])`
-/

namespace A141909.P3225740073944553526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n + 1) + 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141909.P3225740073944553526

namespace A141909

/-- `A034699(p?[A161709(n+1)+4+n])` -/
def P3225740073944553526.Spec : Prop :=
  ∀ n, P3225740073944553526.a n = A141909 (n + 1)

end A141909

/-! ## A141909.P9198708490592276583

`∩[A310509(n+1)+2, A191021(n+2)]`
-/

namespace A141909.P9198708490592276583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141909.P9198708490592276583

namespace A141909

/-- `∩[A310509(n+1)+2, A191021(n+2)]` -/
def P9198708490592276583.Spec : Prop :=
  ∀ n, (P9198708490592276583.a n : ℤ) = A141909 (n + 1)

end A141909

/-!
# A141910: Primes congruent to 6 mod 23.

The programs for A141910, the canonical program `A141910.P16755912875914425086` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141910 has offset 1).

The definition of A141910 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141910.anchor (n : ℕ) (hn : 1 ≤ n) : A141910 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 6) (n - 1) : ℤ)` in `Proof.A141.A141910`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141910.P16755912875914425086

`p?[23*n+6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141910

/-- `p?[23*n+6]` -/
def P16755912875914425086.Spec : Prop :=
  ∀ n, (P16755912875914425086.a n : ℤ) = A141910 (n + 1)

theorem P16755912875914425086.correct : P16755912875914425086.Spec := by
  intro n
  simp only [A141910, Nat.add_sub_cancel]

end A141910

/-! ## A141910.P5850692243119427214

`∩[A155450(n+1)+1, A191021(n+1)]`
-/

namespace A141910.P5850692243119427214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141910.P5850692243119427214

namespace A141910

/-- `∩[A155450(n+1)+1, A191021(n+1)]` -/
def P5850692243119427214.Spec : Prop :=
  ∀ n, (P5850692243119427214.a n : ℤ) = A141910 (n + 1)

end A141910

/-! ## A141910.P15054006376384283559

`∩[A155450(n+1)+1, A296932(n+1)]`
-/

namespace A141910.P15054006376384283559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141910.P15054006376384283559

namespace A141910

/-- `∩[A155450(n+1)+1, A296932(n+1)]` -/
def P15054006376384283559.Spec : Prop :=
  ∀ n, (P15054006376384283559.a n : ℤ) = A141910 (n + 1)

end A141910

/-! ## A141910.P17676378718096103281

`record[A020639(A017473(2*(n+1))+n)]`
-/

namespace A141910.P17676378718096103281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017473 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141910.P17676378718096103281

namespace A141910

/-- `record[A020639(A017473(2*(n+1))+n)]` -/
def P17676378718096103281.Spec : Prop :=
  ∀ n, P17676378718096103281.a n = A141910 (n + 1)

end A141910

/-! ## A141910.P82894416069222186

`record[A006530(A017461(2*(n+1))+n+1)]`
-/

namespace A141910.P82894416069222186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017461 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141910.P82894416069222186

namespace A141910

/-- `record[A006530(A017461(2*(n+1))+n+1)]` -/
def P82894416069222186.Spec : Prop :=
  ∀ n, P82894416069222186.a n = A141910 (n + 1)

end A141910

/-! ## A141910.P5236188104588994928

`record[A020639(A017461(2*(n+1))+n+1)]`
-/

namespace A141910.P5236188104588994928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017461 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141910.P5236188104588994928

namespace A141910

/-- `record[A020639(A017461(2*(n+1))+n+1)]` -/
def P5236188104588994928.Spec : Prop :=
  ∀ n, P5236188104588994928.a n = A141910 (n + 1)

end A141910

/-! ## A141910.P1189167161374350868

`A034699(p?[A161709(n)+5+n])`
-/

namespace A141910.P1189167161374350868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141910.P1189167161374350868

namespace A141910

/-- `A034699(p?[A161709(n)+5+n])` -/
def P1189167161374350868.Spec : Prop :=
  ∀ n, P1189167161374350868.a n = A141910 (n + 1)

end A141910

/-! ## A141910.P11430743233089042264

`∩[A191021(n+1), A315704(n)]`
-/

namespace A141910.P11430743233089042264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141910.P11430743233089042264

namespace A141910

/-- `∩[A191021(n+1), A315704(n)]` -/
def P11430743233089042264.Spec : Prop :=
  ∀ n, (P11430743233089042264.a n : ℤ) = A141910 (n + 1)

end A141910

/-! ## A141910.P5804874296914280819

`filter[A314083(3*n), A010051(#)]`
-/

namespace A141910.P5804874296914280819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314083 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141910.P5804874296914280819

namespace A141910

/-- `filter[A314083(3*n), A010051(#)]` -/
def P5804874296914280819.Spec : Prop :=
  ∀ n, P5804874296914280819.a n = A141910 (n + 1)

end A141910

/-! ## A141910.P5793575990563982278

`filter[A314083(3*n), A257531(#)]`
-/

namespace A141910.P5793575990563982278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314083 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A141910.P5793575990563982278

namespace A141910

/-- `filter[A314083(3*n), A257531(#)]` -/
def P5793575990563982278.Spec : Prop :=
  ∀ n, P5793575990563982278.a n = A141910 (n + 1)

end A141910

/-!
# A141911: Primes congruent to 7 mod 23.

The programs for A141911, the canonical program `A141911.P17598538728419590406` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141911 has offset 1).

The definition of A141911 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141911.anchor (n : ℕ) (hn : 1 ≤ n) : A141911 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 7) (n - 1) : ℤ)` in `Proof.A141.A141911`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141911.P17598538728419590406

`p?[23*n+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141911

/-- `p?[23*n+7]` -/
def P17598538728419590406.Spec : Prop :=
  ∀ n, (P17598538728419590406.a n : ℤ) = A141911 (n + 1)

theorem P17598538728419590406.correct : P17598538728419590406.Spec := by
  intro n
  simp only [A141911, Nat.add_sub_cancel]

end A141911

/-! ## A141911.P8065593278480582621

`∩[A017605(2*n)-n, A009087(n+2)]`
-/

namespace A141911.P8065593278480582621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P8065593278480582621

namespace A141911

/-- `∩[A017605(2*n)-n, A009087(n+2)]` -/
def P8065593278480582621.Spec : Prop :=
  ∀ n, (P8065593278480582621.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P17406958665505034398

`∩[A155450(2*n+1)+2, A191065(n+2)]`
-/

namespace A141911.P17406958665505034398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P17406958665505034398

namespace A141911

/-- `∩[A155450(2*n+1)+2, A191065(n+2)]` -/
def P17406958665505034398.Spec : Prop :=
  ∀ n, (P17406958665505034398.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P18016137714849396358

`∩[A017605(2*n)-n, A000040(n+2)]`
-/

namespace A141911.P18016137714849396358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P18016137714849396358

namespace A141911

/-- `∩[A017605(2*n)-n, A000040(n+2)]` -/
def P18016137714849396358.Spec : Prop :=
  ∀ n, (P18016137714849396358.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P9794139452494985867

`∩[A017605(2*n)-n, A004139(n+2)]`
-/

namespace A141911.P9794139452494985867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P9794139452494985867

namespace A141911

/-- `∩[A017605(2*n)-n, A004139(n+2)]` -/
def P9794139452494985867.Spec : Prop :=
  ∀ n, (P9794139452494985867.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P5146089615927094856

`∩[A017605(2*n)-n, A006005(n+2)]`
-/

namespace A141911.P5146089615927094856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P5146089615927094856

namespace A141911

/-- `∩[A017605(2*n)-n, A006005(n+2)]` -/
def P5146089615927094856.Spec : Prop :=
  ∀ n, (P5146089615927094856.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P7822237194824498615

`∩[A017605(2*n)-n, A008578(n+2)]`
-/

namespace A141911.P7822237194824498615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P7822237194824498615

namespace A141911

/-- `∩[A017605(2*n)-n, A008578(n+2)]` -/
def P7822237194824498615.Spec : Prop :=
  ∀ n, (P7822237194824498615.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P1015705487804380306

`∩[A017605(2*n)-n, A033946(n+2)]`
-/

namespace A141911.P1015705487804380306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P1015705487804380306

namespace A141911

/-- `∩[A017605(2*n)-n, A033946(n+2)]` -/
def P1015705487804380306.Spec : Prop :=
  ∀ n, (P1015705487804380306.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P1220290327169445478

`∩[A140716(2*n+1)-n, A000040(n+2)]`
-/

namespace A141911.P1220290327169445478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P1220290327169445478

namespace A141911

/-- `∩[A140716(2*n+1)-n, A000040(n+2)]` -/
def P1220290327169445478.Spec : Prop :=
  ∀ n, (P1220290327169445478.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P7888205909499667439

`∩[A017605(2*n)-n, A000430(n+2)]`
-/

namespace A141911.P7888205909499667439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141911.P7888205909499667439

namespace A141911

/-- `∩[A017605(2*n)-n, A000430(n+2)]` -/
def P7888205909499667439.Spec : Prop :=
  ∀ n, (P7888205909499667439.a n : ℤ) = A141911 (n + 1)

end A141911

/-! ## A141911.P479414837356566326

`record[A020639(23*n+7)]`
-/

namespace A141911.P479414837356566326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (23 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141911.P479414837356566326

namespace A141911

/-- `record[A020639(23*n+7)]` -/
def P479414837356566326.Spec : Prop :=
  ∀ n, P479414837356566326.a n = A141911 (n + 1)

end A141911

/-! ## A141911.P12195615133762851082

`record[A006530(A139610(n)-3+n)]`
-/

namespace A141911.P12195615133762851082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139610 n - 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141911.P12195615133762851082

namespace A141911

/-- `record[A006530(A139610(n)-3+n)]` -/
def P12195615133762851082.Spec : Prop :=
  ∀ n, P12195615133762851082.a n = A141911 (n + 1)

end A141911

/-! ## A141911.P14187220926954949138

`record[A006530(A164135(2*n+1)-n)]`
-/

namespace A141911.P14187220926954949138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164135 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141911.P14187220926954949138

namespace A141911

/-- `record[A006530(A164135(2*n+1)-n)]` -/
def P14187220926954949138.Spec : Prop :=
  ∀ n, P14187220926954949138.a n = A141911 (n + 1)

end A141911

/-! ## A141911.P13750058266804814434

`record[A006530(A139264(n+1)-A008606(n))]`
-/

namespace A141911.P13750058266804814434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139264 (n + 1) - A008606 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141911.P13750058266804814434

namespace A141911

/-- `record[A006530(A139264(n+1)-A008606(n))]` -/
def P13750058266804814434.Spec : Prop :=
  ∀ n, P13750058266804814434.a n = A141911 (n + 1)

end A141911

/-! ## A141911.P3325304320849175847

`A125746(p?[A017473(n+n)+n])`
-/

namespace A141911.P3325304320849175847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (n + n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141911.P3325304320849175847

namespace A141911

/-- `A125746(p?[A017473(n+n)+n])` -/
def P3325304320849175847.Spec : Prop :=
  ∀ n, P3325304320849175847.a n = A141911 (n + 1)

end A141911

/-!
# A141912: Primes congruent to 8 mod 23.

The programs for A141912, the canonical program `A141912.P8202784763525436486` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141912 has offset 1).

The definition of A141912 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141912.anchor (n : ℕ) (hn : 1 ≤ n) : A141912 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 8) (n - 1) : ℤ)` in `Proof.A141.A141912`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141912.P8202784763525436486

`p?[23*n+8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141912

/-- `p?[23*n+8]` -/
def P8202784763525436486.Spec : Prop :=
  ∀ n, (P8202784763525436486.a n : ℤ) = A141912 (n + 1)

theorem P8202784763525436486.correct : P8202784763525436486.Spec := by
  intro n
  simp only [A141912, Nat.add_sub_cancel]

end A141912

/-! ## A141912.P9790545843123443436

`p?[a(n-1)+23]^A000120(A061142(n+1))` with `a(0)=8`
-/

namespace A141912.P9790545843123443436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (A000120 (A061142 (n + 1)).toNat : ℤ)

end

end A141912.P9790545843123443436

namespace A141912

/-- `p?[a(n-1)+23]^A000120(A061142(n+1))` -/
def P9790545843123443436.Spec : Prop :=
  ∀ n, P9790545843123443436.a n = (A141912 (n + 1) : ℚ)

end A141912

/-! ## A141912.P5486833302998965

`A000027(p?[8*A006370(n)-n])`
-/

namespace A141912.P5486833302998965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006370 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141912.P5486833302998965

namespace A141912

/-- `A000027(p?[8*A006370(n)-n])` -/
def P5486833302998965.Spec : Prop :=
  ∀ n, P5486833302998965.a n = A141912 (n + 1)

end A141912

/-! ## A141912.P5959381328268392389

`record[A020639(23*(n+1)+8)]`
-/

namespace A141912.P5959381328268392389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (23 * (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141912.P5959381328268392389

namespace A141912

/-- `record[A020639(23*(n+1)+8)]` -/
def P5959381328268392389.Spec : Prop :=
  ∀ n, P5959381328268392389.a n = A141912 (n + 1)

end A141912

/-! ## A141912.P7638527175264874760

`A125746(p?[A017473(n+n)+n+1])`
-/

namespace A141912.P7638527175264874760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (n + n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141912.P7638527175264874760

namespace A141912

/-- `A125746(p?[A017473(n+n)+n+1])` -/
def P7638527175264874760.Spec : Prop :=
  ∀ n, P7638527175264874760.a n = A141912 (n + 1)

end A141912

/-! ## A141912.P2102260233865219652

`∩[A315704(2*n+1)+2, A191021(n+2)]`
-/

namespace A141912.P2102260233865219652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141912.P2102260233865219652

namespace A141912

/-- `∩[A315704(2*n+1)+2, A191021(n+2)]` -/
def P2102260233865219652.Spec : Prop :=
  ∀ n, (P2102260233865219652.a n : ℤ) = A141912 (n + 1)

end A141912

/-! ## A141912.P10810505094098126178

`∩[A191021(n+1), A310462(n)]`
-/

namespace A141912.P10810505094098126178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141912.P10810505094098126178

namespace A141912

/-- `∩[A191021(n+1), A310462(n)]` -/
def P10810505094098126178.Spec : Prop :=
  ∀ n, (P10810505094098126178.a n : ℤ) = A141912 (n + 1)

end A141912

/-! ## A141912.P13859489009914733633

`∩[A296932(n+1), A310462(n)]`
-/

namespace A141912.P13859489009914733633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141912.P13859489009914733633

namespace A141912

/-- `∩[A296932(n+1), A310462(n)]` -/
def P13859489009914733633.Spec : Prop :=
  ∀ n, (P13859489009914733633.a n : ℤ) = A141912 (n + 1)

end A141912

/-! ## A141912.P6579123463049357475

`filter[A313600(3*n), A010051(#)]`
-/

namespace A141912.P6579123463049357475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313600 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141912.P6579123463049357475

namespace A141912

/-- `filter[A313600(3*n), A010051(#)]` -/
def P6579123463049357475.Spec : Prop :=
  ∀ n, P6579123463049357475.a n = A141912 (n + 1)

end A141912

/-! ## A141912.P2481807016184009733

`filter[A313643(3*n), A010051(#)]`
-/

namespace A141912.P2481807016184009733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141912.P2481807016184009733

namespace A141912

/-- `filter[A313643(3*n), A010051(#)]` -/
def P2481807016184009733.Spec : Prop :=
  ∀ n, P2481807016184009733.a n = A141912 (n + 1)

end A141912

/-!
# A141913: Primes congruent to 9 mod 23.

The programs for A141913, the canonical program `A141913.P700375491561002954` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141913 has offset 1).

The definition of A141913 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141913.anchor (n : ℕ) (hn : 1 ≤ n) : A141913 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 9) (n - 1) : ℤ)` in `Proof.A141.A141913`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141913.P700375491561002954

`p?[23*n+9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141913

/-- `p?[23*n+9]` -/
def P700375491561002954.Spec : Prop :=
  ∀ n, (P700375491561002954.a n : ℤ) = A141913 (n + 1)

theorem P700375491561002954.correct : P700375491561002954.Spec := by
  intro n
  simp only [A141913, Nat.add_sub_cancel]

end A141913

/-! ## A141913.P17234484846675506370

`record[A006530(50*(n+2)-4*n+1)]`
-/

namespace A141913.P17234484846675506370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((50 * (n + 2) : ℤ) - (4 * n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141913.P17234484846675506370

namespace A141913

/-- `record[A006530(50*(n+2)-4*n+1)]` -/
def P17234484846675506370.Spec : Prop :=
  ∀ n, P17234484846675506370.a n = A141913 (n + 1)

end A141913

/-! ## A141913.P16006795184012902806

`record[A020639(50*(n+2)-4*n+1)]`
-/

namespace A141913.P16006795184012902806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((50 * (n + 2) : ℤ) - (4 * n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141913.P16006795184012902806

namespace A141913

/-- `record[A020639(50*(n+2)-4*n+1)]` -/
def P16006795184012902806.Spec : Prop :=
  ∀ n, P16006795184012902806.a n = A141913 (n + 1)

end A141913

/-! ## A141913.P2472834107574760726

`A000265(p?[A017569(n)+A017449(n)])`
-/

namespace A141913.P2472834107574760726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141913.P2472834107574760726

namespace A141913

/-- `A000265(p?[A017569(n)+A017449(n)])` -/
def P2472834107574760726.Spec : Prop :=
  ∀ n, P2472834107574760726.a n = A141913 (n + 1)

end A141913

/-! ## A141913.P9385390883334833648

`A007913(p?[A082369(n+1)-A017029(n)])`
-/

namespace A141913.P9385390883334833648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141913.P9385390883334833648

namespace A141913

/-- `A007913(p?[A082369(n+1)-A017029(n)])` -/
def P9385390883334833648.Spec : Prop :=
  ∀ n, P9385390883334833648.a n = A141913 (n + 1)

end A141913

/-! ## A141913.P9175833593826176865

`A000265(p?[A159754(n+1)-A042948(n)])`
-/

namespace A141913.P9175833593826176865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141913.P9175833593826176865

namespace A141913

/-- `A000265(p?[A159754(n+1)-A042948(n)])` -/
def P9175833593826176865.Spec : Prop :=
  ∀ n, P9175833593826176865.a n = A141913 (n + 1)

end A141913

/-! ## A141913.P16966296994900754236

`∩[A191021(n+1), A313153(n)]`
-/

namespace A141913.P16966296994900754236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141913.P16966296994900754236

namespace A141913

/-- `∩[A191021(n+1), A313153(n)]` -/
def P16966296994900754236.Spec : Prop :=
  ∀ n, (P16966296994900754236.a n : ℤ) = A141913 (n + 1)

end A141913

/-! ## A141913.P616812827408808678

`∩[A296932(n+1), A313153(n)]`
-/

namespace A141913.P616812827408808678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141913.P616812827408808678

namespace A141913

/-- `∩[A296932(n+1), A313153(n)]` -/
def P616812827408808678.Spec : Prop :=
  ∀ n, (P616812827408808678.a n : ℤ) = A141913 (n + 1)

end A141913

/-! ## A141913.P3819193140475012929

`∩[A191021(n+1), A313053(n)]`
-/

namespace A141913.P3819193140475012929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141913.P3819193140475012929

namespace A141913

/-- `∩[A191021(n+1), A313053(n)]` -/
def P3819193140475012929.Spec : Prop :=
  ∀ n, (P3819193140475012929.a n : ℤ) = A141913 (n + 1)

end A141913

/-! ## A141913.P5906978974033643072

`A007948(p?[A144619(n)+A016813(n)])`
-/

namespace A141913.P5906978974033643072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141913.P5906978974033643072

namespace A141913

/-- `A007948(p?[A144619(n)+A016813(n)])` -/
def P5906978974033643072.Spec : Prop :=
  ∀ n, P5906978974033643072.a n = A141913 (n + 1)

end A141913

/-!
# A141914: Primes congruent to 10 mod 23.

The programs for A141914, the canonical program `A141914.P17407399612554836615` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141914 has offset 1).

The definition of A141914 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141914.anchor (n : ℕ) (hn : 1 ≤ n) : A141914 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 10) (n - 1) : ℤ)` in `Proof.A141.A141914`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141914.P17407399612554836615

`p?[23*n+10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141914

/-- `p?[23*n+10]` -/
def P17407399612554836615.Spec : Prop :=
  ∀ n, (P17407399612554836615.a n : ℤ) = A141914 (n + 1)

theorem P17407399612554836615.correct : P17407399612554836615.Spec := by
  intro n
  simp only [A141914, Nat.add_sub_cancel]

end A141914

/-! ## A141914.P3376862651701456568

`A000027(p?[A017569(n)+A017461(n)])`
-/

namespace A141914.P3376862651701456568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P3376862651701456568

namespace A141914

/-- `A000027(p?[A017569(n)+A017461(n)])` -/
def P3376862651701456568.Spec : Prop :=
  ∀ n, P3376862651701456568.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P11186511723345908479

`A000027(p?[A017581(n)+A017449(n)])`
-/

namespace A141914.P11186511723345908479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P11186511723345908479

namespace A141914

/-- `A000027(p?[A017581(n)+A017449(n)])` -/
def P11186511723345908479.Spec : Prop :=
  ∀ n, P11186511723345908479.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P10510541593472983416

`A000027(p?[A190991(n)+A017377(n)])`
-/

namespace A141914.P10510541593472983416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P10510541593472983416

namespace A141914

/-- `A000027(p?[A190991(n)+A017377(n)])` -/
def P10510541593472983416.Spec : Prop :=
  ∀ n, P10510541593472983416.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P14626037701093974766

`A000027(p?[A154266(n)-A016825(n)])`
-/

namespace A141914.P14626037701093974766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P14626037701093974766

namespace A141914

/-- `A000027(p?[A154266(n)-A016825(n)])` -/
def P14626037701093974766.Spec : Prop :=
  ∀ n, P14626037701093974766.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P2079827218833829594

`A007947(p?[A215148(n)+9])`
-/

namespace A141914.P2079827218833829594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P2079827218833829594

namespace A141914

/-- `A007947(p?[A215148(n)+9])` -/
def P2079827218833829594.Spec : Prop :=
  ∀ n, P2079827218833829594.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P430792703771989727

`A000265(p?[A017617(n)+A017413(n)])`
-/

namespace A141914.P430792703771989727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P430792703771989727

namespace A141914

/-- `A000265(p?[A017617(n)+A017413(n)])` -/
def P430792703771989727.Spec : Prop :=
  ∀ n, P430792703771989727.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P12895485080982121449

`A001414(p?[A017617(n)+A017413(n)])`
-/

namespace A141914.P12895485080982121449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P12895485080982121449

namespace A141914

/-- `A001414(p?[A017617(n)+A017413(n)])` -/
def P12895485080982121449.Spec : Prop :=
  ∀ n, P12895485080982121449.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P17000495084447104044

`A007947(p?[A017569(n)+A017461(n)])`
-/

namespace A141914.P17000495084447104044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P17000495084447104044

namespace A141914

/-- `A007947(p?[A017569(n)+A017461(n)])` -/
def P17000495084447104044.Spec : Prop :=
  ∀ n, P17000495084447104044.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P5427238147938235575

`A007947(p?[A190991(n)+A017377(n)])`
-/

namespace A141914.P5427238147938235575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P5427238147938235575

namespace A141914

/-- `A007947(p?[A190991(n)+A017377(n)])` -/
def P5427238147938235575.Spec : Prop :=
  ∀ n, P5427238147938235575.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P17903236214891374556

`A007947(p?[A154266(n)-A016825(n)])`
-/

namespace A141914.P17903236214891374556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141914.P17903236214891374556

namespace A141914

/-- `A007947(p?[A154266(n)-A016825(n)])` -/
def P17903236214891374556.Spec : Prop :=
  ∀ n, P17903236214891374556.a n = A141914 (n + 1)

end A141914

/-! ## A141914.P2966726091677003742

`∩[A155450(2*n+1)-A155450(n+2), A191065(n+2)]`
-/

namespace A141914.P2966726091677003742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1) - A155450 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141914.P2966726091677003742

namespace A141914

/-- `∩[A155450(2*n+1)-A155450(n+2), A191065(n+2)]` -/
def P2966726091677003742.Spec : Prop :=
  ∀ n, (P2966726091677003742.a n : ℤ) = A141914 (n + 1)

end A141914

/-!
# A141915: Primes congruent to 11 mod 23.

The programs for A141915, the canonical program `A141915.P9236449187066739002` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141915 has offset 1).

The definition of A141915 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141915.anchor (n : ℕ) (hn : 1 ≤ n) : A141915 n = (Nat.nth (fun p => p.Prime ∧ p % 23 ∈ ({11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141915`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141915.P9236449187066739002

`p?[a(n-1)+23]` with `a(0)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141915

/-- `p?[a(n-1)+23]` -/
def P9236449187066739002.Spec : Prop :=
  ∀ n, (P9236449187066739002.a n : ℤ) = A141915 (n + 1)

theorem P9236449187066739002.correct : P9236449187066739002.Spec := by
  intro n
  simp only [A141915, Nat.add_sub_cancel]

end A141915

/-! ## A141915.P13008105405201933257

`p?[12*n+11*(n+1)]`
-/

namespace A141915.P13008105405201933257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 11 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141915.P13008105405201933257

namespace A141915

/-- `p?[12*n+11*(n+1)]` -/
def P13008105405201933257.Spec : Prop :=
  ∀ n, (P13008105405201933257.a n : ℤ) = A141915 (n + 1)

end A141915

/-! ## A141915.P1137394096859375831

`or(1, p?[A139611(n)-9*n])`
-/

namespace A141915.P1137394096859375831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141915.P1137394096859375831

namespace A141915

/-- `or(1, p?[A139611(n)-9*n])` -/
def P1137394096859375831.Spec : Prop :=
  ∀ n, P1137394096859375831.a n = A141915 (n + 1)

end A141915

/-! ## A141915.P16354690118840147903

`A000027(p?[A154266(n)-A047522(n+1)])`
-/

namespace A141915.P16354690118840147903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141915.P16354690118840147903

namespace A141915

/-- `A000027(p?[A154266(n)-A047522(n+1)])` -/
def P16354690118840147903.Spec : Prop :=
  ∀ n, P16354690118840147903.a n = A141915 (n + 1)

end A141915

/-! ## A141915.P4179941092356196509

`∩[A017653(2*n)-n, A004139(n+2)]`
-/

namespace A141915.P4179941092356196509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141915.P4179941092356196509

namespace A141915

/-- `∩[A017653(2*n)-n, A004139(n+2)]` -/
def P4179941092356196509.Spec : Prop :=
  ∀ n, (P4179941092356196509.a n : ℤ) = A141915 (n + 1)

end A141915

/-! ## A141915.P12387881449645115187

`A000265(p?[23*n+11])`
-/

namespace A141915.P12387881449645115187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141915.P12387881449645115187

namespace A141915

/-- `A000265(p?[23*n+11])` -/
def P12387881449645115187.Spec : Prop :=
  ∀ n, P12387881449645115187.a n = A141915 (n + 1)

end A141915

/-! ## A141915.P3344257608337386827

`record[A020639(9*(3*n+1)-4*n+2)]`
-/

namespace A141915.P3344257608337386827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((9 * (3 * n + 1) : ℤ) - (4 * n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141915.P3344257608337386827

namespace A141915

/-- `record[A020639(9*(3*n+1)-4*n+2)]` -/
def P3344257608337386827.Spec : Prop :=
  ∀ n, P3344257608337386827.a n = A141915 (n + 1)

end A141915

/-! ## A141915.P14101116320847979718

`∩[A191065(n+1), A313153(n)+2]`
-/

namespace A141915.P14101116320847979718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141915.P14101116320847979718

namespace A141915

/-- `∩[A191065(n+1), A313153(n)+2]` -/
def P14101116320847979718.Spec : Prop :=
  ∀ n, (P14101116320847979718.a n : ℤ) = A141915 (n + 1)

end A141915

/-! ## A141915.P6798310551814080216

`∩[A191065(n+1), A313053(n)+2]`
-/

namespace A141915.P6798310551814080216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141915.P6798310551814080216

namespace A141915

/-- `∩[A191065(n+1), A313053(n)+2]` -/
def P6798310551814080216.Spec : Prop :=
  ∀ n, (P6798310551814080216.a n : ℤ) = A141915 (n + 1)

end A141915

/-! ## A141915.P2573815554723332320

`record[A014963(abs(Δ[10*n²]+3*n-1)+2)]`
-/

namespace A141915.P2573815554723332320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (|(f2 (n + 1) : ℤ) - (f2 n : ℤ) + (3 * n : ℤ) - 1| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141915.P2573815554723332320

namespace A141915

/-- `record[A014963(abs(Δ[10*n²]+3*n-1)+2)]` -/
def P2573815554723332320.Spec : Prop :=
  ∀ n, P2573815554723332320.a n = A141915 (n + 1)

end A141915

/-!
# A141916: Primes congruent to 12 mod 23.

The programs for A141916, the canonical program `A141916.P14493093726270992137` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141916 has offset 1).

The definition of A141916 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141916.anchor (n : ℕ) (hn : 1 ≤ n) : A141916 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 12) (n - 1) : ℤ)` in `Proof.A141.A141916`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141916.P14493093726270992137

`p?[23*n-11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141916

/-- `p?[23*n-11]` -/
def P14493093726270992137.Spec : Prop :=
  ∀ n, P14493093726270992137.a n = A141916 (n + 1)

theorem P14493093726270992137.correct : P14493093726270992137.Spec := by
  intro n
  simp only [A141916, Nat.add_sub_cancel]

end A141916

/-! ## A141916.P14251180889722478467

`or(1, p?[a(n-1)+23])` with `a(0)=12`
-/

namespace A141916.P14251180889722478467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141916.P14251180889722478467

namespace A141916

/-- `or(1, p?[a(n-1)+23])` -/
def P14251180889722478467.Spec : Prop :=
  ∀ n, (P14251180889722478467.a n : ℤ) = A141916 (n + 1)

end A141916

/-! ## A141916.P3585140092059186481

`p?[a(n-1)+23]%A350852(n+1)` with `a(0)=12`
-/

namespace A141916.P3585140092059186481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A350852 (n + 1))

end

end A141916.P3585140092059186481

namespace A141916

/-- `p?[a(n-1)+23]%A350852(n+1)` -/
def P3585140092059186481.Spec : Prop :=
  ∀ n, P3585140092059186481.a n = A141916 (n + 1)

end A141916

/-! ## A141916.P4966533081150719656

`A000027(p?[A073762(n+1)-n])`
-/

namespace A141916.P4966533081150719656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141916.P4966533081150719656

namespace A141916

/-- `A000027(p?[A073762(n+1)-n])` -/
def P4966533081150719656.Spec : Prop :=
  ∀ n, P4966533081150719656.a n = A141916 (n + 1)

end A141916

/-! ## A141916.P31985136408056882

`A000027(p?[A017401(2*n+1)+n])`
-/

namespace A141916.P31985136408056882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141916.P31985136408056882

namespace A141916

/-- `A000027(p?[A017401(2*n+1)+n])` -/
def P31985136408056882.Spec : Prop :=
  ∀ n, P31985136408056882.a n = A141916 (n + 1)

end A141916

/-! ## A141916.P17452174754411956058

`A000265(p?[A073762(n+1)-n])`
-/

namespace A141916.P17452174754411956058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141916.P17452174754411956058

namespace A141916

/-- `A000265(p?[A073762(n+1)-n])` -/
def P17452174754411956058.Spec : Prop :=
  ∀ n, P17452174754411956058.a n = A141916 (n + 1)

end A141916

/-! ## A141916.P14686058941869427975

`A000265(p?[2*A017461(n)+n])`
-/

namespace A141916.P14686058941869427975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017461 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141916.P14686058941869427975

namespace A141916

/-- `A000265(p?[2*A017461(n)+n])` -/
def P14686058941869427975.Spec : Prop :=
  ∀ n, P14686058941869427975.a n = A141916 (n + 1)

end A141916

/-! ## A141916.P15691470762183572072

`A001414(p?[2*A017461(n)+n])`
-/

namespace A141916.P15691470762183572072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017461 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141916.P15691470762183572072

namespace A141916

/-- `A001414(p?[2*A017461(n)+n])` -/
def P15691470762183572072.Spec : Prop :=
  ∀ n, P15691470762183572072.a n = A141916 (n + 1)

end A141916

/-! ## A141916.P11332848976780794326

`A330741(p?[2*A017461(n)+n])`
-/

namespace A141916.P11332848976780794326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017461 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141916.P11332848976780794326

namespace A141916

/-- `A330741(p?[2*A017461(n)+n])` -/
def P11332848976780794326.Spec : Prop :=
  ∀ n, P11332848976780794326.a n = A141916 (n + 1)

end A141916

/-!
# A141917: Primes congruent to 13 mod 23.

The programs for A141917, the canonical program `A141917.P16896383629659116904` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141917 has offset 1).

The definition of A141917 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141917.anchor (n : ℕ) (hn : 1 ≤ n) : A141917 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 13) (n - 1) : ℤ)` in `Proof.A141.A141917`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141917.P16896383629659116904

`p?[23*n-10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141917

/-- `p?[23*n-10]` -/
def P16896383629659116904.Spec : Prop :=
  ∀ n, P16896383629659116904.a n = A141917 (n + 1)

theorem P16896383629659116904.correct : P16896383629659116904.Spec := by
  intro n
  simp only [A141917, Nat.add_sub_cancel]

end A141917

/-! ## A141917.P14282122929255178670

`∩[A017533(2*n+1)-n, A000040(n+2)]`
-/

namespace A141917.P14282122929255178670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141917.P14282122929255178670

namespace A141917

/-- `∩[A017533(2*n+1)-n, A000040(n+2)]` -/
def P14282122929255178670.Spec : Prop :=
  ∀ n, (P14282122929255178670.a n : ℤ) = A141917 (n + 1)

end A141917

/-! ## A141917.P563839675196233351

`∩[A017533(2*n+1)-n, A004139(n+2)]`
-/

namespace A141917.P563839675196233351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141917.P563839675196233351

namespace A141917

/-- `∩[A017533(2*n+1)-n, A004139(n+2)]` -/
def P563839675196233351.Spec : Prop :=
  ∀ n, (P563839675196233351.a n : ℤ) = A141917 (n + 1)

end A141917

/-! ## A141917.P13293971516026665487

`∩[A017533(2*n+1)-n, A045319(n+2)]`
-/

namespace A141917.P13293971516026665487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141917.P13293971516026665487

namespace A141917

/-- `∩[A017533(2*n+1)-n, A045319(n+2)]` -/
def P13293971516026665487.Spec : Prop :=
  ∀ n, (P13293971516026665487.a n : ℤ) = A141917 (n + 1)

end A141917

/-! ## A141917.P2033926019709134545

`record[A020639(A017413(2*n+1)+n)]`
-/

namespace A141917.P2033926019709134545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017413 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P2033926019709134545

namespace A141917

/-- `record[A020639(A017413(2*n+1)+n)]` -/
def P2033926019709134545.Spec : Prop :=
  ∀ n, P2033926019709134545.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P8469297934580503307

`record[A020639(2*A017461(n)+n+1)]`
-/

namespace A141917.P8469297934580503307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A017461 n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P8469297934580503307

namespace A141917

/-- `record[A020639(2*A017461(n)+n+1)]` -/
def P8469297934580503307.Spec : Prop :=
  ∀ n, P8469297934580503307.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P12054954870288624748

`record[A020639(A139611(n)-9*n+2)]`
-/

namespace A141917.P12054954870288624748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n - (9 * n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P12054954870288624748

namespace A141917

/-- `record[A020639(A139611(n)-9*n+2)]` -/
def P12054954870288624748.Spec : Prop :=
  ∀ n, P12054954870288624748.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P8376690453835007180

`record[A020639(A017401(2*n+1)+n+1)]`
-/

namespace A141917.P8376690453835007180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017401 (2 * n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P8376690453835007180

namespace A141917

/-- `record[A020639(A017401(2*n+1)+n+1)]` -/
def P8376690453835007180.Spec : Prop :=
  ∀ n, P8376690453835007180.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P14309806370316578131

`record[A020639(A016969(2*n+1)+11*n+2)]`
-/

namespace A141917.P14309806370316578131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016969 (2 * n + 1) + (11 * n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P14309806370316578131

namespace A141917

/-- `record[A020639(A016969(2*n+1)+11*n+2)]` -/
def P14309806370316578131.Spec : Prop :=
  ∀ n, P14309806370316578131.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P14024716602627000275

`record[A020639(A154267(n)-A016825(n))]`
-/

namespace A141917.P14024716602627000275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154267 n - A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P14024716602627000275

namespace A141917

/-- `record[A020639(A154267(n)-A016825(n))]` -/
def P14024716602627000275.Spec : Prop :=
  ∀ n, P14024716602627000275.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P12942963898665975514

`record[A006530(A304205(n+1)-(A005408(n)+n)+2)]`
-/

namespace A141917.P12942963898665975514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304205 (n + 1) - (A005408 n + (n : ℤ)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141917.P12942963898665975514

namespace A141917

/-- `record[A006530(A304205(n+1)-(A005408(n)+n)+2)]` -/
def P12942963898665975514.Spec : Prop :=
  ∀ n, P12942963898665975514.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P17057487853516706715

`A330741(p?[2*A017461(n)+n+1])`
-/

namespace A141917.P17057487853516706715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017461 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141917.P17057487853516706715

namespace A141917

/-- `A330741(p?[2*A017461(n)+n+1])` -/
def P17057487853516706715.Spec : Prop :=
  ∀ n, P17057487853516706715.a n = A141917 (n + 1)

end A141917

/-! ## A141917.P11230098186264102450

`∩[A155450(2*(n+1))-A155450(n+2), A191021(n+2)]`
-/

namespace A141917.P11230098186264102450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1)) - A155450 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141917.P11230098186264102450

namespace A141917

/-- `∩[A155450(2*(n+1))-A155450(n+2), A191021(n+2)]` -/
def P11230098186264102450.Spec : Prop :=
  ∀ n, (P11230098186264102450.a n : ℤ) = A141917 (n + 1)

end A141917

/-!
# A141918: Primes congruent to 14 mod 23.

The programs for A141918, the canonical program `A141918.P6197340914735044769` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141918 has offset 1).

The definition of A141918 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141918.anchor (n : ℕ) (hn : 1 ≤ n) : A141918 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 14) (n - 1) : ℤ)` in `Proof.A141.A141918`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141918.P6197340914735044769

`p?[23*n-9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141918

/-- `p?[23*n-9]` -/
def P6197340914735044769.Spec : Prop :=
  ∀ n, P6197340914735044769.a n = A141918 (n + 1)

theorem P6197340914735044769.correct : P6197340914735044769.Spec := by
  intro n
  simp only [A141918, Nat.add_sub_cancel]

end A141918

/-! ## A141918.P2447360993984338009

`A000027(p?[A082285(n)+A016993(n)])`
-/

namespace A141918.P2447360993984338009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141918.P2447360993984338009

namespace A141918

/-- `A000027(p?[A082285(n)+A016993(n)])` -/
def P2447360993984338009.Spec : Prop :=
  ∀ n, P2447360993984338009.a n = A141918 (n + 1)

end A141918

/-! ## A141918.P9613317882673199596

`p?[A082285(n)+A016993(n)]%A297493(n+1)`
-/

namespace A141918.P9613317882673199596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A297493 (n + 1))

end

end A141918.P9613317882673199596

namespace A141918

/-- `p?[A082285(n)+A016993(n)]%A297493(n+1)` -/
def P9613317882673199596.Spec : Prop :=
  ∀ n, P9613317882673199596.a n = A141918 (n + 1)

end A141918

/-! ## A141918.P2128802702470402643

`record[A020639(23*n+37)]`
-/

namespace A141918.P2128802702470402643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (23 * n + 37)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141918.P2128802702470402643

namespace A141918

/-- `record[A020639(23*n+37)]` -/
def P2128802702470402643.Spec : Prop :=
  ∀ n, P2128802702470402643.a n = A141918 (n + 1)

end A141918

/-! ## A141918.P4740022247372079410

`A000265(p?[A082285(n)+A016993(n)])`
-/

namespace A141918.P4740022247372079410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141918.P4740022247372079410

namespace A141918

/-- `A000265(p?[A082285(n)+A016993(n)])` -/
def P4740022247372079410.Spec : Prop :=
  ∀ n, P4740022247372079410.a n = A141918 (n + 1)

end A141918

/-! ## A141918.P12065430639913698532

`∩[A191065(n+1), A313153(n)]`
-/

namespace A141918.P12065430639913698532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141918.P12065430639913698532

namespace A141918

/-- `∩[A191065(n+1), A313153(n)]` -/
def P12065430639913698532.Spec : Prop :=
  ∀ n, (P12065430639913698532.a n : ℤ) = A141918 (n + 1)

end A141918

/-! ## A141918.P16153193838247371961

`∩[A191065(n+1), A313053(n)]`
-/

namespace A141918.P16153193838247371961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141918.P16153193838247371961

namespace A141918

/-- `∩[A191065(n+1), A313053(n)]` -/
def P16153193838247371961.Spec : Prop :=
  ∀ n, (P16153193838247371961.a n : ℤ) = A141918 (n + 1)

end A141918

/-! ## A141918.P12813100019878839914

`record[A014963(46*n+37)]`
-/

namespace A141918.P12813100019878839914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (46 * n + 37)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141918.P12813100019878839914

namespace A141918

/-- `record[A014963(46*n+37)]` -/
def P12813100019878839914.Spec : Prop :=
  ∀ n, P12813100019878839914.a n = A141918 (n + 1)

end A141918

/-!
# A141919: Primes congruent to 15 mod 23.

The programs for A141919, the canonical program `A141919.P13315905829934009233` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141919 has offset 1).

The definition of A141919 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141919.anchor (n : ℕ) (hn : 1 ≤ n) : A141919 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 15) (n - 1) : ℤ)` in `Proof.A141.A141919`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141919.P13315905829934009233

`p?[23*n-8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141919

/-- `p?[23*n-8]` -/
def P13315905829934009233.Spec : Prop :=
  ∀ n, P13315905829934009233.a n = A141919 (n + 1)

theorem P13315905829934009233.correct : P13315905829934009233.Spec := by
  intro n
  simp only [A141919, Nat.add_sub_cancel]

end A141919

/-! ## A141919.P2399100646954936050

`A000027(p?[A270296(n+1)-A017041(n)])`
-/

namespace A141919.P2399100646954936050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141919.P2399100646954936050

namespace A141919

/-- `A000027(p?[A270296(n+1)-A017041(n)])` -/
def P2399100646954936050.Spec : Prop :=
  ∀ n, P2399100646954936050.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P11444417807905890915

`record[A006530(46*(n+1)+15)]`
-/

namespace A141919.P11444417807905890915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (46 * (n + 1) + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141919.P11444417807905890915

namespace A141919

/-- `record[A006530(46*(n+1)+15)]` -/
def P11444417807905890915.Spec : Prop :=
  ∀ n, P11444417807905890915.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P11958038551425970923

`A008472(p?[A008605(n)-8])`
-/

namespace A141919.P11958038551425970923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141919.P11958038551425970923

namespace A141919

/-- `A008472(p?[A008605(n)-8])` -/
def P11958038551425970923.Spec : Prop :=
  ∀ n, P11958038551425970923.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P13712581349171841080

`A007913(p?[A017305(2*n)+A008585(n+4)])`
-/

namespace A141919.P13712581349171841080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (2 * n) + A008585 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141919.P13712581349171841080

namespace A141919

/-- `A007913(p?[A017305(2*n)+A008585(n+4)])` -/
def P13712581349171841080.Spec : Prop :=
  ∀ n, P13712581349171841080.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P10057958017018727171

`A052410(p?[A052410(2*(n+1))+A017053(3*n+1)])`
-/

namespace A141919.P10057958017018727171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (2 * (n + 1)) + A017053 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141919.P10057958017018727171

namespace A141919

/-- `A052410(p?[A052410(2*(n+1))+A017053(3*n+1)])` -/
def P10057958017018727171.Spec : Prop :=
  ∀ n, P10057958017018727171.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P9865623513739512125

`A093178(p?[floor(46*(n+1)/3)])`
-/

namespace A141919.P9865623513739512125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊46 * ((n + 1 : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141919.P9865623513739512125

namespace A141919

/-- `A093178(p?[floor(46*(n+1)/3)])` -/
def P9865623513739512125.Spec : Prop :=
  ∀ n, P9865623513739512125.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P14174376116280773694

`∩[A315704(2*n+1)-2, A191065(n+2)]`
-/

namespace A141919.P14174376116280773694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141919.P14174376116280773694

namespace A141919

/-- `∩[A315704(2*n+1)-2, A191065(n+2)]` -/
def P14174376116280773694.Spec : Prop :=
  ∀ n, (P14174376116280773694.a n : ℤ) = A141919 (n + 1)

end A141919

/-! ## A141919.P17896956285021712377

`filter[A313724(n+2), A010051(#)]`
-/

namespace A141919.P17896956285021712377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313724 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141919.P17896956285021712377

namespace A141919

/-- `filter[A313724(n+2), A010051(#)]` -/
def P17896956285021712377.Spec : Prop :=
  ∀ n, P17896956285021712377.a n = A141919 (n + 1)

end A141919

/-! ## A141919.P11293893377567533804

`filter[A313724(n+2), A323152(#)]`
-/

namespace A141919.P11293893377567533804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313724 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141919.P11293893377567533804

namespace A141919

/-- `filter[A313724(n+2), A323152(#)]` -/
def P11293893377567533804.Spec : Prop :=
  ∀ n, P11293893377567533804.a n = A141919 (n + 1)

end A141919

/-!
# A141920: Primes congruent to 16 mod 23.

The programs for A141920, the canonical program `A141920.P15783077897538202799` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141920 has offset 1).

The definition of A141920 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141920.anchor (n : ℕ) (hn : 1 ≤ n) : A141920 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 16) (n - 1) : ℤ)` in `Proof.A141.A141920`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141920.P15783077897538202799

`p?[23*n-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141920

/-- `p?[23*n-7]` -/
def P15783077897538202799.Spec : Prop :=
  ∀ n, P15783077897538202799.a n = A141920 (n + 1)

theorem P15783077897538202799.correct : P15783077897538202799.Spec := by
  intro n
  simp only [A141920, Nat.add_sub_cancel]

end A141920

/-! ## A141920.P16623725634468571876

`p?[a(n-1)+23]^A000120(A061142(n+1))` with `a(0)=39`
-/

namespace A141920.P16623725634468571876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [39] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (A000120 (A061142 (n + 1)).toNat : ℤ)

end

end A141920.P16623725634468571876

namespace A141920

/-- `p?[a(n-1)+23]^A000120(A061142(n+1))` -/
def P16623725634468571876.Spec : Prop :=
  ∀ n, P16623725634468571876.a n = (A141920 (n + 1) : ℚ)

end A141920

/-! ## A141920.P3401223638977010651

`A000027(p?[A008605(n)-7])`
-/

namespace A141920.P3401223638977010651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141920.P3401223638977010651

namespace A141920

/-- `A000027(p?[A008605(n)-7])` -/
def P3401223638977010651.Spec : Prop :=
  ∀ n, P3401223638977010651.a n = A141920 (n + 1)

end A141920

/-! ## A141920.P8473853761650190996

`A000027(p?[A124388(n)-A016825(n)])`
-/

namespace A141920.P8473853761650190996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141920.P8473853761650190996

namespace A141920

/-- `A000027(p?[A124388(n)-A016825(n)])` -/
def P8473853761650190996.Spec : Prop :=
  ∀ n, P8473853761650190996.a n = A141920 (n + 1)

end A141920

/-! ## A141920.P12696107463557251375

`∩[A155450(2*(n+1))-2, A191021(n+2)]`
-/

namespace A141920.P12696107463557251375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141920.P12696107463557251375

namespace A141920

/-- `∩[A155450(2*(n+1))-2, A191021(n+2)]` -/
def P12696107463557251375.Spec : Prop :=
  ∀ n, (P12696107463557251375.a n : ℤ) = A141920 (n + 1)

end A141920

/-! ## A141920.P9002040393669469884

`∩[A155450(2*(n+1))-2, A296932(n+2)]`
-/

namespace A141920.P9002040393669469884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141920.P9002040393669469884

namespace A141920

/-- `∩[A155450(2*(n+1))-2, A296932(n+2)]` -/
def P9002040393669469884.Spec : Prop :=
  ∀ n, (P9002040393669469884.a n : ℤ) = A141920 (n + 1)

end A141920

/-! ## A141920.P17865586551836381335

`A000265(p?[A124388(n)-A016825(n)])`
-/

namespace A141920.P17865586551836381335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141920.P17865586551836381335

namespace A141920

/-- `A000265(p?[A124388(n)-A016825(n)])` -/
def P17865586551836381335.Spec : Prop :=
  ∀ n, P17865586551836381335.a n = A141920 (n + 1)

end A141920

/-! ## A141920.P5787641756907949353

`A007913(p?[A017305(2*n+1)+A008585(n+1)])`
-/

namespace A141920.P5787641756907949353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (2 * n + 1) + A008585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141920.P5787641756907949353

namespace A141920

/-- `A007913(p?[A017305(2*n+1)+A008585(n+1)])` -/
def P5787641756907949353.Spec : Prop :=
  ∀ n, P5787641756907949353.a n = A141920 (n + 1)

end A141920

/-! ## A141920.P5941388400685399921

`∩[A191021(n+1), A315704(n)-1]`
-/

namespace A141920.P5941388400685399921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141920.P5941388400685399921

namespace A141920

/-- `∩[A191021(n+1), A315704(n)-1]` -/
def P5941388400685399921.Spec : Prop :=
  ∀ n, (P5941388400685399921.a n : ℤ) = A141920 (n + 1)

end A141920

/-! ## A141920.P12228999523905443533

`∩[A313153(n+1)+2, A191021(n+2)]`
-/

namespace A141920.P12228999523905443533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141920.P12228999523905443533

namespace A141920

/-- `∩[A313153(n+1)+2, A191021(n+2)]` -/
def P12228999523905443533.Spec : Prop :=
  ∀ n, (P12228999523905443533.a n : ℤ) = A141920 (n + 1)

end A141920

/-!
# A141921: Primes congruent to 17 mod 23.

The programs for A141921, the canonical program `A141921.P17964433269071327918` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141921 has offset 1).

The definition of A141921 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141921.anchor (n : ℕ) (hn : 1 ≤ n) : A141921 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 17) (n - 1) : ℤ)` in `Proof.A141.A141921`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141921.P17964433269071327918

`p?[23*n-6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141921

/-- `p?[23*n-6]` -/
def P17964433269071327918.Spec : Prop :=
  ∀ n, P17964433269071327918.a n = A141921 (n + 1)

theorem P17964433269071327918.correct : P17964433269071327918.Spec := by
  intro n
  simp only [A141921, Nat.add_sub_cancel]

end A141921

/-! ## A141921.P12587763549959597915

`∩[A155450(n+1)-1, A191065(n+1)]`
-/

namespace A141921.P12587763549959597915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P12587763549959597915

namespace A141921

/-- `∩[A155450(n+1)-1, A191065(n+1)]` -/
def P12587763549959597915.Spec : Prop :=
  ∀ n, (P12587763549959597915.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P5775905813289669554

`∩[A017581(2*n+1)-n, A009087(n+2)]`
-/

namespace A141921.P5775905813289669554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P5775905813289669554

namespace A141921

/-- `∩[A017581(2*n+1)-n, A009087(n+2)]` -/
def P5775905813289669554.Spec : Prop :=
  ∀ n, (P5775905813289669554.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P17486850251801985535

`∩[A017581(2*n+1)-n, A000040(n+2)]`
-/

namespace A141921.P17486850251801985535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P17486850251801985535

namespace A141921

/-- `∩[A017581(2*n+1)-n, A000040(n+2)]` -/
def P17486850251801985535.Spec : Prop :=
  ∀ n, (P17486850251801985535.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P475731935334998471

`∩[A017581(2*n+1)-n, A006005(n+2)]`
-/

namespace A141921.P475731935334998471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P475731935334998471

namespace A141921

/-- `∩[A017581(2*n+1)-n, A006005(n+2)]` -/
def P475731935334998471.Spec : Prop :=
  ∀ n, (P475731935334998471.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P7202034567728814951

`∩[A017581(2*n+1)-n, A008578(n+2)]`
-/

namespace A141921.P7202034567728814951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P7202034567728814951

namespace A141921

/-- `∩[A017581(2*n+1)-n, A008578(n+2)]` -/
def P7202034567728814951.Spec : Prop :=
  ∀ n, (P7202034567728814951.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P7274262430503269285

`∩[A017581(2*n+1)-n, A033946(n+2)]`
-/

namespace A141921.P7274262430503269285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P7274262430503269285

namespace A141921

/-- `∩[A017581(2*n+1)-n, A033946(n+2)]` -/
def P7274262430503269285.Spec : Prop :=
  ∀ n, (P7274262430503269285.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P13805405633122488973

`∩[A017581(2*n+1)-n, A000430(n+2)]`
-/

namespace A141921.P13805405633122488973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141921.P13805405633122488973

namespace A141921

/-- `∩[A017581(2*n+1)-n, A000430(n+2)]` -/
def P13805405633122488973.Spec : Prop :=
  ∀ n, (P13805405633122488973.a n : ℤ) = A141921 (n + 1)

end A141921

/-! ## A141921.P1345951475020090494

`record[A006530(46*n+17)]`
-/

namespace A141921.P1345951475020090494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (46 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141921.P1345951475020090494

namespace A141921

/-- `record[A006530(46*n+17)]` -/
def P1345951475020090494.Spec : Prop :=
  ∀ n, P1345951475020090494.a n = A141921 (n + 1)

end A141921

/-! ## A141921.P7594583627736901830

`record[A020639(23*(n+1)-6)]`
-/

namespace A141921.P7594583627736901830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (23 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141921.P7594583627736901830

namespace A141921

/-- `record[A020639(23*(n+1)-6)]` -/
def P7594583627736901830.Spec : Prop :=
  ∀ n, P7594583627736901830.a n = A141921 (n + 1)

end A141921

/-! ## A141921.P2613907433651594966

`record[p?[A318500(22*n+1+n)]]`
-/

namespace A141921.P2613907433651594966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (22 * n + 1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141921.P2613907433651594966

namespace A141921

/-- `record[p?[A318500(22*n+1+n)]]` -/
def P2613907433651594966.Spec : Prop :=
  ∀ n, P2613907433651594966.a n = A141921 (n + 1)

end A141921

/-! ## A141921.P17428686110258452978

`A330741(p?[A017461(2*n+1)+n])`
-/

namespace A141921.P17428686110258452978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141921.P17428686110258452978

namespace A141921

/-- `A330741(p?[A017461(2*n+1)+n])` -/
def P17428686110258452978.Spec : Prop :=
  ∀ n, P17428686110258452978.a n = A141921 (n + 1)

end A141921

/-!
# A141922: Primes congruent to 18 mod 23.

The programs for A141922, the canonical program `A141922.P16515618779268983969` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141922 has offset 1).

The definition of A141922 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141922.anchor (n : ℕ) (hn : 1 ≤ n) : A141922 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 18) (n - 1) : ℤ)` in `Proof.A141.A141922`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141922.P16515618779268983969

`p?[23*n-5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141922

/-- `p?[23*n-5]` -/
def P16515618779268983969.Spec : Prop :=
  ∀ n, P16515618779268983969.a n = A141922 (n + 1)

theorem P16515618779268983969.correct : P16515618779268983969.Spec := by
  intro n
  simp only [A141922, Nat.add_sub_cancel]

end A141922

/-! ## A141922.P15313112838740875430

`or(1, p?[A169598(2*(n+2))])`
-/

namespace A141922.P15313112838740875430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141922.P15313112838740875430

namespace A141922

/-- `or(1, p?[A169598(2*(n+2))])` -/
def P15313112838740875430.Spec : Prop :=
  ∀ n, P15313112838740875430.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P4899504760578354658

`∩[A155450(n+1), A191021(n+1)]`
-/

namespace A141922.P4899504760578354658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141922.P4899504760578354658

namespace A141922

/-- `∩[A155450(n+1), A191021(n+1)]` -/
def P4899504760578354658.Spec : Prop :=
  ∀ n, (P4899504760578354658.a n : ℤ) = A141922 (n + 1)

end A141922

/-! ## A141922.P1612796353076414681

`∩[A155450(n+1), A296932(n+1)]`
-/

namespace A141922.P1612796353076414681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141922.P1612796353076414681

namespace A141922

/-- `∩[A155450(n+1), A296932(n+1)]` -/
def P1612796353076414681.Spec : Prop :=
  ∀ n, (P1612796353076414681.a n : ℤ) = A141922 (n + 1)

end A141922

/-! ## A141922.P2766758549549806813

`record[A006530(24*n+41-n)]`
-/

namespace A141922.P2766758549549806813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((24 * n : ℤ) + (41 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141922.P2766758549549806813

namespace A141922

/-- `record[A006530(24*n+41-n)]` -/
def P2766758549549806813.Spec : Prop :=
  ∀ n, P2766758549549806813.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P15066170859955774980

`record[A020639(A248339(n+1)+n)]`
-/

namespace A141922.P15066170859955774980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248339 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141922.P15066170859955774980

namespace A141922

/-- `record[A020639(A248339(n+1)+n)]` -/
def P15066170859955774980.Spec : Prop :=
  ∀ n, P15066170859955774980.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P137411463217535976

`filter[A155450(2*(n+1)), A010051(#)]`
-/

namespace A141922.P137411463217535976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141922.P137411463217535976

namespace A141922

/-- `filter[A155450(2*(n+1)), A010051(#)]` -/
def P137411463217535976.Spec : Prop :=
  ∀ n, P137411463217535976.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P6278137320262011115

`filter[A169598(2*(n+1)), A010051(#)]`
-/

namespace A141922.P6278137320262011115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141922.P6278137320262011115

namespace A141922

/-- `filter[A169598(2*(n+1)), A010051(#)]` -/
def P6278137320262011115.Spec : Prop :=
  ∀ n, P6278137320262011115.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P9864180232083403244

`filter[A155450(2*(n+1)), A323153(#)]`
-/

namespace A141922.P9864180232083403244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141922.P9864180232083403244

namespace A141922

/-- `filter[A155450(2*(n+1)), A323153(#)]` -/
def P9864180232083403244.Spec : Prop :=
  ∀ n, P9864180232083403244.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P11961885762931376814

`filter[A169598(2*(n+1)), A323153(#)]`
-/

namespace A141922.P11961885762931376814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141922.P11961885762931376814

namespace A141922

/-- `filter[A169598(2*(n+1)), A323153(#)]` -/
def P11961885762931376814.Spec : Prop :=
  ∀ n, P11961885762931376814.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P1681238394472521765

`filter[A155450(2*(n+1)), A351957(#)]`
-/

namespace A141922.P1681238394472521765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A141922.P1681238394472521765

namespace A141922

/-- `filter[A155450(2*(n+1)), A351957(#)]` -/
def P1681238394472521765.Spec : Prop :=
  ∀ n, P1681238394472521765.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P8314211572739059428

`filter[A169598(2*(n+1)), A351957(#)]`
-/

namespace A141922.P8314211572739059428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A141922.P8314211572739059428

namespace A141922

/-- `filter[A169598(2*(n+1)), A351957(#)]` -/
def P8314211572739059428.Spec : Prop :=
  ∀ n, P8314211572739059428.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P18366002315897116249

`A125746(p?[A017473(2*n+1)+n])`
-/

namespace A141922.P18366002315897116249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141922.P18366002315897116249

namespace A141922

/-- `A125746(p?[A017473(2*n+1)+n])` -/
def P18366002315897116249.Spec : Prop :=
  ∀ n, P18366002315897116249.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P16926055395684708242

`A034699(p?[A161709(n+1)-5+n])`
-/

namespace A141922.P16926055395684708242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n + 1) - 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141922.P16926055395684708242

namespace A141922

/-- `A034699(p?[A161709(n+1)-5+n])` -/
def P16926055395684708242.Spec : Prop :=
  ∀ n, P16926055395684708242.a n = A141922 (n + 1)

end A141922

/-! ## A141922.P4641972081225963714

`A330741(p?[A017461(2*n+1)+n+1])`
-/

namespace A141922.P4641972081225963714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 (2 * n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141922.P4641972081225963714

namespace A141922

/-- `A330741(p?[A017461(2*n+1)+n+1])` -/
def P4641972081225963714.Spec : Prop :=
  ∀ n, P4641972081225963714.a n = A141922 (n + 1)

end A141922

/-!
# A141923: Primes congruent to 19 mod 23.

The programs for A141923, the canonical program `A141923.P5867154082732899307` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141923 has offset 1).

The definition of A141923 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141923.anchor (n : ℕ) (hn : 1 ≤ n) : A141923 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 19) (n - 1) : ℤ)` in `Proof.A141.A141923`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141923.P5867154082732899307

`p?[23*n-4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141923

/-- `p?[23*n-4]` -/
def P5867154082732899307.Spec : Prop :=
  ∀ n, P5867154082732899307.a n = A141923 (n + 1)

theorem P5867154082732899307.correct : P5867154082732899307.Spec := by
  intro n
  simp only [A141923, Nat.add_sub_cancel]

end A141923

/-! ## A141923.P15868966957501649189

`∩[A155450(n+1)+1, A191065(n+1)]`
-/

namespace A141923.P15868966957501649189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P15868966957501649189

namespace A141923

/-- `∩[A155450(n+1)+1, A191065(n+1)]` -/
def P15868966957501649189.Spec : Prop :=
  ∀ n, (P15868966957501649189.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P14963475689490661298

`∩[A017605(2*n+1)-n, A009087(n+2)]`
-/

namespace A141923.P14963475689490661298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P14963475689490661298

namespace A141923

/-- `∩[A017605(2*n+1)-n, A009087(n+2)]` -/
def P14963475689490661298.Spec : Prop :=
  ∀ n, (P14963475689490661298.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P2694342606779805825

`∩[A017605(2*n+1)-n, A000040(n+2)]`
-/

namespace A141923.P2694342606779805825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P2694342606779805825

namespace A141923

/-- `∩[A017605(2*n+1)-n, A000040(n+2)]` -/
def P2694342606779805825.Spec : Prop :=
  ∀ n, (P2694342606779805825.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P7512995533470930763

`∩[A017605(2*n+1)-n, A004139(n+2)]`
-/

namespace A141923.P7512995533470930763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P7512995533470930763

namespace A141923

/-- `∩[A017605(2*n+1)-n, A004139(n+2)]` -/
def P7512995533470930763.Spec : Prop :=
  ∀ n, (P7512995533470930763.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P14796761391432291471

`∩[A017605(2*n+1)-n, A006005(n+2)]`
-/

namespace A141923.P14796761391432291471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P14796761391432291471

namespace A141923

/-- `∩[A017605(2*n+1)-n, A006005(n+2)]` -/
def P14796761391432291471.Spec : Prop :=
  ∀ n, (P14796761391432291471.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P1188862970783864089

`∩[A017605(2*n+1)-n, A008578(n+2)]`
-/

namespace A141923.P1188862970783864089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P1188862970783864089

namespace A141923

/-- `∩[A017605(2*n+1)-n, A008578(n+2)]` -/
def P1188862970783864089.Spec : Prop :=
  ∀ n, (P1188862970783864089.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P17301619931433626700

`∩[A017605(2*n+1)-n, A033946(n+2)]`
-/

namespace A141923.P17301619931433626700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P17301619931433626700

namespace A141923

/-- `∩[A017605(2*n+1)-n, A033946(n+2)]` -/
def P17301619931433626700.Spec : Prop :=
  ∀ n, (P17301619931433626700.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P13684707503820738574

`∩[A017605(2*n+1)-n, A000430(n+2)]`
-/

namespace A141923.P13684707503820738574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P13684707503820738574

namespace A141923

/-- `∩[A017605(2*n+1)-n, A000430(n+2)]` -/
def P13684707503820738574.Spec : Prop :=
  ∀ n, (P13684707503820738574.a n : ℤ) = A141923 (n + 1)

end A141923

/-! ## A141923.P6208141010199457185

`record[A020639(23*(n+1)-4)]`
-/

namespace A141923.P6208141010199457185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (23 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141923.P6208141010199457185

namespace A141923

/-- `record[A020639(23*(n+1)-4)]` -/
def P6208141010199457185.Spec : Prop :=
  ∀ n, P6208141010199457185.a n = A141923 (n + 1)

end A141923

/-! ## A141923.P14532516281301599386

`A034699(p?[A161709(n)-5+n])`
-/

namespace A141923.P14532516281301599386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n - 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141923.P14532516281301599386

namespace A141923

/-- `A034699(p?[A161709(n)-5+n])` -/
def P14532516281301599386.Spec : Prop :=
  ∀ n, P14532516281301599386.a n = A141923 (n + 1)

end A141923

/-! ## A141923.P8636973368463982691

`A034699(p?[n-(5-A161709(n))])`
-/

namespace A141923.P8636973368463982691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (5 - A161709 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141923.P8636973368463982691

namespace A141923

/-- `A034699(p?[n-(5-A161709(n))])` -/
def P8636973368463982691.Spec : Prop :=
  ∀ n, P8636973368463982691.a n = A141923 (n + 1)

end A141923

/-! ## A141923.P17046484213391474908

`A125746(p?[A017473(2*n+1)+n+1])`
-/

namespace A141923.P17046484213391474908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (2 * n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141923.P17046484213391474908

namespace A141923

/-- `A125746(p?[A017473(2*n+1)+n+1])` -/
def P17046484213391474908.Spec : Prop :=
  ∀ n, P17046484213391474908.a n = A141923 (n + 1)

end A141923

/-! ## A141923.P9451935199600932760

`∩[A191065(n+1), A310509(n)-2]`
-/

namespace A141923.P9451935199600932760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141923.P9451935199600932760

namespace A141923

/-- `∩[A191065(n+1), A310509(n)-2]` -/
def P9451935199600932760.Spec : Prop :=
  ∀ n, (P9451935199600932760.a n : ℤ) = A141923 (n + 1)

end A141923

/-!
# A141924: Primes congruent to 20 mod 23.

The programs for A141924, the canonical program `A141924.P15423694719666383040` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141924 has offset 1).

The definition of A141924 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141924.anchor (n : ℕ) (hn : 1 ≤ n) : A141924 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 20) (n - 1) : ℤ)` in `Proof.A141.A141924`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141924.P15423694719666383040

`p?[23*n-3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141924

/-- `p?[23*n-3]` -/
def P15423694719666383040.Spec : Prop :=
  ∀ n, P15423694719666383040.a n = A141924 (n + 1)

theorem P15423694719666383040.correct : P15423694719666383040.Spec := by
  intro n
  simp only [A141924, Nat.add_sub_cancel]

end A141924

/-! ## A141924.P12205961060371248147

`∩[A155450(2*(n+1))+2, A191065(n+2)]`
-/

namespace A141924.P12205961060371248147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141924.P12205961060371248147

namespace A141924

/-- `∩[A155450(2*(n+1))+2, A191065(n+2)]` -/
def P12205961060371248147.Spec : Prop :=
  ∀ n, (P12205961060371248147.a n : ℤ) = A141924 (n + 1)

end A141924

/-! ## A141924.P2088232239130849722

`record[A006530(46*(n+1)-3)]`
-/

namespace A141924.P2088232239130849722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (46 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141924.P2088232239130849722

namespace A141924

/-- `record[A006530(46*(n+1)-3)]` -/
def P2088232239130849722.Spec : Prop :=
  ∀ n, P2088232239130849722.a n = A141924 (n + 1)

end A141924

/-! ## A141924.P17885470188530352684

`record[A020639(46*(n+1)-3)]`
-/

namespace A141924.P17885470188530352684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (46 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141924.P17885470188530352684

namespace A141924

/-- `record[A020639(46*(n+1)-3)]` -/
def P17885470188530352684.Spec : Prop :=
  ∀ n, P17885470188530352684.a n = A141924 (n + 1)

end A141924

/-! ## A141924.P7070022424418035162

`A034699(p?[A161709(n)-4+n])`
-/

namespace A141924.P7070022424418035162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n - 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141924.P7070022424418035162

namespace A141924

/-- `A034699(p?[A161709(n)-4+n])` -/
def P7070022424418035162.Spec : Prop :=
  ∀ n, P7070022424418035162.a n = A141924 (n + 1)

end A141924

/-! ## A141924.P7856288624053961263

`A034699(p?[n-(4-A161709(n))])`
-/

namespace A141924.P7856288624053961263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (4 - A161709 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141924.P7856288624053961263

namespace A141924

/-- `A034699(p?[n-(4-A161709(n))])` -/
def P7856288624053961263.Spec : Prop :=
  ∀ n, P7856288624053961263.a n = A141924 (n + 1)

end A141924

/-! ## A141924.P17371116469699297085

`record[A014963(46*(n+1)-3)]`
-/

namespace A141924.P17371116469699297085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (46 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141924.P17371116469699297085

namespace A141924

/-- `record[A014963(46*(n+1)-3)]` -/
def P17371116469699297085.Spec : Prop :=
  ∀ n, P17371116469699297085.a n = A141924 (n + 1)

end A141924

/-!
# A141925: Primes congruent to 21 mod 23.

The programs for A141925, the canonical program `A141925.P17128245883167051271` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141925 has offset 1).

The definition of A141925 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141925.anchor (n : ℕ) (hn : 1 ≤ n) : A141925 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 21) (n - 1) : ℤ)` in `Proof.A141.A141925`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141925.P17128245883167051271

`p?[23*n-2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141925

/-- `p?[23*n-2]` -/
def P17128245883167051271.Spec : Prop :=
  ∀ n, P17128245883167051271.a n = A141925 (n + 1)

theorem P17128245883167051271.correct : P17128245883167051271.Spec := by
  intro n
  simp only [A141925, Nat.add_sub_cancel]

end A141925

/-! ## A141925.P6760907032800019921

`A000027(p?[A183010(n)-(n+1)])`
-/

namespace A141925.P6760907032800019921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141925.P6760907032800019921

namespace A141925

/-- `A000027(p?[A183010(n)-(n+1)])` -/
def P6760907032800019921.Spec : Prop :=
  ∀ n, P6760907032800019921.a n = A141925 (n + 1)

end A141925

/-! ## A141925.P7033609497129803374

`record[A006530(n+1+A008593(2*(n+3)))]`
-/

namespace A141925.P7033609497129803374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) + A008593 (2 * (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141925.P7033609497129803374

namespace A141925

/-- `record[A006530(n+1+A008593(2*(n+3)))]` -/
def P7033609497129803374.Spec : Prop :=
  ∀ n, P7033609497129803374.a n = A141925 (n + 1)

end A141925

/-! ## A141925.P4393496966781315225

`A034699(p?[A161709(n+1)-2+n])`
-/

namespace A141925.P4393496966781315225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n + 1) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141925.P4393496966781315225

namespace A141925

/-- `A034699(p?[A161709(n+1)-2+n])` -/
def P4393496966781315225.Spec : Prop :=
  ∀ n, P4393496966781315225.a n = A141925 (n + 1)

end A141925

/-! ## A141925.P5159663090748661445

`A034699(p?[A017653(n)+A017509(n)])`
-/

namespace A141925.P5159663090748661445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141925.P5159663090748661445

namespace A141925

/-- `A034699(p?[A017653(n)+A017509(n)])` -/
def P5159663090748661445.Spec : Prop :=
  ∀ n, P5159663090748661445.a n = A141925 (n + 1)

end A141925

/-! ## A141925.P5580090177749967711

`∩[A191065(n+1), A310509(n)]`
-/

namespace A141925.P5580090177749967711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141925.P5580090177749967711

namespace A141925

/-- `∩[A191065(n+1), A310509(n)]` -/
def P5580090177749967711.Spec : Prop :=
  ∀ n, (P5580090177749967711.a n : ℤ) = A141925 (n + 1)

end A141925

/-! ## A141925.P16983481198977798405

`∩[A315704(2*n)-2, A191065(n+2)]`
-/

namespace A141925.P16983481198977798405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141925.P16983481198977798405

namespace A141925

/-- `∩[A315704(2*n)-2, A191065(n+2)]` -/
def P16983481198977798405.Spec : Prop :=
  ∀ n, (P16983481198977798405.a n : ℤ) = A141925 (n + 1)

end A141925

/-! ## A141925.P15692618731702266610

`∩[A313053(2*n+1)-2, A191065(n+2)]`
-/

namespace A141925.P15692618731702266610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141925.P15692618731702266610

namespace A141925

/-- `∩[A313053(2*n+1)-2, A191065(n+2)]` -/
def P15692618731702266610.Spec : Prop :=
  ∀ n, (P15692618731702266610.a n : ℤ) = A141925 (n + 1)

end A141925

/-! ## A141925.P2188010509559974571

`∩[A191065(n+1), A311262(n)]`
-/

namespace A141925.P2188010509559974571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311262 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141925.P2188010509559974571

namespace A141925

/-- `∩[A191065(n+1), A311262(n)]` -/
def P2188010509559974571.Spec : Prop :=
  ∀ n, (P2188010509559974571.a n : ℤ) = A141925 (n + 1)

end A141925

/-!
# A141926: Primes congruent to 22 mod 23.

The programs for A141926, the canonical program `A141926.P3370032026993647329` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141926 has offset 1).

The definition of A141926 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141926.anchor (n : ℕ) (hn : 1 ≤ n) : A141926 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 22) (n - 1) : ℤ)` in `Proof.A141.A141926`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141926.P3370032026993647329

`p?[23*n-1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141926

/-- `p?[23*n-1]` -/
def P3370032026993647329.Spec : Prop :=
  ∀ n, P3370032026993647329.a n = A141926 (n + 1)

theorem P3370032026993647329.correct : P3370032026993647329.Spec := by
  intro n
  simp only [A141926, Nat.add_sub_cancel]

end A141926

/-! ## A141926.P10012519646081193076

`or(1, p?[45*(n+1)+n])`
-/

namespace A141926.P10012519646081193076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141926.P10012519646081193076

namespace A141926

/-- `or(1, p?[45*(n+1)+n])` -/
def P10012519646081193076.Spec : Prop :=
  ∀ n, (P10012519646081193076.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P9873974606808216966

`∩[A054723(n+1), A215148(n)-2]`
-/

namespace A141926.P9873974606808216966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P9873974606808216966

namespace A141926

/-- `∩[A054723(n+1), A215148(n)-2]` -/
def P9873974606808216966.Spec : Prop :=
  ∀ n, (P9873974606808216966.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P844810639718106879

`∩[A122259(n+1), A215148(n)-2]`
-/

namespace A141926.P844810639718106879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P844810639718106879

namespace A141926

/-- `∩[A122259(n+1), A215148(n)-2]` -/
def P844810639718106879.Spec : Prop :=
  ∀ n, (P844810639718106879.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P5334935166836850922

`∩[A000040(n+1), A215148(n)-2]`
-/

namespace A141926.P5334935166836850922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P5334935166836850922

namespace A141926

/-- `∩[A000040(n+1), A215148(n)-2]` -/
def P5334935166836850922.Spec : Prop :=
  ∀ n, (P5334935166836850922.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P11138670711201863014

`∩[A004139(n+1), A215148(n)-2]`
-/

namespace A141926.P11138670711201863014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P11138670711201863014

namespace A141926

/-- `∩[A004139(n+1), A215148(n)-2]` -/
def P11138670711201863014.Spec : Prop :=
  ∀ n, (P11138670711201863014.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P18050396366328122419

`∩[A045319(n+1), A215148(n)-2]`
-/

namespace A141926.P18050396366328122419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P18050396366328122419

namespace A141926

/-- `∩[A045319(n+1), A215148(n)-2]` -/
def P18050396366328122419.Spec : Prop :=
  ∀ n, (P18050396366328122419.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P10504351426762390580

`∩[A045344(n+1), A215148(n)-2]`
-/

namespace A141926.P10504351426762390580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P10504351426762390580

namespace A141926

/-- `∩[A045344(n+1), A215148(n)-2]` -/
def P10504351426762390580.Spec : Prop :=
  ∀ n, (P10504351426762390580.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P16857692123203153953

`∩[A053813(n+1), A215148(n)-2]`
-/

namespace A141926.P16857692123203153953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P16857692123203153953

namespace A141926

/-- `∩[A053813(n+1), A215148(n)-2]` -/
def P16857692123203153953.Spec : Prop :=
  ∀ n, (P16857692123203153953.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P9610363658522978318

`∩[A064728(n+1), A215148(n)-2]`
-/

namespace A141926.P9610363658522978318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P9610363658522978318

namespace A141926

/-- `∩[A064728(n+1), A215148(n)-2]` -/
def P9610363658522978318.Spec : Prop :=
  ∀ n, (P9610363658522978318.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P9754297612380706410

`∩[A065091(n+1), A215148(n)-2]`
-/

namespace A141926.P9754297612380706410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P9754297612380706410

namespace A141926

/-- `∩[A065091(n+1), A215148(n)-2]` -/
def P9754297612380706410.Spec : Prop :=
  ∀ n, (P9754297612380706410.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P15799108035599067249

`∩[A065396(n+1), A215148(n)-2]`
-/

namespace A141926.P15799108035599067249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P15799108035599067249

namespace A141926

/-- `∩[A065396(n+1), A215148(n)-2]` -/
def P15799108035599067249.Spec : Prop :=
  ∀ n, (P15799108035599067249.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P15618258236812768786

`∩[A261123(n+1), A215148(n)-2]`
-/

namespace A141926.P15618258236812768786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P15618258236812768786

namespace A141926

/-- `∩[A261123(n+1), A215148(n)-2]` -/
def P15618258236812768786.Spec : Prop :=
  ∀ n, (P15618258236812768786.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P15258685653473319575

`∩[A215148(2*n)-2, A051948(n+2)]`
-/

namespace A141926.P15258685653473319575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141926.P15258685653473319575

namespace A141926

/-- `∩[A215148(2*n)-2, A051948(n+2)]` -/
def P15258685653473319575.Spec : Prop :=
  ∀ n, (P15258685653473319575.a n : ℤ) = A141926 (n + 1)

end A141926

/-! ## A141926.P13997819252620104412

`A007913(p?[45*(n+1)+n])`
-/

namespace A141926.P13997819252620104412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141926.P13997819252620104412

namespace A141926

/-- `A007913(p?[45*(n+1)+n])` -/
def P13997819252620104412.Spec : Prop :=
  ∀ n, P13997819252620104412.a n = A141926 (n + 1)

end A141926

/-!
# A141927: Primes congruent to 1 mod 25.

The programs for A141927, the canonical program `A141927.P3277347252701814424` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141927 has offset 1).

The definition of A141927 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141927.anchor (n : ℕ) (hn : 1 ≤ n) : A141927 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 1) (n - 1) : ℤ)` in `Proof.A141.A141927`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141927.P3277347252701814424

`p?[25*n+1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141927

/-- `p?[25*n+1]` -/
def P3277347252701814424.Spec : Prop :=
  ∀ n, (P3277347252701814424.a n : ℤ) = A141927 (n + 1)

theorem P3277347252701814424.correct : P3277347252701814424.Spec := by
  intro n
  simp only [A141927, Nat.add_sub_cancel]

end A141927

/-! ## A141927.P14307207054949306499

`or(1, p?[or(1, 50*n)])`
-/

namespace A141927.P14307207054949306499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (50 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141927.P14307207054949306499

namespace A141927

/-- `or(1, p?[or(1, 50*n)])` -/
def P14307207054949306499.Spec : Prop :=
  ∀ n, (P14307207054949306499.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P10688208879606658697

`∩[A030430(n+1), A172469(n+1)]`
-/

namespace A141927.P10688208879606658697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P10688208879606658697

namespace A141927

/-- `∩[A030430(n+1), A172469(n+1)]` -/
def P10688208879606658697.Spec : Prop :=
  ∀ n, (P10688208879606658697.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P11332188947136917119

`∩[A172469(n+1), A179446(n+1)]`
-/

namespace A141927.P11332188947136917119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P11332188947136917119

namespace A141927

/-- `∩[A172469(n+1), A179446(n+1)]` -/
def P11332188947136917119.Spec : Prop :=
  ∀ n, (P11332188947136917119.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P15950842325966477330

`∩[A045453(n+1), A172469(n+1)]`
-/

namespace A141927.P15950842325966477330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P15950842325966477330

namespace A141927

/-- `∩[A045453(n+1), A172469(n+1)]` -/
def P15950842325966477330.Spec : Prop :=
  ∀ n, (P15950842325966477330.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P9481638542751632380

`∩[A090756(n+1), A172469(n+1)]`
-/

namespace A141927.P9481638542751632380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P9481638542751632380

namespace A141927

/-- `∩[A090756(n+1), A172469(n+1)]` -/
def P9481638542751632380.Spec : Prop :=
  ∀ n, (P9481638542751632380.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P4777828112681313487

`∩[A172469(n+1), A327752(n+1)]`
-/

namespace A141927.P4777828112681313487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P4777828112681313487

namespace A141927

/-- `∩[A172469(n+1), A327752(n+1)]` -/
def P4777828112681313487.Spec : Prop :=
  ∀ n, (P4777828112681313487.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P18428978023902007904

`∩[A004615(n+1), A172469(n+1)]`
-/

namespace A141927.P18428978023902007904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P18428978023902007904

namespace A141927

/-- `∩[A004615(n+1), A172469(n+1)]` -/
def P18428978023902007904.Spec : Prop :=
  ∀ n, (P18428978023902007904.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P12148112762413519690

`∩[A030430(n+1), A158060(n+1)]`
-/

namespace A141927.P12148112762413519690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P12148112762413519690

namespace A141927

/-- `∩[A030430(n+1), A158060(n+1)]` -/
def P12148112762413519690.Spec : Prop :=
  ∀ n, (P12148112762413519690.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P17587442435527005701

`∩[A045453(n+1), A158060(n+1)]`
-/

namespace A141927.P17587442435527005701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P17587442435527005701

namespace A141927

/-- `∩[A045453(n+1), A158060(n+1)]` -/
def P17587442435527005701.Spec : Prop :=
  ∀ n, (P17587442435527005701.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P6407330661016347557

`∩[A158060(n+1), A172469(n+1)]`
-/

namespace A141927.P6407330661016347557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P6407330661016347557

namespace A141927

/-- `∩[A158060(n+1), A172469(n+1)]` -/
def P6407330661016347557.Spec : Prop :=
  ∀ n, (P6407330661016347557.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P13986760444961287645

`∩[A158060(n+1), A179446(n+1)]`
-/

namespace A141927.P13986760444961287645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P13986760444961287645

namespace A141927

/-- `∩[A158060(n+1), A179446(n+1)]` -/
def P13986760444961287645.Spec : Prop :=
  ∀ n, (P13986760444961287645.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P4700812690156635116

`∩[A045468(n+1), A158060(n+1)]`
-/

namespace A141927.P4700812690156635116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P4700812690156635116

namespace A141927

/-- `∩[A045468(n+1), A158060(n+1)]` -/
def P4700812690156635116.Spec : Prop :=
  ∀ n, (P4700812690156635116.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P12100098241399761644

`∩[A038872(n+1), A158060(n+1)]`
-/

namespace A141927.P12100098241399761644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P12100098241399761644

namespace A141927

/-- `∩[A038872(n+1), A158060(n+1)]` -/
def P12100098241399761644.Spec : Prop :=
  ∀ n, (P12100098241399761644.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P4934252400072509814

`∩[A045407(n+1), A158060(n+1)]`
-/

namespace A141927.P4934252400072509814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P4934252400072509814

namespace A141927

/-- `∩[A045407(n+1), A158060(n+1)]` -/
def P4934252400072509814.Spec : Prop :=
  ∀ n, (P4934252400072509814.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P476672190421442905

`∩[A045429(n+1), A158060(n+1)]`
-/

namespace A141927.P476672190421442905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P476672190421442905

namespace A141927

/-- `∩[A045429(n+1), A158060(n+1)]` -/
def P476672190421442905.Spec : Prop :=
  ∀ n, (P476672190421442905.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P3629012084742450988

`∩[A064739(n+1), A158060(n+1)]`
-/

namespace A141927.P3629012084742450988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P3629012084742450988

namespace A141927

/-- `∩[A064739(n+1), A158060(n+1)]` -/
def P3629012084742450988.Spec : Prop :=
  ∀ n, (P3629012084742450988.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P581056075409019921

`∩[A076518(n+1), A158060(n+1)]`
-/

namespace A141927.P581056075409019921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P581056075409019921

namespace A141927

/-- `∩[A076518(n+1), A158060(n+1)]` -/
def P581056075409019921.Spec : Prop :=
  ∀ n, (P581056075409019921.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P11105011943489396161

`∩[A045349(n+1), A158060(n+1)]`
-/

namespace A141927.P11105011943489396161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P11105011943489396161

namespace A141927

/-- `∩[A045349(n+1), A158060(n+1)]` -/
def P11105011943489396161.Spec : Prop :=
  ∀ n, (P11105011943489396161.a n : ℤ) = A141927 (n + 1)

end A141927

/-! ## A141927.P2720560829325010733

`∩[A045372(n+1), A158060(n+1)]`
-/

namespace A141927.P2720560829325010733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141927.P2720560829325010733

namespace A141927

/-- `∩[A045372(n+1), A158060(n+1)]` -/
def P2720560829325010733.Spec : Prop :=
  ∀ n, (P2720560829325010733.a n : ℤ) = A141927 (n + 1)

end A141927

/-!
# A141928: Primes congruent to 2 mod 25.

The programs for A141928, there is no canonical definition to state claims against.
-/

/-! ## A141928.P13167080319381222590

`∪[A007352(n+1), A142466(n+1)]`
-/

namespace A141928.P13167080319381222590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P13167080319381222590

/-! ## A141928.P10663574363664049962

`∪[A142466(n+1), A247214(n+1)]`
-/

namespace A141928.P10663574363664049962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P10663574363664049962

/-! ## A141928.P14682457765692937866

`∪[A142466(n+1), A262729(n+1)]`
-/

namespace A141928.P14682457765692937866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P14682457765692937866

/-! ## A141928.P16187353770702324569

`p?[25*n+2]`
-/

namespace A141928.P16187353770702324569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141928.P16187353770702324569

/-! ## A141928.P3926169703741659726

`A000027(p?[A103214(n)+1+n])`
-/

namespace A141928.P3926169703741659726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141928.P3926169703741659726

/-! ## A141928.P17497301183961345534

`A000027(p?[A183010(n)+3+n])`
-/

namespace A141928.P17497301183961345534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141928.P17497301183961345534

/-! ## A141928.P6318142615705778608

`p?[A103214(n)+1+n]%A025328(n+1)²`
-/

namespace A141928.P6318142615705778608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A025328 (n + 1) ^ 2)

end

end A141928.P6318142615705778608

/-! ## A141928.P1322932101878704709

`A000027(p?[A153080(n)+A008594(n)])`
-/

namespace A141928.P1322932101878704709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n + A008594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141928.P1322932101878704709

/-! ## A141928.P15728061262877321567

`p?[A103214(n)+1+n]%A277344(n+1)`
-/

namespace A141928.P15728061262877321567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A277344 (n + 1))

end

end A141928.P15728061262877321567

/-! ## A141928.P15603109571128791838

`∩[A008856(n+1)+2, A045356(n+1)]`
-/

namespace A141928.P15603109571128791838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P15603109571128791838

/-! ## A141928.P9057108475193079354

`∩[A008856(n+1)+2, A045378(n+1)]`
-/

namespace A141928.P9057108475193079354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P9057108475193079354

/-! ## A141928.P16114400524748633654

`record[A020639(A008607(n+4)+2)]`
-/

namespace A141928.P16114400524748633654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008607 (n + 4) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141928.P16114400524748633654

/-! ## A141928.P12728543474610118564

`A007913(p?[A161709(n)+A016777(n)])`
-/

namespace A141928.P12728543474610118564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141928.P12728543474610118564

/-! ## A141928.P4801362785340785584

`∩[A000040(n+1), A016873(5*n)]`
-/

namespace A141928.P4801362785340785584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (5 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P4801362785340785584

/-! ## A141928.P16679292300425681207

`∩[A003631(n+1), A016873(5*n)]`
-/

namespace A141928.P16679292300425681207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (5 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141928.P16679292300425681207

/-!
# A141929: Primes congruent to 3 mod 25.

The programs for A141929, the canonical program `A141929.P6837495591170091727` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141929 has offset 1).

The definition of A141929 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141929.anchor (n : ℕ) (hn : 1 ≤ n) : A141929 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141929`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141929.P6837495591170091727

`∪[A101780(n+1), A244771(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141929

/-- `∪[A101780(n+1), A244771(n+1)]` -/
def P6837495591170091727.Spec : Prop :=
  ∀ n, (P6837495591170091727.a n : ℤ) = A141929 (n + 1)

theorem P6837495591170091727.correct : P6837495591170091727.Spec := by
  intro n
  simp only [A141929, Nat.add_sub_cancel]

end A141929

/-! ## A141929.P1983170317709861710

`p?[25*n+3]`
-/

namespace A141929.P1983170317709861710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141929.P1983170317709861710

namespace A141929

/-- `p?[25*n+3]` -/
def P1983170317709861710.Spec : Prop :=
  ∀ n, (P1983170317709861710.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P1857701785733257881

`or(1, p?[3-25*(1-n)])`
-/

namespace A141929.P1857701785733257881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 25 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141929.P1857701785733257881

namespace A141929

/-- `or(1, p?[3-25*(1-n)])` -/
def P1857701785733257881.Spec : Prop :=
  ∀ n, P1857701785733257881.a n = A141929 (n + 1)

end A141929

/-! ## A141929.P16134079539914907035

`∩[A008856(n+1)+2, A045413(n+1)]`
-/

namespace A141929.P16134079539914907035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P16134079539914907035

namespace A141929

/-- `∩[A008856(n+1)+2, A045413(n+1)]` -/
def P16134079539914907035.Spec : Prop :=
  ∀ n, (P16134079539914907035.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P744228125923729834

`∩[A008856(n+1)+2, A045435(n+1)]`
-/

namespace A141929.P744228125923729834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P744228125923729834

namespace A141929

/-- `∩[A008856(n+1)+2, A045435(n+1)]` -/
def P744228125923729834.Spec : Prop :=
  ∀ n, (P744228125923729834.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P13636183238473186870

`record[A020639(25*n+3)]`
-/

namespace A141929.P13636183238473186870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141929.P13636183238473186870

namespace A141929

/-- `record[A020639(25*n+3)]` -/
def P13636183238473186870.Spec : Prop :=
  ∀ n, P13636183238473186870.a n = A141929 (n + 1)

end A141929

/-! ## A141929.P2737291989546548014

`record[A006530(50*n+3)]`
-/

namespace A141929.P2737291989546548014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (50 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141929.P2737291989546548014

namespace A141929

/-- `record[A006530(50*n+3)]` -/
def P2737291989546548014.Spec : Prop :=
  ∀ n, P2737291989546548014.a n = A141929 (n + 1)

end A141929

/-! ## A141929.P17088352380305787267

`∩[A056021(2*n+1)+2, A000040(n+2)]`
-/

namespace A141929.P17088352380305787267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P17088352380305787267

namespace A141929

/-- `∩[A056021(2*n+1)+2, A000040(n+2)]` -/
def P17088352380305787267.Spec : Prop :=
  ∀ n, (P17088352380305787267.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P8726012501862422200

`∩[A056021(2*n+1)+2, A045319(n+2)]`
-/

namespace A141929.P8726012501862422200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P8726012501862422200

namespace A141929

/-- `∩[A056021(2*n+1)+2, A045319(n+2)]` -/
def P8726012501862422200.Spec : Prop :=
  ∀ n, (P8726012501862422200.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P6405904992543014062

`∩[A056021(2*n+1)+2, A051948(n+2)]`
-/

namespace A141929.P6405904992543014062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P6405904992543014062

namespace A141929

/-- `∩[A056021(2*n+1)+2, A051948(n+2)]` -/
def P6405904992543014062.Spec : Prop :=
  ∀ n, (P6405904992543014062.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P9381258442623441626

`∩[A056021(2*n+1)+2, A175787(n+2)]`
-/

namespace A141929.P9381258442623441626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P9381258442623441626

namespace A141929

/-- `∩[A056021(2*n+1)+2, A175787(n+2)]` -/
def P9381258442623441626.Spec : Prop :=
  ∀ n, (P9381258442623441626.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P9045299733035817302

`∩[A056021(2*n+1)+2, A182986(n+2)]`
-/

namespace A141929.P9045299733035817302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P9045299733035817302

namespace A141929

/-- `∩[A056021(2*n+1)+2, A182986(n+2)]` -/
def P9045299733035817302.Spec : Prop :=
  ∀ n, (P9045299733035817302.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P6177513466130554036

`∩[A040159(n+1), A271508(A271508(n+1))+2]`
-/

namespace A141929.P6177513466130554036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (A271508 (n + 1)).toNat + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P6177513466130554036

namespace A141929

/-- `∩[A040159(n+1), A271508(A271508(n+1))+2]` -/
def P6177513466130554036.Spec : Prop :=
  ∀ n, (P6177513466130554036.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P2122081205610931891

`∩[A040159(n+1), A306277(A306277(n+1))+2]`
-/

namespace A141929.P2122081205610931891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (A306277 (n + 1)).toNat + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P2122081205610931891

namespace A141929

/-- `∩[A040159(n+1), A306277(A306277(n+1))+2]` -/
def P2122081205610931891.Spec : Prop :=
  ∀ n, (P2122081205610931891.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P1086258646637421706

`∩[A030431(n+1), A312935(n)-1]`
-/

namespace A141929.P1086258646637421706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P1086258646637421706

namespace A141929

/-- `∩[A030431(n+1), A312935(n)-1]` -/
def P1086258646637421706.Spec : Prop :=
  ∀ n, (P1086258646637421706.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P11705805019059322539

`∩[A045414(n+1), A312935(n)-1]`
-/

namespace A141929.P11705805019059322539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P11705805019059322539

namespace A141929

/-- `∩[A045414(n+1), A312935(n)-1]` -/
def P11705805019059322539.Spec : Prop :=
  ∀ n, (P11705805019059322539.a n : ℤ) = A141929 (n + 1)

end A141929

/-! ## A141929.P6025713813829082884

`filter[A131725(n+1), A185706(#)]`
-/

namespace A141929.P6025713813829082884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141929.P6025713813829082884

namespace A141929

/-- `filter[A131725(n+1), A185706(#)]` -/
def P6025713813829082884.Spec : Prop :=
  ∀ n, P6025713813829082884.a n = A141929 (n + 1)

end A141929

/-! ## A141929.P5618356702204205372

`filter[A376509(2*n+1), A185706(#)]`
-/

namespace A141929.P5618356702204205372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376509 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141929.P5618356702204205372

namespace A141929

/-- `filter[A376509(2*n+1), A185706(#)]` -/
def P5618356702204205372.Spec : Prop :=
  ∀ n, P5618356702204205372.a n = A141929 (n + 1)

end A141929

/-! ## A141929.P4303744618271882723

`filter[A174141(2*(n+1)), A185706(#)]`
-/

namespace A141929.P4303744618271882723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174141 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141929.P4303744618271882723

namespace A141929

/-- `filter[A174141(2*(n+1)), A185706(#)]` -/
def P4303744618271882723.Spec : Prop :=
  ∀ n, P4303744618271882723.a n = A141929 (n + 1)

end A141929

/-!
# A141930: Primes congruent to 4 mod 25.

The programs for A141930, the canonical program `A141930.P709686753532459887` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141930 has offset 1).

The definition of A141930 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141930.anchor (n : ℕ) (hn : 1 ≤ n) : A141930 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141930`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141930.P709686753532459887

`∪[A244767(n+1), A244775(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141930

/-- `∪[A244767(n+1), A244775(n+1)]` -/
def P709686753532459887.Spec : Prop :=
  ∀ n, (P709686753532459887.a n : ℤ) = A141930 (n + 1)

theorem P709686753532459887.correct : P709686753532459887.Spec := by
  intro n
  simp only [A141930, Nat.add_sub_cancel]

end A141930

/-! ## A141930.P8327027087422994984

`p?[25*n+4]`
-/

namespace A141930.P8327027087422994984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141930.P8327027087422994984

namespace A141930

/-- `p?[25*n+4]` -/
def P8327027087422994984.Spec : Prop :=
  ∀ n, (P8327027087422994984.a n : ℤ) = A141930 (n + 1)

end A141930

/-! ## A141930.P5138545172406721759

`or(1, p?[A155461(n)-(n+1)²])`
-/

namespace A141930.P5138545172406721759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155461 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141930.P5138545172406721759

namespace A141930

/-- `or(1, p?[A155461(n)-(n+1)²])` -/
def P5138545172406721759.Spec : Prop :=
  ∀ n, P5138545172406721759.a n = A141930 (n + 1)

end A141930

/-! ## A141930.P14209709801342237457

`∩[A306285(2*n+1)-n, A070303(n+2)]`
-/

namespace A141930.P14209709801342237457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141930.P14209709801342237457

namespace A141930

/-- `∩[A306285(2*n+1)-n, A070303(n+2)]` -/
def P14209709801342237457.Spec : Prop :=
  ∀ n, (P14209709801342237457.a n : ℤ) = A141930 (n + 1)

end A141930

/-! ## A141930.P11965669364468561653

`∩[A306285(2*n+1)-n, A216285(n+2)]`
-/

namespace A141930.P11965669364468561653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141930.P11965669364468561653

namespace A141930

/-- `∩[A306285(2*n+1)-n, A216285(n+2)]` -/
def P11965669364468561653.Spec : Prop :=
  ∀ n, (P11965669364468561653.a n : ℤ) = A141930 (n + 1)

end A141930

/-! ## A141930.P569780787278667506

`∩[A306285(2*n+1)-n, A000040(n+2)]`
-/

namespace A141930.P569780787278667506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141930.P569780787278667506

namespace A141930

/-- `∩[A306285(2*n+1)-n, A000040(n+2)]` -/
def P569780787278667506.Spec : Prop :=
  ∀ n, (P569780787278667506.a n : ℤ) = A141930 (n + 1)

end A141930

/-! ## A141930.P4505902738692593027

`∩[A306285(2*n+1)-n, A004139(n+2)]`
-/

namespace A141930.P4505902738692593027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141930.P4505902738692593027

namespace A141930

/-- `∩[A306285(2*n+1)-n, A004139(n+2)]` -/
def P4505902738692593027.Spec : Prop :=
  ∀ n, (P4505902738692593027.a n : ℤ) = A141930 (n + 1)

end A141930

/-! ## A141930.P7022296838726590086

`record[A006530(25*(n+1)+4)]`
-/

namespace A141930.P7022296838726590086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (25 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141930.P7022296838726590086

namespace A141930

/-- `record[A006530(25*(n+1)+4)]` -/
def P7022296838726590086.Spec : Prop :=
  ∀ n, P7022296838726590086.a n = A141930 (n + 1)

end A141930

/-! ## A141930.P11112022792395807843

`record[A020639(25*(n+1)+4)]`
-/

namespace A141930.P11112022792395807843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141930.P11112022792395807843

namespace A141930

/-- `record[A020639(25*(n+1)+4)]` -/
def P11112022792395807843.Spec : Prop :=
  ∀ n, P11112022792395807843.a n = A141930 (n + 1)

end A141930

/-! ## A141930.P329168974087654484

`filter[A310508(n), A185709(#)]`
-/

namespace A141930.P329168974087654484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A141930.P329168974087654484

namespace A141930

/-- `filter[A310508(n), A185709(#)]` -/
def P329168974087654484.Spec : Prop :=
  ∀ n, P329168974087654484.a n = A141930 (n + 1)

end A141930

/-! ## A141930.P7871839738020966129

`∩[A040159(n+1), A016861(A016861(n))-2]`
-/

namespace A141930.P7871839738020966129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A016861 n).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141930.P7871839738020966129

namespace A141930

/-- `∩[A040159(n+1), A016861(A016861(n))-2]` -/
def P7871839738020966129.Spec : Prop :=
  ∀ n, (P7871839738020966129.a n : ℤ) = A141930 (n + 1)

end A141930

/-!
# A141931: Primes congruent to 6 mod 25.

The programs for A141931, the canonical program `A141931.P8261575237751622424` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141931 has offset 1).

The definition of A141931 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141931.anchor (n : ℕ) (hn : 1 ≤ n) : A141931 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 6) (n - 1) : ℤ)` in `Proof.A141.A141931`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141931.P8261575237751622424

`p?[25*n+6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141931

/-- `p?[25*n+6]` -/
def P8261575237751622424.Spec : Prop :=
  ∀ n, (P8261575237751622424.a n : ℤ) = A141931 (n + 1)

theorem P8261575237751622424.correct : P8261575237751622424.Spec := by
  intro n
  simp only [A141931, Nat.add_sub_cancel]

end A141931

/-! ## A141931.P1606530959112187906

`or(p?[A053742(n)+6], A000035(n))`
-/

namespace A141931.P1606530959112187906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A141931.P1606530959112187906

namespace A141931

/-- `or(p?[A053742(n)+6], A000035(n))` -/
def P1606530959112187906.Spec : Prop :=
  ∀ n, P1606530959112187906.a n = A141931 (n + 1)

end A141931

/-! ## A141931.P7562981991989337112

`p?[A053742(n)+6]%A160484(n+1)`
-/

namespace A141931.P7562981991989337112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A160484 (n + 1))

end

end A141931.P7562981991989337112

namespace A141931

/-- `p?[A053742(n)+6]%A160484(n+1)` -/
def P7562981991989337112.Spec : Prop :=
  ∀ n, P7562981991989337112.a n = A141931 (n + 1)

end A141931

/-! ## A141931.P14210600114761926089

`∩[A045405(n+1), A156619(n+1)-1]`
-/

namespace A141931.P14210600114761926089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P14210600114761926089

namespace A141931

/-- `∩[A045405(n+1), A156619(n+1)-1]` -/
def P14210600114761926089.Spec : Prop :=
  ∀ n, (P14210600114761926089.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P17667889818335207897

`∩[A045407(n+1), A156619(n+1)-1]`
-/

namespace A141931.P17667889818335207897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P17667889818335207897

namespace A141931

/-- `∩[A045407(n+1), A156619(n+1)-1]` -/
def P17667889818335207897.Spec : Prop :=
  ∀ n, (P17667889818335207897.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P15799490695877788971

`∩[A045428(n+1), A156619(n+1)-1]`
-/

namespace A141931.P15799490695877788971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P15799490695877788971

namespace A141931

/-- `∩[A045428(n+1), A156619(n+1)-1]` -/
def P15799490695877788971.Spec : Prop :=
  ∀ n, (P15799490695877788971.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P14325073427853955847

`∩[A045429(n+1), A156619(n+1)-1]`
-/

namespace A141931.P14325073427853955847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P14325073427853955847

namespace A141931

/-- `∩[A045429(n+1), A156619(n+1)-1]` -/
def P14325073427853955847.Spec : Prop :=
  ∀ n, (P14325073427853955847.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P14334873036402134413

`∩[A156619(2*n+1)-1, A045348(n+2)]`
-/

namespace A141931.P14334873036402134413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P14334873036402134413

namespace A141931

/-- `∩[A156619(2*n+1)-1, A045348(n+2)]` -/
def P14334873036402134413.Spec : Prop :=
  ∀ n, (P14334873036402134413.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P6989025101541578019

`∩[A156619(2*n+1)-1, A045349(n+2)]`
-/

namespace A141931.P6989025101541578019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P6989025101541578019

namespace A141931

/-- `∩[A156619(2*n+1)-1, A045349(n+2)]` -/
def P6989025101541578019.Spec : Prop :=
  ∀ n, (P6989025101541578019.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P3215439603071064357

`∩[A156619(2*n+1)-1, A045372(n+2)]`
-/

namespace A141931.P3215439603071064357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P3215439603071064357

namespace A141931

/-- `∩[A156619(2*n+1)-1, A045372(n+2)]` -/
def P3215439603071064357.Spec : Prop :=
  ∀ n, (P3215439603071064357.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P557983195085282080

`record[A020639(25*n+31)]`
-/

namespace A141931.P557983195085282080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141931.P557983195085282080

namespace A141931

/-- `record[A020639(25*n+31)]` -/
def P557983195085282080.Spec : Prop :=
  ∀ n, P557983195085282080.a n = A141931 (n + 1)

end A141931

/-! ## A141931.P17919309756678895389

`record[A001414(n+49*n+31)]`
-/

namespace A141931.P17919309756678895389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + (49 * n + 31))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141931.P17919309756678895389

namespace A141931

/-- `record[A001414(n+49*n+31)]` -/
def P17919309756678895389.Spec : Prop :=
  ∀ n, P17919309756678895389.a n = A141931 (n + 1)

end A141931

/-! ## A141931.P16983089660215076984

`record[A006530(5*(10*n+6)+1)]`
-/

namespace A141931.P16983089660215076984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (10 * n + 6) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141931.P16983089660215076984

namespace A141931

/-- `record[A006530(5*(10*n+6)+1)]` -/
def P16983089660215076984.Spec : Prop :=
  ∀ n, P16983089660215076984.a n = A141931 (n + 1)

end A141931

/-! ## A141931.P8189484839194225247

`A008472(p?[A161705(n)+A017041(n)])`
-/

namespace A141931.P8189484839194225247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141931.P8189484839194225247

namespace A141931

/-- `A008472(p?[A161705(n)+A017041(n)])` -/
def P8189484839194225247.Spec : Prop :=
  ∀ n, P8189484839194225247.a n = A141931 (n + 1)

end A141931

/-! ## A141931.P9639449494771194651

`∩[A045348(n+1), A315690(n)-2]`
-/

namespace A141931.P9639449494771194651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P9639449494771194651

namespace A141931

/-- `∩[A045348(n+1), A315690(n)-2]` -/
def P9639449494771194651.Spec : Prop :=
  ∀ n, (P9639449494771194651.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P13649044445522034749

`∩[A045349(n+1), A315690(n)-2]`
-/

namespace A141931.P13649044445522034749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P13649044445522034749

namespace A141931

/-- `∩[A045349(n+1), A315690(n)-2]` -/
def P13649044445522034749.Spec : Prop :=
  ∀ n, (P13649044445522034749.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P8576863022330560115

`∩[A045405(n+1), A315690(n)-2]`
-/

namespace A141931.P8576863022330560115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P8576863022330560115

namespace A141931

/-- `∩[A045405(n+1), A315690(n)-2]` -/
def P8576863022330560115.Spec : Prop :=
  ∀ n, (P8576863022330560115.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P14100579605861560013

`∩[A045407(n+1), A315690(n)-2]`
-/

namespace A141931.P14100579605861560013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P14100579605861560013

namespace A141931

/-- `∩[A045407(n+1), A315690(n)-2]` -/
def P14100579605861560013.Spec : Prop :=
  ∀ n, (P14100579605861560013.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P3934241575518303059

`∩[A045428(n+1), A315690(n)-2]`
-/

namespace A141931.P3934241575518303059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P3934241575518303059

namespace A141931

/-- `∩[A045428(n+1), A315690(n)-2]` -/
def P3934241575518303059.Spec : Prop :=
  ∀ n, (P3934241575518303059.a n : ℤ) = A141931 (n + 1)

end A141931

/-! ## A141931.P3458493258365176510

`∩[A030430(n+1), A312944(n)-1]`
-/

namespace A141931.P3458493258365176510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141931.P3458493258365176510

namespace A141931

/-- `∩[A030430(n+1), A312944(n)-1]` -/
def P3458493258365176510.Spec : Prop :=
  ∀ n, (P3458493258365176510.a n : ℤ) = A141931 (n + 1)

end A141931

/-!
# A141932: Primes congruent to 7 mod 25.

The programs for A141932, the canonical program `A141932.P17786084984330798446` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141932 has offset 1).

The definition of A141932 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141932.anchor (n : ℕ) (hn : 1 ≤ n) : A141932 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 7) (n - 1) : ℤ)` in `Proof.A141.A141932`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141932.P17786084984330798446

`p?[25*n+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141932

/-- `p?[25*n+7]` -/
def P17786084984330798446.Spec : Prop :=
  ∀ n, (P17786084984330798446.a n : ℤ) = A141932 (n + 1)

theorem P17786084984330798446.correct : P17786084984330798446.Spec := by
  intro n
  simp only [A141932, Nat.add_sub_cancel]

end A141932

/-! ## A141932.P9726796588369286456

`∩[A030432(n+1), A172469(n+1)]`
-/

namespace A141932.P9726796588369286456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P9726796588369286456

namespace A141932

/-- `∩[A030432(n+1), A172469(n+1)]` -/
def P9726796588369286456.Spec : Prop :=
  ∀ n, (P9726796588369286456.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P11200628869157723387

`∩[A045357(n+1), A172469(n+1)]`
-/

namespace A141932.P11200628869157723387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P11200628869157723387

namespace A141932

/-- `∩[A045357(n+1), A172469(n+1)]` -/
def P11200628869157723387.Spec : Prop :=
  ∀ n, (P11200628869157723387.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P16155762260656225944

`∩[A045380(n+1), A172469(n+1)]`
-/

namespace A141932.P16155762260656225944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P16155762260656225944

namespace A141932

/-- `∩[A045380(n+1), A172469(n+1)]` -/
def P16155762260656225944.Spec : Prop :=
  ∀ n, (P16155762260656225944.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P5239822072550190487

`∩[A090652(n+1), A172469(n+1)]`
-/

namespace A141932.P5239822072550190487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P5239822072550190487

namespace A141932

/-- `∩[A090652(n+1), A172469(n+1)]` -/
def P5239822072550190487.Spec : Prop :=
  ∀ n, (P5239822072550190487.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P9580598703140685685

`∩[A030432(n+1), A159254(n+1)]`
-/

namespace A141932.P9580598703140685685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P9580598703140685685

namespace A141932

/-- `∩[A030432(n+1), A159254(n+1)]` -/
def P9580598703140685685.Spec : Prop :=
  ∀ n, (P9580598703140685685.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P8876551472262927846

`∩[A045357(n+1), A159254(n+1)]`
-/

namespace A141932.P8876551472262927846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P8876551472262927846

namespace A141932

/-- `∩[A045357(n+1), A159254(n+1)]` -/
def P8876551472262927846.Spec : Prop :=
  ∀ n, (P8876551472262927846.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P5884558443663615345

`∩[A045380(n+1), A159254(n+1)]`
-/

namespace A141932.P5884558443663615345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P5884558443663615345

namespace A141932

/-- `∩[A045380(n+1), A159254(n+1)]` -/
def P5884558443663615345.Spec : Prop :=
  ∀ n, (P5884558443663615345.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P9709038895614994090

`∩[A045349(n+1), A159254(n+1)]`
-/

namespace A141932.P9709038895614994090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P9709038895614994090

namespace A141932

/-- `∩[A045349(n+1), A159254(n+1)]` -/
def P9709038895614994090.Spec : Prop :=
  ∀ n, (P9709038895614994090.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P7893328348660931482

`∩[A045356(n+1), A159254(n+1)]`
-/

namespace A141932.P7893328348660931482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P7893328348660931482

namespace A141932

/-- `∩[A045356(n+1), A159254(n+1)]` -/
def P7893328348660931482.Spec : Prop :=
  ∀ n, (P7893328348660931482.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P4427019239251438043

`∩[A045372(n+1), A159254(n+1)]`
-/

namespace A141932.P4427019239251438043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P4427019239251438043

namespace A141932

/-- `∩[A045372(n+1), A159254(n+1)]` -/
def P4427019239251438043.Spec : Prop :=
  ∀ n, (P4427019239251438043.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P12155174087020414506

`∩[A045378(n+1), A159254(n+1)]`
-/

namespace A141932.P12155174087020414506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P12155174087020414506

namespace A141932

/-- `∩[A045378(n+1), A159254(n+1)]` -/
def P12155174087020414506.Spec : Prop :=
  ∀ n, (P12155174087020414506.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P17273242515025962862

`∩[A045349(n+1), A159754(n+1)-2]`
-/

namespace A141932.P17273242515025962862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P17273242515025962862

namespace A141932

/-- `∩[A045349(n+1), A159754(n+1)-2]` -/
def P17273242515025962862.Spec : Prop :=
  ∀ n, (P17273242515025962862.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P8762381529630260000

`∩[A045372(n+1), A159754(n+1)-2]`
-/

namespace A141932.P8762381529630260000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P8762381529630260000

namespace A141932

/-- `∩[A045372(n+1), A159754(n+1)-2]` -/
def P8762381529630260000.Spec : Prop :=
  ∀ n, (P8762381529630260000.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P7653288218012748211

`∩[A045348(n+1), A159254(n+1)]`
-/

namespace A141932.P7653288218012748211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P7653288218012748211

namespace A141932

/-- `∩[A045348(n+1), A159254(n+1)]` -/
def P7653288218012748211.Spec : Prop :=
  ∀ n, (P7653288218012748211.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P10716432442089107724

`∩[A045371(n+1), A159254(n+1)]`
-/

namespace A141932.P10716432442089107724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P10716432442089107724

namespace A141932

/-- `∩[A045371(n+1), A159254(n+1)]` -/
def P10716432442089107724.Spec : Prop :=
  ∀ n, (P10716432442089107724.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P880149351710792605

`∩[A042986(n+1), A159754(n+1)-2]`
-/

namespace A141932.P880149351710792605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P880149351710792605

namespace A141932

/-- `∩[A042986(n+1), A159754(n+1)-2]` -/
def P880149351710792605.Spec : Prop :=
  ∀ n, (P880149351710792605.a n : ℤ) = A141932 (n + 1)

end A141932

/-! ## A141932.P6024918459241102492

`∩[A045321(n+1), A159754(n+1)-2]`
-/

namespace A141932.P6024918459241102492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141932.P6024918459241102492

namespace A141932

/-- `∩[A045321(n+1), A159754(n+1)-2]` -/
def P6024918459241102492.Spec : Prop :=
  ∀ n, (P6024918459241102492.a n : ℤ) = A141932 (n + 1)

end A141932

/-!
# A141933: Primes congruent to 8 mod 25.

The programs for A141933, the canonical program `A141933.P8683045149919439079` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141933 has offset 1).

The definition of A141933 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141933.anchor (n : ℕ) (hn : 1 ≤ n) : A141933 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 8) (n - 1) : ℤ)` in `Proof.A141.A141933`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141933.P8683045149919439079

`p?[25*n+8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141933

/-- `p?[25*n+8]` -/
def P8683045149919439079.Spec : Prop :=
  ∀ n, (P8683045149919439079.a n : ℤ) = A141933 (n + 1)

theorem P8683045149919439079.correct : P8683045149919439079.Spec := by
  intro n
  simp only [A141933, Nat.add_sub_cancel]

end A141933

/-! ## A141933.P13871538398083975876

`A000027(p?[A053742(n)+8])`
-/

namespace A141933.P13871538398083975876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141933.P13871538398083975876

namespace A141933

/-- `A000027(p?[A053742(n)+8])` -/
def P13871538398083975876.Spec : Prop :=
  ∀ n, P13871538398083975876.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P10595662689643406115

`A000027(p?[A053741(n)-37])`
-/

namespace A141933.P10595662689643406115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141933.P10595662689643406115

namespace A141933

/-- `A000027(p?[A053741(n)-37])` -/
def P10595662689643406115.Spec : Prop :=
  ∀ n, P10595662689643406115.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P12087444466037029520

`∩[A030431(n+1), A156619(n+1)+1]`
-/

namespace A141933.P12087444466037029520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P12087444466037029520

namespace A141933

/-- `∩[A030431(n+1), A156619(n+1)+1]` -/
def P12087444466037029520.Spec : Prop :=
  ∀ n, (P12087444466037029520.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P15846719321183479682

`∩[A045407(n+1), A156619(n+1)+1]`
-/

namespace A141933.P15846719321183479682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P15846719321183479682

namespace A141933

/-- `∩[A045407(n+1), A156619(n+1)+1]` -/
def P15846719321183479682.Spec : Prop :=
  ∀ n, (P15846719321183479682.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P10642501556087161782

`∩[A045414(n+1), A156619(n+1)+1]`
-/

namespace A141933.P10642501556087161782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P10642501556087161782

namespace A141933

/-- `∩[A045414(n+1), A156619(n+1)+1]` -/
def P10642501556087161782.Spec : Prop :=
  ∀ n, (P10642501556087161782.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P7257354621687234744

`∩[A045429(n+1), A156619(n+1)+1]`
-/

namespace A141933.P7257354621687234744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P7257354621687234744

namespace A141933

/-- `∩[A045429(n+1), A156619(n+1)+1]` -/
def P7257354621687234744.Spec : Prop :=
  ∀ n, (P7257354621687234744.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P9176949852664431355

`∩[A156619(n+1)+1, A256177(n+1)]`
-/

namespace A141933.P9176949852664431355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P9176949852664431355

namespace A141933

/-- `∩[A156619(n+1)+1, A256177(n+1)]` -/
def P9176949852664431355.Spec : Prop :=
  ∀ n, (P9176949852664431355.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P16183689461282816193

`∩[A156619(2*n+1)+1, A045405(n+2)]`
-/

namespace A141933.P16183689461282816193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P16183689461282816193

namespace A141933

/-- `∩[A156619(2*n+1)+1, A045405(n+2)]` -/
def P16183689461282816193.Spec : Prop :=
  ∀ n, (P16183689461282816193.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P14937816347738067413

`∩[A156619(2*n+1)+1, A045413(n+2)]`
-/

namespace A141933.P14937816347738067413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P14937816347738067413

namespace A141933

/-- `∩[A156619(2*n+1)+1, A045413(n+2)]` -/
def P14937816347738067413.Spec : Prop :=
  ∀ n, (P14937816347738067413.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P6602156975990574698

`∩[A156619(2*n+1)+1, A045428(n+2)]`
-/

namespace A141933.P6602156975990574698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P6602156975990574698

namespace A141933

/-- `∩[A156619(2*n+1)+1, A045428(n+2)]` -/
def P6602156975990574698.Spec : Prop :=
  ∀ n, (P6602156975990574698.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P17712735985928168908

`∩[A156619(2*n+1)+1, A045435(n+2)]`
-/

namespace A141933.P17712735985928168908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P17712735985928168908

namespace A141933

/-- `∩[A156619(2*n+1)+1, A045435(n+2)]` -/
def P17712735985928168908.Spec : Prop :=
  ∀ n, (P17712735985928168908.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P2333091678123947662

`A000265(p?[A053742(n)+8])`
-/

namespace A141933.P2333091678123947662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141933.P2333091678123947662

namespace A141933

/-- `A000265(p?[A053742(n)+8])` -/
def P2333091678123947662.Spec : Prop :=
  ∀ n, P2333091678123947662.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P16032521900881111610

`A007913(p?[A053742(n)+8])`
-/

namespace A141933.P16032521900881111610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141933.P16032521900881111610

namespace A141933

/-- `A007913(p?[A053742(n)+8])` -/
def P16032521900881111610.Spec : Prop :=
  ∀ n, P16032521900881111610.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P7346021731643151795

`A007947(p?[A053742(n)+8])`
-/

namespace A141933.P7346021731643151795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141933.P7346021731643151795

namespace A141933

/-- `A007947(p?[A053742(n)+8])` -/
def P7346021731643151795.Spec : Prop :=
  ∀ n, P7346021731643151795.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P4181554513488392609

`A000265(p?[A135659(n)+1+n])`
-/

namespace A141933.P4181554513488392609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141933.P4181554513488392609

namespace A141933

/-- `A000265(p?[A135659(n)+1+n])` -/
def P4181554513488392609.Spec : Prop :=
  ∀ n, P4181554513488392609.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P14206532158786733047

`filter[A315690(n), A185706(#)]`
-/

namespace A141933.P14206532158786733047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141933.P14206532158786733047

namespace A141933

/-- `filter[A315690(n), A185706(#)]` -/
def P14206532158786733047.Spec : Prop :=
  ∀ n, P14206532158786733047.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P14425058849162927622

`filter[A315696(3*n), A185706(#)]`
-/

namespace A141933.P14425058849162927622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141933.P14425058849162927622

namespace A141933

/-- `filter[A315696(3*n), A185706(#)]` -/
def P14425058849162927622.Spec : Prop :=
  ∀ n, P14425058849162927622.a n = A141933 (n + 1)

end A141933

/-! ## A141933.P11419329748616552632

`∩[A030431(n+1), A315690(n)]`
-/

namespace A141933.P11419329748616552632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P11419329748616552632

namespace A141933

/-- `∩[A030431(n+1), A315690(n)]` -/
def P11419329748616552632.Spec : Prop :=
  ∀ n, (P11419329748616552632.a n : ℤ) = A141933 (n + 1)

end A141933

/-! ## A141933.P11649832874181169201

`∩[A045405(n+1), A315690(n)]`
-/

namespace A141933.P11649832874181169201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141933.P11649832874181169201

namespace A141933

/-- `∩[A045405(n+1), A315690(n)]` -/
def P11649832874181169201.Spec : Prop :=
  ∀ n, (P11649832874181169201.a n : ℤ) = A141933 (n + 1)

end A141933

/-!
# A141934: Primes congruent to 9 mod 25.

The programs for A141934, there is no canonical definition to state claims against.
-/

/-! ## A141934.P14562518862230773319

`∪[A166560(n+1), A244772(n+1)]`
-/

namespace A141934.P14562518862230773319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P14562518862230773319

/-! ## A141934.P3698683000659134255

`p?[50*n+9]`
-/

namespace A141934.P3698683000659134255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141934.P3698683000659134255

/-! ## A141934.P12091124195536736222

`or(1, p?[A159754(n+1+n)])`
-/

namespace A141934.P12091124195536736222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141934.P12091124195536736222

/-! ## A141934.P6140076314857559205

`∩[A030433(n+1), A159754(n+1)]`
-/

namespace A141934.P6140076314857559205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P6140076314857559205

/-! ## A141934.P11357731938084362242

`∩[A045457(n+1), A159754(n+1)]`
-/

namespace A141934.P11357731938084362242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P11357731938084362242

/-! ## A141934.P3138570141897479392

`p?[A159754(n+1+n)]%A017653(n)²`
-/

namespace A141934.P3138570141897479392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017653 n ^ 2)

end

end A141934.P3138570141897479392

/-! ## A141934.P12541274903447089809

`∩[A045435(n+1), A159754(n+1)]`
-/

namespace A141934.P12541274903447089809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P12541274903447089809

/-! ## A141934.P2938920969974077866

`∩[A045435(n+1), A159254(n+1)+2]`
-/

namespace A141934.P2938920969974077866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P2938920969974077866

/-! ## A141934.P3345630249209622579

`∩[A045356(n+1), A159754(n+1)]`
-/

namespace A141934.P3345630249209622579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P3345630249209622579

/-! ## A141934.P13097416655980223739

`∩[A045378(n+1), A159754(n+1)]`
-/

namespace A141934.P13097416655980223739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P13097416655980223739

/-! ## A141934.P6500582729057328360

`∩[A045413(n+1), A159754(n+1)]`
-/

namespace A141934.P6500582729057328360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P6500582729057328360

/-! ## A141934.P15034953343228837714

`∩[A045356(n+1), A159254(n+1)+2]`
-/

namespace A141934.P15034953343228837714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P15034953343228837714

/-! ## A141934.P6503433130412478097

`∩[A045378(n+1), A159254(n+1)+2]`
-/

namespace A141934.P6503433130412478097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P6503433130412478097

/-! ## A141934.P7445362447885362610

`∩[A045413(n+1), A159254(n+1)+2]`
-/

namespace A141934.P7445362447885362610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P7445362447885362610

/-! ## A141934.P11946300966403086983

`∩[A045348(n+1), A159254(n+1)+2]`
-/

namespace A141934.P11946300966403086983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P11946300966403086983

/-! ## A141934.P18087060028148801902

`∩[A045371(n+1), A159254(n+1)+2]`
-/

namespace A141934.P18087060028148801902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P18087060028148801902

/-! ## A141934.P10237757110460605379

`∩[A045405(n+1), A159254(n+1)+2]`
-/

namespace A141934.P10237757110460605379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P10237757110460605379

/-! ## A141934.P17378710126486054898

`∩[A045428(n+1), A159254(n+1)+2]`
-/

namespace A141934.P17378710126486054898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P17378710126486054898

/-! ## A141934.P5118244120161070030

`∩[A042991(n+1), A159754(n+1)]`
-/

namespace A141934.P5118244120161070030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P5118244120161070030

/-! ## A141934.P8625760547244746374

`∩[A045327(n+1), A159754(n+1)]`
-/

namespace A141934.P8625760547244746374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141934.P8625760547244746374

/-!
# A141935: Primes congruent to 11 mod 25.

The programs for A141935, the canonical program `A141935.P8548039102918466505` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141935 has offset 1).

The definition of A141935 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141935.anchor (n : ℕ) (hn : 1 ≤ n) : A141935 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141935`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141935.P8548039102918466505

`∪[A167442(n+1), A167445(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141935

/-- `∪[A167442(n+1), A167445(n+1)]` -/
def P8548039102918466505.Spec : Prop :=
  ∀ n, (P8548039102918466505.a n : ℤ) = A141935 (n + 1)

theorem P8548039102918466505.correct : P8548039102918466505.Spec := by
  intro n
  simp only [A141935, Nat.add_sub_cancel]

end A141935

/-! ## A141935.P10200795203388581920

`p?[5*5*n-39]`
-/

namespace A141935.P10200795203388581920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (5 * n) : ℤ) - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141935.P10200795203388581920

namespace A141935

/-- `p?[5*5*n-39]` -/
def P10200795203388581920.Spec : Prop :=
  ∀ n, P10200795203388581920.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P16970724324605459799

`∩[A030430(n+1), A159754(n+1)+2]`
-/

namespace A141935.P16970724324605459799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P16970724324605459799

namespace A141935

/-- `∩[A030430(n+1), A159754(n+1)+2]` -/
def P16970724324605459799.Spec : Prop :=
  ∀ n, (P16970724324605459799.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P3731498856300031177

`∩[A045453(n+1), A159754(n+1)+2]`
-/

namespace A141935.P3731498856300031177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P3731498856300031177

namespace A141935

/-- `∩[A045453(n+1), A159754(n+1)+2]` -/
def P3731498856300031177.Spec : Prop :=
  ∀ n, (P3731498856300031177.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P10383701811244094662

`∩[A159754(2*n+1)+2, A045407(n+2)]`
-/

namespace A141935.P10383701811244094662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P10383701811244094662

namespace A141935

/-- `∩[A159754(2*n+1)+2, A045407(n+2)]` -/
def P10383701811244094662.Spec : Prop :=
  ∀ n, (P10383701811244094662.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P13032284837326928332

`∩[A159754(2*n+1)+2, A045429(n+2)]`
-/

namespace A141935.P13032284837326928332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P13032284837326928332

namespace A141935

/-- `∩[A159754(2*n+1)+2, A045429(n+2)]` -/
def P13032284837326928332.Spec : Prop :=
  ∀ n, (P13032284837326928332.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P12972945757095572158

`∩[A045349(n+1), A159754(n+1)+2]`
-/

namespace A141935.P12972945757095572158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P12972945757095572158

namespace A141935

/-- `∩[A045349(n+1), A159754(n+1)+2]` -/
def P12972945757095572158.Spec : Prop :=
  ∀ n, (P12972945757095572158.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P6717558851117495883

`∩[A045372(n+1), A159754(n+1)+2]`
-/

namespace A141935.P6717558851117495883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P6717558851117495883

namespace A141935

/-- `∩[A045372(n+1), A159754(n+1)+2]` -/
def P6717558851117495883.Spec : Prop :=
  ∀ n, (P6717558851117495883.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P15790485686178035002

`∩[A159754(2*n+1)+2, A042986(n+2)]`
-/

namespace A141935.P15790485686178035002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P15790485686178035002

namespace A141935

/-- `∩[A159754(2*n+1)+2, A042986(n+2)]` -/
def P15790485686178035002.Spec : Prop :=
  ∀ n, (P15790485686178035002.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P17106879648720330265

`∩[A159754(2*n+1)+2, A045321(n+2)]`
-/

namespace A141935.P17106879648720330265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P17106879648720330265

namespace A141935

/-- `∩[A159754(2*n+1)+2, A045321(n+2)]` -/
def P17106879648720330265.Spec : Prop :=
  ∀ n, (P17106879648720330265.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P18150287674414993491

`∩[A017653(2*n)+n, A038872(n+2)]`
-/

namespace A141935.P18150287674414993491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P18150287674414993491

namespace A141935

/-- `∩[A017653(2*n)+n, A038872(n+2)]` -/
def P18150287674414993491.Spec : Prop :=
  ∀ n, (P18150287674414993491.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P17026507327144041208

`∩[A017653(2*n)+n, A076518(n+2)]`
-/

namespace A141935.P17026507327144041208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P17026507327144041208

namespace A141935

/-- `∩[A017653(2*n)+n, A076518(n+2)]` -/
def P17026507327144041208.Spec : Prop :=
  ∀ n, (P17026507327144041208.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P8736580192412818032

`∩[A017653(2*n)+n, A341783(n+2)]`
-/

namespace A141935.P8736580192412818032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P8736580192412818032

namespace A141935

/-- `∩[A017653(2*n)+n, A341783(n+2)]` -/
def P8736580192412818032.Spec : Prop :=
  ∀ n, (P8736580192412818032.a n : ℤ) = A141935 (n + 1)

end A141935

/-! ## A141935.P3181623954908316138

`record[A020639(10*(5*n+1)+1)]`
-/

namespace A141935.P3181623954908316138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * (5 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P3181623954908316138

namespace A141935

/-- `record[A020639(10*(5*n+1)+1)]` -/
def P3181623954908316138.Spec : Prop :=
  ∀ n, P3181623954908316138.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P17675642772251113936

`record[A006530(A159754(or(1, n))+2)]`
-/

namespace A141935.P17675642772251113936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A159754 (Nat.lor 1 n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P17675642772251113936

namespace A141935

/-- `record[A006530(A159754(or(1, n))+2)]` -/
def P17675642772251113936.Spec : Prop :=
  ∀ n, P17675642772251113936.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P16304210556429230385

`record[A006530(A017653(2*n)+n)]`
-/

namespace A141935.P16304210556429230385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017653 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P16304210556429230385

namespace A141935

/-- `record[A006530(A017653(2*n)+n)]` -/
def P16304210556429230385.Spec : Prop :=
  ∀ n, P16304210556429230385.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P16734901227727902101

`record[A006530(A269100(2*n)-n)]`
-/

namespace A141935.P16734901227727902101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A269100 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P16734901227727902101

namespace A141935

/-- `record[A006530(A269100(2*n)-n)]` -/
def P16734901227727902101.Spec : Prop :=
  ∀ n, P16734901227727902101.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P14966818111068044008

`record[A006530(A159754(2*n+1)+2)]`
-/

namespace A141935.P14966818111068044008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A159754 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P14966818111068044008

namespace A141935

/-- `record[A006530(A159754(2*n+1)+2)]` -/
def P14966818111068044008.Spec : Prop :=
  ∀ n, P14966818111068044008.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P6364518990467326954

`record[A006530(8*A016777(n)+3+n)]`
-/

namespace A141935.P6364518990467326954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * A016777 n + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P6364518990467326954

namespace A141935

/-- `record[A006530(8*A016777(n)+3+n)]` -/
def P6364518990467326954.Spec : Prop :=
  ∀ n, P6364518990467326954.a n = A141935 (n + 1)

end A141935

/-! ## A141935.P16896296590787065175

`record[A006530(10*(10*n+2)+2)]`
-/

namespace A141935.P16896296590787065175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (10 * n + 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141935.P16896296590787065175

namespace A141935

/-- `record[A006530(10*(10*n+2)+2)]` -/
def P16896296590787065175.Spec : Prop :=
  ∀ n, P16896296590787065175.a n = A141935 (n + 1)

end A141935

/-!
# A141936: Primes congruent to 12 mod 25.

The programs for A141936, the canonical program `A141936.P15384463065993104786` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141936 has offset 1).

The definition of A141936 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141936.anchor (n : ℕ) (hn : 1 ≤ n) : A141936 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 12) (n - 1) : ℤ)` in `Proof.A141.A141936`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141936.P15384463065993104786

`p?[5*5*n+12]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141936

/-- `p?[5*5*n+12]` -/
def P15384463065993104786.Spec : Prop :=
  ∀ n, (P15384463065993104786.a n : ℤ) = A141936 (n + 1)

theorem P15384463065993104786.correct : P15384463065993104786.Spec := by
  intro n
  simp only [A141936, Nat.add_sub_cancel]

end A141936

/-! ## A141936.P3621568250639349485

`∩[A045356(n+1), A242181(n+1)-2]`
-/

namespace A141936.P3621568250639349485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P3621568250639349485

namespace A141936

/-- `∩[A045356(n+1), A242181(n+1)-2]` -/
def P3621568250639349485.Spec : Prop :=
  ∀ n, (P3621568250639349485.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P2719203010305864001

`∩[A045378(n+1), A242181(n+1)-2]`
-/

namespace A141936.P2719203010305864001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P2719203010305864001

namespace A141936

/-- `∩[A045378(n+1), A242181(n+1)-2]` -/
def P2719203010305864001.Spec : Prop :=
  ∀ n, (P2719203010305864001.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P1742734625321406273

`record[A006530(25*(n+1)+12)]`
-/

namespace A141936.P1742734625321406273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (25 * (n + 1) + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141936.P1742734625321406273

namespace A141936

/-- `record[A006530(25*(n+1)+12)]` -/
def P1742734625321406273.Spec : Prop :=
  ∀ n, P1742734625321406273.a n = A141936 (n + 1)

end A141936

/-! ## A141936.P1570834153398810266

`record[A020639(Δ[A022282(n+1)])]`
-/

namespace A141936.P1570834153398810266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141936.P1570834153398810266

namespace A141936

/-- `record[A020639(Δ[A022282(n+1)])]` -/
def P1570834153398810266.Spec : Prop :=
  ∀ n, P1570834153398810266.a n = A141936 (n + 1)

end A141936

/-! ## A141936.P12380827200703599609

`record[A020639(A242181(n+1)-2)]`
-/

namespace A141936.P12380827200703599609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242181 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141936.P12380827200703599609

namespace A141936

/-- `record[A020639(A242181(n+1)-2)]` -/
def P12380827200703599609.Spec : Prop :=
  ∀ n, P12380827200703599609.a n = A141936 (n + 1)

end A141936

/-! ## A141936.P11968353102316141264

`record[A020639(A159754(n+2)-4)]`
-/

namespace A141936.P11968353102316141264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A159754 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141936.P11968353102316141264

namespace A141936

/-- `record[A020639(A159754(n+2)-4)]` -/
def P11968353102316141264.Spec : Prop :=
  ∀ n, P11968353102316141264.a n = A141936 (n + 1)

end A141936

/-! ## A141936.P14299413055485818950

`record[A020639(4*A065262(3*n+5)+1+n)]`
-/

namespace A141936.P14299413055485818950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * A065262 (3 * n + 5) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141936.P14299413055485818950

namespace A141936

/-- `record[A020639(4*A065262(3*n+5)+1+n)]` -/
def P14299413055485818950.Spec : Prop :=
  ∀ n, P14299413055485818950.a n = A141936 (n + 1)

end A141936

/-! ## A141936.P15572465655618161980

`∩[A000040(n+1), A016873(A016873(n))]`
-/

namespace A141936.P15572465655618161980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A016873 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P15572465655618161980

namespace A141936

/-- `∩[A000040(n+1), A016873(A016873(n))]` -/
def P15572465655618161980.Spec : Prop :=
  ∀ n, (P15572465655618161980.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P6091335022546469387

`∩[A003631(n+1), A016873(A016873(n))]`
-/

namespace A141936.P6091335022546469387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A016873 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P6091335022546469387

namespace A141936

/-- `∩[A003631(n+1), A016873(A016873(n))]` -/
def P6091335022546469387.Spec : Prop :=
  ∀ n, (P6091335022546469387.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P13168019653187490072

`∩[A040159(n+1), A306277(A306277(n+1))-1]`
-/

namespace A141936.P13168019653187490072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (A306277 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P13168019653187490072

namespace A141936

/-- `∩[A040159(n+1), A306277(A306277(n+1))-1]` -/
def P13168019653187490072.Spec : Prop :=
  ∀ n, (P13168019653187490072.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P9459681507229187379

`filter[A312935(n), A185708(#)]`
-/

namespace A141936.P9459681507229187379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141936.P9459681507229187379

namespace A141936

/-- `filter[A312935(n), A185708(#)]` -/
def P9459681507229187379.Spec : Prop :=
  ∀ n, P9459681507229187379.a n = A141936 (n + 1)

end A141936

/-! ## A141936.P7181496919054428397

`∩[A030432(n+1), A312935(n)]`
-/

namespace A141936.P7181496919054428397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P7181496919054428397

namespace A141936

/-- `∩[A030432(n+1), A312935(n)]` -/
def P7181496919054428397.Spec : Prop :=
  ∀ n, (P7181496919054428397.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P13756885439620817132

`∩[A045357(n+1), A312935(n)]`
-/

namespace A141936.P13756885439620817132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P13756885439620817132

namespace A141936

/-- `∩[A045357(n+1), A312935(n)]` -/
def P13756885439620817132.Spec : Prop :=
  ∀ n, (P13756885439620817132.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P2787600624982003332

`∩[A045380(n+1), A312935(n)]`
-/

namespace A141936.P2787600624982003332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P2787600624982003332

namespace A141936

/-- `∩[A045380(n+1), A312935(n)]` -/
def P2787600624982003332.Spec : Prop :=
  ∀ n, (P2787600624982003332.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P13209448599914990280

`∩[A047215(5*n), A000040(n+2)]`
-/

namespace A141936.P13209448599914990280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141936.P13209448599914990280

namespace A141936

/-- `∩[A047215(5*n), A000040(n+2)]` -/
def P13209448599914990280.Spec : Prop :=
  ∀ n, (P13209448599914990280.a n : ℤ) = A141936 (n + 1)

end A141936

/-! ## A141936.P1342706911887453669

`filter[A211703(n+1), A185708(#)]`
-/

namespace A141936.P1342706911887453669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141936.P1342706911887453669

namespace A141936

/-- `filter[A211703(n+1), A185708(#)]` -/
def P1342706911887453669.Spec : Prop :=
  ∀ n, P1342706911887453669.a n = A141936 (n + 1)

end A141936

/-!
# A141937: Primes congruent to 13 mod 25.

The programs for A141937, the canonical program `A141937.P14001958662391153384` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141937 has offset 1).

The definition of A141937 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141937.anchor (n : ℕ) (hn : 1 ≤ n) : A141937 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 13) (n - 1) : ℤ)` in `Proof.A141.A141937`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141937.P14001958662391153384

`p?[5*5*n-12]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141937

/-- `p?[5*5*n-12]` -/
def P14001958662391153384.Spec : Prop :=
  ∀ n, P14001958662391153384.a n = A141937 (n + 1)

theorem P14001958662391153384.correct : P14001958662391153384.Spec := by
  intro n
  simp only [A141937, Nat.add_sub_cancel]

end A141937

/-! ## A141937.P6769564485046936996

`∩[A017533(2*n+1)+n, A000040(n+2)]`
-/

namespace A141937.P6769564485046936996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P6769564485046936996

namespace A141937

/-- `∩[A017533(2*n+1)+n, A000040(n+2)]` -/
def P6769564485046936996.Spec : Prop :=
  ∀ n, (P6769564485046936996.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P6173224787054175732

`∩[A017533(2*n+1)+n, A004139(n+2)]`
-/

namespace A141937.P6173224787054175732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P6173224787054175732

namespace A141937

/-- `∩[A017533(2*n+1)+n, A004139(n+2)]` -/
def P6173224787054175732.Spec : Prop :=
  ∀ n, (P6173224787054175732.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P8670345442319512840

`∩[A017533(2*n+1)+n, A045319(n+2)]`
-/

namespace A141937.P8670345442319512840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P8670345442319512840

namespace A141937

/-- `∩[A017533(2*n+1)+n, A045319(n+2)]` -/
def P8670345442319512840.Spec : Prop :=
  ∀ n, (P8670345442319512840.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P9637592397631655983

`record[A020639(Δ[A022282(n)]+1)]`
-/

namespace A141937.P9637592397631655983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P9637592397631655983

namespace A141937

/-- `record[A020639(Δ[A022282(n)]+1)]` -/
def P9637592397631655983.Spec : Prop :=
  ∀ n, P9637592397631655983.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P8652142177614967619

`record[A020639(A159754(n+1)+4)]`
-/

namespace A141937.P8652142177614967619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A159754 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P8652142177614967619

namespace A141937

/-- `record[A020639(A159754(n+1)+4)]` -/
def P8652142177614967619.Spec : Prop :=
  ∀ n, P8652142177614967619.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P25623643641576712

`record[A006530(A159754(or(1, n))+4)]`
-/

namespace A141937.P25623643641576712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A159754 (Nat.lor 1 n) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P25623643641576712

namespace A141937

/-- `record[A006530(A159754(or(1, n))+4)]` -/
def P25623643641576712.Spec : Prop :=
  ∀ n, P25623643641576712.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P2989286545028502040

`record[A006530(A159754(2*n+1)+4)]`
-/

namespace A141937.P2989286545028502040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A159754 (2 * n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P2989286545028502040

namespace A141937

/-- `record[A006530(A159754(2*n+1)+4)]` -/
def P2989286545028502040.Spec : Prop :=
  ∀ n, P2989286545028502040.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P13540304222161061985

`record[A006530(A017053(A016993(n))+n)]`
-/

namespace A141937.P13540304222161061985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017053 (A016993 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P13540304222161061985

namespace A141937

/-- `record[A006530(A017053(A016993(n))+n)]` -/
def P13540304222161061985.Spec : Prop :=
  ∀ n, P13540304222161061985.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P16611960804596546410

`record[A020639(A017053(A016993(n))+n)]`
-/

namespace A141937.P16611960804596546410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017053 (A016993 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P16611960804596546410

namespace A141937

/-- `record[A020639(A017053(A016993(n))+n)]` -/
def P16611960804596546410.Spec : Prop :=
  ∀ n, P16611960804596546410.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P11432951684961614570

`∩[A112653(2*n+1)-A004525(n+1), A000040(n+2)]`
-/

namespace A141937.P11432951684961614570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (2 * n + 1) - A004525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P11432951684961614570

namespace A141937

/-- `∩[A112653(2*n+1)-A004525(n+1), A000040(n+2)]` -/
def P11432951684961614570.Spec : Prop :=
  ∀ n, (P11432951684961614570.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P14536720419079554482

`record[A006530(A053742(2*n)+1)]`
-/

namespace A141937.P14536720419079554482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053742 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141937.P14536720419079554482

namespace A141937

/-- `record[A006530(A053742(2*n)+1)]` -/
def P14536720419079554482.Spec : Prop :=
  ∀ n, P14536720419079554482.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P3828177829909496177

`∩[A003631(n+1), A016873(A016873(n))+1]`
-/

namespace A141937.P3828177829909496177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A016873 n).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P3828177829909496177

namespace A141937

/-- `∩[A003631(n+1), A016873(A016873(n))+1]` -/
def P3828177829909496177.Spec : Prop :=
  ∀ n, (P3828177829909496177.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P4031151021666478361

`∩[A040159(n+1), A271508(A271508(n+1))-1]`
-/

namespace A141937.P4031151021666478361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (A271508 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P4031151021666478361

namespace A141937

/-- `∩[A040159(n+1), A271508(A271508(n+1))-1]` -/
def P4031151021666478361.Spec : Prop :=
  ∀ n, (P4031151021666478361.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P13336009200843554273

`filter[A312935(n), A185706(#)]`
-/

namespace A141937.P13336009200843554273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141937.P13336009200843554273

namespace A141937

/-- `filter[A312935(n), A185706(#)]` -/
def P13336009200843554273.Spec : Prop :=
  ∀ n, P13336009200843554273.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P9055505327627111365

`filter[A399563(n+2), A185706(#)]`
-/

namespace A141937.P9055505327627111365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141937.P9055505327627111365

namespace A141937

/-- `filter[A399563(n+2), A185706(#)]` -/
def P9055505327627111365.Spec : Prop :=
  ∀ n, P9055505327627111365.a n = A141937 (n + 1)

end A141937

/-! ## A141937.P8243536765921457812

`∩[A030431(n+1), A312935(n)]`
-/

namespace A141937.P8243536765921457812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P8243536765921457812

namespace A141937

/-- `∩[A030431(n+1), A312935(n)]` -/
def P8243536765921457812.Spec : Prop :=
  ∀ n, (P8243536765921457812.a n : ℤ) = A141937 (n + 1)

end A141937

/-! ## A141937.P18255379448819079510

`∩[A045414(n+1), A312935(n)]`
-/

namespace A141937.P18255379448819079510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141937.P18255379448819079510

namespace A141937

/-- `∩[A045414(n+1), A312935(n)]` -/
def P18255379448819079510.Spec : Prop :=
  ∀ n, (P18255379448819079510.a n : ℤ) = A141937 (n + 1)

end A141937

/-!
# A141938: Primes congruent to 14 mod 25.

The programs for A141938, the canonical program `A141938.P12111399359062417829` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141938 has offset 1).

The definition of A141938 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141938.anchor (n : ℕ) (hn : 1 ≤ n) : A141938 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({14} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141938`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141938.P12111399359062417829

`∪[A244777(n+1), A268858(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141938

/-- `∪[A244777(n+1), A268858(n+1)]` -/
def P12111399359062417829.Spec : Prop :=
  ∀ n, (P12111399359062417829.a n : ℤ) = A141938 (n + 1)

theorem P12111399359062417829.correct : P12111399359062417829.Spec := by
  intro n
  simp only [A141938, Nat.add_sub_cancel]

end A141938

/-! ## A141938.P7675338828023445664

`p?[50*n-11]`
-/

namespace A141938.P7675338828023445664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (50 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141938.P7675338828023445664

namespace A141938

/-- `p?[50*n-11]` -/
def P7675338828023445664.Spec : Prop :=
  ∀ n, P7675338828023445664.a n = A141938 (n + 1)

end A141938

/-! ## A141938.P1478235515380321446

`or(1, p?[25*n+14])`
-/

namespace A141938.P1478235515380321446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141938.P1478235515380321446

namespace A141938

/-- `or(1, p?[25*n+14])` -/
def P1478235515380321446.Spec : Prop :=
  ∀ n, (P1478235515380321446.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P11604327366476954781

`A000007(p?[A022329(n+1)])+p?[25*n+14]`
-/

namespace A141938.P11604327366476954781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A141938.P11604327366476954781

namespace A141938

/-- `A000007(p?[A022329(n+1)])+p?[25*n+14]` -/
def P11604327366476954781.Spec : Prop :=
  ∀ n, P11604327366476954781.a n = A141938 (n + 1)

end A141938

/-! ## A141938.P17267823454595420344

`A000007(p?[A022328(n+1)])+p?[25*n+14]`
-/

namespace A141938.P17267823454595420344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A141938.P17267823454595420344

namespace A141938

/-- `A000007(p?[A022328(n+1)])+p?[25*n+14]` -/
def P17267823454595420344.Spec : Prop :=
  ∀ n, P17267823454595420344.a n = A141938 (n + 1)

end A141938

/-! ## A141938.P15305686880166776984

`∩[A030433(n+1), A242181(n+1)]`
-/

namespace A141938.P15305686880166776984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P15305686880166776984

namespace A141938

/-- `∩[A030433(n+1), A242181(n+1)]` -/
def P15305686880166776984.Spec : Prop :=
  ∀ n, (P15305686880166776984.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P18374566053979351057

`p?[A242181(n+1)]%A242146(n+2)`
-/

namespace A141938.P18374566053979351057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A242146 (n + 2))

end

end A141938.P18374566053979351057

namespace A141938

/-- `p?[A242181(n+1)]%A242146(n+2)` -/
def P18374566053979351057.Spec : Prop :=
  ∀ n, P18374566053979351057.a n = A141938 (n + 1)

end A141938

/-! ## A141938.P5993182424696905021

`∩[A045457(n+1), A242181(n+1)]`
-/

namespace A141938.P5993182424696905021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P5993182424696905021

namespace A141938

/-- `∩[A045457(n+1), A242181(n+1)]` -/
def P5993182424696905021.Spec : Prop :=
  ∀ n, (P5993182424696905021.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P13634033075546577008

`∩[A113017(n+1), A242181(n+1)]`
-/

namespace A141938.P13634033075546577008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P13634033075546577008

namespace A141938

/-- `∩[A113017(n+1), A242181(n+1)]` -/
def P13634033075546577008.Spec : Prop :=
  ∀ n, (P13634033075546577008.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P6385382162682346790

`∩[A030433(n+1), A159754(n+1)-2]`
-/

namespace A141938.P6385382162682346790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P6385382162682346790

namespace A141938

/-- `∩[A030433(n+1), A159754(n+1)-2]` -/
def P6385382162682346790.Spec : Prop :=
  ∀ n, (P6385382162682346790.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P520566907444397947

`∩[A045457(n+1), A159754(n+1)-2]`
-/

namespace A141938.P520566907444397947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P520566907444397947

namespace A141938

/-- `∩[A045457(n+1), A159754(n+1)-2]` -/
def P520566907444397947.Spec : Prop :=
  ∀ n, (P520566907444397947.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P14022278396636507732

`∩[A038872(n+1), A242181(n+1)]`
-/

namespace A141938.P14022278396636507732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P14022278396636507732

namespace A141938

/-- `∩[A038872(n+1), A242181(n+1)]` -/
def P14022278396636507732.Spec : Prop :=
  ∀ n, (P14022278396636507732.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P2444765184288322506

`∩[A045468(n+1), A242181(n+1)]`
-/

namespace A141938.P2444765184288322506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P2444765184288322506

namespace A141938

/-- `∩[A045468(n+1), A242181(n+1)]` -/
def P2444765184288322506.Spec : Prop :=
  ∀ n, (P2444765184288322506.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P8733656905553173062

`∩[A064739(n+1), A242181(n+1)]`
-/

namespace A141938.P8733656905553173062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P8733656905553173062

namespace A141938

/-- `∩[A064739(n+1), A242181(n+1)]` -/
def P8733656905553173062.Spec : Prop :=
  ∀ n, (P8733656905553173062.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P17978361068670473273

`∩[A106093(n+1), A242181(n+1)]`
-/

namespace A141938.P17978361068670473273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P17978361068670473273

namespace A141938

/-- `∩[A106093(n+1), A242181(n+1)]` -/
def P17978361068670473273.Spec : Prop :=
  ∀ n, (P17978361068670473273.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P13381294600604053331

`∩[A045356(n+1), A242181(n+1)]`
-/

namespace A141938.P13381294600604053331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P13381294600604053331

namespace A141938

/-- `∩[A045356(n+1), A242181(n+1)]` -/
def P13381294600604053331.Spec : Prop :=
  ∀ n, (P13381294600604053331.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P2142091913038806138

`∩[A045378(n+1), A242181(n+1)]`
-/

namespace A141938.P2142091913038806138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P2142091913038806138

namespace A141938

/-- `∩[A045378(n+1), A242181(n+1)]` -/
def P2142091913038806138.Spec : Prop :=
  ∀ n, (P2142091913038806138.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P14401581616585231610

`∩[A045413(n+1), A242181(n+1)]`
-/

namespace A141938.P14401581616585231610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P14401581616585231610

namespace A141938

/-- `∩[A045413(n+1), A242181(n+1)]` -/
def P14401581616585231610.Spec : Prop :=
  ∀ n, (P14401581616585231610.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P9017149253057501990

`∩[A045435(n+1), A242181(n+1)]`
-/

namespace A141938.P9017149253057501990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P9017149253057501990

namespace A141938

/-- `∩[A045435(n+1), A242181(n+1)]` -/
def P9017149253057501990.Spec : Prop :=
  ∀ n, (P9017149253057501990.a n : ℤ) = A141938 (n + 1)

end A141938

/-! ## A141938.P16295695876398476474

`∩[A076518(n+1), A242181(n+1)]`
-/

namespace A141938.P16295695876398476474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P16295695876398476474

namespace A141938

/-- `∩[A076518(n+1), A242181(n+1)]` -/
def P16295695876398476474.Spec : Prop :=
  ∀ n, (P16295695876398476474.a n : ℤ) = A141938 (n + 1)

end A141938

/-!
# A141939: Primes congruent to 16 mod 25.

The programs for A141939, the canonical program `A141939.P16283272955693447126` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141939 has offset 1).

The definition of A141939 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141939.anchor (n : ℕ) (hn : 1 ≤ n) : A141939 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 16) (n - 1) : ℤ)` in `Proof.A141.A141939`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141939.P16283272955693447126

`p?[50*n-9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141939

/-- `p?[50*n-9]` -/
def P16283272955693447126.Spec : Prop :=
  ∀ n, P16283272955693447126.a n = A141939 (n + 1)

theorem P16283272955693447126.correct : P16283272955693447126.Spec := by
  intro n
  simp only [A141939, Nat.add_sub_cancel]

end A141939

/-! ## A141939.P12958841277544621191

`A000027(p?[A159754(2*(n+1))])`
-/

namespace A141939.P12958841277544621191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141939.P12958841277544621191

namespace A141939

/-- `A000027(p?[A159754(2*(n+1))])` -/
def P12958841277544621191.Spec : Prop :=
  ∀ n, P12958841277544621191.a n = A141939 (n + 1)

end A141939

/-! ## A141939.P17255121592971603433

`∩[A030430(n+1), A159754(n+1)]`
-/

namespace A141939.P17255121592971603433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P17255121592971603433

namespace A141939

/-- `∩[A030430(n+1), A159754(n+1)]` -/
def P17255121592971603433.Spec : Prop :=
  ∀ n, (P17255121592971603433.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P1514794479333644845

`∩[A045453(n+1), A159754(n+1)]`
-/

namespace A141939.P1514794479333644845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P1514794479333644845

namespace A141939

/-- `∩[A045453(n+1), A159754(n+1)]` -/
def P1514794479333644845.Spec : Prop :=
  ∀ n, (P1514794479333644845.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P4923482662108923236

`p?[A159754(2*(n+1))]*A000034(2*n)`
-/

namespace A141939.P4923482662108923236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A141939.P4923482662108923236

namespace A141939

/-- `p?[A159754(2*(n+1))]*A000034(2*n)` -/
def P4923482662108923236.Spec : Prop :=
  ∀ n, P4923482662108923236.a n = A141939 (n + 1)

end A141939

/-! ## A141939.P9217428693305173705

`∩[A038872(n+1), A242181(n+1)+2]`
-/

namespace A141939.P9217428693305173705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P9217428693305173705

namespace A141939

/-- `∩[A038872(n+1), A242181(n+1)+2]` -/
def P9217428693305173705.Spec : Prop :=
  ∀ n, (P9217428693305173705.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P2166852222683144298

`∩[A045468(n+1), A242181(n+1)+2]`
-/

namespace A141939.P2166852222683144298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P2166852222683144298

namespace A141939

/-- `∩[A045468(n+1), A242181(n+1)+2]` -/
def P2166852222683144298.Spec : Prop :=
  ∀ n, (P2166852222683144298.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P13684901728460836250

`∩[A064739(n+1), A242181(n+1)+2]`
-/

namespace A141939.P13684901728460836250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P13684901728460836250

namespace A141939

/-- `∩[A064739(n+1), A242181(n+1)+2]` -/
def P13684901728460836250.Spec : Prop :=
  ∀ n, (P13684901728460836250.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P12745347707235923288

`∩[A045407(n+1), A159754(n+1)]`
-/

namespace A141939.P12745347707235923288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P12745347707235923288

namespace A141939

/-- `∩[A045407(n+1), A159754(n+1)]` -/
def P12745347707235923288.Spec : Prop :=
  ∀ n, (P12745347707235923288.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P2632579549233573284

`∩[A045429(n+1), A159754(n+1)]`
-/

namespace A141939.P2632579549233573284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P2632579549233573284

namespace A141939

/-- `∩[A045429(n+1), A159754(n+1)]` -/
def P2632579549233573284.Spec : Prop :=
  ∀ n, (P2632579549233573284.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P15081072428032127539

`∩[A076518(n+1), A242181(n+1)+2]`
-/

namespace A141939.P15081072428032127539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P15081072428032127539

namespace A141939

/-- `∩[A076518(n+1), A242181(n+1)+2]` -/
def P15081072428032127539.Spec : Prop :=
  ∀ n, (P15081072428032127539.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P1920402523103453557

`∩[A045429(n+1), A159254(n+1)-2]`
-/

namespace A141939.P1920402523103453557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P1920402523103453557

namespace A141939

/-- `∩[A045429(n+1), A159254(n+1)-2]` -/
def P1920402523103453557.Spec : Prop :=
  ∀ n, (P1920402523103453557.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P17495534508557071350

`∩[A045407(n+2), A159254(n+2)-2]`
-/

namespace A141939.P17495534508557071350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P17495534508557071350

namespace A141939

/-- `∩[A045407(n+2), A159254(n+2)-2]` -/
def P17495534508557071350.Spec : Prop :=
  ∀ n, (P17495534508557071350.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P7493952925189304009

`∩[A045349(n+1), A159754(n+1)]`
-/

namespace A141939.P7493952925189304009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P7493952925189304009

namespace A141939

/-- `∩[A045349(n+1), A159754(n+1)]` -/
def P7493952925189304009.Spec : Prop :=
  ∀ n, (P7493952925189304009.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P3021433257638772550

`∩[A045372(n+1), A159754(n+1)]`
-/

namespace A141939.P3021433257638772550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P3021433257638772550

namespace A141939

/-- `∩[A045372(n+1), A159754(n+1)]` -/
def P3021433257638772550.Spec : Prop :=
  ∀ n, (P3021433257638772550.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P14398151165869959611

`∩[A045372(n+1), A159254(n+1)-2]`
-/

namespace A141939.P14398151165869959611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P14398151165869959611

namespace A141939

/-- `∩[A045372(n+1), A159254(n+1)-2]` -/
def P14398151165869959611.Spec : Prop :=
  ∀ n, (P14398151165869959611.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P3866080103038840957

`∩[A045349(n+2), A159254(n+2)-2]`
-/

namespace A141939.P3866080103038840957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P3866080103038840957

namespace A141939

/-- `∩[A045349(n+2), A159254(n+2)-2]` -/
def P3866080103038840957.Spec : Prop :=
  ∀ n, (P3866080103038840957.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P2084403324831265968

`∩[A242181(n+1)+2, A328896(n+1)]`
-/

namespace A141939.P2084403324831265968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P2084403324831265968

namespace A141939

/-- `∩[A242181(n+1)+2, A328896(n+1)]` -/
def P2084403324831265968.Spec : Prop :=
  ∀ n, (P2084403324831265968.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P14638572833508944189

`∩[A045371(n+1), A159254(n+1)-2]`
-/

namespace A141939.P14638572833508944189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P14638572833508944189

namespace A141939

/-- `∩[A045371(n+1), A159254(n+1)-2]` -/
def P14638572833508944189.Spec : Prop :=
  ∀ n, (P14638572833508944189.a n : ℤ) = A141939 (n + 1)

end A141939

/-! ## A141939.P11627882461721926485

`∩[A045428(n+1), A159254(n+1)-2]`
-/

namespace A141939.P11627882461721926485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141939.P11627882461721926485

namespace A141939

/-- `∩[A045428(n+1), A159254(n+1)-2]` -/
def P11627882461721926485.Spec : Prop :=
  ∀ n, (P11627882461721926485.a n : ℤ) = A141939 (n + 1)

end A141939

/-!
# A141940: Primes congruent to 17 mod 25.

The programs for A141940, the canonical program `A141940.P9481968464007872320` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141940 has offset 1).

The definition of A141940 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141940.anchor (n : ℕ) (hn : 1 ≤ n) : A141940 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({17} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141940`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141940.P9481968464007872320

`∪[A244764(n+1), A244773(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141940

/-- `∪[A244764(n+1), A244773(n+1)]` -/
def P9481968464007872320.Spec : Prop :=
  ∀ n, (P9481968464007872320.a n : ℤ) = A141940 (n + 1)

theorem P9481968464007872320.correct : P9481968464007872320.Spec := by
  intro n
  simp only [A141940, Nat.add_sub_cancel]

end A141940

/-! ## A141940.P12477679627586645242

`p?[25*n-8]`
-/

namespace A141940.P12477679627586645242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141940.P12477679627586645242

namespace A141940

/-- `p?[25*n-8]` -/
def P12477679627586645242.Spec : Prop :=
  ∀ n, P12477679627586645242.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P7592238182518887167

`or(1, p?[25*n+17])`
-/

namespace A141940.P7592238182518887167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141940.P7592238182518887167

namespace A141940

/-- `or(1, p?[25*n+17])` -/
def P7592238182518887167.Spec : Prop :=
  ∀ n, (P7592238182518887167.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P7478806666713029817

`∩[A030432(n+1), A156619(n+1)-1]`
-/

namespace A141940.P7478806666713029817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P7478806666713029817

namespace A141940

/-- `∩[A030432(n+1), A156619(n+1)-1]` -/
def P7478806666713029817.Spec : Prop :=
  ∀ n, (P7478806666713029817.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P3679594883727124623

`∩[A045356(n+1), A156619(n+1)-1]`
-/

namespace A141940.P3679594883727124623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P3679594883727124623

namespace A141940

/-- `∩[A045356(n+1), A156619(n+1)-1]` -/
def P3679594883727124623.Spec : Prop :=
  ∀ n, (P3679594883727124623.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P16456697744131834273

`∩[A045357(n+1), A156619(n+1)-1]`
-/

namespace A141940.P16456697744131834273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P16456697744131834273

namespace A141940

/-- `∩[A045357(n+1), A156619(n+1)-1]` -/
def P16456697744131834273.Spec : Prop :=
  ∀ n, (P16456697744131834273.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P4247944425367879145

`∩[A045378(n+1), A156619(n+1)-1]`
-/

namespace A141940.P4247944425367879145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P4247944425367879145

namespace A141940

/-- `∩[A045378(n+1), A156619(n+1)-1]` -/
def P4247944425367879145.Spec : Prop :=
  ∀ n, (P4247944425367879145.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P15349446036662693784

`∩[A045380(n+1), A156619(n+1)-1]`
-/

namespace A141940.P15349446036662693784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P15349446036662693784

namespace A141940

/-- `∩[A045380(n+1), A156619(n+1)-1]` -/
def P15349446036662693784.Spec : Prop :=
  ∀ n, (P15349446036662693784.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P16050222718570278326

`∩[A156619(2*(n+1))-1, A045348(n+2)]`
-/

namespace A141940.P16050222718570278326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P16050222718570278326

namespace A141940

/-- `∩[A156619(2*(n+1))-1, A045348(n+2)]` -/
def P16050222718570278326.Spec : Prop :=
  ∀ n, (P16050222718570278326.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P2328011422379541704

`∩[A156619(2*(n+1))-1, A045349(n+2)]`
-/

namespace A141940.P2328011422379541704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P2328011422379541704

namespace A141940

/-- `∩[A156619(2*(n+1))-1, A045349(n+2)]` -/
def P2328011422379541704.Spec : Prop :=
  ∀ n, (P2328011422379541704.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P8814738276590859196

`∩[A156619(2*(n+1))-1, A045372(n+2)]`
-/

namespace A141940.P8814738276590859196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P8814738276590859196

namespace A141940

/-- `∩[A156619(2*(n+1))-1, A045372(n+2)]` -/
def P8814738276590859196.Spec : Prop :=
  ∀ n, (P8814738276590859196.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P12020302399883188205

`∩[A017581(2*n+1)+n, A042993(n+2)]`
-/

namespace A141940.P12020302399883188205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P12020302399883188205

namespace A141940

/-- `∩[A017581(2*n+1)+n, A042993(n+2)]` -/
def P12020302399883188205.Spec : Prop :=
  ∀ n, (P12020302399883188205.a n : ℤ) = A141940 (n + 1)

end A141940

/-! ## A141940.P17997885551377501838

`record[A020639(25*(n+1)-8)]`
-/

namespace A141940.P17997885551377501838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * (n + 1) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141940.P17997885551377501838

namespace A141940

/-- `record[A020639(25*(n+1)-8)]` -/
def P17997885551377501838.Spec : Prop :=
  ∀ n, P17997885551377501838.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P15835086796587162917

`record[A006530(5*(10*n+3)+2)]`
-/

namespace A141940.P15835086796587162917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (10 * n + 3) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141940.P15835086796587162917

namespace A141940

/-- `record[A006530(5*(10*n+3)+2)]` -/
def P15835086796587162917.Spec : Prop :=
  ∀ n, P15835086796587162917.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P13624751073854571483

`A000265(p?[A053742(n)-8])`
-/

namespace A141940.P13624751073854571483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141940.P13624751073854571483

namespace A141940

/-- `A000265(p?[A053742(n)-8])` -/
def P13624751073854571483.Spec : Prop :=
  ∀ n, P13624751073854571483.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P8660704883843038791

`A007947(p?[A053742(n)-8])`
-/

namespace A141940.P8660704883843038791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141940.P8660704883843038791

namespace A141940

/-- `A007947(p?[A053742(n)-8])` -/
def P8660704883843038791.Spec : Prop :=
  ∀ n, P8660704883843038791.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P4024189643335094438

`filter[A214067(2*n+1), A185708(#)]`
-/

namespace A141940.P4024189643335094438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214067 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141940.P4024189643335094438

namespace A141940

/-- `filter[A214067(2*n+1), A185708(#)]` -/
def P4024189643335094438.Spec : Prop :=
  ∀ n, P4024189643335094438.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P1484043197459526454

`filter[A315690(n), A185708(#)]`
-/

namespace A141940.P1484043197459526454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141940.P1484043197459526454

namespace A141940

/-- `filter[A315690(n), A185708(#)]` -/
def P1484043197459526454.Spec : Prop :=
  ∀ n, P1484043197459526454.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P2813153804565806208

`filter[A315696(3*n), A185708(#)]`
-/

namespace A141940.P2813153804565806208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141940.P2813153804565806208

namespace A141940

/-- `filter[A315696(3*n), A185708(#)]` -/
def P2813153804565806208.Spec : Prop :=
  ∀ n, P2813153804565806208.a n = A141940 (n + 1)

end A141940

/-! ## A141940.P16846619239400524483

`∩[A030432(n+1), A315690(n)]`
-/

namespace A141940.P16846619239400524483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P16846619239400524483

namespace A141940

/-- `∩[A030432(n+1), A315690(n)]` -/
def P16846619239400524483.Spec : Prop :=
  ∀ n, (P16846619239400524483.a n : ℤ) = A141940 (n + 1)

end A141940

/-!
# A141941: Primes congruent to 18 mod 25.

The programs for A141941, the canonical program `A141941.P8398962657768228484` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141941 has offset 1).

The definition of A141941 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141941.anchor (n : ℕ) (hn : 1 ≤ n) : A141941 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 18) (n - 1) : ℤ)` in `Proof.A141.A141941`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141941.P8398962657768228484

`p?[5*5*n-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141941

/-- `p?[5*5*n-7]` -/
def P8398962657768228484.Spec : Prop :=
  ∀ n, P8398962657768228484.a n = A141941 (n + 1)

theorem P8398962657768228484.correct : P8398962657768228484.Spec := by
  intro n
  simp only [A141941, Nat.add_sub_cancel]

end A141941

/-! ## A141941.P11160011115737364026

`∩[A030431(n+1), A172469(n+1)]`
-/

namespace A141941.P11160011115737364026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P11160011115737364026

namespace A141941

/-- `∩[A030431(n+1), A172469(n+1)]` -/
def P11160011115737364026.Spec : Prop :=
  ∀ n, (P11160011115737364026.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P2320066697480727036

`∩[A172469(n+1), A256177(n+1)]`
-/

namespace A141941.P2320066697480727036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P2320066697480727036

namespace A141941

/-- `∩[A172469(n+1), A256177(n+1)]` -/
def P2320066697480727036.Spec : Prop :=
  ∀ n, (P2320066697480727036.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P9897228181709789137

`∩[A045414(n+1), A172469(n+1)]`
-/

namespace A141941.P9897228181709789137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P9897228181709789137

namespace A141941

/-- `∩[A045414(n+1), A172469(n+1)]` -/
def P9897228181709789137.Spec : Prop :=
  ∀ n, (P9897228181709789137.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P14832645476146285835

`∩[A030431(n+1), A159254(n+1)]`
-/

namespace A141941.P14832645476146285835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P14832645476146285835

namespace A141941

/-- `∩[A030431(n+1), A159254(n+1)]` -/
def P14832645476146285835.Spec : Prop :=
  ∀ n, (P14832645476146285835.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P7884334692786399500

`∩[A045414(n+1), A159254(n+1)]`
-/

namespace A141941.P7884334692786399500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P7884334692786399500

namespace A141941

/-- `∩[A045414(n+1), A159254(n+1)]` -/
def P7884334692786399500.Spec : Prop :=
  ∀ n, (P7884334692786399500.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P6269242712363842281

`∩[A159254(n+1), A256177(n+1)]`
-/

namespace A141941.P6269242712363842281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P6269242712363842281

namespace A141941

/-- `∩[A159254(n+1), A256177(n+1)]` -/
def P6269242712363842281.Spec : Prop :=
  ∀ n, (P6269242712363842281.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P6712477090307292144

`or(1, p?[A159754(n+1)+A020639(n+1)])`
-/

namespace A141941.P6712477090307292144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141941.P6712477090307292144

namespace A141941

/-- `or(1, p?[A159754(n+1)+A020639(n+1)])` -/
def P6712477090307292144.Spec : Prop :=
  ∀ n, P6712477090307292144.a n = A141941 (n + 1)

end A141941

/-! ## A141941.P6589445990256683277

`∩[A045429(n+1), A159254(n+1)]`
-/

namespace A141941.P6589445990256683277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P6589445990256683277

namespace A141941

/-- `∩[A045429(n+1), A159254(n+1)]` -/
def P6589445990256683277.Spec : Prop :=
  ∀ n, (P6589445990256683277.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P5811925777571960381

`∩[A045407(n+1), A159254(n+1)]`
-/

namespace A141941.P5811925777571960381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P5811925777571960381

namespace A141941

/-- `∩[A045407(n+1), A159254(n+1)]` -/
def P5811925777571960381.Spec : Prop :=
  ∀ n, (P5811925777571960381.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P7006352681075818437

`∩[A045413(n+1), A159254(n+1)]`
-/

namespace A141941.P7006352681075818437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P7006352681075818437

namespace A141941

/-- `∩[A045413(n+1), A159254(n+1)]` -/
def P7006352681075818437.Spec : Prop :=
  ∀ n, (P7006352681075818437.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P5500933715723253993

`∩[A045435(n+1), A159254(n+1)]`
-/

namespace A141941.P5500933715723253993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P5500933715723253993

namespace A141941

/-- `∩[A045435(n+1), A159254(n+1)]` -/
def P5500933715723253993.Spec : Prop :=
  ∀ n, (P5500933715723253993.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P6520761575170318020

`∩[A045413(n+1), A159754(n+1)+2]`
-/

namespace A141941.P6520761575170318020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P6520761575170318020

namespace A141941

/-- `∩[A045413(n+1), A159754(n+1)+2]` -/
def P6520761575170318020.Spec : Prop :=
  ∀ n, (P6520761575170318020.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P16495462543748553647

`∩[A045435(n+1), A159754(n+1)+2]`
-/

namespace A141941.P16495462543748553647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P16495462543748553647

namespace A141941

/-- `∩[A045435(n+1), A159754(n+1)+2]` -/
def P16495462543748553647.Spec : Prop :=
  ∀ n, (P16495462543748553647.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P11229259904896261810

`∩[A004617(n+1), A172469(n+1)]`
-/

namespace A141941.P11229259904896261810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P11229259904896261810

namespace A141941

/-- `∩[A004617(n+1), A172469(n+1)]` -/
def P11229259904896261810.Spec : Prop :=
  ∀ n, (P11229259904896261810.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P4302440649647444318

`∩[A045405(n+1), A159254(n+1)]`
-/

namespace A141941.P4302440649647444318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P4302440649647444318

namespace A141941

/-- `∩[A045405(n+1), A159254(n+1)]` -/
def P4302440649647444318.Spec : Prop :=
  ∀ n, (P4302440649647444318.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P12418701183272974456

`∩[A045428(n+1), A159254(n+1)]`
-/

namespace A141941.P12418701183272974456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P12418701183272974456

namespace A141941

/-- `∩[A045428(n+1), A159254(n+1)]` -/
def P12418701183272974456.Spec : Prop :=
  ∀ n, (P12418701183272974456.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P465892905425401261

`∩[A042991(n+1), A159754(n+1)+2]`
-/

namespace A141941.P465892905425401261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P465892905425401261

namespace A141941

/-- `∩[A042991(n+1), A159754(n+1)+2]` -/
def P465892905425401261.Spec : Prop :=
  ∀ n, (P465892905425401261.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P11049743928662176197

`∩[A045327(n+1), A159754(n+1)+2]`
-/

namespace A141941.P11049743928662176197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P11049743928662176197

namespace A141941

/-- `∩[A045327(n+1), A159754(n+1)+2]` -/
def P11049743928662176197.Spec : Prop :=
  ∀ n, (P11049743928662176197.a n : ℤ) = A141941 (n + 1)

end A141941

/-! ## A141941.P9834363698816596765

`∩[A030431(n+1), A156619(n+1)]`
-/

namespace A141941.P9834363698816596765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141941.P9834363698816596765

namespace A141941

/-- `∩[A030431(n+1), A156619(n+1)]` -/
def P9834363698816596765.Spec : Prop :=
  ∀ n, (P9834363698816596765.a n : ℤ) = A141941 (n + 1)

end A141941

/-!
# A141942: Primes congruent to 19 mod 25.

The programs for A141942, the canonical program `A141942.P10623980614628892939` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141942 has offset 1).

The definition of A141942 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141942.anchor (n : ℕ) (hn : 1 ≤ n) : A141942 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 19) (n - 1) : ℤ)` in `Proof.A141.A141942`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141942.P10623980614628892939

`p?[25*n-6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141942

/-- `p?[25*n-6]` -/
def P10623980614628892939.Spec : Prop :=
  ∀ n, P10623980614628892939.a n = A141942 (n + 1)

theorem P10623980614628892939.correct : P10623980614628892939.Spec := by
  intro n
  simp only [A141942, Nat.add_sub_cancel]

end A141942

/-! ## A141942.P11290963299840222550

`∩[A045348(n+1), A156619(n+1)+1]`
-/

namespace A141942.P11290963299840222550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P11290963299840222550

namespace A141942

/-- `∩[A045348(n+1), A156619(n+1)+1]` -/
def P11290963299840222550.Spec : Prop :=
  ∀ n, (P11290963299840222550.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P12781434102625400706

`∩[A045356(n+1), A156619(n+1)+1]`
-/

namespace A141942.P12781434102625400706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P12781434102625400706

namespace A141942

/-- `∩[A045356(n+1), A156619(n+1)+1]` -/
def P12781434102625400706.Spec : Prop :=
  ∀ n, (P12781434102625400706.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P5404597691820686548

`∩[A045378(n+1), A156619(n+1)+1]`
-/

namespace A141942.P5404597691820686548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P5404597691820686548

namespace A141942

/-- `∩[A045378(n+1), A156619(n+1)+1]` -/
def P5404597691820686548.Spec : Prop :=
  ∀ n, (P5404597691820686548.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P15869225102593004293

`∩[A156619(2*(n+1))+1, A045405(n+2)]`
-/

namespace A141942.P15869225102593004293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P15869225102593004293

namespace A141942

/-- `∩[A156619(2*(n+1))+1, A045405(n+2)]` -/
def P15869225102593004293.Spec : Prop :=
  ∀ n, (P15869225102593004293.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P6377696597330373861

`∩[A156619(2*(n+1))+1, A045413(n+2)]`
-/

namespace A141942.P6377696597330373861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P6377696597330373861

namespace A141942

/-- `∩[A156619(2*(n+1))+1, A045413(n+2)]` -/
def P6377696597330373861.Spec : Prop :=
  ∀ n, (P6377696597330373861.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P4879479025824368007

`∩[A156619(2*(n+1))+1, A045428(n+2)]`
-/

namespace A141942.P4879479025824368007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P4879479025824368007

namespace A141942

/-- `∩[A156619(2*(n+1))+1, A045428(n+2)]` -/
def P4879479025824368007.Spec : Prop :=
  ∀ n, (P4879479025824368007.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P13694498943238370000

`∩[A156619(2*(n+1))+1, A045435(n+2)]`
-/

namespace A141942.P13694498943238370000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P13694498943238370000

namespace A141942

/-- `∩[A156619(2*(n+1))+1, A045435(n+2)]` -/
def P13694498943238370000.Spec : Prop :=
  ∀ n, (P13694498943238370000.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P14887510439268729641

`∩[A017605(2*n+1)+n, A038872(n+2)]`
-/

namespace A141942.P14887510439268729641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P14887510439268729641

namespace A141942

/-- `∩[A017605(2*n+1)+n, A038872(n+2)]` -/
def P14887510439268729641.Spec : Prop :=
  ∀ n, (P14887510439268729641.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P10769276324496748808

`∩[A017605(2*n+1)+n, A045468(n+2)]`
-/

namespace A141942.P10769276324496748808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P10769276324496748808

namespace A141942

/-- `∩[A017605(2*n+1)+n, A045468(n+2)]` -/
def P10769276324496748808.Spec : Prop :=
  ∀ n, (P10769276324496748808.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P3237841821454543946

`∩[A017605(2*n+1)+n, A076518(n+2)]`
-/

namespace A141942.P3237841821454543946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P3237841821454543946

namespace A141942

/-- `∩[A017605(2*n+1)+n, A076518(n+2)]` -/
def P3237841821454543946.Spec : Prop :=
  ∀ n, (P3237841821454543946.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P7538508420430106452

`∩[A000040(n+1), A053741(n)-1]`
-/

namespace A141942.P7538508420430106452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P7538508420430106452

namespace A141942

/-- `∩[A000040(n+1), A053741(n)-1]` -/
def P7538508420430106452.Spec : Prop :=
  ∀ n, (P7538508420430106452.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P2906288962592197098

`record[A020639(25*(n+1)-6)]`
-/

namespace A141942.P2906288962592197098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141942.P2906288962592197098

namespace A141942

/-- `record[A020639(25*(n+1)-6)]` -/
def P2906288962592197098.Spec : Prop :=
  ∀ n, P2906288962592197098.a n = A141942 (n + 1)

end A141942

/-! ## A141942.P14398460614546003321

`∩[A030433(n+1), A056021(n+1)+1]`
-/

namespace A141942.P14398460614546003321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P14398460614546003321

namespace A141942

/-- `∩[A030433(n+1), A056021(n+1)+1]` -/
def P14398460614546003321.Spec : Prop :=
  ∀ n, (P14398460614546003321.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P9643119148270397623

`∩[A045457(n+1), A056021(n+1)+1]`
-/

namespace A141942.P9643119148270397623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P9643119148270397623

namespace A141942

/-- `∩[A045457(n+1), A056021(n+1)+1]` -/
def P9643119148270397623.Spec : Prop :=
  ∀ n, (P9643119148270397623.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P4217303125658646587

`∩[A045348(n+1), A315690(n)+2]`
-/

namespace A141942.P4217303125658646587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P4217303125658646587

namespace A141942

/-- `∩[A045348(n+1), A315690(n)+2]` -/
def P4217303125658646587.Spec : Prop :=
  ∀ n, (P4217303125658646587.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P9629952125437734863

`∩[A045356(n+1), A315690(n)+2]`
-/

namespace A141942.P9629952125437734863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P9629952125437734863

namespace A141942

/-- `∩[A045356(n+1), A315690(n)+2]` -/
def P9629952125437734863.Spec : Prop :=
  ∀ n, (P9629952125437734863.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P1143390318705654153

`∩[A315690(n+1)+2, A045405(n+2)]`
-/

namespace A141942.P1143390318705654153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P1143390318705654153

namespace A141942

/-- `∩[A315690(n+1)+2, A045405(n+2)]` -/
def P1143390318705654153.Spec : Prop :=
  ∀ n, (P1143390318705654153.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P5605716925121338622

`∩[A315690(n+1)+2, A045413(n+2)]`
-/

namespace A141942.P5605716925121338622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P5605716925121338622

namespace A141942

/-- `∩[A315690(n+1)+2, A045413(n+2)]` -/
def P5605716925121338622.Spec : Prop :=
  ∀ n, (P5605716925121338622.a n : ℤ) = A141942 (n + 1)

end A141942

/-! ## A141942.P1518926801948998240

`∩[A315690(n+1)+2, A045428(n+2)]`
-/

namespace A141942.P1518926801948998240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141942.P1518926801948998240

namespace A141942

/-- `∩[A315690(n+1)+2, A045428(n+2)]` -/
def P1518926801948998240.Spec : Prop :=
  ∀ n, (P1518926801948998240.a n : ℤ) = A141942 (n + 1)

end A141942

/-!
# A141943: Primes congruent to 21 mod 25.

The programs for A141943, the canonical program `A141943.P15457058075200521897` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141943 has offset 1).

The definition of A141943 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141943.anchor (n : ℕ) (hn : 1 ≤ n) : A141943 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({21} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141943`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141943.P15457058075200521897

`∪[A167441(n+1), A268859(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141943

/-- `∪[A167441(n+1), A268859(n+1)]` -/
def P15457058075200521897.Spec : Prop :=
  ∀ n, (P15457058075200521897.a n : ℤ) = A141943 (n + 1)

theorem P15457058075200521897.correct : P15457058075200521897.Spec := by
  intro n
  simp only [A141943, Nat.add_sub_cancel]

end A141943

/-! ## A141943.P9074495153645114727

`p?[25*n-4]`
-/

namespace A141943.P9074495153645114727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141943.P9074495153645114727

namespace A141943

/-- `p?[25*n-4]` -/
def P9074495153645114727.Spec : Prop :=
  ∀ n, P9074495153645114727.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P15297849057909174965

`∩[A306285(2*(n+1))-n, A070303(n+2)]`
-/

namespace A141943.P15297849057909174965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P15297849057909174965

namespace A141943

/-- `∩[A306285(2*(n+1))-n, A070303(n+2)]` -/
def P15297849057909174965.Spec : Prop :=
  ∀ n, (P15297849057909174965.a n : ℤ) = A141943 (n + 1)

end A141943

/-! ## A141943.P2194366049125701832

`∩[A000040(n+1), A053741(n)+1]`
-/

namespace A141943.P2194366049125701832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P2194366049125701832

namespace A141943

/-- `∩[A000040(n+1), A053741(n)+1]` -/
def P2194366049125701832.Spec : Prop :=
  ∀ n, (P2194366049125701832.a n : ℤ) = A141943 (n + 1)

end A141943

/-! ## A141943.P16389472548703364285

`∩[A306285(2*(n+1))-n, A000040(n+2)]`
-/

namespace A141943.P16389472548703364285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P16389472548703364285

namespace A141943

/-- `∩[A306285(2*(n+1))-n, A000040(n+2)]` -/
def P16389472548703364285.Spec : Prop :=
  ∀ n, (P16389472548703364285.a n : ℤ) = A141943 (n + 1)

end A141943

/-! ## A141943.P1834447161687217925

`∩[A306285(2*(n+1))-n, A004139(n+2)]`
-/

namespace A141943.P1834447161687217925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P1834447161687217925

namespace A141943

/-- `∩[A306285(2*(n+1))-n, A004139(n+2)]` -/
def P1834447161687217925.Spec : Prop :=
  ∀ n, (P1834447161687217925.a n : ℤ) = A141943 (n + 1)

end A141943

/-! ## A141943.P9856575860832022626

`record[A006530(A053741(n+1)+1)]`
-/

namespace A141943.P9856575860832022626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141943.P9856575860832022626

namespace A141943

/-- `record[A006530(A053741(n+1)+1)]` -/
def P9856575860832022626.Spec : Prop :=
  ∀ n, P9856575860832022626.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P13969936561897819247

`record[A020639(A053741(n+1)+1)]`
-/

namespace A141943.P13969936561897819247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141943.P13969936561897819247

namespace A141943

/-- `record[A020639(A053741(n+1)+1)]` -/
def P13969936561897819247.Spec : Prop :=
  ∀ n, P13969936561897819247.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P2007123831110995540

`or(1, p?[A187715(10*n+5)])`
-/

namespace A141943.P2007123831110995540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (10 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141943.P2007123831110995540

namespace A141943

/-- `or(1, p?[A187715(10*n+5)])` -/
def P2007123831110995540.Spec : Prop :=
  ∀ n, P2007123831110995540.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P16745909041931821290

`filter[A133895(n), A185705(#)]`
-/

namespace A141943.P16745909041931821290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A141943.P16745909041931821290

namespace A141943

/-- `filter[A133895(n), A185705(#)]` -/
def P16745909041931821290.Spec : Prop :=
  ∀ n, P16745909041931821290.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P6769058173485252007

`filter[A310508(n), A185705(#)]`
-/

namespace A141943.P6769058173485252007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A141943.P6769058173485252007

namespace A141943

/-- `filter[A310508(n), A185705(#)]` -/
def P6769058173485252007.Spec : Prop :=
  ∀ n, P6769058173485252007.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P11798711505558275907

`∩[A030430(n+1), A133895(n)]`
-/

namespace A141943.P11798711505558275907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P11798711505558275907

namespace A141943

/-- `∩[A030430(n+1), A133895(n)]` -/
def P11798711505558275907.Spec : Prop :=
  ∀ n, (P11798711505558275907.a n : ℤ) = A141943 (n + 1)

end A141943

/-! ## A141943.P12532757650354678920

`∩[A045453(n+1), A133895(n)]`
-/

namespace A141943.P12532757650354678920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P12532757650354678920

namespace A141943

/-- `∩[A045453(n+1), A133895(n)]` -/
def P12532757650354678920.Spec : Prop :=
  ∀ n, (P12532757650354678920.a n : ℤ) = A141943 (n + 1)

end A141943

/-! ## A141943.P3246368716313762641

`record[A006530(A102438(n+1)-2)]`
-/

namespace A141943.P3246368716313762641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102438 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141943.P3246368716313762641

namespace A141943

/-- `record[A006530(A102438(n+1)-2)]` -/
def P3246368716313762641.Spec : Prop :=
  ∀ n, P3246368716313762641.a n = A141943 (n + 1)

end A141943

/-! ## A141943.P6036763249303545795

`∩[A047209(5*n+4), A030430(n+2)]`
-/

namespace A141943.P6036763249303545795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (5 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P6036763249303545795

namespace A141943

/-- `∩[A047209(5*n+4), A030430(n+2)]` -/
def P6036763249303545795.Spec : Prop :=
  ∀ n, (P6036763249303545795.a n : ℤ) = A141943 (n + 1)

end A141943

/-!
# A141944: Primes congruent to 22 mod 25.

The programs for A141944, the canonical program `A141944.P14622568476246597123` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141944 has offset 1).

The definition of A141944 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141944.anchor (n : ℕ) (hn : 1 ≤ n) : A141944 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({22} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141944`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141944.P14622568476246597123

`∪[A244770(n+1), A244778(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141944

/-- `∪[A244770(n+1), A244778(n+1)]` -/
def P14622568476246597123.Spec : Prop :=
  ∀ n, (P14622568476246597123.a n : ℤ) = A141944 (n + 1)

theorem P14622568476246597123.correct : P14622568476246597123.Spec := by
  intro n
  simp only [A141944, Nat.add_sub_cancel]

end A141944

/-! ## A141944.P11805158638813012588

`p?[25*n-3]`
-/

namespace A141944.P11805158638813012588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141944.P11805158638813012588

namespace A141944

/-- `p?[25*n-3]` -/
def P11805158638813012588.Spec : Prop :=
  ∀ n, P11805158638813012588.a n = A141944 (n + 1)

end A141944

/-! ## A141944.P14911306378849299149

`record[p?[A072972(n)]]`
-/

namespace A141944.P14911306378849299149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072972 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141944.P14911306378849299149

namespace A141944

/-- `record[p?[A072972(n)]]` -/
def P14911306378849299149.Spec : Prop :=
  ∀ n, P14911306378849299149.a n = A141944 (n + 1)

end A141944

/-! ## A141944.P17626302145409687980

`record[A006530(25*(n+2)-3)]`
-/

namespace A141944.P17626302145409687980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (25 * (n + 2) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141944.P17626302145409687980

namespace A141944

/-- `record[A006530(25*(n+2)-3)]` -/
def P17626302145409687980.Spec : Prop :=
  ∀ n, P17626302145409687980.a n = A141944 (n + 1)

end A141944

/-! ## A141944.P4406935506879219088

`record[A020639(25*(n+2)-3)]`
-/

namespace A141944.P4406935506879219088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * (n + 2) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141944.P4406935506879219088

namespace A141944

/-- `record[A020639(25*(n+2)-3)]` -/
def P4406935506879219088.Spec : Prop :=
  ∀ n, P4406935506879219088.a n = A141944 (n + 1)

end A141944

/-! ## A141944.P1771378302943018182

`∩[A056021(2*(n+1))-2, A004139(n+2)]`
-/

namespace A141944.P1771378302943018182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P1771378302943018182

namespace A141944

/-- `∩[A056021(2*(n+1))-2, A004139(n+2)]` -/
def P1771378302943018182.Spec : Prop :=
  ∀ n, (P1771378302943018182.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P10023371166899861120

`∩[A056021(2*(n+1))-2, A045319(n+2)]`
-/

namespace A141944.P10023371166899861120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P10023371166899861120

namespace A141944

/-- `∩[A056021(2*(n+1))-2, A045319(n+2)]` -/
def P10023371166899861120.Spec : Prop :=
  ∀ n, (P10023371166899861120.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P10821940484633882083

`∩[A056021(2*(n+1))-2, A083249(n+2)]`
-/

namespace A141944.P10821940484633882083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P10821940484633882083

namespace A141944

/-- `∩[A056021(2*(n+1))-2, A083249(n+2)]` -/
def P10821940484633882083.Spec : Prop :=
  ∀ n, (P10821940484633882083.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P12718220058576034728

`filter[A133895(n), A185708(#)]`
-/

namespace A141944.P12718220058576034728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141944.P12718220058576034728

namespace A141944

/-- `filter[A133895(n), A185708(#)]` -/
def P12718220058576034728.Spec : Prop :=
  ∀ n, P12718220058576034728.a n = A141944 (n + 1)

end A141944

/-! ## A141944.P10170048905869589742

`∩[A030432(n+1), A133895(n)]`
-/

namespace A141944.P10170048905869589742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P10170048905869589742

namespace A141944

/-- `∩[A030432(n+1), A133895(n)]` -/
def P10170048905869589742.Spec : Prop :=
  ∀ n, (P10170048905869589742.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P12571593742200119938

`∩[A045357(n+1), A133895(n)]`
-/

namespace A141944.P12571593742200119938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P12571593742200119938

namespace A141944

/-- `∩[A045357(n+1), A133895(n)]` -/
def P12571593742200119938.Spec : Prop :=
  ∀ n, (P12571593742200119938.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P10903620875514677228

`∩[A045380(n+1), A133895(n)]`
-/

namespace A141944.P10903620875514677228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P10903620875514677228

namespace A141944

/-- `∩[A045380(n+1), A133895(n)]` -/
def P10903620875514677228.Spec : Prop :=
  ∀ n, (P10903620875514677228.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P13272832644630202482

`or(1, p?[A016897(A016897(n))-2])`
-/

namespace A141944.P13272832644630202482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A016897 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141944.P13272832644630202482

namespace A141944

/-- `or(1, p?[A016897(A016897(n))-2])` -/
def P13272832644630202482.Spec : Prop :=
  ∀ n, P13272832644630202482.a n = A141944 (n + 1)

end A141944

/-! ## A141944.P11397743965336294380

`∩[A003631(n+1), A016873(A016873(n)+2)]`
-/

namespace A141944.P11397743965336294380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A016873 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P11397743965336294380

namespace A141944

/-- `∩[A003631(n+1), A016873(A016873(n)+2)]` -/
def P11397743965336294380.Spec : Prop :=
  ∀ n, (P11397743965336294380.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P12067052560123644718

`∩[A030432(n+1), A312935(n)+1]`
-/

namespace A141944.P12067052560123644718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P12067052560123644718

namespace A141944

/-- `∩[A030432(n+1), A312935(n)+1]` -/
def P12067052560123644718.Spec : Prop :=
  ∀ n, (P12067052560123644718.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P12677009028064133858

`∩[A312935(n+1)+1, A045380(n+2)]`
-/

namespace A141944.P12677009028064133858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P12677009028064133858

namespace A141944

/-- `∩[A312935(n+1)+1, A045380(n+2)]` -/
def P12677009028064133858.Spec : Prop :=
  ∀ n, (P12677009028064133858.a n : ℤ) = A141944 (n + 1)

end A141944

/-! ## A141944.P5054641683712286843

`filter[A376509(2*(n+1)), A185708(#)]`
-/

namespace A141944.P5054641683712286843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376509 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A141944.P5054641683712286843

namespace A141944

/-- `filter[A376509(2*(n+1)), A185708(#)]` -/
def P5054641683712286843.Spec : Prop :=
  ∀ n, P5054641683712286843.a n = A141944 (n + 1)

end A141944

/-!
# A141945: Primes congruent to 23 mod 25.

The programs for A141945, the canonical program `A141945.P2046616628177584808` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141945 has offset 1).

The definition of A141945 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141945.anchor (n : ℕ) (hn : 1 ≤ n) : A141945 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({23} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141945`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141945.P2046616628177584808

`∪[A244766(n+1), A244774(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141945

/-- `∪[A244766(n+1), A244774(n+1)]` -/
def P2046616628177584808.Spec : Prop :=
  ∀ n, (P2046616628177584808.a n : ℤ) = A141945 (n + 1)

theorem P2046616628177584808.correct : P2046616628177584808.Spec := by
  intro n
  simp only [A141945, Nat.add_sub_cancel]

end A141945

/-! ## A141945.P4552643726422228063

`p?[25*n-2]`
-/

namespace A141945.P4552643726422228063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141945.P4552643726422228063

namespace A141945

/-- `p?[25*n-2]` -/
def P4552643726422228063.Spec : Prop :=
  ∀ n, P4552643726422228063.a n = A141945 (n + 1)

end A141945

/-! ## A141945.P5094725281635072364

`or(1, p?[25*n+23])`
-/

namespace A141945.P5094725281635072364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141945.P5094725281635072364

namespace A141945

/-- `or(1, p?[25*n+23])` -/
def P5094725281635072364.Spec : Prop :=
  ∀ n, (P5094725281635072364.a n : ℤ) = A141945 (n + 1)

end A141945

/-! ## A141945.P17012417328423024118

`∩[A017653(2*n+1)+n, A004139(n+2)]`
-/

namespace A141945.P17012417328423024118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P17012417328423024118

namespace A141945

/-- `∩[A017653(2*n+1)+n, A004139(n+2)]` -/
def P17012417328423024118.Spec : Prop :=
  ∀ n, (P17012417328423024118.a n : ℤ) = A141945 (n + 1)

end A141945

/-! ## A141945.P16685962739302542361

`record[A006530(25*(n+1)-2)]`
-/

namespace A141945.P16685962739302542361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (25 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141945.P16685962739302542361

namespace A141945

/-- `record[A006530(25*(n+1)-2)]` -/
def P16685962739302542361.Spec : Prop :=
  ∀ n, P16685962739302542361.a n = A141945 (n + 1)

end A141945

/-! ## A141945.P17131102343685775246

`record[A020639(25*(n+1)-2)]`
-/

namespace A141945.P17131102343685775246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (25 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141945.P17131102343685775246

namespace A141945

/-- `record[A020639(25*(n+1)-2)]` -/
def P17131102343685775246.Spec : Prop :=
  ∀ n, P17131102343685775246.a n = A141945 (n + 1)

end A141945

/-! ## A141945.P16218940884324498508

`filter[A133895(n), A185706(#)]`
-/

namespace A141945.P16218940884324498508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A141945.P16218940884324498508

namespace A141945

/-- `filter[A133895(n), A185706(#)]` -/
def P16218940884324498508.Spec : Prop :=
  ∀ n, P16218940884324498508.a n = A141945 (n + 1)

end A141945

/-! ## A141945.P16738846107018104417

`∩[A030431(n+1), A133895(n)]`
-/

namespace A141945.P16738846107018104417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P16738846107018104417

namespace A141945

/-- `∩[A030431(n+1), A133895(n)]` -/
def P16738846107018104417.Spec : Prop :=
  ∀ n, (P16738846107018104417.a n : ℤ) = A141945 (n + 1)

end A141945

/-! ## A141945.P8878723608742120440

`∩[A045414(n+1), A133895(n)]`
-/

namespace A141945.P8878723608742120440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P8878723608742120440

namespace A141945

/-- `∩[A045414(n+1), A133895(n)]` -/
def P8878723608742120440.Spec : Prop :=
  ∀ n, (P8878723608742120440.a n : ℤ) = A141945 (n + 1)

end A141945

/-! ## A141945.P6418727326637975946

`∩[A256177(n+1), A133895(n)]`
-/

namespace A141945.P6418727326637975946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P6418727326637975946

namespace A141945

/-- `∩[A256177(n+1), A133895(n)]` -/
def P6418727326637975946.Spec : Prop :=
  ∀ n, (P6418727326637975946.a n : ℤ) = A141945 (n + 1)

end A141945

/-! ## A141945.P3775848596741498086

`∩[A009087(n+1), A016897(A016897(n))-1]`
-/

namespace A141945.P3775848596741498086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A016897 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P3775848596741498086

namespace A141945

/-- `∩[A009087(n+1), A016897(A016897(n))-1]` -/
def P3775848596741498086.Spec : Prop :=
  ∀ n, (P3775848596741498086.a n : ℤ) = A141945 (n + 1)

end A141945

/-! ## A141945.P3078363072440838396

`∩[A315690(2*n)-A315690(n+1), A030431(n+2)]`
-/

namespace A141945.P3078363072440838396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 (2 * n) - A315690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P3078363072440838396

namespace A141945

/-- `∩[A315690(2*n)-A315690(n+1), A030431(n+2)]` -/
def P3078363072440838396.Spec : Prop :=
  ∀ n, (P3078363072440838396.a n : ℤ) = A141945 (n + 1)

end A141945

/-!
# A141946: Primes congruent to 24 mod 25.

The programs for A141946, the canonical program `A141946.P10794365736569721315` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141946 has offset 1).

The definition of A141946 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141946.anchor (n : ℕ) (hn : 1 ≤ n) : A141946 n = (Nat.nth (fun p => p.Prime ∧ p % 25 = 24) (n - 1) : ℤ)` in `Proof.A141.A141946`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141946.P10794365736569721315

`p?[25*n-1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141946

/-- `p?[25*n-1]` -/
def P10794365736569721315.Spec : Prop :=
  ∀ n, P10794365736569721315.a n = A141946 (n + 1)

theorem P10794365736569721315.correct : P10794365736569721315.Spec := by
  intro n
  simp only [A141946, Nat.add_sub_cancel]

end A141946

/-! ## A141946.P15880145424269434230

`or(1, p?[5*5*n+24])`
-/

namespace A141946.P15880145424269434230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * n) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141946.P15880145424269434230

namespace A141946

/-- `or(1, p?[5*5*n+24])` -/
def P15880145424269434230.Spec : Prop :=
  ∀ n, (P15880145424269434230.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P4132154905744859749

`∩[A030433(n+1), A172469(n+1)]`
-/

namespace A141946.P4132154905744859749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P4132154905744859749

namespace A141946

/-- `∩[A030433(n+1), A172469(n+1)]` -/
def P4132154905744859749.Spec : Prop :=
  ∀ n, (P4132154905744859749.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P18249966336285872961

`∩[A045457(n+1), A172469(n+1)]`
-/

namespace A141946.P18249966336285872961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P18249966336285872961

namespace A141946

/-- `∩[A045457(n+1), A172469(n+1)]` -/
def P18249966336285872961.Spec : Prop :=
  ∀ n, (P18249966336285872961.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P4651224302481160032

`∩[A172469(n+1), A327753(n+1)]`
-/

namespace A141946.P4651224302481160032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P4651224302481160032

namespace A141946

/-- `∩[A172469(n+1), A327753(n+1)]` -/
def P4651224302481160032.Spec : Prop :=
  ∀ n, (P4651224302481160032.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P354696165922287095

`∩[A004618(n+1), A172469(n+1)]`
-/

namespace A141946.P354696165922287095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P354696165922287095

namespace A141946

/-- `∩[A004618(n+1), A172469(n+1)]` -/
def P354696165922287095.Spec : Prop :=
  ∀ n, (P354696165922287095.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P16673426487613345948

`∩[A158060(n+1)-2, A172469(n+1)]`
-/

namespace A141946.P16673426487613345948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P16673426487613345948

namespace A141946

/-- `∩[A158060(n+1)-2, A172469(n+1)]` -/
def P16673426487613345948.Spec : Prop :=
  ∀ n, (P16673426487613345948.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P6338714909845730298

`∩[A038872(n+1), A183010(n)+n]`
-/

namespace A141946.P6338714909845730298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P6338714909845730298

namespace A141946

/-- `∩[A038872(n+1), A183010(n)+n]` -/
def P6338714909845730298.Spec : Prop :=
  ∀ n, (P6338714909845730298.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P3610480826503809655

`∩[A038872(n+1), A158060(n+1)-2]`
-/

namespace A141946.P3610480826503809655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P3610480826503809655

namespace A141946

/-- `∩[A038872(n+1), A158060(n+1)-2]` -/
def P3610480826503809655.Spec : Prop :=
  ∀ n, (P3610480826503809655.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P13737523449968533025

`∩[A045468(n+1), A158060(n+1)-2]`
-/

namespace A141946.P13737523449968533025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P13737523449968533025

namespace A141946

/-- `∩[A045468(n+1), A158060(n+1)-2]` -/
def P13737523449968533025.Spec : Prop :=
  ∀ n, (P13737523449968533025.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P3513837250545321835

`∩[A064739(n+1), A158060(n+1)-2]`
-/

namespace A141946.P3513837250545321835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P3513837250545321835

namespace A141946

/-- `∩[A064739(n+1), A158060(n+1)-2]` -/
def P3513837250545321835.Spec : Prop :=
  ∀ n, (P3513837250545321835.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P2790878132199689821

`∩[A158060(n+1)-2, A328896(n+1)]`
-/

namespace A141946.P2790878132199689821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P2790878132199689821

namespace A141946

/-- `∩[A158060(n+1)-2, A328896(n+1)]` -/
def P2790878132199689821.Spec : Prop :=
  ∀ n, (P2790878132199689821.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P17537973038025408683

`∩[A049098(n+1), A183010(n)+n]`
-/

namespace A141946.P17537973038025408683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P17537973038025408683

namespace A141946

/-- `∩[A049098(n+1), A183010(n)+n]` -/
def P17537973038025408683.Spec : Prop :=
  ∀ n, (P17537973038025408683.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P9223463147031119645

`∩[A030433(n+1), A376506(n+1)]`
-/

namespace A141946.P9223463147031119645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P9223463147031119645

namespace A141946

/-- `∩[A030433(n+1), A376506(n+1)]` -/
def P9223463147031119645.Spec : Prop :=
  ∀ n, (P9223463147031119645.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P5484777170658236098

`∩[A045457(n+1), A376506(n+1)]`
-/

namespace A141946.P5484777170658236098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P5484777170658236098

namespace A141946

/-- `∩[A045457(n+1), A376506(n+1)]` -/
def P5484777170658236098.Spec : Prop :=
  ∀ n, (P5484777170658236098.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P5261849832296340882

`∩[A008856(n+1), A030433(n+1)]`
-/

namespace A141946.P5261849832296340882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P5261849832296340882

namespace A141946

/-- `∩[A008856(n+1), A030433(n+1)]` -/
def P5261849832296340882.Spec : Prop :=
  ∀ n, (P5261849832296340882.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P15321485463279582990

`∩[A008856(n+1), A042991(n+1)]`
-/

namespace A141946.P15321485463279582990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P15321485463279582990

namespace A141946

/-- `∩[A008856(n+1), A042991(n+1)]` -/
def P15321485463279582990.Spec : Prop :=
  ∀ n, (P15321485463279582990.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P9524165007536778051

`∩[A008856(n+1), A045327(n+1)]`
-/

namespace A141946.P9524165007536778051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P9524165007536778051

namespace A141946

/-- `∩[A008856(n+1), A045327(n+1)]` -/
def P9524165007536778051.Spec : Prop :=
  ∀ n, (P9524165007536778051.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P15355443314260948999

`∩[A008856(n+1), A045356(n+1)]`
-/

namespace A141946.P15355443314260948999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P15355443314260948999

namespace A141946

/-- `∩[A008856(n+1), A045356(n+1)]` -/
def P15355443314260948999.Spec : Prop :=
  ∀ n, (P15355443314260948999.a n : ℤ) = A141946 (n + 1)

end A141946

/-! ## A141946.P7892888905693789736

`∩[A008856(n+1), A045378(n+1)]`
-/

namespace A141946.P7892888905693789736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141946.P7892888905693789736

namespace A141946

/-- `∩[A008856(n+1), A045378(n+1)]` -/
def P7892888905693789736.Spec : Prop :=
  ∀ n, (P7892888905693789736.a n : ℤ) = A141946 (n + 1)

end A141946

/-!
# A141948: Primes congruent to 1 mod 27.

The programs for A141948, the canonical program `A141948.P14091508666294411149` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141948 has offset 1).

The definition of A141948 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141948.anchor (n : ℕ) (hn : 1 ≤ n) : A141948 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 1) (n - 1) : ℤ)` in `Proof.A141.A141948`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141948.P14091508666294411149

`p?[27*n+1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141948

/-- `p?[27*n+1]` -/
def P14091508666294411149.Spec : Prop :=
  ∀ n, (P14091508666294411149.a n : ℤ) = A141948 (n + 1)

theorem P14091508666294411149.correct : P14091508666294411149.Spec := by
  intro n
  simp only [A141948, Nat.add_sub_cancel]

end A141948

/-! ## A141948.P9489305028734368476

`or(1, p?[or(1, 27*n)])`
-/

namespace A141948.P9489305028734368476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (27 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141948.P9489305028734368476

namespace A141948

/-- `or(1, p?[or(1, 27*n)])` -/
def P9489305028734368476.Spec : Prop :=
  ∀ n, (P9489305028734368476.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P12740979723664296013

`or(1, p?[a(n-1)+27])` with `a(0)=1`
-/

namespace A141948.P12740979723664296013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141948.P12740979723664296013

namespace A141948

/-- `or(1, p?[a(n-1)+27])` -/
def P12740979723664296013.Spec : Prop :=
  ∀ n, (P12740979723664296013.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P17234804200649530125

`p?[a(n-1)+54]%A244918(n+1)` with `a(0)=1`
-/

namespace A141948.P17234804200649530125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 54

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A244918 (n + 1))

end

end A141948.P17234804200649530125

namespace A141948

/-- `p?[a(n-1)+54]%A244918(n+1)` -/
def P17234804200649530125.Spec : Prop :=
  ∀ n, P17234804200649530125.a n = A141948 (n + 1)

end A141948

/-! ## A141948.P3504746248695975903

`or(1, p?[A255187(n+1)-A255187(n)])`
-/

namespace A141948.P3504746248695975903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 (n + 1) - A255187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141948.P3504746248695975903

namespace A141948

/-- `or(1, p?[A255187(n+1)-A255187(n)])` -/
def P3504746248695975903.Spec : Prop :=
  ∀ n, P3504746248695975903.a n = A141948 (n + 1)

end A141948

/-! ## A141948.P14899267361925527912

`or(1, p?[A161705(3*n)])`
-/

namespace A141948.P14899267361925527912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141948.P14899267361925527912

namespace A141948

/-- `or(1, p?[A161705(3*n)])` -/
def P14899267361925527912.Spec : Prop :=
  ∀ n, P14899267361925527912.a n = A141948 (n + 1)

end A141948

/-! ## A141948.P3153088598863613242

`∩[A002476(n+1), A056081(n+1)]`
-/

namespace A141948.P3153088598863613242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P3153088598863613242

namespace A141948

/-- `∩[A002476(n+1), A056081(n+1)]` -/
def P3153088598863613242.Spec : Prop :=
  ∀ n, (P3153088598863613242.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P15122351553214594776

`∩[A007645(n+1), A056081(n+1)]`
-/

namespace A141948.P15122351553214594776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P15122351553214594776

namespace A141948

/-- `∩[A007645(n+1), A056081(n+1)]` -/
def P15122351553214594776.Spec : Prop :=
  ∀ n, (P15122351553214594776.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P7644941343289738044

`∩[A045331(n+1), A056081(n+1)]`
-/

namespace A141948.P7644941343289738044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P7644941343289738044

namespace A141948

/-- `∩[A045331(n+1), A056081(n+1)]` -/
def P7644941343289738044.Spec : Prop :=
  ∀ n, (P7644941343289738044.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P1367510596319214944

`∩[A045375(n+1), A056081(n+1)]`
-/

namespace A141948.P1367510596319214944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P1367510596319214944

namespace A141948

/-- `∩[A045375(n+1), A056081(n+1)]` -/
def P1367510596319214944.Spec : Prop :=
  ∀ n, (P1367510596319214944.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P3892551999892859900

`∩[A056081(n+1), A061237(n+1)]`
-/

namespace A141948.P3892551999892859900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P3892551999892859900

namespace A141948

/-- `∩[A056081(n+1), A061237(n+1)]` -/
def P3892551999892859900.Spec : Prop :=
  ∀ n, (P3892551999892859900.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P17602098656162011020

`∩[A056081(n+1), A079130(n+1)]`
-/

namespace A141948.P17602098656162011020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P17602098656162011020

namespace A141948

/-- `∩[A056081(n+1), A079130(n+1)]` -/
def P17602098656162011020.Spec : Prop :=
  ∀ n, (P17602098656162011020.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P14522461712860426981

`∩[A056081(n+1), A079131(n+1)]`
-/

namespace A141948.P14522461712860426981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P14522461712860426981

namespace A141948

/-- `∩[A056081(n+1), A079131(n+1)]` -/
def P14522461712860426981.Spec : Prop :=
  ∀ n, (P14522461712860426981.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P3762926716730091535

`∩[A190991(2*n)+n, A002476(n+2)]`
-/

namespace A141948.P3762926716730091535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P3762926716730091535

namespace A141948

/-- `∩[A190991(2*n)+n, A002476(n+2)]` -/
def P3762926716730091535.Spec : Prop :=
  ∀ n, (P3762926716730091535.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P12863565012393452436

`∩[A190991(2*n)+n, A007645(n+2)]`
-/

namespace A141948.P12863565012393452436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P12863565012393452436

namespace A141948

/-- `∩[A190991(2*n)+n, A007645(n+2)]` -/
def P12863565012393452436.Spec : Prop :=
  ∀ n, (P12863565012393452436.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P1289202227203879748

`∩[A190991(2*n)+n, A045331(n+2)]`
-/

namespace A141948.P1289202227203879748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P1289202227203879748

namespace A141948

/-- `∩[A190991(2*n)+n, A045331(n+2)]` -/
def P1289202227203879748.Spec : Prop :=
  ∀ n, (P1289202227203879748.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P7172195935994479879

`∩[A190991(2*n)+n, A045375(n+2)]`
-/

namespace A141948.P7172195935994479879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P7172195935994479879

namespace A141948

/-- `∩[A190991(2*n)+n, A045375(n+2)]` -/
def P7172195935994479879.Spec : Prop :=
  ∀ n, (P7172195935994479879.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P8076340979169635815

`∩[A131877(2*n)-n, A061237(n+2)]`
-/

namespace A141948.P8076340979169635815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P8076340979169635815

namespace A141948

/-- `∩[A131877(2*n)-n, A061237(n+2)]` -/
def P8076340979169635815.Spec : Prop :=
  ∀ n, (P8076340979169635815.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P4833118819480071942

`∩[A108719(n+1), A376506(n+1)+n]`
-/

namespace A141948.P4833118819480071942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P4833118819480071942

namespace A141948

/-- `∩[A108719(n+1), A376506(n+1)+n]` -/
def P4833118819480071942.Spec : Prop :=
  ∀ n, (P4833118819480071942.a n : ℤ) = A141948 (n + 1)

end A141948

/-! ## A141948.P13671085506291433747

`∩[A261123(n+1), A376506(n+1)+n]`
-/

namespace A141948.P13671085506291433747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141948.P13671085506291433747

namespace A141948

/-- `∩[A261123(n+1), A376506(n+1)+n]` -/
def P13671085506291433747.Spec : Prop :=
  ∀ n, (P13671085506291433747.a n : ℤ) = A141948 (n + 1)

end A141948

/-!
# A141949: Primes congruent to 2 mod 27.

The programs for A141949, there is no canonical definition to state claims against.
-/

/-! ## A141949.P12781318109392341247

`∪[A007352(n+1), A142592(n+1)]`
-/

namespace A141949.P12781318109392341247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P12781318109392341247

/-! ## A141949.P5509085445895999889

`∪[A142592(n+1), A247214(n+1)]`
-/

namespace A141949.P5509085445895999889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P5509085445895999889

/-! ## A141949.P13159738579635699248

`∪[A142592(n+1), A262729(n+1)]`
-/

namespace A141949.P13159738579635699248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P13159738579635699248

/-! ## A141949.P7092899270513363925

`∪[A142592(n+1), A263645(n+1)]`
-/

namespace A141949.P7092899270513363925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P7092899270513363925

/-! ## A141949.P14158707642814862841

`∪[A142592(n+1), A283072(n+1)]`
-/

namespace A141949.P14158707642814862841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P14158707642814862841

/-! ## A141949.P14285018228618269399

`p?[27*n+2]`
-/

namespace A141949.P14285018228618269399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141949.P14285018228618269399

/-! ## A141949.P4328932084255249849

`∩[A061238(n+1), A281546(n)]`
-/

namespace A141949.P4328932084255249849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P4328932084255249849

/-! ## A141949.P15208863771584997315

`∩[A078403(n+1), A281546(n)]`
-/

namespace A141949.P15208863771584997315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P15208863771584997315

/-! ## A141949.P12189056306772371759

`∩[A079132(n+1), A281546(n)]`
-/

namespace A141949.P12189056306772371759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P12189056306772371759

/-! ## A141949.P13443784622714013910

`∩[A003627(n+1), A281546(n)]`
-/

namespace A141949.P13443784622714013910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P13443784622714013910

/-! ## A141949.P15185509325725302563

`∩[A045309(n+1), A281546(n)]`
-/

namespace A141949.P15185509325725302563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P15185509325725302563

/-! ## A141949.P352061917778763760

`p?[A281546(n)]%A281549(n+1)`
-/

namespace A141949.P352061917778763760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A281549 (n + 1))

end

end A141949.P352061917778763760

/-! ## A141949.P1058169546383395943

`∩[A049596(n+1), A281546(n)]`
-/

namespace A141949.P1058169546383395943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P1058169546383395943

/-! ## A141949.P9993548687628871177

`∩[A040044(n+1), A281546(n)]`
-/

namespace A141949.P9993548687628871177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P9993548687628871177

/-! ## A141949.P6745237030367298027

`∩[A040046(n+1), A281546(n)]`
-/

namespace A141949.P6745237030367298027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P6745237030367298027

/-! ## A141949.P14032246476384976971

`∩[A040087(n+1), A281546(n)]`
-/

namespace A141949.P14032246476384976971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P14032246476384976971

/-! ## A141949.P9551615687224042266

`∩[A040060(n+1), A281546(n)]`
-/

namespace A141949.P9551615687224042266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P9551615687224042266

/-! ## A141949.P17541999931945411551

`∩[A040083(n+1), A281546(n)]`
-/

namespace A141949.P17541999931945411551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P17541999931945411551

/-! ## A141949.P5445579179126499595

`∩[A040095(n+1), A281546(n)]`
-/

namespace A141949.P5445579179126499595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P5445579179126499595

/-! ## A141949.P8692819227556512078

`∩[A040028(n+1), A281546(n)]`
-/

namespace A141949.P8692819227556512078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141949.P8692819227556512078

/-!
# A141950: Primes congruent to 4 mod 27.

The programs for A141950, the canonical program `A141950.P12713975679317067339` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141950 has offset 1).

The definition of A141950 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141950.anchor (n : ℕ) (hn : 1 ≤ n) : A141950 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 4) (n - 1) : ℤ)` in `Proof.A141.A141950`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141950.P12713975679317067339

`p?[27*n+4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141950

/-- `p?[27*n+4]` -/
def P12713975679317067339.Spec : Prop :=
  ∀ n, (P12713975679317067339.a n : ℤ) = A141950 (n + 1)

theorem P12713975679317067339.correct : P12713975679317067339.Spec := by
  intro n
  simp only [A141950, Nat.add_sub_cancel]

end A141950

/-! ## A141950.P1015194490455115218

`∩[A127547(2*n)+n, A002476(n+2)]`
-/

namespace A141950.P1015194490455115218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P1015194490455115218

namespace A141950

/-- `∩[A127547(2*n)+n, A002476(n+2)]` -/
def P1015194490455115218.Spec : Prop :=
  ∀ n, (P1015194490455115218.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P6300210182531031364

`∩[A127547(2*n)+n, A007645(n+2)]`
-/

namespace A141950.P6300210182531031364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P6300210182531031364

namespace A141950

/-- `∩[A127547(2*n)+n, A007645(n+2)]` -/
def P6300210182531031364.Spec : Prop :=
  ∀ n, (P6300210182531031364.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P18021560366072191174

`∩[A127547(2*n)+n, A045331(n+2)]`
-/

namespace A141950.P18021560366072191174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P18021560366072191174

namespace A141950

/-- `∩[A127547(2*n)+n, A045331(n+2)]` -/
def P18021560366072191174.Spec : Prop :=
  ∀ n, (P18021560366072191174.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P10404951787840642135

`∩[A127547(2*n)+n, A045375(n+2)]`
-/

namespace A141950.P10404951787840642135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P10404951787840642135

namespace A141950

/-- `∩[A127547(2*n)+n, A045375(n+2)]` -/
def P10404951787840642135.Spec : Prop :=
  ∀ n, (P10404951787840642135.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P16057171453748026293

`∩[A127547(2*n)+n, A123365(n+2)]`
-/

namespace A141950.P16057171453748026293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P16057171453748026293

namespace A141950

/-- `∩[A127547(2*n)+n, A123365(n+2)]` -/
def P16057171453748026293.Spec : Prop :=
  ∀ n, (P16057171453748026293.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P10364533750387042708

`∩[A306285(2*n+1)+n, A002476(n+2)]`
-/

namespace A141950.P10364533750387042708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P10364533750387042708

namespace A141950

/-- `∩[A306285(2*n+1)+n, A002476(n+2)]` -/
def P10364533750387042708.Spec : Prop :=
  ∀ n, (P10364533750387042708.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P18137967277779218459

`∩[A306285(2*n+1)+n, A007645(n+2)]`
-/

namespace A141950.P18137967277779218459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P18137967277779218459

namespace A141950

/-- `∩[A306285(2*n+1)+n, A007645(n+2)]` -/
def P18137967277779218459.Spec : Prop :=
  ∀ n, (P18137967277779218459.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P12729045286366348482

`∩[A306285(2*n+1)+n, A045331(n+2)]`
-/

namespace A141950.P12729045286366348482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P12729045286366348482

namespace A141950

/-- `∩[A306285(2*n+1)+n, A045331(n+2)]` -/
def P12729045286366348482.Spec : Prop :=
  ∀ n, (P12729045286366348482.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P5532553990632189998

`∩[A306285(2*n+1)+n, A045375(n+2)]`
-/

namespace A141950.P5532553990632189998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P5532553990632189998

namespace A141950

/-- `∩[A306285(2*n+1)+n, A045375(n+2)]` -/
def P5532553990632189998.Spec : Prop :=
  ∀ n, (P5532553990632189998.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P1120666783488208719

`∩[A306285(2*n+1)+n, A123365(n+2)]`
-/

namespace A141950.P1120666783488208719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141950.P1120666783488208719

namespace A141950

/-- `∩[A306285(2*n+1)+n, A123365(n+2)]` -/
def P1120666783488208719.Spec : Prop :=
  ∀ n, (P1120666783488208719.a n : ℤ) = A141950 (n + 1)

end A141950

/-! ## A141950.P13014842761521124786

`record[A006530(27*(n+1)+4)]`
-/

namespace A141950.P13014842761521124786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (27 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141950.P13014842761521124786

namespace A141950

/-- `record[A006530(27*(n+1)+4)]` -/
def P13014842761521124786.Spec : Prop :=
  ∀ n, P13014842761521124786.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P15333016557733923398

`record[A020639(27*(n+1)+4)]`
-/

namespace A141950.P15333016557733923398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (27 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141950.P15333016557733923398

namespace A141950

/-- `record[A020639(27*(n+1)+4)]` -/
def P15333016557733923398.Spec : Prop :=
  ∀ n, P15333016557733923398.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P14924024660870216223

`or(1, p?[A017209(3*n)])`
-/

namespace A141950.P14924024660870216223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141950.P14924024660870216223

namespace A141950

/-- `or(1, p?[A017209(3*n)])` -/
def P14924024660870216223.Spec : Prop :=
  ∀ n, P14924024660870216223.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P6014641794255816078

`filter[A017209(3*n), A010051(#)]`
-/

namespace A141950.P6014641794255816078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141950.P6014641794255816078

namespace A141950

/-- `filter[A017209(3*n), A010051(#)]` -/
def P6014641794255816078.Spec : Prop :=
  ∀ n, P6014641794255816078.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P8850689489839093240

`filter[A017209(3*n), A380467(#)]`
-/

namespace A141950.P8850689489839093240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A141950.P8850689489839093240

namespace A141950

/-- `filter[A017209(3*n), A380467(#)]` -/
def P8850689489839093240.Spec : Prop :=
  ∀ n, P8850689489839093240.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P7366431386841015739

`filter[A063121(3*n+1), A010051(#)]`
-/

namespace A141950.P7366431386841015739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063121 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141950.P7366431386841015739

namespace A141950

/-- `filter[A063121(3*n+1), A010051(#)]` -/
def P7366431386841015739.Spec : Prop :=
  ∀ n, P7366431386841015739.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P3758946568697368727

`filter[A017209(3*n), A323152(#)]`
-/

namespace A141950.P3758946568697368727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141950.P3758946568697368727

namespace A141950

/-- `filter[A017209(3*n), A323152(#)]` -/
def P3758946568697368727.Spec : Prop :=
  ∀ n, P3758946568697368727.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P3084040957716296628

`filter[A017209(3*n), A323153(#)]`
-/

namespace A141950.P3084040957716296628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141950.P3084040957716296628

namespace A141950

/-- `filter[A017209(3*n), A323153(#)]` -/
def P3084040957716296628.Spec : Prop :=
  ∀ n, P3084040957716296628.a n = A141950 (n + 1)

end A141950

/-! ## A141950.P16083395123271846636

`filter[A017209(3*n), A327861(#)]`
-/

namespace A141950.P16083395123271846636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A141950.P16083395123271846636

namespace A141950

/-- `filter[A017209(3*n), A327861(#)]` -/
def P16083395123271846636.Spec : Prop :=
  ∀ n, P16083395123271846636.a n = A141950 (n + 1)

end A141950

/-!
# A141951: Primes congruent to 5 mod 27.

The programs for A141951, the canonical program `A141951.P2426421903688238257` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141951 has offset 1).

The definition of A141951 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141951.anchor (n : ℕ) (hn : 1 ≤ n) : A141951 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 5) (n - 1) : ℤ)` in `Proof.A141.A141951`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141951.P2426421903688238257

`p?[27*n+5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141951

/-- `p?[27*n+5]` -/
def P2426421903688238257.Spec : Prop :=
  ∀ n, (P2426421903688238257.a n : ℤ) = A141951 (n + 1)

theorem P2426421903688238257.correct : P2426421903688238257.Spec := by
  intro n
  simp only [A141951, Nat.add_sub_cancel]

end A141951

/-! ## A141951.P10900747756670781872

`∩[A154609(2*n)+n, A003627(n+2)]`
-/

namespace A141951.P10900747756670781872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141951.P10900747756670781872

namespace A141951

/-- `∩[A154609(2*n)+n, A003627(n+2)]` -/
def P10900747756670781872.Spec : Prop :=
  ∀ n, (P10900747756670781872.a n : ℤ) = A141951 (n + 1)

end A141951

/-! ## A141951.P5578866621330923982

`∩[A154609(2*n)+n, A045309(n+2)]`
-/

namespace A141951.P5578866621330923982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141951.P5578866621330923982

namespace A141951

/-- `∩[A154609(2*n)+n, A045309(n+2)]` -/
def P5578866621330923982.Spec : Prop :=
  ∀ n, (P5578866621330923982.a n : ℤ) = A141951 (n + 1)

end A141951

/-! ## A141951.P1144232385901242681

`∩[A154609(2*n)+n, A045410(n+2)]`
-/

namespace A141951.P1144232385901242681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141951.P1144232385901242681

namespace A141951

/-- `∩[A154609(2*n)+n, A045410(n+2)]` -/
def P1144232385901242681.Spec : Prop :=
  ∀ n, (P1144232385901242681.a n : ℤ) = A141951 (n + 1)

end A141951

/-! ## A141951.P12616071741169237055

`filter[A242215(3*n), A324290(#)]`
-/

namespace A141951.P12616071741169237055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A141951.P12616071741169237055

namespace A141951

/-- `filter[A242215(3*n), A324290(#)]` -/
def P12616071741169237055.Spec : Prop :=
  ∀ n, P12616071741169237055.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P14349414835876517789

`record[A020639(27*n+5)]`
-/

namespace A141951.P14349414835876517789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (27 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141951.P14349414835876517789

namespace A141951

/-- `record[A020639(27*n+5)]` -/
def P14349414835876517789.Spec : Prop :=
  ∀ n, P14349414835876517789.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P6889045856382384327

`record[A006530(54*n+5)]`
-/

namespace A141951.P6889045856382384327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (54 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141951.P6889045856382384327

namespace A141951

/-- `record[A006530(54*n+5)]` -/
def P6889045856382384327.Spec : Prop :=
  ∀ n, P6889045856382384327.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P14768187737282003158

`filter[A242215(3*n), A010051(#)]`
-/

namespace A141951.P14768187737282003158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141951.P14768187737282003158

namespace A141951

/-- `filter[A242215(3*n), A010051(#)]` -/
def P14768187737282003158.Spec : Prop :=
  ∀ n, P14768187737282003158.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P309258810976439217

`filter[A242215(3*n), A069513(#)]`
-/

namespace A141951.P309258810976439217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A141951.P309258810976439217

namespace A141951

/-- `filter[A242215(3*n), A069513(#)]` -/
def P309258810976439217.Spec : Prop :=
  ∀ n, P309258810976439217.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P124650969678447839

`A001414(p?[A017221(3*n)])`
-/

namespace A141951.P124650969678447839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141951.P124650969678447839

namespace A141951

/-- `A001414(p?[A017221(3*n)])` -/
def P124650969678447839.Spec : Prop :=
  ∀ n, P124650969678447839.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P12072799558046726708

`filter[A017221(3*n), A001222(#)]`
-/

namespace A141951.P12072799558046726708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A141951.P12072799558046726708

namespace A141951

/-- `filter[A017221(3*n), A001222(#)]` -/
def P12072799558046726708.Spec : Prop :=
  ∀ n, P12072799558046726708.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P18390617333344899966

`filter[A017221(3*n), A010051(#)]`
-/

namespace A141951.P18390617333344899966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141951.P18390617333344899966

namespace A141951

/-- `filter[A017221(3*n), A010051(#)]` -/
def P18390617333344899966.Spec : Prop :=
  ∀ n, P18390617333344899966.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P10098298130640354588

`filter[A017221(3*n), A355937(#)]`
-/

namespace A141951.P10098298130640354588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141951.P10098298130640354588

namespace A141951

/-- `filter[A017221(3*n), A355937(#)]` -/
def P10098298130640354588.Spec : Prop :=
  ∀ n, P10098298130640354588.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P10044749340961610781

`filter[A225539(3*n+1), A010051(#)]`
-/

namespace A141951.P10044749340961610781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141951.P10044749340961610781

namespace A141951

/-- `filter[A225539(3*n+1), A010051(#)]` -/
def P10044749340961610781.Spec : Prop :=
  ∀ n, P10044749340961610781.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P15911848303419036739

`filter[A017221(3*n), A174897(#)]`
-/

namespace A141951.P15911848303419036739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A141951.P15911848303419036739

namespace A141951

/-- `filter[A017221(3*n), A174897(#)]` -/
def P15911848303419036739.Spec : Prop :=
  ∀ n, P15911848303419036739.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P981806955125894148

`filter[A017221(3*n), A302777(#)]`
-/

namespace A141951.P981806955125894148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141951.P981806955125894148

namespace A141951

/-- `filter[A017221(3*n), A302777(#)]` -/
def P981806955125894148.Spec : Prop :=
  ∀ n, P981806955125894148.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P6216459461234068408

`filter[A017221(3*n), A323152(#)]`
-/

namespace A141951.P6216459461234068408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141951.P6216459461234068408

namespace A141951

/-- `filter[A017221(3*n), A323152(#)]` -/
def P6216459461234068408.Spec : Prop :=
  ∀ n, P6216459461234068408.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P8242880493004077856

`filter[A017221(3*n), A323153(#)]`
-/

namespace A141951.P8242880493004077856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141951.P8242880493004077856

namespace A141951

/-- `filter[A017221(3*n), A323153(#)]` -/
def P8242880493004077856.Spec : Prop :=
  ∀ n, P8242880493004077856.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P5125738804809816722

`filter[A242215(3*n), A174897(#)]`
-/

namespace A141951.P5125738804809816722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A141951.P5125738804809816722

namespace A141951

/-- `filter[A242215(3*n), A174897(#)]` -/
def P5125738804809816722.Spec : Prop :=
  ∀ n, P5125738804809816722.a n = A141951 (n + 1)

end A141951

/-! ## A141951.P4799850901236072502

`filter[A242215(3*n), A211487(#)]`
-/

namespace A141951.P4799850901236072502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A141951.P4799850901236072502

namespace A141951

/-- `filter[A242215(3*n), A211487(#)]` -/
def P4799850901236072502.Spec : Prop :=
  ∀ n, P4799850901236072502.a n = A141951 (n + 1)

end A141951

/-!
# A141952: Primes congruent to 7 mod 27.

The programs for A141952, the canonical program `A141952.P6438771373754275122` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141952 has offset 1).

The definition of A141952 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141952.anchor (n : ℕ) (hn : 1 ≤ n) : A141952 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 7) (n - 1) : ℤ)` in `Proof.A141.A141952`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141952.P6438771373754275122

`p?[27*n+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141952

/-- `p?[27*n+7]` -/
def P6438771373754275122.Spec : Prop :=
  ∀ n, (P6438771373754275122.a n : ℤ) = A141952 (n + 1)

theorem P6438771373754275122.correct : P6438771373754275122.Spec := by
  intro n
  simp only [A141952, Nat.add_sub_cancel]

end A141952

/-! ## A141952.P6561080489986808094

`∩[A269044(2*n)+n, A007645(n+2)]`
-/

namespace A141952.P6561080489986808094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P6561080489986808094

namespace A141952

/-- `∩[A269044(2*n)+n, A007645(n+2)]` -/
def P6561080489986808094.Spec : Prop :=
  ∀ n, (P6561080489986808094.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P12281697803856190664

`∩[A269044(2*n)+n, A045331(n+2)]`
-/

namespace A141952.P12281697803856190664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P12281697803856190664

namespace A141952

/-- `∩[A269044(2*n)+n, A045331(n+2)]` -/
def P12281697803856190664.Spec : Prop :=
  ∀ n, (P12281697803856190664.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P17399124794534637087

`∩[A269044(2*n)+n, A045375(n+2)]`
-/

namespace A141952.P17399124794534637087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P17399124794534637087

namespace A141952

/-- `∩[A269044(2*n)+n, A045375(n+2)]` -/
def P17399124794534637087.Spec : Prop :=
  ∀ n, (P17399124794534637087.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P6905360555726636886

`∩[A269044(2*n)+n, A123365(n+2)]`
-/

namespace A141952.P6905360555726636886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P6905360555726636886

namespace A141952

/-- `∩[A269044(2*n)+n, A123365(n+2)]` -/
def P6905360555726636886.Spec : Prop :=
  ∀ n, (P6905360555726636886.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P10755176215805401393

`record[A006530(2*(n+1)+2*(26*n+2)+1)]`
-/

namespace A141952.P10755176215805401393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) + 2 * (26 * n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141952.P10755176215805401393

namespace A141952

/-- `record[A006530(2*(n+1)+2*(26*n+2)+1)]` -/
def P10755176215805401393.Spec : Prop :=
  ∀ n, P10755176215805401393.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P4064512252406424500

`record[A020639(A269044(2*n)+n)]`
-/

namespace A141952.P4064512252406424500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A269044 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141952.P4064512252406424500

namespace A141952

/-- `record[A020639(A269044(2*n)+n)]` -/
def P4064512252406424500.Spec : Prop :=
  ∀ n, P4064512252406424500.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P2354625590871478211

`record[A020639(9*A260488(n+1)-2)]`
-/

namespace A141952.P2354625590871478211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * A260488 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141952.P2354625590871478211

namespace A141952

/-- `record[A020639(9*A260488(n+1)-2)]` -/
def P2354625590871478211.Spec : Prop :=
  ∀ n, P2354625590871478211.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P17277012998517934368

`record[A020639(9*n+6*A016777(n)+1)]`
-/

namespace A141952.P17277012998517934368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((9 * n : ℤ) + (6 * A016777 n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141952.P17277012998517934368

namespace A141952

/-- `record[A020639(9*n+6*A016777(n)+1)]` -/
def P17277012998517934368.Spec : Prop :=
  ∀ n, P17277012998517934368.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P2432192572627028561

`record[A020639(A017473(A008587(n))-n)]`
-/

namespace A141952.P2432192572627028561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017473 (A008587 n).toNat - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141952.P2432192572627028561

namespace A141952

/-- `record[A020639(A017473(A008587(n))-n)]` -/
def P2432192572627028561.Spec : Prop :=
  ∀ n, P2432192572627028561.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P2939867594143785639

`filter[A017245(3*n), A010051(#)]`
-/

namespace A141952.P2939867594143785639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141952.P2939867594143785639

namespace A141952

/-- `filter[A017245(3*n), A010051(#)]` -/
def P2939867594143785639.Spec : Prop :=
  ∀ n, P2939867594143785639.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P3151706732105852474

`filter[A017245(3*n), A380467(#)]`
-/

namespace A141952.P3151706732105852474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A141952.P3151706732105852474

namespace A141952

/-- `filter[A017245(3*n), A380467(#)]` -/
def P3151706732105852474.Spec : Prop :=
  ∀ n, P3151706732105852474.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P1986339469592022627

`record[A020639(A179805(3*n+2)+1)]`
-/

namespace A141952.P1986339469592022627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179805 (3 * n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141952.P1986339469592022627

namespace A141952

/-- `record[A020639(A179805(3*n+2)+1)]` -/
def P1986339469592022627.Spec : Prop :=
  ∀ n, P1986339469592022627.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P8687178415383183708

`filter[A017245(3*n), A323152(#)]`
-/

namespace A141952.P8687178415383183708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141952.P8687178415383183708

namespace A141952

/-- `filter[A017245(3*n), A323152(#)]` -/
def P8687178415383183708.Spec : Prop :=
  ∀ n, P8687178415383183708.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P15103234606270377417

`filter[A017245(3*n), A323153(#)]`
-/

namespace A141952.P15103234606270377417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141952.P15103234606270377417

namespace A141952

/-- `filter[A017245(3*n), A323153(#)]` -/
def P15103234606270377417.Spec : Prop :=
  ∀ n, P15103234606270377417.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P2424830475059299063

`filter[A017245(3*n), A353817(#)]`
-/

namespace A141952.P2424830475059299063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A141952.P2424830475059299063

namespace A141952

/-- `filter[A017245(3*n), A353817(#)]` -/
def P2424830475059299063.Spec : Prop :=
  ∀ n, P2424830475059299063.a n = A141952 (n + 1)

end A141952

/-! ## A141952.P2719536838908060344

`∩[A061241(n+1), A301726(n)+2]`
-/

namespace A141952.P2719536838908060344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P2719536838908060344

namespace A141952

/-- `∩[A061241(n+1), A301726(n)+2]` -/
def P2719536838908060344.Spec : Prop :=
  ∀ n, (P2719536838908060344.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P4657285951107839366

`∩[A301724(2*n+1)+1, A079131(n+2)]`
-/

namespace A141952.P4657285951107839366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P4657285951107839366

namespace A141952

/-- `∩[A301724(2*n+1)+1, A079131(n+2)]` -/
def P4657285951107839366.Spec : Prop :=
  ∀ n, (P4657285951107839366.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P13107838348189159433

`∩[A007612(n+1)-1, A061241(n+1)]`
-/

namespace A141952.P13107838348189159433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P13107838348189159433

namespace A141952

/-- `∩[A007612(n+1)-1, A061241(n+1)]` -/
def P13107838348189159433.Spec : Prop :=
  ∀ n, (P13107838348189159433.a n : ℤ) = A141952 (n + 1)

end A141952

/-! ## A141952.P6761661451551722851

`∩[A016084(n+1)+2, A061241(n+1)]`
-/

namespace A141952.P6761661451551722851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141952.P6761661451551722851

namespace A141952

/-- `∩[A016084(n+1)+2, A061241(n+1)]` -/
def P6761661451551722851.Spec : Prop :=
  ∀ n, (P6761661451551722851.a n : ℤ) = A141952 (n + 1)

end A141952

/-!
# A141953: Primes congruent to 8 mod 27.

The programs for A141953, the canonical program `A141953.P1594386319472158232` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141953 has offset 1).

The definition of A141953 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141953.anchor (n : ℕ) (hn : 1 ≤ n) : A141953 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 8) (n - 1) : ℤ)` in `Proof.A141.A141953`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141953.P1594386319472158232

`p?[27*n+8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141953

/-- `p?[27*n+8]` -/
def P1594386319472158232.Spec : Prop :=
  ∀ n, (P1594386319472158232.a n : ℤ) = A141953 (n + 1)

theorem P1594386319472158232.correct : P1594386319472158232.Spec := by
  intro n
  simp only [A141953, Nat.add_sub_cancel]

end A141953

/-! ## A141953.P2507418086175497387

`or(1, p?[a(n-1)+27])` with `a(0)=8`
-/

namespace A141953.P2507418086175497387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141953.P2507418086175497387

namespace A141953

/-- `or(1, p?[a(n-1)+27])` -/
def P2507418086175497387.Spec : Prop :=
  ∀ n, (P2507418086175497387.a n : ℤ) = A141953 (n + 1)

end A141953

/-! ## A141953.P3793033461400555580

`A000027(p?[A139608(n)-n])`
-/

namespace A141953.P3793033461400555580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141953.P3793033461400555580

namespace A141953

/-- `A000027(p?[A139608(n)-n])` -/
def P3793033461400555580.Spec : Prop :=
  ∀ n, P3793033461400555580.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P14697508833721591791

`record[A020639(27*n+89)]`
-/

namespace A141953.P14697508833721591791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (27 * n + 89)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141953.P14697508833721591791

namespace A141953

/-- `record[A020639(27*n+89)]` -/
def P14697508833721591791.Spec : Prop :=
  ∀ n, P14697508833721591791.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P18166612402064968680

`A001414(p?[A154266(n)-4])`
-/

namespace A141953.P18166612402064968680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141953.P18166612402064968680

namespace A141953

/-- `A001414(p?[A154266(n)-4])` -/
def P18166612402064968680.Spec : Prop :=
  ∀ n, P18166612402064968680.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P14093755676604082941

`A000265(p?[A124388(n)-10])`
-/

namespace A141953.P14093755676604082941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141953.P14093755676604082941

namespace A141953

/-- `A000265(p?[A124388(n)-10])` -/
def P14093755676604082941.Spec : Prop :=
  ∀ n, P14093755676604082941.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P6160640056668706065

`A001414(p?[A124388(n)-10])`
-/

namespace A141953.P6160640056668706065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141953.P6160640056668706065

namespace A141953

/-- `A001414(p?[A124388(n)-10])` -/
def P6160640056668706065.Spec : Prop :=
  ∀ n, P6160640056668706065.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P9348464994685584540

`A007947(p?[A139608(n)-n])`
-/

namespace A141953.P9348464994685584540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141953.P9348464994685584540

namespace A141953

/-- `A007947(p?[A139608(n)-n])` -/
def P9348464994685584540.Spec : Prop :=
  ∀ n, P9348464994685584540.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P7920987520742264801

`record[A006530(A239129(3*n+5))]`
-/

namespace A141953.P7920987520742264801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239129 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141953.P7920987520742264801

namespace A141953

/-- `record[A006530(A239129(3*n+5))]` -/
def P7920987520742264801.Spec : Prop :=
  ∀ n, P7920987520742264801.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P11696156622775401341

`filter[A017257(3*n), A010051(#)]`
-/

namespace A141953.P11696156622775401341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141953.P11696156622775401341

namespace A141953

/-- `filter[A017257(3*n), A010051(#)]` -/
def P11696156622775401341.Spec : Prop :=
  ∀ n, P11696156622775401341.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P4050862827699396560

`filter[A017257(3*n), A355937(#)]`
-/

namespace A141953.P4050862827699396560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141953.P4050862827699396560

namespace A141953

/-- `filter[A017257(3*n), A355937(#)]` -/
def P4050862827699396560.Spec : Prop :=
  ∀ n, P4050862827699396560.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P10885850691799245755

`record[and(27*n+89, A107393(27*n+89))]`
-/

namespace A141953.P10885850691799245755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (27 * n + 89 : ℤ) (A107393 (27 * n + 89))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141953.P10885850691799245755

namespace A141953

/-- `record[and(27*n+89, A107393(27*n+89))]` -/
def P10885850691799245755.Spec : Prop :=
  ∀ n, P10885850691799245755.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P14939620758074028005

`filter[A017257(3*n), A302777(#)]`
-/

namespace A141953.P14939620758074028005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141953.P14939620758074028005

namespace A141953

/-- `filter[A017257(3*n), A302777(#)]` -/
def P14939620758074028005.Spec : Prop :=
  ∀ n, P14939620758074028005.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P6277317360919372506

`filter[A017257(3*n), A323152(#)]`
-/

namespace A141953.P6277317360919372506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141953.P6277317360919372506

namespace A141953

/-- `filter[A017257(3*n), A323152(#)]` -/
def P6277317360919372506.Spec : Prop :=
  ∀ n, P6277317360919372506.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P12961096985131212404

`filter[A017257(3*n), A323153(#)]`
-/

namespace A141953.P12961096985131212404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141953.P12961096985131212404

namespace A141953

/-- `filter[A017257(3*n), A323153(#)]` -/
def P12961096985131212404.Spec : Prop :=
  ∀ n, P12961096985131212404.a n = A141953 (n + 1)

end A141953

/-! ## A141953.P10214915198014835571

`∩[A061242(n+1), A312969(n)]`
-/

namespace A141953.P10214915198014835571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141953.P10214915198014835571

namespace A141953

/-- `∩[A061242(n+1), A312969(n)]` -/
def P10214915198014835571.Spec : Prop :=
  ∀ n, (P10214915198014835571.a n : ℤ) = A141953 (n + 1)

end A141953

/-! ## A141953.P13931217489817757919

`∩[A007612(n+1), A061242(n+1)]`
-/

namespace A141953.P13931217489817757919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141953.P13931217489817757919

namespace A141953

/-- `∩[A007612(n+1), A061242(n+1)]` -/
def P13931217489817757919.Spec : Prop :=
  ∀ n, (P13931217489817757919.a n : ℤ) = A141953 (n + 1)

end A141953

/-! ## A141953.P13174641717588861334

`∩[A061242(n+1), A312909(n)-2]`
-/

namespace A141953.P13174641717588861334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141953.P13174641717588861334

namespace A141953

/-- `∩[A061242(n+1), A312909(n)-2]` -/
def P13174641717588861334.Spec : Prop :=
  ∀ n, (P13174641717588861334.a n : ℤ) = A141953 (n + 1)

end A141953

/-! ## A141953.P13689229265778547974

`∩[A016084(n+1)-2, A061242(n+1)]`
-/

namespace A141953.P13689229265778547974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141953.P13689229265778547974

namespace A141953

/-- `∩[A016084(n+1)-2, A061242(n+1)]` -/
def P13689229265778547974.Spec : Prop :=
  ∀ n, (P13689229265778547974.a n : ℤ) = A141953 (n + 1)

end A141953

/-! ## A141953.P12788884722101762272

`or(1, p?[A016789(A017185(n))])`
-/

namespace A141953.P12788884722101762272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141953.P12788884722101762272

namespace A141953

/-- `or(1, p?[A016789(A017185(n))])` -/
def P12788884722101762272.Spec : Prop :=
  ∀ n, P12788884722101762272.a n = A141953 (n + 1)

end A141953

/-!
# A141954: Primes congruent to 10 mod 27.

The programs for A141954, the canonical program `A141954.P18220534221732778019` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141954 has offset 1).

The definition of A141954 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141954.anchor (n : ℕ) (hn : 1 ≤ n) : A141954 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 10) (n - 1) : ℤ)` in `Proof.A141.A141954`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141954.P18220534221732778019

`p?[27*n+10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141954

/-- `p?[27*n+10]` -/
def P18220534221732778019.Spec : Prop :=
  ∀ n, (P18220534221732778019.a n : ℤ) = A141954 (n + 1)

theorem P18220534221732778019.correct : P18220534221732778019.Spec := by
  intro n
  simp only [A141954, Nat.add_sub_cancel]

end A141954

/-! ## A141954.P13332486515242135989

`A000027(p?[A154266(n)-2])`
-/

namespace A141954.P13332486515242135989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141954.P13332486515242135989

namespace A141954

/-- `A000027(p?[A154266(n)-2])` -/
def P13332486515242135989.Spec : Prop :=
  ∀ n, P13332486515242135989.a n = A141954 (n + 1)

end A141954

/-! ## A141954.P10791765435663245116

`record[p?[A161705(A014682(n))]]`
-/

namespace A141954.P10791765435663245116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A014682 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141954.P10791765435663245116

namespace A141954

/-- `record[p?[A161705(A014682(n))]]` -/
def P10791765435663245116.Spec : Prop :=
  ∀ n, P10791765435663245116.a n = A141954 (n + 1)

end A141954

/-! ## A141954.P17928212820072675858

`record[A006530(6*3*(3*n+2)+1)]`
-/

namespace A141954.P17928212820072675858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * (3 * (3 * n + 2)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141954.P17928212820072675858

namespace A141954

/-- `record[A006530(6*3*(3*n+2)+1)]` -/
def P17928212820072675858.Spec : Prop :=
  ∀ n, P17928212820072675858.a n = A141954 (n + 1)

end A141954

/-! ## A141954.P7221721173567760963

`record[A020639(A305068(n+1)+1)]`
-/

namespace A141954.P7221721173567760963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141954.P7221721173567760963

namespace A141954

/-- `record[A020639(A305068(n+1)+1)]` -/
def P7221721173567760963.Spec : Prop :=
  ∀ n, P7221721173567760963.a n = A141954 (n + 1)

end A141954

/-! ## A141954.P3053878808893236643

`record[A020639(A154266(n+1)-2)]`
-/

namespace A141954.P3053878808893236643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154266 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141954.P3053878808893236643

namespace A141954

/-- `record[A020639(A154266(n+1)-2)]` -/
def P3053878808893236643.Spec : Prop :=
  ∀ n, P3053878808893236643.a n = A141954 (n + 1)

end A141954

/-! ## A141954.P14713631030782598747

`record[A020639(Δ[A000567(2*n+1+n)]-2)]`
-/

namespace A141954.P14713631030782598747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (2 * n + 1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141954.P14713631030782598747

namespace A141954

/-- `record[A020639(Δ[A000567(2*n+1+n)]-2)]` -/
def P14713631030782598747.Spec : Prop :=
  ∀ n, P14713631030782598747.a n = A141954 (n + 1)

end A141954

/-! ## A141954.P13181749591872272805

`∩[A079130(n+1), A301724(n)-1]`
-/

namespace A141954.P13181749591872272805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P13181749591872272805

namespace A141954

/-- `∩[A079130(n+1), A301724(n)-1]` -/
def P13181749591872272805.Spec : Prop :=
  ∀ n, (P13181749591872272805.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P1266984900330106485

`∩[A079130(n+1), A301726(n)-1]`
-/

namespace A141954.P1266984900330106485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P1266984900330106485

namespace A141954

/-- `∩[A079130(n+1), A301726(n)-1]` -/
def P1266984900330106485.Spec : Prop :=
  ∀ n, (P1266984900330106485.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P15274086002370129471

`∩[A301724(2*n+1)-1, A002476(n+2)]`
-/

namespace A141954.P15274086002370129471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P15274086002370129471

namespace A141954

/-- `∩[A301724(2*n+1)-1, A002476(n+2)]` -/
def P15274086002370129471.Spec : Prop :=
  ∀ n, (P15274086002370129471.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P9238176284306504207

`∩[A301724(2*n+1)-1, A007645(n+2)]`
-/

namespace A141954.P9238176284306504207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P9238176284306504207

namespace A141954

/-- `∩[A301724(2*n+1)-1, A007645(n+2)]` -/
def P9238176284306504207.Spec : Prop :=
  ∀ n, (P9238176284306504207.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P2118564233460682334

`∩[A301724(2*n+1)-1, A045331(n+2)]`
-/

namespace A141954.P2118564233460682334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P2118564233460682334

namespace A141954

/-- `∩[A301724(2*n+1)-1, A045331(n+2)]` -/
def P2118564233460682334.Spec : Prop :=
  ∀ n, (P2118564233460682334.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P14990795348408868288

`∩[A301724(2*n+1)-1, A045375(n+2)]`
-/

namespace A141954.P14990795348408868288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P14990795348408868288

namespace A141954

/-- `∩[A301724(2*n+1)-1, A045375(n+2)]` -/
def P14990795348408868288.Spec : Prop :=
  ∀ n, (P14990795348408868288.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P701538973010828614

`∩[A061237(n+1), A312909(n)]`
-/

namespace A141954.P701538973010828614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P701538973010828614

namespace A141954

/-- `∩[A061237(n+1), A312909(n)]` -/
def P701538973010828614.Spec : Prop :=
  ∀ n, (P701538973010828614.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P17623334742640038067

`∩[A016084(n+1), A061237(n+1)]`
-/

namespace A141954.P17623334742640038067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P17623334742640038067

namespace A141954

/-- `∩[A016084(n+1), A061237(n+1)]` -/
def P17623334742640038067.Spec : Prop :=
  ∀ n, (P17623334742640038067.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P9776055676068867008

`∩[A061237(n+1), A312969(n)+2]`
-/

namespace A141954.P9776055676068867008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P9776055676068867008

namespace A141954

/-- `∩[A061237(n+1), A312969(n)+2]` -/
def P9776055676068867008.Spec : Prop :=
  ∀ n, (P9776055676068867008.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P4693346810554442488

`∩[A301724(2*n+1)-A301724(n+1), A079131(n+2)]`
-/

namespace A141954.P4693346810554442488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) - A301724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141954.P4693346810554442488

namespace A141954

/-- `∩[A301724(2*n+1)-A301724(n+1), A079131(n+2)]` -/
def P4693346810554442488.Spec : Prop :=
  ∀ n, (P4693346810554442488.a n : ℤ) = A141954 (n + 1)

end A141954

/-! ## A141954.P9603566321907085719

`record[A051417(A124388(n))]`
-/

namespace A141954.P9603566321907085719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (A124388 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141954.P9603566321907085719

namespace A141954

/-- `record[A051417(A124388(n))]` -/
def P9603566321907085719.Spec : Prop :=
  ∀ n, P9603566321907085719.a n = A141954 (n + 1)

end A141954

/-!
# A141955: Primes congruent to 11 mod 27.

The programs for A141955, the canonical program `A141955.P16226930735419179402` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141955 has offset 1).

The definition of A141955 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141955.anchor (n : ℕ) (hn : 1 ≤ n) : A141955 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 11) (n - 1) : ℤ)` in `Proof.A141.A141955`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141955.P16226930735419179402

`p?[27*n+11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141955

/-- `p?[27*n+11]` -/
def P16226930735419179402.Spec : Prop :=
  ∀ n, (P16226930735419179402.a n : ℤ) = A141955 (n + 1)

theorem P16226930735419179402.correct : P16226930735419179402.Spec := by
  intro n
  simp only [A141955, Nat.add_sub_cancel]

end A141955

/-! ## A141955.P11870805112886833243

`∩[A269100(2*n)+n, A003627(n+2)]`
-/

namespace A141955.P11870805112886833243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P11870805112886833243

namespace A141955

/-- `∩[A269100(2*n)+n, A003627(n+2)]` -/
def P11870805112886833243.Spec : Prop :=
  ∀ n, (P11870805112886833243.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P13190311779571802974

`∩[A269100(2*n)+n, A007528(n+2)]`
-/

namespace A141955.P13190311779571802974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P13190311779571802974

namespace A141955

/-- `∩[A269100(2*n)+n, A007528(n+2)]` -/
def P13190311779571802974.Spec : Prop :=
  ∀ n, (P13190311779571802974.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P16348681745402247843

`∩[A269100(2*n)+n, A045309(n+2)]`
-/

namespace A141955.P16348681745402247843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P16348681745402247843

namespace A141955

/-- `∩[A269100(2*n)+n, A045309(n+2)]` -/
def P16348681745402247843.Spec : Prop :=
  ∀ n, (P16348681745402247843.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P2673322564074438999

`∩[A269100(2*n)+n, A045410(n+2)]`
-/

namespace A141955.P2673322564074438999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P2673322564074438999

namespace A141955

/-- `∩[A269100(2*n)+n, A045410(n+2)]` -/
def P2673322564074438999.Spec : Prop :=
  ∀ n, (P2673322564074438999.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P11545278688720831911

`∩[A269100(2*n)+n, A056955(n+2)]`
-/

namespace A141955.P11545278688720831911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P11545278688720831911

namespace A141955

/-- `∩[A269100(2*n)+n, A056955(n+2)]` -/
def P11545278688720831911.Spec : Prop :=
  ∀ n, (P11545278688720831911.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P17955032907865111729

`∩[A269100(2*n)+n, A000040(n+2)]`
-/

namespace A141955.P17955032907865111729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P17955032907865111729

namespace A141955

/-- `∩[A269100(2*n)+n, A000040(n+2)]` -/
def P17955032907865111729.Spec : Prop :=
  ∀ n, (P17955032907865111729.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P8923079559561020449

`∩[A269100(2*n)+n, A004139(n+2)]`
-/

namespace A141955.P8923079559561020449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P8923079559561020449

namespace A141955

/-- `∩[A269100(2*n)+n, A004139(n+2)]` -/
def P8923079559561020449.Spec : Prop :=
  ∀ n, (P8923079559561020449.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P5014784960730724416

`∩[A269100(2*n)+n, A006005(n+2)]`
-/

namespace A141955.P5014784960730724416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P5014784960730724416

namespace A141955

/-- `∩[A269100(2*n)+n, A006005(n+2)]` -/
def P5014784960730724416.Spec : Prop :=
  ∀ n, (P5014784960730724416.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P8043100357798582190

`∩[A269100(2*n)+n, A008578(n+2)]`
-/

namespace A141955.P8043100357798582190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P8043100357798582190

namespace A141955

/-- `∩[A269100(2*n)+n, A008578(n+2)]` -/
def P8043100357798582190.Spec : Prop :=
  ∀ n, (P8043100357798582190.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P14323759579092070480

`record[A020639(A154266(n)-1)]`
-/

namespace A141955.P14323759579092070480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154266 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141955.P14323759579092070480

namespace A141955

/-- `record[A020639(A154266(n)-1)]` -/
def P14323759579092070480.Spec : Prop :=
  ∀ n, P14323759579092070480.a n = A141955 (n + 1)

end A141955

/-! ## A141955.P8173408734120066933

`record[A020639(A139611(n)-n)]`
-/

namespace A141955.P8173408734120066933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141955.P8173408734120066933

namespace A141955

/-- `record[A020639(A139611(n)-n)]` -/
def P8173408734120066933.Spec : Prop :=
  ∀ n, P8173408734120066933.a n = A141955 (n + 1)

end A141955

/-! ## A141955.P7701255592892901741

`record[A020639(9*A260488(n+1)+2)]`
-/

namespace A141955.P7701255592892901741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * A260488 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141955.P7701255592892901741

namespace A141955

/-- `record[A020639(9*A260488(n+1)+2)]` -/
def P7701255592892901741.Spec : Prop :=
  ∀ n, P7701255592892901741.a n = A141955 (n + 1)

end A141955

/-! ## A141955.P11898583561540927727

`record[A020639(A159754(n+1)+2*(n+1))]`
-/

namespace A141955.P11898583561540927727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A159754 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141955.P11898583561540927727

namespace A141955

/-- `record[A020639(A159754(n+1)+2*(n+1))]` -/
def P11898583561540927727.Spec : Prop :=
  ∀ n, P11898583561540927727.a n = A141955 (n + 1)

end A141955

/-! ## A141955.P8705821308425089780

`∩[A061238(n+1), A301726(n)]`
-/

namespace A141955.P8705821308425089780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P8705821308425089780

namespace A141955

/-- `∩[A061238(n+1), A301726(n)]` -/
def P8705821308425089780.Spec : Prop :=
  ∀ n, (P8705821308425089780.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P609649573175473134

`∩[A301724(2*n)+1, A003627(n+2)]`
-/

namespace A141955.P609649573175473134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P609649573175473134

namespace A141955

/-- `∩[A301724(2*n)+1, A003627(n+2)]` -/
def P609649573175473134.Spec : Prop :=
  ∀ n, (P609649573175473134.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P17283843407590563177

`∩[A301724(2*n)+1, A007528(n+2)]`
-/

namespace A141955.P17283843407590563177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P17283843407590563177

namespace A141955

/-- `∩[A301724(2*n)+1, A007528(n+2)]` -/
def P17283843407590563177.Spec : Prop :=
  ∀ n, (P17283843407590563177.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P1875768202284066025

`∩[A301724(2*n)+1, A045309(n+2)]`
-/

namespace A141955.P1875768202284066025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P1875768202284066025

namespace A141955

/-- `∩[A301724(2*n)+1, A045309(n+2)]` -/
def P1875768202284066025.Spec : Prop :=
  ∀ n, (P1875768202284066025.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P17619034656585052442

`∩[A301724(2*n)+1, A045410(n+2)]`
-/

namespace A141955.P17619034656585052442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P17619034656585052442

namespace A141955

/-- `∩[A301724(2*n)+1, A045410(n+2)]` -/
def P17619034656585052442.Spec : Prop :=
  ∀ n, (P17619034656585052442.a n : ℤ) = A141955 (n + 1)

end A141955

/-! ## A141955.P9082563590777302921

`∩[A301724(2*n)+1, A056955(n+2)]`
-/

namespace A141955.P9082563590777302921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141955.P9082563590777302921

namespace A141955

/-- `∩[A301724(2*n)+1, A056955(n+2)]` -/
def P9082563590777302921.Spec : Prop :=
  ∀ n, (P9082563590777302921.a n : ℤ) = A141955 (n + 1)

end A141955

/-!
# A141956: Primes congruent to 13 mod 27.

The programs for A141956, the canonical program `A141956.P2481953049988150767` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141956 has offset 1).

The definition of A141956 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141956.anchor (n : ℕ) (hn : 1 ≤ n) : A141956 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 13) (n - 1) : ℤ)` in `Proof.A141.A141956`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141956.P2481953049988150767

`p?[3*9*n+13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141956

/-- `p?[3*9*n+13]` -/
def P2481953049988150767.Spec : Prop :=
  ∀ n, (P2481953049988150767.a n : ℤ) = A141956 (n + 1)

theorem P2481953049988150767.correct : P2481953049988150767.Spec := by
  intro n
  simp only [A141956, Nat.add_sub_cancel]

end A141956

/-! ## A141956.P10099851652571632140

`record[A020639(27*n+13)]`
-/

namespace A141956.P10099851652571632140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (27 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141956.P10099851652571632140

namespace A141956

/-- `record[A020639(27*n+13)]` -/
def P10099851652571632140.Spec : Prop :=
  ∀ n, P10099851652571632140.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P945702966575242778

`record[A006530(A154266(2*n)+1)]`
-/

namespace A141956.P945702966575242778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154266 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141956.P945702966575242778

namespace A141956

/-- `record[A006530(A154266(2*n)+1)]` -/
def P945702966575242778.Spec : Prop :=
  ∀ n, P945702966575242778.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P8066875807519725671

`record[A006530(A154267(2*n)-2)]`
-/

namespace A141956.P8066875807519725671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154267 (2 * n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141956.P8066875807519725671

namespace A141956

/-- `record[A006530(A154267(2*n)-2)]` -/
def P8066875807519725671.Spec : Prop :=
  ∀ n, P8066875807519725671.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P16051942544817745215

`record[A006530(A022284(2*n+1)-A022284(2*n))]`
-/

namespace A141956.P16051942544817745215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022284 (2 * n + 1) - A022284 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141956.P16051942544817745215

namespace A141956

/-- `record[A006530(A022284(2*n+1)-A022284(2*n))]` -/
def P16051942544817745215.Spec : Prop :=
  ∀ n, P16051942544817745215.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P9165328355465281641

`∩[A061239(n+1), A301726(n)+2]`
-/

namespace A141956.P9165328355465281641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P9165328355465281641

namespace A141956

/-- `∩[A061239(n+1), A301726(n)+2]` -/
def P9165328355465281641.Spec : Prop :=
  ∀ n, (P9165328355465281641.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P6206485001775911984

`∩[A079130(n+1), A301726(n)+2]`
-/

namespace A141956.P6206485001775911984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P6206485001775911984

namespace A141956

/-- `∩[A079130(n+1), A301726(n)+2]` -/
def P6206485001775911984.Spec : Prop :=
  ∀ n, (P6206485001775911984.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P8137385035285951208

`filter[A312941(3*n), A010051(#)]`
-/

namespace A141956.P8137385035285951208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141956.P8137385035285951208

namespace A141956

/-- `filter[A312941(3*n), A010051(#)]` -/
def P8137385035285951208.Spec : Prop :=
  ∀ n, P8137385035285951208.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P1670343346387519886

`filter[A312956(3*n), A010051(#)]`
-/

namespace A141956.P1670343346387519886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312956 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141956.P1670343346387519886

namespace A141956

/-- `filter[A312956(3*n), A010051(#)]` -/
def P1670343346387519886.Spec : Prop :=
  ∀ n, P1670343346387519886.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P16650906625651699850

`filter[A312941(3*n), A323153(#)]`
-/

namespace A141956.P16650906625651699850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141956.P16650906625651699850

namespace A141956

/-- `filter[A312941(3*n), A323153(#)]` -/
def P16650906625651699850.Spec : Prop :=
  ∀ n, P16650906625651699850.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P9633307414308469388

`filter[A312956(3*n), A323153(#)]`
-/

namespace A141956.P9633307414308469388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312956 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141956.P9633307414308469388

namespace A141956

/-- `filter[A312956(3*n), A323153(#)]` -/
def P9633307414308469388.Spec : Prop :=
  ∀ n, P9633307414308469388.a n = A141956 (n + 1)

end A141956

/-! ## A141956.P8160215355390272763

`∩[A002476(n+1), A312933(n)]`
-/

namespace A141956.P8160215355390272763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P8160215355390272763

namespace A141956

/-- `∩[A002476(n+1), A312933(n)]` -/
def P8160215355390272763.Spec : Prop :=
  ∀ n, (P8160215355390272763.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P9047938802432051573

`∩[A007645(n+1), A312933(n)]`
-/

namespace A141956.P9047938802432051573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P9047938802432051573

namespace A141956

/-- `∩[A007645(n+1), A312933(n)]` -/
def P9047938802432051573.Spec : Prop :=
  ∀ n, (P9047938802432051573.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P16733565602367344577

`∩[A045331(n+1), A312933(n)]`
-/

namespace A141956.P16733565602367344577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P16733565602367344577

namespace A141956

/-- `∩[A045331(n+1), A312933(n)]` -/
def P16733565602367344577.Spec : Prop :=
  ∀ n, (P16733565602367344577.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P6613695953748173220

`∩[A045375(n+1), A312933(n)]`
-/

namespace A141956.P6613695953748173220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P6613695953748173220

namespace A141956

/-- `∩[A045375(n+1), A312933(n)]` -/
def P6613695953748173220.Spec : Prop :=
  ∀ n, (P6613695953748173220.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P6599089300533513998

`∩[A061239(n+1), A312933(n)]`
-/

namespace A141956.P6599089300533513998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P6599089300533513998

namespace A141956

/-- `∩[A061239(n+1), A312933(n)]` -/
def P6599089300533513998.Spec : Prop :=
  ∀ n, (P6599089300533513998.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P3103125058008805823

`∩[A079130(n+1), A312933(n)]`
-/

namespace A141956.P3103125058008805823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P3103125058008805823

namespace A141956

/-- `∩[A079130(n+1), A312933(n)]` -/
def P3103125058008805823.Spec : Prop :=
  ∀ n, (P3103125058008805823.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P7332310282201857408

`∩[A079132(n+1), A312933(n)]`
-/

namespace A141956.P7332310282201857408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P7332310282201857408

namespace A141956

/-- `∩[A079132(n+1), A312933(n)]` -/
def P7332310282201857408.Spec : Prop :=
  ∀ n, (P7332310282201857408.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P16686411118340255051

`∩[A166849(n+1), A312933(n)]`
-/

namespace A141956.P16686411118340255051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P16686411118340255051

namespace A141956

/-- `∩[A166849(n+1), A312933(n)]` -/
def P16686411118340255051.Spec : Prop :=
  ∀ n, (P16686411118340255051.a n : ℤ) = A141956 (n + 1)

end A141956

/-! ## A141956.P10177701691842666722

`∩[A016084(n+1), A061239(n+1)]`
-/

namespace A141956.P10177701691842666722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141956.P10177701691842666722

namespace A141956

/-- `∩[A016084(n+1), A061239(n+1)]` -/
def P10177701691842666722.Spec : Prop :=
  ∀ n, (P10177701691842666722.a n : ℤ) = A141956 (n + 1)

end A141956

/-!
# A141957: Primes congruent to 14 mod 27.

The programs for A141957, the canonical program `A141957.P12027767071780574500` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141957 has offset 1).

The definition of A141957 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141957.anchor (n : ℕ) (hn : 1 ≤ n) : A141957 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 14) (n - 1) : ℤ)` in `Proof.A141.A141957`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141957.P12027767071780574500

`p?[3*9*n-13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141957

/-- `p?[3*9*n-13]` -/
def P12027767071780574500.Spec : Prop :=
  ∀ n, P12027767071780574500.a n = A141957 (n + 1)

theorem P12027767071780574500.correct : P12027767071780574500.Spec := by
  intro n
  simp only [A141957, Nat.add_sub_cancel]

end A141957

/-! ## A141957.P12935900377252245140

`or(1, p?[A188861(n+1)])`
-/

namespace A141957.P12935900377252245140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141957.P12935900377252245140

namespace A141957

/-- `or(1, p?[A188861(n+1)])` -/
def P12935900377252245140.Spec : Prop :=
  ∀ n, P12935900377252245140.a n = A141957 (n + 1)

end A141957

/-! ## A141957.P9573945643591377735

`∩[A061240(n+1), A188861(n+1)]`
-/

namespace A141957.P9573945643591377735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P9573945643591377735

namespace A141957

/-- `∩[A061240(n+1), A188861(n+1)]` -/
def P9573945643591377735.Spec : Prop :=
  ∀ n, (P9573945643591377735.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P13561252748705908549

`∩[A129806(n+1), A188861(n+1)]`
-/

namespace A141957.P13561252748705908549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P13561252748705908549

namespace A141957

/-- `∩[A129806(n+1), A188861(n+1)]` -/
def P13561252748705908549.Spec : Prop :=
  ∀ n, (P13561252748705908549.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P11489630747310893580

`∩[A188861(n+1), A246374(n+1)]`
-/

namespace A141957.P11489630747310893580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P11489630747310893580

namespace A141957

/-- `∩[A188861(n+1), A246374(n+1)]` -/
def P11489630747310893580.Spec : Prop :=
  ∀ n, (P11489630747310893580.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P10209255570577823632

`p?[A188861(n+1)]%A188821(n+1)`
-/

namespace A141957.P10209255570577823632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A188821 (n + 1))

end

end A141957.P10209255570577823632

namespace A141957

/-- `p?[A188861(n+1)]%A188821(n+1)` -/
def P10209255570577823632.Spec : Prop :=
  ∀ n, P10209255570577823632.a n = A141957 (n + 1)

end A141957

/-! ## A141957.P3042799473943085337

`or(1, p?[A022285(n+1)-A022285(n)])`
-/

namespace A141957.P3042799473943085337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 (n + 1) - A022285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141957.P3042799473943085337

namespace A141957

/-- `or(1, p?[A022285(n+1)-A022285(n)])` -/
def P3042799473943085337.Spec : Prop :=
  ∀ n, P3042799473943085337.a n = A141957 (n + 1)

end A141957

/-! ## A141957.P12090814828931908103

`∩[A003627(n+1), A188861(n+1)]`
-/

namespace A141957.P12090814828931908103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P12090814828931908103

namespace A141957

/-- `∩[A003627(n+1), A188861(n+1)]` -/
def P12090814828931908103.Spec : Prop :=
  ∀ n, (P12090814828931908103.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P10505842326670519610

`∩[A007528(n+1), A188861(n+1)]`
-/

namespace A141957.P10505842326670519610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P10505842326670519610

namespace A141957

/-- `∩[A007528(n+1), A188861(n+1)]` -/
def P10505842326670519610.Spec : Prop :=
  ∀ n, (P10505842326670519610.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P7360181833524543950

`∩[A045410(n+1), A188861(n+1)]`
-/

namespace A141957.P7360181833524543950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P7360181833524543950

namespace A141957

/-- `∩[A045410(n+1), A188861(n+1)]` -/
def P7360181833524543950.Spec : Prop :=
  ∀ n, (P7360181833524543950.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P8259260520908562585

`∩[A056955(n+1), A188861(n+1)]`
-/

namespace A141957.P8259260520908562585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P8259260520908562585

namespace A141957

/-- `∩[A056955(n+1), A188861(n+1)]` -/
def P8259260520908562585.Spec : Prop :=
  ∀ n, (P8259260520908562585.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P884110978696594100

`∩[A078403(n+1), A188861(n+1)]`
-/

namespace A141957.P884110978696594100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P884110978696594100

namespace A141957

/-- `∩[A078403(n+1), A188861(n+1)]` -/
def P884110978696594100.Spec : Prop :=
  ∀ n, (P884110978696594100.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P10871305320680543801

`∩[A079131(n+1), A188861(n+1)]`
-/

namespace A141957.P10871305320680543801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P10871305320680543801

namespace A141957

/-- `∩[A079131(n+1), A188861(n+1)]` -/
def P10871305320680543801.Spec : Prop :=
  ∀ n, (P10871305320680543801.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P724044335748142805

`∩[A045309(n+1), A188861(n+1)]`
-/

namespace A141957.P724044335748142805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P724044335748142805

namespace A141957

/-- `∩[A045309(n+1), A188861(n+1)]` -/
def P724044335748142805.Spec : Prop :=
  ∀ n, (P724044335748142805.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P882310200981708960

`∩[A188861(n+1), A320518(n+1)]`
-/

namespace A141957.P882310200981708960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P882310200981708960

namespace A141957

/-- `∩[A188861(n+1), A320518(n+1)]` -/
def P882310200981708960.Spec : Prop :=
  ∀ n, (P882310200981708960.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P8388341240863361968

`∩[A049596(n+1), A188861(n+1)]`
-/

namespace A141957.P8388341240863361968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P8388341240863361968

namespace A141957

/-- `∩[A049596(n+1), A188861(n+1)]` -/
def P8388341240863361968.Spec : Prop :=
  ∀ n, (P8388341240863361968.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P18356350305065707610

`∩[A164319(n+1), A188861(n+1)]`
-/

namespace A141957.P18356350305065707610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P18356350305065707610

namespace A141957

/-- `∩[A164319(n+1), A188861(n+1)]` -/
def P18356350305065707610.Spec : Prop :=
  ∀ n, (P18356350305065707610.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P15495415658942817679

`∩[A040087(n+1), A188861(n+1)]`
-/

namespace A141957.P15495415658942817679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P15495415658942817679

namespace A141957

/-- `∩[A040087(n+1), A188861(n+1)]` -/
def P15495415658942817679.Spec : Prop :=
  ∀ n, (P15495415658942817679.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P10141958487084234529

`∩[A040028(n+1), A188861(n+1)]`
-/

namespace A141957.P10141958487084234529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P10141958487084234529

namespace A141957

/-- `∩[A040028(n+1), A188861(n+1)]` -/
def P10141958487084234529.Spec : Prop :=
  ∀ n, (P10141958487084234529.a n : ℤ) = A141957 (n + 1)

end A141957

/-! ## A141957.P6399398504868535087

`∩[A040036(n+1), A188861(n+1)]`
-/

namespace A141957.P6399398504868535087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141957.P6399398504868535087

namespace A141957

/-- `∩[A040036(n+1), A188861(n+1)]` -/
def P6399398504868535087.Spec : Prop :=
  ∀ n, (P6399398504868535087.a n : ℤ) = A141957 (n + 1)

end A141957

/-!
# A141958: Primes congruent to 16 mod 27.

The programs for A141958, the canonical program `A141958.P4946978575266648834` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141958 has offset 1).

The definition of A141958 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141958.anchor (n : ℕ) (hn : 1 ≤ n) : A141958 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 16) (n - 1) : ℤ)` in `Proof.A141.A141958`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141958.P4946978575266648834

`p?[27*n-11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141958

/-- `p?[27*n-11]` -/
def P4946978575266648834.Spec : Prop :=
  ∀ n, P4946978575266648834.a n = A141958 (n + 1)

theorem P4946978575266648834.correct : P4946978575266648834.Spec := by
  intro n
  simp only [A141958, Nat.add_sub_cancel]

end A141958

/-! ## A141958.P806355983549565613

`∩[A079131(n+1), A188861(n+1)+2]`
-/

namespace A141958.P806355983549565613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188861 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P806355983549565613

namespace A141958

/-- `∩[A079131(n+1), A188861(n+1)+2]` -/
def P806355983549565613.Spec : Prop :=
  ∀ n, (P806355983549565613.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P2600860352734135040

`record[A006530(A154267(n+1)+1)]`
-/

namespace A141958.P2600860352734135040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154267 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P2600860352734135040

namespace A141958

/-- `record[A006530(A154267(n+1)+1)]` -/
def P2600860352734135040.Spec : Prop :=
  ∀ n, P2600860352734135040.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P2736514804518062319

`record[A020639(A154267(n+1)+1)]`
-/

namespace A141958.P2736514804518062319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154267 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P2736514804518062319

namespace A141958

/-- `record[A020639(A154267(n+1)+1)]` -/
def P2736514804518062319.Spec : Prop :=
  ∀ n, P2736514804518062319.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P10124416685256854617

`record[A006530(A124388(n+1)-2)]`
-/

namespace A141958.P10124416685256854617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124388 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P10124416685256854617

namespace A141958

/-- `record[A006530(A124388(n+1)-2)]` -/
def P10124416685256854617.Spec : Prop :=
  ∀ n, P10124416685256854617.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P11457773838332708963

`record[A020639(A124388(n+1)-2)]`
-/

namespace A141958.P11457773838332708963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124388 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P11457773838332708963

namespace A141958

/-- `record[A020639(A124388(n+1)-2)]` -/
def P11457773838332708963.Spec : Prop :=
  ∀ n, P11457773838332708963.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P6520200520256337085

`record[A006530(A188861(n+2)+2)]`
-/

namespace A141958.P6520200520256337085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A188861 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P6520200520256337085

namespace A141958

/-- `record[A006530(A188861(n+2)+2)]` -/
def P6520200520256337085.Spec : Prop :=
  ∀ n, P6520200520256337085.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P13867163872581207712

`record[A020639(A188861(n+2)+2)]`
-/

namespace A141958.P13867163872581207712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A188861 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P13867163872581207712

namespace A141958

/-- `record[A020639(A188861(n+2)+2)]` -/
def P13867163872581207712.Spec : Prop :=
  ∀ n, P13867163872581207712.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P16227228582801638858

`record[A006530(A017509(A016885(n))-n)]`
-/

namespace A141958.P16227228582801638858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017509 (A016885 n).toNat - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P16227228582801638858

namespace A141958

/-- `record[A006530(A017509(A016885(n))-n)]` -/
def P16227228582801638858.Spec : Prop :=
  ∀ n, P16227228582801638858.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P11088550385778468728

`record[p?[A265035(A014682(3*(n+1)))]]`
-/

namespace A141958.P11088550385778468728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (A014682 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P11088550385778468728

namespace A141958

/-- `record[p?[A265035(A014682(3*(n+1)))]]` -/
def P11088550385778468728.Spec : Prop :=
  ∀ n, P11088550385778468728.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P6357195218007714304

`∩[A061241(n+1), A301726(n)]`
-/

namespace A141958.P6357195218007714304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P6357195218007714304

namespace A141958

/-- `∩[A061241(n+1), A301726(n)]` -/
def P6357195218007714304.Spec : Prop :=
  ∀ n, (P6357195218007714304.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P4882138823194137893

`∩[A301724(2*n)-1, A002476(n+2)]`
-/

namespace A141958.P4882138823194137893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P4882138823194137893

namespace A141958

/-- `∩[A301724(2*n)-1, A002476(n+2)]` -/
def P4882138823194137893.Spec : Prop :=
  ∀ n, (P4882138823194137893.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P9270961968288292516

`∩[A301724(2*n)-1, A007645(n+2)]`
-/

namespace A141958.P9270961968288292516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P9270961968288292516

namespace A141958

/-- `∩[A301724(2*n)-1, A007645(n+2)]` -/
def P9270961968288292516.Spec : Prop :=
  ∀ n, (P9270961968288292516.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P9760781639870200197

`∩[A301724(2*n)-1, A045331(n+2)]`
-/

namespace A141958.P9760781639870200197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P9760781639870200197

namespace A141958

/-- `∩[A301724(2*n)-1, A045331(n+2)]` -/
def P9760781639870200197.Spec : Prop :=
  ∀ n, (P9760781639870200197.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P8746971806026212445

`∩[A301724(2*n)-1, A045375(n+2)]`
-/

namespace A141958.P8746971806026212445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P8746971806026212445

namespace A141958

/-- `∩[A301724(2*n)-1, A045375(n+2)]` -/
def P8746971806026212445.Spec : Prop :=
  ∀ n, (P8746971806026212445.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P10449535465580461397

`∩[A301724(2*n)-1, A079131(n+2)]`
-/

namespace A141958.P10449535465580461397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P10449535465580461397

namespace A141958

/-- `∩[A301724(2*n)-1, A079131(n+2)]` -/
def P10449535465580461397.Spec : Prop :=
  ∀ n, (P10449535465580461397.a n : ℤ) = A141958 (n + 1)

end A141958

/-! ## A141958.P220514772562773056

`record[A006530(27*(4*n+3)+5)]`
-/

namespace A141958.P220514772562773056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (27 * (4 * n + 3) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P220514772562773056

namespace A141958

/-- `record[A006530(27*(4*n+3)+5)]` -/
def P220514772562773056.Spec : Prop :=
  ∀ n, P220514772562773056.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P12446494143871362698

`record[A020639(A016885(A017485(n))-n)]`
-/

namespace A141958.P12446494143871362698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016885 (A017485 n).toNat - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141958.P12446494143871362698

namespace A141958

/-- `record[A020639(A016885(A017485(n))-n)]` -/
def P12446494143871362698.Spec : Prop :=
  ∀ n, P12446494143871362698.a n = A141958 (n + 1)

end A141958

/-! ## A141958.P7470852278851270980

`∩[A007612(n+1), A061241(n+1)]`
-/

namespace A141958.P7470852278851270980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141958.P7470852278851270980

namespace A141958

/-- `∩[A007612(n+1), A061241(n+1)]` -/
def P7470852278851270980.Spec : Prop :=
  ∀ n, (P7470852278851270980.a n : ℤ) = A141958 (n + 1)

end A141958

/-!
# A141959: Primes congruent to 17 mod 27.

The programs for A141959, the canonical program `A141959.P10885151236091760451` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141959 has offset 1).

The definition of A141959 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141959.anchor (n : ℕ) (hn : 1 ≤ n) : A141959 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 17) (n - 1) : ℤ)` in `Proof.A141.A141959`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141959.P10885151236091760451

`p?[3*9*n-10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141959

/-- `p?[3*9*n-10]` -/
def P10885151236091760451.Spec : Prop :=
  ∀ n, P10885151236091760451.a n = A141959 (n + 1)

theorem P10885151236091760451.correct : P10885151236091760451.Spec := by
  intro n
  simp only [A141959, Nat.add_sub_cancel]

end A141959

/-! ## A141959.P3095294492703526427

`∩[A127547(2*n+1)+n, A003627(n+2)]`
-/

namespace A141959.P3095294492703526427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141959.P3095294492703526427

namespace A141959

/-- `∩[A127547(2*n+1)+n, A003627(n+2)]` -/
def P3095294492703526427.Spec : Prop :=
  ∀ n, (P3095294492703526427.a n : ℤ) = A141959 (n + 1)

end A141959

/-! ## A141959.P2458413202992838244

`∩[A127547(2*n+1)+n, A007528(n+2)]`
-/

namespace A141959.P2458413202992838244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141959.P2458413202992838244

namespace A141959

/-- `∩[A127547(2*n+1)+n, A007528(n+2)]` -/
def P2458413202992838244.Spec : Prop :=
  ∀ n, (P2458413202992838244.a n : ℤ) = A141959 (n + 1)

end A141959

/-! ## A141959.P13128278765209883418

`∩[A127547(2*n+1)+n, A045309(n+2)]`
-/

namespace A141959.P13128278765209883418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141959.P13128278765209883418

namespace A141959

/-- `∩[A127547(2*n+1)+n, A045309(n+2)]` -/
def P13128278765209883418.Spec : Prop :=
  ∀ n, (P13128278765209883418.a n : ℤ) = A141959 (n + 1)

end A141959

/-! ## A141959.P14053903631375005540

`∩[A127547(2*n+1)+n, A045410(n+2)]`
-/

namespace A141959.P14053903631375005540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141959.P14053903631375005540

namespace A141959

/-- `∩[A127547(2*n+1)+n, A045410(n+2)]` -/
def P14053903631375005540.Spec : Prop :=
  ∀ n, (P14053903631375005540.a n : ℤ) = A141959 (n + 1)

end A141959

/-! ## A141959.P16586858117594545693

`∩[A127547(2*n+1)+n, A056955(n+2)]`
-/

namespace A141959.P16586858117594545693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141959.P16586858117594545693

namespace A141959

/-- `∩[A127547(2*n+1)+n, A056955(n+2)]` -/
def P16586858117594545693.Spec : Prop :=
  ∀ n, (P16586858117594545693.a n : ℤ) = A141959 (n + 1)

end A141959

/-! ## A141959.P10528600943972981675

`record[A006530(A124388(n)-1)]`
-/

namespace A141959.P10528600943972981675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124388 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P10528600943972981675

namespace A141959

/-- `record[A006530(A124388(n)-1)]` -/
def P10528600943972981675.Spec : Prop :=
  ∀ n, P10528600943972981675.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P9532926132310165303

`record[A020639(A124388(n)-1)]`
-/

namespace A141959.P9532926132310165303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124388 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P9532926132310165303

namespace A141959

/-- `record[A020639(A124388(n)-1)]` -/
def P9532926132310165303.Spec : Prop :=
  ∀ n, P9532926132310165303.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P7836045976476374815

`record[A006530(A154267(n)+2)]`
-/

namespace A141959.P7836045976476374815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154267 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P7836045976476374815

namespace A141959

/-- `record[A006530(A154267(n)+2)]` -/
def P7836045976476374815.Spec : Prop :=
  ∀ n, P7836045976476374815.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P13963865724287830008

`record[A020639(A154267(n)+2)]`
-/

namespace A141959.P13963865724287830008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154267 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P13963865724287830008

namespace A141959

/-- `record[A020639(A154267(n)+2)]` -/
def P13963865724287830008.Spec : Prop :=
  ∀ n, P13963865724287830008.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P11779166414320792306

`record[A006530(9*A016789(n)-1)]`
-/

namespace A141959.P11779166414320792306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * A016789 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P11779166414320792306

namespace A141959

/-- `record[A006530(9*A016789(n)-1)]` -/
def P11779166414320792306.Spec : Prop :=
  ∀ n, P11779166414320792306.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P15877863087017448524

`filter[A239129(3*n+1), A010051(#)]`
-/

namespace A141959.P15877863087017448524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141959.P15877863087017448524

namespace A141959

/-- `filter[A239129(3*n+1), A010051(#)]` -/
def P15877863087017448524.Spec : Prop :=
  ∀ n, P15877863087017448524.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P15770411836356953175

`filter[A239129(3*n+1), A355937(#)]`
-/

namespace A141959.P15770411836356953175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141959.P15770411836356953175

namespace A141959

/-- `filter[A239129(3*n+1), A355937(#)]` -/
def P15770411836356953175.Spec : Prop :=
  ∀ n, P15770411836356953175.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P12294216828757907995

`filter[A239129(3*n+1), A365716(#)]`
-/

namespace A141959.P12294216828757907995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A141959.P12294216828757907995

namespace A141959

/-- `filter[A239129(3*n+1), A365716(#)]` -/
def P12294216828757907995.Spec : Prop :=
  ∀ n, P12294216828757907995.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P476846432755650103

`record[A006530(A174029(2*n+1)-1)]`
-/

namespace A141959.P476846432755650103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A174029 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P476846432755650103

namespace A141959

/-- `record[A006530(A174029(2*n+1)-1)]` -/
def P476846432755650103.Spec : Prop :=
  ∀ n, P476846432755650103.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P4567910308599726990

`record[A006530(9*(A016777(n)+1)-1)]`
-/

namespace A141959.P4567910308599726990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * (A016777 n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P4567910308599726990

namespace A141959

/-- `record[A006530(9*(A016777(n)+1)-1)]` -/
def P4567910308599726990.Spec : Prop :=
  ∀ n, P4567910308599726990.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P15408103423516627143

`record[A006530(A127547(2*n+1)+n)]`
-/

namespace A141959.P15408103423516627143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A127547 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P15408103423516627143

namespace A141959

/-- `record[A006530(A127547(2*n+1)+n)]` -/
def P15408103423516627143.Spec : Prop :=
  ∀ n, P15408103423516627143.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P752501348210769497

`record[A020639(A127547(2*n+1)+n)]`
-/

namespace A141959.P752501348210769497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A127547 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P752501348210769497

namespace A141959

/-- `record[A020639(A127547(2*n+1)+n)]` -/
def P752501348210769497.Spec : Prop :=
  ∀ n, P752501348210769497.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P10570586637323986393

`record[A006530(A017209(2*n)+A017209(n+1))]`
-/

namespace A141959.P10570586637323986393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017209 (2 * n) + A017209 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141959.P10570586637323986393

namespace A141959

/-- `record[A006530(A017209(2*n)+A017209(n+1))]` -/
def P10570586637323986393.Spec : Prop :=
  ∀ n, P10570586637323986393.a n = A141959 (n + 1)

end A141959

/-! ## A141959.P15886470933348025846

`filter[A239129(3*n+1), A302777(#)]`
-/

namespace A141959.P15886470933348025846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141959.P15886470933348025846

namespace A141959

/-- `filter[A239129(3*n+1), A302777(#)]` -/
def P15886470933348025846.Spec : Prop :=
  ∀ n, P15886470933348025846.a n = A141959 (n + 1)

end A141959

/-!
# A141960: Primes congruent to 19 mod 27.

The programs for A141960, the canonical program `A141960.P4162467210023989627` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141960 has offset 1).

The definition of A141960 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141960.anchor (n : ℕ) (hn : 1 ≤ n) : A141960 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 19) (n - 1) : ℤ)` in `Proof.A141.A141960`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141960.P4162467210023989627

`p?[27*n-8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141960

/-- `p?[27*n-8]` -/
def P4162467210023989627.Spec : Prop :=
  ∀ n, P4162467210023989627.a n = A141960 (n + 1)

theorem P4162467210023989627.correct : P4162467210023989627.Spec := by
  intro n
  simp only [A141960, Nat.add_sub_cancel]

end A141960

/-! ## A141960.P8488931794354973908

`∩[A186113(2*n+1)+n, A002476(n+2)]`
-/

namespace A141960.P8488931794354973908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P8488931794354973908

namespace A141960

/-- `∩[A186113(2*n+1)+n, A002476(n+2)]` -/
def P8488931794354973908.Spec : Prop :=
  ∀ n, (P8488931794354973908.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P10221128311790937186

`∩[A186113(2*n+1)+n, A007645(n+2)]`
-/

namespace A141960.P10221128311790937186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P10221128311790937186

namespace A141960

/-- `∩[A186113(2*n+1)+n, A007645(n+2)]` -/
def P10221128311790937186.Spec : Prop :=
  ∀ n, (P10221128311790937186.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P6364430677960645410

`∩[A186113(2*n+1)+n, A045331(n+2)]`
-/

namespace A141960.P6364430677960645410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P6364430677960645410

namespace A141960

/-- `∩[A186113(2*n+1)+n, A045331(n+2)]` -/
def P6364430677960645410.Spec : Prop :=
  ∀ n, (P6364430677960645410.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P15746167306961291081

`∩[A186113(2*n+1)+n, A045375(n+2)]`
-/

namespace A141960.P15746167306961291081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P15746167306961291081

namespace A141960

/-- `∩[A186113(2*n+1)+n, A045375(n+2)]` -/
def P15746167306961291081.Spec : Prop :=
  ∀ n, (P15746167306961291081.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P6881792383754196410

`∩[A186113(2*n+1)+n, A123365(n+2)]`
-/

namespace A141960.P6881792383754196410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P6881792383754196410

namespace A141960

/-- `∩[A186113(2*n+1)+n, A123365(n+2)]` -/
def P6881792383754196410.Spec : Prop :=
  ∀ n, (P6881792383754196410.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P1862180370682785323

`record[A020639(9*(3*n+2)+1)]`
-/

namespace A141960.P1862180370682785323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * (3 * n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141960.P1862180370682785323

namespace A141960

/-- `record[A020639(9*(3*n+2)+1)]` -/
def P1862180370682785323.Spec : Prop :=
  ∀ n, P1862180370682785323.a n = A141960 (n + 1)

end A141960

/-! ## A141960.P5431600779964997572

`record[A006530(18*(3*n+1)+1)]`
-/

namespace A141960.P5431600779964997572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (18 * (3 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141960.P5431600779964997572

namespace A141960

/-- `record[A006530(18*(3*n+1)+1)]` -/
def P5431600779964997572.Spec : Prop :=
  ∀ n, P5431600779964997572.a n = A141960 (n + 1)

end A141960

/-! ## A141960.P2603524182072702243

`∩[A061237(n+1), A312969(n)]`
-/

namespace A141960.P2603524182072702243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P2603524182072702243

namespace A141960

/-- `∩[A061237(n+1), A312969(n)]` -/
def P2603524182072702243.Spec : Prop :=
  ∀ n, (P2603524182072702243.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P2494064834232887697

`∩[A061237(n+1), A312909(n)+2]`
-/

namespace A141960.P2494064834232887697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P2494064834232887697

namespace A141960

/-- `∩[A061237(n+1), A312909(n)+2]` -/
def P2494064834232887697.Spec : Prop :=
  ∀ n, (P2494064834232887697.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P2496849234932498236

`∩[A016084(n+1)+2, A061237(n+1)]`
-/

namespace A141960.P2496849234932498236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141960.P2496849234932498236

namespace A141960

/-- `∩[A016084(n+1)+2, A061237(n+1)]` -/
def P2496849234932498236.Spec : Prop :=
  ∀ n, (P2496849234932498236.a n : ℤ) = A141960 (n + 1)

end A141960

/-! ## A141960.P13404213945857567225

`or(1, p?[A016777(6*A016777(n))])`
-/

namespace A141960.P13404213945857567225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (6 * A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141960.P13404213945857567225

namespace A141960

/-- `or(1, p?[A016777(6*A016777(n))])` -/
def P13404213945857567225.Spec : Prop :=
  ∀ n, P13404213945857567225.a n = A141960 (n + 1)

end A141960

/-! ## A141960.P15795652134910538493

`record[A051417(A124388(n)-9)]`
-/

namespace A141960.P15795652134910538493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (A124388 n - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141960.P15795652134910538493

namespace A141960

/-- `record[A051417(A124388(n)-9)]` -/
def P15795652134910538493.Spec : Prop :=
  ∀ n, P15795652134910538493.a n = A141960 (n + 1)

end A141960

/-! ## A141960.P2307237211246691448

`record[A051417(A124388(2*n)/2)]`
-/

namespace A141960.P2307237211246691448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (SequenceMachineLib.roundAway ((A124388 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141960.P2307237211246691448

namespace A141960

/-- `record[A051417(A124388(2*n)/2)]` -/
def P2307237211246691448.Spec : Prop :=
  ∀ n, P2307237211246691448.a n = A141960 (n + 1)

end A141960

/-!
# A141961: Primes congruent to 20 mod 27.

The programs for A141961, the canonical program `A141961.P17627897798866787358` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141961 has offset 1).

The definition of A141961 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141961.anchor (n : ℕ) (hn : 1 ≤ n) : A141961 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 20) (n - 1) : ℤ)` in `Proof.A141.A141961`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141961.P17627897798866787358

`p?[27*n-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141961

/-- `p?[27*n-7]` -/
def P17627897798866787358.Spec : Prop :=
  ∀ n, P17627897798866787358.a n = A141961 (n + 1)

theorem P17627897798866787358.correct : P17627897798866787358.Spec := by
  intro n
  simp only [A141961, Nat.add_sub_cancel]

end A141961

/-! ## A141961.P1788409175682228739

`∩[A007528(n+1), A063321(n+2)-2]`
-/

namespace A141961.P1788409175682228739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P1788409175682228739

namespace A141961

/-- `∩[A007528(n+1), A063321(n+2)-2]` -/
def P1788409175682228739.Spec : Prop :=
  ∀ n, (P1788409175682228739.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P16574190130567310374

`∩[A003627(n+1), A063321(n+2)-2]`
-/

namespace A141961.P16574190130567310374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P16574190130567310374

namespace A141961

/-- `∩[A003627(n+1), A063321(n+2)-2]` -/
def P16574190130567310374.Spec : Prop :=
  ∀ n, (P16574190130567310374.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P2557842549018516749

`∩[A045309(n+1), A063321(n+2)-2]`
-/

namespace A141961.P2557842549018516749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P2557842549018516749

namespace A141961

/-- `∩[A045309(n+1), A063321(n+2)-2]` -/
def P2557842549018516749.Spec : Prop :=
  ∀ n, (P2557842549018516749.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P9462378598265430105

`∩[A045410(n+1), A063321(n+2)-2]`
-/

namespace A141961.P9462378598265430105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P9462378598265430105

namespace A141961

/-- `∩[A045410(n+1), A063321(n+2)-2]` -/
def P9462378598265430105.Spec : Prop :=
  ∀ n, (P9462378598265430105.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P3851406750493739874

`∩[A056955(n+1), A063321(n+2)-2]`
-/

namespace A141961.P3851406750493739874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P3851406750493739874

namespace A141961

/-- `∩[A056955(n+1), A063321(n+2)-2]` -/
def P3851406750493739874.Spec : Prop :=
  ∀ n, (P3851406750493739874.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P5778756784317720414

`∩[A166849(n+1), A063321(n+2)-2]`
-/

namespace A141961.P5778756784317720414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P5778756784317720414

namespace A141961

/-- `∩[A166849(n+1), A063321(n+2)-2]` -/
def P5778756784317720414.Spec : Prop :=
  ∀ n, (P5778756784317720414.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P4713447856516663977

`∩[A126980(2*n)-n, A061238(n+2)]`
-/

namespace A141961.P4713447856516663977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P4713447856516663977

namespace A141961

/-- `∩[A126980(2*n)-n, A061238(n+2)]` -/
def P4713447856516663977.Spec : Prop :=
  ∀ n, (P4713447856516663977.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P10585091555945551535

`∩[A269044(2*n+1)+n, A003627(n+2)]`
-/

namespace A141961.P10585091555945551535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P10585091555945551535

namespace A141961

/-- `∩[A269044(2*n+1)+n, A003627(n+2)]` -/
def P10585091555945551535.Spec : Prop :=
  ∀ n, (P10585091555945551535.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P11257826330219606264

`∩[A269044(2*n+1)+n, A007528(n+2)]`
-/

namespace A141961.P11257826330219606264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P11257826330219606264

namespace A141961

/-- `∩[A269044(2*n+1)+n, A007528(n+2)]` -/
def P11257826330219606264.Spec : Prop :=
  ∀ n, (P11257826330219606264.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P12308177677103425074

`∩[A269044(2*n+1)+n, A045309(n+2)]`
-/

namespace A141961.P12308177677103425074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P12308177677103425074

namespace A141961

/-- `∩[A269044(2*n+1)+n, A045309(n+2)]` -/
def P12308177677103425074.Spec : Prop :=
  ∀ n, (P12308177677103425074.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P4315579871407480819

`∩[A269044(2*n+1)+n, A045410(n+2)]`
-/

namespace A141961.P4315579871407480819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P4315579871407480819

namespace A141961

/-- `∩[A269044(2*n+1)+n, A045410(n+2)]` -/
def P4315579871407480819.Spec : Prop :=
  ∀ n, (P4315579871407480819.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P17298046533696513394

`∩[A269044(2*n+1)+n, A056955(n+2)]`
-/

namespace A141961.P17298046533696513394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P17298046533696513394

namespace A141961

/-- `∩[A269044(2*n+1)+n, A056955(n+2)]` -/
def P17298046533696513394.Spec : Prop :=
  ∀ n, (P17298046533696513394.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P12042598510103061163

`record[A006530(54*(n+1)-7)]`
-/

namespace A141961.P12042598510103061163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (54 * (n + 1) - 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141961.P12042598510103061163

namespace A141961

/-- `record[A006530(54*(n+1)-7)]` -/
def P12042598510103061163.Spec : Prop :=
  ∀ n, P12042598510103061163.a n = A141961 (n + 1)

end A141961

/-! ## A141961.P2293141303088161656

`A001414(p?[A124388(n)+2])`
-/

namespace A141961.P2293141303088161656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141961.P2293141303088161656

namespace A141961

/-- `A001414(p?[A124388(n)+2])` -/
def P2293141303088161656.Spec : Prop :=
  ∀ n, P2293141303088161656.a n = A141961 (n + 1)

end A141961

/-! ## A141961.P11387535295809768448

`record[A020639(A124388(n+1)+2)]`
-/

namespace A141961.P11387535295809768448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124388 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141961.P11387535295809768448

namespace A141961

/-- `record[A020639(A124388(n+1)+2)]` -/
def P11387535295809768448.Spec : Prop :=
  ∀ n, P11387535295809768448.a n = A141961 (n + 1)

end A141961

/-! ## A141961.P9023685168504915498

`record[A020639(9*A016969(n)+2)]`
-/

namespace A141961.P9023685168504915498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * A016969 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141961.P9023685168504915498

namespace A141961

/-- `record[A020639(9*A016969(n)+2)]` -/
def P9023685168504915498.Spec : Prop :=
  ∀ n, P9023685168504915498.a n = A141961 (n + 1)

end A141961

/-! ## A141961.P15209814467991150495

`record[A020639(A016969(A017353(n)-n))]`
-/

namespace A141961.P15209814467991150495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016969 (A017353 n - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141961.P15209814467991150495

namespace A141961

/-- `record[A020639(A016969(A017353(n)-n))]` -/
def P15209814467991150495.Spec : Prop :=
  ∀ n, P15209814467991150495.a n = A141961 (n + 1)

end A141961

/-! ## A141961.P14364231131698340557

`∩[A061238(n+1), A301726(n)-2]`
-/

namespace A141961.P14364231131698340557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141961.P14364231131698340557

namespace A141961

/-- `∩[A061238(n+1), A301726(n)-2]` -/
def P14364231131698340557.Spec : Prop :=
  ∀ n, (P14364231131698340557.a n : ℤ) = A141961 (n + 1)

end A141961

/-! ## A141961.P4444871543527043958

`record[A051417(A124388(n)+5)]`
-/

namespace A141961.P4444871543527043958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (A124388 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141961.P4444871543527043958

namespace A141961

/-- `record[A051417(A124388(n)+5)]` -/
def P4444871543527043958.Spec : Prop :=
  ∀ n, P4444871543527043958.a n = A141961 (n + 1)

end A141961

/-!
# A141962: Primes congruent to 22 mod 27.

The programs for A141962, the canonical program `A141962.P10272407572504658729` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141962 has offset 1).

The definition of A141962 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141962.anchor (n : ℕ) (hn : 1 ≤ n) : A141962 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 22) (n - 1) : ℤ)` in `Proof.A141.A141962`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141962.P10272407572504658729

`p?[27*n-5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141962

/-- `p?[27*n-5]` -/
def P10272407572504658729.Spec : Prop :=
  ∀ n, P10272407572504658729.a n = A141962 (n + 1)

theorem P10272407572504658729.correct : P10272407572504658729.Spec := by
  intro n
  simp only [A141962, Nat.add_sub_cancel]

end A141962

/-! ## A141962.P3211990315366185354

`∩[A061239(n+1), A063321(n+2)]`
-/

namespace A141962.P3211990315366185354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P3211990315366185354

namespace A141962

/-- `∩[A061239(n+1), A063321(n+2)]` -/
def P3211990315366185354.Spec : Prop :=
  ∀ n, (P3211990315366185354.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P15671265152698326541

`∩[A079130(n+1), A063321(n+2)]`
-/

namespace A141962.P15671265152698326541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P15671265152698326541

namespace A141962

/-- `∩[A079130(n+1), A063321(n+2)]` -/
def P15671265152698326541.Spec : Prop :=
  ∀ n, (P15671265152698326541.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P11229971621660720499

`∩[A002476(n+1), A063321(n+2)]`
-/

namespace A141962.P11229971621660720499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P11229971621660720499

namespace A141962

/-- `∩[A002476(n+1), A063321(n+2)]` -/
def P11229971621660720499.Spec : Prop :=
  ∀ n, (P11229971621660720499.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P17211190660811286951

`∩[A007645(n+1), A063321(n+2)]`
-/

namespace A141962.P17211190660811286951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P17211190660811286951

namespace A141962

/-- `∩[A007645(n+1), A063321(n+2)]` -/
def P17211190660811286951.Spec : Prop :=
  ∀ n, (P17211190660811286951.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P7527598633683007683

`∩[A045331(n+1), A063321(n+2)]`
-/

namespace A141962.P7527598633683007683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P7527598633683007683

namespace A141962

/-- `∩[A045331(n+1), A063321(n+2)]` -/
def P7527598633683007683.Spec : Prop :=
  ∀ n, (P7527598633683007683.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P17512680562168550575

`∩[A045375(n+1), A063321(n+2)]`
-/

namespace A141962.P17512680562168550575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P17512680562168550575

namespace A141962

/-- `∩[A045375(n+1), A063321(n+2)]` -/
def P17512680562168550575.Spec : Prop :=
  ∀ n, (P17512680562168550575.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P9459352285521454298

`∩[A123365(n+1), A063321(n+2)]`
-/

namespace A141962.P9459352285521454298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P9459352285521454298

namespace A141962

/-- `∩[A123365(n+1), A063321(n+2)]` -/
def P9459352285521454298.Spec : Prop :=
  ∀ n, (P9459352285521454298.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P8213286246613956113

`∩[A279815(n+1), A063321(n+2)]`
-/

namespace A141962.P8213286246613956113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P8213286246613956113

namespace A141962

/-- `∩[A279815(n+1), A063321(n+2)]` -/
def P8213286246613956113.Spec : Prop :=
  ∀ n, (P8213286246613956113.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P17241847664707679648

`∩[A079132(n+1), A063321(n+2)]`
-/

namespace A141962.P17241847664707679648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P17241847664707679648

namespace A141962

/-- `∩[A079132(n+1), A063321(n+2)]` -/
def P17241847664707679648.Spec : Prop :=
  ∀ n, (P17241847664707679648.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P38225115131810494

`∩[A166849(n+1), A063321(n+2)]`
-/

namespace A141962.P38225115131810494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P38225115131810494

namespace A141962

/-- `∩[A166849(n+1), A063321(n+2)]` -/
def P38225115131810494.Spec : Prop :=
  ∀ n, (P38225115131810494.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P13237155289809882134

`record[A006530(6*A016789(A016789(n+1))+1)]`
-/

namespace A141962.P13237155289809882134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * A016789 (A016789 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141962.P13237155289809882134

namespace A141962

/-- `record[A006530(6*A016789(A016789(n+1))+1)]` -/
def P13237155289809882134.Spec : Prop :=
  ∀ n, P13237155289809882134.a n = A141962 (n + 1)

end A141962

/-! ## A141962.P18197350859207286874

`A007947(p?[A143988(6*(n+1))])`
-/

namespace A141962.P18197350859207286874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141962.P18197350859207286874

namespace A141962

/-- `A007947(p?[A143988(6*(n+1))])` -/
def P18197350859207286874.Spec : Prop :=
  ∀ n, P18197350859207286874.a n = A141962 (n + 1)

end A141962

/-! ## A141962.P184882669118904302

`record[A020639(A143988(6*(n+2)))]`
-/

namespace A141962.P184882669118904302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143988 (6 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141962.P184882669118904302

namespace A141962

/-- `record[A020639(A143988(6*(n+2)))]` -/
def P184882669118904302.Spec : Prop :=
  ∀ n, P184882669118904302.a n = A141962 (n + 1)

end A141962

/-! ## A141962.P7387156208536873194

`∩[A016084(2*n+1)+A016084(n+2), A061239(n+2)]`
-/

namespace A141962.P7387156208536873194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (2 * n + 1) + A016084 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P7387156208536873194

namespace A141962

/-- `∩[A016084(2*n+1)+A016084(n+2), A061239(n+2)]` -/
def P7387156208536873194.Spec : Prop :=
  ∀ n, (P7387156208536873194.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P16428226342660164196

`∩[A061239(n+1), A301726(n)]`
-/

namespace A141962.P16428226342660164196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P16428226342660164196

namespace A141962

/-- `∩[A061239(n+1), A301726(n)]` -/
def P16428226342660164196.Spec : Prop :=
  ∀ n, (P16428226342660164196.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P15108957372539314110

`∩[A079130(n+1), A301726(n)]`
-/

namespace A141962.P15108957372539314110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P15108957372539314110

namespace A141962

/-- `∩[A079130(n+1), A301726(n)]` -/
def P15108957372539314110.Spec : Prop :=
  ∀ n, (P15108957372539314110.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P6526887872014156579

`∩[A061239(n+1), A301724(n)+1]`
-/

namespace A141962.P6526887872014156579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P6526887872014156579

namespace A141962

/-- `∩[A061239(n+1), A301724(n)+1]` -/
def P6526887872014156579.Spec : Prop :=
  ∀ n, (P6526887872014156579.a n : ℤ) = A141962 (n + 1)

end A141962

/-! ## A141962.P11852197227305577222

`∩[A301724(2*n+1)+1, A079130(n+2)]`
-/

namespace A141962.P11852197227305577222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141962.P11852197227305577222

namespace A141962

/-- `∩[A301724(2*n+1)+1, A079130(n+2)]` -/
def P11852197227305577222.Spec : Prop :=
  ∀ n, (P11852197227305577222.a n : ℤ) = A141962 (n + 1)

end A141962

/-!
# A141963: Primes congruent to 23 mod 27.

The programs for A141963, the canonical program `A141963.P16602494174771806076` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141963 has offset 1).

The definition of A141963 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141963.anchor (n : ℕ) (hn : 1 ≤ n) : A141963 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 23) (n - 1) : ℤ)` in `Proof.A141.A141963`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141963.P16602494174771806076

`p?[27*n-4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141963

/-- `p?[27*n-4]` -/
def P16602494174771806076.Spec : Prop :=
  ∀ n, P16602494174771806076.a n = A141963 (n + 1)

theorem P16602494174771806076.correct : P16602494174771806076.Spec := by
  intro n
  simp only [A141963, Nat.add_sub_cancel]

end A141963

/-! ## A141963.P12137381041375021466

`∩[A061240(n+1), A063321(n+2)]`
-/

namespace A141963.P12137381041375021466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P12137381041375021466

namespace A141963

/-- `∩[A061240(n+1), A063321(n+2)]` -/
def P12137381041375021466.Spec : Prop :=
  ∀ n, (P12137381041375021466.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P1965748885187487808

`∩[A078403(n+1), A063321(n+2)]`
-/

namespace A141963.P1965748885187487808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P1965748885187487808

namespace A141963

/-- `∩[A078403(n+1), A063321(n+2)]` -/
def P1965748885187487808.Spec : Prop :=
  ∀ n, (P1965748885187487808.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P15359978954323698058

`∩[A079131(n+1), A063321(n+2)]`
-/

namespace A141963.P15359978954323698058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P15359978954323698058

namespace A141963

/-- `∩[A079131(n+1), A063321(n+2)]` -/
def P15359978954323698058.Spec : Prop :=
  ∀ n, (P15359978954323698058.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P9188854755738195012

`∩[A003627(n+1), A063321(n+2)]`
-/

namespace A141963.P9188854755738195012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P9188854755738195012

namespace A141963

/-- `∩[A003627(n+1), A063321(n+2)]` -/
def P9188854755738195012.Spec : Prop :=
  ∀ n, (P9188854755738195012.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P10796640420297642183

`∩[A007528(n+1), A063321(n+2)]`
-/

namespace A141963.P10796640420297642183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P10796640420297642183

namespace A141963

/-- `∩[A007528(n+1), A063321(n+2)]` -/
def P10796640420297642183.Spec : Prop :=
  ∀ n, (P10796640420297642183.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P1624261871729633272

`∩[A045309(n+1), A063321(n+2)]`
-/

namespace A141963.P1624261871729633272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P1624261871729633272

namespace A141963

/-- `∩[A045309(n+1), A063321(n+2)]` -/
def P1624261871729633272.Spec : Prop :=
  ∀ n, (P1624261871729633272.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P2990938449640784675

`∩[A045410(n+1), A063321(n+2)]`
-/

namespace A141963.P2990938449640784675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P2990938449640784675

namespace A141963

/-- `∩[A045410(n+1), A063321(n+2)]` -/
def P2990938449640784675.Spec : Prop :=
  ∀ n, (P2990938449640784675.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P9801647791313971623

`∩[A056955(n+1), A063321(n+2)]`
-/

namespace A141963.P9801647791313971623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P9801647791313971623

namespace A141963

/-- `∩[A056955(n+1), A063321(n+2)]` -/
def P9801647791313971623.Spec : Prop :=
  ∀ n, (P9801647791313971623.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P17790761514290513870

`∩[A017245(2*n)+A017245(n+1), A079131(n+2)]`
-/

namespace A141963.P17790761514290513870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n) + A017245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141963.P17790761514290513870

namespace A141963

/-- `∩[A017245(2*n)+A017245(n+1), A079131(n+2)]` -/
def P17790761514290513870.Spec : Prop :=
  ∀ n, (P17790761514290513870.a n : ℤ) = A141963 (n + 1)

end A141963

/-! ## A141963.P18066887848531370184

`record[A006530(27*(n+1)-4)]`
-/

namespace A141963.P18066887848531370184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (27 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141963.P18066887848531370184

namespace A141963

/-- `record[A006530(27*(n+1)-4)]` -/
def P18066887848531370184.Spec : Prop :=
  ∀ n, P18066887848531370184.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P14086760365639937304

`record[A020639(27*(n+1)-4)]`
-/

namespace A141963.P14086760365639937304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (27 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141963.P14086760365639937304

namespace A141963

/-- `record[A020639(27*(n+1)-4)]` -/
def P14086760365639937304.Spec : Prop :=
  ∀ n, P14086760365639937304.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P17945124727758169093

`filter[A063321(2*n+3), A010051(#)]`
-/

namespace A141963.P17945124727758169093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141963.P17945124727758169093

namespace A141963

/-- `filter[A063321(2*n+3), A010051(#)]` -/
def P17945124727758169093.Spec : Prop :=
  ∀ n, P17945124727758169093.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P15123198640296409331

`filter[A063321(2*n+3), A069513(#)]`
-/

namespace A141963.P15123198640296409331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A141963.P15123198640296409331

namespace A141963

/-- `filter[A063321(2*n+3), A069513(#)]` -/
def P15123198640296409331.Spec : Prop :=
  ∀ n, P15123198640296409331.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P15130006128711482583

`A000265(p?[A017221(2*n+n+2)])`
-/

namespace A141963.P15130006128711482583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141963.P15130006128711482583

namespace A141963

/-- `A000265(p?[A017221(2*n+n+2)])` -/
def P15130006128711482583.Spec : Prop :=
  ∀ n, P15130006128711482583.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P2586923312630516351

`filter[A063321(2*n+3), A257531(#)]`
-/

namespace A141963.P2586923312630516351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A141963.P2586923312630516351

namespace A141963

/-- `filter[A063321(2*n+3), A257531(#)]` -/
def P2586923312630516351.Spec : Prop :=
  ∀ n, P2586923312630516351.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P12653682978384961575

`filter[A063321(2*n+3), A174897(#)]`
-/

namespace A141963.P12653682978384961575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A141963.P12653682978384961575

namespace A141963

/-- `filter[A063321(2*n+3), A174897(#)]` -/
def P12653682978384961575.Spec : Prop :=
  ∀ n, P12653682978384961575.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P8831515983171805998

`filter[A063321(2*n+3), A211487(#)]`
-/

namespace A141963.P8831515983171805998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A141963.P8831515983171805998

namespace A141963

/-- `filter[A063321(2*n+3), A211487(#)]` -/
def P8831515983171805998.Spec : Prop :=
  ∀ n, P8831515983171805998.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P4598405811766267350

`filter[A063321(2*n+3), A302777(#)]`
-/

namespace A141963.P4598405811766267350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141963.P4598405811766267350

namespace A141963

/-- `filter[A063321(2*n+3), A302777(#)]` -/
def P4598405811766267350.Spec : Prop :=
  ∀ n, P4598405811766267350.a n = A141963 (n + 1)

end A141963

/-! ## A141963.P18307972545610334005

`filter[A063321(2*n+3), A323152(#)]`
-/

namespace A141963.P18307972545610334005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141963.P18307972545610334005

namespace A141963

/-- `filter[A063321(2*n+3), A323152(#)]` -/
def P18307972545610334005.Spec : Prop :=
  ∀ n, P18307972545610334005.a n = A141963 (n + 1)

end A141963

/-!
# A141964: Primes congruent to 25 mod 27.

The programs for A141964, the canonical program `A141964.P13218050565630564501` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141964 has offset 1).

The definition of A141964 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141964.anchor (n : ℕ) (hn : 1 ≤ n) : A141964 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 25) (n - 1) : ℤ)` in `Proof.A141.A141964`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141964.P13218050565630564501

`p?[27*n-2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141964

/-- `p?[27*n-2]` -/
def P13218050565630564501.Spec : Prop :=
  ∀ n, P13218050565630564501.a n = A141964 (n + 1)

theorem P13218050565630564501.correct : P13218050565630564501.Spec := by
  intro n
  simp only [A141964, Nat.add_sub_cancel]

end A141964

/-! ## A141964.P2374459699549314673

`or(1, p?[2*n+25*(n+1)])`
-/

namespace A141964.P2374459699549314673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 25 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141964.P2374459699549314673

namespace A141964

/-- `or(1, p?[2*n+25*(n+1)])` -/
def P2374459699549314673.Spec : Prop :=
  ∀ n, (P2374459699549314673.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P9952876242767571894

`∩[A002476(n+1), A063321(n+2)+2]`
-/

namespace A141964.P9952876242767571894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P9952876242767571894

namespace A141964

/-- `∩[A002476(n+1), A063321(n+2)+2]` -/
def P9952876242767571894.Spec : Prop :=
  ∀ n, (P9952876242767571894.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P17201194375153886346

`∩[A007645(n+1), A063321(n+2)+2]`
-/

namespace A141964.P17201194375153886346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P17201194375153886346

namespace A141964

/-- `∩[A007645(n+1), A063321(n+2)+2]` -/
def P17201194375153886346.Spec : Prop :=
  ∀ n, (P17201194375153886346.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P11670657033227835378

`∩[A045331(n+1), A063321(n+2)+2]`
-/

namespace A141964.P11670657033227835378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P11670657033227835378

namespace A141964

/-- `∩[A045331(n+1), A063321(n+2)+2]` -/
def P11670657033227835378.Spec : Prop :=
  ∀ n, (P11670657033227835378.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P12106051517628155835

`∩[A045375(n+1), A063321(n+2)+2]`
-/

namespace A141964.P12106051517628155835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P12106051517628155835

namespace A141964

/-- `∩[A045375(n+1), A063321(n+2)+2]` -/
def P12106051517628155835.Spec : Prop :=
  ∀ n, (P12106051517628155835.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P7791039761595486711

`∩[A279815(n+1), A063321(n+2)+2]`
-/

namespace A141964.P7791039761595486711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P7791039761595486711

namespace A141964

/-- `∩[A279815(n+1), A063321(n+2)+2]` -/
def P7791039761595486711.Spec : Prop :=
  ∀ n, (P7791039761595486711.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P3994104745212166323

`∩[A079131(n+1), A063321(n+2)+2]`
-/

namespace A141964.P3994104745212166323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063321 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P3994104745212166323

namespace A141964

/-- `∩[A079131(n+1), A063321(n+2)+2]` -/
def P3994104745212166323.Spec : Prop :=
  ∀ n, (P3994104745212166323.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P11263144451228265915

`A000027(p?[A019432(3*n)])`
-/

namespace A141964.P11263144451228265915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141964.P11263144451228265915

namespace A141964

/-- `A000027(p?[A019432(3*n)])` -/
def P11263144451228265915.Spec : Prop :=
  ∀ n, P11263144451228265915.a n = A141964 (n + 1)

end A141964

/-! ## A141964.P9528010245783401586

`A000007(A008864(n+1))+p?[A019432(3*n)]`
-/

namespace A141964.P9528010245783401586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008864 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141964.P9528010245783401586

namespace A141964

/-- `A000007(A008864(n+1))+p?[A019432(3*n)]` -/
def P9528010245783401586.Spec : Prop :=
  ∀ n, P9528010245783401586.a n = A141964 (n + 1)

end A141964

/-! ## A141964.P13461884649616930071

`∩[A002476(n+1), A056081(n+1)-1]`
-/

namespace A141964.P13461884649616930071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P13461884649616930071

namespace A141964

/-- `∩[A002476(n+1), A056081(n+1)-1]` -/
def P13461884649616930071.Spec : Prop :=
  ∀ n, (P13461884649616930071.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P7137437772808832123

`∩[A007645(n+1), A056081(n+1)-1]`
-/

namespace A141964.P7137437772808832123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P7137437772808832123

namespace A141964

/-- `∩[A007645(n+1), A056081(n+1)-1]` -/
def P7137437772808832123.Spec : Prop :=
  ∀ n, (P7137437772808832123.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P4283538482215514389

`∩[A045331(n+1), A056081(n+1)-1]`
-/

namespace A141964.P4283538482215514389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P4283538482215514389

namespace A141964

/-- `∩[A045331(n+1), A056081(n+1)-1]` -/
def P4283538482215514389.Spec : Prop :=
  ∀ n, (P4283538482215514389.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P13445032314306588625

`∩[A045375(n+1), A056081(n+1)-1]`
-/

namespace A141964.P13445032314306588625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P13445032314306588625

namespace A141964

/-- `∩[A045375(n+1), A056081(n+1)-1]` -/
def P13445032314306588625.Spec : Prop :=
  ∀ n, (P13445032314306588625.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P5760438643879328014

`∩[A056081(n+1)-1, A079131(n+1)]`
-/

namespace A141964.P5760438643879328014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P5760438643879328014

namespace A141964

/-- `∩[A056081(n+1)-1, A079131(n+1)]` -/
def P5760438643879328014.Spec : Prop :=
  ∀ n, (P5760438643879328014.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P4063027803203155977

`A000265(p?[2*A154266(n)+1])`
-/

namespace A141964.P4063027803203155977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141964.P4063027803203155977

namespace A141964

/-- `A000265(p?[2*A154266(n)+1])` -/
def P4063027803203155977.Spec : Prop :=
  ∀ n, P4063027803203155977.a n = A141964 (n + 1)

end A141964

/-! ## A141964.P5276977987618377044

`A007913(p?[2*A154266(n)+1])`
-/

namespace A141964.P5276977987618377044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141964.P5276977987618377044

namespace A141964

/-- `A007913(p?[2*A154266(n)+1])` -/
def P5276977987618377044.Spec : Prop :=
  ∀ n, P5276977987618377044.a n = A141964 (n + 1)

end A141964

/-! ## A141964.P16222880554470106335

`A000265(p?[25*A129756(n)+n])`
-/

namespace A141964.P16222880554470106335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A129756 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141964.P16222880554470106335

namespace A141964

/-- `A000265(p?[25*A129756(n)+n])` -/
def P16222880554470106335.Spec : Prop :=
  ∀ n, P16222880554470106335.a n = A141964 (n + 1)

end A141964

/-! ## A141964.P4905917212943935839

`∩[A002476(n+1), A301724(n)+2]`
-/

namespace A141964.P4905917212943935839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P4905917212943935839

namespace A141964

/-- `∩[A002476(n+1), A301724(n)+2]` -/
def P4905917212943935839.Spec : Prop :=
  ∀ n, (P4905917212943935839.a n : ℤ) = A141964 (n + 1)

end A141964

/-! ## A141964.P13372469371060235378

`∩[A045375(n+1), A301724(n)+2]`
-/

namespace A141964.P13372469371060235378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141964.P13372469371060235378

namespace A141964

/-- `∩[A045375(n+1), A301724(n)+2]` -/
def P13372469371060235378.Spec : Prop :=
  ∀ n, (P13372469371060235378.a n : ℤ) = A141964 (n + 1)

end A141964

/-!
# A141965: Primes congruent to 26 mod 27.

The programs for A141965, the canonical program `A141965.P1717643765959104100` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141965 has offset 1).

The definition of A141965 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141965.anchor (n : ℕ) (hn : 1 ≤ n) : A141965 n = (Nat.nth (fun p => p.Prime ∧ p % 27 = 26) (n - 1) : ℤ)` in `Proof.A141.A141965`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141965.P1717643765959104100

`p?[27*n-1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141965

/-- `p?[27*n-1]` -/
def P1717643765959104100.Spec : Prop :=
  ∀ n, P1717643765959104100.a n = A141965 (n + 1)

theorem P1717643765959104100.correct : P1717643765959104100.Spec := by
  intro n
  simp only [A141965, Nat.add_sub_cancel]

end A141965

/-! ## A141965.P168311391709567076

`or(1, p?[3*9*n+26])`
-/

namespace A141965.P168311391709567076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (9 * n) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141965.P168311391709567076

namespace A141965

/-- `or(1, p?[3*9*n+26])` -/
def P168311391709567076.Spec : Prop :=
  ∀ n, (P168311391709567076.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P3833273749075476301

`∩[A003627(n+1), A056081(n+1)]`
-/

namespace A141965.P3833273749075476301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P3833273749075476301

namespace A141965

/-- `∩[A003627(n+1), A056081(n+1)]` -/
def P3833273749075476301.Spec : Prop :=
  ∀ n, (P3833273749075476301.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P4780902442242778362

`∩[A007528(n+1), A056081(n+1)]`
-/

namespace A141965.P4780902442242778362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P4780902442242778362

namespace A141965

/-- `∩[A007528(n+1), A056081(n+1)]` -/
def P4780902442242778362.Spec : Prop :=
  ∀ n, (P4780902442242778362.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P7118761208742876222

`∩[A045309(n+1), A056081(n+1)]`
-/

namespace A141965.P7118761208742876222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P7118761208742876222

namespace A141965

/-- `∩[A045309(n+1), A056081(n+1)]` -/
def P7118761208742876222.Spec : Prop :=
  ∀ n, (P7118761208742876222.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P2487931413038242548

`∩[A045410(n+1), A056081(n+1)]`
-/

namespace A141965.P2487931413038242548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P2487931413038242548

namespace A141965

/-- `∩[A045410(n+1), A056081(n+1)]` -/
def P2487931413038242548.Spec : Prop :=
  ∀ n, (P2487931413038242548.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P8962301370885151173

`∩[A056081(n+1), A056955(n+1)]`
-/

namespace A141965.P8962301370885151173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P8962301370885151173

namespace A141965

/-- `∩[A056081(n+1), A056955(n+1)]` -/
def P8962301370885151173.Spec : Prop :=
  ∀ n, (P8962301370885151173.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P9723872045236400436

`∩[A056081(n+1), A061242(n+1)]`
-/

namespace A141965.P9723872045236400436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P9723872045236400436

namespace A141965

/-- `∩[A056081(n+1), A061242(n+1)]` -/
def P9723872045236400436.Spec : Prop :=
  ∀ n, (P9723872045236400436.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P16070222529938106391

`∩[A056081(n+1), A079132(n+1)]`
-/

namespace A141965.P16070222529938106391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P16070222529938106391

namespace A141965

/-- `∩[A056081(n+1), A079132(n+1)]` -/
def P16070222529938106391.Spec : Prop :=
  ∀ n, (P16070222529938106391.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P8446136628790331294

`record[A006530(54*(n+1)-1)]`
-/

namespace A141965.P8446136628790331294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (54 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141965.P8446136628790331294

namespace A141965

/-- `record[A006530(54*(n+1)-1)]` -/
def P8446136628790331294.Spec : Prop :=
  ∀ n, P8446136628790331294.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P15781966053326873751

`filter[A056081(2*(n+1)), A010051(#)]`
-/

namespace A141965.P15781966053326873751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141965.P15781966053326873751

namespace A141965

/-- `filter[A056081(2*(n+1)), A010051(#)]` -/
def P15781966053326873751.Spec : Prop :=
  ∀ n, P15781966053326873751.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P12583084640820965260

`filter[A056081(2*(n+1)), A355937(#)]`
-/

namespace A141965.P12583084640820965260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141965.P12583084640820965260

namespace A141965

/-- `filter[A056081(2*(n+1)), A355937(#)]` -/
def P12583084640820965260.Spec : Prop :=
  ∀ n, P12583084640820965260.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P9122289530973889107

`filter[A056081(2*(n+1)), A257531(#)]`
-/

namespace A141965.P9122289530973889107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A141965.P9122289530973889107

namespace A141965

/-- `filter[A056081(2*(n+1)), A257531(#)]` -/
def P9122289530973889107.Spec : Prop :=
  ∀ n, P9122289530973889107.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P13263799972867030803

`filter[A056081(2*(n+1)), A302777(#)]`
-/

namespace A141965.P13263799972867030803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141965.P13263799972867030803

namespace A141965

/-- `filter[A056081(2*(n+1)), A302777(#)]` -/
def P13263799972867030803.Spec : Prop :=
  ∀ n, P13263799972867030803.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P5215377854574553061

`filter[A056081(2*(n+1)), A323152(#)]`
-/

namespace A141965.P5215377854574553061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141965.P5215377854574553061

namespace A141965

/-- `filter[A056081(2*(n+1)), A323152(#)]` -/
def P5215377854574553061.Spec : Prop :=
  ∀ n, P5215377854574553061.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P10357838921455522137

`filter[A056081(2*(n+1)), A323153(#)]`
-/

namespace A141965.P10357838921455522137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141965.P10357838921455522137

namespace A141965

/-- `filter[A056081(2*(n+1)), A323153(#)]` -/
def P10357838921455522137.Spec : Prop :=
  ∀ n, P10357838921455522137.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P10851151123204127611

`filter[A056081(2*(n+1)), A351957(#)]`
-/

namespace A141965.P10851151123204127611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A141965.P10851151123204127611

namespace A141965

/-- `filter[A056081(2*(n+1)), A351957(#)]` -/
def P10851151123204127611.Spec : Prop :=
  ∀ n, P10851151123204127611.a n = A141965 (n + 1)

end A141965

/-! ## A141965.P11050196842046514878

`∩[A301724(2*n)-1, A003627(n+2)]`
-/

namespace A141965.P11050196842046514878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P11050196842046514878

namespace A141965

/-- `∩[A301724(2*n)-1, A003627(n+2)]` -/
def P11050196842046514878.Spec : Prop :=
  ∀ n, (P11050196842046514878.a n : ℤ) = A141965 (n + 1)

end A141965

/-! ## A141965.P5301872747463841758

`∩[A060472(n+1), A061242(n+1)]`
-/

namespace A141965.P5301872747463841758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141965.P5301872747463841758

namespace A141965

/-- `∩[A060472(n+1), A061242(n+1)]` -/
def P5301872747463841758.Spec : Prop :=
  ∀ n, (P5301872747463841758.a n : ℤ) = A141965 (n + 1)

end A141965

/-!
# A141966: Primes congruent to 3 mod 28.

The programs for A141966, the canonical program `A141966.P398058488216796074` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141966 has offset 1).

The definition of A141966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141966.P398058488216796074

`∪[A142642(n+1), A142654(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141966

/-- `∪[A142642(n+1), A142654(n+1)]` -/
def P398058488216796074.Spec : Prop :=
  ∀ n, (P398058488216796074.a n : ℤ) = A141966 (n + 1)

theorem P398058488216796074.correct : P398058488216796074.Spec := by
  intro n
  simp only [A141966, Nat.add_sub_cancel]

end A141966

/-! ## A141966.P8246032775886978805

`p?[28*n+3]`
-/

namespace A141966.P8246032775886978805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141966.P8246032775886978805

namespace A141966

/-- `p?[28*n+3]` -/
def P8246032775886978805.Spec : Prop :=
  ∀ n, (P8246032775886978805.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P3208733210184782295

`or(1, p?[or(3, 28*n)])`
-/

namespace A141966.P3208733210184782295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (28 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141966.P3208733210184782295

namespace A141966

/-- `or(1, p?[or(3, 28*n)])` -/
def P3208733210184782295.Spec : Prop :=
  ∀ n, (P3208733210184782295.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P16343340537989353389

`∩[A045437(n+1), A141173(n+1)]`
-/

namespace A141966.P16343340537989353389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P16343340537989353389

namespace A141966

/-- `∩[A045437(n+1), A141173(n+1)]` -/
def P16343340537989353389.Spec : Prop :=
  ∀ n, (P16343340537989353389.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P15573104356774838729

`∩[A004621(n+1), A141173(n+1)]`
-/

namespace A141966.P15573104356774838729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P15573104356774838729

namespace A141966

/-- `∩[A004621(n+1), A141173(n+1)]` -/
def P15573104356774838729.Spec : Prop :=
  ∀ n, (P15573104356774838729.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P7875365579165747910

`∩[A045343(n+1), A141173(n+1)]`
-/

namespace A141966.P7875365579165747910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P7875365579165747910

namespace A141966

/-- `∩[A045343(n+1), A141173(n+1)]` -/
def P7875365579165747910.Spec : Prop :=
  ∀ n, (P7875365579165747910.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P7595975614589815175

`∩[A045436(n+1), A141173(n+1)]`
-/

namespace A141966.P7595975614589815175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P7595975614589815175

namespace A141966

/-- `∩[A045436(n+1), A141173(n+1)]` -/
def P7595975614589815175.Spec : Prop :=
  ∀ n, (P7595975614589815175.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P419155258453039735

`∩[A045432(n+1), A141173(n+1)]`
-/

namespace A141966.P419155258453039735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P419155258453039735

namespace A141966

/-- `∩[A045432(n+1), A141173(n+1)]` -/
def P419155258453039735.Spec : Prop :=
  ∀ n, (P419155258453039735.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P10985137305767061015

`∩[A045424(n+1), A161714(n)+2]`
-/

namespace A141966.P10985137305767061015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P10985137305767061015

namespace A141966

/-- `∩[A045424(n+1), A161714(n)+2]` -/
def P10985137305767061015.Spec : Prop :=
  ∀ n, (P10985137305767061015.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P395872761655363722

`∩[A045436(n+1), A161714(n)+2]`
-/

namespace A141966.P395872761655363722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P395872761655363722

namespace A141966

/-- `∩[A045436(n+1), A161714(n)+2]` -/
def P395872761655363722.Spec : Prop :=
  ∀ n, (P395872761655363722.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P14770196118472818202

`∩[A004621(n+1), A040112(n+1)]`
-/

namespace A141966.P14770196118472818202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P14770196118472818202

namespace A141966

/-- `∩[A004621(n+1), A040112(n+1)]` -/
def P14770196118472818202.Spec : Prop :=
  ∀ n, (P14770196118472818202.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P12801407138953011189

`∩[A040112(n+1), A045437(n+1)]`
-/

namespace A141966.P12801407138953011189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P12801407138953011189

namespace A141966

/-- `∩[A040112(n+1), A045437(n+1)]` -/
def P12801407138953011189.Spec : Prop :=
  ∀ n, (P12801407138953011189.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P16563231042043759924

`∩[A004621(n+1), A038878(n+1)]`
-/

namespace A141966.P16563231042043759924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P16563231042043759924

namespace A141966

/-- `∩[A004621(n+1), A038878(n+1)]` -/
def P16563231042043759924.Spec : Prop :=
  ∀ n, (P16563231042043759924.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P11315126895714750170

`∩[A038878(n+1), A045437(n+1)]`
-/

namespace A141966.P11315126895714750170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P11315126895714750170

namespace A141966

/-- `∩[A038878(n+1), A045437(n+1)]` -/
def P11315126895714750170.Spec : Prop :=
  ∀ n, (P11315126895714750170.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P562031566312026069

`∩[A045342(n+1), A141173(n+1)]`
-/

namespace A141966.P562031566312026069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P562031566312026069

namespace A141966

/-- `∩[A045342(n+1), A141173(n+1)]` -/
def P562031566312026069.Spec : Prop :=
  ∀ n, (P562031566312026069.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P12645427857072714507

`∩[A045338(n+1), A141173(n+1)]`
-/

namespace A141966.P12645427857072714507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P12645427857072714507

namespace A141966

/-- `∩[A045338(n+1), A141173(n+1)]` -/
def P12645427857072714507.Spec : Prop :=
  ∀ n, (P12645427857072714507.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P15724550291833367551

`∩[A045431(n+1), A141173(n+1)]`
-/

namespace A141966.P15724550291833367551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P15724550291833367551

namespace A141966

/-- `∩[A045431(n+1), A141173(n+1)]` -/
def P15724550291833367551.Spec : Prop :=
  ∀ n, (P15724550291833367551.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P3725018301839391893

`∩[A004621(n+1), A296934(n+1)]`
-/

namespace A141966.P3725018301839391893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P3725018301839391893

namespace A141966

/-- `∩[A004621(n+1), A296934(n+1)]` -/
def P3725018301839391893.Spec : Prop :=
  ∀ n, (P3725018301839391893.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P2990843900020164953

`∩[A045425(n+1), A296934(n+1)]`
-/

namespace A141966.P2990843900020164953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P2990843900020164953

namespace A141966

/-- `∩[A045425(n+1), A296934(n+1)]` -/
def P2990843900020164953.Spec : Prop :=
  ∀ n, (P2990843900020164953.a n : ℤ) = A141966 (n + 1)

end A141966

/-! ## A141966.P2747607915551659167

`∩[A045437(n+1), A296934(n+1)]`
-/

namespace A141966.P2747607915551659167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P2747607915551659167

namespace A141966

/-- `∩[A045437(n+1), A296934(n+1)]` -/
def P2747607915551659167.Spec : Prop :=
  ∀ n, (P2747607915551659167.a n : ℤ) = A141966 (n + 1)

end A141966

/-!
# A141967: Primes congruent to 5 mod 28.

The programs for A141967, the canonical program `A141967.P6021039340754533921` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141967 has offset 1).

The definition of A141967 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141967.anchor (n : ℕ) (hn : 1 ≤ n) : A141967 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141967`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141967.P6021039340754533921

`∪[A142643(n+1), A142655(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141967

/-- `∪[A142643(n+1), A142655(n+1)]` -/
def P6021039340754533921.Spec : Prop :=
  ∀ n, (P6021039340754533921.a n : ℤ) = A141967 (n + 1)

theorem P6021039340754533921.correct : P6021039340754533921.Spec := by
  intro n
  simp only [A141967, Nat.add_sub_cancel]

end A141967

/-! ## A141967.P17018067840216787061

`p?[28*n+5]`
-/

namespace A141967.P17018067840216787061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141967.P17018067840216787061

namespace A141967

/-- `p?[28*n+5]` -/
def P17018067840216787061.Spec : Prop :=
  ∀ n, (P17018067840216787061.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P13170884210057246753

`∩[A008846(n+1), A045447(n+1)]`
-/

namespace A141967.P13170884210057246753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P13170884210057246753

namespace A141967

/-- `∩[A008846(n+1), A045447(n+1)]` -/
def P13170884210057246753.Spec : Prop :=
  ∀ n, (P13170884210057246753.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P17622658845544710669

`∩[A008846(n+1), A045458(n+1)]`
-/

namespace A141967.P17622658845544710669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P17622658845544710669

namespace A141967

/-- `∩[A008846(n+1), A045458(n+1)]` -/
def P17622658845544710669.Spec : Prop :=
  ∀ n, (P17622658845544710669.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P2962148000103430669

`∩[A045447(n+1), A191218(n+1)]`
-/

namespace A141967.P2962148000103430669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P2962148000103430669

namespace A141967

/-- `∩[A045447(n+1), A191218(n+1)]` -/
def P2962148000103430669.Spec : Prop :=
  ∀ n, (P2962148000103430669.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P12373047285878262183

`∩[A045458(n+1), A191218(n+1)]`
-/

namespace A141967.P12373047285878262183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P12373047285878262183

namespace A141967

/-- `∩[A045458(n+1), A191218(n+1)]` -/
def P12373047285878262183.Spec : Prop :=
  ∀ n, (P12373047285878262183.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P521440121401645169

`∩[A002144(n+1), A004623(n+1)]`
-/

namespace A141967.P521440121401645169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P521440121401645169

namespace A141967

/-- `∩[A002144(n+1), A004623(n+1)]` -/
def P521440121401645169.Spec : Prop :=
  ∀ n, (P521440121401645169.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P13549366562181926464

`∩[A002313(n+1), A004623(n+1)]`
-/

namespace A141967.P13549366562181926464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P13549366562181926464

namespace A141967

/-- `∩[A002313(n+1), A004623(n+1)]` -/
def P13549366562181926464.Spec : Prop :=
  ∀ n, (P13549366562181926464.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P5881211821037341977

`∩[A002144(n+1), A045447(n+1)]`
-/

namespace A141967.P5881211821037341977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P5881211821037341977

namespace A141967

/-- `∩[A002144(n+1), A045447(n+1)]` -/
def P5881211821037341977.Spec : Prop :=
  ∀ n, (P5881211821037341977.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P9069031448993917469

`∩[A002144(n+1), A045458(n+1)]`
-/

namespace A141967.P9069031448993917469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P9069031448993917469

namespace A141967

/-- `∩[A002144(n+1), A045458(n+1)]` -/
def P9069031448993917469.Spec : Prop :=
  ∀ n, (P9069031448993917469.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P13257237431148781603

`∩[A002313(n+1), A045447(n+1)]`
-/

namespace A141967.P13257237431148781603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P13257237431148781603

namespace A141967

/-- `∩[A002313(n+1), A045447(n+1)]` -/
def P13257237431148781603.Spec : Prop :=
  ∀ n, (P13257237431148781603.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P613594107780402161

`∩[A002313(n+1), A045458(n+1)]`
-/

namespace A141967.P613594107780402161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P613594107780402161

namespace A141967

/-- `∩[A002313(n+1), A045458(n+1)]` -/
def P613594107780402161.Spec : Prop :=
  ∀ n, (P613594107780402161.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P1770096786659085909

`∩[A045447(n+1), A280084(n+1)]`
-/

namespace A141967.P1770096786659085909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P1770096786659085909

namespace A141967

/-- `∩[A045447(n+1), A280084(n+1)]` -/
def P1770096786659085909.Spec : Prop :=
  ∀ n, (P1770096786659085909.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P498644924597182369

`∩[A045458(n+1), A280084(n+1)]`
-/

namespace A141967.P498644924597182369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P498644924597182369

namespace A141967

/-- `∩[A045458(n+1), A280084(n+1)]` -/
def P498644924597182369.Spec : Prop :=
  ∀ n, (P498644924597182369.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P12963220599334956710

`∩[A003632(n+1), A004623(n+1)]`
-/

namespace A141967.P12963220599334956710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P12963220599334956710

namespace A141967

/-- `∩[A003632(n+1), A004623(n+1)]` -/
def P12963220599334956710.Spec : Prop :=
  ∀ n, (P12963220599334956710.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P13522151707431429007

`∩[A003632(n+1), A045447(n+1)]`
-/

namespace A141967.P13522151707431429007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P13522151707431429007

namespace A141967

/-- `∩[A003632(n+1), A045447(n+1)]` -/
def P13522151707431429007.Spec : Prop :=
  ∀ n, (P13522151707431429007.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P18290778433959629188

`∩[A003632(n+1), A045458(n+1)]`
-/

namespace A141967.P18290778433959629188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P18290778433959629188

namespace A141967

/-- `∩[A003632(n+1), A045458(n+1)]` -/
def P18290778433959629188.Spec : Prop :=
  ∀ n, (P18290778433959629188.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P5663771631592532791

`∩[A045447(n+1), A055025(n+1)]`
-/

namespace A141967.P5663771631592532791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P5663771631592532791

namespace A141967

/-- `∩[A045447(n+1), A055025(n+1)]` -/
def P5663771631592532791.Spec : Prop :=
  ∀ n, (P5663771631592532791.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P8218556231091899208

`∩[A045458(n+1), A055025(n+1)]`
-/

namespace A141967.P8218556231091899208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P8218556231091899208

namespace A141967

/-- `∩[A045458(n+1), A055025(n+1)]` -/
def P8218556231091899208.Spec : Prop :=
  ∀ n, (P8218556231091899208.a n : ℤ) = A141967 (n + 1)

end A141967

/-! ## A141967.P10875363162655659388

`∩[A045447(n+1), A120960(n+1)]`
-/

namespace A141967.P10875363162655659388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P10875363162655659388

namespace A141967

/-- `∩[A045447(n+1), A120960(n+1)]` -/
def P10875363162655659388.Spec : Prop :=
  ∀ n, (P10875363162655659388.a n : ℤ) = A141967 (n + 1)

end A141967

/-!
# A141968: Primes congruent to 9 mod 28.

The programs for A141968, the canonical program `A141968.P7913412016418299999` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141968 has offset 1).

The definition of A141968 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141968.anchor (n : ℕ) (hn : 1 ≤ n) : A141968 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 9) (n - 1) : ℤ)` in `Proof.A141.A141968`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141968.P2533857558097124212

`∪[A142644(n+1), A142656(n+1)]`
-/

namespace A141968.P2533857558097124212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P2533857558097124212

namespace A141968

/-- `∪[A142644(n+1), A142656(n+1)]` -/
def P2533857558097124212.Spec : Prop :=
  ∀ n, (P2533857558097124212.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P7913412016418299999

`p?[28*n+9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141968

/-- `p?[28*n+9]` -/
def P7913412016418299999.Spec : Prop :=
  ∀ n, (P7913412016418299999.a n : ℤ) = A141968 (n + 1)

theorem P7913412016418299999.correct : P7913412016418299999.Spec := by
  intro n
  simp only [A141968, Nat.add_sub_cancel]

end A141968

/-! ## A141968.P2523743896312051864

`∩[A008846(n+1), A045383(n+1)]`
-/

namespace A141968.P2523743896312051864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P2523743896312051864

namespace A141968

/-- `∩[A008846(n+1), A045383(n+1)]` -/
def P2523743896312051864.Spec : Prop :=
  ∀ n, (P2523743896312051864.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P7108065496951123905

`∩[A008846(n+1), A045392(n+1)]`
-/

namespace A141968.P7108065496951123905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P7108065496951123905

namespace A141968

/-- `∩[A008846(n+1), A045392(n+1)]` -/
def P7108065496951123905.Spec : Prop :=
  ∀ n, (P7108065496951123905.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P13763519161599695914

`∩[A008846(n+1), A140442(n+1)]`
-/

namespace A141968.P13763519161599695914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P13763519161599695914

namespace A141968

/-- `∩[A008846(n+1), A140442(n+1)]` -/
def P13763519161599695914.Spec : Prop :=
  ∀ n, (P13763519161599695914.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P16466057609369844880

`∩[A045383(n+1), A107134(n+1)]`
-/

namespace A141968.P16466057609369844880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P16466057609369844880

namespace A141968

/-- `∩[A045383(n+1), A107134(n+1)]` -/
def P16466057609369844880.Spec : Prop :=
  ∀ n, (P16466057609369844880.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P12914214943197185571

`∩[A045392(n+1), A107134(n+1)]`
-/

namespace A141968.P12914214943197185571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P12914214943197185571

namespace A141968

/-- `∩[A045392(n+1), A107134(n+1)]` -/
def P12914214943197185571.Spec : Prop :=
  ∀ n, (P12914214943197185571.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P6238392335914284848

`∩[A107134(n+1), A140442(n+1)]`
-/

namespace A141968.P6238392335914284848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P6238392335914284848

namespace A141968

/-- `∩[A107134(n+1), A140442(n+1)]` -/
def P6238392335914284848.Spec : Prop :=
  ∀ n, (P6238392335914284848.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P13772292900427014936

`∩[A140442(n+1), A141172(n+1)]`
-/

namespace A141968.P13772292900427014936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P13772292900427014936

namespace A141968

/-- `∩[A140442(n+1), A141172(n+1)]` -/
def P13772292900427014936.Spec : Prop :=
  ∀ n, (P13772292900427014936.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P13774839664859102720

`∩[A045343(n+1), A107134(n+1)]`
-/

namespace A141968.P13774839664859102720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P13774839664859102720

namespace A141968

/-- `∩[A045343(n+1), A107134(n+1)]` -/
def P13774839664859102720.Spec : Prop :=
  ∀ n, (P13774839664859102720.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P3718704452186848635

`∩[A045359(n+1), A107134(n+1)]`
-/

namespace A141968.P3718704452186848635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P3718704452186848635

namespace A141968

/-- `∩[A045359(n+1), A107134(n+1)]` -/
def P3718704452186848635.Spec : Prop :=
  ∀ n, (P3718704452186848635.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P3672968717913174020

`∩[A045368(n+1), A107134(n+1)]`
-/

namespace A141968.P3672968717913174020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P3672968717913174020

namespace A141968

/-- `∩[A045368(n+1), A107134(n+1)]` -/
def P3672968717913174020.Spec : Prop :=
  ∀ n, (P3672968717913174020.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P11158840213953664766

`∩[A045333(n+1), A107134(n+1)]`
-/

namespace A141968.P11158840213953664766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P11158840213953664766

namespace A141968

/-- `∩[A045333(n+1), A107134(n+1)]` -/
def P11158840213953664766.Spec : Prop :=
  ∀ n, (P11158840213953664766.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P12346309792657444495

`∩[A045383(n+1), A191218(n+1)]`
-/

namespace A141968.P12346309792657444495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P12346309792657444495

namespace A141968

/-- `∩[A045383(n+1), A191218(n+1)]` -/
def P12346309792657444495.Spec : Prop :=
  ∀ n, (P12346309792657444495.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P14492358121813938499

`∩[A045392(n+1), A191218(n+1)]`
-/

namespace A141968.P14492358121813938499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P14492358121813938499

namespace A141968

/-- `∩[A045392(n+1), A191218(n+1)]` -/
def P14492358121813938499.Spec : Prop :=
  ∀ n, (P14492358121813938499.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P13232636635233804145

`∩[A140442(n+1), A191218(n+1)]`
-/

namespace A141968.P13232636635233804145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P13232636635233804145

namespace A141968

/-- `∩[A140442(n+1), A191218(n+1)]` -/
def P13232636635233804145.Spec : Prop :=
  ∀ n, (P13232636635233804145.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P9787470254054489422

`∩[A045377(n+1), A107134(n+1)]`
-/

namespace A141968.P9787470254054489422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P9787470254054489422

namespace A141968

/-- `∩[A045377(n+1), A107134(n+1)]` -/
def P9787470254054489422.Spec : Prop :=
  ∀ n, (P9787470254054489422.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P11913206188871229686

`∩[A045389(n+1), A107134(n+1)]`
-/

namespace A141968.P11913206188871229686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P11913206188871229686

namespace A141968

/-- `∩[A045389(n+1), A107134(n+1)]` -/
def P11913206188871229686.Spec : Prop :=
  ∀ n, (P11913206188871229686.a n : ℤ) = A141968 (n + 1)

end A141968

/-! ## A141968.P5319429707922220232

`A000027(p?[A139608(n)+1])`
-/

namespace A141968.P5319429707922220232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141968.P5319429707922220232

namespace A141968

/-- `A000027(p?[A139608(n)+1])` -/
def P5319429707922220232.Spec : Prop :=
  ∀ n, P5319429707922220232.a n = A141968 (n + 1)

end A141968

/-! ## A141968.P17498024494969767069

`∩[A004620(n+1), A107134(n+1)]`
-/

namespace A141968.P17498024494969767069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141968.P17498024494969767069

namespace A141968

/-- `∩[A004620(n+1), A107134(n+1)]` -/
def P17498024494969767069.Spec : Prop :=
  ∀ n, (P17498024494969767069.a n : ℤ) = A141968 (n + 1)

end A141968

/-!
# A141969: Primes congruent to 11 mod 28.

The programs for A141969, the canonical program `A141969.P10803076773587650740` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141969 has offset 1).

The definition of A141969 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141969.anchor (n : ℕ) (hn : 1 ≤ n) : A141969 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 11) (n - 1) : ℤ)` in `Proof.A141.A141969`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141969.P5297514330648575672

`∪[A142645(n+1), A142657(n+1)]`
-/

namespace A141969.P5297514330648575672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P5297514330648575672

namespace A141969

/-- `∪[A142645(n+1), A142657(n+1)]` -/
def P5297514330648575672.Spec : Prop :=
  ∀ n, (P5297514330648575672.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P10803076773587650740

`p?[28*n+11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141969

/-- `p?[28*n+11]` -/
def P10803076773587650740.Spec : Prop :=
  ∀ n, (P10803076773587650740.a n : ℤ) = A141969 (n + 1)

theorem P10803076773587650740.correct : P10803076773587650740.Spec := by
  intro n
  simp only [A141969, Nat.add_sub_cancel]

end A141969

/-! ## A141969.P646066105202602384

`or(1, p?[28*n-17])`
-/

namespace A141969.P646066105202602384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141969.P646066105202602384

namespace A141969

/-- `or(1, p?[28*n-17])` -/
def P646066105202602384.Spec : Prop :=
  ∀ n, P646066105202602384.a n = A141969 (n + 1)

end A141969

/-! ## A141969.P8074161387524255198

`∩[A004622(n+1), A107133(n+1)]`
-/

namespace A141969.P8074161387524255198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P8074161387524255198

namespace A141969

/-- `∩[A004622(n+1), A107133(n+1)]` -/
def P8074161387524255198.Spec : Prop :=
  ∀ n, (P8074161387524255198.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P8716844524579081315

`∩[A045471(n+1), A107133(n+1)]`
-/

namespace A141969.P8716844524579081315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P8716844524579081315

namespace A141969

/-- `∩[A045471(n+1), A107133(n+1)]` -/
def P8716844524579081315.Spec : Prop :=
  ∀ n, (P8716844524579081315.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P6450500278569975530

`∩[A045452(n+1), A107133(n+1)]`
-/

namespace A141969.P6450500278569975530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P6450500278569975530

namespace A141969

/-- `∩[A045452(n+1), A107133(n+1)]` -/
def P6450500278569975530.Spec : Prop :=
  ∀ n, (P6450500278569975530.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P10174533847014427138

`∩[A045432(n+1), A107133(n+1)]`
-/

namespace A141969.P10174533847014427138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P10174533847014427138

namespace A141969

/-- `∩[A045432(n+1), A107133(n+1)]` -/
def P10174533847014427138.Spec : Prop :=
  ∀ n, (P10174533847014427138.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P16247561430461760289

`∩[A045467(n+1), A107133(n+1)]`
-/

namespace A141969.P16247561430461760289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P16247561430461760289

namespace A141969

/-- `∩[A045467(n+1), A107133(n+1)]` -/
def P16247561430461760289.Spec : Prop :=
  ∀ n, (P16247561430461760289.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P10887908548132729014

`∩[A045427(n+1), A107133(n+1)]`
-/

namespace A141969.P10887908548132729014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P10887908548132729014

namespace A141969

/-- `∩[A045427(n+1), A107133(n+1)]` -/
def P10887908548132729014.Spec : Prop :=
  ∀ n, (P10887908548132729014.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P15929287132396636272

`∩[A002145(n+1), A004622(n+1)]`
-/

namespace A141969.P15929287132396636272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P15929287132396636272

namespace A141969

/-- `∩[A002145(n+1), A004622(n+1)]` -/
def P15929287132396636272.Spec : Prop :=
  ∀ n, (P15929287132396636272.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P3611539244724235984

`∩[A003632(n+1), A004622(n+1)]`
-/

namespace A141969.P3611539244724235984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P3611539244724235984

namespace A141969

/-- `∩[A003632(n+1), A004622(n+1)]` -/
def P3611539244724235984.Spec : Prop :=
  ∀ n, (P3611539244724235984.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P7835727603824459258

`∩[A002145(n+1), A045471(n+1)]`
-/

namespace A141969.P7835727603824459258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P7835727603824459258

namespace A141969

/-- `∩[A002145(n+1), A045471(n+1)]` -/
def P7835727603824459258.Spec : Prop :=
  ∀ n, (P7835727603824459258.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P9065614824376029117

`∩[A003632(n+1), A045462(n+1)]`
-/

namespace A141969.P9065614824376029117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P9065614824376029117

namespace A141969

/-- `∩[A003632(n+1), A045462(n+1)]` -/
def P9065614824376029117.Spec : Prop :=
  ∀ n, (P9065614824376029117.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P13593347193119427206

`∩[A003632(n+1), A045471(n+1)]`
-/

namespace A141969.P13593347193119427206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P13593347193119427206

namespace A141969

/-- `∩[A003632(n+1), A045471(n+1)]` -/
def P13593347193119427206.Spec : Prop :=
  ∀ n, (P13593347193119427206.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P10288685383272276329

`∩[A004622(n+1), A045326(n+1)]`
-/

namespace A141969.P10288685383272276329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P10288685383272276329

namespace A141969

/-- `∩[A004622(n+1), A045326(n+1)]` -/
def P10288685383272276329.Spec : Prop :=
  ∀ n, (P10288685383272276329.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P11172213184324774899

`∩[A045326(n+1), A045471(n+1)]`
-/

namespace A141969.P11172213184324774899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P11172213184324774899

namespace A141969

/-- `∩[A045326(n+1), A045471(n+1)]` -/
def P11172213184324774899.Spec : Prop :=
  ∀ n, (P11172213184324774899.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P5907886641167595883

`∩[A045449(n+1), A107133(n+1)]`
-/

namespace A141969.P5907886641167595883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P5907886641167595883

namespace A141969

/-- `∩[A045449(n+1), A107133(n+1)]` -/
def P5907886641167595883.Spec : Prop :=
  ∀ n, (P5907886641167595883.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P3911748194882233966

`∩[A045409(n+1), A107133(n+1)]`
-/

namespace A141969.P3911748194882233966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P3911748194882233966

namespace A141969

/-- `∩[A045409(n+1), A107133(n+1)]` -/
def P3911748194882233966.Spec : Prop :=
  ∀ n, (P3911748194882233966.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P537554576279462462

`∩[A045471(n+1), A085760(n+1)]`
-/

namespace A141969.P537554576279462462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P537554576279462462

namespace A141969

/-- `∩[A045471(n+1), A085760(n+1)]` -/
def P537554576279462462.Spec : Prop :=
  ∀ n, (P537554576279462462.a n : ℤ) = A141969 (n + 1)

end A141969

/-! ## A141969.P4299489753441719016

`∩[A045471(n+1), A197504(n+1)]`
-/

namespace A141969.P4299489753441719016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141969.P4299489753441719016

namespace A141969

/-- `∩[A045471(n+1), A197504(n+1)]` -/
def P4299489753441719016.Spec : Prop :=
  ∀ n, (P4299489753441719016.a n : ℤ) = A141969 (n + 1)

end A141969

/-!
# A141970: Primes congruent to 13 mod 28.

The programs for A141970, the canonical program `A141970.P8007402777737645315` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141970 has offset 1).

The definition of A141970 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141970.anchor (n : ℕ) (hn : 1 ≤ n) : A141970 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({13} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141970`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141970.P8007402777737645315

`∪[A142646(n+1), A142658(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141970

/-- `∪[A142646(n+1), A142658(n+1)]` -/
def P8007402777737645315.Spec : Prop :=
  ∀ n, (P8007402777737645315.a n : ℤ) = A141970 (n + 1)

theorem P8007402777737645315.correct : P8007402777737645315.Spec := by
  intro n
  simp only [A141970, Nat.add_sub_cancel]

end A141970

/-! ## A141970.P10052096101180160812

`p?[4*7*n+13]`
-/

namespace A141970.P10052096101180160812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (7 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141970.P10052096101180160812

namespace A141970

/-- `p?[4*7*n+13]` -/
def P10052096101180160812.Spec : Prop :=
  ∀ n, (P10052096101180160812.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P16375408968472533049

`∩[A008846(n+1), A045464(n+1)]`
-/

namespace A141970.P16375408968472533049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P16375408968472533049

namespace A141970

/-- `∩[A008846(n+1), A045464(n+1)]` -/
def P16375408968472533049.Spec : Prop :=
  ∀ n, (P16375408968472533049.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P18165469830810399234

`∩[A008846(n+1), A045473(n+1)]`
-/

namespace A141970.P18165469830810399234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P18165469830810399234

namespace A141970

/-- `∩[A008846(n+1), A045473(n+1)]` -/
def P18165469830810399234.Spec : Prop :=
  ∀ n, (P18165469830810399234.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P2666287428908558466

`record[p?[lcm(16, n)-(n+1)]]`
-/

namespace A141970.P2666287428908558466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141970.P2666287428908558466

namespace A141970

/-- `record[p?[lcm(16, n)-(n+1)]]` -/
def P2666287428908558466.Spec : Prop :=
  ∀ n, P2666287428908558466.a n = A141970 (n + 1)

end A141970

/-! ## A141970.P13686903438131506400

`∩[A045464(n+1), A191218(n+1)]`
-/

namespace A141970.P13686903438131506400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P13686903438131506400

namespace A141970

/-- `∩[A045464(n+1), A191218(n+1)]` -/
def P13686903438131506400.Spec : Prop :=
  ∀ n, (P13686903438131506400.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P15368213620056304859

`∩[A045473(n+1), A191218(n+1)]`
-/

namespace A141970.P15368213620056304859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P15368213620056304859

namespace A141970

/-- `∩[A045473(n+1), A191218(n+1)]` -/
def P15368213620056304859.Spec : Prop :=
  ∀ n, (P15368213620056304859.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P12214853246923622068

`∩[A002144(n+1), A004624(n+1)]`
-/

namespace A141970.P12214853246923622068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P12214853246923622068

namespace A141970

/-- `∩[A002144(n+1), A004624(n+1)]` -/
def P12214853246923622068.Spec : Prop :=
  ∀ n, (P12214853246923622068.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P11782258527910824398

`∩[A002144(n+1), A045464(n+1)]`
-/

namespace A141970.P11782258527910824398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P11782258527910824398

namespace A141970

/-- `∩[A002144(n+1), A045464(n+1)]` -/
def P11782258527910824398.Spec : Prop :=
  ∀ n, (P11782258527910824398.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P5420948382365621588

`∩[A002144(n+1), A045473(n+1)]`
-/

namespace A141970.P5420948382365621588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P5420948382365621588

namespace A141970

/-- `∩[A002144(n+1), A045473(n+1)]` -/
def P5420948382365621588.Spec : Prop :=
  ∀ n, (P5420948382365621588.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P8604006653947864413

`∩[A002313(n+1), A004624(n+1)]`
-/

namespace A141970.P8604006653947864413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P8604006653947864413

namespace A141970

/-- `∩[A002313(n+1), A004624(n+1)]` -/
def P8604006653947864413.Spec : Prop :=
  ∀ n, (P8604006653947864413.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P17833248606528346589

`∩[A002313(n+1), A045464(n+1)]`
-/

namespace A141970.P17833248606528346589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P17833248606528346589

namespace A141970

/-- `∩[A002313(n+1), A045464(n+1)]` -/
def P17833248606528346589.Spec : Prop :=
  ∀ n, (P17833248606528346589.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P14543421271234208102

`∩[A002313(n+1), A045473(n+1)]`
-/

namespace A141970.P14543421271234208102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P14543421271234208102

namespace A141970

/-- `∩[A002313(n+1), A045473(n+1)]` -/
def P14543421271234208102.Spec : Prop :=
  ∀ n, (P14543421271234208102.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P8479382417987571511

`∩[A045464(n+1), A280084(n+1)]`
-/

namespace A141970.P8479382417987571511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P8479382417987571511

namespace A141970

/-- `∩[A045464(n+1), A280084(n+1)]` -/
def P8479382417987571511.Spec : Prop :=
  ∀ n, (P8479382417987571511.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P6190624389711269412

`∩[A045473(n+1), A280084(n+1)]`
-/

namespace A141970.P6190624389711269412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P6190624389711269412

namespace A141970

/-- `∩[A045473(n+1), A280084(n+1)]` -/
def P6190624389711269412.Spec : Prop :=
  ∀ n, (P6190624389711269412.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P14650051966561602194

`∩[A003632(n+1), A004624(n+1)]`
-/

namespace A141970.P14650051966561602194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P14650051966561602194

namespace A141970

/-- `∩[A003632(n+1), A004624(n+1)]` -/
def P14650051966561602194.Spec : Prop :=
  ∀ n, (P14650051966561602194.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P3307417381204427653

`∩[A003632(n+1), A045464(n+1)]`
-/

namespace A141970.P3307417381204427653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P3307417381204427653

namespace A141970

/-- `∩[A003632(n+1), A045464(n+1)]` -/
def P3307417381204427653.Spec : Prop :=
  ∀ n, (P3307417381204427653.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P8848697059231709884

`∩[A003632(n+1), A045473(n+1)]`
-/

namespace A141970.P8848697059231709884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P8848697059231709884

namespace A141970

/-- `∩[A003632(n+1), A045473(n+1)]` -/
def P8848697059231709884.Spec : Prop :=
  ∀ n, (P8848697059231709884.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P15211525764798014305

`∩[A045464(n+1), A055025(n+1)]`
-/

namespace A141970.P15211525764798014305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P15211525764798014305

namespace A141970

/-- `∩[A045464(n+1), A055025(n+1)]` -/
def P15211525764798014305.Spec : Prop :=
  ∀ n, (P15211525764798014305.a n : ℤ) = A141970 (n + 1)

end A141970

/-! ## A141970.P10226193315120279547

`∩[A045473(n+1), A055025(n+1)]`
-/

namespace A141970.P10226193315120279547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P10226193315120279547

namespace A141970

/-- `∩[A045473(n+1), A055025(n+1)]` -/
def P10226193315120279547.Spec : Prop :=
  ∀ n, (P10226193315120279547.a n : ℤ) = A141970 (n + 1)

end A141970

/-!
# A141971: Primes congruent to 15 mod 28.

The programs for A141971, the canonical program `A141971.P2623643138015231424` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141971 has offset 1).

The definition of A141971 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141971.anchor (n : ℕ) (hn : 1 ≤ n) : A141971 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141971`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141971.P16398739660559471426

`∪[A142647(n+1), A142659(n+1)]`
-/

namespace A141971.P16398739660559471426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P16398739660559471426

namespace A141971

/-- `∪[A142647(n+1), A142659(n+1)]` -/
def P16398739660559471426.Spec : Prop :=
  ∀ n, (P16398739660559471426.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P2623643138015231424

`p?[a(n-1)+28]` with `a(0)=15`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141971

/-- `p?[a(n-1)+28]` -/
def P2623643138015231424.Spec : Prop :=
  ∀ n, (P2623643138015231424.a n : ℤ) = A141971 (n + 1)

theorem P2623643138015231424.correct : P2623643138015231424.Spec := by
  intro n
  simp only [A141971, Nat.add_sub_cancel]

end A141971

/-! ## A141971.P1743805167215797188

`p?[7*(4*n+2)+1]`
-/

namespace A141971.P1743805167215797188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (4 * n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141971.P1743805167215797188

namespace A141971

/-- `p?[7*(4*n+2)+1]` -/
def P1743805167215797188.Spec : Prop :=
  ∀ n, (P1743805167215797188.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P14457518853175458996

`∩[A004619(n+1), A107133(n+1)]`
-/

namespace A141971.P14457518853175458996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P14457518853175458996

namespace A141971

/-- `∩[A004619(n+1), A107133(n+1)]` -/
def P14457518853175458996.Spec : Prop :=
  ∀ n, (P14457518853175458996.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P4856088967998107276

`∩[A107133(n+1), A140444(n+1)]`
-/

namespace A141971.P4856088967998107276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P4856088967998107276

namespace A141971

/-- `∩[A107133(n+1), A140444(n+1)]` -/
def P4856088967998107276.Spec : Prop :=
  ∀ n, (P4856088967998107276.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P2611041466643491045

`∩[A045436(n+1), A107133(n+1)]`
-/

namespace A141971.P2611041466643491045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P2611041466643491045

namespace A141971

/-- `∩[A045436(n+1), A107133(n+1)]` -/
def P2611041466643491045.Spec : Prop :=
  ∀ n, (P2611041466643491045.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P2432162709135696207

`∩[A045456(n+1), A107133(n+1)]`
-/

namespace A141971.P2432162709135696207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P2432162709135696207

namespace A141971

/-- `∩[A045456(n+1), A107133(n+1)]` -/
def P2432162709135696207.Spec : Prop :=
  ∀ n, (P2432162709135696207.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P14658097723097074706

`∩[A045472(n+1), A107133(n+1)]`
-/

namespace A141971.P14658097723097074706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P14658097723097074706

namespace A141971

/-- `∩[A045472(n+1), A107133(n+1)]` -/
def P14658097723097074706.Spec : Prop :=
  ∀ n, (P14658097723097074706.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P6277792890799414977

`∩[A045433(n+1), A107133(n+1)]`
-/

namespace A141971.P6277792890799414977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P6277792890799414977

namespace A141971

/-- `∩[A045433(n+1), A107133(n+1)]` -/
def P6277792890799414977.Spec : Prop :=
  ∀ n, (P6277792890799414977.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P744746057144234331

`∩[A045415(n+1), A107133(n+1)]`
-/

namespace A141971.P744746057144234331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P744746057144234331

namespace A141971

/-- `∩[A045415(n+1), A107133(n+1)]` -/
def P744746057144234331.Spec : Prop :=
  ∀ n, (P744746057144234331.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P12839591021711722350

`∩[A045454(n+1), A107133(n+1)]`
-/

namespace A141971.P12839591021711722350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P12839591021711722350

namespace A141971

/-- `∩[A045454(n+1), A107133(n+1)]` -/
def P12839591021711722350.Spec : Prop :=
  ∀ n, (P12839591021711722350.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P8118562438988731341

`∩[A002145(n+1), A004619(n+1)]`
-/

namespace A141971.P8118562438988731341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P8118562438988731341

namespace A141971

/-- `∩[A002145(n+1), A004619(n+1)]` -/
def P8118562438988731341.Spec : Prop :=
  ∀ n, (P8118562438988731341.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P4323705301530127782

`∩[A002145(n+1), A140444(n+1)]`
-/

namespace A141971.P4323705301530127782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P4323705301530127782

namespace A141971

/-- `∩[A002145(n+1), A140444(n+1)]` -/
def P4323705301530127782.Spec : Prop :=
  ∀ n, (P4323705301530127782.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P8501787640337409601

`∩[A004619(n+1), A045326(n+1)]`
-/

namespace A141971.P8501787640337409601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P8501787640337409601

namespace A141971

/-- `∩[A004619(n+1), A045326(n+1)]` -/
def P8501787640337409601.Spec : Prop :=
  ∀ n, (P8501787640337409601.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P13215510196318999138

`∩[A045326(n+1), A140444(n+1)]`
-/

namespace A141971.P13215510196318999138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P13215510196318999138

namespace A141971

/-- `∩[A045326(n+1), A140444(n+1)]` -/
def P13215510196318999138.Spec : Prop :=
  ∀ n, (P13215510196318999138.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P14566565718174991750

`∩[A003632(n+1), A004619(n+1)]`
-/

namespace A141971.P14566565718174991750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P14566565718174991750

namespace A141971

/-- `∩[A003632(n+1), A004619(n+1)]` -/
def P14566565718174991750.Spec : Prop :=
  ∀ n, (P14566565718174991750.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P15644124918166291878

`∩[A003632(n+1), A045465(n+1)]`
-/

namespace A141971.P15644124918166291878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P15644124918166291878

namespace A141971

/-- `∩[A003632(n+1), A045465(n+1)]` -/
def P15644124918166291878.Spec : Prop :=
  ∀ n, (P15644124918166291878.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P6711090753146268788

`∩[A003632(n+1), A140444(n+1)]`
-/

namespace A141971.P6711090753146268788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P6711090753146268788

namespace A141971

/-- `∩[A003632(n+1), A140444(n+1)]` -/
def P6711090753146268788.Spec : Prop :=
  ∀ n, (P6711090753146268788.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P10173739812009531017

`∩[A085760(n+1), A140444(n+1)]`
-/

namespace A141971.P10173739812009531017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P10173739812009531017

namespace A141971

/-- `∩[A085760(n+1), A140444(n+1)]` -/
def P10173739812009531017.Spec : Prop :=
  ∀ n, (P10173739812009531017.a n : ℤ) = A141971 (n + 1)

end A141971

/-! ## A141971.P2955628469162742781

`∩[A140444(n+1), A197504(n+1)]`
-/

namespace A141971.P2955628469162742781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141971.P2955628469162742781

namespace A141971

/-- `∩[A140444(n+1), A197504(n+1)]` -/
def P2955628469162742781.Spec : Prop :=
  ∀ n, (P2955628469162742781.a n : ℤ) = A141971 (n + 1)

end A141971

/-!
# A141972: Primes congruent to 17 mod 28.

The programs for A141972, the canonical program `A141972.P12459213782653938679` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141972 has offset 1).

The definition of A141972 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141972.anchor (n : ℕ) (hn : 1 ≤ n) : A141972 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({17} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141972`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141972.P12459213782653938679

`∪[A142648(n+1), A142660(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141972

/-- `∪[A142648(n+1), A142660(n+1)]` -/
def P12459213782653938679.Spec : Prop :=
  ∀ n, (P12459213782653938679.a n : ℤ) = A141972 (n + 1)

theorem P12459213782653938679.correct : P12459213782653938679.Spec := by
  intro n
  simp only [A141972, Nat.add_sub_cancel]

end A141972

/-! ## A141972.P2695619710807436308

`p?[28*n-11]`
-/

namespace A141972.P2695619710807436308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141972.P2695619710807436308

namespace A141972

/-- `p?[28*n-11]` -/
def P2695619710807436308.Spec : Prop :=
  ∀ n, P2695619710807436308.a n = A141972 (n + 1)

end A141972

/-! ## A141972.P9828334070331582729

`∩[A008846(n+1), A045425(n+1)]`
-/

namespace A141972.P9828334070331582729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P9828334070331582729

namespace A141972

/-- `∩[A008846(n+1), A045425(n+1)]` -/
def P9828334070331582729.Spec : Prop :=
  ∀ n, (P9828334070331582729.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P9117160652223663418

`∩[A008846(n+1), A045437(n+1)]`
-/

namespace A141972.P9117160652223663418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P9117160652223663418

namespace A141972

/-- `∩[A008846(n+1), A045437(n+1)]` -/
def P9117160652223663418.Spec : Prop :=
  ∀ n, (P9117160652223663418.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P11374051011854680340

`∩[A045425(n+1), A191218(n+1)]`
-/

namespace A141972.P11374051011854680340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P11374051011854680340

namespace A141972

/-- `∩[A045425(n+1), A191218(n+1)]` -/
def P11374051011854680340.Spec : Prop :=
  ∀ n, (P11374051011854680340.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P13172959594551184846

`∩[A045437(n+1), A191218(n+1)]`
-/

namespace A141972.P13172959594551184846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P13172959594551184846

namespace A141972

/-- `∩[A045437(n+1), A191218(n+1)]` -/
def P13172959594551184846.Spec : Prop :=
  ∀ n, (P13172959594551184846.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P10889114121132723227

`∩[A002144(n+1), A004621(n+1)]`
-/

namespace A141972.P10889114121132723227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P10889114121132723227

namespace A141972

/-- `∩[A002144(n+1), A004621(n+1)]` -/
def P10889114121132723227.Spec : Prop :=
  ∀ n, (P10889114121132723227.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P5169386663303886328

`∩[A002313(n+1), A004621(n+1)]`
-/

namespace A141972.P5169386663303886328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P5169386663303886328

namespace A141972

/-- `∩[A002313(n+1), A004621(n+1)]` -/
def P5169386663303886328.Spec : Prop :=
  ∀ n, (P5169386663303886328.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P8198244973577892383

`∩[A002144(n+1), A045425(n+1)]`
-/

namespace A141972.P8198244973577892383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P8198244973577892383

namespace A141972

/-- `∩[A002144(n+1), A045425(n+1)]` -/
def P8198244973577892383.Spec : Prop :=
  ∀ n, (P8198244973577892383.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P5460678854644879268

`∩[A002144(n+1), A045437(n+1)]`
-/

namespace A141972.P5460678854644879268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P5460678854644879268

namespace A141972

/-- `∩[A002144(n+1), A045437(n+1)]` -/
def P5460678854644879268.Spec : Prop :=
  ∀ n, (P5460678854644879268.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P18102040863049533779

`∩[A002313(n+1), A045425(n+1)]`
-/

namespace A141972.P18102040863049533779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P18102040863049533779

namespace A141972

/-- `∩[A002313(n+1), A045425(n+1)]` -/
def P18102040863049533779.Spec : Prop :=
  ∀ n, (P18102040863049533779.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P16933874860119027509

`∩[A002313(n+1), A045437(n+1)]`
-/

namespace A141972.P16933874860119027509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P16933874860119027509

namespace A141972

/-- `∩[A002313(n+1), A045437(n+1)]` -/
def P16933874860119027509.Spec : Prop :=
  ∀ n, (P16933874860119027509.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P10661380855444992448

`∩[A045425(n+1), A280084(n+1)]`
-/

namespace A141972.P10661380855444992448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P10661380855444992448

namespace A141972

/-- `∩[A045425(n+1), A280084(n+1)]` -/
def P10661380855444992448.Spec : Prop :=
  ∀ n, (P10661380855444992448.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P14045140379623946367

`∩[A045437(n+1), A280084(n+1)]`
-/

namespace A141972.P14045140379623946367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P14045140379623946367

namespace A141972

/-- `∩[A045437(n+1), A280084(n+1)]` -/
def P14045140379623946367.Spec : Prop :=
  ∀ n, (P14045140379623946367.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P3512556795955597525

`∩[A003632(n+1), A004621(n+1)]`
-/

namespace A141972.P3512556795955597525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P3512556795955597525

namespace A141972

/-- `∩[A003632(n+1), A004621(n+1)]` -/
def P3512556795955597525.Spec : Prop :=
  ∀ n, (P3512556795955597525.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P9111478578632774265

`∩[A003632(n+1), A045425(n+1)]`
-/

namespace A141972.P9111478578632774265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P9111478578632774265

namespace A141972

/-- `∩[A003632(n+1), A045425(n+1)]` -/
def P9111478578632774265.Spec : Prop :=
  ∀ n, (P9111478578632774265.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P10061653314320201318

`∩[A003632(n+1), A045437(n+1)]`
-/

namespace A141972.P10061653314320201318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P10061653314320201318

namespace A141972

/-- `∩[A003632(n+1), A045437(n+1)]` -/
def P10061653314320201318.Spec : Prop :=
  ∀ n, (P10061653314320201318.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P13986572454210651812

`∩[A045425(n+1), A055025(n+1)]`
-/

namespace A141972.P13986572454210651812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P13986572454210651812

namespace A141972

/-- `∩[A045425(n+1), A055025(n+1)]` -/
def P13986572454210651812.Spec : Prop :=
  ∀ n, (P13986572454210651812.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P16166346815761721667

`∩[A045437(n+1), A055025(n+1)]`
-/

namespace A141972.P16166346815761721667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P16166346815761721667

namespace A141972

/-- `∩[A045437(n+1), A055025(n+1)]` -/
def P16166346815761721667.Spec : Prop :=
  ∀ n, (P16166346815761721667.a n : ℤ) = A141972 (n + 1)

end A141972

/-! ## A141972.P9539964369808134282

`∩[A045425(n+1), A120960(n+1)]`
-/

namespace A141972.P9539964369808134282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P9539964369808134282

namespace A141972

/-- `∩[A045425(n+1), A120960(n+1)]` -/
def P9539964369808134282.Spec : Prop :=
  ∀ n, (P9539964369808134282.a n : ℤ) = A141972 (n + 1)

end A141972

/-!
# A141973: Primes congruent to 19 mod 28.

The programs for A141973, the canonical program `A141973.P5553029766086306265` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141973 has offset 1).

The definition of A141973 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141973.anchor (n : ℕ) (hn : 1 ≤ n) : A141973 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({19} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141973`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141973.P5553029766086306265

`∪[A142649(n+1), A142661(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141973

/-- `∪[A142649(n+1), A142661(n+1)]` -/
def P5553029766086306265.Spec : Prop :=
  ∀ n, (P5553029766086306265.a n : ℤ) = A141973 (n + 1)

theorem P5553029766086306265.correct : P5553029766086306265.Spec := by
  intro n
  simp only [A141973, Nat.add_sub_cancel]

end A141973

/-! ## A141973.P10345332011001742192

`p?[4*7*n-9]`
-/

namespace A141973.P10345332011001742192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (7 * n) : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141973.P10345332011001742192

namespace A141973

/-- `p?[4*7*n-9]` -/
def P10345332011001742192.Spec : Prop :=
  ∀ n, P10345332011001742192.a n = A141973 (n + 1)

end A141973

/-! ## A141973.P11870600709945691113

`∩[A045458(n+1), A141173(n+1)]`
-/

namespace A141973.P11870600709945691113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P11870600709945691113

namespace A141973

/-- `∩[A045458(n+1), A141173(n+1)]` -/
def P11870600709945691113.Spec : Prop :=
  ∀ n, (P11870600709945691113.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P16135009932284212842

`∩[A004623(n+1), A141173(n+1)]`
-/

namespace A141973.P16135009932284212842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P16135009932284212842

namespace A141973

/-- `∩[A004623(n+1), A141173(n+1)]` -/
def P16135009932284212842.Spec : Prop :=
  ∀ n, (P16135009932284212842.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P12397074281064475818

`∩[A045368(n+1), A141173(n+1)]`
-/

namespace A141973.P12397074281064475818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P12397074281064475818

namespace A141973

/-- `∩[A045368(n+1), A141173(n+1)]` -/
def P12397074281064475818.Spec : Prop :=
  ∀ n, (P12397074281064475818.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P13205105310394465058

`∩[A045456(n+1), A141173(n+1)]`
-/

namespace A141973.P13205105310394465058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P13205105310394465058

namespace A141973

/-- `∩[A045456(n+1), A141173(n+1)]` -/
def P13205105310394465058.Spec : Prop :=
  ∀ n, (P13205105310394465058.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P8293428556523830208

`∩[A045452(n+1), A141173(n+1)]`
-/

namespace A141973.P8293428556523830208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P8293428556523830208

namespace A141973

/-- `∩[A045452(n+1), A141173(n+1)]` -/
def P8293428556523830208.Spec : Prop :=
  ∀ n, (P8293428556523830208.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P1243649327041051964

`∩[A004623(n+1), A040112(n+1)]`
-/

namespace A141973.P1243649327041051964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P1243649327041051964

namespace A141973

/-- `∩[A004623(n+1), A040112(n+1)]` -/
def P1243649327041051964.Spec : Prop :=
  ∀ n, (P1243649327041051964.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P739319439730222872

`∩[A040112(n+1), A045458(n+1)]`
-/

namespace A141973.P739319439730222872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P739319439730222872

namespace A141973

/-- `∩[A040112(n+1), A045458(n+1)]` -/
def P739319439730222872.Spec : Prop :=
  ∀ n, (P739319439730222872.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P8450610801210543728

`∩[A004623(n+1), A038878(n+1)]`
-/

namespace A141973.P8450610801210543728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P8450610801210543728

namespace A141973

/-- `∩[A004623(n+1), A038878(n+1)]` -/
def P8450610801210543728.Spec : Prop :=
  ∀ n, (P8450610801210543728.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P874076742949906076

`∩[A038878(n+1), A045458(n+1)]`
-/

namespace A141973.P874076742949906076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P874076742949906076

namespace A141973

/-- `∩[A038878(n+1), A045458(n+1)]` -/
def P874076742949906076.Spec : Prop :=
  ∀ n, (P874076742949906076.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P1041761133926713292

`∩[A045367(n+1), A141173(n+1)]`
-/

namespace A141973.P1041761133926713292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P1041761133926713292

namespace A141973

/-- `∩[A045367(n+1), A141173(n+1)]` -/
def P1041761133926713292.Spec : Prop :=
  ∀ n, (P1041761133926713292.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P2860244371001464094

`∩[A004623(n+1), A296934(n+1)]`
-/

namespace A141973.P2860244371001464094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P2860244371001464094

namespace A141973

/-- `∩[A004623(n+1), A296934(n+1)]` -/
def P2860244371001464094.Spec : Prop :=
  ∀ n, (P2860244371001464094.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P16768302278738426028

`∩[A045447(n+1), A296934(n+1)]`
-/

namespace A141973.P16768302278738426028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P16768302278738426028

namespace A141973

/-- `∩[A045447(n+1), A296934(n+1)]` -/
def P16768302278738426028.Spec : Prop :=
  ∀ n, (P16768302278738426028.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P17283426056142376446

`∩[A045458(n+1), A296934(n+1)]`
-/

namespace A141973.P17283426056142376446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P17283426056142376446

namespace A141973

/-- `∩[A045458(n+1), A296934(n+1)]` -/
def P17283426056142376446.Spec : Prop :=
  ∀ n, (P17283426056142376446.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P16922980543970000980

`∩[A045451(n+1), A141173(n+1)]`
-/

namespace A141973.P16922980543970000980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P16922980543970000980

namespace A141973

/-- `∩[A045451(n+1), A141173(n+1)]` -/
def P16922980543970000980.Spec : Prop :=
  ∀ n, (P16922980543970000980.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P8402260000877262298

`∩[A002145(n+1), A004623(n+1)]`
-/

namespace A141973.P8402260000877262298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P8402260000877262298

namespace A141973

/-- `∩[A002145(n+1), A004623(n+1)]` -/
def P8402260000877262298.Spec : Prop :=
  ∀ n, (P8402260000877262298.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P17281677206679968186

`∩[A002145(n+1), A045458(n+1)]`
-/

namespace A141973.P17281677206679968186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P17281677206679968186

namespace A141973

/-- `∩[A002145(n+1), A045458(n+1)]` -/
def P17281677206679968186.Spec : Prop :=
  ∀ n, (P17281677206679968186.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P12058569955486405232

`∩[A004623(n+1), A045326(n+1)]`
-/

namespace A141973.P12058569955486405232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P12058569955486405232

namespace A141973

/-- `∩[A004623(n+1), A045326(n+1)]` -/
def P12058569955486405232.Spec : Prop :=
  ∀ n, (P12058569955486405232.a n : ℤ) = A141973 (n + 1)

end A141973

/-! ## A141973.P9301096845996645025

`∩[A045326(n+1), A045458(n+1)]`
-/

namespace A141973.P9301096845996645025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P9301096845996645025

namespace A141973

/-- `∩[A045326(n+1), A045458(n+1)]` -/
def P9301096845996645025.Spec : Prop :=
  ∀ n, (P9301096845996645025.a n : ℤ) = A141973 (n + 1)

end A141973

/-!
# A141974: Primes congruent to 23 mod 28.

The programs for A141974, the canonical program `A141974.P14247569674163781751` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141974 has offset 1).

The definition of A141974 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141974.anchor (n : ℕ) (hn : 1 ≤ n) : A141974 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 23) (n - 1) : ℤ)` in `Proof.A141.A141974`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141974.P14247569674163781751

`p?[28*n-5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141974

/-- `p?[28*n-5]` -/
def P14247569674163781751.Spec : Prop :=
  ∀ n, P14247569674163781751.a n = A141974 (n + 1)

theorem P14247569674163781751.correct : P14247569674163781751.Spec := by
  intro n
  simp only [A141974, Nat.add_sub_cancel]

end A141974

/-! ## A141974.P15215526085808636350

`∪[A142650(n+1), A142662(n+1)]`
-/

namespace A141974.P15215526085808636350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P15215526085808636350

namespace A141974

/-- `∪[A142650(n+1), A142662(n+1)]` -/
def P15215526085808636350.Spec : Prop :=
  ∀ n, (P15215526085808636350.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P10476630051250258024

`∩[A045392(n+1), A107133(n+1)]`
-/

namespace A141974.P10476630051250258024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P10476630051250258024

namespace A141974

/-- `∩[A045392(n+1), A107133(n+1)]` -/
def P10476630051250258024.Spec : Prop :=
  ∀ n, (P10476630051250258024.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P4552113403608654567

`∩[A107133(n+1), A140442(n+1)]`
-/

namespace A141974.P4552113403608654567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P4552113403608654567

namespace A141974

/-- `∩[A107133(n+1), A140442(n+1)]` -/
def P4552113403608654567.Spec : Prop :=
  ∀ n, (P4552113403608654567.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P7757273712510715663

`∩[A045368(n+1), A107133(n+1)]`
-/

namespace A141974.P7757273712510715663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P7757273712510715663

namespace A141974

/-- `∩[A045368(n+1), A107133(n+1)]` -/
def P7757273712510715663.Spec : Prop :=
  ∀ n, (P7757273712510715663.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P15467963334792837034

`∩[A045343(n+1), A107133(n+1)]`
-/

namespace A141974.P15467963334792837034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P15467963334792837034

namespace A141974

/-- `∩[A045343(n+1), A107133(n+1)]` -/
def P15467963334792837034.Spec : Prop :=
  ∀ n, (P15467963334792837034.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P3343232955831292588

`∩[A045389(n+1), A107133(n+1)]`
-/

namespace A141974.P3343232955831292588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P3343232955831292588

namespace A141974

/-- `∩[A045389(n+1), A107133(n+1)]` -/
def P3343232955831292588.Spec : Prop :=
  ∀ n, (P3343232955831292588.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P13627973549288834089

`∩[A004620(n+1), A107133(n+1)]`
-/

namespace A141974.P13627973549288834089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P13627973549288834089

namespace A141974

/-- `∩[A004620(n+1), A107133(n+1)]` -/
def P13627973549288834089.Spec : Prop :=
  ∀ n, (P13627973549288834089.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P11627385298007416347

`∩[A045341(n+1), A107133(n+1)]`
-/

namespace A141974.P11627385298007416347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P11627385298007416347

namespace A141974

/-- `∩[A045341(n+1), A107133(n+1)]` -/
def P11627385298007416347.Spec : Prop :=
  ∀ n, (P11627385298007416347.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P17198177515428650056

`∩[A045365(n+1), A107133(n+1)]`
-/

namespace A141974.P17198177515428650056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P17198177515428650056

namespace A141974

/-- `∩[A045365(n+1), A107133(n+1)]` -/
def P17198177515428650056.Spec : Prop :=
  ∀ n, (P17198177515428650056.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P13477828330494537144

`∩[A045314(n+1), A107133(n+1)]`
-/

namespace A141974.P13477828330494537144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P13477828330494537144

namespace A141974

/-- `∩[A045314(n+1), A107133(n+1)]` -/
def P13477828330494537144.Spec : Prop :=
  ∀ n, (P13477828330494537144.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P7893896116020725112

`∩[A002145(n+1), A004620(n+1)]`
-/

namespace A141974.P7893896116020725112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P7893896116020725112

namespace A141974

/-- `∩[A002145(n+1), A004620(n+1)]` -/
def P7893896116020725112.Spec : Prop :=
  ∀ n, (P7893896116020725112.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P10632201129609508076

`∩[A003632(n+1), A004620(n+1)]`
-/

namespace A141974.P10632201129609508076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P10632201129609508076

namespace A141974

/-- `∩[A003632(n+1), A004620(n+1)]` -/
def P10632201129609508076.Spec : Prop :=
  ∀ n, (P10632201129609508076.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P11216488346556744043

`∩[A002145(n+1), A045392(n+1)]`
-/

namespace A141974.P11216488346556744043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P11216488346556744043

namespace A141974

/-- `∩[A002145(n+1), A045392(n+1)]` -/
def P11216488346556744043.Spec : Prop :=
  ∀ n, (P11216488346556744043.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P8868669136039311499

`∩[A003632(n+1), A045383(n+1)]`
-/

namespace A141974.P8868669136039311499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P8868669136039311499

namespace A141974

/-- `∩[A003632(n+1), A045383(n+1)]` -/
def P8868669136039311499.Spec : Prop :=
  ∀ n, (P8868669136039311499.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P781273841936502479

`∩[A003632(n+1), A045392(n+1)]`
-/

namespace A141974.P781273841936502479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P781273841936502479

namespace A141974

/-- `∩[A003632(n+1), A045392(n+1)]` -/
def P781273841936502479.Spec : Prop :=
  ∀ n, (P781273841936502479.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P13420825446610071073

`∩[A002145(n+1), A140442(n+1)]`
-/

namespace A141974.P13420825446610071073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P13420825446610071073

namespace A141974

/-- `∩[A002145(n+1), A140442(n+1)]` -/
def P13420825446610071073.Spec : Prop :=
  ∀ n, (P13420825446610071073.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P14838753365315524307

`∩[A003632(n+1), A140442(n+1)]`
-/

namespace A141974.P14838753365315524307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P14838753365315524307

namespace A141974

/-- `∩[A003632(n+1), A140442(n+1)]` -/
def P14838753365315524307.Spec : Prop :=
  ∀ n, (P14838753365315524307.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P9780835047427698736

`∩[A045326(n+1), A140442(n+1)]`
-/

namespace A141974.P9780835047427698736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P9780835047427698736

namespace A141974

/-- `∩[A045326(n+1), A140442(n+1)]` -/
def P9780835047427698736.Spec : Prop :=
  ∀ n, (P9780835047427698736.a n : ℤ) = A141974 (n + 1)

end A141974

/-! ## A141974.P18035579380346731438

`∩[A045392(n+1), A085760(n+1)]`
-/

namespace A141974.P18035579380346731438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141974.P18035579380346731438

namespace A141974

/-- `∩[A045392(n+1), A085760(n+1)]` -/
def P18035579380346731438.Spec : Prop :=
  ∀ n, (P18035579380346731438.a n : ℤ) = A141974 (n + 1)

end A141974

/-!
# A141975: Primes congruent to 25 mod 28.

The programs for A141975, the canonical program `A141975.P13716968267536851497` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141975 has offset 1).

The definition of A141975 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141975.anchor (n : ℕ) (hn : 1 ≤ n) : A141975 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 25) (n - 1) : ℤ)` in `Proof.A141.A141975`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141975.P13587193749206548972

`∪[A142651(n+1), A142663(n+1)]`
-/

namespace A141975.P13587193749206548972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P13587193749206548972

namespace A141975

/-- `∪[A142651(n+1), A142663(n+1)]` -/
def P13587193749206548972.Spec : Prop :=
  ∀ n, (P13587193749206548972.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P13716968267536851497

`p?[28*n-3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141975

/-- `p?[28*n-3]` -/
def P13716968267536851497.Spec : Prop :=
  ∀ n, P13716968267536851497.a n = A141975 (n + 1)

theorem P13716968267536851497.correct : P13716968267536851497.Spec := by
  intro n
  simp only [A141975, Nat.add_sub_cancel]

end A141975

/-! ## A141975.P15070560999621013845

`or(1, p?[3*n+25*(n+1)])`
-/

namespace A141975.P15070560999621013845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 25 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141975.P15070560999621013845

namespace A141975

/-- `or(1, p?[3*n+25*(n+1)])` -/
def P15070560999621013845.Spec : Prop :=
  ∀ n, (P15070560999621013845.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P10388417714865292563

`∩[A008846(n+1), A045462(n+1)]`
-/

namespace A141975.P10388417714865292563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P10388417714865292563

namespace A141975

/-- `∩[A008846(n+1), A045462(n+1)]` -/
def P10388417714865292563.Spec : Prop :=
  ∀ n, (P10388417714865292563.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P6808767598041407511

`∩[A008846(n+1), A045471(n+1)]`
-/

namespace A141975.P6808767598041407511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P6808767598041407511

namespace A141975

/-- `∩[A008846(n+1), A045471(n+1)]` -/
def P6808767598041407511.Spec : Prop :=
  ∀ n, (P6808767598041407511.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P5595594940443735988

`∩[A004622(n+1), A107134(n+1)]`
-/

namespace A141975.P5595594940443735988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P5595594940443735988

namespace A141975

/-- `∩[A004622(n+1), A107134(n+1)]` -/
def P5595594940443735988.Spec : Prop :=
  ∀ n, (P5595594940443735988.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P8845516195979542885

`∩[A004622(n+1), A141172(n+1)]`
-/

namespace A141975.P8845516195979542885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P8845516195979542885

namespace A141975

/-- `∩[A004622(n+1), A141172(n+1)]` -/
def P8845516195979542885.Spec : Prop :=
  ∀ n, (P8845516195979542885.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P2219339456539424378

`∩[A045462(n+1), A107134(n+1)]`
-/

namespace A141975.P2219339456539424378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P2219339456539424378

namespace A141975

/-- `∩[A045462(n+1), A107134(n+1)]` -/
def P2219339456539424378.Spec : Prop :=
  ∀ n, (P2219339456539424378.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P17474488051480427975

`∩[A045471(n+1), A107134(n+1)]`
-/

namespace A141975.P17474488051480427975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P17474488051480427975

namespace A141975

/-- `∩[A045471(n+1), A107134(n+1)]` -/
def P17474488051480427975.Spec : Prop :=
  ∀ n, (P17474488051480427975.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P14266489801220808765

`∩[A045462(n+1), A141172(n+1)]`
-/

namespace A141975.P14266489801220808765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P14266489801220808765

namespace A141975

/-- `∩[A045462(n+1), A141172(n+1)]` -/
def P14266489801220808765.Spec : Prop :=
  ∀ n, (P14266489801220808765.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P6060292973100501220

`∩[A045471(n+1), A141172(n+1)]`
-/

namespace A141975.P6060292973100501220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P6060292973100501220

namespace A141975

/-- `∩[A045471(n+1), A141172(n+1)]` -/
def P6060292973100501220.Spec : Prop :=
  ∀ n, (P6060292973100501220.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P8546107250520839190

`∩[A045441(n+1), A107134(n+1)]`
-/

namespace A141975.P8546107250520839190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P8546107250520839190

namespace A141975

/-- `∩[A045441(n+1), A107134(n+1)]` -/
def P8546107250520839190.Spec : Prop :=
  ∀ n, (P8546107250520839190.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P1690552853820385755

`∩[A045452(n+1), A107134(n+1)]`
-/

namespace A141975.P1690552853820385755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P1690552853820385755

namespace A141975

/-- `∩[A045452(n+1), A107134(n+1)]` -/
def P1690552853820385755.Spec : Prop :=
  ∀ n, (P1690552853820385755.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P5990152530060297994

`∩[A045441(n+1), A141172(n+1)]`
-/

namespace A141975.P5990152530060297994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P5990152530060297994

namespace A141975

/-- `∩[A045441(n+1), A141172(n+1)]` -/
def P5990152530060297994.Spec : Prop :=
  ∀ n, (P5990152530060297994.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P7734444271422847796

`∩[A045452(n+1), A141172(n+1)]`
-/

namespace A141975.P7734444271422847796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P7734444271422847796

namespace A141975

/-- `∩[A045452(n+1), A141172(n+1)]` -/
def P7734444271422847796.Spec : Prop :=
  ∀ n, (P7734444271422847796.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P17142820511286935613

`∩[A045462(n+1), A191218(n+1)]`
-/

namespace A141975.P17142820511286935613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P17142820511286935613

namespace A141975

/-- `∩[A045462(n+1), A191218(n+1)]` -/
def P17142820511286935613.Spec : Prop :=
  ∀ n, (P17142820511286935613.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P15281889080379427139

`∩[A045471(n+1), A191218(n+1)]`
-/

namespace A141975.P15281889080379427139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P15281889080379427139

namespace A141975

/-- `∩[A045471(n+1), A191218(n+1)]` -/
def P15281889080379427139.Spec : Prop :=
  ∀ n, (P15281889080379427139.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P3668472777949750705

`∩[A045421(n+1), A107134(n+1)]`
-/

namespace A141975.P3668472777949750705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P3668472777949750705

namespace A141975

/-- `∩[A045421(n+1), A107134(n+1)]` -/
def P3668472777949750705.Spec : Prop :=
  ∀ n, (P3668472777949750705.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P10696215016404139803

`∩[A045432(n+1), A107134(n+1)]`
-/

namespace A141975.P10696215016404139803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P10696215016404139803

namespace A141975

/-- `∩[A045432(n+1), A107134(n+1)]` -/
def P10696215016404139803.Spec : Prop :=
  ∀ n, (P10696215016404139803.a n : ℤ) = A141975 (n + 1)

end A141975

/-! ## A141975.P2973748734152851026

`∩[A045421(n+1), A141172(n+1)]`
-/

namespace A141975.P2973748734152851026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141975.P2973748734152851026

namespace A141975

/-- `∩[A045421(n+1), A141172(n+1)]` -/
def P2973748734152851026.Spec : Prop :=
  ∀ n, (P2973748734152851026.a n : ℤ) = A141975 (n + 1)

end A141975

/-!
# A141976: Primes congruent to 27 mod 28.

The programs for A141976, the canonical program `A141976.P1655957076475741110` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141976 has offset 1).

The definition of A141976 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141976.anchor (n : ℕ) (hn : 1 ≤ n) : A141976 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({27} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141976`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141976.P1655957076475741110

`∪[A142652(n+1), A142664(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A141976

/-- `∪[A142652(n+1), A142664(n+1)]` -/
def P1655957076475741110.Spec : Prop :=
  ∀ n, (P1655957076475741110.a n : ℤ) = A141976 (n + 1)

theorem P1655957076475741110.correct : P1655957076475741110.Spec := by
  intro n
  simp only [A141976, Nat.add_sub_cancel]

end A141976

/-! ## A141976.P16270544025681646146

`p?[28*n-1]`
-/

namespace A141976.P16270544025681646146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141976.P16270544025681646146

namespace A141976

/-- `p?[28*n-1]` -/
def P16270544025681646146.Spec : Prop :=
  ∀ n, P16270544025681646146.a n = A141976 (n + 1)

end A141976

/-! ## A141976.P385970518431973598

`or(1, p?[28*n+27])`
-/

namespace A141976.P385970518431973598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141976.P385970518431973598

namespace A141976

/-- `or(1, p?[28*n+27])` -/
def P385970518431973598.Spec : Prop :=
  ∀ n, (P385970518431973598.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P4510969931997187474

`A000027(p?[a(n-1)+28])` with `a(0)=27`
-/

namespace A141976.P4510969931997187474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [27] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141976.P4510969931997187474

namespace A141976

/-- `A000027(p?[a(n-1)+28])` -/
def P4510969931997187474.Spec : Prop :=
  ∀ n, P4510969931997187474.a n = A141976 (n + 1)

end A141976

/-! ## A141976.P13218849575484096284

`∩[A004624(n+1), A141173(n+1)]`
-/

namespace A141976.P13218849575484096284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P13218849575484096284

namespace A141976

/-- `∩[A004624(n+1), A141173(n+1)]` -/
def P13218849575484096284.Spec : Prop :=
  ∀ n, (P13218849575484096284.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P9661906384872332338

`∩[A045473(n+1), A141173(n+1)]`
-/

namespace A141976.P9661906384872332338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P9661906384872332338

namespace A141976

/-- `∩[A045473(n+1), A141173(n+1)]` -/
def P9661906384872332338.Spec : Prop :=
  ∀ n, (P9661906384872332338.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P1891091035737029160

`∩[A045389(n+1), A141173(n+1)]`
-/

namespace A141976.P1891091035737029160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P1891091035737029160

namespace A141976

/-- `∩[A045389(n+1), A141173(n+1)]` -/
def P1891091035737029160.Spec : Prop :=
  ∀ n, (P1891091035737029160.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P1675938692644180001

`∩[A045472(n+1), A141173(n+1)]`
-/

namespace A141976.P1675938692644180001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P1675938692644180001

namespace A141976

/-- `∩[A045472(n+1), A141173(n+1)]` -/
def P1675938692644180001.Spec : Prop :=
  ∀ n, (P1675938692644180001.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P16345196957220749399

`∩[A045467(n+1), A141173(n+1)]`
-/

namespace A141976.P16345196957220749399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P16345196957220749399

namespace A141976

/-- `∩[A045467(n+1), A141173(n+1)]` -/
def P16345196957220749399.Spec : Prop :=
  ∀ n, (P16345196957220749399.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P10341116429780074622

`∩[A004624(n+1), A040112(n+1)]`
-/

namespace A141976.P10341116429780074622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P10341116429780074622

namespace A141976

/-- `∩[A004624(n+1), A040112(n+1)]` -/
def P10341116429780074622.Spec : Prop :=
  ∀ n, (P10341116429780074622.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P3534496267154198188

`∩[A040112(n+1), A045473(n+1)]`
-/

namespace A141976.P3534496267154198188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P3534496267154198188

namespace A141976

/-- `∩[A040112(n+1), A045473(n+1)]` -/
def P3534496267154198188.Spec : Prop :=
  ∀ n, (P3534496267154198188.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P13455098418367473693

`∩[A004624(n+1), A038878(n+1)]`
-/

namespace A141976.P13455098418367473693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P13455098418367473693

namespace A141976

/-- `∩[A004624(n+1), A038878(n+1)]` -/
def P13455098418367473693.Spec : Prop :=
  ∀ n, (P13455098418367473693.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P3170508951653511669

`∩[A038878(n+1), A045473(n+1)]`
-/

namespace A141976.P3170508951653511669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P3170508951653511669

namespace A141976

/-- `∩[A038878(n+1), A045473(n+1)]` -/
def P3170508951653511669.Spec : Prop :=
  ∀ n, (P3170508951653511669.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P15585331054005701489

`∩[A045388(n+1), A141173(n+1)]`
-/

namespace A141976.P15585331054005701489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P15585331054005701489

namespace A141976

/-- `∩[A045388(n+1), A141173(n+1)]` -/
def P15585331054005701489.Spec : Prop :=
  ∀ n, (P15585331054005701489.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P3405365759100508993

`∩[A045466(n+1), A141173(n+1)]`
-/

namespace A141976.P3405365759100508993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P3405365759100508993

namespace A141976

/-- `∩[A045466(n+1), A141173(n+1)]` -/
def P3405365759100508993.Spec : Prop :=
  ∀ n, (P3405365759100508993.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P7397995274194118045

`∩[A045385(n+1), A141173(n+1)]`
-/

namespace A141976.P7397995274194118045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P7397995274194118045

namespace A141976

/-- `∩[A045385(n+1), A141173(n+1)]` -/
def P7397995274194118045.Spec : Prop :=
  ∀ n, (P7397995274194118045.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P11151985763155236307

`∩[A004624(n+1), A296934(n+1)]`
-/

namespace A141976.P11151985763155236307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P11151985763155236307

namespace A141976

/-- `∩[A004624(n+1), A296934(n+1)]` -/
def P11151985763155236307.Spec : Prop :=
  ∀ n, (P11151985763155236307.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P13600297020966937608

`∩[A045464(n+1), A296934(n+1)]`
-/

namespace A141976.P13600297020966937608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P13600297020966937608

namespace A141976

/-- `∩[A045464(n+1), A296934(n+1)]` -/
def P13600297020966937608.Spec : Prop :=
  ∀ n, (P13600297020966937608.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P6288159338442941377

`∩[A045473(n+1), A296934(n+1)]`
-/

namespace A141976.P6288159338442941377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P6288159338442941377

namespace A141976

/-- `∩[A045473(n+1), A296934(n+1)]` -/
def P6288159338442941377.Spec : Prop :=
  ∀ n, (P6288159338442941377.a n : ℤ) = A141976 (n + 1)

end A141976

/-! ## A141976.P8338000875521158436

`∩[A002145(n+1), A004624(n+1)]`
-/

namespace A141976.P8338000875521158436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P8338000875521158436

namespace A141976

/-- `∩[A002145(n+1), A004624(n+1)]` -/
def P8338000875521158436.Spec : Prop :=
  ∀ n, (P8338000875521158436.a n : ℤ) = A141976 (n + 1)

end A141976

/-!
# A141977: Primes congruent to 1 mod 29.

The programs for A141977, the canonical program `A141977.P12366910579437342238` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141977 has offset 1).

The definition of A141977 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141977.anchor (n : ℕ) (hn : 1 ≤ n) : A141977 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 1) (n - 1) : ℤ)` in `Proof.A141.A141977`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141977.P12366910579437342238

`p?[29*n+1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141977

/-- `p?[29*n+1]` -/
def P12366910579437342238.Spec : Prop :=
  ∀ n, (P12366910579437342238.a n : ℤ) = A141977 (n + 1)

theorem P12366910579437342238.correct : P12366910579437342238.Spec := by
  intro n
  simp only [A141977, Nat.add_sub_cancel]

end A141977

/-! ## A141977.P10070888851068213232

`or(1, p?[a(n-1)+29])` with `a(0)=1`
-/

namespace A141977.P10070888851068213232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141977.P10070888851068213232

namespace A141977

/-- `or(1, p?[a(n-1)+29])` -/
def P10070888851068213232.Spec : Prop :=
  ∀ n, (P10070888851068213232.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P1644498140810811053

`∩[A038901(n+1), A248572(n)]`
-/

namespace A141977.P1644498140810811053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P1644498140810811053

namespace A141977

/-- `∩[A038901(n+1), A248572(n)]` -/
def P1644498140810811053.Spec : Prop :=
  ∀ n, (P1644498140810811053.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P3897622929352667411

`∩[A191022(n+1), A248572(n)]`
-/

namespace A141977.P3897622929352667411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P3897622929352667411

namespace A141977

/-- `∩[A191022(n+1), A248572(n)]` -/
def P3897622929352667411.Spec : Prop :=
  ∀ n, (P3897622929352667411.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P3663411400475258004

`∩[A122259(n+1), A248572(n)]`
-/

namespace A141977.P3663411400475258004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P3663411400475258004

namespace A141977

/-- `∩[A122259(n+1), A248572(n)]` -/
def P3663411400475258004.Spec : Prop :=
  ∀ n, (P3663411400475258004.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P5636590440419931808

`∩[A000040(n+1), A248572(n)]`
-/

namespace A141977.P5636590440419931808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P5636590440419931808

namespace A141977

/-- `∩[A000040(n+1), A248572(n)]` -/
def P5636590440419931808.Spec : Prop :=
  ∀ n, (P5636590440419931808.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P434705249635428550

`∩[A004139(n+1), A248572(n)]`
-/

namespace A141977.P434705249635428550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P434705249635428550

namespace A141977

/-- `∩[A004139(n+1), A248572(n)]` -/
def P434705249635428550.Spec : Prop :=
  ∀ n, (P434705249635428550.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P4574985633248474198

`∩[A045319(n+1), A248572(n)]`
-/

namespace A141977.P4574985633248474198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P4574985633248474198

namespace A141977

/-- `∩[A045319(n+1), A248572(n)]` -/
def P4574985633248474198.Spec : Prop :=
  ∀ n, (P4574985633248474198.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P9123476127585961204

`∩[A045344(n+1), A248572(n)]`
-/

namespace A141977.P9123476127585961204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P9123476127585961204

namespace A141977

/-- `∩[A045344(n+1), A248572(n)]` -/
def P9123476127585961204.Spec : Prop :=
  ∀ n, (P9123476127585961204.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P3611738965411894467

`∩[A051948(n+1), A248572(n)]`
-/

namespace A141977.P3611738965411894467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P3611738965411894467

namespace A141977

/-- `∩[A051948(n+1), A248572(n)]` -/
def P3611738965411894467.Spec : Prop :=
  ∀ n, (P3611738965411894467.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P7745721286774537543

`∩[A053813(n+1), A248572(n)]`
-/

namespace A141977.P7745721286774537543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P7745721286774537543

namespace A141977

/-- `∩[A053813(n+1), A248572(n)]` -/
def P7745721286774537543.Spec : Prop :=
  ∀ n, (P7745721286774537543.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P13522767317178224108

`∩[A054723(n+1), A248572(n)]`
-/

namespace A141977.P13522767317178224108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P13522767317178224108

namespace A141977

/-- `∩[A054723(n+1), A248572(n)]` -/
def P13522767317178224108.Spec : Prop :=
  ∀ n, (P13522767317178224108.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P3531440205682901038

`∩[A065091(n+1), A248572(n)]`
-/

namespace A141977.P3531440205682901038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P3531440205682901038

namespace A141977

/-- `∩[A065091(n+1), A248572(n)]` -/
def P3531440205682901038.Spec : Prop :=
  ∀ n, (P3531440205682901038.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P15345928740160544745

`∩[A065376(n+1), A248572(n)]`
-/

namespace A141977.P15345928740160544745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P15345928740160544745

namespace A141977

/-- `∩[A065376(n+1), A248572(n)]` -/
def P15345928740160544745.Spec : Prop :=
  ∀ n, (P15345928740160544745.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P1323364685022495561

`∩[A065396(n+1), A248572(n)]`
-/

namespace A141977.P1323364685022495561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P1323364685022495561

namespace A141977

/-- `∩[A065396(n+1), A248572(n)]` -/
def P1323364685022495561.Spec : Prop :=
  ∀ n, (P1323364685022495561.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P13394834244163582411

`∩[A066542(n+1), A248572(n)]`
-/

namespace A141977.P13394834244163582411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P13394834244163582411

namespace A141977

/-- `∩[A066542(n+1), A248572(n)]` -/
def P13394834244163582411.Spec : Prop :=
  ∀ n, (P13394834244163582411.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P6595544063051295191

`∩[A071621(n+1), A248572(n)]`
-/

namespace A141977.P6595544063051295191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P6595544063051295191

namespace A141977

/-- `∩[A071621(n+1), A248572(n)]` -/
def P6595544063051295191.Spec : Prop :=
  ∀ n, (P6595544063051295191.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P6899573342876540976

`∩[A078132(n+1), A248572(n)]`
-/

namespace A141977.P6899573342876540976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P6899573342876540976

namespace A141977

/-- `∩[A078132(n+1), A248572(n)]` -/
def P6899573342876540976.Spec : Prop :=
  ∀ n, (P6899573342876540976.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P13720898842379998503

`∩[A140826(n+1), A248572(n)]`
-/

namespace A141977.P13720898842379998503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P13720898842379998503

namespace A141977

/-- `∩[A140826(n+1), A248572(n)]` -/
def P13720898842379998503.Spec : Prop :=
  ∀ n, (P13720898842379998503.a n : ℤ) = A141977 (n + 1)

end A141977

/-! ## A141977.P2297898769035335861

`∩[A161839(n+1), A248572(n)]`
-/

namespace A141977.P2297898769035335861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141977.P2297898769035335861

namespace A141977

/-- `∩[A161839(n+1), A248572(n)]` -/
def P2297898769035335861.Spec : Prop :=
  ∀ n, (P2297898769035335861.a n : ℤ) = A141977 (n + 1)

end A141977

/-!
# A141978: Primes congruent to 2 mod 29.

The programs for A141978, there is no canonical definition to state claims against.
-/

/-! ## A141978.P8049530422807915942

`A142715(n%a(n-1))` with `a(0)=2`
-/

namespace A141978.P8049530422807915942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A142715 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A141978.P8049530422807915942

/-! ## A141978.P302538338687446071

`∪[A007352(n+1), A142715(n+1)]`
-/

namespace A141978.P302538338687446071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P302538338687446071

/-! ## A141978.P9404508901652890345

`∪[A142715(n+1), A247214(n+1)]`
-/

namespace A141978.P9404508901652890345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P9404508901652890345

/-! ## A141978.P298336466201479851

`∪[A142715(n+1), A262729(n+1)]`
-/

namespace A141978.P298336466201479851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P298336466201479851

/-! ## A141978.P6344994358333296568

`∪[A142715(n+1), A263645(n+1)]`
-/

namespace A141978.P6344994358333296568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P6344994358333296568

/-! ## A141978.P7924690845749824326

`p?[29*n+2]`
-/

namespace A141978.P7924690845749824326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141978.P7924690845749824326

/-! ## A141978.P6044784858587838485

`∩[A000040(n+1), A248572(n)+1]`
-/

namespace A141978.P6044784858587838485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P6044784858587838485

/-! ## A141978.P7932285701863803648

`∩[A045319(n+1), A248572(n)+1]`
-/

namespace A141978.P7932285701863803648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P7932285701863803648

/-! ## A141978.P2665965787310041031

`∩[A045344(n+1), A248572(n)+1]`
-/

namespace A141978.P2665965787310041031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P2665965787310041031

/-! ## A141978.P15634181247051953226

`∩[A051948(n+1), A248572(n)+1]`
-/

namespace A141978.P15634181247051953226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P15634181247051953226

/-! ## A141978.P16897468779983613857

`∩[A053813(n+1), A248572(n)+1]`
-/

namespace A141978.P16897468779983613857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141978.P16897468779983613857

/-! ## A141978.P3229422962208421926

`record[A006530(29*n+2)]`
-/

namespace A141978.P3229422962208421926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (29 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141978.P3229422962208421926

/-! ## A141978.P6081814340540467798

`record[A020639(29*n+2)]`
-/

namespace A141978.P6081814340540467798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141978.P6081814340540467798

/-! ## A141978.P2100545019792895795

`record[A001414(A161714(n)+1+n)]`
-/

namespace A141978.P2100545019792895795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A161714 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141978.P2100545019792895795

/-!
# A141979: Primes congruent to 3 mod 29.

The programs for A141979, the canonical program `A141979.P10323436861933130034` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141979 has offset 1).

The definition of A141979 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141979.anchor (n : ℕ) (hn : 1 ≤ n) : A141979 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 3) (n - 1) : ℤ)` in `Proof.A141.A141979`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141979.P10323436861933130034

`p?[29*n+3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141979

/-- `p?[29*n+3]` -/
def P10323436861933130034.Spec : Prop :=
  ∀ n, (P10323436861933130034.a n : ℤ) = A141979 (n + 1)

theorem P10323436861933130034.correct : P10323436861933130034.Spec := by
  intro n
  simp only [A141979, Nat.add_sub_cancel]

end A141979

/-! ## A141979.P18431552554022755542

`or(1, p?[a(n-1)+29])` with `a(0)=3`
-/

namespace A141979.P18431552554022755542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141979.P18431552554022755542

namespace A141979

/-- `or(1, p?[a(n-1)+29])` -/
def P18431552554022755542.Spec : Prop :=
  ∀ n, (P18431552554022755542.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P9288954105417405628

`A000027(p?[A248572(n)+2])`
-/

namespace A141979.P9288954105417405628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141979.P9288954105417405628

namespace A141979

/-- `A000027(p?[A248572(n)+2])` -/
def P9288954105417405628.Spec : Prop :=
  ∀ n, P9288954105417405628.a n = A141979 (n + 1)

end A141979

/-! ## A141979.P2096702947511805461

`lcm(p?[A249674(n)+3-n], A057077(n))`
-/

namespace A141979.P2096702947511805461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + (3 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A057077 n)

end

end A141979.P2096702947511805461

namespace A141979

/-- `lcm(p?[A249674(n)+3-n], A057077(n))` -/
def P2096702947511805461.Spec : Prop :=
  ∀ n, (P2096702947511805461.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P10390576606775648083

`A000027(p?[A161709(n)+A017017(n)-1])`
-/

namespace A141979.P10390576606775648083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A017017 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141979.P10390576606775648083

namespace A141979

/-- `A000027(p?[A161709(n)+A017017(n)-1])` -/
def P10390576606775648083.Spec : Prop :=
  ∀ n, P10390576606775648083.a n = A141979 (n + 1)

end A141979

/-! ## A141979.P1990177577016710698

`p?[A249674(n)-n+3]/A008683(A229498(n+1))`
-/

namespace A141979.P1990177577016710698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - (n : ℤ) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008683 (A229498 (n + 1)).toNat : ℚ)

end

end A141979.P1990177577016710698

namespace A141979

/-- `p?[A249674(n)-n+3]/A008683(A229498(n+1))` -/
def P1990177577016710698.Spec : Prop :=
  ∀ n, P1990177577016710698.a n = (A141979 (n + 1) : ℚ)

end A141979

/-! ## A141979.P3143863613348816816

`∩[A000040(n+1), A248572(n)+2]`
-/

namespace A141979.P3143863613348816816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P3143863613348816816

namespace A141979

/-- `∩[A000040(n+1), A248572(n)+2]` -/
def P3143863613348816816.Spec : Prop :=
  ∀ n, (P3143863613348816816.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P14361547787097487587

`∩[A004139(n+1), A248572(n)+2]`
-/

namespace A141979.P14361547787097487587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P14361547787097487587

namespace A141979

/-- `∩[A004139(n+1), A248572(n)+2]` -/
def P14361547787097487587.Spec : Prop :=
  ∀ n, (P14361547787097487587.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P7386477681661829134

`∩[A045319(n+1), A248572(n)+2]`
-/

namespace A141979.P7386477681661829134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P7386477681661829134

namespace A141979

/-- `∩[A045319(n+1), A248572(n)+2]` -/
def P7386477681661829134.Spec : Prop :=
  ∀ n, (P7386477681661829134.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P12624401447714178278

`∩[A051948(n+1), A248572(n)+2]`
-/

namespace A141979.P12624401447714178278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P12624401447714178278

namespace A141979

/-- `∩[A051948(n+1), A248572(n)+2]` -/
def P12624401447714178278.Spec : Prop :=
  ∀ n, (P12624401447714178278.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P8444311109066207939

`∩[A065091(n+1), A248572(n)+2]`
-/

namespace A141979.P8444311109066207939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P8444311109066207939

namespace A141979

/-- `∩[A065091(n+1), A248572(n)+2]` -/
def P8444311109066207939.Spec : Prop :=
  ∀ n, (P8444311109066207939.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P3622151136632835532

`∩[A140826(n+1), A248572(n)+2]`
-/

namespace A141979.P3622151136632835532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P3622151136632835532

namespace A141979

/-- `∩[A140826(n+1), A248572(n)+2]` -/
def P3622151136632835532.Spec : Prop :=
  ∀ n, (P3622151136632835532.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P6484552482852810093

`∩[2*A248572(n)+1, A053813(n+2)]`
-/

namespace A141979.P6484552482852810093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248572 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141979.P6484552482852810093

namespace A141979

/-- `∩[2*A248572(n)+1, A053813(n+2)]` -/
def P6484552482852810093.Spec : Prop :=
  ∀ n, (P6484552482852810093.a n : ℤ) = A141979 (n + 1)

end A141979

/-! ## A141979.P12585250963697429345

`record[A020639(29*n+3)]`
-/

namespace A141979.P12585250963697429345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141979.P12585250963697429345

namespace A141979

/-- `record[A020639(29*n+3)]` -/
def P12585250963697429345.Spec : Prop :=
  ∀ n, P12585250963697429345.a n = A141979 (n + 1)

end A141979

/-! ## A141979.P765735403463976792

`record[A006530(2*(29*n+1)+1)]`
-/

namespace A141979.P765735403463976792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (29 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141979.P765735403463976792

namespace A141979

/-- `record[A006530(2*(29*n+1)+1)]` -/
def P765735403463976792.Spec : Prop :=
  ∀ n, P765735403463976792.a n = A141979 (n + 1)

end A141979

/-!
# A141980: Primes congruent to 4 mod 29.

The programs for A141980, the canonical program `A141980.P3857999304278642684` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141980 has offset 1).

The definition of A141980 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141980.anchor (n : ℕ) (hn : 1 ≤ n) : A141980 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 4) (n - 1) : ℤ)` in `Proof.A141.A141980`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141980.P3857999304278642684

`p?[29*n+4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141980

/-- `p?[29*n+4]` -/
def P3857999304278642684.Spec : Prop :=
  ∀ n, (P3857999304278642684.a n : ℤ) = A141980 (n + 1)

theorem P3857999304278642684.correct : P3857999304278642684.Spec := by
  intro n
  simp only [A141980, Nat.add_sub_cancel]

end A141980

/-! ## A141980.P15325555211497401127

`or(1, p?[a(n-1)+29])` with `a(0)=4`
-/

namespace A141980.P15325555211497401127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141980.P15325555211497401127

namespace A141980

/-- `or(1, p?[a(n-1)+29])` -/
def P15325555211497401127.Spec : Prop :=
  ∀ n, (P15325555211497401127.a n : ℤ) = A141980 (n + 1)

end A141980

/-! ## A141980.P11372128774577770369

`or(1, p?[A103214(n)+A016885(n)])`
-/

namespace A141980.P11372128774577770369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141980.P11372128774577770369

namespace A141980

/-- `or(1, p?[A103214(n)+A016885(n)])` -/
def P11372128774577770369.Spec : Prop :=
  ∀ n, P11372128774577770369.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P6860311292410041804

`A000027(p?[A103214(n)+A016885(n)])`
-/

namespace A141980.P6860311292410041804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141980.P6860311292410041804

namespace A141980

/-- `A000027(p?[A103214(n)+A016885(n)])` -/
def P6860311292410041804.Spec : Prop :=
  ∀ n, P6860311292410041804.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P9621158809721533940

`A000027(p?[A161709(n)+A017017(n)])`
-/

namespace A141980.P9621158809721533940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141980.P9621158809721533940

namespace A141980

/-- `A000027(p?[A161709(n)+A017017(n)])` -/
def P9621158809721533940.Spec : Prop :=
  ∀ n, P9621158809721533940.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P687590732837787888

`p?[A139609(n)-A017041(n)]%A017499(n)`
-/

namespace A141980.P687590732837787888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017499 n)

end

end A141980.P687590732837787888

namespace A141980

/-- `p?[A139609(n)-A017041(n)]%A017499(n)` -/
def P687590732837787888.Spec : Prop :=
  ∀ n, P687590732837787888.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P7275640491920210056

`A000007(n+1)+p?[A161705(n)+A017425(n)]`
-/

namespace A141980.P7275640491920210056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141980.P7275640491920210056

namespace A141980

/-- `A000007(n+1)+p?[A161705(n)+A017425(n)]` -/
def P7275640491920210056.Spec : Prop :=
  ∀ n, P7275640491920210056.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P768992454185260053

`p?[A103214(n)+A016885(n)]%A001844(n+2)²`
-/

namespace A141980.P768992454185260053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001844 (n + 2) ^ 2)

end

end A141980.P768992454185260053

namespace A141980

/-- `p?[A103214(n)+A016885(n)]%A001844(n+2)²` -/
def P768992454185260053.Spec : Prop :=
  ∀ n, P768992454185260053.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P15551786253660318655

`record[A006530(A248572(n+5)+3)]`
-/

namespace A141980.P15551786253660318655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 5) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141980.P15551786253660318655

namespace A141980

/-- `record[A006530(A248572(n+5)+3)]` -/
def P15551786253660318655.Spec : Prop :=
  ∀ n, P15551786253660318655.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P554633835427394172

`filter[A169599(2*n+1), A010051(#)]`
-/

namespace A141980.P554633835427394172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141980.P554633835427394172

namespace A141980

/-- `filter[A169599(2*n+1), A010051(#)]` -/
def P554633835427394172.Spec : Prop :=
  ∀ n, P554633835427394172.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P1605446007696533324

`A000265(p?[A161709(n)+A017017(n)])`
-/

namespace A141980.P1605446007696533324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141980.P1605446007696533324

namespace A141980

/-- `A000265(p?[A161709(n)+A017017(n)])` -/
def P1605446007696533324.Spec : Prop :=
  ∀ n, P1605446007696533324.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P9244916144550525138

`A052410(p?[A161705(n)+A017425(n)])`
-/

namespace A141980.P9244916144550525138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141980.P9244916144550525138

namespace A141980

/-- `A052410(p?[A161705(n)+A017425(n)])` -/
def P9244916144550525138.Spec : Prop :=
  ∀ n, P9244916144550525138.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P16914216075859572130

`A052410(p?[A139609(n)-A017041(n)])`
-/

namespace A141980.P16914216075859572130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141980.P16914216075859572130

namespace A141980

/-- `A052410(p?[A139609(n)-A017041(n)])` -/
def P16914216075859572130.Spec : Prop :=
  ∀ n, P16914216075859572130.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P14816170159636164167

`filter[A169599(2*n+1), A323153(#)]`
-/

namespace A141980.P14816170159636164167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141980.P14816170159636164167

namespace A141980

/-- `filter[A169599(2*n+1), A323153(#)]` -/
def P14816170159636164167.Spec : Prop :=
  ∀ n, P14816170159636164167.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P12527737619623249620

`filter[A169599(2*n+1), A351957(#)]`
-/

namespace A141980.P12527737619623249620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A141980.P12527737619623249620

namespace A141980

/-- `filter[A169599(2*n+1), A351957(#)]` -/
def P12527737619623249620.Spec : Prop :=
  ∀ n, P12527737619623249620.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P6547512758338727671

`filter[A169599(2*n+1), A353817(#)]`
-/

namespace A141980.P6547512758338727671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A141980.P6547512758338727671

namespace A141980

/-- `filter[A169599(2*n+1), A353817(#)]` -/
def P6547512758338727671.Spec : Prop :=
  ∀ n, P6547512758338727671.a n = A141980 (n + 1)

end A141980

/-! ## A141980.P9139541296222062551

`record[A006530(A161714(n+3)+A139222(n+8))]`
-/

namespace A141980.P9139541296222062551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161714 (n + 3) + A139222 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141980.P9139541296222062551

namespace A141980

/-- `record[A006530(A161714(n+3)+A139222(n+8))]` -/
def P9139541296222062551.Spec : Prop :=
  ∀ n, P9139541296222062551.a n = A141980 (n + 1)

end A141980

/-!
# A141981: Primes congruent to 5 mod 29.

The programs for A141981, the canonical program `A141981.P7676313301708460617` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141981 has offset 1).

The definition of A141981 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141981.anchor (n : ℕ) (hn : 1 ≤ n) : A141981 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 5) (n - 1) : ℤ)` in `Proof.A141.A141981`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141981.P7676313301708460617

`p?[5+29*n]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141981

/-- `p?[5+29*n]` -/
def P7676313301708460617.Spec : Prop :=
  ∀ n, (P7676313301708460617.a n : ℤ) = A141981 (n + 1)

theorem P7676313301708460617.correct : P7676313301708460617.Spec := by
  intro n
  simp only [A141981, Nat.add_sub_cancel]

end A141981

/-! ## A141981.P2488891778770471664

`A000027(p?[A139249(n+1)-(n+1)])`
-/

namespace A141981.P2488891778770471664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P2488891778770471664

namespace A141981

/-- `A000027(p?[A139249(n+1)-(n+1)])` -/
def P2488891778770471664.Spec : Prop :=
  ∀ n, P2488891778770471664.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P9565801506717321248

`A000027(p?[A103214(n)+A016897(n)])`
-/

namespace A141981.P9565801506717321248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P9565801506717321248

namespace A141981

/-- `A000027(p?[A103214(n)+A016897(n)])` -/
def P9565801506717321248.Spec : Prop :=
  ∀ n, P9565801506717321248.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P6380941249612999780

`A000027(p?[A139609(n)-A017029(n)])`
-/

namespace A141981.P6380941249612999780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P6380941249612999780

namespace A141981

/-- `A000027(p?[A139609(n)-A017029(n)])` -/
def P6380941249612999780.Spec : Prop :=
  ∀ n, P6380941249612999780.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P4532328588727648291

`A000027(p?[A190991(n)+A119413(n+1)])`
-/

namespace A141981.P4532328588727648291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P4532328588727648291

namespace A141981

/-- `A000027(p?[A190991(n)+A119413(n+1)])` -/
def P4532328588727648291.Spec : Prop :=
  ∀ n, P4532328588727648291.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P14043133334232273013

`p?[A139609(n)-A017029(n)]%A017054(n)²`
-/

namespace A141981.P14043133334232273013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017054 n ^ 2)

end

end A141981.P14043133334232273013

namespace A141981

/-- `p?[A139609(n)-A017029(n)]%A017054(n)²` -/
def P14043133334232273013.Spec : Prop :=
  ∀ n, P14043133334232273013.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P18364663537880974752

`A000265(p?[A103214(n)+A016897(n)])`
-/

namespace A141981.P18364663537880974752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P18364663537880974752

namespace A141981

/-- `A000265(p?[A103214(n)+A016897(n)])` -/
def P18364663537880974752.Spec : Prop :=
  ∀ n, P18364663537880974752.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P6888148529544174504

`A000265(p?[A139609(n)-A017029(n)])`
-/

namespace A141981.P6888148529544174504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P6888148529544174504

namespace A141981

/-- `A000265(p?[A139609(n)-A017029(n)])` -/
def P6888148529544174504.Spec : Prop :=
  ∀ n, P6888148529544174504.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P17008183130238537754

`A052410(p?[A139609(n)-A017029(n)])`
-/

namespace A141981.P17008183130238537754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P17008183130238537754

namespace A141981

/-- `A052410(p?[A139609(n)-A017029(n)])` -/
def P17008183130238537754.Spec : Prop :=
  ∀ n, P17008183130238537754.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P6261737466181054838

`A007913(p?[A190991(n)+A119413(n+1)])`
-/

namespace A141981.P6261737466181054838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P6261737466181054838

namespace A141981

/-- `A007913(p?[A190991(n)+A119413(n+1)])` -/
def P6261737466181054838.Spec : Prop :=
  ∀ n, P6261737466181054838.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P4697447708651586887

`A007913(p?[A139249(n+1)-A004442(n)])`
-/

namespace A141981.P4697447708651586887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P4697447708651586887

namespace A141981

/-- `A007913(p?[A139249(n+1)-A004442(n)])` -/
def P4697447708651586887.Spec : Prop :=
  ∀ n, P4697447708651586887.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P3478318160944088128

`A000265(p?[A139249(n+1)-A141310(n)])`
-/

namespace A141981.P3478318160944088128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P3478318160944088128

namespace A141981

/-- `A000265(p?[A139249(n+1)-A141310(n)])` -/
def P3478318160944088128.Spec : Prop :=
  ∀ n, P3478318160944088128.a n = A141981 (n + 1)

end A141981

/-! ## A141981.P18122474492673137693

`A299149(p?[A016813(n+1)+A008607(n)])`
-/

namespace A141981.P18122474492673137693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1) + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141981.P18122474492673137693

namespace A141981

/-- `A299149(p?[A016813(n+1)+A008607(n)])` -/
def P18122474492673137693.Spec : Prop :=
  ∀ n, P18122474492673137693.a n = A141981 (n + 1)

end A141981

/-!
# A141982: Primes congruent to 6 mod 29.

The programs for A141982, the canonical program `A141982.P16005638060249871987` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141982 has offset 1).

The definition of A141982 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141982.anchor (n : ℕ) (hn : 1 ≤ n) : A141982 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 6) (n - 1) : ℤ)` in `Proof.A141.A141982`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141982.P16005638060249871987

`p?[29*n+6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141982

/-- `p?[29*n+6]` -/
def P16005638060249871987.Spec : Prop :=
  ∀ n, (P16005638060249871987.a n : ℤ) = A141982 (n + 1)

theorem P16005638060249871987.correct : P16005638060249871987.Spec := by
  intro n
  simp only [A141982, Nat.add_sub_cancel]

end A141982

/-! ## A141982.P8914662069997764437

`A000027(p?[A248572(n)+5])`
-/

namespace A141982.P8914662069997764437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141982.P8914662069997764437

namespace A141982

/-- `A000027(p?[A248572(n)+5])` -/
def P8914662069997764437.Spec : Prop :=
  ∀ n, P8914662069997764437.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P8017789033658113534

`A000027(p?[A139249(n+1)-n])`
-/

namespace A141982.P8017789033658113534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141982.P8017789033658113534

namespace A141982

/-- `A000027(p?[A139249(n+1)-n])` -/
def P8017789033658113534.Spec : Prop :=
  ∀ n, P8017789033658113534.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P13091861751471001005

`A000027(p?[3*A017293(n)-n])`
-/

namespace A141982.P13091861751471001005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A017293 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141982.P13091861751471001005

namespace A141982

/-- `A000027(p?[3*A017293(n)-n])` -/
def P13091861751471001005.Spec : Prop :=
  ∀ n, P13091861751471001005.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P15227880532195839332

`p?[A248572(n)+5]%A158220(n+1)`
-/

namespace A141982.P15227880532195839332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158220 (n + 1))

end

end A141982.P15227880532195839332

namespace A141982

/-- `p?[A248572(n)+5]%A158220(n+1)` -/
def P15227880532195839332.Spec : Prop :=
  ∀ n, P15227880532195839332.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P15856378643154481395

`A000027(p?[A139609(n)-A017017(n)])`
-/

namespace A141982.P15856378643154481395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141982.P15856378643154481395

namespace A141982

/-- `A000027(p?[A139609(n)-A017017(n)])` -/
def P15856378643154481395.Spec : Prop :=
  ∀ n, P15856378643154481395.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P10387116242957776947

`A007318(A057944(n))*p?[A248572(n)-24]`
-/

namespace A141982.P10387116242957776947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141982.P10387116242957776947

namespace A141982

/-- `A007318(A057944(n))*p?[A248572(n)-24]` -/
def P10387116242957776947.Spec : Prop :=
  ∀ n, P10387116242957776947.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P5629147278001883731

`p?[A139609(n)-A017017(n)]%A167499(n+5)²`
-/

namespace A141982.P5629147278001883731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A167499 (n + 5) ^ 2)

end

end A141982.P5629147278001883731

namespace A141982

/-- `p?[A139609(n)-A017017(n)]%A167499(n+5)²` -/
def P5629147278001883731.Spec : Prop :=
  ∀ n, P5629147278001883731.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P10020730493536883115

`A007913(p?[A139249(n+1)-n])`
-/

namespace A141982.P10020730493536883115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141982.P10020730493536883115

namespace A141982

/-- `A007913(p?[A139249(n+1)-n])` -/
def P10020730493536883115.Spec : Prop :=
  ∀ n, P10020730493536883115.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P12153898377270635324

`record[A006530(A128470(n+5)-n)]`
-/

namespace A141982.P12153898377270635324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128470 (n + 5) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141982.P12153898377270635324

namespace A141982

/-- `record[A006530(A128470(n+5)-n)]` -/
def P12153898377270635324.Spec : Prop :=
  ∀ n, P12153898377270635324.a n = A141982 (n + 1)

end A141982

/-! ## A141982.P12691843826114110083

`A000265(p?[A139609(n)-A017017(n)])`
-/

namespace A141982.P12691843826114110083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141982.P12691843826114110083

namespace A141982

/-- `A000265(p?[A139609(n)-A017017(n)])` -/
def P12691843826114110083.Spec : Prop :=
  ∀ n, P12691843826114110083.a n = A141982 (n + 1)

end A141982

/-!
# A141983: Primes congruent to 7 mod 29.

The programs for A141983, the canonical program `A141983.P10641454952790838751` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141983 has offset 1).

The definition of A141983 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141983.anchor (n : ℕ) (hn : 1 ≤ n) : A141983 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 7) (n - 1) : ℤ)` in `Proof.A141.A141983`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141983.P10641454952790838751

`p?[29*n+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141983

/-- `p?[29*n+7]` -/
def P10641454952790838751.Spec : Prop :=
  ∀ n, (P10641454952790838751.a n : ℤ) = A141983 (n + 1)

theorem P10641454952790838751.correct : P10641454952790838751.Spec := by
  intro n
  simp only [A141983, Nat.add_sub_cancel]

end A141983

/-! ## A141983.P12547690317022948415

`A000027(p?[A248572(n)+6])`
-/

namespace A141983.P12547690317022948415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141983.P12547690317022948415

namespace A141983

/-- `A000027(p?[A248572(n)+6])` -/
def P12547690317022948415.Spec : Prop :=
  ∀ n, P12547690317022948415.a n = A141983 (n + 1)

end A141983

/-! ## A141983.P15919960701032613700

`A000027(p?[A128471(n)-n])`
-/

namespace A141983.P15919960701032613700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141983.P15919960701032613700

namespace A141983

/-- `A000027(p?[A128471(n)-n])` -/
def P15919960701032613700.Spec : Prop :=
  ∀ n, P15919960701032613700.a n = A141983 (n + 1)

end A141983

/-! ## A141983.P8589861822177666862

`p?[A128471(n)-n]*A000034(2*n)`
-/

namespace A141983.P8589861822177666862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A141983.P8589861822177666862

namespace A141983

/-- `p?[A128471(n)-n]*A000034(2*n)` -/
def P8589861822177666862.Spec : Prop :=
  ∀ n, P8589861822177666862.a n = A141983 (n + 1)

end A141983

/-! ## A141983.P9366414374465413919

`record[A020639(58*n+7)]`
-/

namespace A141983.P9366414374465413919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (58 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141983.P9366414374465413919

namespace A141983

/-- `record[A020639(58*n+7)]` -/
def P9366414374465413919.Spec : Prop :=
  ∀ n, P9366414374465413919.a n = A141983 (n + 1)

end A141983

/-! ## A141983.P11252491743507318505

`A000265(p?[A139249(n+1)+1-n])`
-/

namespace A141983.P11252491743507318505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141983.P11252491743507318505

namespace A141983

/-- `A000265(p?[A139249(n+1)+1-n])` -/
def P11252491743507318505.Spec : Prop :=
  ∀ n, P11252491743507318505.a n = A141983 (n + 1)

end A141983

/-! ## A141983.P9257969941913123651

`record[A006530(A074828(29*n+7))]`
-/

namespace A141983.P9257969941913123651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (29 * n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141983.P9257969941913123651

namespace A141983

/-- `record[A006530(A074828(29*n+7))]` -/
def P9257969941913123651.Spec : Prop :=
  ∀ n, P9257969941913123651.a n = A141983 (n + 1)

end A141983

/-! ## A141983.P14222383682949907109

`∩[A304724(n+1), A313908(n)+2]`
-/

namespace A141983.P14222383682949907109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141983.P14222383682949907109

namespace A141983

/-- `∩[A304724(n+1), A313908(n)+2]` -/
def P14222383682949907109.Spec : Prop :=
  ∀ n, (P14222383682949907109.a n : ℤ) = A141983 (n + 1)

end A141983

/-! ## A141983.P4289874112757265535

`∩[A304724(n+1), A313155(n)-2]`
-/

namespace A141983.P4289874112757265535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313155 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141983.P4289874112757265535

namespace A141983

/-- `∩[A304724(n+1), A313155(n)-2]` -/
def P4289874112757265535.Spec : Prop :=
  ∀ n, (P4289874112757265535.a n : ℤ) = A141983 (n + 1)

end A141983

/-!
# A141984: Primes congruent to 8 mod 29.

The programs for A141984, the canonical program `A141984.P262604887957215991` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141984 has offset 1).

The definition of A141984 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141984.anchor (n : ℕ) (hn : 1 ≤ n) : A141984 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 8) (n - 1) : ℤ)` in `Proof.A141.A141984`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141984.P262604887957215991

`p?[29*n+8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141984

/-- `p?[29*n+8]` -/
def P262604887957215991.Spec : Prop :=
  ∀ n, (P262604887957215991.a n : ℤ) = A141984 (n + 1)

theorem P262604887957215991.correct : P262604887957215991.Spec := by
  intro n
  simp only [A141984, Nat.add_sub_cancel]

end A141984

/-! ## A141984.P15017593183015594321

`or(1, p?[a(n-1)+29])` with `a(0)=37`
-/

namespace A141984.P15017593183015594321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [37] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141984.P15017593183015594321

namespace A141984

/-- `or(1, p?[a(n-1)+29])` -/
def P15017593183015594321.Spec : Prop :=
  ∀ n, (P15017593183015594321.a n : ℤ) = A141984 (n + 1)

end A141984

/-! ## A141984.P1225873616073672102

`A000027(p?[A139608(n)+n])`
-/

namespace A141984.P1225873616073672102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141984.P1225873616073672102

namespace A141984

/-- `A000027(p?[A139608(n)+n])` -/
def P1225873616073672102.Spec : Prop :=
  ∀ n, P1225873616073672102.a n = A141984 (n + 1)

end A141984

/-! ## A141984.P6547020414581314066

`record[A006530(29*(n+1)+8)]`
-/

namespace A141984.P6547020414581314066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (29 * (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141984.P6547020414581314066

namespace A141984

/-- `record[A006530(29*(n+1)+8)]` -/
def P6547020414581314066.Spec : Prop :=
  ∀ n, P6547020414581314066.a n = A141984 (n + 1)

end A141984

/-! ## A141984.P3509506836056007602

`record[A020639(29*(n+1)+8)]`
-/

namespace A141984.P3509506836056007602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141984.P3509506836056007602

namespace A141984

/-- `record[A020639(29*(n+1)+8)]` -/
def P3509506836056007602.Spec : Prop :=
  ∀ n, P3509506836056007602.a n = A141984 (n + 1)

end A141984

/-! ## A141984.P6327734802921420965

`or(1, p?[A017365(3*n)-n])`
-/

namespace A141984.P6327734802921420965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (3 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141984.P6327734802921420965

namespace A141984

/-- `or(1, p?[A017365(3*n)-n])` -/
def P6327734802921420965.Spec : Prop :=
  ∀ n, P6327734802921420965.a n = A141984 (n + 1)

end A141984

/-!
# A141985: Primes congruent to 9 mod 29.

The programs for A141985, the canonical program `A141985.P5836169948399936421` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141985 has offset 1).

The definition of A141985 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141985.anchor (n : ℕ) (hn : 1 ≤ n) : A141985 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 9) (n - 1) : ℤ)` in `Proof.A141.A141985`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141985.P5836169948399936421

`p?[29*n+9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141985

/-- `p?[29*n+9]` -/
def P5836169948399936421.Spec : Prop :=
  ∀ n, (P5836169948399936421.a n : ℤ) = A141985 (n + 1)

theorem P5836169948399936421.correct : P5836169948399936421.Spec := by
  intro n
  simp only [A141985, Nat.add_sub_cancel]

end A141985

/-! ## A141985.P3465408114607349203

`A000027(p?[A139608(n)+1+n])`
-/

namespace A141985.P3465408114607349203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141985.P3465408114607349203

namespace A141985

/-- `A000027(p?[A139608(n)+1+n])` -/
def P3465408114607349203.Spec : Prop :=
  ∀ n, P3465408114607349203.a n = A141985 (n + 1)

end A141985

/-! ## A141985.P14918524398130690577

`p?[A139608(n)+1+n]%A158744(n+1)`
-/

namespace A141985.P14918524398130690577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158744 (n + 1))

end

end A141985.P14918524398130690577

namespace A141985

/-- `p?[A139608(n)+1+n]%A158744(n+1)` -/
def P14918524398130690577.Spec : Prop :=
  ∀ n, P14918524398130690577.a n = A141985 (n + 1)

end A141985

/-! ## A141985.P9767153806818972820

`p?[A139608(n)+1+n]/A281116(A001747(n+3))`
-/

namespace A141985.P9767153806818972820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A281116 (A001747 (n + 3)).toNat : ℚ)

end

end A141985.P9767153806818972820

namespace A141985

/-- `p?[A139608(n)+1+n]/A281116(A001747(n+3))` -/
def P9767153806818972820.Spec : Prop :=
  ∀ n, P9767153806818972820.a n = (A141985 (n + 1) : ℚ)

end A141985

/-! ## A141985.P4805284945849962503

`record[A006530(58*(n+1)+9)]`
-/

namespace A141985.P4805284945849962503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (58 * (n + 1) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141985.P4805284945849962503

namespace A141985

/-- `record[A006530(58*(n+1)+9)]` -/
def P4805284945849962503.Spec : Prop :=
  ∀ n, P4805284945849962503.a n = A141985 (n + 1)

end A141985

/-! ## A141985.P12100763875392332321

`A007947(p?[3*A017305(n)-n])`
-/

namespace A141985.P12100763875392332321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A017305 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141985.P12100763875392332321

namespace A141985

/-- `A007947(p?[3*A017305(n)-n])` -/
def P12100763875392332321.Spec : Prop :=
  ∀ n, P12100763875392332321.a n = A141985 (n + 1)

end A141985

/-!
# A141986: Primes congruent to 10 mod 29.

The programs for A141986, the canonical program `A141986.P1868741360230948704` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141986 has offset 1).

The definition of A141986 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141986.anchor (n : ℕ) (hn : 1 ≤ n) : A141986 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 10) (n - 1) : ℤ)` in `Proof.A141.A141986`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141986.P1868741360230948704

`p?[29*n+10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141986

/-- `p?[29*n+10]` -/
def P1868741360230948704.Spec : Prop :=
  ∀ n, (P1868741360230948704.a n : ℤ) = A141986 (n + 1)

theorem P1868741360230948704.correct : P1868741360230948704.Spec := by
  intro n
  simp only [A141986, Nat.add_sub_cancel]

end A141986

/-! ## A141986.P5165422706685979202

`A000027(p?[A270296(n+1)-n])`
-/

namespace A141986.P5165422706685979202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141986.P5165422706685979202

namespace A141986

/-- `A000027(p?[A270296(n+1)-n])` -/
def P5165422706685979202.Spec : Prop :=
  ∀ n, P5165422706685979202.a n = A141986 (n + 1)

end A141986

/-! ## A141986.P15408893448842055102

`A000265(p?[A270296(n+1)-n])`
-/

namespace A141986.P15408893448842055102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141986.P15408893448842055102

namespace A141986

/-- `A000265(p?[A270296(n+1)-n])` -/
def P15408893448842055102.Spec : Prop :=
  ∀ n, P15408893448842055102.a n = A141986 (n + 1)

end A141986

/-! ## A141986.P12989397923854745223

`A007947(p?[A270296(n+1)-n])`
-/

namespace A141986.P12989397923854745223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141986.P12989397923854745223

namespace A141986

/-- `A007947(p?[A270296(n+1)-n])` -/
def P12989397923854745223.Spec : Prop :=
  ∀ n, P12989397923854745223.a n = A141986 (n + 1)

end A141986

/-! ## A141986.P13684866495896316461

`A000265(p?[A154266(n+1)+n+n])`
-/

namespace A141986.P13684866495896316461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (n + 1) + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141986.P13684866495896316461

namespace A141986

/-- `A000265(p?[A154266(n+1)+n+n])` -/
def P13684866495896316461.Spec : Prop :=
  ∀ n, P13684866495896316461.a n = A141986 (n + 1)

end A141986

/-! ## A141986.P4451763774267895761

`or(1, p?[A348237(A348227(n+1))+n])`
-/

namespace A141986.P4451763774267895761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 (A348227 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141986.P4451763774267895761

namespace A141986

/-- `or(1, p?[A348237(A348227(n+1))+n])` -/
def P4451763774267895761.Spec : Prop :=
  ∀ n, P4451763774267895761.a n = A141986 (n + 1)

end A141986

/-!
# A141987: Primes congruent to 11 mod 29.

The programs for A141987, the canonical program `A141987.P10298866433799292081` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141987 has offset 1).

The definition of A141987 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141987.anchor (n : ℕ) (hn : 1 ≤ n) : A141987 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 11) (n - 1) : ℤ)` in `Proof.A141.A141987`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141987.P10298866433799292081

`p?[29*n+11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141987

/-- `p?[29*n+11]` -/
def P10298866433799292081.Spec : Prop :=
  ∀ n, (P10298866433799292081.a n : ℤ) = A141987 (n + 1)

theorem P10298866433799292081.correct : P10298866433799292081.Spec := by
  intro n
  simp only [A141987, Nat.add_sub_cancel]

end A141987

/-! ## A141987.P3730135682000386128

`or(1, p?[A139611(n)+A008585(n)])`
-/

namespace A141987.P3730135682000386128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141987.P3730135682000386128

namespace A141987

/-- `or(1, p?[A139611(n)+A008585(n)])` -/
def P3730135682000386128.Spec : Prop :=
  ∀ n, P3730135682000386128.a n = A141987 (n + 1)

end A141987

/-! ## A141987.P5111791997285043345

`or(1, p?[A248572(n)+10])`
-/

namespace A141987.P5111791997285043345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141987.P5111791997285043345

namespace A141987

/-- `or(1, p?[A248572(n)+10])` -/
def P5111791997285043345.Spec : Prop :=
  ∀ n, P5111791997285043345.a n = A141987 (n + 1)

end A141987

/-! ## A141987.P10080364966107897353

`record[A020639(29*n+11)]`
-/

namespace A141987.P10080364966107897353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141987.P10080364966107897353

namespace A141987

/-- `record[A020639(29*n+11)]` -/
def P10080364966107897353.Spec : Prop :=
  ∀ n, P10080364966107897353.a n = A141987 (n + 1)

end A141987

/-! ## A141987.P9639625666709633184

`A000265(p?[A082369(n+1)-(n+2)])`
-/

namespace A141987.P9639625666709633184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141987.P9639625666709633184

namespace A141987

/-- `A000265(p?[A082369(n+1)-(n+2)])` -/
def P9639625666709633184.Spec : Prop :=
  ∀ n, P9639625666709633184.a n = A141987 (n + 1)

end A141987

/-! ## A141987.P15312835720229455670

`A125746(p?[A248572(n)+10])`
-/

namespace A141987.P15312835720229455670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141987.P15312835720229455670

namespace A141987

/-- `A125746(p?[A248572(n)+10])` -/
def P15312835720229455670.Spec : Prop :=
  ∀ n, P15312835720229455670.a n = A141987 (n + 1)

end A141987

/-! ## A141987.P767475484153794915

`A006530(2*p?[A248572(n)-48])`
-/

namespace A141987.P767475484153794915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141987.P767475484153794915

namespace A141987

/-- `A006530(2*p?[A248572(n)-48])` -/
def P767475484153794915.Spec : Prop :=
  ∀ n, P767475484153794915.a n = A141987 (n + 1)

end A141987

/-!
# A141988: Primes congruent to 12 mod 29.

The programs for A141988, the canonical program `A141988.P358394430967254965` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141988 has offset 1).

The definition of A141988 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141988.anchor (n : ℕ) (hn : 1 ≤ n) : A141988 n = (Nat.nth (fun p => p.Prime ∧ p % 29 ∈ ({12} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141988`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141988.P358394430967254965

`p?[a(n-1)+29]` with `a(0)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141988

/-- `p?[a(n-1)+29]` -/
def P358394430967254965.Spec : Prop :=
  ∀ n, (P358394430967254965.a n : ℤ) = A141988 (n + 1)

theorem P358394430967254965.correct : P358394430967254965.Spec := by
  intro n
  simp only [A141988, Nat.add_sub_cancel]

end A141988

/-! ## A141988.P14930504567362406096

`p?[28*n+12+n]`
-/

namespace A141988.P14930504567362406096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n + 12 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141988.P14930504567362406096

namespace A141988

/-- `p?[28*n+12+n]` -/
def P14930504567362406096.Spec : Prop :=
  ∀ n, (P14930504567362406096.a n : ℤ) = A141988 (n + 1)

end A141988

/-! ## A141988.P7515430738811829750

`A000027(p?[A154266(n)+n+n])`
-/

namespace A141988.P7515430738811829750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141988.P7515430738811829750

namespace A141988

/-- `A000027(p?[A154266(n)+n+n])` -/
def P7515430738811829750.Spec : Prop :=
  ∀ n, P7515430738811829750.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P6616178497123969613

`char[A079035(n+1)]+p?[A154266(n)+n+n]`
-/

namespace A141988.P6616178497123969613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A141988.P6616178497123969613

namespace A141988

/-- `char[A079035(n+1)]+p?[A154266(n)+n+n]` -/
def P6616178497123969613.Spec : Prop :=
  ∀ n, P6616178497123969613.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P3851897453750412499

`A000265(p?[A154266(n)+n+n])`
-/

namespace A141988.P3851897453750412499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141988.P3851897453750412499

namespace A141988

/-- `A000265(p?[A154266(n)+n+n])` -/
def P3851897453750412499.Spec : Prop :=
  ∀ n, P3851897453750412499.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P14438725307798642978

`filter[A155096(2*n+1), A010051(#)]`
-/

namespace A141988.P14438725307798642978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141988.P14438725307798642978

namespace A141988

/-- `filter[A155096(2*n+1), A010051(#)]` -/
def P14438725307798642978.Spec : Prop :=
  ∀ n, P14438725307798642978.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P1133205421602105970

`filter[A155096(2*n+1), A355937(#)]`
-/

namespace A141988.P1133205421602105970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141988.P1133205421602105970

namespace A141988

/-- `filter[A155096(2*n+1), A355937(#)]` -/
def P1133205421602105970.Spec : Prop :=
  ∀ n, P1133205421602105970.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P4396669833982080153

`A000265(p?[A082369(n+1)-(n+1)])`
-/

namespace A141988.P4396669833982080153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141988.P4396669833982080153

namespace A141988

/-- `A000265(p?[A082369(n+1)-(n+1)])` -/
def P4396669833982080153.Spec : Prop :=
  ∀ n, P4396669833982080153.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P3083469879221924051

`record[A020639(A004768(A047374(n+1))+n)]`
-/

namespace A141988.P3083469879221924051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004768 (A047374 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141988.P3083469879221924051

namespace A141988

/-- `record[A020639(A004768(A047374(n+1))+n)]` -/
def P3083469879221924051.Spec : Prop :=
  ∀ n, P3083469879221924051.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P6008036039186247092

`filter[A155096(2*n+1), A302777(#)]`
-/

namespace A141988.P6008036039186247092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141988.P6008036039186247092

namespace A141988

/-- `filter[A155096(2*n+1), A302777(#)]` -/
def P6008036039186247092.Spec : Prop :=
  ∀ n, P6008036039186247092.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P8646933858543641845

`filter[A155096(2*n+1), A323152(#)]`
-/

namespace A141988.P8646933858543641845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141988.P8646933858543641845

namespace A141988

/-- `filter[A155096(2*n+1), A323152(#)]` -/
def P8646933858543641845.Spec : Prop :=
  ∀ n, P8646933858543641845.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P5835751505592932420

`filter[A155096(2*n+1), A323153(#)]`
-/

namespace A141988.P5835751505592932420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141988.P5835751505592932420

namespace A141988

/-- `filter[A155096(2*n+1), A323153(#)]` -/
def P5835751505592932420.Spec : Prop :=
  ∀ n, P5835751505592932420.a n = A141988 (n + 1)

end A141988

/-! ## A141988.P17565390297273645390

`record[A006530(3*A144619(n+1)+n+1)]`
-/

namespace A141988.P17565390297273645390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A144619 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141988.P17565390297273645390

namespace A141988

/-- `record[A006530(3*A144619(n+1)+n+1)]` -/
def P17565390297273645390.Spec : Prop :=
  ∀ n, P17565390297273645390.a n = A141988 (n + 1)

end A141988

/-!
# A141989: Primes congruent to 13 mod 29.

The programs for A141989, the canonical program `A141989.P17280600227244085025` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141989 has offset 1).

The definition of A141989 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141989.anchor (n : ℕ) (hn : 1 ≤ n) : A141989 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 13) (n - 1) : ℤ)` in `Proof.A141.A141989`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141989.P17280600227244085025

`p?[29*n+13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141989

/-- `p?[29*n+13]` -/
def P17280600227244085025.Spec : Prop :=
  ∀ n, (P17280600227244085025.a n : ℤ) = A141989 (n + 1)

theorem P17280600227244085025.correct : P17280600227244085025.Spec := by
  intro n
  simp only [A141989, Nat.add_sub_cancel]

end A141989

/-! ## A141989.P5855115327940339389

`A000007(n+1)+p?[A082369(n+1)-n]`
-/

namespace A141989.P5855115327940339389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141989.P5855115327940339389

namespace A141989

/-- `A000007(n+1)+p?[A082369(n+1)-n]` -/
def P5855115327940339389.Spec : Prop :=
  ∀ n, P5855115327940339389.a n = A141989 (n + 1)

end A141989

/-! ## A141989.P13774557462195686638

`∩[A248474(2*n+1)-n, A000040(n+2)]`
-/

namespace A141989.P13774557462195686638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141989.P13774557462195686638

namespace A141989

/-- `∩[A248474(2*n+1)-n, A000040(n+2)]` -/
def P13774557462195686638.Spec : Prop :=
  ∀ n, (P13774557462195686638.a n : ℤ) = A141989 (n + 1)

end A141989

/-! ## A141989.P2538431450463289963

`∩[A248474(2*n+1)-n, A006005(n+2)]`
-/

namespace A141989.P2538431450463289963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141989.P2538431450463289963

namespace A141989

/-- `∩[A248474(2*n+1)-n, A006005(n+2)]` -/
def P2538431450463289963.Spec : Prop :=
  ∀ n, (P2538431450463289963.a n : ℤ) = A141989 (n + 1)

end A141989

/-! ## A141989.P14437309305205664452

`record[A020639(29*n+13)]`
-/

namespace A141989.P14437309305205664452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141989.P14437309305205664452

namespace A141989

/-- `record[A020639(29*n+13)]` -/
def P14437309305205664452.Spec : Prop :=
  ∀ n, P14437309305205664452.a n = A141989 (n + 1)

end A141989

/-! ## A141989.P3787311641677762061

`A000265(p?[A082369(n+1)-n])`
-/

namespace A141989.P3787311641677762061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141989.P3787311641677762061

namespace A141989

/-- `A000265(p?[A082369(n+1)-n])` -/
def P3787311641677762061.Spec : Prop :=
  ∀ n, P3787311641677762061.a n = A141989 (n + 1)

end A141989

/-! ## A141989.P985497792798939370

`A000265(p?[n+1+A154266(n)+n])`
-/

namespace A141989.P985497792798939370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A154266 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141989.P985497792798939370

namespace A141989

/-- `A000265(p?[n+1+A154266(n)+n])` -/
def P985497792798939370.Spec : Prop :=
  ∀ n, P985497792798939370.a n = A141989 (n + 1)

end A141989

/-! ## A141989.P8859343092423119680

`xor(1, record[A020639(A082369(n+1)-n)]-1)`
-/

namespace A141989.P8859343092423119680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A141989.P8859343092423119680

namespace A141989

/-- `xor(1, record[A020639(A082369(n+1)-n)]-1)` -/
def P8859343092423119680.Spec : Prop :=
  ∀ n, P8859343092423119680.a n = A141989 (n + 1)

end A141989

/-! ## A141989.P15651247017348964046

`A093178(p?[A082369(n+1)-n])`
-/

namespace A141989.P15651247017348964046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141989.P15651247017348964046

namespace A141989

/-- `A093178(p?[A082369(n+1)-n])` -/
def P15651247017348964046.Spec : Prop :=
  ∀ n, P15651247017348964046.a n = A141989 (n + 1)

end A141989

/-!
# A141990: Primes congruent to 14 mod 29.

The programs for A141990, the canonical program `A141990.P1843537591823554389` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141990 has offset 1).

The definition of A141990 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141990.anchor (n : ℕ) (hn : 1 ≤ n) : A141990 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 14) (n - 1) : ℤ)` in `Proof.A141.A141990`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141990.P1843537591823554389

`p?[29*n-15]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141990

/-- `p?[29*n-15]` -/
def P1843537591823554389.Spec : Prop :=
  ∀ n, P1843537591823554389.a n = A141990 (n + 1)

theorem P1843537591823554389.correct : P1843537591823554389.Spec := by
  intro n
  simp only [A141990, Nat.add_sub_cancel]

end A141990

/-! ## A141990.P6857052385564906029

`or(1, p?[a(n-1)+29])` with `a(0)=43`
-/

namespace A141990.P6857052385564906029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [43] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141990.P6857052385564906029

namespace A141990

/-- `or(1, p?[a(n-1)+29])` -/
def P6857052385564906029.Spec : Prop :=
  ∀ n, (P6857052385564906029.a n : ℤ) = A141990 (n + 1)

end A141990

/-! ## A141990.P13828054634742395903

`record[A020639(A082369(n+2)-n)]`
-/

namespace A141990.P13828054634742395903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141990.P13828054634742395903

namespace A141990

/-- `record[A020639(A082369(n+2)-n)]` -/
def P13828054634742395903.Spec : Prop :=
  ∀ n, P13828054634742395903.a n = A141990 (n + 1)

end A141990

/-! ## A141990.P16117587113239023662

`A000265(p?[A082369(n+2)-n])`
-/

namespace A141990.P16117587113239023662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141990.P16117587113239023662

namespace A141990

/-- `A000265(p?[A082369(n+2)-n])` -/
def P16117587113239023662.Spec : Prop :=
  ∀ n, P16117587113239023662.a n = A141990 (n + 1)

end A141990

/-! ## A141990.P7627591234879498963

`A000265(p?[A154266(n)+2*(n+1)])`
-/

namespace A141990.P7627591234879498963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141990.P7627591234879498963

namespace A141990

/-- `A000265(p?[A154266(n)+2*(n+1)])` -/
def P7627591234879498963.Spec : Prop :=
  ∀ n, P7627591234879498963.a n = A141990 (n + 1)

end A141990

/-! ## A141990.P13525266506037671084

`record[A020639(A016993(A168384(n+1))+n)]`
-/

namespace A141990.P13525266506037671084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016993 (A168384 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141990.P13525266506037671084

namespace A141990

/-- `record[A020639(A016993(A168384(n+1))+n)]` -/
def P13525266506037671084.Spec : Prop :=
  ∀ n, P13525266506037671084.a n = A141990 (n + 1)

end A141990

/-!
# A141991: Primes congruent to 15 mod 29.

The programs for A141991, the canonical program `A141991.P17212681223087314287` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141991 has offset 1).

The definition of A141991 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141991.anchor (n : ℕ) (hn : 1 ≤ n) : A141991 n = (Nat.nth (fun p => p.Prime ∧ p % 29 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A141.A141991`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141991.P17212681223087314287

`p?[a(n-1)+29]` with `a(0)=15`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141991

/-- `p?[a(n-1)+29]` -/
def P17212681223087314287.Spec : Prop :=
  ∀ n, (P17212681223087314287.a n : ℤ) = A141991 (n + 1)

theorem P17212681223087314287.correct : P17212681223087314287.Spec := by
  intro n
  simp only [A141991, Nat.add_sub_cancel]

end A141991

/-! ## A141991.P3858856493175776404

`p?[28*n-43+n]`
-/

namespace A141991.P3858856493175776404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 * n : ℤ) - 43 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141991.P3858856493175776404

namespace A141991

/-- `p?[28*n-43+n]` -/
def P3858856493175776404.Spec : Prop :=
  ∀ n, P3858856493175776404.a n = A141991 (n + 1)

end A141991

/-! ## A141991.P2514872748341396537

`A000027(p?[A128468(n)-(n+2)])`
-/

namespace A141991.P2514872748341396537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141991.P2514872748341396537

namespace A141991

/-- `A000027(p?[A128468(n)-(n+2)])` -/
def P2514872748341396537.Spec : Prop :=
  ∀ n, P2514872748341396537.a n = A141991 (n + 1)

end A141991

/-! ## A141991.P4303234440354666539

`p?[A128468(n)-(n+2)]+n%A028310(n)`
-/

namespace A141991.P4303234440354666539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n : ℤ) (A028310 n)

end

end A141991.P4303234440354666539

namespace A141991

/-- `p?[A128468(n)-(n+2)]+n%A028310(n)` -/
def P4303234440354666539.Spec : Prop :=
  ∀ n, P4303234440354666539.a n = A141991 (n + 1)

end A141991

/-! ## A141991.P301430364751902173

`p?[A128468(n)-(n+2)]+A008574(n+1)%2`
-/

namespace A141991.P301430364751902173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A008574 (n + 1)) 2

end

end A141991.P301430364751902173

namespace A141991

/-- `p?[A128468(n)-(n+2)]+A008574(n+1)%2` -/
def P301430364751902173.Spec : Prop :=
  ∀ n, P301430364751902173.a n = A141991 (n + 1)

end A141991

/-! ## A141991.P7228782700031135690

`p?[A128468(n)-(n+2)]+A106232(n+1)%2`
-/

namespace A141991.P7228782700031135690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A106232 (n + 1)) 2

end

end A141991.P7228782700031135690

namespace A141991

/-- `p?[A128468(n)-(n+2)]+A106232(n+1)%2` -/
def P7228782700031135690.Spec : Prop :=
  ∀ n, P7228782700031135690.a n = A141991 (n + 1)

end A141991

/-! ## A141991.P1316216189285885465

`p?[A128468(n)-(n+2)]/A008683(A005117(n+1))²`
-/

namespace A141991.P1316216189285885465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A141991.P1316216189285885465

namespace A141991

/-- `p?[A128468(n)-(n+2)]/A008683(A005117(n+1))²` -/
def P1316216189285885465.Spec : Prop :=
  ∀ n, P1316216189285885465.a n = (A141991 (n + 1) : ℚ)

end A141991

/-! ## A141991.P3255448014176818069

`record[A020639(A082369(n+3)-n)]`
-/

namespace A141991.P3255448014176818069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 3) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141991.P3255448014176818069

namespace A141991

/-- `record[A020639(A082369(n+3)-n)]` -/
def P3255448014176818069.Spec : Prop :=
  ∀ n, P3255448014176818069.a n = A141991 (n + 1)

end A141991

/-! ## A141991.P12118853860964519259

`p?[A128468(n)-(n+2)]/A000034(A109798(n+1))`
-/

namespace A141991.P12118853860964519259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000034 (A109798 (n + 1)).toNat : ℚ)

end

end A141991.P12118853860964519259

namespace A141991

/-- `p?[A128468(n)-(n+2)]/A000034(A109798(n+1))` -/
def P12118853860964519259.Spec : Prop :=
  ∀ n, P12118853860964519259.a n = (A141991 (n + 1) : ℚ)

end A141991

/-!
# A141992: Primes congruent to 16 mod 29.

The programs for A141992, the canonical program `A141992.P9628899648759679825` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141992 has offset 1).

The definition of A141992 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141992.anchor (n : ℕ) (hn : 1 ≤ n) : A141992 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 16) (n - 1) : ℤ)` in `Proof.A141.A141992`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141992.P9628899648759679825

`p?[29*n-13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141992

/-- `p?[29*n-13]` -/
def P9628899648759679825.Spec : Prop :=
  ∀ n, P9628899648759679825.a n = A141992 (n + 1)

theorem P9628899648759679825.correct : P9628899648759679825.Spec := by
  intro n
  simp only [A141992, Nat.add_sub_cancel]

end A141992

/-! ## A141992.P10359816421342251516

`A000027(p?[A128468(n)-(n+1)])`
-/

namespace A141992.P10359816421342251516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141992.P10359816421342251516

namespace A141992

/-- `A000027(p?[A128468(n)-(n+1)])` -/
def P10359816421342251516.Spec : Prop :=
  ∀ n, P10359816421342251516.a n = A141992 (n + 1)

end A141992

/-! ## A141992.P2237656534290202992

`A000027(p?[A124388(n)+A004275(n)])`
-/

namespace A141992.P2237656534290202992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141992.P2237656534290202992

namespace A141992

/-- `A000027(p?[A124388(n)+A004275(n)])` -/
def P2237656534290202992.Spec : Prop :=
  ∀ n, P2237656534290202992.a n = A141992 (n + 1)

end A141992

/-! ## A141992.P9732752950171233794

`A000027(p?[A154267(n)+A005408(n)])`
-/

namespace A141992.P9732752950171233794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141992.P9732752950171233794

namespace A141992

/-- `A000027(p?[A154267(n)+A005408(n)])` -/
def P9732752950171233794.Spec : Prop :=
  ∀ n, P9732752950171233794.a n = A141992 (n + 1)

end A141992

/-! ## A141992.P5955482907400820755

`record[A020639(A082369(n+4)-n)]`
-/

namespace A141992.P5955482907400820755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 4) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141992.P5955482907400820755

namespace A141992

/-- `record[A020639(A082369(n+4)-n)]` -/
def P5955482907400820755.Spec : Prop :=
  ∀ n, P5955482907400820755.a n = A141992 (n + 1)

end A141992

/-! ## A141992.P12166470070814525743

`A000265(p?[A154267(n)+A005408(n)])`
-/

namespace A141992.P12166470070814525743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141992.P12166470070814525743

namespace A141992

/-- `A000265(p?[A154267(n)+A005408(n)])` -/
def P12166470070814525743.Spec : Prop :=
  ∀ n, P12166470070814525743.a n = A141992 (n + 1)

end A141992

/-! ## A141992.P17570932276425897217

`A007947(p?[A154267(n)+A005408(n)])`
-/

namespace A141992.P17570932276425897217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141992.P17570932276425897217

namespace A141992

/-- `A007947(p?[A154267(n)+A005408(n)])` -/
def P17570932276425897217.Spec : Prop :=
  ∀ n, P17570932276425897217.a n = A141992 (n + 1)

end A141992

/-! ## A141992.P7763245481206851374

`∩[A304724(n+1), A315707(n)-1]`
-/

namespace A141992.P7763245481206851374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141992.P7763245481206851374

namespace A141992

/-- `∩[A304724(n+1), A315707(n)-1]` -/
def P7763245481206851374.Spec : Prop :=
  ∀ n, (P7763245481206851374.a n : ℤ) = A141992 (n + 1)

end A141992

/-! ## A141992.P5145290479075050992

`record[A006530(A161714(n+3)+A128470(n+4))]`
-/

namespace A141992.P5145290479075050992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161714 (n + 3) + A128470 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141992.P5145290479075050992

namespace A141992

/-- `record[A006530(A161714(n+3)+A128470(n+4))]` -/
def P5145290479075050992.Spec : Prop :=
  ∀ n, P5145290479075050992.a n = A141992 (n + 1)

end A141992

/-!
# A141993: Primes congruent to 17 mod 29.

The programs for A141993, the canonical program `A141993.P500248352914143476` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141993 has offset 1).

The definition of A141993 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141993.anchor (n : ℕ) (hn : 1 ≤ n) : A141993 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 17) (n - 1) : ℤ)` in `Proof.A141.A141993`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141993.P500248352914143476

`p?[58*n+17]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141993

/-- `p?[58*n+17]` -/
def P500248352914143476.Spec : Prop :=
  ∀ n, (P500248352914143476.a n : ℤ) = A141993 (n + 1)

theorem P500248352914143476.correct : P500248352914143476.Spec := by
  intro n
  simp only [A141993, Nat.add_sub_cancel]

end A141993

/-! ## A141993.P14665711185413142160

`or(1, p?[a(n-1)+29])` with `a(0)=17`
-/

namespace A141993.P14665711185413142160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141993.P14665711185413142160

namespace A141993

/-- `or(1, p?[a(n-1)+29])` -/
def P14665711185413142160.Spec : Prop :=
  ∀ n, (P14665711185413142160.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P10319960429145171248

`∩[A063118(2*(n+1))-n, A000040(n+2)]`
-/

namespace A141993.P10319960429145171248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P10319960429145171248

namespace A141993

/-- `∩[A063118(2*(n+1))-n, A000040(n+2)]` -/
def P10319960429145171248.Spec : Prop :=
  ∀ n, (P10319960429145171248.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P5043265656894540633

`∩[A063118(2*(n+1))-n, A008578(n+2)]`
-/

namespace A141993.P5043265656894540633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P5043265656894540633

namespace A141993

/-- `∩[A063118(2*(n+1))-n, A008578(n+2)]` -/
def P5043265656894540633.Spec : Prop :=
  ∀ n, (P5043265656894540633.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P2525691907764120220

`∩[A063118(2*(n+1))-n, A045319(n+2)]`
-/

namespace A141993.P2525691907764120220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P2525691907764120220

namespace A141993

/-- `∩[A063118(2*(n+1))-n, A045319(n+2)]` -/
def P2525691907764120220.Spec : Prop :=
  ∀ n, (P2525691907764120220.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P15470949543914383241

`∩[A063118(2*(n+1))-n, A045344(n+2)]`
-/

namespace A141993.P15470949543914383241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P15470949543914383241

namespace A141993

/-- `∩[A063118(2*(n+1))-n, A045344(n+2)]` -/
def P15470949543914383241.Spec : Prop :=
  ∀ n, (P15470949543914383241.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P4303269813470488877

`∩[A248474(2*(n+1))-n, A000040(n+2)]`
-/

namespace A141993.P4303269813470488877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P4303269813470488877

namespace A141993

/-- `∩[A248474(2*(n+1))-n, A000040(n+2)]` -/
def P4303269813470488877.Spec : Prop :=
  ∀ n, (P4303269813470488877.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P16417929029901586306

`∩[A248474(2*(n+1))-n, A006005(n+2)]`
-/

namespace A141993.P16417929029901586306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P16417929029901586306

namespace A141993

/-- `∩[A248474(2*(n+1))-n, A006005(n+2)]` -/
def P16417929029901586306.Spec : Prop :=
  ∀ n, (P16417929029901586306.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P7105705421214333459

`∩[A248474(2*(n+1))-n, A000430(n+2)]`
-/

namespace A141993.P7105705421214333459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141993.P7105705421214333459

namespace A141993

/-- `∩[A248474(2*(n+1))-n, A000430(n+2)]` -/
def P7105705421214333459.Spec : Prop :=
  ∀ n, (P7105705421214333459.a n : ℤ) = A141993 (n + 1)

end A141993

/-! ## A141993.P1187224830233579524

`record[A020639(58*n+17)]`
-/

namespace A141993.P1187224830233579524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (58 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141993.P1187224830233579524

namespace A141993

/-- `record[A020639(58*n+17)]` -/
def P1187224830233579524.Spec : Prop :=
  ∀ n, P1187224830233579524.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P10742076042320211407

`filter[A155096(2*(n+1)), A010051(#)]`
-/

namespace A141993.P10742076042320211407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141993.P10742076042320211407

namespace A141993

/-- `filter[A155096(2*(n+1)), A010051(#)]` -/
def P10742076042320211407.Spec : Prop :=
  ∀ n, P10742076042320211407.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P11236086549567949491

`filter[A155096(2*(n+1)), A355937(#)]`
-/

namespace A141993.P11236086549567949491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141993.P11236086549567949491

namespace A141993

/-- `filter[A155096(2*(n+1)), A355937(#)]` -/
def P11236086549567949491.Spec : Prop :=
  ∀ n, P11236086549567949491.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P1734174617983129733

`filter[A155096(2*(n+1)), A302777(#)]`
-/

namespace A141993.P1734174617983129733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141993.P1734174617983129733

namespace A141993

/-- `filter[A155096(2*(n+1)), A302777(#)]` -/
def P1734174617983129733.Spec : Prop :=
  ∀ n, P1734174617983129733.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P2586848444776255950

`filter[A155096(2*(n+1)), A323152(#)]`
-/

namespace A141993.P2586848444776255950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141993.P2586848444776255950

namespace A141993

/-- `filter[A155096(2*(n+1)), A323152(#)]` -/
def P2586848444776255950.Spec : Prop :=
  ∀ n, P2586848444776255950.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P16115099005317589995

`filter[A155096(2*(n+1)), A323153(#)]`
-/

namespace A141993.P16115099005317589995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141993.P16115099005317589995

namespace A141993

/-- `filter[A155096(2*(n+1)), A323153(#)]` -/
def P16115099005317589995.Spec : Prop :=
  ∀ n, P16115099005317589995.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P11622242658988578266

`filter[A155096(2*(n+1)), A345950(#)]`
-/

namespace A141993.P11622242658988578266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A141993.P11622242658988578266

namespace A141993

/-- `filter[A155096(2*(n+1)), A345950(#)]` -/
def P11622242658988578266.Spec : Prop :=
  ∀ n, P11622242658988578266.a n = A141993 (n + 1)

end A141993

/-! ## A141993.P14707919253442236267

`filter[A155096(2*(n+1)), A353817(#)]`
-/

namespace A141993.P14707919253442236267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A141993.P14707919253442236267

namespace A141993

/-- `filter[A155096(2*(n+1)), A353817(#)]` -/
def P14707919253442236267.Spec : Prop :=
  ∀ n, P14707919253442236267.a n = A141993 (n + 1)

end A141993

/-!
# A141994: Primes congruent to 18 mod 29.

The programs for A141994, the canonical program `A141994.P10842819423116577708` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141994 has offset 1).

The definition of A141994 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141994.anchor (n : ℕ) (hn : 1 ≤ n) : A141994 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 18) (n - 1) : ℤ)` in `Proof.A141.A141994`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141994.P10842819423116577708

`p?[29*n-11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141994

/-- `p?[29*n-11]` -/
def P10842819423116577708.Spec : Prop :=
  ∀ n, P10842819423116577708.a n = A141994 (n + 1)

theorem P10842819423116577708.correct : P10842819423116577708.Spec := by
  intro n
  simp only [A141994, Nat.add_sub_cancel]

end A141994

/-! ## A141994.P5053911943621256143

`p?[29*n+18]%A142419(n+1)`
-/

namespace A141994.P5053911943621256143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A142419 (n + 1))

end

end A141994.P5053911943621256143

namespace A141994

/-- `p?[29*n+18]%A142419(n+1)` -/
def P5053911943621256143.Spec : Prop :=
  ∀ n, P5053911943621256143.a n = A141994 (n + 1)

end A141994

/-! ## A141994.P5690029892541993779

`A000265(p?[29*n+18])`
-/

namespace A141994.P5690029892541993779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141994.P5690029892541993779

namespace A141994

/-- `A000265(p?[29*n+18])` -/
def P5690029892541993779.Spec : Prop :=
  ∀ n, P5690029892541993779.a n = A141994 (n + 1)

end A141994

/-! ## A141994.P12333557838325399385

`record[A020639(58*(n+1)-11)]`
-/

namespace A141994.P12333557838325399385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (58 * (n + 1) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141994.P12333557838325399385

namespace A141994

/-- `record[A020639(58*(n+1)-11)]` -/
def P12333557838325399385.Spec : Prop :=
  ∀ n, P12333557838325399385.a n = A141994 (n + 1)

end A141994

/-! ## A141994.P17207513740234330503

`A007947(p?[A124388(n)+A005843(n)])`
-/

namespace A141994.P17207513740234330503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141994.P17207513740234330503

namespace A141994

/-- `A007947(p?[A124388(n)+A005843(n)])` -/
def P17207513740234330503.Spec : Prop :=
  ∀ n, P17207513740234330503.a n = A141994 (n + 1)

end A141994

/-! ## A141994.P4944841089004348759

`A007913(p?[A128468(A004442(n))-n])`
-/

namespace A141994.P4944841089004348759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (A004442 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141994.P4944841089004348759

namespace A141994

/-- `A007913(p?[A128468(A004442(n))-n])` -/
def P4944841089004348759.Spec : Prop :=
  ∀ n, P4944841089004348759.a n = A141994 (n + 1)

end A141994

/-! ## A141994.P10533744132867162118

`record[A006530(A091998(A063226(n+2)+1)-n)]`
-/

namespace A141994.P10533744132867162118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A091998 (A063226 (n + 2) + 1).toNat - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141994.P10533744132867162118

namespace A141994

/-- `record[A006530(A091998(A063226(n+2)+1)-n)]` -/
def P10533744132867162118.Spec : Prop :=
  ∀ n, P10533744132867162118.a n = A141994 (n + 1)

end A141994

/-! ## A141994.P11930790091093133919

`record[A006530(19*A016969(n)-1+n+n)]`
-/

namespace A141994.P11930790091093133919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (19 * A016969 n - 1 + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141994.P11930790091093133919

namespace A141994

/-- `record[A006530(19*A016969(n)-1+n+n)]` -/
def P11930790091093133919.Spec : Prop :=
  ∀ n, P11930790091093133919.a n = A141994 (n + 1)

end A141994

/-!
# A141995: Primes congruent to 19 mod 29.

The programs for A141995, the canonical program `A141995.P6291012753824342578` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141995 has offset 1).

The definition of A141995 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141995.anchor (n : ℕ) (hn : 1 ≤ n) : A141995 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 19) (n - 1) : ℤ)` in `Proof.A141.A141995`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141995.P6291012753824342578

`p?[29*n-10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141995

/-- `p?[29*n-10]` -/
def P6291012753824342578.Spec : Prop :=
  ∀ n, P6291012753824342578.a n = A141995 (n + 1)

theorem P6291012753824342578.correct : P6291012753824342578.Spec := by
  intro n
  simp only [A141995, Nat.add_sub_cancel]

end A141995

/-! ## A141995.P2723132307420224566

`or(1, p?[a(n-1)+29])` with `a(0)=19`
-/

namespace A141995.P2723132307420224566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141995.P2723132307420224566

namespace A141995

/-- `or(1, p?[a(n-1)+29])` -/
def P2723132307420224566.Spec : Prop :=
  ∀ n, (P2723132307420224566.a n : ℤ) = A141995 (n + 1)

end A141995

/-! ## A141995.P12796907479723113007

`record[A020639(29*(n+1)-10)]`
-/

namespace A141995.P12796907479723113007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * (n + 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141995.P12796907479723113007

namespace A141995

/-- `record[A020639(29*(n+1)-10)]` -/
def P12796907479723113007.Spec : Prop :=
  ∀ n, P12796907479723113007.a n = A141995 (n + 1)

end A141995

/-! ## A141995.P7203718773887987547

`record[A006530(A270296(n+1)-(n+1))]`
-/

namespace A141995.P7203718773887987547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270296 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141995.P7203718773887987547

namespace A141995

/-- `record[A006530(A270296(n+1)-(n+1))]` -/
def P7203718773887987547.Spec : Prop :=
  ∀ n, P7203718773887987547.a n = A141995 (n + 1)

end A141995

/-! ## A141995.P13998899402632683583

`A000265(p?[A270296(n+1)-(n+1)])`
-/

namespace A141995.P13998899402632683583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141995.P13998899402632683583

namespace A141995

/-- `A000265(p?[A270296(n+1)-(n+1)])` -/
def P13998899402632683583.Spec : Prop :=
  ∀ n, P13998899402632683583.a n = A141995 (n + 1)

end A141995

/-!
# A141996: Primes congruent to 20 mod 29.

The programs for A141996, the canonical program `A141996.P18056026201546484257` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141996 has offset 1).

The definition of A141996 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141996.anchor (n : ℕ) (hn : 1 ≤ n) : A141996 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 20) (n - 1) : ℤ)` in `Proof.A141.A141996`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141996.P18056026201546484257

`p?[29*n-9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141996

/-- `p?[29*n-9]` -/
def P18056026201546484257.Spec : Prop :=
  ∀ n, P18056026201546484257.a n = A141996 (n + 1)

theorem P18056026201546484257.correct : P18056026201546484257.Spec := by
  intro n
  simp only [A141996, Nat.add_sub_cancel]

end A141996

/-! ## A141996.P7722007219857803495

`p?[A248572(n)-10]%A017259(n)`
-/

namespace A141996.P7722007219857803495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017259 n)

end

end A141996.P7722007219857803495

namespace A141996

/-- `p?[A248572(n)-10]%A017259(n)` -/
def P7722007219857803495.Spec : Prop :=
  ∀ n, P7722007219857803495.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P3762214762575197470

`or(p?[A248572(n)-10], A023532(n))`
-/

namespace A141996.P3762214762575197470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A023532 n)

end

end A141996.P3762214762575197470

namespace A141996

/-- `or(p?[A248572(n)-10], A023532(n))` -/
def P3762214762575197470.Spec : Prop :=
  ∀ n, P3762214762575197470.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P3082645944220442145

`or(p?[A248572(n)-10], A010051(n+1))`
-/

namespace A141996.P3082645944220442145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A010051 (n + 1))

end

end A141996.P3082645944220442145

namespace A141996

/-- `or(p?[A248572(n)-10], A010051(n+1))` -/
def P3082645944220442145.Spec : Prop :=
  ∀ n, P3082645944220442145.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P604597725660479295

`p?[A248572(n)+48]%A268332(A116966(n))`
-/

namespace A141996.P604597725660479295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A268332 (A116966 n).toNat)

end

end A141996.P604597725660479295

namespace A141996

/-- `p?[A248572(n)+48]%A268332(A116966(n))` -/
def P604597725660479295.Spec : Prop :=
  ∀ n, P604597725660479295.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P6682025488929268785

`A106400(n)*A106400(n)*p?[A248572(n)+48]`
-/

namespace A141996.P6682025488929268785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n * A106400 n * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141996.P6682025488929268785

namespace A141996

/-- `A106400(n)*A106400(n)*p?[A248572(n)+48]` -/
def P6682025488929268785.Spec : Prop :=
  ∀ n, P6682025488929268785.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P12864546142194590632

`A007913(p?[A248572(n)-10])`
-/

namespace A141996.P12864546142194590632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141996.P12864546142194590632

namespace A141996

/-- `A007913(p?[A248572(n)-10])` -/
def P12864546142194590632.Spec : Prop :=
  ∀ n, P12864546142194590632.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P17879900243557867198

`A000265(p?[A317440(n+1)+A124388(n)])`
-/

namespace A141996.P17879900243557867198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141996.P17879900243557867198

namespace A141996

/-- `A000265(p?[A317440(n+1)+A124388(n)])` -/
def P17879900243557867198.Spec : Prop :=
  ∀ n, P17879900243557867198.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P16519313762172259795

`A125746(p?[A248572(n)-10])`
-/

namespace A141996.P16519313762172259795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141996.P16519313762172259795

namespace A141996

/-- `A125746(p?[A248572(n)-10])` -/
def P16519313762172259795.Spec : Prop :=
  ∀ n, P16519313762172259795.a n = A141996 (n + 1)

end A141996

/-! ## A141996.P8843318956457967067

`record[A006530(A161714(n)+A139222(n+8))]`
-/

namespace A141996.P8843318956457967067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161714 n + A139222 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141996.P8843318956457967067

namespace A141996

/-- `record[A006530(A161714(n)+A139222(n+8))]` -/
def P8843318956457967067.Spec : Prop :=
  ∀ n, P8843318956457967067.a n = A141996 (n + 1)

end A141996

/-!
# A141997: Primes congruent to 21 mod 29.

The programs for A141997, the canonical program `A141997.P6209683941310662624` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141997 has offset 1).

The definition of A141997 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141997.anchor (n : ℕ) (hn : 1 ≤ n) : A141997 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 21) (n - 1) : ℤ)` in `Proof.A141.A141997`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141997.P6209683941310662624

`p?[29*n-8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141997

/-- `p?[29*n-8]` -/
def P6209683941310662624.Spec : Prop :=
  ∀ n, P6209683941310662624.a n = A141997 (n + 1)

theorem P6209683941310662624.correct : P6209683941310662624.Spec := by
  intro n
  simp only [A141997, Nat.add_sub_cancel]

end A141997

/-! ## A141997.P987009184324080673

`A000027(p?[A248572(n)+49])`
-/

namespace A141997.P987009184324080673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141997.P987009184324080673

namespace A141997

/-- `A000027(p?[A248572(n)+49])` -/
def P987009184324080673.Spec : Prop :=
  ∀ n, P987009184324080673.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P8571938590052667298

`or(p?[A248572(n)+49], A000007(n))`
-/

namespace A141997.P8571938590052667298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A141997.P8571938590052667298

namespace A141997

/-- `or(p?[A248572(n)+49], A000007(n))` -/
def P8571938590052667298.Spec : Prop :=
  ∀ n, P8571938590052667298.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P2623091526102483187

`A000035(2*n)+p?[A248572(n)+49]`
-/

namespace A141997.P2623091526102483187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141997.P2623091526102483187

namespace A141997

/-- `A000035(2*n)+p?[A248572(n)+49]` -/
def P2623091526102483187.Spec : Prop :=
  ∀ n, P2623091526102483187.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P16991096822461825240

`p?[A248572(n)+49]%A227994(n+1)`
-/

namespace A141997.P16991096822461825240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A227994 (n + 1))

end

end A141997.P16991096822461825240

namespace A141997

/-- `p?[A248572(n)+49]%A227994(n+1)` -/
def P16991096822461825240.Spec : Prop :=
  ∀ n, P16991096822461825240.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P8627064860979879889

`A000265(p?[A248572(n)-9])`
-/

namespace A141997.P8627064860979879889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141997.P8627064860979879889

namespace A141997

/-- `A000265(p?[A248572(n)-9])` -/
def P8627064860979879889.Spec : Prop :=
  ∀ n, P8627064860979879889.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P14013492851593351685

`A007913(p?[A248572(n)-9])`
-/

namespace A141997.P14013492851593351685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141997.P14013492851593351685

namespace A141997

/-- `A007913(p?[A248572(n)-9])` -/
def P14013492851593351685.Spec : Prop :=
  ∀ n, P14013492851593351685.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P6238995261841237673

`record[A020639(A156376(n+2)-n)]`
-/

namespace A141997.P6238995261841237673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156376 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141997.P6238995261841237673

namespace A141997

/-- `record[A020639(A156376(n+2)-n)]` -/
def P6238995261841237673.Spec : Prop :=
  ∀ n, P6238995261841237673.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P543239653680772541

`record[A006530(A169599(2*(n+3))-2)]`
-/

namespace A141997.P543239653680772541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A169599 (2 * (n + 3)) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141997.P543239653680772541

namespace A141997

/-- `record[A006530(A169599(2*(n+3))-2)]` -/
def P543239653680772541.Spec : Prop :=
  ∀ n, P543239653680772541.a n = A141997 (n + 1)

end A141997

/-! ## A141997.P4110186446745866502

`A000265(p?[A017185(3*n+5)+2*n+3])`
-/

namespace A141997.P4110186446745866502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (3 * n + 5) + (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141997.P4110186446745866502

namespace A141997

/-- `A000265(p?[A017185(3*n+5)+2*n+3])` -/
def P4110186446745866502.Spec : Prop :=
  ∀ n, P4110186446745866502.a n = A141997 (n + 1)

end A141997

/-!
# A141998: Primes congruent to 22 mod 29.

The programs for A141998, the canonical program `A141998.P14469192312741898644` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141998 has offset 1).

The definition of A141998 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141998.anchor (n : ℕ) (hn : 1 ≤ n) : A141998 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 22) (n - 1) : ℤ)` in `Proof.A141.A141998`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141998.P14469192312741898644

`p?[29*n-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141998

/-- `p?[29*n-7]` -/
def P14469192312741898644.Spec : Prop :=
  ∀ n, P14469192312741898644.a n = A141998 (n + 1)

theorem P14469192312741898644.correct : P14469192312741898644.Spec := by
  intro n
  simp only [A141998, Nat.add_sub_cancel]

end A141998

/-! ## A141998.P4480122537726882971

`or(1, p?[A146081(n)-A158057(n)])`
-/

namespace A141998.P4480122537726882971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A158057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141998.P4480122537726882971

namespace A141998

/-- `or(1, p?[A146081(n)-A158057(n)])` -/
def P4480122537726882971.Spec : Prop :=
  ∀ n, P4480122537726882971.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P12634737578435561170

`p?[A146081(n)-A158057(n)]%A002997(n+1)`
-/

namespace A141998.P12634737578435561170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A158057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002997 (n + 1))

end

end A141998.P12634737578435561170

namespace A141998

/-- `p?[A146081(n)-A158057(n)]%A002997(n+1)` -/
def P12634737578435561170.Spec : Prop :=
  ∀ n, P12634737578435561170.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P11887171225366673173

`p?[A157330(n+1)-A016969(n)]%A017462(n)²`
-/

namespace A141998.P11887171225366673173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017462 n ^ 2)

end

end A141998.P11887171225366673173

namespace A141998

/-- `p?[A157330(n+1)-A016969(n)]%A017462(n)²` -/
def P11887171225366673173.Spec : Prop :=
  ∀ n, P11887171225366673173.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P4350665050601498440

`A000027(p?[A128473(n+1)-(n+1)])`
-/

namespace A141998.P4350665050601498440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P4350665050601498440

namespace A141998

/-- `A000027(p?[A128473(n+1)-(n+1)])` -/
def P4350665050601498440.Spec : Prop :=
  ∀ n, P4350665050601498440.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P8344039887312439437

`∩[A092221(n+1), A140561(n+1)]`
-/

namespace A141998.P8344039887312439437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141998.P8344039887312439437

namespace A141998

/-- `∩[A092221(n+1), A140561(n+1)]` -/
def P8344039887312439437.Spec : Prop :=
  ∀ n, (P8344039887312439437.a n : ℤ) = A141998 (n + 1)

end A141998

/-! ## A141998.P12856932966630826872

`∩[A049561(n+1), A092221(n+1)]`
-/

namespace A141998.P12856932966630826872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141998.P12856932966630826872

namespace A141998

/-- `∩[A049561(n+1), A092221(n+1)]` -/
def P12856932966630826872.Spec : Prop :=
  ∀ n, (P12856932966630826872.a n : ℤ) = A141998 (n + 1)

end A141998

/-! ## A141998.P136761772228328126

`∩[A092221(n+1), A318158(n+1)]`
-/

namespace A141998.P136761772228328126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141998.P136761772228328126

namespace A141998

/-- `∩[A092221(n+1), A318158(n+1)]` -/
def P136761772228328126.Spec : Prop :=
  ∀ n, (P136761772228328126.a n : ℤ) = A141998 (n + 1)

end A141998

/-! ## A141998.P15610330770915022066

`record[A020639(A156376(n+3)-n)]`
-/

namespace A141998.P15610330770915022066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156376 (n + 3) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141998.P15610330770915022066

namespace A141998

/-- `record[A020639(A156376(n+3)-n)]` -/
def P15610330770915022066.Spec : Prop :=
  ∀ n, P15610330770915022066.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P10162522419634964343

`record[A006530(A146081(n)-A158057(n))]`
-/

namespace A141998.P10162522419634964343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n - A158057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141998.P10162522419634964343

namespace A141998

/-- `record[A006530(A146081(n)-A158057(n))]` -/
def P10162522419634964343.Spec : Prop :=
  ∀ n, P10162522419634964343.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P6707319877839216933

`A000265(p?[A269044(n)+A125169(n)])`
-/

namespace A141998.P6707319877839216933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P6707319877839216933

namespace A141998

/-- `A000265(p?[A269044(n)+A125169(n)])` -/
def P6707319877839216933.Spec : Prop :=
  ∀ n, P6707319877839216933.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P5099982632789022590

`A000265(p?[A157330(n+1)-A016969(n)])`
-/

namespace A141998.P5099982632789022590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P5099982632789022590

namespace A141998

/-- `A000265(p?[A157330(n+1)-A016969(n)])` -/
def P5099982632789022590.Spec : Prop :=
  ∀ n, P5099982632789022590.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P7743983237179774811

`A007947(p?[A157330(n+1)-A016969(n)])`
-/

namespace A141998.P7743983237179774811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P7743983237179774811

namespace A141998

/-- `A007947(p?[A157330(n+1)-A016969(n)])` -/
def P7743983237179774811.Spec : Prop :=
  ∀ n, P7743983237179774811.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P55029248784779285

`A007913(p?[A016993(4*n+3)+n])`
-/

namespace A141998.P55029248784779285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (4 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P55029248784779285

namespace A141998

/-- `A007913(p?[A016993(4*n+3)+n])` -/
def P55029248784779285.Spec : Prop :=
  ∀ n, P55029248784779285.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P12608343649148132691

`A034699(p?[A304840(n+1)+A016921(n)])`
-/

namespace A141998.P12608343649148132691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P12608343649148132691

namespace A141998

/-- `A034699(p?[A304840(n+1)+A016921(n)])` -/
def P12608343649148132691.Spec : Prop :=
  ∀ n, P12608343649148132691.a n = A141998 (n + 1)

end A141998

/-! ## A141998.P651064873173768303

`A299149(p?[A016813(n)+A008607(n+2)])`
-/

namespace A141998.P651064873173768303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A008607 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141998.P651064873173768303

namespace A141998

/-- `A299149(p?[A016813(n)+A008607(n+2)])` -/
def P651064873173768303.Spec : Prop :=
  ∀ n, P651064873173768303.a n = A141998 (n + 1)

end A141998

/-!
# A141999: Primes congruent to 23 mod 29.

The programs for A141999, the canonical program `A141999.P12192578655231234354` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141999 has offset 1).

The definition of A141999 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141999.anchor (n : ℕ) (hn : 1 ≤ n) : A141999 n = (Nat.nth (fun p => p.Prime ∧ p % 29 = 23) (n - 1) : ℤ)` in `Proof.A141.A141999`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141999.P12192578655231234354

`p?[29*n-6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A141999

/-- `p?[29*n-6]` -/
def P12192578655231234354.Spec : Prop :=
  ∀ n, P12192578655231234354.a n = A141999 (n + 1)

theorem P12192578655231234354.correct : P12192578655231234354.Spec := by
  intro n
  simp only [A141999, Nat.add_sub_cancel]

end A141999

/-! ## A141999.P15807121529374359362

`or(1, p?[29*n+23])`
-/

namespace A141999.P15807121529374359362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141999.P15807121529374359362

namespace A141999

/-- `or(1, p?[29*n+23])` -/
def P15807121529374359362.Spec : Prop :=
  ∀ n, (P15807121529374359362.a n : ℤ) = A141999 (n + 1)

end A141999

/-! ## A141999.P5259446506934393013

`p?[29*n+23]%A033173(n+1)`
-/

namespace A141999.P5259446506934393013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A033173 (n + 1))

end

end A141999.P5259446506934393013

namespace A141999

/-- `p?[29*n+23]%A033173(n+1)` -/
def P5259446506934393013.Spec : Prop :=
  ∀ n, P5259446506934393013.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P4157986622720188027

`∩[A169599(n+1), A304724(n+1)]`
-/

namespace A141999.P4157986622720188027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141999.P4157986622720188027

namespace A141999

/-- `∩[A169599(n+1), A304724(n+1)]` -/
def P4157986622720188027.Spec : Prop :=
  ∀ n, (P4157986622720188027.a n : ℤ) = A141999 (n + 1)

end A141999

/-! ## A141999.P11126682474856892224

`record[A006530(29*(n+1)-6)]`
-/

namespace A141999.P11126682474856892224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (29 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141999.P11126682474856892224

namespace A141999

/-- `record[A006530(29*(n+1)-6)]` -/
def P11126682474856892224.Spec : Prop :=
  ∀ n, P11126682474856892224.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P9484425680335880403

`record[A020639(29*(n+1)-6)]`
-/

namespace A141999.P9484425680335880403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141999.P9484425680335880403

namespace A141999

/-- `record[A020639(29*(n+1)-6)]` -/
def P9484425680335880403.Spec : Prop :=
  ∀ n, P9484425680335880403.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P13752462388143159883

`filter[A169599(2*(n+1)), A010051(#)]`
-/

namespace A141999.P13752462388143159883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141999.P13752462388143159883

namespace A141999

/-- `filter[A169599(2*(n+1)), A010051(#)]` -/
def P13752462388143159883.Spec : Prop :=
  ∀ n, P13752462388143159883.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P12186723410068979217

`filter[A169599(2*(n+1)), A257531(#)]`
-/

namespace A141999.P12186723410068979217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A141999.P12186723410068979217

namespace A141999

/-- `filter[A169599(2*(n+1)), A257531(#)]` -/
def P12186723410068979217.Spec : Prop :=
  ∀ n, P12186723410068979217.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P9132909179148022793

`filter[A169599(2*(n+1)), A323152(#)]`
-/

namespace A141999.P9132909179148022793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141999.P9132909179148022793

namespace A141999

/-- `filter[A169599(2*(n+1)), A323152(#)]` -/
def P9132909179148022793.Spec : Prop :=
  ∀ n, P9132909179148022793.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P17031922181933106821

`filter[A169599(2*(n+1)), A323153(#)]`
-/

namespace A141999.P17031922181933106821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141999.P17031922181933106821

namespace A141999

/-- `filter[A169599(2*(n+1)), A323153(#)]` -/
def P17031922181933106821.Spec : Prop :=
  ∀ n, P17031922181933106821.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P297576258841052528

`filter[A169599(2*(n+1)), A351957(#)]`
-/

namespace A141999.P297576258841052528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A141999.P297576258841052528

namespace A141999

/-- `filter[A169599(2*(n+1)), A351957(#)]` -/
def P297576258841052528.Spec : Prop :=
  ∀ n, P297576258841052528.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P1696123334066573026

`filter[A169599(2*(n+1)), A353817(#)]`
-/

namespace A141999.P1696123334066573026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A141999.P1696123334066573026

namespace A141999

/-- `filter[A169599(2*(n+1)), A353817(#)]` -/
def P1696123334066573026.Spec : Prop :=
  ∀ n, P1696123334066573026.a n = A141999 (n + 1)

end A141999

/-! ## A141999.P12412336039903099721

`∩[A304724(n+1), A315707(n)]`
-/

namespace A141999.P12412336039903099721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141999.P12412336039903099721

namespace A141999

/-- `∩[A304724(n+1), A315707(n)]` -/
def P12412336039903099721.Spec : Prop :=
  ∀ n, (P12412336039903099721.a n : ℤ) = A141999 (n + 1)

end A141999

