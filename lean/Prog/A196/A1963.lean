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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A196300: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,1,4,2 for x=0,1,2,3,4.

The programs for A196300, there is no canonical definition to state claims against.
-/

/-! ## A196300.P6477447598756818945

`A196218(n+1)-A369054(A215771(3*n))`
-/

namespace A196300.P6477447598756818945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) - A369054 (A215771 (3 * n)).toNat

end

end A196300.P6477447598756818945

/-! ## A196300.P17342995647860961848

`A196218(n+1)-A280618(A185274(n)*A280618(n))`
-/

namespace A196300.P17342995647860961848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) - A280618 (A185274 n * A280618 n).toNat

end

end A196300.P17342995647860961848

/-! ## A196300.P14230531396552658359

`A196218(n+1)-A071692(A185274(n))`
-/

namespace A196300.P14230531396552658359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) - A071692 (A185274 n).toNat

end

end A196300.P14230531396552658359

/-! ## A196300.P6585630265513816014

`A196685(n+1)-∑[A280618(A185274(n))]`
-/

namespace A196300.P6585630265513816014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A185274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196300.P6585630265513816014

/-! ## A196300.P13860753810022925191

`A301979(A014761(n+1))+A196218(n+1)`
-/

namespace A196300.P13860753810022925191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (A014761 (n + 1)).toNat + A196218 (n + 1)

end

end A196300.P13860753810022925191

/-!
# A196302: Smallest highly composite number that is not a divisor of n-th highly composite number or 0 if no such number exists.

The programs for A196302, there is no canonical definition to state claims against.
-/

/-! ## A196302.P12890200488227898602

`A112819(A003418(n+1))%A094348(n+1)`
-/

namespace A196302.P12890200488227898602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112819 (A003418 (n + 1)).toNat) (A094348 (n + 1))

end

end A196302.P12890200488227898602

/-!
# A196303: Primes p such that (p-1)*2^p+1 is also prime.

The programs for A196303, there is no canonical definition to state claims against.
-/

/-! ## A196303.P775000683022527194

`p?[A128001(n+1)]`
-/

namespace A196303.P775000683022527194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A196303.P775000683022527194

/-! ## A196303.P12757646351718168811

`filter[A128001(n+1), A010051(#)]`
-/

namespace A196303.P12757646351718168811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A196303.P12757646351718168811

/-! ## A196303.P5111864991424642984

`filter[A128001(n+1), A354817(#)]`
-/

namespace A196303.P5111864991424642984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A196303.P5111864991424642984

/-!
# A196304: G.f.: x = Sum_{n>=1} a(n)*x^n/(1 + n*(n+1)/2*x)^n.

The programs for A196304, there is no canonical definition to state claims against.
-/

/-! ## A196304.P12620044782393038775

`A195737(n+1)/(n+1)`
-/

namespace A196304.P12620044782393038775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195737 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A196304.P12620044782393038775

/-! ## A196304.P3945295393773505590

`A103353(n+1)/A000079(n)`
-/

namespace A196304.P3945295393773505590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103353 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A196304.P3945295393773505590

/-! ## A196304.P5642741437786232956

`A103353(n+1)/Δ[A000051(n)]`
-/

namespace A196304.P5642741437786232956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103353 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A196304.P5642741437786232956

/-! ## A196304.P15853509586787192552

`A103353(n+1)/A016116(2*n)`
-/

namespace A196304.P15853509586787192552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103353 (n + 1) : ℚ) / (A016116 (2 * n) : ℚ)

end

end A196304.P15853509586787192552

/-! ## A196304.P6310526187127627444

`A103353(n+1)/A261642(A000124(n))`
-/

namespace A196304.P6310526187127627444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103353 (n + 1) : ℚ) / (A261642 (A000124 n).toNat : ℚ)

end

end A196304.P6310526187127627444

/-!
# A196305: a(n) = 15*2^n - 1.

The programs for A196305, the canonical program `A196305.P3219067535703506014` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196305 has offset 0).

The definition of A196305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^n-1` (program `A196305.P3219067535703506014`, by `A196305.P3219067535703506014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196305.P3219067535703506014

`15*2^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196305

/-- `15*2^n-1` -/
def P3219067535703506014.Spec : Prop :=
  ∀ n, P3219067535703506014.a n = A196305 n

theorem P3219067535703506014.correct : P3219067535703506014.Spec := by
  intro n
  simp only [A196305]

end A196305

/-! ## A196305.P9267052663222653229

`ogf((14-13x)/(1-3x+2x^2))`
-/

namespace A196305.P9267052663222653229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -13] [1, -3, 2] n

end

end A196305.P9267052663222653229

namespace A196305

/-- `ogf((14-13x)/(1-3x+2x^2))` -/
def P9267052663222653229.Spec : Prop :=
  ∀ n, P9267052663222653229.a n = A196305 n

end A196305

/-! ## A196305.P15217106381477011534

`or(1, 2*a(n-1))` with `a(0)=14`
-/

namespace A196305.P15217106381477011534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A196305.P15217106381477011534

namespace A196305

/-- `or(1, 2*a(n-1))` -/
def P15217106381477011534.Spec : Prop :=
  ∀ n, (P15217106381477011534.a n : ℤ) = A196305 n

end A196305

/-! ## A196305.P12441730205608812058

`xor(1, 2*a(n-1))` with `a(0)=14`
-/

namespace A196305.P12441730205608812058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A196305.P12441730205608812058

namespace A196305

/-- `xor(1, 2*a(n-1))` -/
def P12441730205608812058.Spec : Prop :=
  ∀ n, (P12441730205608812058.a n : ℤ) = A196305 n

end A196305

/-! ## A196305.P6853371498598918809

`∑[2*a(n-1)]` with `a(0)=14, a(1)=15`
-/

namespace A196305.P6853371498598918809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 15] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196305.P6853371498598918809

namespace A196305

/-- `∑[2*a(n-1)]` -/
def P6853371498598918809.Spec : Prop :=
  ∀ n, (P6853371498598918809.a n : ℤ) = A196305 n

end A196305

/-! ## A196305.P146151537829399390

`∑[a(n-1)+a(n-1)]` with `a(0)=14, a(1)=15`
-/

namespace A196305.P146151537829399390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 15] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196305.P146151537829399390

namespace A196305

/-- `∑[a(n-1)+a(n-1)]` -/
def P146151537829399390.Spec : Prop :=
  ∀ n, (P146151537829399390.a n : ℤ) = A196305 n

end A196305

/-! ## A196305.P463034305287171122

`xor(A020707(n), A086225(n))`
-/

namespace A196305.P463034305287171122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A086225 n)

end

end A196305.P463034305287171122

namespace A196305

/-- `xor(A020707(n), A086225(n))` -/
def P463034305287171122.Spec : Prop :=
  ∀ n, P463034305287171122.a n = A196305 n

end A196305

/-! ## A196305.P12102977266757745536

`xor(A110286(n), A126646(n))`
-/

namespace A196305.P12102977266757745536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110286 n) (A126646 n)

end

end A196305.P12102977266757745536

namespace A196305

/-- `xor(A110286(n), A126646(n))` -/
def P12102977266757745536.Spec : Prop :=
  ∀ n, P12102977266757745536.a n = A196305 n

end A196305

/-! ## A196305.P5513548309694476881

`xor(A005029(n), A126646(n+1))`
-/

namespace A196305.P5513548309694476881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005029 n) (A126646 (n + 1))

end

end A196305.P5513548309694476881

namespace A196305

/-- `xor(A005029(n), A126646(n+1))` -/
def P5513548309694476881.Spec : Prop :=
  ∀ n, P5513548309694476881.a n = A196305 n

end A196305

/-! ## A196305.P4338711220310909118

`xor(A081808(n+1), A153893(n))`
-/

namespace A196305.P4338711220310909118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081808 (n + 1)) (A153893 n)

end

end A196305.P4338711220310909118

namespace A196305

/-- `xor(A081808(n+1), A153893(n))` -/
def P4338711220310909118.Spec : Prop :=
  ∀ n, P4338711220310909118.a n = A196305 n

end A196305

/-! ## A196305.P8579297669809209470

`xor(A198275(n)-A005029(n), A005029(n))`
-/

namespace A196305.P8579297669809209470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198275 n - A005029 n) (A005029 n)

end

end A196305.P8579297669809209470

namespace A196305

/-- `xor(A198275(n)-A005029(n), A005029(n))` -/
def P8579297669809209470.Spec : Prop :=
  ∀ n, P8579297669809209470.a n = A196305 n

end A196305

/-! ## A196305.P15213646675647003937

`xor(A198275(n)-A020714(n), A020714(n))`
-/

namespace A196305.P15213646675647003937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198275 n - A020714 n) (A020714 n)

end

end A196305.P15213646675647003937

namespace A196305

/-- `xor(A198275(n)-A020714(n), A020714(n))` -/
def P15213646675647003937.Spec : Prop :=
  ∀ n, P15213646675647003937.a n = A196305 n

end A196305

/-! ## A196305.P11420047312391912385

`A060182(n+3)/2`
-/

namespace A196305.P11420047312391912385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060182 (n + 3) : ℚ) / 2

end

end A196305.P11420047312391912385

namespace A196305

/-- `A060182(n+3)/2` -/
def P11420047312391912385.Spec : Prop :=
  ∀ n, P11420047312391912385.a n = (A196305 n : ℚ)

end A196305

/-! ## A196305.P11831115701659223427

`(A195744(n)-3)/2`
-/

namespace A196305.P11831115701659223427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195744 n - 3 : ℚ) / 2

end

end A196305.P11831115701659223427

namespace A196305

/-- `(A195744(n)-3)/2` -/
def P11831115701659223427.Spec : Prop :=
  ∀ n, P11831115701659223427.a n = (A196305 n : ℚ)

end A196305

/-! ## A196305.P17862316122870968681

`Δ[A134638(n+1)+(n+3)²]`
-/

namespace A196305.P17862316122870968681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134638 (n + 1) + ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196305.P17862316122870968681

namespace A196305

/-- `Δ[A134638(n+1)+(n+3)²]` -/
def P17862316122870968681.Spec : Prop :=
  ∀ n, P17862316122870968681.a n = A196305 n

end A196305

/-! ## A196305.P16336042177153400852

`(A182461(n+1)-A089143(n+1))/2`
-/

namespace A196305.P16336042177153400852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182461 (n + 1) - A089143 (n + 1) : ℚ) / 2

end

end A196305.P16336042177153400852

namespace A196305

/-- `(A182461(n+1)-A089143(n+1))/2` -/
def P16336042177153400852.Spec : Prop :=
  ∀ n, P16336042177153400852.a n = (A196305 n : ℚ)

end A196305

/-! ## A196305.P509980258023656320

`A375155(n+1)%A110288(n)`
-/

namespace A196305.P509980258023656320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375155 (n + 1)) (A110288 n)

end

end A196305.P509980258023656320

namespace A196305

/-- `A375155(n+1)%A110288(n)` -/
def P509980258023656320.Spec : Prop :=
  ∀ n, P509980258023656320.a n = A196305 n

end A196305

/-!
# A196306: Coefficients of g.f. A(x) where -1 <= a(n) <= 1 for all n>1, with initial terms {1,3}, such that A(x)^(1/3) consists entirely of integer coefficients.

The programs for A196306, there is no canonical definition to state claims against.
-/

/-! ## A196306.P5841067447669088891

`A348951(2*n+3)+A049076(∑[A059801(n+1)])`
-/

namespace A196306.P5841067447669088891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (2 * n + 3) + A049076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196306.P5841067447669088891

/-!
# A196307: The cube of the g.f. equals the g.f. of A196306.

The programs for A196307, there is no canonical definition to state claims against.
-/

/-! ## A196307.P11489107894671984875

`A107092(n)-A185284(4*n+1)`
-/

namespace A196307.P11489107894671984875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107092 n - A185284 (4 * n + 1)

end

end A196307.P11489107894671984875

/-! ## A196307.P9043260214226974740

`A107093(3*n)-A185284(4*n+1)`
-/

namespace A196307.P9043260214226974740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107093 (3 * n) - A185284 (4 * n + 1)

end

end A196307.P9043260214226974740

/-! ## A196307.P9586037042004876352

`A107092(n)-A024155(A000111(n))`
-/

namespace A196307.P9586037042004876352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107092 n - A024155 (A000111 n).toNat

end

end A196307.P9586037042004876352

/-! ## A196307.P329082666166110912

`A107092(n)-A025456(A028976(n))`
-/

namespace A196307.P329082666166110912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107092 n - A025456 (A028976 n).toNat

end

end A196307.P329082666166110912

/-! ## A196307.P15675778788915661940

`A107092(n)-A055641(A002387(n))`
-/

namespace A196307.P15675778788915661940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107092 n - A055641 (A002387 n).toNat

end

end A196307.P15675778788915661940

/-!
# A196308: A trisection of A196306.

The programs for A196308, there is no canonical definition to state claims against.
-/

/-! ## A196308.P6899500864292294096

`A196306(3*n)`
-/

namespace A196308.P6899500864292294096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196306 (3 * n)

end

end A196308.P6899500864292294096

/-! ## A196308.P7269493539909211736

`A196306(A008486(n))%2`
-/

namespace A196308.P7269493539909211736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196306 (A008486 n).toNat) 2

end

end A196308.P7269493539909211736

/-! ## A196308.P12347489910872155588

`A196306(A008585(n))+A000007(n+3)`
-/

namespace A196308.P12347489910872155588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196306 (A008585 n).toNat + A000007 (n + 3)

end

end A196308.P12347489910872155588

/-! ## A196308.P11239814709401015893

`A196306(A008486(n))^A092693(n+1)`
-/

namespace A196308.P11239814709401015893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196306 (A008486 n).toNat : ℚ) ^ (A092693 (n + 1) : ℤ)

end

end A196308.P11239814709401015893

/-! ## A196308.P7198712222718989565

`A196306(A008486(n))^(∏{d}[n, 2^A086251(#)]-1)`
-/

namespace A196308.P7198712222718989565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A196306 (A008486 n).toNat : ℝ) ^ ((∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ) - 1 : ℚ) : ℝ)

end

end A196308.P7198712222718989565

/-!
# A196309: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,4,1,3 for x=0,1,2,3,4.

The programs for A196309, there is no canonical definition to state claims against.
-/

/-! ## A196309.P805232980314022647

`A196314(∑[4*n]+1)`
-/

namespace A196309.P805232980314022647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196309.P805232980314022647

/-! ## A196309.P14075479378363059725

`or(1, A196314(A001844(n)))`
-/

namespace A196309.P14075479378363059725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196314 (A001844 n).toNat)

end

end A196309.P14075479378363059725

/-! ## A196309.P5984245905732286704

`record[A196314(A272267(n+1))]`
-/

namespace A196309.P5984245905732286704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196309.P5984245905732286704

/-! ## A196309.P5664588871880819335

`record[A003982(n)*A196314(n+1)]`
-/

namespace A196309.P5664588871880819335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196309.P5664588871880819335

/-! ## A196309.P11607821528618438518

`record[A196314(n+1)*A214505(n)]`
-/

namespace A196309.P11607821528618438518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196309.P11607821528618438518

/-!
# A196310: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,4,1,3 for x=0,1,2,3,4.

The programs for A196310, there is no canonical definition to state claims against.
-/

/-! ## A196310.P9451394525817746759

`A196314(A374004(n+1))`
-/

namespace A196310.P9451394525817746759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A374004 (n + 1)).toNat

end

end A196310.P9451394525817746759

/-! ## A196310.P7722681282664850720

`A196314(A141214(n)+7)`
-/

namespace A196310.P7722681282664850720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A141214 n + 7).toNat

end

end A196310.P7722681282664850720

/-! ## A196310.P1209792814302496251

`A196314(A052905(n)+9)`
-/

namespace A196310.P1209792814302496251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A052905 n + 9).toNat

end

end A196310.P1209792814302496251

/-! ## A196310.P10795092617290389171

`A196314(A055999(n)+10)`
-/

namespace A196310.P10795092617290389171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A055999 n + 10).toNat

end

end A196310.P10795092617290389171

/-! ## A196310.P5077834911326320834

`A196314(A167614(n+2)+1)`
-/

namespace A196310.P5077834911326320834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A167614 (n + 2) + 1).toNat

end

end A196310.P5077834911326320834

/-!
# A196311: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,4,1,3 for x=0,1,2,3,4.

The programs for A196311, there is no canonical definition to state claims against.
-/

/-! ## A196311.P17523194750819249854

`A196314(A374005(n+1))`
-/

namespace A196311.P17523194750819249854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A374005 (n + 1)).toNat

end

end A196311.P17523194750819249854

/-! ## A196311.P5518985121116744586

`A196314(A167499(n+3))`
-/

namespace A196311.P5518985121116744586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A167499 (n + 3)).toNat

end

end A196311.P5518985121116744586

/-! ## A196311.P6913235009810718459

`A196314(A155212(n)+13)`
-/

namespace A196311.P6913235009810718459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A155212 n + 13).toNat

end

end A196311.P6913235009810718459

/-! ## A196311.P95923549288947283

`A196314(A000124(n+4)+4)`
-/

namespace A196311.P95923549288947283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A000124 (n + 4) + 4).toNat

end

end A196311.P95923549288947283

/-! ## A196311.P1704454186913374212

`A196314(A000217(n+4)+5)`
-/

namespace A196311.P1704454186913374212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A000217 (n + 4) + 5).toNat

end

end A196311.P1704454186913374212

/-!
# A196312: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,4,1,3 for x=0,1,2,3,4.

The programs for A196312, there is no canonical definition to state claims against.
-/

/-! ## A196312.P3530179758128793826

`A196314(A374007(n+1))`
-/

namespace A196312.P3530179758128793826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A374007 (n + 1)).toNat

end

end A196312.P3530179758128793826

/-! ## A196312.P4606529636012751649

`A196314(A167499(n+4)+1)`
-/

namespace A196312.P4606529636012751649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A167499 (n + 4) + 1).toNat

end

end A196312.P4606529636012751649

/-! ## A196312.P6303976307655492354

`A196314(A000124(n+5)+5)`
-/

namespace A196312.P6303976307655492354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A000124 (n + 5) + 5).toNat

end

end A196312.P6303976307655492354

/-! ## A196312.P449806010098977085

`A196314(A134869(n+5)+5)`
-/

namespace A196312.P449806010098977085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A134869 (n + 5) + 5).toNat

end

end A196312.P449806010098977085

/-! ## A196312.P15431843099152240826

`A196314(A000217(n+5)+6)`
-/

namespace A196312.P15431843099152240826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A000217 (n + 5) + 6).toNat

end

end A196312.P15431843099152240826

/-!
# A196313: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,4,1,3 for x=0,1,2,3,4.

The programs for A196313, there is no canonical definition to state claims against.
-/

/-! ## A196313.P15612522440868354831

`A196314(A374008(n+1))`
-/

namespace A196313.P15612522440868354831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A374008 (n + 1)).toNat

end

end A196313.P15612522440868354831

/-! ## A196313.P10876829789621138413

`A196314(A167487(n+5))`
-/

namespace A196313.P10876829789621138413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A167487 (n + 5)).toNat

end

end A196313.P10876829789621138413

/-! ## A196313.P1639795522875375149

`A196314(A056119(n)+28)`
-/

namespace A196313.P1639795522875375149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (A056119 n + 28).toNat

end

end A196313.P1639795522875375149

/-! ## A196313.P11077424006216098470

`A196314(eq[11, A066657(n)])`
-/

namespace A196313.P11077424006216098470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196313.P11077424006216098470

/-! ## A196313.P14948277439971450010

`A196314(eq[8, A131818(n+1)])`
-/

namespace A196313.P14948277439971450010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196313.P14948277439971450010

/-!
# A196315: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196315, there is no canonical definition to state claims against.
-/

/-! ## A196315.P18410948141680318552

`A196322(∑[4*n]+1)`
-/

namespace A196315.P18410948141680318552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196315.P18410948141680318552

/-! ## A196315.P10676371788392065015

`record[A196322(∑[A266981(n)])]`
-/

namespace A196315.P10676371788392065015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196315.P10676371788392065015

/-! ## A196315.P17218838609972090860

`record[A003982(n)*A196322(n+1)]`
-/

namespace A196315.P17218838609972090860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196315.P17218838609972090860

/-! ## A196315.P8646553044871993418

`gcd(A000038(n), A196322(A001844(n)))`
-/

namespace A196315.P8646553044871993418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196322 (A001844 n).toNat)

end

end A196315.P8646553044871993418

/-! ## A196315.P8236144602216060818

`lcm(A033999(n), A196322(A001844(n)))`
-/

namespace A196315.P8236144602216060818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196322 (A001844 n).toNat)

end

end A196315.P8236144602216060818

/-!
# A196316: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196316, the canonical program `A196316.P13541042619572518092` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196316 has offset 1).

The definition of A196316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196316.P13541042619572518092

`a(n-1)+2*a(n-2)+2*a(n-3)-a(n-5)` with `a(0)=1, a(1)=7, a(2)=10, a(3)=23, a(4)=57`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196316

/-- `a(n-1)+2*a(n-2)+2*a(n-3)-a(n-5)` -/
def P13541042619572518092.Spec : Prop :=
  ∀ n, P13541042619572518092.a n = A196316 (n + 1)

theorem P13541042619572518092.correct : P13541042619572518092.Spec := by
  intro n
  simp only [A196316, Nat.add_sub_cancel]

end A196316

/-! ## A196316.P7891781482404513121

`A295091(n+1)-A131713(n)`
-/

namespace A196316.P7891781482404513121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295091 (n + 1) - A131713 n

end

end A196316.P7891781482404513121

namespace A196316

/-- `A295091(n+1)-A131713(n)` -/
def P7891781482404513121.Spec : Prop :=
  ∀ n, P7891781482404513121.a n = A196316 (n + 1)

end A196316

/-! ## A196316.P1317670767482502256

`A295091(n+1)+A057079(n)²-2`
-/

namespace A196316.P1317670767482502256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295091 (n + 1) + (A057079 n ^ 2 - 2)

end

end A196316.P1317670767482502256

namespace A196316

/-- `A295091(n+1)+A057079(n)²-2` -/
def P1317670767482502256.Spec : Prop :=
  ∀ n, P1317670767482502256.a n = A196316 (n + 1)

end A196316

/-! ## A196316.P2999804925386275738

`A295091(n+1)+A057079(A004769(n))`
-/

namespace A196316.P2999804925386275738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295091 (n + 1) + A057079 (A004769 n).toNat

end

end A196316.P2999804925386275738

namespace A196316

/-- `A295091(n+1)+A057079(A004769(n))` -/
def P2999804925386275738.Spec : Prop :=
  ∀ n, P2999804925386275738.a n = A196316 (n + 1)

end A196316

/-! ## A196316.P2534329787787348291

`A295091(n+1)-A057079(A008586(n))`
-/

namespace A196316.P2534329787787348291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295091 (n + 1) - A057079 (A008586 n).toNat

end

end A196316.P2534329787787348291

namespace A196316

/-- `A295091(n+1)-A057079(A008586(n))` -/
def P2534329787787348291.Spec : Prop :=
  ∀ n, P2534329787787348291.a n = A196316 (n + 1)

end A196316

/-!
# A196317: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196317, there is no canonical definition to state claims against.
-/

/-! ## A196317.P3238710447567299651

`A196322(∑[n+2]+4)`
-/

namespace A196317.P3238710447567299651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196317.P3238710447567299651

/-! ## A196317.P6274153996738141869

`A196343(∑[n+2]+4)`
-/

namespace A196317.P6274153996738141869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196317.P6274153996738141869

/-! ## A196317.P13835848519322521880

`A196322(A167614(n+1))+A025443(n)`
-/

namespace A196317.P13835848519322521880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167614 (n + 1)).toNat + A025443 n

end

end A196317.P13835848519322521880

/-! ## A196317.P7170957060063030363

`A196322(A167614(n+1))*A291168(n)`
-/

namespace A196317.P7170957060063030363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167614 (n + 1)).toNat * A291168 n

end

end A196317.P7170957060063030363

/-! ## A196317.P10727145407928163617

`A196343(A167614(n+1))%A199567(n)`
-/

namespace A196317.P10727145407928163617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196343 (A167614 (n + 1)).toNat) (A199567 n)

end

end A196317.P10727145407928163617

/-!
# A196318: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196318, there is no canonical definition to state claims against.
-/

/-! ## A196318.P2234877196895234921

`A196322(A374004(n+1))`
-/

namespace A196318.P2234877196895234921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A374004 (n + 1)).toNat

end

end A196318.P2234877196895234921

/-! ## A196318.P6954773106731357191

`A196322(Δ[A008778(n)]+6)`
-/

namespace A196318.P6954773106731357191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (f1 (n + 1) - f1 n + 6).toNat

end

end A196318.P6954773106731357191

/-! ## A196318.P13996218399390631909

`A196322(A167614(n+2)+1)`
-/

namespace A196318.P13996218399390631909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167614 (n + 2) + 1).toNat

end

end A196318.P13996218399390631909

/-! ## A196318.P18301468259509489227

`A196322(A167487(n+2)-3)`
-/

namespace A196318.P18301468259509489227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167487 (n + 2) - 3).toNat

end

end A196318.P18301468259509489227

/-! ## A196318.P10131370178273297172

`A196322(A000217(n+3)+4)`
-/

namespace A196318.P10131370178273297172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A000217 (n + 3) + 4).toNat

end

end A196318.P10131370178273297172

/-!
# A196319: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196319, there is no canonical definition to state claims against.
-/

/-! ## A196319.P6201566387303259462

`A196322(A374005(n+1))`
-/

namespace A196319.P6201566387303259462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A374005 (n + 1)).toNat

end

end A196319.P6201566387303259462

/-! ## A196319.P15886629604293200219

`A196322(A167499(n+3))`
-/

namespace A196319.P15886629604293200219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167499 (n + 3)).toNat

end

end A196319.P15886629604293200219

/-! ## A196319.P6446898428385251332

`A196322(A155212(n)+13)`
-/

namespace A196319.P6446898428385251332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A155212 n + 13).toNat

end

end A196319.P6446898428385251332

/-! ## A196319.P8901002644621885776

`A196322(A167614(n+3)+2)`
-/

namespace A196319.P8901002644621885776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167614 (n + 3) + 2).toNat

end

end A196319.P8901002644621885776

/-! ## A196319.P10463639113423235363

`A196322(A000217(n+4)+5)`
-/

namespace A196319.P10463639113423235363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A000217 (n + 4) + 5).toNat

end

end A196319.P10463639113423235363

/-!
# A196320: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196320, there is no canonical definition to state claims against.
-/

/-! ## A196320.P3654010944746973631

`A196322(A374007(n+1))`
-/

namespace A196320.P3654010944746973631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A374007 (n + 1)).toNat

end

end A196320.P3654010944746973631

/-! ## A196320.P7371534753246375227

`A196322(A246172(n+1)+20)`
-/

namespace A196320.P7371534753246375227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A246172 (n + 1) + 20).toNat

end

end A196320.P7371534753246375227

/-! ## A196320.P454677893903257469

`A196322(eq[7, A131818(n+1)])`
-/

namespace A196320.P454677893903257469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196320.P454677893903257469

/-! ## A196320.P4021125656245218751

`A196322(A056119(n)+16)`
-/

namespace A196320.P4021125656245218751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A056119 n + 16).toNat

end

end A196320.P4021125656245218751

/-! ## A196320.P7133693546499568750

`A196322(eq[5, A193592(n)])`
-/

namespace A196320.P7133693546499568750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196320.P7133693546499568750

/-!
# A196321: Number of n X 7 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196321, there is no canonical definition to state claims against.
-/

/-! ## A196321.P2424911037203600242

`A196322(A374008(n+1))`
-/

namespace A196321.P2424911037203600242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A374008 (n + 1)).toNat

end

end A196321.P2424911037203600242

/-! ## A196321.P5734602404249159153

`A196322(A167499(n+5)+2)`
-/

namespace A196321.P5734602404249159153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A167499 (n + 5) + 2).toNat

end

end A196321.P5734602404249159153

/-! ## A196321.P3999418521441744189

`A196322(eq[8, A131818(n+1)])`
-/

namespace A196321.P3999418521441744189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196321.P3999418521441744189

/-! ## A196321.P3904033990924625370

`A196322(eq[6, A193592(n)])`
-/

namespace A196321.P3904033990924625370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196321.P3904033990924625370

/-! ## A196321.P8067128077374053339

`A196322(A000124(n+7)-7)`
-/

namespace A196321.P8067128077374053339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (A000124 (n + 7) - 7).toNat

end

end A196321.P8067128077374053339

/-!
# A196322: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,0,2,4 for x=0,1,2,3,4.

The programs for A196322, there is no canonical definition to state claims against.
-/

/-! ## A196322.P16847760291786642574

`A154470(A196343(n+1))`
-/

namespace A196322.P16847760291786642574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A196343 (n + 1)).toNat

end

end A196322.P16847760291786642574

/-! ## A196322.P4327855744994674712

`A196343(∑[∑[A151813(n)]])`
-/

namespace A196322.P4327855744994674712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196322.P4327855744994674712

/-! ## A196322.P4426892259736844815

`A285727(4*A196343(n+1))`
-/

namespace A196322.P4426892259736844815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (4 * A196343 (n + 1)).toNat

end

end A196322.P4426892259736844815

/-! ## A196322.P8933861887993341514

`A002266(5*A196343(n+1))`
-/

namespace A196322.P8933861887993341514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (5 * A196343 (n + 1)).toNat

end

end A196322.P8933861887993341514

/-! ## A196322.P16074995588610045009

`A194508(5*A196343(n+1))`
-/

namespace A196322.P16074995588610045009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (5 * A196343 (n + 1)).toNat

end

end A196322.P16074995588610045009

/-!
# A196323: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196323, there is no canonical definition to state claims against.
-/

/-! ## A196323.P14231036801826693353

`A196329(∑[4*n]+1)`
-/

namespace A196323.P14231036801826693353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196323.P14231036801826693353

/-! ## A196323.P1441200080455219231

`record[gcd(A008482(n), A196329(n+1))]`
-/

namespace A196323.P1441200080455219231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A196329 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196323.P1441200080455219231

/-! ## A196323.P7465582959152315485

`A196329(A001844(n))+A185245(n)`
-/

namespace A196323.P7465582959152315485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A001844 n).toNat + A185245 n

end

end A196323.P7465582959152315485

/-! ## A196323.P7974905887754208676

`A007318(∑[n])*A196329(A001844(n))`
-/

namespace A196323.P7974905887754208676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A196329 (A001844 n).toNat

end

end A196323.P7974905887754208676

/-! ## A196323.P16248900155558132796

`A000041(gcd(n, n+1))*A196329(A001844(n))`
-/

namespace A196323.P16248900155558132796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A196329 (A001844 n).toNat

end

end A196323.P16248900155558132796

/-!
# A196324: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196324, there is no canonical definition to state claims against.
-/

/-! ## A196324.P6898865579292883476

`A196329(∑[n+2]+4)`
-/

namespace A196324.P6898865579292883476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196324.P6898865579292883476

/-! ## A196324.P2642935373719844462

`lcm(A033999(n), A196329(A167614(n+1)))`
-/

namespace A196324.P2642935373719844462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196329 (A167614 (n + 1)).toNat)

end

end A196324.P2642935373719844462

/-! ## A196324.P7815692909464379721

`A196329(A167614(n+1))%A173998(n+1)`
-/

namespace A196324.P7815692909464379721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196329 (A167614 (n + 1)).toNat) (A173998 (n + 1))

end

end A196324.P7815692909464379721

/-! ## A196324.P5040095588891572332

`or(A196329(A000217(n+2)+3), A258997(n))`
-/

namespace A196324.P5040095588891572332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196329 (A000217 (n + 2) + 3).toNat) (A258997 n)

end

end A196324.P5040095588891572332

/-! ## A196324.P15115572667604126836

`A196329(A000217(n+2)+3)%A177074(n+1)`
-/

namespace A196324.P15115572667604126836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196329 (A000217 (n + 2) + 3).toNat) (A177074 (n + 1))

end

end A196324.P15115572667604126836

/-!
# A196325: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196325, there is no canonical definition to state claims against.
-/

/-! ## A196325.P6823604514125999332

`A196329(A374004(n+1))`
-/

namespace A196325.P6823604514125999332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A374004 (n + 1)).toNat

end

end A196325.P6823604514125999332

/-! ## A196325.P15808336745404343438

`A196329(A141214(n)+7)`
-/

namespace A196325.P15808336745404343438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A141214 n + 7).toNat

end

end A196325.P15808336745404343438

/-! ## A196325.P4597417678433874132

`A196329(A052905(n)+9)`
-/

namespace A196325.P4597417678433874132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A052905 n + 9).toNat

end

end A196325.P4597417678433874132

/-! ## A196325.P12438230591215902135

`A196329(A055999(n)+10)`
-/

namespace A196325.P12438230591215902135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A055999 n + 10).toNat

end

end A196325.P12438230591215902135

/-! ## A196325.P17248607743014107418

`A196329(A167614(n+2)+1)`
-/

namespace A196325.P17248607743014107418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A167614 (n + 2) + 1).toNat

end

end A196325.P17248607743014107418

/-!
# A196326: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196326, there is no canonical definition to state claims against.
-/

/-! ## A196326.P8847228264261437783

`A196329(A374005(n+1))`
-/

namespace A196326.P8847228264261437783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A374005 (n + 1)).toNat

end

end A196326.P8847228264261437783

/-! ## A196326.P10017574440859802422

`A196329(A167499(n+3))`
-/

namespace A196326.P10017574440859802422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A167499 (n + 3)).toNat

end

end A196326.P10017574440859802422

/-! ## A196326.P6663211595127166192

`A196329(A052905(n+1)+10)`
-/

namespace A196326.P6663211595127166192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A052905 (n + 1) + 10).toNat

end

end A196326.P6663211595127166192

/-! ## A196326.P975557564094719765

`A196329(A038722(Δ[A023545(n+1)]))`
-/

namespace A196326.P975557564094719765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A196326.P975557564094719765

/-! ## A196326.P17240475435538115691

`A196329(Δ[A264443(n)])`
-/

namespace A196326.P17240475435538115691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (f1 (n + 1) - f1 n).toNat

end

end A196326.P17240475435538115691

/-!
# A196327: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196327, there is no canonical definition to state claims against.
-/

/-! ## A196327.P4094955516999535518

`A196329(A374007(n+1))`
-/

namespace A196327.P4094955516999535518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A374007 (n + 1)).toNat

end

end A196327.P4094955516999535518

/-! ## A196327.P3658142790672706792

`A196329(A000124(n+5)+5)`
-/

namespace A196327.P3658142790672706792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A000124 (n + 5) + 5).toNat

end

end A196327.P3658142790672706792

/-! ## A196327.P13106194836629147316

`A196329(A000217(n+5)+6)`
-/

namespace A196327.P13106194836629147316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A000217 (n + 5) + 6).toNat

end

end A196327.P13106194836629147316

/-! ## A196327.P13332000327853934014

`A196329(A027379(n+3)+9)`
-/

namespace A196327.P13332000327853934014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A027379 (n + 3) + 9).toNat

end

end A196327.P13332000327853934014

/-! ## A196327.P6622079867786996856

`A196329(A055998(n+3)+9)`
-/

namespace A196327.P6622079867786996856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A055998 (n + 3) + 9).toNat

end

end A196327.P6622079867786996856

/-!
# A196328: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196328, there is no canonical definition to state claims against.
-/

/-! ## A196328.P16668197282887617304

`A196329(A374008(n+1))`
-/

namespace A196328.P16668197282887617304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A374008 (n + 1)).toNat

end

end A196328.P16668197282887617304

/-! ## A196328.P17136479045018436641

`A196329(A167487(n+5))`
-/

namespace A196328.P17136479045018436641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A167487 (n + 5)).toNat

end

end A196328.P17136479045018436641

/-! ## A196328.P8283301329273887556

`A196329(A000096(n+5)+8)`
-/

namespace A196328.P8283301329273887556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A000096 (n + 5) + 8).toNat

end

end A196328.P8283301329273887556

/-! ## A196328.P1157189244402401572

`A196329(A000217(n+6)+7)`
-/

namespace A196328.P1157189244402401572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (A000217 (n + 6) + 7).toNat

end

end A196328.P1157189244402401572

/-! ## A196328.P12781264205539185556

`A196329(eq[6, A193592(n)])`
-/

namespace A196328.P12781264205539185556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196328.P12781264205539185556

/-!
# A196329: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,0,4,2 for x=0,1,2,3,4.

The programs for A196329, there is no canonical definition to state claims against.
-/

/-! ## A196329.P13641847961965939679

`A186034(A022167(n))+A183335(n+1)`
-/

namespace A196329.P13641847961965939679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 (A022167 n).toNat + A183335 (n + 1)

end

end A196329.P13641847961965939679

/-! ## A196329.P16673691272329793323

`A183335(n+1)+A037800(A176791(n))`
-/

namespace A196329.P16673691272329793323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (n + 1) + A037800 (A176791 n).toNat

end

end A196329.P16673691272329793323

/-! ## A196329.P15908136958931065268

`A183335(n+1)+A107846(A154336(n))`
-/

namespace A196329.P15908136958931065268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (n + 1) + A107846 (A154336 n).toNat

end

end A196329.P15908136958931065268

/-! ## A196329.P7307703602147867045

`A183335(n+1)+A007814(A157149(n))`
-/

namespace A196329.P7307703602147867045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (n + 1) + A007814 (A157149 n).toNat

end

end A196329.P7307703602147867045

/-! ## A196329.P16789116418762657791

`or(A010054(A051190(n+1)), A183335(n+1))`
-/

namespace A196329.P16789116418762657791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A051190 (n + 1)).toNat) (A183335 (n + 1))

end

end A196329.P16789116418762657791

/-!
# A196331: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,3,1,2 for x=0,1,2,3,4.

The programs for A196331, there is no canonical definition to state claims against.
-/

/-! ## A196331.P18445880482940056625

`A196337(∑[4*n]+1)`
-/

namespace A196331.P18445880482940056625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196331.P18445880482940056625

/-! ## A196331.P2328854355412143634

`gcd(floor(1/(n+1)), A196337(n²+(n+1)²))`
-/

namespace A196331.P2328854355412143634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A196337 (n ^ 2 + (n + 1) ^ 2))

end

end A196331.P2328854355412143634

/-! ## A196331.P1515443292273473836

`or(1, A196337(A001844(n)))`
-/

namespace A196331.P1515443292273473836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196337 (A001844 n).toNat)

end

end A196331.P1515443292273473836

/-! ## A196331.P11359072492147201399

`record[A003982(n)*A196337(n+1)]`
-/

namespace A196331.P11359072492147201399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196331.P11359072492147201399

/-! ## A196331.P983292377404584411

`record[A196337(n+1)*A214505(n)]`
-/

namespace A196331.P983292377404584411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196331.P983292377404584411

/-!
# A196332: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,1,2 for x=0,1,2,3,4.

The programs for A196332, there is no canonical definition to state claims against.
-/

/-! ## A196332.P11784175778237485214

`A196337(∑[n+2]+4)`
-/

namespace A196332.P11784175778237485214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196332.P11784175778237485214

/-! ## A196332.P13716845271165107419

`A196337(A046691(n)+7)+char[18]`
-/

namespace A196332.P13716845271165107419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196332.P13716845271165107419

/-! ## A196332.P9702866083538300897

`A196337(A167614(n+1))%A196310(n+1)`
-/

namespace A196332.P9702866083538300897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196337 (A167614 (n + 1)).toNat) (A196310 (n + 1))

end

end A196332.P9702866083538300897

/-! ## A196332.P13005237683175761801

`A007318(C(n, 2))*A196337(A046691(n)+7)`
-/

namespace A196332.P13005237683175761801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A196337 (A046691 n + 7).toNat

end

end A196332.P13005237683175761801

/-! ## A196332.P8072490263470245737

`A196337(A046691(n)+7)%A000032(n+3)²`
-/

namespace A196332.P8072490263470245737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196337 (A046691 n + 7).toNat) (A000032 (n + 3) ^ 2)

end

end A196332.P8072490263470245737

/-!
# A196333: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,1,2 for x=0,1,2,3,4.

The programs for A196333, there is no canonical definition to state claims against.
-/

/-! ## A196333.P7281742504924637110

`A196337(∑[n+3]+7)`
-/

namespace A196333.P7281742504924637110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196333.P7281742504924637110

/-! ## A196333.P2210065466299936980

`A196337(A000217(n+3)+4)+char[17]`
-/

namespace A196333.P2210065466299936980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196333.P2210065466299936980

/-! ## A196333.P6530953323164824428

`A196337(A052905(n)+9)%A005809(n+4)`
-/

namespace A196333.P6530953323164824428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196337 (A052905 n + 9).toNat) (A005809 (n + 4))

end

end A196333.P6530953323164824428

/-! ## A196333.P5477702223410160905

`A007318(C(n, 2))*A196337(A000217(n+3)+4)`
-/

namespace A196333.P5477702223410160905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A196337 (A000217 (n + 3) + 4).toNat

end

end A196333.P5477702223410160905

/-! ## A196333.P18215073472046690850

`A007318(floor(n/12))*A196337(A000217(n+3)+4)`
-/

namespace A196333.P18215073472046690850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 12⌋.toNat * A196337 (A000217 (n + 3) + 4).toNat

end

end A196333.P18215073472046690850

/-!
# A196334: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,1,2 for x=0,1,2,3,4.

The programs for A196334, there is no canonical definition to state claims against.
-/

/-! ## A196334.P1737318018533554148

`A196337(A374005(n+1))`
-/

namespace A196334.P1737318018533554148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A374005 (n + 1)).toNat

end

end A196334.P1737318018533554148

/-! ## A196334.P1126128756162367837

`A196337(A167499(n+3))`
-/

namespace A196334.P1126128756162367837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A167499 (n + 3)).toNat

end

end A196334.P1126128756162367837

/-! ## A196334.P3015686027490346403

`A196337(A155212(n)+13)`
-/

namespace A196334.P3015686027490346403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A155212 n + 13).toNat

end

end A196334.P3015686027490346403

/-! ## A196334.P3500155815712121254

`A196337(A056000(n)+15)`
-/

namespace A196334.P3500155815712121254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A056000 n + 15).toNat

end

end A196334.P3500155815712121254

/-! ## A196334.P5516203277513631948

`A196337(eq[7, A066657(n)])`
-/

namespace A196334.P5516203277513631948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196334.P5516203277513631948

/-!
# A196335: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,1,2 for x=0,1,2,3,4.

The programs for A196335, there is no canonical definition to state claims against.
-/

/-! ## A196335.P5018260106036028821

`A196337(A374007(n+1))`
-/

namespace A196335.P5018260106036028821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A374007 (n + 1)).toNat

end

end A196335.P5018260106036028821

/-! ## A196335.P2234493494896211986

`A196337(A167487(n+4)-1)`
-/

namespace A196335.P2234493494896211986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A167487 (n + 4) - 1).toNat

end

end A196335.P2234493494896211986

/-! ## A196335.P8401956671720593318

`A196337(A167614(n+4)+3)`
-/

namespace A196335.P8401956671720593318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A167614 (n + 4) + 3).toNat

end

end A196335.P8401956671720593318

/-! ## A196335.P15068510459129005762

`A196337(A179865(n+6)+6)`
-/

namespace A196335.P15068510459129005762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A179865 (n + 6) + 6).toNat

end

end A196335.P15068510459129005762

/-! ## A196335.P9638565791030610771

`A196337(eq[7, A131818(n+1)])`
-/

namespace A196335.P9638565791030610771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196335.P9638565791030610771

/-!
# A196336: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,1,2 for x=0,1,2,3,4.

The programs for A196336, there is no canonical definition to state claims against.
-/

/-! ## A196336.P16073392578140544699

`A196337(A374008(n+1))`
-/

namespace A196336.P16073392578140544699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A374008 (n + 1)).toNat

end

end A196336.P16073392578140544699

/-! ## A196336.P12451393849024356650

`A196337(A056119(n)+28)`
-/

namespace A196336.P12451393849024356650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A056119 n + 28).toNat

end

end A196336.P12451393849024356650

/-! ## A196336.P14519952215055648458

`A196337(eq[11, A066657(n)])`
-/

namespace A196336.P14519952215055648458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196336.P14519952215055648458

/-! ## A196336.P6431406329286017200

`A196337(A167499(n+5)+2)`
-/

namespace A196336.P6431406329286017200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A167499 (n + 5) + 2).toNat

end

end A196336.P6431406329286017200

/-! ## A196336.P18197725144645571721

`A196337(A155212(n+2)+15)`
-/

namespace A196336.P18197725144645571721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A155212 (n + 2) + 15).toNat

end

end A196336.P18197725144645571721

/-!
# A196338: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,0,2,3 for x=0,1,2,3,4.

The programs for A196338, there is no canonical definition to state claims against.
-/

/-! ## A196338.P7714470980545937769

`A196343(∑[4*n]+1)`
-/

namespace A196338.P7714470980545937769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196338.P7714470980545937769

/-! ## A196338.P5500386673046464996

`A043562(n)*A196343(A001844(n))`
-/

namespace A196338.P5500386673046464996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A196343 (A001844 n).toNat

end

end A196338.P5500386673046464996

/-! ## A196338.P17490801762246899336

`gcd(A000038(n), A196343(A001844(n)))`
-/

namespace A196338.P17490801762246899336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196343 (A001844 n).toNat)

end

end A196338.P17490801762246899336

/-! ## A196338.P15689438077791465278

`lcm(A033999(n), A196343(A001844(n)))`
-/

namespace A196338.P15689438077791465278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196343 (A001844 n).toNat)

end

end A196338.P15689438077791465278

/-! ## A196338.P10202241325973612705

`or(A000007(n), A196343(A001844(n)))`
-/

namespace A196338.P10202241325973612705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196343 (A001844 n).toNat)

end

end A196338.P10202241325973612705

/-!
# A196339: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,0,2,3 for x=0,1,2,3,4.

The programs for A196339, there is no canonical definition to state claims against.
-/

/-! ## A196339.P8489937295845903128

`A196343(A374004(n+1))`
-/

namespace A196339.P8489937295845903128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A374004 (n + 1)).toNat

end

end A196339.P8489937295845903128

/-! ## A196339.P8209723301093352754

`A196343(A052905(n)+9)`
-/

namespace A196339.P8209723301093352754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A052905 n + 9).toNat

end

end A196339.P8209723301093352754

/-! ## A196339.P9664707871406482071

`A196343(A167614(n+2)+1)`
-/

namespace A196339.P9664707871406482071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A167614 (n + 2) + 1).toNat

end

end A196339.P9664707871406482071

/-! ## A196339.P17144473129567187080

`A196343(A141214(n+1))`
-/

namespace A196339.P17144473129567187080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A141214 (n + 1)).toNat

end

end A196339.P17144473129567187080

/-! ## A196339.P109316942563438542

`A196343(A055998(n+2))`
-/

namespace A196339.P109316942563438542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A055998 (n + 2)).toNat

end

end A196339.P109316942563438542

/-!
# A196340: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,0,2,3 for x=0,1,2,3,4.

The programs for A196340, there is no canonical definition to state claims against.
-/

/-! ## A196340.P5113492811336929607

`A196343(A374005(n+1))`
-/

namespace A196340.P5113492811336929607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A374005 (n + 1)).toNat

end

end A196340.P5113492811336929607

/-! ## A196340.P597562563926870693

`A196343(A167499(n+3))`
-/

namespace A196340.P597562563926870693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A167499 (n + 3)).toNat

end

end A196340.P597562563926870693

/-! ## A196340.P18380383843967313805

`A196343(A173036(n)+A016825(n))`
-/

namespace A196340.P18380383843967313805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A173036 n + A016825 n).toNat

end

end A196340.P18380383843967313805

/-! ## A196340.P2824444025758994707

`A196343(A052905(n+3)-A089684(n+1))`
-/

namespace A196340.P2824444025758994707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A052905 (n + 3) - A089684 (n + 1)).toNat

end

end A196340.P2824444025758994707

/-! ## A196340.P3277582017770184186

`A196343(A000217(n+6)+7-A004273(n+7))`
-/

namespace A196340.P3277582017770184186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A000217 (n + 6) + 7 - A004273 (n + 7)).toNat

end

end A196340.P3277582017770184186

/-!
# A196341: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,0,2,3 for x=0,1,2,3,4.

The programs for A196341, there is no canonical definition to state claims against.
-/

/-! ## A196341.P12543870320484058883

`A196343(A374007(n+1))`
-/

namespace A196341.P12543870320484058883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A374007 (n + 1)).toNat

end

end A196341.P12543870320484058883

/-! ## A196341.P9772086188765219461

`A196343(A056115(n)+21)`
-/

namespace A196341.P9772086188765219461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A056115 n + 21).toNat

end

end A196341.P9772086188765219461

/-! ## A196341.P4814474409302225333

`A196343(eq[7, A131818(n+1)])`
-/

namespace A196341.P4814474409302225333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196341.P4814474409302225333

/-! ## A196341.P4776944087212881123

`A196343(A052905(n+3))`
-/

namespace A196341.P4776944087212881123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A052905 (n + 3)).toNat

end

end A196341.P4776944087212881123

/-! ## A196341.P4175316079975096032

`A196343(eq[3, A219347(n)])`
-/

namespace A196341.P4175316079975096032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196341.P4175316079975096032

/-!
# A196342: Number of n X 7 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,0,2,3 for x=0,1,2,3,4.

The programs for A196342, there is no canonical definition to state claims against.
-/

/-! ## A196342.P3296673652754340751

`A196343(A374008(n+1))`
-/

namespace A196342.P3296673652754340751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A374008 (n + 1)).toNat

end

end A196342.P3296673652754340751

/-! ## A196342.P10446093428446560084

`A196343(A056119(n)+28)`
-/

namespace A196342.P10446093428446560084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (A056119 n + 28).toNat

end

end A196342.P10446093428446560084

/-! ## A196342.P14784796182225852286

`A196343(eq[11, A066657(n)])`
-/

namespace A196342.P14784796182225852286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196342.P14784796182225852286

/-! ## A196342.P12807679610083569872

`A196343(eq[8, A131818(n+1)])`
-/

namespace A196342.P12807679610083569872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196342.P12807679610083569872

/-! ## A196342.P5840283461899593789

`A196343(eq[4, A219347(n)])`
-/

namespace A196342.P5840283461899593789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196342.P5840283461899593789

/-!
# A196345: The 5th power of the g.f. equals the g.f. of A196344.

The programs for A196345, there is no canonical definition to state claims against.
-/

/-! ## A196345.P12266615596736241562

`A352703(n)+A016389(A208039(n+1))`
-/

namespace A196345.P12266615596736241562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352703 n + A016389 (A208039 (n + 1)).toNat

end

end A196345.P12266615596736241562

/-!
# A196346: A quintisection of A196344.

The programs for A196346, there is no canonical definition to state claims against.
-/

/-! ## A196346.P2390732172805761826

`A196344(5*n)`
-/

namespace A196346.P2390732172805761826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196344 (5 * n)

end

end A196346.P2390732172805761826

/-! ## A196346.P16852209983385188704

`A196344(A008587(n))%3`
-/

namespace A196346.P16852209983385188704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196344 (A008587 n).toNat) 3

end

end A196346.P16852209983385188704

/-! ## A196346.P4389412801754720558

`A196344(A008706(n))%4`
-/

namespace A196346.P4389412801754720558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196344 (A008706 n).toNat) 4

end

end A196346.P4389412801754720558

/-! ## A196346.P10980665092011705245

`or(A000007(n), A196344(A008587(n)))`
-/

namespace A196346.P10980665092011705245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196344 (A008587 n).toNat)

end

end A196346.P10980665092011705245

/-! ## A196346.P587306547389447599

`A196344(A008706(n))-A000038(n)²`
-/

namespace A196346.P587306547389447599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196344 (A008706 n).toNat - A000038 n ^ 2

end

end A196346.P587306547389447599

/-! ## A196346.P12372094794483010150

`A196344(A008706(n))^A057428(n)²`
-/

namespace A196346.P12372094794483010150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A196346.P12372094794483010150

/-! ## A196346.P404731523192543855

`A196344(A008706(n))^A005043(C(3, n))`
-/

namespace A196346.P404731523192543855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A005043 (Nat.choose 3 n) : ℤ)

end

end A196346.P404731523192543855

/-! ## A196346.P277753677365978616

`A007318(C(2, n))+A196344(A008587(n))-1`
-/

namespace A196346.P277753677365978616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A196344 (A008587 n).toNat - 1)

end

end A196346.P277753677365978616

/-! ## A196346.P15034297248704316313

`A196344(A008587(n))^and(1, A000040(n+1))`
-/

namespace A196346.P15034297248704316313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008587 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A196346.P15034297248704316313

/-! ## A196346.P739536534985178802

`A196344(A008706(n))^A001222(n+1)^C(2, n+2)`
-/

namespace A196346.P739536534985178802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A001222 (n + 1) ^ Nat.choose 2 (n + 2) : ℤ)

end

end A196346.P739536534985178802

/-! ## A196346.P6699436329951029606

`A196344(A008587(n))+C(A001222(n+1+n), n+2)`
-/

namespace A196346.P6699436329951029606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196344 (A008587 n).toNat + (Nat.choose (A001222 (n + 1 + n)).toNat (n + 2) : ℤ)

end

end A196346.P6699436329951029606

/-! ## A196346.P12334573443405769629

`A196344(A008706(n))^A178334(A003056(n))`
-/

namespace A196346.P12334573443405769629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A178334 (A003056 n).toNat : ℤ)

end

end A196346.P12334573443405769629

/-! ## A196346.P288267229469155922

`A196344(A008706(n))^A178334(A007953(n))`
-/

namespace A196346.P288267229469155922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A178334 (A007953 n).toNat : ℤ)

end

end A196346.P288267229469155922

/-! ## A196346.P12216011656076441803

`A196344(A008706(n))^A178334(A178334(n))`
-/

namespace A196346.P12216011656076441803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A178334 (A178334 n).toNat : ℤ)

end

end A196346.P12216011656076441803

/-! ## A196346.P16923099920903473607

`A196344(A008706(n))^A005087(A000040(n+1))`
-/

namespace A196346.P16923099920903473607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A005087 (A000040 (n + 1)).toNat : ℤ)

end

end A196346.P16923099920903473607

/-! ## A196346.P1173790285290514679

`A196344(A008706(n))^A001222(A008578(n+1))`
-/

namespace A196346.P1173790285290514679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A196346.P1173790285290514679

/-! ## A196346.P9258622728113754352

`A196344(A008706(n))^A178489(A000720(n+1))`
-/

namespace A196346.P9258622728113754352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A178489 (A000720 (n + 1)).toNat : ℤ)

end

end A196346.P9258622728113754352

/-! ## A196346.P6618206905301349228

`A196344(A008706(n))^A008683(A194593(n+1))`
-/

namespace A196346.P6618206905301349228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196344 (A008706 n).toNat : ℚ) ^ (A008683 (A194593 (n + 1)).toNat : ℤ)

end

end A196346.P6618206905301349228

/-!
# A196347: Triangle T(n, k) read by rows, T(n, k) = n!*binomial(n, k).

The programs for A196347, the canonical program `A196347.P13658448710711999796` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196347 has offset 0).

The definition of A196347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196347.P13658448710711999796

`A008279(n)*A094587(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A196347

/-- `A008279(n)*A094587(n)` -/
def P13658448710711999796.Spec : Prop :=
  ∀ n, P13658448710711999796.a n = A196347 n

theorem P13658448710711999796.correct : P13658448710711999796.Spec := by
  intro n
  simp only [A196347]

end A196347

/-! ## A196347.P4358884518256096554

`A008459(n)*A098361(n)`
-/

namespace A196347.P4358884518256096554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A098361 n

end

end A196347.P4358884518256096554

namespace A196347

/-- `A008459(n)*A098361(n)` -/
def P4358884518256096554.Spec : Prop :=
  ∀ n, P4358884518256096554.a n = A196347 n

end A196347

/-! ## A196347.P12636245592768713807

`A119502(n)*A144084(n)`
-/

namespace A196347.P12636245592768713807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A144084 n

end

end A196347.P12636245592768713807

namespace A196347

/-- `A119502(n)*A144084(n)` -/
def P12636245592768713807.Spec : Prop :=
  ∀ n, P12636245592768713807.a n = A196347 n

end A196347

/-! ## A196347.P17543674021093450884

`A007318(n)²*A098361(n)`
-/

namespace A196347.P17543674021093450884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A098361 n

end

end A196347.P17543674021093450884

namespace A196347

/-- `A007318(n)²*A098361(n)` -/
def P17543674021093450884.Spec : Prop :=
  ∀ n, P17543674021093450884.a n = A196347 n

end A196347

/-! ## A196347.P15176950486447465085

`A003056(n)!*A007318(n)`
-/

namespace A196347.P15176950486447465085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A007318 n

end

end A196347.P15176950486447465085

namespace A196347

/-- `A003056(n)!*A007318(n)` -/
def P15176950486447465085.Spec : Prop :=
  ∀ n, P15176950486447465085.a n = A196347 n

end A196347

/-! ## A196347.P12363229961043089232

`abs(A002262(n)!*A021009(n))`
-/

namespace A196347.P12363229961043089232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (A002262 n).toNat : ℤ) * A021009 n|

end

end A196347.P12363229961043089232

namespace A196347

/-- `abs(A002262(n)!*A021009(n))` -/
def P12363229961043089232.Spec : Prop :=
  ∀ n, P12363229961043089232.a n = A196347 n

end A196347

/-! ## A196347.P14600554745399463521

`(A028326(n)/2)²*A098361(n)`
-/

namespace A196347.P14600554745399463521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028326 n : ℚ) / 2) ^ 2 * (A098361 n : ℚ)

end

end A196347.P14600554745399463521

namespace A196347

/-- `(A028326(n)/2)²*A098361(n)` -/
def P14600554745399463521.Spec : Prop :=
  ∀ n, P14600554745399463521.a n = (A196347 n : ℚ)

end A196347

/-! ## A196347.P16101585895733752275

`A003056(n)!*ceil(A134059(n)/3)`
-/

namespace A196347.P16101585895733752275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * ⌈(A134059 n : ℚ) / 3⌉

end

end A196347.P16101585895733752275

namespace A196347

/-- `A003056(n)!*ceil(A134059(n)/3)` -/
def P16101585895733752275.Spec : Prop :=
  ∀ n, P16101585895733752275.a n = A196347 n

end A196347

/-! ## A196347.P912566128904667975

`A008279(n)*A008279(A061579(n))`
-/

namespace A196347.P912566128904667975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A008279 (A061579 n).toNat

end

end A196347.P912566128904667975

namespace A196347

/-- `A008279(n)*A008279(A061579(n))` -/
def P912566128904667975.Spec : Prop :=
  ∀ n, P912566128904667975.a n = A196347 n

end A196347

/-! ## A196347.P5618769426148127600

`A094587(A061579(n))*A094587(n)`
-/

namespace A196347.P5618769426148127600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A094587 n

end

end A196347.P5618769426148127600

namespace A196347

/-- `A094587(A061579(n))*A094587(n)` -/
def P5618769426148127600.Spec : Prop :=
  ∀ n, P5618769426148127600.a n = A196347 n

end A196347

/-! ## A196347.P13719373195614880066

`A007318(n)*A104150(A003056(n)+1)`
-/

namespace A196347.P13719373195614880066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A104150 (A003056 n + 1).toNat

end

end A196347.P13719373195614880066

namespace A196347

/-- `A007318(n)*A104150(A003056(n)+1)` -/
def P13719373195614880066.Spec : Prop :=
  ∀ n, P13719373195614880066.a n = A196347 n

end A196347

/-! ## A196347.P3076553276497247499

`A008279(A038722(n+2))*A008279(n)`
-/

namespace A196347.P3076553276497247499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A038722 (n + 2)).toNat * A008279 n

end

end A196347.P3076553276497247499

namespace A196347

/-- `A008279(A038722(n+2))*A008279(n)` -/
def P3076553276497247499.Spec : Prop :=
  ∀ n, P3076553276497247499.a n = A196347 n

end A196347

/-! ## A196347.P1196077315126115817

`A007318(n)*A094587(n-A002262(n))`
-/

namespace A196347.P1196077315126115817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094587 ((n : ℤ) - A002262 n).toNat

end

end A196347.P1196077315126115817

namespace A196347

/-- `A007318(n)*A094587(n-A002262(n))` -/
def P1196077315126115817.Spec : Prop :=
  ∀ n, P1196077315126115817.a n = A196347 n

end A196347

/-! ## A196347.P5667378169582718354

`(A155162(n)-A008279(n))*A008279(n)`
-/

namespace A196347.P5667378169582718354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155162 n - A008279 n) * A008279 n

end

end A196347.P5667378169582718354

namespace A196347

/-- `(A155162(n)-A008279(n))*A008279(n)` -/
def P5667378169582718354.Spec : Prop :=
  ∀ n, P5667378169582718354.a n = A196347 n

end A196347

/-! ## A196347.P5720491599858860957

`(A155162(n)-A094587(n))*A094587(n)`
-/

namespace A196347.P5720491599858860957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155162 n - A094587 n) * A094587 n

end

end A196347.P5720491599858860957

namespace A196347

/-- `(A155162(n)-A094587(n))*A094587(n)` -/
def P5720491599858860957.Spec : Prop :=
  ∀ n, P5720491599858860957.a n = A196347 n

end A196347

/-! ## A196347.P4474489815318057221

`abs(A021012(n))`
-/

namespace A196347.P4474489815318057221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A021012 n|

end

end A196347.P4474489815318057221

namespace A196347

/-- `abs(A021012(n))` -/
def P4474489815318057221.Spec : Prop :=
  ∀ n, P4474489815318057221.a n = A196347 n

end A196347

/-! ## A196347.P9939006795613255789

`gcd(A000038(n), A021012(n))`
-/

namespace A196347.P9939006795613255789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A021012 n)

end

end A196347.P9939006795613255789

namespace A196347

/-- `gcd(A000038(n), A021012(n))` -/
def P9939006795613255789.Spec : Prop :=
  ∀ n, (P9939006795613255789.a n : ℤ) = A196347 n

end A196347

/-! ## A196347.P8295622736273030539

`lcm(A000119(n), A021012(n))`
-/

namespace A196347.P8295622736273030539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000119 n) (A021012 n)

end

end A196347.P8295622736273030539

namespace A196347

/-- `lcm(A000119(n), A021012(n))` -/
def P8295622736273030539.Spec : Prop :=
  ∀ n, (P8295622736273030539.a n : ℤ) = A196347 n

end A196347

/-! ## A196347.P3842587962645844345

`A156992(n+1)/A002024(n+1)`
-/

namespace A196347.P3842587962645844345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A196347.P3842587962645844345

namespace A196347

/-- `A156992(n+1)/A002024(n+1)` -/
def P3842587962645844345.Spec : Prop :=
  ∀ n, P3842587962645844345.a n = (A196347 n : ℚ)

end A196347

/-! ## A196347.P7217485935549035312

`A003056(n)!*ceil(A134060(n)/3)`
-/

namespace A196347.P7217485935549035312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * ⌈(A134060 n : ℚ) / 3⌉

end

end A196347.P7217485935549035312

namespace A196347

/-- `A003056(n)!*ceil(A134060(n)/3)` -/
def P7217485935549035312.Spec : Prop :=
  ∀ n, P7217485935549035312.a n = A196347 n

end A196347

/-!
# A196352: Positive integers b for which there is a primitive (1/5)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196352, there is no canonical definition to state claims against.
-/

/-! ## A196352.P18211654401513462697

`A196349(A100793(n))`
-/

namespace A196352.P18211654401513462697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196349 (A100793 n).toNat

end

end A196352.P18211654401513462697

/-! ## A196352.P11655338106679574982

`A196349(∑[A241601(n+1)])`
-/

namespace A196352.P11655338106679574982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196349 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196352.P11655338106679574982

/-!
# A196353: Positive integers c for which there is a primitive (1/5)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196353, there is no canonical definition to state claims against.
-/

/-! ## A196353.P9551489401632058559

`A196350(A100793(n))`
-/

namespace A196353.P9551489401632058559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196350 (A100793 n).toNat

end

end A196353.P9551489401632058559

/-! ## A196353.P10886958123338665905

`A196350(A062942(n+1)+1)`
-/

namespace A196353.P10886958123338665905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196350 (A062942 (n + 1) + 1).toNat

end

end A196353.P10886958123338665905

/-!
# A196354: E.g.f.: 1 + Sum_{n>=1} 2*cosh(n*x) * x^(n^2).

The programs for A196354, there is no canonical definition to state claims against.
-/

/-! ## A196354.P8805855961767831

`A001783(n+1)*A067742(A322756(n+1))`
-/

namespace A196354.P8805855961767831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1) * A067742 (A322756 (n + 1)).toNat

end

end A196354.P8805855961767831

/-! ## A196354.P4060423831443710398

`A132393(3*n+4)*A227349(A143405(n))`
-/

namespace A196354.P4060423831443710398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (3 * n + 4) * A227349 (A143405 n).toNat

end

end A196354.P4060423831443710398

/-!
# A196356: Positive integers b for which there is a (1/8)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196356, there is no canonical definition to state claims against.
-/

/-! ## A196356.P1138985254158769325

`A196357(n+1)-A005361(A047778(n+1))`
-/

namespace A196356.P1138985254158769325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196357 (n + 1) - A005361 (A047778 (n + 1)).toNat

end

end A196356.P1138985254158769325

/-!
# A196357: Positive integers c for which there is a (1/8)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196357, there is no canonical definition to state claims against.
-/

/-! ## A196357.P7278104997557614695

`A196356(n+1)+A005361(A047778(n+1))`
-/

namespace A196357.P7278104997557614695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196356 (n + 1) + A005361 (A047778 (n + 1)).toNat

end

end A196357.P7278104997557614695

/-! ## A196357.P13224780998908681541

`A237593(A064242(n+1))+A196356(n+1)`
-/

namespace A196357.P13224780998908681541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A064242 (n + 1)).toNat + A196356 (n + 1)

end

end A196357.P13224780998908681541

/-!
# A196359: Positive integers b for which there is a primitive (1/8)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196359, there is no canonical definition to state claims against.
-/

/-! ## A196359.P3526496583044031066

`A196356(A073790(record[∏{p}[n+1, #]]))`
-/

namespace A196359.P3526496583044031066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196356 (A073790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A196359.P3526496583044031066

/-!
# A196360: Positive integers c for which there is a primitive (1/8)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196360, there is no canonical definition to state claims against.
-/

/-! ## A196360.P13884042268510842936

`A196357(∑[∏{e}[A045503(n)+1, #]])`
-/

namespace A196360.P13884042268510842936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196360.P13884042268510842936

/-!
# A196362: Positive integers a for which there is a (-5/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196362, there is no canonical definition to state claims against.
-/

/-! ## A196362.P7687123223746963422

`A143824(A333223(3*n+5)+A008683(3*n+2))`
-/

namespace A196362.P7687123223746963422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A333223 (3 * n + 5) + A008683 (3 * n + 2)).toNat

end

end A196362.P7687123223746963422

/-! ## A196362.P7946480778158170387

`A143824(∑[p?[A347499(2*n+5)]])`
-/

namespace A196362.P7946480778158170387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347499 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196362.P7946480778158170387

/-! ## A196362.P8585915699879380515

`A095827(n+1)+A002024(p?[A239088(n+1)])`
-/

namespace A196362.P8585915699879380515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1) + A002024 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196362.P8585915699879380515

/-! ## A196362.P7362512495754242224

`A000196(A324701(3*n+4)+A014963(n+1))`
-/

namespace A196362.P7362512495754242224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A324701 (3 * n + 4) + A014963 (n + 1)).toNat

end

end A196362.P7362512495754242224

/-! ## A196362.P8571146718314083334

`A000196(A350943(3*n+4)-A332993(n+1))`
-/

namespace A196362.P8571146718314083334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A350943 (3 * n + 4) - A332993 (n + 1)).toNat

end

end A196362.P8571146718314083334

/-!
# A196368: Characteristic function of numbers having in decimal representation only distinct adjacent digits.

The programs for A196368, there is no canonical definition to state claims against.
-/

/-! ## A196368.P16399703432606058233

`C(A321801(n), n)`
-/

namespace A196368.P16399703432606058233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321801 n).toNat n

end

end A196368.P16399703432606058233

/-! ## A196368.P18374446714332484241

`C(A351868(n), n)`
-/

namespace A196368.P18374446714332484241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351868 n).toNat n

end

end A196368.P18374446714332484241

/-! ## A196368.P4116691658282017061

`char[A043096(n+1)]`
-/

namespace A196368.P4116691658282017061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A196368.P4116691658282017061

/-! ## A196368.P6856300072144179306

`1-char[A171901(n+1)]`
-/

namespace A196368.P6856300072144179306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196368.P6856300072144179306

/-! ## A196368.P5624254829168250777

`floor(A043562(n)/A055642(n))`
-/

namespace A196368.P5624254829168250777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043562 n : ℚ) / (A055642 n : ℚ)⌋

end

end A196368.P5624254829168250777

/-! ## A196368.P5381398463093018203

`val(A016933(n), A016933(A351868(n)))`
-/

namespace A196368.P5381398463093018203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016933 n).toNat (A016933 (A351868 n).toNat).toNat

end

end A196368.P5381398463093018203

/-! ## A196368.P14790286723727852248

`char[record[A321802(n)]]`
-/

namespace A196368.P14790286723727852248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A196368.P14790286723727852248

/-! ## A196368.P15311158425810345420

`char[record[A351868(ceil(n/2))]]`
-/

namespace A196368.P15311158425810345420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 ⌈(n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A196368.P15311158425810345420

/-! ## A196368.P4822627827033065041

`char[A351868(record[A351868(n)])]`
-/

namespace A196368.P4822627827033065041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A196368.P4822627827033065041

/-! ## A196368.P18405912925307827722

`char[A337864(n)]`
-/

namespace A196368.P18405912925307827722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A196368.P18405912925307827722

/-! ## A196368.P17708970214396935068

`A004530(A321804(n)+2)`
-/

namespace A196368.P17708970214396935068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A321804 n + 2).toNat

end

end A196368.P17708970214396935068

/-! ## A196368.P10470662280539635569

`A010054(A321804(n)+2)`
-/

namespace A196368.P10470662280539635569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A321804 n + 2).toNat

end

end A196368.P10470662280539635569

/-! ## A196368.P10847042306732237197

`A010057(A321804(n)+2)`
-/

namespace A196368.P10847042306732237197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A321804 n + 2).toNat

end

end A196368.P10847042306732237197

/-! ## A196368.P2369927277585985546

`A080116(A321804(n)+3)`
-/

namespace A196368.P2369927277585985546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A321804 n + 3).toNat

end

end A196368.P2369927277585985546

/-! ## A196368.P1513583442947347695

`val(A246316(∑{d}[A321804(n), #]), 4)`
-/

namespace A196368.P1513583442947347695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246316 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)).toNat 4

end

end A196368.P1513583442947347695

/-! ## A196368.P7681306003024571717

`A010054(A016825(abs(A321804(n))))`
-/

namespace A196368.P7681306003024571717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A016825 |A321804 n|.toNat).toNat

end

end A196368.P7681306003024571717

/-! ## A196368.P4217526060088656940

`A080116(A000124(abs(A321804(n))))`
-/

namespace A196368.P4217526060088656940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A000124 |A321804 n|.toNat).toNat

end

end A196368.P4217526060088656940

/-! ## A196368.P8398640436389232901

`val(A246316(n-A321804(n)), A246316(n+1))`
-/

namespace A196368.P8398640436389232901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246316 ((n : ℤ) - A321804 n).toNat).toNat (A246316 (n + 1)).toNat

end

end A196368.P8398640436389232901

/-! ## A196368.P6820311321562388828

`val(A059497(n+2), A059497(1-A321804(n)+n))`
-/

namespace A196368.P6820311321562388828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059497 (n + 2)).toNat (A059497 (1 - A321804 n + (n : ℤ)).toNat).toNat

end

end A196368.P6820311321562388828

/-!
# A196369: Positive integers a for which there is a (-3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196369, there is no canonical definition to state claims against.
-/

/-! ## A196369.P12964088406390404703

`A325678(A219654(n)+A216431(n))`
-/

namespace A196369.P12964088406390404703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A219654 n + A216431 n).toNat

end

end A196369.P12964088406390404703

/-! ## A196369.P9576481135729870758

`A000194(∑[A135975(A011974(n+1))])`
-/

namespace A196369.P9576481135729870758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135975 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196369.P9576481135729870758

/-! ## A196369.P2039307134084285232

`A048766(A000040(p?[A165631(n+1)]))`
-/

namespace A196369.P2039307134084285232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A196369.P2039307134084285232

/-! ## A196369.P9029090692627342171

`A261104(A237422(2*n+1)+A088520(3*(n+1)))`
-/

namespace A196369.P9029090692627342171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A237422 (2 * n + 1) + A088520 (3 * (n + 1))).toNat

end

end A196369.P9029090692627342171

/-! ## A196369.P13486956607561917682

`ceil(∑[A086173(n+1)/A031132(3*n+1)])`
-/

namespace A196369.P13486956607561917682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086173 (n + 1) : ℚ) / (A031132 (3 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A196369.P13486956607561917682

/-!
# A196375: a(1)=2; a(n)=smallest prime greater than the half-sum of all previous terms.

The programs for A196375, there is no canonical definition to state claims against.
-/

/-! ## A196375.P17813366743855141638

`A063905(A215978(n+1))`
-/

namespace A196375.P17813366743855141638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A215978 (n + 1)).toNat

end

end A196375.P17813366743855141638

/-! ## A196375.P12704898332708926196

`A259430(A039867(n+1)+2)`
-/

namespace A196375.P12704898332708926196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259430 (A039867 (n + 1) + 2).toNat

end

end A196375.P12704898332708926196

/-! ## A196375.P8206116542471696383

`A212300(A011377(n)+A005382(n+1))`
-/

namespace A196375.P8206116542471696383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A011377 n + A005382 (n + 1)).toNat

end

end A196375.P8206116542471696383

/-! ## A196375.P16128902423595745007

`A212300(A247157(n+1)*A339484(n+1))`
-/

namespace A196375.P16128902423595745007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A247157 (n + 1) * A339484 (n + 1)).toNat

end

end A196375.P16128902423595745007

/-! ## A196375.P16908758890083296246

`A230775(A266124(n))`
-/

namespace A196375.P16908758890083296246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A266124 n).toNat

end

end A196375.P16908758890083296246

/-!
# A196376: Positive integers a for which there is a (-4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196376, there is no canonical definition to state claims against.
-/

/-! ## A196376.P680959600103741580

`A034463(∑[A014682(A001055(n+1))])`
-/

namespace A196376.P680959600103741580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196376.P680959600103741580

/-! ## A196376.P12325104614322663874

`A000196(∑[A319740(A164315(n))])`
-/

namespace A196376.P12325104614322663874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319740 (A164315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196376.P12325104614322663874

/-! ## A196376.P13178626158981086302

`∑[A083923(∑[A237258(n)])]`
-/

namespace A196376.P13178626158981086302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237258 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196376.P13178626158981086302

/-! ## A196376.P1673225538527030033

`A325678(∑[A002186(n+1)])`
-/

namespace A196376.P1673225538527030033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196376.P1673225538527030033

/-! ## A196376.P6124235002514582195

`A003056(∑[A104273(n+3)+1])`
-/

namespace A196376.P6124235002514582195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104273 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196376.P6124235002514582195

/-!
# A196379: Positive integers a for which there is a primitive (-4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196379, there is no canonical definition to state claims against.
-/

/-! ## A196379.P8154451602949498082

`A068962(A103517(n+1))+A016232(A223041(n+1))`
-/

namespace A196379.P8154451602949498082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A103517 (n + 1)).toNat + A016232 (A223041 (n + 1)).toNat

end

end A196379.P8154451602949498082

/-!
# A196382: Number of sequences of n coin flips, that win on the last flip, if the sequence of flips ends with (1,1,0) or (1,0,1).

The programs for A196382, the canonical program `A196382.P4423133540513963599` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196382 has offset 1).

The definition of A196382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196382.P4423133540513963599

`a(n-1)+a(n-3)+1` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196382

/-- `a(n-1)+a(n-3)+1` -/
def P4423133540513963599.Spec : Prop :=
  ∀ n, (P4423133540513963599.a n : ℤ) = A196382 (n + 1)

theorem P4423133540513963599.correct : P4423133540513963599.Spec := by
  intro n
  simp only [A196382, Nat.add_sub_cancel]

end A196382

/-! ## A196382.P2833996696520060637

`ogf((2x^2-x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A196382.P2833996696520060637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -2, 1, -1, 1] n

end

end A196382.P2833996696520060637

namespace A196382

/-- `ogf((2x^2-x^3)/(1-2x+x^2-x^3+x^4))` -/
def P2833996696520060637.Spec : Prop :=
  ∀ n, P2833996696520060637.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P14439150724938241068

`A179070(n+2)-1`
-/

namespace A196382.P14439150724938241068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) - 1

end

end A196382.P14439150724938241068

namespace A196382

/-- `A179070(n+2)-1` -/
def P14439150724938241068.Spec : Prop :=
  ∀ n, P14439150724938241068.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P14070349505078431241

`A038718(n+1)-A058278(n)`
-/

namespace A196382.P14070349505078431241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) - A058278 n

end

end A196382.P14070349505078431241

namespace A196382

/-- `A038718(n+1)-A058278(n)` -/
def P14070349505078431241.Spec : Prop :=
  ∀ n, P14070349505078431241.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P3569023065286775968

`A288429(n-A057427(n))-2`
-/

namespace A196382.P3569023065286775968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 ((n : ℤ) - A057427 n).toNat - 2

end

end A196382.P3569023065286775968

namespace A196382

/-- `A288429(n-A057427(n))-2` -/
def P3569023065286775968.Spec : Prop :=
  ∀ n, P3569023065286775968.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P10567364118653548048

`∑[A058278(n+1)]-A058278(n)`
-/

namespace A196382.P10567364118653548048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A058278 n

end

end A196382.P10567364118653548048

namespace A196382

/-- `∑[A058278(n+1)]-A058278(n)` -/
def P10567364118653548048.Spec : Prop :=
  ∀ n, P10567364118653548048.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P1564936058200543883

`A097333(n+1)-1-A058278(n)`
-/

namespace A196382.P1564936058200543883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) - 1 - A058278 n

end

end A196382.P1564936058200543883

namespace A196382

/-- `A097333(n+1)-1-A058278(n)` -/
def P1564936058200543883.Spec : Prop :=
  ∀ n, P1564936058200543883.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P9076943573566129756

`A078012(n+1)+∑[A078012(n+1)]`
-/

namespace A196382.P9076943573566129756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196382.P9076943573566129756

namespace A196382

/-- `A078012(n+1)+∑[A078012(n+1)]` -/
def P9076943573566129756.Spec : Prop :=
  ∀ n, P9076943573566129756.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P1179350410785287480

`A000930(n+1)+A078012(n+1)-1`
-/

namespace A196382.P1179350410785287480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) + (A078012 (n + 1) - 1)

end

end A196382.P1179350410785287480

namespace A196382

/-- `A000930(n+1)+A078012(n+1)-1` -/
def P1179350410785287480.Spec : Prop :=
  ∀ n, P1179350410785287480.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P12765548520181498033

`A068921(n+1)-(A135851(n+1)+1)`
-/

namespace A196382.P12765548520181498033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) - (A135851 (n + 1) + 1)

end

end A196382.P12765548520181498033

namespace A196382

/-- `A068921(n+1)-(A135851(n+1)+1)` -/
def P12765548520181498033.Spec : Prop :=
  ∀ n, P12765548520181498033.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P9533299321332508354

`A277253(n+1)+A306276(n+1)-1`
-/

namespace A196382.P9533299321332508354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 1) + (A306276 (n + 1) - 1)

end

end A196382.P9533299321332508354

namespace A196382

/-- `A277253(n+1)+A306276(n+1)-1` -/
def P9533299321332508354.Spec : Prop :=
  ∀ n, P9533299321332508354.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P4547258986382097363

`A038718(n+2)-A097333(n)`
-/

namespace A196382.P4547258986382097363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 2) - A097333 n

end

end A196382.P4547258986382097363

namespace A196382

/-- `A038718(n+2)-A097333(n)` -/
def P4547258986382097363.Spec : Prop :=
  ∀ n, P4547258986382097363.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P13092150659495869180

`A077868(n)-(A135851(n+1)+A000930(n))`
-/

namespace A196382.P13092150659495869180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n - (A135851 (n + 1) + A000930 n)

end

end A196382.P13092150659495869180

namespace A196382

/-- `A077868(n)-(A135851(n+1)+A000930(n))` -/
def P13092150659495869180.Spec : Prop :=
  ∀ n, P13092150659495869180.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P5330019952071837694

`Δ[A069241(n)]`
-/

namespace A196382.P5330019952071837694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196382.P5330019952071837694

namespace A196382

/-- `Δ[A069241(n)]` -/
def P5330019952071837694.Spec : Prop :=
  ∀ n, P5330019952071837694.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P17445222633270436104

`Δ[A170933(n)]-1`
-/

namespace A196382.P17445222633270436104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A196382.P17445222633270436104

namespace A196382

/-- `Δ[A170933(n)]-1` -/
def P17445222633270436104.Spec : Prop :=
  ∀ n, P17445222633270436104.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P16169117921129898937

`Δ[A288429(n+1)]-1`
-/

namespace A196382.P16169117921129898937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A196382.P16169117921129898937

namespace A196382

/-- `Δ[A288429(n+1)]-1` -/
def P16169117921129898937.Spec : Prop :=
  ∀ n, P16169117921129898937.a n = A196382 (n + 1)

end A196382

/-! ## A196382.P3241767141764652238

`A069241(n+1)-A069241(n)`
-/

namespace A196382.P3241767141764652238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 (n + 1) - A069241 n

end

end A196382.P3241767141764652238

namespace A196382

/-- `A069241(n+1)-A069241(n)` -/
def P3241767141764652238.Spec : Prop :=
  ∀ n, P3241767141764652238.a n = A196382 (n + 1)

end A196382

/-!
# A196383: Positive integers a for which there is a (-5)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196383, there is no canonical definition to state claims against.
-/

/-! ## A196383.P8999221956709082341

`A048766(A098763(n)+A019425(n+1))`
-/

namespace A196383.P8999221956709082341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A098763 n + A019425 (n + 1)).toNat

end

end A196383.P8999221956709082341

/-! ## A196383.P3331502557461383007

`A038605(A055748(n+1)+A007360(3*n+1))`
-/

namespace A196383.P3331502557461383007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A055748 (n + 1) + A007360 (3 * n + 1)).toNat

end

end A196383.P3331502557461383007

/-! ## A196383.P6291467811007109337

`A038605(A305713(3*n+1)+A006530(n+1))`
-/

namespace A196383.P6291467811007109337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A305713 (3 * n + 1) + A006530 (n + 1)).toNat

end

end A196383.P6291467811007109337

/-! ## A196383.P16094535281779626149

`A286888(A131079(n+1)+A007360(3*n+1))`
-/

namespace A196383.P16094535281779626149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286888 (A131079 (n + 1) + A007360 (3 * n + 1)).toNat

end

end A196383.P16094535281779626149

/-! ## A196383.P9977575857640017702

`A038605(A305713(3*n+1)+A102662(n+1))`
-/

namespace A196383.P9977575857640017702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A305713 (3 * n + 1) + A102662 (n + 1)).toNat

end

end A196383.P9977575857640017702

/-!
# A196389: Triangle T(n,k), read by rows, given by (0,1,-1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A196389, the canonical program `A196389.P4708616426695059720` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196389 has offset 0).

The definition of A196389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196389.P13074141220895735159

`A218234(n)+A023531(n)`
-/

namespace A196389.P13074141220895735159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218234 n + A023531 n

end

end A196389.P13074141220895735159

namespace A196389

/-- `A218234(n)+A023531(n)` -/
def P13074141220895735159.Spec : Prop :=
  ∀ n, P13074141220895735159.a n = A196389 n

end A196389

/-! ## A196389.P4708616426695059720

`A167374(n)+A132440(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A196389

/-- `A167374(n)+A132440(n)` -/
def P4708616426695059720.Spec : Prop :=
  ∀ n, P4708616426695059720.a n = A196389 n

theorem P4708616426695059720.correct : P4708616426695059720.Spec := by
  intro n
  simp only [A196389]

end A196389

/-! ## A196389.P782189780581623907

`A251635(n)+A132681(n)`
-/

namespace A196389.P782189780581623907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251635 n + A132681 n

end

end A196389.P782189780581623907

namespace A196389

/-- `A251635(n)+A132681(n)` -/
def P782189780581623907.Spec : Prop :=
  ∀ n, P782189780581623907.a n = A196389 n

end A196389

/-! ## A196389.P3118213692136991677

`A134082(n)-A132681(n)`
-/

namespace A196389.P3118213692136991677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n - A132681 n

end

end A196389.P3118213692136991677

namespace A196389

/-- `A134082(n)-A132681(n)` -/
def P3118213692136991677.Spec : Prop :=
  ∀ n, P3118213692136991677.a n = A196389 n

end A196389

/-! ## A196389.P12165608130944800425

`A026729(n)*A097806(n)`
-/

namespace A196389.P12165608130944800425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A097806 n

end

end A196389.P12165608130944800425

namespace A196389

/-- `A026729(n)*A097806(n)` -/
def P12165608130944800425.Spec : Prop :=
  ∀ n, P12165608130944800425.a n = A196389 n

end A196389

/-! ## A196389.P10125723322895411436

`A026729(n)*A127822(n)`
-/

namespace A196389.P10125723322895411436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127822 n

end

end A196389.P10125723322895411436

namespace A196389

/-- `A026729(n)*A127822(n)` -/
def P10125723322895411436.Spec : Prop :=
  ∀ n, P10125723322895411436.a n = A196389 n

end A196389

/-! ## A196389.P10060991087807975043

`A057884(n)*A097806(n)`
-/

namespace A196389.P10060991087807975043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057884 n * A097806 n

end

end A196389.P10060991087807975043

namespace A196389

/-- `A057884(n)*A097806(n)` -/
def P10060991087807975043.Spec : Prop :=
  ∀ n, P10060991087807975043.a n = A196389 n

end A196389

/-! ## A196389.P15691982477838402687

`A058393(n)*A097806(n)`
-/

namespace A196389.P15691982477838402687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 n * A097806 n

end

end A196389.P15691982477838402687

namespace A196389

/-- `A058393(n)*A097806(n)` -/
def P15691982477838402687.Spec : Prop :=
  ∀ n, P15691982477838402687.a n = A196389 n

end A196389

/-! ## A196389.P5013379460226704476

`A058394(n)*A097806(n)`
-/

namespace A196389.P5013379460226704476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058394 n * A097806 n

end

end A196389.P5013379460226704476

namespace A196389

/-- `A058394(n)*A097806(n)` -/
def P5013379460226704476.Spec : Prop :=
  ∀ n, P5013379460226704476.a n = A196389 n

end A196389

/-! ## A196389.P10191948126777940297

`A058395(n)*A097806(n)`
-/

namespace A196389.P10191948126777940297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 n * A097806 n

end

end A196389.P10191948126777940297

namespace A196389

/-- `A058395(n)*A097806(n)` -/
def P10191948126777940297.Spec : Prop :=
  ∀ n, P10191948126777940297.a n = A196389 n

end A196389

/-! ## A196389.P1042924104793451502

`A059260(n)*A097806(n)`
-/

namespace A196389.P1042924104793451502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n * A097806 n

end

end A196389.P1042924104793451502

namespace A196389

/-- `A059260(n)*A097806(n)` -/
def P1042924104793451502.Spec : Prop :=
  ∀ n, P1042924104793451502.a n = A196389 n

end A196389

/-! ## A196389.P16401264269380441460

`A060086(n)*A097806(n)`
-/

namespace A196389.P16401264269380441460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 n * A097806 n

end

end A196389.P16401264269380441460

namespace A196389

/-- `A060086(n)*A097806(n)` -/
def P16401264269380441460.Spec : Prop :=
  ∀ n, P16401264269380441460.a n = A196389 n

end A196389

/-! ## A196389.P606792878826264990

`A060701(n)*A097806(n)`
-/

namespace A196389.P606792878826264990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 n * A097806 n

end

end A196389.P606792878826264990

namespace A196389

/-- `A060701(n)*A097806(n)` -/
def P606792878826264990.Spec : Prop :=
  ∀ n, P606792878826264990.a n = A196389 n

end A196389

/-! ## A196389.P6451109951625868120

`A062110(n)*A097806(n)`
-/

namespace A196389.P6451109951625868120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 n * A097806 n

end

end A196389.P6451109951625868120

namespace A196389

/-- `A062110(n)*A097806(n)` -/
def P6451109951625868120.Spec : Prop :=
  ∀ n, P6451109951625868120.a n = A196389 n

end A196389

/-! ## A196389.P958510822425683820

`A062135(n)*A097806(n)`
-/

namespace A196389.P958510822425683820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062135 n * A097806 n

end

end A196389.P958510822425683820

namespace A196389

/-- `A062135(n)*A097806(n)` -/
def P958510822425683820.Spec : Prop :=
  ∀ n, P958510822425683820.a n = A196389 n

end A196389

/-! ## A196389.P13023752107663163515

`A097805(n)*A097806(n)`
-/

namespace A196389.P13023752107663163515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A097806 n

end

end A196389.P13023752107663163515

namespace A196389

/-- `A097805(n)*A097806(n)` -/
def P13023752107663163515.Spec : Prop :=
  ∀ n, P13023752107663163515.a n = A196389 n

end A196389

/-! ## A196389.P7728301965076103000

`A097806(n)*A156644(n)`
-/

namespace A196389.P7728301965076103000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A156644 n

end

end A196389.P7728301965076103000

namespace A196389

/-- `A097806(n)*A156644(n)` -/
def P7728301965076103000.Spec : Prop :=
  ∀ n, P7728301965076103000.a n = A196389 n

end A196389

/-! ## A196389.P16254701457672009876

`A097808(n)*A167374(n)`
-/

namespace A196389.P16254701457672009876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n * A167374 n

end

end A196389.P16254701457672009876

namespace A196389

/-- `A097808(n)*A167374(n)` -/
def P16254701457672009876.Spec : Prop :=
  ∀ n, P16254701457672009876.a n = A196389 n

end A196389

/-! ## A196389.P7188068785095377269

`A135228(n)*A167371(n)`
-/

namespace A196389.P7188068785095377269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135228 n * A167371 n

end

end A196389.P7188068785095377269

namespace A196389

/-- `A135228(n)*A167371(n)` -/
def P7188068785095377269.Spec : Prop :=
  ∀ n, P7188068785095377269.a n = A196389 n

end A196389

/-! ## A196389.P16435441633452570392

`A135230(n)*A167371(n)`
-/

namespace A196389.P16435441633452570392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135230 n * A167371 n

end

end A196389.P16435441633452570392

namespace A196389

/-- `A135230(n)*A167371(n)` -/
def P16435441633452570392.Spec : Prop :=
  ∀ n, P16435441633452570392.a n = A196389 n

end A196389

/-!
# A196390: Positive integers a for which there is a (-6)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196390, there is no canonical definition to state claims against.
-/

/-! ## A196390.P7786596726256773626

`A110654(A156686(n+1))+A000122(A046389(2*(n+1)))`
-/

namespace A196390.P7786596726256773626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A156686 (n + 1)).toNat + A000122 (A046389 (2 * (n + 1))).toNat

end

end A196390.P7786596726256773626

/-! ## A196390.P5379479110272602130

`A110654(A156686(n+1))+A000122(A000040(3*n+5))`
-/

namespace A196390.P5379479110272602130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A156686 (n + 1)).toNat + A000122 (A000040 (3 * n + 5)).toNat

end

end A196390.P5379479110272602130

/-! ## A196390.P11846073690892185233

`A156686(n+1)/A000122(A156686(n+1)²)`
-/

namespace A196390.P11846073690892185233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156686 (n + 1) : ℚ) / (A000122 (A156686 (n + 1) ^ 2).toNat : ℚ)

end

end A196390.P11846073690892185233

/-! ## A196390.P15701647643397241996

`A110654(A156686(n+1))+A000122(A096022(2*n+5))`
-/

namespace A196390.P15701647643397241996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A156686 (n + 1)).toNat + A000122 (A096022 (2 * n + 5)).toNat

end

end A196390.P15701647643397241996

/-! ## A196390.P1563887606482779729

`A001281(A156686(n+1)²)/A156686(n+1)`
-/

namespace A196390.P1563887606482779729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001281 (A156686 (n + 1) ^ 2).toNat : ℚ) / (A156686 (n + 1) : ℚ)

end

end A196390.P1563887606482779729

/-! ## A196390.P13733598638518822350

`and(A156686(n+1)/2, A055580(n))`
-/

namespace A196390.P13733598638518822350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A156686 (n + 1) : ℚ) / 2)) (A055580 n)

end

end A196390.P13733598638518822350

/-! ## A196390.P16014178518077385322

`and(A055580(n), A110654(A156686(n+1)))`
-/

namespace A196390.P16014178518077385322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A110654 (A156686 (n + 1)).toNat)

end

end A196390.P16014178518077385322

/-! ## A196390.P867175174671867703

`A322452(A077256(n+1))+A156686(n+1)/2`
-/

namespace A196390.P867175174671867703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322452 (A077256 (n + 1)).toNat : ℚ) + (A156686 (n + 1) : ℚ) / 2

end

end A196390.P867175174671867703

/-! ## A196390.P1336608918321075646

`A181672(A156686(n+1)-1)`
-/

namespace A196390.P1336608918321075646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181672 (A156686 (n + 1) - 1).toNat

end

end A196390.P1336608918321075646

/-!
# A196393: Positive integers a for which there is a primitive (-6)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196393, there is no canonical definition to state claims against.
-/

/-! ## A196393.P10743758167525942603

`A020888(lt[A000700(n+3), A000010(3*n+1)])`
-/

namespace A196393.P10743758167525942603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196393.P10743758167525942603

/-! ## A196393.P8632235473876136661

`A020888(lt[A178702(n), A091193(n)])`
-/

namespace A196393.P8632235473876136661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196393.P8632235473876136661

/-! ## A196393.P17073074499485028280

`A020888(lt[A331980(n), A020902(n)])`
-/

namespace A196393.P17073074499485028280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196393.P17073074499485028280

/-! ## A196393.P10919388715985024065

`A020888(lt[A108917(n), A273115(n)])`
-/

namespace A196393.P10919388715985024065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196393.P10919388715985024065

/-! ## A196393.P18161296694458423645

`A020888(lt[A000700(n), A034448(n+1)])`
-/

namespace A196393.P18161296694458423645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196393.P18161296694458423645

/-!
# A196394: Positive integers b for which there is a primitive (-6)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196394, there is no canonical definition to state claims against.
-/

/-! ## A196394.P2769316603405479104

`A119321(n+1)+A196393(n+1)+A185284(A198321(n))`
-/

namespace A196394.P2769316603405479104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119321 (n + 1) + (A196393 (n + 1) + A185284 (A198321 n).toNat)

end

end A196394.P2769316603405479104

/-! ## A196394.P7170060811829654683

`A119321(n+1)+A196393(n+1)%A001844(A304489(n+1))`
-/

namespace A196394.P7170060811829654683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119321 (n + 1) + Int.tmod (A196393 (n + 1)) (A001844 (A304489 (n + 1)).toNat)

end

end A196394.P7170060811829654683

/-! ## A196394.P6696841623829121418

`A119321(n+1)+A196393(n+1)+A185284(A185284(n))`
-/

namespace A196394.P6696841623829121418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119321 (n + 1) + (A196393 (n + 1) + A185284 (A185284 n).toNat)

end

end A196394.P6696841623829121418

/-! ## A196394.P16896102929593493430

`A196393(∑[A185284(n)!])+A119321(n+1)`
-/

namespace A196394.P16896102929593493430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (∑ j ∈ Finset.range (n + 1), f1 j) + A119321 (n + 1)

end

end A196394.P16896102929593493430

/-! ## A196394.P6350836744963848445

`A119321(A181672(2*n+1))+A020888(n+1)`
-/

namespace A196394.P6350836744963848445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119321 (A181672 (2 * n + 1)).toNat + A020888 (n + 1)

end

end A196394.P6350836744963848445

