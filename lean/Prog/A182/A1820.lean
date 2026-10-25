import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182000: G.f.: exp( Sum_{n>=1} 2^A090740(n) * x^n/n ) where A090740(n) = highest exponent of 2 in 3^n-1.

The programs for A182000, there is no canonical definition to state claims against.
-/

/-! ## A182000.P5824967521162004228

`A173283(n)-a(n-1)` with `a(0)=1`
-/

namespace A182000.P5824967521162004228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173283 n - a (n - 1)

end

end A182000.P5824967521162004228

/-! ## A182000.P9753090374906850268

`abs(∑[A033999(n)*A173283(n)])`
-/

namespace A182000.P9753090374906850268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A173283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A182000.P9753090374906850268

/-! ## A182000.P15683384201979237969

`∑[A171238(n+1)%A198277(n)]-a(n-1)` with `a(0)=1`
-/

namespace A182000.P15683384201979237969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171238 (n + 1)) (A198277 n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A182000.P15683384201979237969

/-! ## A182000.P8438329648994270835

`∑[A105360(∏[gcd(2, n)]-1)]`
-/

namespace A182000.P8438329648994270835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (∏ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182000.P8438329648994270835

/-! ## A182000.P5630716584920293407

`∑[A105360(A052551(n))]`
-/

namespace A182000.P5630716584920293407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (A052551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182000.P5630716584920293407

/-!
# A182001: Riordan array ((2*x+1)/(1-x-x^2), x/(1-x-x^2)).

The programs for A182001, there is no canonical definition to state claims against.
-/

/-! ## A182001.P18230344128531023103

`2*A122075(n)-A037027(n)`
-/

namespace A182001.P18230344128531023103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122075 n - A037027 n

end

end A182001.P18230344128531023103

/-! ## A182001.P8163878669480055993

`A155161(n+1)+A122075(n)`
-/

namespace A182001.P8163878669480055993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A122075 n

end

end A182001.P8163878669480055993

/-! ## A182001.P12526850267559606396

`A207632(n+1)+Δ[A155161(A028310(n))]`
-/

namespace A182001.P12526850267559606396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (n + 1) + (f1 (n + 1) - f1 n)

end

end A182001.P12526850267559606396

/-! ## A182001.P1443569514895837760

`A155161(n+1)+A155161(n+1)+A037027(n)`
-/

namespace A182001.P1443569514895837760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + (A155161 (n + 1) + A037027 n)

end

end A182001.P1443569514895837760

/-! ## A182001.P688422859565042185

`A037027(n+1)+A122075(n)-A055830(n+1)`
-/

namespace A182001.P688422859565042185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1) + (A122075 n - A055830 (n + 1))

end

end A182001.P688422859565042185

/-! ## A182001.P12799354057762598673

`A207632(n+1)+Δ[A155161(A066182(n+1))]`
-/

namespace A182001.P12799354057762598673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (n + 1) + (f1 (n + 1) - f1 n)

end

end A182001.P12799354057762598673

/-! ## A182001.P7172185077828098250

`A155161(n+1)+A055830(A007401(n+1))`
-/

namespace A182001.P7172185077828098250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) + A055830 (A007401 (n + 1)).toNat

end

end A182001.P7172185077828098250

/-! ## A182001.P16033652646611465808

`A209599(A245300(n))+A155161(n+1)`
-/

namespace A182001.P16033652646611465808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A245300 n).toNat + A155161 (n + 1)

end

end A182001.P16033652646611465808

/-! ## A182001.P13609645897845203032

`A037027(n)+A005843(A155161(n+1))`
-/

namespace A182001.P13609645897845203032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + A005843 (A155161 (n + 1)).toNat

end

end A182001.P13609645897845203032

/-! ## A182001.P2265946419152675686

`A005843(A122075(n))-A037027(n)`
-/

namespace A182001.P2265946419152675686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122075 n).toNat - A037027 n

end

end A182001.P2265946419152675686

/-!
# A182003: a(n) = least prime p_k such that n = p_k - p_{k-1} + ... + (-1)^{k-j}p_j for some 1 <= j <= k, with p_k the k-th prime.

The programs for A182003, there is no canonical definition to state claims against.
-/

/-! ## A182003.P15800330459396898798

`A151800(A028310(n)+A300236(n+1)/A336643(2^n))`
-/

namespace A182003.P15800330459396898798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A028310 n : ℚ) + (A300236 (n + 1) : ℚ) / (A336643 (2 ^ n) : ℚ))).toNat

end

end A182003.P15800330459396898798

/-!
# A182004: Expansion of q^(-1/4) * (eta(q^4) * eta(q^25) + eta(q) * eta(q^100))^2 / (eta(q^2) * eta(q^50)) in powers of q.

The programs for A182004, the canonical program `A182004.P11314887941871430139` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182004 has offset 0).

The definition of A182004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182004.P11314887941871430139

`A008441(n)*A226162(2*n+3)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182004

/-- `A008441(n)*A226162(2*n+3)` -/
def P11314887941871430139.Spec : Prop :=
  ∀ n, P11314887941871430139.a n = A182004 n

theorem P11314887941871430139.correct : P11314887941871430139.Spec := by
  intro n
  simp only [A182004]

end A182004

/-! ## A182004.P10294824870827651786

`A100047(3*n+2)/2*A004020(n)`
-/

namespace A182004.P10294824870827651786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100047 (3 * n + 2) : ℚ) / 2 * (A004020 n : ℚ)

end

end A182004.P10294824870827651786

namespace A182004

/-- `A100047(3*n+2)/2*A004020(n)` -/
def P10294824870827651786.Spec : Prop :=
  ∀ n, P10294824870827651786.a n = (A182004 n : ℚ)

end A182004

/-! ## A182004.P9210822918388020443

`A008441(n)*A330025((1-n)²)`
-/

namespace A182004.P9210822918388020443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A330025 ((1 - (n : ℤ)) ^ 2).toNat

end

end A182004.P9210822918388020443

namespace A182004

/-- `A008441(n)*A330025((1-n)²)` -/
def P9210822918388020443.Spec : Prop :=
  ∀ n, P9210822918388020443.a n = A182004 n

end A182004

/-! ## A182004.P17554772903279561857

`A134343(n)*A253262(A028387(n))`
-/

namespace A182004.P17554772903279561857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 n * A253262 (A028387 n).toNat

end

end A182004.P17554772903279561857

namespace A182004

/-- `A134343(n)*A253262(A028387(n))` -/
def P17554772903279561857.Spec : Prop :=
  ∀ n, P17554772903279561857.a n = A182004 n

end A182004

/-! ## A182004.P9724456649203182535

`A134343(n)*A330025(A090288(n)/2)`
-/

namespace A182004.P9724456649203182535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 n * A330025 (SequenceMachineLib.roundAway ((A090288 n : ℚ) / 2)).toNat

end

end A182004.P9724456649203182535

namespace A182004

/-- `A134343(n)*A330025(A090288(n)/2)` -/
def P9724456649203182535.Spec : Prop :=
  ∀ n, P9724456649203182535.a n = A182004 n

end A182004

/-! ## A182004.P5724379592667405878

`A134343(n)*A330025(A090288(n))`
-/

namespace A182004.P5724379592667405878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 n * A330025 (A090288 n).toNat

end

end A182004.P5724379592667405878

namespace A182004

/-- `A134343(n)*A330025(A090288(n))` -/
def P5724379592667405878.Spec : Prop :=
  ∀ n, P5724379592667405878.a n = A182004 n

end A182004

/-!
# A182006: Lengths of periods of iterations described in A182005 for terms of A182005.

The programs for A182006, there is no canonical definition to state claims against.
-/

/-! ## A182006.P628813228897347713

`p?[A072210(n+2)%A184338(n+1)]`
-/

namespace A182006.P628813228897347713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072210 (n + 2)) (A184338 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182006.P628813228897347713

/-! ## A182006.P5182523233510816542

`A097509(lcm(A140136(n), A245218(n)))`
-/

namespace A182006.P5182523233510816542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (Int.lcm (A140136 n) (A245218 (n + 1)))

end

end A182006.P5182523233510816542

/-! ## A182006.P9304908722582573187

`p?[A252736(A276214(A000463(n+1)))]`
-/

namespace A182006.P9304908722582573187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A276214 (A000463 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182006.P9304908722582573187

/-! ## A182006.P7704855359292687056

`A252229(A014681(n)+A000041(n)+n)`
-/

namespace A182006.P7704855359292687056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 (A014681 n + A000041 n + (n : ℤ)).toNat

end

end A182006.P7704855359292687056

/-! ## A182006.P12431899244978546621

`A299229(lcm(A029744(n+1), A299229(2*(n+1))))`
-/

namespace A182006.P12431899244978546621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299229 (Int.lcm (A029744 (n + 1)) (A299229 (2 * (n + 1))))

end

end A182006.P12431899244978546621

/-!
# A182008: a(n) = ceiling(sqrt(2*n*log(2))).

The programs for A182008, the canonical program `A182008.P12840871531959788997` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182008 has offset 1).

The definition of A182008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(2*(n+1)*log(2)))` (program `A182008.P12840871531959788997`, by `A182008.P12840871531959788997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182008.P12840871531959788997

`ceil(sqrt(2*(n+1)*log(2)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182008

/-- `ceil(sqrt(2*(n+1)*log(2)))` -/
def P12840871531959788997.Spec : Prop :=
  ∀ n, P12840871531959788997.a n = A182008 (n + 1)

theorem P12840871531959788997.correct : P12840871531959788997.Spec := by
  intro n
  simp only [A182008, Nat.add_sub_cancel]

end A182008

/-! ## A182008.P17417320824816787541

`floor(sqrt((n+1)*log(4))+(A004442(n)-n)²)`
-/

namespace A182008.P17417320824816787541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℝ) * Real.log (4 : ℝ)) + ((A004442 n - (n : ℤ)) ^ 2 : ℝ)⌋

end

end A182008.P17417320824816787541

namespace A182008

/-- `floor(sqrt((n+1)*log(4))+(A004442(n)-n)²)` -/
def P17417320824816787541.Spec : Prop :=
  ∀ n, P17417320824816787541.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P11582664303226140749

`floor(sqrt((n+1)*log(4)))+A029883(n+1)²!`
-/

namespace A182008.P11582664303226140749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℝ) * Real.log (4 : ℝ))⌋ + (Nat.factorial (A029883 (n + 1) ^ 2).toNat : ℤ)

end

end A182008.P11582664303226140749

namespace A182008

/-- `floor(sqrt((n+1)*log(4)))+A029883(n+1)²!` -/
def P11582664303226140749.Spec : Prop :=
  ∀ n, P11582664303226140749.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P7732655313636991423

`floor(sqrt((n+1)*log(4)))+A007318(n²%(n+1))`
-/

namespace A182008.P7732655313636991423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℝ) * Real.log (4 : ℝ))⌋ + A007318 (n ^ 2 % (n + 1))

end

end A182008.P7732655313636991423

namespace A182008

/-- `floor(sqrt((n+1)*log(4)))+A007318(n²%(n+1))` -/
def P7732655313636991423.Spec : Prop :=
  ∀ n, P7732655313636991423.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P15757942003793672168

`A000196(floor((n+1)*log(4)))+1`
-/

namespace A182008.P15757942003793672168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(n + 1 : ℝ) * Real.log (4 : ℝ)⌋.toNat + 1

end

end A182008.P15757942003793672168

namespace A182008

/-- `A000196(floor((n+1)*log(4)))+1` -/
def P15757942003793672168.Spec : Prop :=
  ∀ n, P15757942003793672168.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P1790499042282474033

`A000196(A000267(A167614(n+1))+A000267(n))`
-/

namespace A182008.P1790499042282474033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000267 (A167614 (n + 1)).toNat + A000267 n).toNat

end

end A182008.P1790499042282474033

namespace A182008

/-- `A000196(A000267(A167614(n+1))+A000267(n))` -/
def P1790499042282474033.Spec : Prop :=
  ∀ n, P1790499042282474033.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P2103843231257989154

`A000196(A000267(A133263(n+2))+A000267(n))`
-/

namespace A182008.P2103843231257989154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000267 (A133263 (n + 2)).toNat + A000267 n).toNat

end

end A182008.P2103843231257989154

namespace A182008

/-- `A000196(A000267(A133263(n+2))+A000267(n))` -/
def P2103843231257989154.Spec : Prop :=
  ∀ n, P2103843231257989154.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P7464428890489261219

`A003059(A247431(n+2))`
-/

namespace A182008.P7464428890489261219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A247431 (n + 2)).toNat

end

end A182008.P7464428890489261219

namespace A182008

/-- `A003059(A247431(n+2))` -/
def P7464428890489261219.Spec : Prop :=
  ∀ n, P7464428890489261219.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P8509148915949956371

`A000194(A000194(A295008(A361795(n+2))))`
-/

namespace A182008.P8509148915949956371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (A295008 (A361795 (n + 2)).toNat).toNat).toNat

end

end A182008.P8509148915949956371

namespace A182008

/-- `A000194(A000194(A295008(A361795(n+2))))` -/
def P8509148915949956371.Spec : Prop :=
  ∀ n, P8509148915949956371.a n = A182008 (n + 1)

end A182008

/-! ## A182008.P3563652217562408166

`floor(sqrt(A352874(n+2)))`
-/

namespace A182008.P3563652217562408166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A352874 (n + 2))

end

end A182008.P3563652217562408166

namespace A182008

/-- `floor(sqrt(A352874(n+2)))` -/
def P3563652217562408166.Spec : Prop :=
  ∀ n, P3563652217562408166.a n = A182008 (n + 1)

end A182008

/-!
# A182009: a(n) = ceiling(sqrt(2n*log(2))+(3-2*log(2))/6).

The programs for A182009, the canonical program `A182009.P9075945938364818695` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182009 has offset 1).

The definition of A182009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(2*(n+1)*log(2))+(3-2*log(2))/6)` (program `A182009.P9075945938364818695`, by `A182009.P9075945938364818695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182009.P9075945938364818695

`ceil(sqrt(2*(n+1)*log(2))+(3-2*log(2))/6)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182009

/-- `ceil(sqrt(2*(n+1)*log(2))+(3-2*log(2))/6)` -/
def P9075945938364818695.Spec : Prop :=
  ∀ n, P9075945938364818695.a n = A182009 (n + 1)

theorem P9075945938364818695.correct : P9075945938364818695.Spec := by
  intro n
  simp only [A182009, Nat.add_sub_cancel]

end A182009

/-! ## A182009.P11763273785507971773

`A003057(A248103(n+1)+A151933(n))`
-/

namespace A182009.P11763273785507971773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A248103 (n + 1) + A151933 n).toNat

end

end A182009.P11763273785507971773

namespace A182009

/-- `A003057(A248103(n+1)+A151933(n))` -/
def P11763273785507971773.Spec : Prop :=
  ∀ n, P11763273785507971773.a n = A182009 (n + 1)

end A182009

/-! ## A182009.P2064870512811834303

`A000194(A000267(∑[A225387(n+1)]))`
-/

namespace A182009.P2064870512811834303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182009.P2064870512811834303

namespace A182009

/-- `A000194(A000267(∑[A225387(n+1)]))` -/
def P2064870512811834303.Spec : Prop :=
  ∀ n, P2064870512811834303.a n = A182009 (n + 1)

end A182009

/-! ## A182009.P8079528344813307972

`A182008(A089869(n)+A067754(n+1))`
-/

namespace A182009.P8079528344813307972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (A089869 n + A067754 (n + 1)).toNat

end

end A182009.P8079528344813307972

namespace A182009

/-- `A182008(A089869(n)+A067754(n+1))` -/
def P8079528344813307972.Spec : Prop :=
  ∀ n, P8079528344813307972.a n = A182009 (n + 1)

end A182009

/-! ## A182009.P6013553903929387239

`A000194(A135412(n+1)+A024360(n+1))`
-/

namespace A182009.P6013553903929387239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A135412 (n + 1) + A024360 (n + 1)).toNat

end

end A182009.P6013553903929387239

namespace A182009

/-- `A000194(A135412(n+1)+A024360(n+1))` -/
def P6013553903929387239.Spec : Prop :=
  ∀ n, P6013553903929387239.a n = A182009 (n + 1)

end A182009

/-! ## A182009.P11799107020660289113

`A048766(A330975(n+1)+A049407(3*n+2))`
-/

namespace A182009.P11799107020660289113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A330975 (n + 1) + A049407 (3 * n + 2)).toNat

end

end A182009.P11799107020660289113

namespace A182009

/-- `A048766(A330975(n+1)+A049407(3*n+2))` -/
def P11799107020660289113.Spec : Prop :=
  ∀ n, P11799107020660289113.a n = A182009 (n + 1)

end A182009

/-! ## A182009.P6998640422775605909

`A368942(A351846(A156859(2*n+1)))`
-/

namespace A182009.P6998640422775605909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368942 (A351846 (A156859 (2 * n + 1)).toNat).toNat

end

end A182009.P6998640422775605909

namespace A182009

/-- `A368942(A351846(A156859(2*n+1)))` -/
def P6998640422775605909.Spec : Prop :=
  ∀ n, P6998640422775605909.a n = A182009 (n + 1)

end A182009

/-!
# A182012: Number of graphs on 2n unlabeled nodes all having odd degree.

The programs for A182012, there is no canonical definition to state claims against.
-/

/-! ## A182012.P4286868048735567687

`A002854(2*(n+1))`
-/

namespace A182012.P4286868048735567687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (2 * (n + 1))

end

end A182012.P4286868048735567687

/-! ## A182012.P7350558196903856297

`record[A002854(A014681(n+1))]`
-/

namespace A182012.P7350558196903856297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182012.P7350558196903856297

/-! ## A182012.P2971205745111680819

`record[A002854(A093178(n)+1)]`
-/

namespace A182012.P2971205745111680819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182012.P2971205745111680819

/-! ## A182012.P12764772500096397655

`record[A002854(A158405(n+1)+1)]`
-/

namespace A182012.P12764772500096397655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (A158405 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182012.P12764772500096397655

/-!
# A182013: Triangle of partial sums of Motzkin numbers.

The programs for A182013, there is no canonical definition to state claims against.
-/

/-! ## A182013.P17721437149884094431

`A335426(A121281(n))+A055642(n)`
-/

namespace A182013.P17721437149884094431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (A121281 n).toNat + A055642 n

end

end A182013.P17721437149884094431

/-! ## A182013.P8204213274856132315

`A335426(A121281(n))+A133502(n)`
-/

namespace A182013.P8204213274856132315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (A121281 n).toNat + A133502 n

end

end A182013.P8204213274856132315

/-! ## A182013.P3370573600159609886

`A335426(A121281(n))+A138902(n)`
-/

namespace A182013.P3370573600159609886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (A121281 n).toNat + A138902 n

end

end A182013.P3370573600159609886

/-! ## A182013.P18129215555264827174

`A335426(A121281(n))+A262190(n)`
-/

namespace A182013.P18129215555264827174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (A121281 n).toNat + A262190 n

end

end A182013.P18129215555264827174

/-! ## A182013.P4214876677119621873

`A335426(A121281(n))+A027868(n)!`
-/

namespace A182013.P4214876677119621873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335426 (A121281 n).toNat + (Nat.factorial (A027868 n).toNat : ℤ)

end

end A182013.P4214876677119621873

/-!
# A182014: Number of independent sets of nodes in graph C_7 x P_n (n>=0).

The programs for A182014, there is no canonical definition to state claims against.
-/

/-! ## A182014.P2874474540978056409

`A286513(A167487(n+4))`
-/

namespace A182014.P2874474540978056409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A167487 (n + 4)).toNat

end

end A182014.P2874474540978056409

/-! ## A182014.P2435194636822276473

`A286513(A167499(n+4)+2)`
-/

namespace A182014.P2435194636822276473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A167499 (n + 4) + 2).toNat

end

end A182014.P2435194636822276473

/-! ## A182014.P10630775276585736972

`A286513(A000096(n+4)+8)`
-/

namespace A182014.P10630775276585736972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A000096 (n + 4) + 8).toNat

end

end A182014.P10630775276585736972

/-! ## A182014.P315944298186386781

`A286513(Δ[A023545(n+1)]+11)`
-/

namespace A182014.P315944298186386781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (f1 (n + 1) - f1 n + 11).toNat

end

end A182014.P315944298186386781

/-!
# A182015: Diagonal sums of triangle A182013.

The programs for A182015, there is no canonical definition to state claims against.
-/

/-! ## A182015.P16185853053371519586

`A210357(∑[record[A303727(n+1)]])`
-/

namespace A182015.P16185853053371519586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182015.P16185853053371519586

/-! ## A182015.P8173498745382265300

`A302555(A302545(n))+A191828(n)`
-/

namespace A182015.P8173498745382265300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302555 (A302545 n).toNat + A191828 n

end

end A182015.P8173498745382265300

/-! ## A182015.P8574116164478255540

`A191828(n)+A081603(A331395(n+1))`
-/

namespace A182015.P8574116164478255540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191828 n + A081603 (A331395 (n + 1)).toNat

end

end A182015.P8574116164478255540

/-!
# A182016: Central coefficients of triangle A182013.

The programs for A182016, there is no canonical definition to state claims against.
-/

/-! ## A182016.P2536863557640718185

`record[Δ[A097332(n/gcd(2, n))]]`
-/

namespace A182016.P2536863557640718185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182016.P2536863557640718185

/-! ## A182016.P16015175521953984189

`record[Δ[A097332(A026741(n))]]`
-/

namespace A182016.P16015175521953984189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182016.P16015175521953984189

/-! ## A182016.P18123961053124306571

`A097332(Δ[n²])-A097332(n)`
-/

namespace A182016.P18123961053124306571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A097332 n

end

end A182016.P18123961053124306571

/-! ## A182016.P3378640003343323747

`record[Δ[A097332(n/A000034(n+1))]]`
-/

namespace A182016.P3378640003343323747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182016.P3378640003343323747

/-! ## A182016.P9617233922661434344

`abs(A097332(2*n+1)-A097332(n))`
-/

namespace A182016.P9617233922661434344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097332 (2 * n + 1) - A097332 n|

end

end A182016.P9617233922661434344

/-!
# A182018: Row square-sums of triangle A210658.

The programs for A182018, there is no canonical definition to state claims against.
-/

/-! ## A182018.P5946877113123281712

`∑[A000108(n)*∑[A028270(n)]]`
-/

namespace A182018.P5946877113123281712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182018.P5946877113123281712

/-!
# A182019: Number of independent sets of nodes in graph C_8 x P_n (n>=0).

The programs for A182019, there is no canonical definition to state claims against.
-/

/-! ## A182019.P18160495713360757574

`A286513(C(n+7, 2)+8)`
-/

namespace A182019.P18160495713360757574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (Nat.choose (n + 7) 2 + 8)

end

end A182019.P18160495713360757574

/-! ## A182019.P4207389217375403667

`A286513(A155212(n+2)+16)`
-/

namespace A182019.P4207389217375403667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A155212 (n + 2) + 16).toNat

end

end A182019.P4207389217375403667

/-!
# A182020: Numbers that are squares and have a majority of one digit.

The programs for A182020, there is no canonical definition to state claims against.
-/

/-! ## A182020.P8311595765699327490

`A060811(n+1)²`
-/

namespace A182020.P8311595765699327490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060811 (n + 1) ^ 2

end

end A182020.P8311595765699327490

/-! ## A182020.P6134392431413599483

`A060811(n+1)^A007918(Δ[or(1, n)])`
-/

namespace A182020.P6134392431413599483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060811 (n + 1) : ℚ) ^ (A007918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A182020.P6134392431413599483

/-! ## A182020.P13191291942500519221

`A060811(n+1)^A006530(A001316(n))`
-/

namespace A182020.P13191291942500519221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060811 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A182020.P13191291942500519221

/-! ## A182020.P3974178685103680281

`A060811(n+1)^A001222(A001358(n+1))`
-/

namespace A182020.P3974178685103680281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060811 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A182020.P3974178685103680281

/-! ## A182020.P11133159529254917671

`A060811(n+1)%A057683(n+1)*A060811(n+1)`
-/

namespace A182020.P11133159529254917671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060811 (n + 1)) (A057683 (n + 1)) * A060811 (n + 1)

end

end A182020.P11133159529254917671

/-! ## A182020.P967510684992610987

`A002620(2*A060811(n+1))`
-/

namespace A182020.P967510684992610987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A060811 (n + 1)).toNat

end

end A182020.P967510684992610987

/-! ## A182020.P7941171904358639173

`A008794(2*A060811(n+1))`
-/

namespace A182020.P7941171904358639173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A060811 (n + 1)).toNat

end

end A182020.P7941171904358639173

/-! ## A182020.P11358277178911299754

`A008794(A060811(n+1)+A060811(n+1)+1)`
-/

namespace A182020.P11358277178911299754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A060811 (n + 1) + (A060811 (n + 1) + 1)).toNat

end

end A182020.P11358277178911299754

/-! ## A182020.P1652091376469310335

`A060811(n+1)^A000005(A060845(n+1))`
-/

namespace A182020.P1652091376469310335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060811 (n + 1) : ℚ) ^ (A000005 (A060845 (n + 1)).toNat : ℤ)

end

end A182020.P1652091376469310335

/-! ## A182020.P10735743622743217398

`A060811(n+1)^A000005(A060844(n+1))`
-/

namespace A182020.P10735743622743217398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060811 (n + 1) : ℚ) ^ (A000005 (A060844 (n + 1)).toNat : ℤ)

end

end A182020.P10735743622743217398

/-!
# A182021: Achromatic number of n-cycle.

The programs for A182021, there is no canonical definition to state claims against.
-/

/-! ## A182021.P16152557219624818462

`A003056(A002260(A221216(n+3))+n+3)`
-/

namespace A182021.P16152557219624818462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002260 (A221216 (n + 3)).toNat + (n + 3 : ℤ)).toNat

end

end A182021.P16152557219624818462

/-!
# A182024: Size of the set CBFS_2(n) of cross-bifix-free binary words of length n.

The programs for A182024, there is no canonical definition to state claims against.
-/

/-! ## A182024.P8482782053252861254

`A257639(4*A148130(n))`
-/

namespace A182024.P8482782053252861254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (4 * A148130 n).toNat

end

end A182024.P8482782053252861254

/-! ## A182024.P17851084550009457660

`A003056(A148038(n)+A148036(n))`
-/

namespace A182024.P17851084550009457660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148038 n + A148036 n).toNat

end

end A182024.P17851084550009457660

/-! ## A182024.P16724117204556837550

`A003056(A148041(n)+A148032(n))`
-/

namespace A182024.P16724117204556837550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148041 n + A148032 n).toNat

end

end A182024.P16724117204556837550

/-! ## A182024.P9981362199277716655

`A257639(A024998(n+1)+A005558(n))`
-/

namespace A182024.P9981362199277716655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A024998 (n + 1) + A005558 n).toNat

end

end A182024.P9981362199277716655

/-! ## A182024.P13035892638660081746

`A235963(A302545(n)+A103420(n+1))`
-/

namespace A182024.P13035892638660081746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A302545 n + A103420 (n + 1)).toNat

end

end A182024.P13035892638660081746

/-!
# A182025: a(n) = 31*binomial(2*n,n-4) + Sum_{i=1..n-4} binomial(2*n,n-4-i)*(4+i).

The programs for A182025, there is no canonical definition to state claims against.
-/

/-! ## A182025.P1487931536167943739

`A327357(n²-n)-1`
-/

namespace A182025.P1487931536167943739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327357 (n ^ 2 - n) - 1

end

end A182025.P1487931536167943739

/-! ## A182025.P15269497010434430003

`A317902(A087299(n))`
-/

namespace A182025.P15269497010434430003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317902 (A087299 n).toNat

end

end A182025.P15269497010434430003

/-!
# A182026: a(n) = 288*binomial(2*n,n-5) + 8*Sum_{i=1..n-5} binomial(2*n,n-5-i)*(5+i).

The programs for A182026, there is no canonical definition to state claims against.
-/

/-! ## A182026.P13834227047458353739

`6*A048735(A173214(n+1))`
-/

namespace A182026.P13834227047458353739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A048735 (A173214 (n + 1)).toNat

end

end A182026.P13834227047458353739

/-! ## A182026.P9975497078686046502

`∑[A349135(A098914(n+3)+5)]`
-/

namespace A182026.P9975497078686046502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (A098914 (n + 3) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182026.P9975497078686046502

/-! ## A182026.P3315494496266668636

`A353753(A008458(n)+A005452(n))`
-/

namespace A182026.P3315494496266668636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (A008458 n + A005452 n).toNat

end

end A182026.P3315494496266668636

/-!
# A182027: a(n) = number of n-lettered words in the alphabet {1, 2} with as many occurrences of the substring (consecutive subword) [1, 1] as of [2, 2].

The programs for A182027, the canonical program `A182027.P10994937141545794767` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182027 has offset 0).

The definition of A182027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182027.P10994937141545794767

`(2*a(n-1)+4*(n-3)*a(n-2))/(n-1)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182027

/-- `(2*a(n-1)+4*(n-3)*a(n-2))/(n-1)` -/
def P10994937141545794767.Spec : Prop :=
  ∀ n, P10994937141545794767.a n = (A182027 n : ℚ)

end A182027

/-! ## A182027.P17878816459448223017

`A063886(C(2, n)+n-1)`
-/

namespace A182027.P17878816459448223017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 ((Nat.choose 2 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A182027.P17878816459448223017

namespace A182027

/-- `A063886(C(2, n)+n-1)` -/
def P17878816459448223017.Spec : Prop :=
  ∀ n, P17878816459448223017.a n = A182027 n

end A182027

/-! ## A182027.P18423949739901523059

`A063886(round(n²/(n+1)))`
-/

namespace A182027.P18423949739901523059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (n + 1 : ℚ))).toNat

end

end A182027.P18423949739901523059

namespace A182027

/-- `A063886(round(n²/(n+1)))` -/
def P18423949739901523059.Spec : Prop :=
  ∀ n, P18423949739901523059.a n = A182027 n

end A182027

/-! ## A182027.P1208192883200087779

`(2-C(2, n+2))*A001405((3*n)%(n+1))`
-/

namespace A182027.P1208192883200087779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n + 2) : ℤ)) * A001405 (3 * n % (n + 1))

end

end A182027.P1208192883200087779

namespace A182027

/-- `(2-C(2, n+2))*A001405((3*n)%(n+1))` -/
def P1208192883200087779.Spec : Prop :=
  ∀ n, P1208192883200087779.a n = A182027 n

end A182027

/-! ## A182027.P787766613699151637

`A047073(n)/gcd(2, A056040(n))`
-/

namespace A182027.P787766613699151637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047073 n : ℚ) / (Int.gcd 2 (A056040 n) : ℚ)

end

end A182027.P787766613699151637

namespace A182027

/-- `A047073(n)/gcd(2, A056040(n))` -/
def P787766613699151637.Spec : Prop :=
  ∀ n, P787766613699151637.a n = (A182027 n : ℚ)

end A182027

/-! ## A182027.P4890299189307500953

`A172068(A004652(n))`
-/

namespace A182027.P4890299189307500953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (A004652 n).toNat

end

end A182027.P4890299189307500953

namespace A182027

/-- `A172068(A004652(n))` -/
def P4890299189307500953.Spec : Prop :=
  ∀ n, P4890299189307500953.a n = A182027 n

end A182027

/-! ## A182027.P11761378144284012069

`A172068(A008811(n))`
-/

namespace A182027.P11761378144284012069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (A008811 n).toNat

end

end A182027.P11761378144284012069

namespace A182027

/-- `A172068(A008811(n))` -/
def P11761378144284012069.Spec : Prop :=
  ∀ n, P11761378144284012069.a n = A182027 n

end A182027

/-! ## A182027.P16438182980767487390

`A172068(A181385(n))`
-/

namespace A182027.P16438182980767487390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (A181385 n).toNat

end

end A182027.P16438182980767487390

namespace A182027

/-- `A172068(A181385(n))` -/
def P16438182980767487390.Spec : Prop :=
  ∀ n, P16438182980767487390.a n = A182027 n

end A182027

/-!
# A182028: Take first n bits of the infinite Fibonacci word A003849, regard them as a binary number, then convert it to base 10.

The programs for A182028, the canonical program `A182028.P14679133625633371517` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182028 has offset 0).

The definition of A182028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182028.P14679133625633371517

`2*a(n-1)+A003849(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182028

/-- `2*a(n-1)+A003849(n)` -/
def P14679133625633371517.Spec : Prop :=
  ∀ n, P14679133625633371517.a n = A182028 n

theorem P14679133625633371517.correct : P14679133625633371517.Spec := by
  intro n
  simp only [A182028]

end A182028

/-! ## A182028.P13620254318926668081

`A214319(n)-A003849(n+1)`
-/

namespace A182028.P13620254318926668081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214319 n - A003849 (n + 1)

end

end A182028.P13620254318926668081

namespace A182028

/-- `A214319(n)-A003849(n+1)` -/
def P13620254318926668081.Spec : Prop :=
  ∀ n, P13620254318926668081.a n = A182028 n

theorem P13620254318926668081.correct : P13620254318926668081.Spec := by
  intro n
  simp only [A182028, Nat.add_sub_cancel, A182028.P13620254318926668081.a, A182028.P14679133625633371517.a, A003849, A003849.P15070805603138295355.a, A214319, A214319.P793865802162299093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182028

/-! ## A182028.P2656380101972802347

`floor(A214319(n+1)/2)`
-/

namespace A182028.P2656380101972802347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214319 (n + 1) : ℚ) / 2⌋

end

end A182028.P2656380101972802347

namespace A182028

/-- `floor(A214319(n+1)/2)` -/
def P2656380101972802347.Spec : Prop :=
  ∀ n, P2656380101972802347.a n = A182028 n

end A182028

/-! ## A182028.P16753388252918030287

`A126646(n)-A044432(n)`
-/

namespace A182028.P16753388252918030287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A044432 n

end

end A182028.P16753388252918030287

namespace A182028

/-- `A126646(n)-A044432(n)` -/
def P16753388252918030287.Spec : Prop :=
  ∀ n, P16753388252918030287.a n = A182028 n

end A182028

/-! ## A182028.P2312698436903417126

`∑[A000079(n)]-A044432(n)`
-/

namespace A182028.P2312698436903417126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A044432 n

end

end A182028.P2312698436903417126

namespace A182028

/-- `∑[A000079(n)]-A044432(n)` -/
def P2312698436903417126.Spec : Prop :=
  ∀ n, P2312698436903417126.a n = A182028 n

end A182028

/-! ## A182028.P12895919472498379907

`A000225(n+1)-A044432(n)`
-/

namespace A182028.P12895919472498379907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A044432 n

end

end A182028.P12895919472498379907

namespace A182028

/-- `A000225(n+1)-A044432(n)` -/
def P12895919472498379907.Spec : Prop :=
  ∀ n, P12895919472498379907.a n = A182028 n

end A182028

/-! ## A182028.P16983538132332942891

`A048578(n)-(A044432(n)+2)`
-/

namespace A182028.P16983538132332942891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A044432 n + 2)

end

end A182028.P16983538132332942891

namespace A182028

/-- `A048578(n)-(A044432(n)+2)` -/
def P16983538132332942891.Spec : Prop :=
  ∀ n, P16983538132332942891.a n = A182028 n

end A182028

/-! ## A182028.P1174527891187975620

`A316742(2*n)-A044432(n)`
-/

namespace A182028.P1174527891187975620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (2 * n) - A044432 n

end

end A182028.P1174527891187975620

namespace A182028

/-- `A316742(2*n)-A044432(n)` -/
def P1174527891187975620.Spec : Prop :=
  ∀ n, P1174527891187975620.a n = A182028 n

end A182028

/-! ## A182028.P18216988128031067849

`∑[A016116(2*n)]-A044432(n)`
-/

namespace A182028.P18216988128031067849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A044432 n

end

end A182028.P18216988128031067849

namespace A182028

/-- `∑[A016116(2*n)]-A044432(n)` -/
def P18216988128031067849.Spec : Prop :=
  ∀ n, P18216988128031067849.a n = A182028 n

end A182028

/-! ## A182028.P5381377805268359116

`A000079(n)-(A044432(n)-A000225(n))`
-/

namespace A182028.P5381377805268359116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A044432 n - A000225 n)

end

end A182028.P5381377805268359116

namespace A182028

/-- `A000079(n)-(A044432(n)-A000225(n))` -/
def P5381377805268359116.Spec : Prop :=
  ∀ n, P5381377805268359116.a n = A182028 n

end A182028

/-! ## A182028.P11718730238332521457

`A214318(n+1)-∑[2^n]`
-/

namespace A182028.P11718730238332521457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214318 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A182028.P11718730238332521457

namespace A182028

/-- `A214318(n+1)-∑[2^n]` -/
def P11718730238332521457.Spec : Prop :=
  ∀ n, P11718730238332521457.a n = A182028 n

end A182028

/-! ## A182028.P15416773950383800320

`A214318(n+1)%A126646(n)`
-/

namespace A182028.P15416773950383800320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214318 (n + 1)) (A126646 n)

end

end A182028.P15416773950383800320

namespace A182028

/-- `A214318(n+1)%A126646(n)` -/
def P15416773950383800320.Spec : Prop :=
  ∀ n, P15416773950383800320.a n = A182028 n

end A182028

/-!
# A182029: Least odd k > a(n-1) such that 3*k*2^n-1 is a prime number.

The programs for A182029, there is no canonical definition to state claims against.
-/

/-! ## A182029.P1601416026245917277

`∑[A001223(A017995(2*n))]`
-/

namespace A182029.P1601416026245917277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A017995 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182029.P1601416026245917277

/-! ## A182029.P17210585292140767580

`∑[gcd(A001043(n+1), A025052(2*n+1))]`
-/

namespace A182029.P17210585292140767580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001043 (n + 1)) (A025052 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182029.P17210585292140767580

/-! ## A182029.P7387768690921746041

`∑[A144925(A014603(2*n+1)+A008588(n))]`
-/

namespace A182029.P7387768690921746041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144925 (A014603 (2 * n + 1) + A008588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182029.P7387768690921746041

/-! ## A182029.P3755164004603012814

`eq[A112046(A112027(n+1)), A112049(2*(n+1))]`
-/

namespace A182029.P3755164004603012814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A112027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182029.P3755164004603012814

/-!
# A182030: Least odd number k such that 3*k*2^n-1 and 3*k*2^n+1 are twin primes.

The programs for A182030, there is no canonical definition to state claims against.
-/

/-! ## A182030.P9400118906904312044

`A076806(n+1)/A020639(A076806(n+1))`
-/

namespace A182030.P9400118906904312044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076806 (n + 1) : ℚ) / (A020639 (A076806 (n + 1)).toNat : ℚ)

end

end A182030.P9400118906904312044

/-! ## A182030.P1478087323031562834

`A004273(A285933(n+1))`
-/

namespace A182030.P1478087323031562834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285933 (n + 1)).toNat

end

end A182030.P1478087323031562834

/-! ## A182030.P10376850660956932300

`A005408(A285933(n+1)-1)`
-/

namespace A182030.P10376850660956932300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285933 (n + 1) - 1).toNat

end

end A182030.P10376850660956932300

/-! ## A182030.P3828978677648226941

`A005843(A285933(n+1)-1)+1`
-/

namespace A182030.P3828978677648226941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285933 (n + 1) - 1).toNat + 1

end

end A182030.P3828978677648226941

/-! ## A182030.P16387434834001972758

`or(A057427(n), A163985(A285933(n+1)))`
-/

namespace A182030.P16387434834001972758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A163985 (A285933 (n + 1)).toNat)

end

end A182030.P16387434834001972758

/-! ## A182030.P5847480628649820914

`A014681(2*A285933(n+1))`
-/

namespace A182030.P5847480628649820914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A285933 (n + 1)).toNat

end

end A182030.P5847480628649820914

/-! ## A182030.P5713607964046232880

`A006083(A076806(n+1))`
-/

namespace A182030.P5713607964046232880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A076806 (n + 1)).toNat

end

end A182030.P5713607964046232880

/-!
# A182031: Expansion of q^(-5/24) * (eta(q^3) * eta(q^6))^3 / (eta(q) * eta(q^2))^4 in powers of q.

The programs for A182031, there is no canonical definition to state claims against.
-/

/-! ## A182031.P6771395492295709077

`A002513(3*n+2)/3`
-/

namespace A182031.P6771395492295709077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002513 (3 * n + 2) : ℚ) / 3

end

end A182031.P6771395492295709077

/-! ## A182031.P11180025384621489267

`A289437(A002513(3*n+2))`
-/

namespace A182031.P11180025384621489267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A002513 (3 * n + 2)).toNat

end

end A182031.P11180025384621489267

/-! ## A182031.P15802258015861888837

`A008611(A002513(3*n+2)+1)`
-/

namespace A182031.P15802258015861888837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A002513 (3 * n + 2) + 1).toNat

end

end A182031.P15802258015861888837

/-! ## A182031.P3902385900189682562

`A063942(A002513(3*n+2)+1)`
-/

namespace A182031.P3902385900189682562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A002513 (3 * n + 2) + 1).toNat

end

end A182031.P3902385900189682562

/-!
# A182032: Expansion of eta(q^2)^3 * eta(q^9) * eta(q^12)^4 / (eta(q) * eta(q^4)^2 * eta(q^6)^2 * eta(q^18) * eta(q^36)^2) in powers of q.

The programs for A182032, there is no canonical definition to state claims against.
-/

/-! ## A182032.P8603414770987044228

`A188510(A063416(n+1))^A173722(n)`
-/

namespace A182032.P8603414770987044228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188510 (A063416 (n + 1)).toNat : ℚ) ^ (A173722 n : ℤ)

end

end A182032.P8603414770987044228

/-! ## A182032.P17284602759799973997

`A285431(n+1)-A284775(A278974(n+1))`
-/

namespace A182032.P17284602759799973997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285431 (n + 1) - A284775 (A278974 (n + 1)).toNat

end

end A182032.P17284602759799973997

/-! ## A182032.P16052690341151469515

`A010815(A270929(2*n+5)%A002174(n+1))`
-/

namespace A182032.P16052690341151469515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (A270929 (2 * n + 5)) (A002174 (n + 1))).toNat

end

end A182032.P16052690341151469515

/-! ## A182032.P13074188288209613254

`A152614(p?[A115262(n)-(n+1)])`
-/

namespace A182032.P13074188288209613254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152614 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A182032.P13074188288209613254

/-! ## A182032.P7793473390362700516

`A010891(and(A016296(n), A173010(n+1)))`
-/

namespace A182032.P7793473390362700516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (Int.land (A016296 n) (A173010 (n + 1))).toNat

end

end A182032.P7793473390362700516

/-!
# A182033: Expansion of c(q^2)^2 / (c(q) * c(q^6)) in powers of q where c() is a cubic AGM theta function.

The programs for A182033, there is no canonical definition to state claims against.
-/

/-! ## A182033.P11519032026983881920

`(-1)^val(n+1, 2)*A190483(A264003(n+1))`
-/

namespace A182033.P11519032026983881920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2 * A190483 (A264003 (n + 1)).toNat

end

end A182033.P11519032026983881920

/-!
# A182034: Expansion of c(q^2)^2 / (c(q) * c(q^3)) in powers of q where c() is a cubic AGM theta function.

The programs for A182034, there is no canonical definition to state claims against.
-/

/-! ## A182034.P9393718336619004556

`(-1)^n*A164615(n)`
-/

namespace A182034.P9393718336619004556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164615 n

end

end A182034.P9393718336619004556

/-! ## A182034.P5346765061389181764

`A164615(n)*A281727(n)`
-/

namespace A182034.P5346765061389181764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 n * A281727 n

end

end A182034.P5346765061389181764

/-! ## A182034.P11354372533589721805

`A164615(n)/A033999(n)`
-/

namespace A182034.P11354372533589721805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164615 n : ℚ) / (A033999 n : ℚ)

end

end A182034.P11354372533589721805

/-! ## A182034.P2370600070432019818

`A182035(2*n)`
-/

namespace A182034.P2370600070432019818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182035 (2 * n)

end

end A182034.P2370600070432019818

/-! ## A182034.P15718773666953953871

`A164614(n)*A164615(n)/A216046(n)`
-/

namespace A182034.P15718773666953953871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164614 n * A164615 n : ℚ) / (A216046 n : ℚ)

end

end A182034.P15718773666953953871

/-! ## A182034.P8974785413462944552

`A128144(2*n)+A128144(4*n)-A000007(n)`
-/

namespace A182034.P8974785413462944552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 (2 * n) + (A128144 (4 * n) - A000007 n)

end

end A182034.P8974785413462944552

/-! ## A182034.P1437715927620433680

`A128144(4*n)-(A000007(3*n)-A128144(2*n))`
-/

namespace A182034.P1437715927620433680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 (4 * n) - (A000007 (3 * n) - A128144 (2 * n))

end

end A182034.P1437715927620433680

/-!
# A182035: Expansion of chi(-q) * chi(-q^2) * chi(-q^6) * psi(q^6)^2 / (psi(q^9) * phi(-q^9)) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A182035, there is no canonical definition to state claims against.
-/

/-! ## A182035.P16350089598883470222

`A182034(A000217(n)/A076934(n+1))`
-/

namespace A182035.P16350089598883470222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 (SequenceMachineLib.roundAway ((A000217 n : ℚ) / (A076934 (n + 1) : ℚ))).toNat

end

end A182035.P16350089598883470222

/-!
# A182037: Expansion of 1 - (1 - 2*x - x^2)^(1/2).

The programs for A182037, there is no canonical definition to state claims against.
-/

/-! ## A182037.P1973519506460430885

`A052727(n)/A011782(n)`
-/

namespace A182037.P1973519506460430885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052727 n : ℚ) / (A011782 n : ℚ)

end

end A182037.P1973519506460430885

/-! ## A182037.P9469376912074305469

`A052727(n)/∑[A034008(n)]`
-/

namespace A182037.P9469376912074305469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052727 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A182037.P9469376912074305469

/-! ## A182037.P13508428876247919152

`A052727(n)/Δ[A094373(n)]`
-/

namespace A182037.P13508428876247919152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052727 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A182037.P13508428876247919152

/-! ## A182037.P3655561260174419879

`A052727(n)/Δ[A131577(n)]`
-/

namespace A182037.P3655561260174419879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052727 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A182037.P3655561260174419879

/-! ## A182037.P7354158433765286882

`A052727(n)/(A094373(n)-A054977(n))`
-/

namespace A182037.P7354158433765286882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052727 n : ℚ) / (A094373 n - A054977 n : ℚ)

end

end A182037.P7354158433765286882

/-!
# A182038: Expansion of eta(q) * eta(q^36) / (eta(q^4) * eta(q^9)) in powers of q.

The programs for A182038, there is no canonical definition to state claims against.
-/

/-! ## A182038.P15187342429706798011

`A033999(n)*A128143(n+1)`
-/

namespace A182038.P15187342429706798011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128143 (n + 1)

end

end A182038.P15187342429706798011

/-! ## A182038.P6216345079873220276

`A128143(n+1)/A260215(n)*A261156(n)`
-/

namespace A182038.P6216345079873220276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128143 (n + 1) : ℚ) / (A260215 n : ℚ) * (A261156 n : ℚ)

end

end A182038.P6216345079873220276

/-! ## A182038.P2082264014879904284

`A213266(n+1)`
-/

namespace A182038.P2082264014879904284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213266 (n + 1)

end

end A182038.P2082264014879904284

/-! ## A182038.P35893857816168058

`1-Δ[n-∑[A213266(n)]]`
-/

namespace A182038.P35893857816168058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A182038.P35893857816168058

/-! ## A182038.P9384397816285914582

`A128145(n+1)/(-1)^n`
-/

namespace A182038.P9384397816285914582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128145 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A182038.P9384397816285914582

/-! ## A182038.P10773854018269179634

`(n-xor(1, n))*A128144(n+1)`
-/

namespace A182038.P10773854018269179634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.xor 1 n : ℤ)) * A128144 (n + 1)

end

end A182038.P10773854018269179634

/-! ## A182038.P14372827709702329144

`A033999(n+1)*A128144(n+1)`
-/

namespace A182038.P14372827709702329144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A128144 (n + 1)

end

end A182038.P14372827709702329144

/-! ## A182038.P11004672283223237096

`A128145(n+1)*A165326(n+1)`
-/

namespace A182038.P11004672283223237096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (n + 1) * A165326 (n + 1)

end

end A182038.P11004672283223237096

/-! ## A182038.P3661822313780301285

`A128144(Δ[or(1, n+1)])*A128144(n+1)`
-/

namespace A182038.P3661822313780301285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A128144 (n + 1)

end

end A182038.P3661822313780301285

/-! ## A182038.P1636641933648831398

`A128145(n+1)*A128145(A020639(n+2))`
-/

namespace A182038.P1636641933648831398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (n + 1) * A128145 (A020639 (n + 2)).toNat

end

end A182038.P1636641933648831398

/-! ## A182038.P10486552754986175129

`(A000035(n+1)-A000035(n))*A128143(n+1)`
-/

namespace A182038.P10486552754986175129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A128143 (n + 1)

end

end A182038.P10486552754986175129

/-! ## A182038.P6214742787830884249

`∏{e}[A302781(n+1), A128144(#)]*A128144(n+1)`
-/

namespace A182038.P6214742787830884249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A128144 (Nat.factorization (f1 n).natAbs p)) * A128144 (n + 1)

end

end A182038.P6214742787830884249

/-!
# A182039: Order of the group O(2,Z_n); number of orthogonal 2 X 2 matrices over the ring Z/nZ.

The programs for A182039, the canonical program `A182039.P2589778364492655354` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182039 has offset 1).

The definition of A182039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182039.P2589778364492655354

`A060968(n+1)*A060594(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182039

/-- `A060968(n+1)*A060594(n+1)` -/
def P2589778364492655354.Spec : Prop :=
  ∀ n, P2589778364492655354.a n = A182039 (n + 1)

theorem P2589778364492655354.correct : P2589778364492655354.Spec := by
  intro n
  simp only [A182039, Nat.add_sub_cancel]

end A182039

/-! ## A182039.P14138489856065921788

`(A155828(n+1)+1)*A060968(n+1)`
-/

namespace A182039.P14138489856065921788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155828 (n + 1) + 1) * A060968 (n + 1)

end

end A182039.P14138489856065921788

namespace A182039

/-- `(A155828(n+1)+1)*A060968(n+1)` -/
def P14138489856065921788.Spec : Prop :=
  ∀ n, P14138489856065921788.a n = A182039 (n + 1)

theorem P14138489856065921788.correct : P14138489856065921788.Spec := by
  intro n
  simp only [A182039, Nat.add_sub_cancel, A182039.P14138489856065921788.a, A182039.P2589778364492655354.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A060968, A060968.P17331185296749833849.a, A155828, A155828.P14308889291480101554.a, A114643, A114643.P3385208476335884825.a, A177704, A177704.P8770811667183017524.a, A395768, A395768.P1059238046107922784.f1, A395768.P1059238046107922784.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A063659, A063659.P17976112420004081821.a, A374367, A374367.P13622303938266122145.a, A056594, A056594.P16236062631889685808.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, A085384, A085384.P2467046585933130820.f1, A085384.P2467046585933130820.a, A347586, A347586.P6878572311121842152.f1, A347586.P6878572311121842152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182039

/-! ## A182039.P6855119333882427072

`2^(A046072(n+1)-C(n, n²))*A060968(n+1)`
-/

namespace A182039.P6855119333882427072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046072 (n + 1) - (Nat.choose n (n ^ 2) : ℤ) : ℤ) * (A060968 (n + 1) : ℚ)

end

end A182039.P6855119333882427072

namespace A182039

/-- `2^(A046072(n+1)-C(n, n²))*A060968(n+1)` -/
def P6855119333882427072.Spec : Prop :=
  ∀ n, P6855119333882427072.a n = (A182039 (n + 1) : ℚ)

end A182039

/-! ## A182039.P6482699746267249889

`A003958(A087688(n+1))*A060968(n+1)`
-/

namespace A182039.P6482699746267249889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A087688 (n + 1)).toNat * A060968 (n + 1)

end

end A182039.P6482699746267249889

namespace A182039

/-- `A003958(A087688(n+1))*A060968(n+1)` -/
def P6482699746267249889.Spec : Prop :=
  ∀ n, P6482699746267249889.a n = A182039 (n + 1)

end A182039

/-! ## A182039.P15645549235723088595

`A001316(A155828(n+1))*A060968(n+1)`
-/

namespace A182039.P15645549235723088595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A155828 (n + 1)).toNat * A060968 (n + 1)

end

end A182039.P15645549235723088595

namespace A182039

/-- `A001316(A155828(n+1))*A060968(n+1)` -/
def P15645549235723088595.Spec : Prop :=
  ∀ n, P15645549235723088595.a n = A182039 (n + 1)

end A182039

/-! ## A182039.P1492203555744348014

`A004277(A157230(n+1))*A060968(n+1)`
-/

namespace A182039.P1492203555744348014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A157230 (n + 1)).toNat * A060968 (n + 1)

end

end A182039.P1492203555744348014

namespace A182039

/-- `A004277(A157230(n+1))*A060968(n+1)` -/
def P1492203555744348014.Spec : Prop :=
  ∀ n, P1492203555744348014.a n = A182039 (n + 1)

end A182039

/-! ## A182039.P5575470665233197385

`A000010(n+1)/A046073(n+1)*A060968(n+1)`
-/

namespace A182039.P5575470665233197385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A046073 (n + 1) : ℚ) * (A060968 (n + 1) : ℚ)

end

end A182039.P5575470665233197385

namespace A182039

/-- `A000010(n+1)/A046073(n+1)*A060968(n+1)` -/
def P5575470665233197385.Spec : Prop :=
  ∀ n, P5575470665233197385.a n = (A182039 (n + 1) : ℚ)

end A182039

/-! ## A182039.P13281463807734973295

`A000056(n+1)*A060968(n+1)/A300915(n+1)`
-/

namespace A182039.P13281463807734973295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) * A060968 (n + 1) : ℚ) / (A300915 (n + 1) : ℚ)

end

end A182039.P13281463807734973295

namespace A182039

/-- `A000056(n+1)*A060968(n+1)/A300915(n+1)` -/
def P13281463807734973295.Spec : Prop :=
  ∀ n, P13281463807734973295.a n = (A182039 (n + 1) : ℚ)

end A182039

/-! ## A182039.P12131485693602089400

`A060594(n+1)*A305191(A133263(n))`
-/

namespace A182039.P12131485693602089400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) * A305191 (A133263 n).toNat

end

end A182039.P12131485693602089400

namespace A182039

/-- `A060594(n+1)*A305191(A133263(n))` -/
def P12131485693602089400.Spec : Prop :=
  ∀ n, P12131485693602089400.a n = A182039 (n + 1)

end A182039

/-!
# A182042: Triangle T(n,k), read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (3, 0, -3/2, 3/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A182042, the canonical program `A182042.P8039975807503843964` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182042 has offset 0).

The definition of A182042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182042.P8039975807503843964

`A013610(n)-A073424(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A182042

/-- `A013610(n)-A073424(n)` -/
def P8039975807503843964.Spec : Prop :=
  ∀ n, P8039975807503843964.a n = A182042 n

theorem P8039975807503843964.correct : P8039975807503843964.Spec := by
  intro n
  simp only [A182042]

end A182042

/-! ## A182042.P14788937027159812698

`A013610(n)*A123110(n)`
-/

namespace A182042.P14788937027159812698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A123110 n

end

end A182042.P14788937027159812698

namespace A182042

/-- `A013610(n)*A123110(n)` -/
def P14788937027159812698.Spec : Prop :=
  ∀ n, P14788937027159812698.a n = A182042 n

end A182042

/-! ## A182042.P5976223240171285257

`lcm(A013610(n), A206735(n))`
-/

namespace A182042.P5976223240171285257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A206735 n)

end

end A182042.P5976223240171285257

namespace A182042

/-- `lcm(A013610(n), A206735(n))` -/
def P5976223240171285257.Spec : Prop :=
  ∀ n, (P5976223240171285257.a n : ℤ) = A182042 n

end A182042

/-! ## A182042.P17700370804460906733

`A013610(n)-char[A034856(n+1)-n]`
-/

namespace A182042.P17700370804460906733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A182042.P17700370804460906733

namespace A182042

/-- `A013610(n)-char[A034856(n+1)-n]` -/
def P17700370804460906733.Spec : Prop :=
  ∀ n, P17700370804460906733.a n = A182042 n

end A182042

/-! ## A182042.P15527237521181342603

`A013610(n)+A206735(n)-A007318(n)`
-/

namespace A182042.P15527237521181342603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n + (A206735 n - A007318 n)

end

end A182042.P15527237521181342603

namespace A182042

/-- `A013610(n)+A206735(n)-A007318(n)` -/
def P15527237521181342603.Spec : Prop :=
  ∀ n, P15527237521181342603.a n = A182042 n

end A182042

/-! ## A182042.P15188350727446970720

`A010054((n+1)*A010054(n))*A013610(n)`
-/

namespace A182042.P15188350727446970720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n + 1 : ℤ) * A010054 n).toNat * A013610 n

end

end A182042.P15188350727446970720

namespace A182042

/-- `A010054((n+1)*A010054(n))*A013610(n)` -/
def P15188350727446970720.Spec : Prop :=
  ∀ n, P15188350727446970720.a n = A182042 n

end A182042

/-! ## A182042.P13141395166838547740

`A013610(n)*A206735(A007318(n)-A206735(n))`
-/

namespace A182042.P13141395166838547740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A206735 (A007318 n - A206735 n).toNat

end

end A182042.P13141395166838547740

namespace A182042

/-- `A013610(n)*A206735(A007318(n)-A206735(n))` -/
def P13141395166838547740.Spec : Prop :=
  ∀ n, P13141395166838547740.a n = A182042 n

end A182042

/-! ## A182042.P8883660445634372564

`A013610(n)*A084938(A013610(n)*A073424(n))`
-/

namespace A182042.P8883660445634372564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A084938 (A013610 n * A073424 n).toNat

end

end A182042.P8883660445634372564

namespace A182042

/-- `A013610(n)*A084938(A013610(n)*A073424(n))` -/
def P8883660445634372564.Spec : Prop :=
  ∀ n, P8883660445634372564.a n = A182042 n

end A182042

/-! ## A182042.P13314833392076983297

`A013610(n)-A206735(A206735(n)/A007318(n))`
-/

namespace A182042.P13314833392076983297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n - A206735 (SequenceMachineLib.roundAway ((A206735 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A182042.P13314833392076983297

namespace A182042

/-- `A013610(n)-A206735(A206735(n)/A007318(n))` -/
def P13314833392076983297.Spec : Prop :=
  ∀ n, P13314833392076983297.a n = A182042 n

end A182042

/-! ## A182042.P12169024284556193537

`A013610(n)%A013610(A003056(n+1)+n+1)`
-/

namespace A182042.P12169024284556193537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013610 n) (A013610 (A003056 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A182042.P12169024284556193537

namespace A182042

/-- `A013610(n)%A013610(A003056(n+1)+n+1)` -/
def P12169024284556193537.Spec : Prop :=
  ∀ n, P12169024284556193537.a n = A182042 n

end A182042

/-! ## A182042.P5164426920948068322

`A000007(n)+A013610(n)%A013610(n)²`
-/

namespace A182042.P5164426920948068322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A013610 n) (A013610 n ^ 2)

end

end A182042.P5164426920948068322

namespace A182042

/-- `A000007(n)+A013610(n)%A013610(n)²` -/
def P5164426920948068322.Spec : Prop :=
  ∀ n, P5164426920948068322.a n = A182042 n

end A182042

/-! ## A182042.P6982995554678602842

`A013610(n)*A084938(n*A073424(n))`
-/

namespace A182042.P6982995554678602842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A084938 ((n : ℤ) * A073424 n).toNat

end

end A182042.P6982995554678602842

namespace A182042

/-- `A013610(n)*A084938(n*A073424(n))` -/
def P6982995554678602842.Spec : Prop :=
  ∀ n, P6982995554678602842.a n = A182042 n

end A182042

/-! ## A182042.P15953575761292732696

`A013610(n)*A114607(n+1)`
-/

namespace A182042.P15953575761292732696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A114607 (n + 1)

end

end A182042.P15953575761292732696

namespace A182042

/-- `A013610(n)*A114607(n+1)` -/
def P15953575761292732696.Spec : Prop :=
  ∀ n, P15953575761292732696.a n = A182042 n

end A182042

/-!
# A182045: Lexicographically earliest sequence: a(n)+a(n+1) is alternatively square and cube, a(1)=1.

The programs for A182045, there is no canonical definition to state claims against.
-/

/-! ## A182045.P6508027935168346002

`A182046(n)-a(n-1)` with `a(0)=1`
-/

namespace A182045.P6508027935168346002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182046 n - a (n - 1)

end

end A182045.P6508027935168346002

/-!
# A182046: Squares and cubes arising in A182045.

The programs for A182046, there is no canonical definition to state claims against.
-/

/-! ## A182046.P14235466342386423965

`A182045(n+2)+A182045(n+1)`
-/

namespace A182046.P14235466342386423965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182045 (n + 2) + A182045 (n + 1)

end

end A182046.P14235466342386423965

/-!
# A182047: Smallest prime > n*(n+1).

The programs for A182047, the canonical program `A182047.P2101095333412928792` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182047 has offset 0).

The definition of A182047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182047.P2101095333412928792

`A151800(A002378(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182047

/-- `A151800(A002378(n))` -/
def P2101095333412928792.Spec : Prop :=
  ∀ n, P2101095333412928792.a n = A182047 n

theorem P2101095333412928792.correct : P2101095333412928792.Spec := by
  intro n
  simp only [A182047]

end A182047

/-! ## A182047.P5482570524564333070

`A289356(n)+∑[2*n]`
-/

namespace A182047.P5482570524564333070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A182047.P5482570524564333070

namespace A182047

/-- `A289356(n)+∑[2*n]` -/
def P5482570524564333070.Spec : Prop :=
  ∀ n, P5482570524564333070.a n = A182047 n

end A182047

/-! ## A182047.P4668233693029959895

`A000040(A220506(2*n+1)+1)`
-/

namespace A182047.P4668233693029959895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A220506 (2 * n + 1) + 1).toNat

end

end A182047.P4668233693029959895

namespace A182047

/-- `A000040(A220506(2*n+1)+1)` -/
def P4668233693029959895.Spec : Prop :=
  ∀ n, P4668233693029959895.a n = A182047 n

end A182047

/-! ## A182047.P8018072223810778652

`A151800(∑[2*n])`
-/

namespace A182047.P8018072223810778652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182047.P8018072223810778652

namespace A182047

/-- `A151800(∑[2*n])` -/
def P8018072223810778652.Spec : Prop :=
  ∀ n, P8018072223810778652.a n = A182047 n

end A182047

/-! ## A182047.P16839443536877538786

`p?[A151800(n²+n)]`
-/

namespace A182047.P16839443536877538786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182047.P16839443536877538786

namespace A182047

/-- `p?[A151800(n²+n)]` -/
def P16839443536877538786.Spec : Prop :=
  ∀ n, P16839443536877538786.a n = A182047 n

end A182047

/-! ## A182047.P98614032462877857

`A001414(A151800(and(n²+n, -2)))`
-/

namespace A182047.P98614032462877857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A151800 (Int.land (n ^ 2 + n : ℤ) (-2)).toNat).toNat

end

end A182047.P98614032462877857

namespace A182047

/-- `A001414(A151800(and(n²+n, -2)))` -/
def P98614032462877857.Spec : Prop :=
  ∀ n, P98614032462877857.a n = A182047 n

end A182047

/-! ## A182047.P8306073594235424942

`A000010(A151800((n+1)²-(n+1)))+1`
-/

namespace A182047.P8306073594235424942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A151800 ((n + 1) ^ 2 - (n + 1))).toNat + 1

end

end A182047.P8306073594235424942

namespace A182047

/-- `A000010(A151800((n+1)²-(n+1)))+1` -/
def P8306073594235424942.Spec : Prop :=
  ∀ n, P8306073594235424942.a n = A182047 n

end A182047

/-! ## A182047.P516606913191619473

`A324053(3*n+1)+A151800(and(n²+n, -2))`
-/

namespace A182047.P516606913191619473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324053 (3 * n + 1) + A151800 (Int.land (n ^ 2 + n : ℤ) (-2)).toNat

end

end A182047.P516606913191619473

namespace A182047

/-- `A324053(3*n+1)+A151800(and(n²+n, -2))` -/
def P516606913191619473.Spec : Prop :=
  ∀ n, P516606913191619473.a n = A182047 n

end A182047

/-! ## A182047.P12665244179413727841

`record[gcd(A057554(n+1), A151800(n))]`
-/

namespace A182047.P12665244179413727841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057554 (n + 1)) (A151800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182047.P12665244179413727841

namespace A182047

/-- `record[gcd(A057554(n+1), A151800(n))]` -/
def P12665244179413727841.Spec : Prop :=
  ∀ n, (P12665244179413727841.a n : ℤ) = A182047 n

end A182047

/-! ## A182047.P17792354647282565990

`A060264(∑[n])`
-/

namespace A182047.P17792354647282565990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182047.P17792354647282565990

namespace A182047

/-- `A060264(∑[n])` -/
def P17792354647282565990.Spec : Prop :=
  ∀ n, P17792354647282565990.a n = A182047 n

end A182047

/-! ## A182047.P8847972101301006098

`A328617(A151800(n*(n+1)))`
-/

namespace A182047.P8847972101301006098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (A151800 (n * (n + 1))).toNat

end

end A182047.P8847972101301006098

namespace A182047

/-- `A328617(A151800(n*(n+1)))` -/
def P8847972101301006098.Spec : Prop :=
  ∀ n, P8847972101301006098.a n = A182047 n

end A182047

/-! ## A182047.P8232730617084223909

`A007918(∑[2*n]+1)`
-/

namespace A182047.P8232730617084223909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A182047.P8232730617084223909

namespace A182047

/-- `A007918(∑[2*n]+1)` -/
def P8232730617084223909.Spec : Prop :=
  ∀ n, P8232730617084223909.a n = A182047 n

end A182047

/-! ## A182047.P8857004233750666593

`A064989(A101300(∑[2*n]))`
-/

namespace A182047.P8857004233750666593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A101300 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A182047.P8857004233750666593

namespace A182047

/-- `A064989(A101300(∑[2*n]))` -/
def P8857004233750666593.Spec : Prop :=
  ∀ n, P8857004233750666593.a n = A182047 n

end A182047

/-! ## A182047.P4534517450913879089

`record[A151800(n)/A109400(n+1)]`
-/

namespace A182047.P4534517450913879089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) / (A109400 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182047.P4534517450913879089

namespace A182047

/-- `record[A151800(n)/A109400(n+1)]` -/
def P4534517450913879089.Spec : Prop :=
  ∀ n, P4534517450913879089.a n = (A182047 n : ℚ)

end A182047

/-!
# A182049: Numbers m such that m! is not pandigital in decimal representation.

The programs for A182049, there is no canonical definition to state claims against.
-/

/-! ## A182049.P7858105114529000065

`eq[0, A137579(n)]`
-/

namespace A182049.P7858105114529000065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182049.P7858105114529000065

/-! ## A182049.P2884238414641997820

`lt[0, A204633(n)]`
-/

namespace A182049.P2884238414641997820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A182049.P2884238414641997820

/-! ## A182049.P10492186619333303097

`lt[A392010(n), 10]`
-/

namespace A182049.P10492186619333303097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392010 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182049.P10492186619333303097

/-! ## A182049.P12525830076237979198

`comp[A178960((val(n+1, 2)+1)*(val(n+1, 3)+1))]`
-/

namespace A182049.P12525830076237979198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178960 ((SequenceMachineLib.valuation (n + 1) 2 + 1) * (SequenceMachineLib.valuation (n + 1) 3 + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182049.P12525830076237979198

/-! ## A182049.P16066169161170385585

`eq[A137578(n), A392010(n)]`
-/

namespace A182049.P16066169161170385585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182049.P16066169161170385585

/-!
# A182050: Number of odd primes between successive numbers of the form n*(n+1)^2/2.

The programs for A182050, there is no canonical definition to state claims against.
-/

/-! ## A182050.P77307162946403739

`Δ[A000720(A181956(n)+1)]`
-/

namespace A182050.P77307162946403739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A181956 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P77307162946403739

/-! ## A182050.P841412243481432986

`Δ[A000720(or(1, A181956(n)))]`
-/

namespace A182050.P841412243481432986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor 1 (A181956 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P841412243481432986

/-! ## A182050.P13363038991511459319

`Δ[A000720(A213819(C(n, 2)+1))]`
-/

namespace A182050.P13363038991511459319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A213819 (Nat.choose n 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P13363038991511459319

/-! ## A182050.P7695676504667127232

`Δ[A000720(A151800((n+1)*∑[n])+1)]`
-/

namespace A182050.P7695676504667127232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P7695676504667127232

/-! ## A182050.P15326142548968144425

`Δ[A000720(A006002(A028310(n)))]`
-/

namespace A182050.P15326142548968144425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006002 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P15326142548968144425

/-! ## A182050.P10681522054922334538

`Δ[A000720(A000203(A181956(n)))]`
-/

namespace A182050.P10681522054922334538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000203 (A181956 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P10681522054922334538

/-! ## A182050.P7967683446588057954

`Δ[A000720(A006002(n)+A000038(n))]`
-/

namespace A182050.P7967683446588057954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006002 n + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182050.P7967683446588057954

/-!
# A182051: Primes with a majority of one digit.

The programs for A182051, there is no canonical definition to state claims against.
-/

/-! ## A182051.P9474211391766593593

`record[A014963(A044959(n+2))]`
-/

namespace A182051.P9474211391766593593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A044959 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182051.P9474211391766593593

/-! ## A182051.P7561949496238899111

`filter[A044959(n+2), A080339(#)]`
-/

namespace A182051.P7561949496238899111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044959 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A182051.P7561949496238899111

/-! ## A182051.P2365847624156931882

`∩[A044959(n+1), A359138(n+1)]`
-/

namespace A182051.P2365847624156931882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182051.P2365847624156931882

/-! ## A182051.P8921911143048885014

`∩[A044959(n+1), A359139(n+1)]`
-/

namespace A182051.P8921911143048885014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182051.P8921911143048885014

/-!
# A182053: G.f. satisfies: A(x) = (1+x*A(x))*(1+x^2*A(x))*(1+x^3*A(x)).

The programs for A182053, there is no canonical definition to state claims against.
-/

/-! ## A182053.P3644464891210700808

`A194640(A109545(n)+A000009(n))`
-/

namespace A182053.P3644464891210700808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A109545 n + A000009 n).toNat

end

end A182053.P3644464891210700808

/-! ## A182053.P7857532791363193104

`A081315(A044049(n))`
-/

namespace A182053.P7857532791363193104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (A044049 n).toNat

end

end A182053.P7857532791363193104

/-! ## A182053.P14597242409377162597

`A001462(A104503(∑[n]))`
-/

namespace A182053.P14597242409377162597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A104503 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A182053.P14597242409377162597

/-! ## A182053.P18331819396384789173

`A001462(A326978(∑[n]))`
-/

namespace A182053.P18331819396384789173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A326978 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A182053.P18331819396384789173

/-!
# A182055: Bisection of A002854.

The programs for A182055, there is no canonical definition to state claims against.
-/

/-! ## A182055.P4921035278116518512

`A002854(Δ[n²])`
-/

namespace A182055.P4921035278116518512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182055.P4921035278116518512

/-! ## A182055.P10335018424880713509

`record[A002854(A093178(n))]`
-/

namespace A182055.P10335018424880713509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182055.P10335018424880713509

/-! ## A182055.P11154418379877508800

`record[A002854(A014681(n)+1)]`
-/

namespace A182055.P11154418379877508800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182055.P11154418379877508800

/-! ## A182055.P12693288278668208273

`record[A002854(A158405(n+1))]`
-/

namespace A182055.P12693288278668208273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182055.P12693288278668208273

/-! ## A182055.P18013676596859096572

`record[A002854(n+1)/A033999(n)]`
-/

namespace A182055.P18013676596859096572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002854 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182055.P18013676596859096572

/-!
# A182056: Expansion of psi(x) * chi(-x^3) * f(-x^16) * chi(-x^24) / phi(-x^12)^2 in powers of x where phi(), psi(), chi(), f() are Ramanujan theta functions.

The programs for A182056, there is no canonical definition to state claims against.
-/

/-! ## A182056.P15245317020600141109

`A062242(n)*A133872(n)`
-/

namespace A182056.P15245317020600141109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 n * A133872 n

end

end A182056.P15245317020600141109

/-! ## A182056.P4606313472116564206

`A062244(n)*A219977(n)`
-/

namespace A182056.P4606313472116564206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 n * A219977 n

end

end A182056.P4606313472116564206

/-! ## A182056.P5741574764504958257

`and(-(A045943(n+1)%2), A062242(n))`
-/

namespace A182056.P5741574764504958257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-Int.tmod (A045943 (n + 1)) 2) (A062242 n)

end

end A182056.P5741574764504958257

/-! ## A182056.P8616591101200551719

`A182036(A028390(n))`
-/

namespace A182056.P8616591101200551719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182036 (A028390 n).toNat

end

end A182056.P8616591101200551719

/-! ## A182056.P16180172501093996075

`A062242(n)%A232648(n+1)`
-/

namespace A182056.P16180172501093996075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062242 n) (A232648 (n + 1))

end

end A182056.P16180172501093996075

/-!
# A182057: Expansion of psi(x) * f(x^4) / (psi(x^3) * f(x^6) * chi(-x^24)) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

The programs for A182057, there is no canonical definition to state claims against.
-/

/-! ## A182057.P13054917498801796101

`A062242(n+1)*A133872(n)`
-/

namespace A182057.P13054917498801796101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (n + 1) * A133872 n

end

end A182057.P13054917498801796101

/-! ## A182057.P11741327412342380858

`and(1, A045943(n+1))*A062242(n+1)`
-/

namespace A182057.P11741327412342380858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A045943 (n + 1)) * A062242 (n + 1)

end

end A182057.P11741327412342380858

/-!
# A182058: Number of moves needed to solve the Towers of Hanoi puzzle with 6 pegs and n disks.

The programs for A182058, there is no canonical definition to state claims against.
-/

/-! ## A182058.P5194401534843713597

`∑[∏[char[C(n+4, 4)]+1]]`
-/

namespace A182058.P5194401534843713597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182058.P5194401534843713597

/-! ## A182058.P18248667431599024235

`∑[2^(∑[char[C(n, 4)]]-1)]`
-/

namespace A182058.P18248667431599024235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182058.P18248667431599024235

/-! ## A182058.P5880780970410118747

`∑[2^∑[char[C(n+4, 4)]]]`
-/

namespace A182058.P5880780970410118747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182058.P5880780970410118747

/-! ## A182058.P15634117274299968606

`lt[n, xor(n, n-1)²]+1`
-/

namespace A182058.P15634117274299968606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A182058.P15634117274299968606

/-! ## A182058.P5887320403314249706

`∑[2^floor((sqrt(n)+1)/ϕ)]`
-/

namespace A182058.P5887320403314249706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(Real.sqrt (n : ℝ) + 1) / Real.goldenRatio⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182058.P5887320403314249706

/-!
# A182059: Triangle, read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (2, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A182059, the canonical program `A182059.P2759527818996415774` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182059 has offset 0).

The definition of A182059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182059.P7946052393269795403

`A013609(n)-char[∑[n+1]]`
-/

namespace A182059.P7946052393269795403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182059.P7946052393269795403

namespace A182059

/-- `A013609(n)-char[∑[n+1]]` -/
def P7946052393269795403.Spec : Prop :=
  ∀ n, P7946052393269795403.a n = A182059 n

end A182059

/-! ## A182059.P3573965384326559685

`A013609(n)*A123110(n)`
-/

namespace A182059.P3573965384326559685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A123110 n

end

end A182059.P3573965384326559685

namespace A182059

/-- `A013609(n)*A123110(n)` -/
def P3573965384326559685.Spec : Prop :=
  ∀ n, P3573965384326559685.a n = A182059 n

end A182059

/-! ## A182059.P2759527818996415774

`A059268(n)*A206735(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A182059

/-- `A059268(n)*A206735(n)` -/
def P2759527818996415774.Spec : Prop :=
  ∀ n, P2759527818996415774.a n = A182059 n

theorem P2759527818996415774.correct : P2759527818996415774.Spec := by
  intro n
  simp only [A182059]

end A182059

/-! ## A182059.P7529766099101242598

`lcm(A013609(n), A166124(n))`
-/

namespace A182059.P7529766099101242598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A166124 n)

end

end A182059.P7529766099101242598

namespace A182059

/-- `lcm(A013609(n), A166124(n))` -/
def P7529766099101242598.Spec : Prop :=
  ∀ n, (P7529766099101242598.a n : ℤ) = A182059 n

end A182059

/-! ## A182059.P3274409817030629865

`lcm(A206735(n), A303872(n))`
-/

namespace A182059.P3274409817030629865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A206735 n) (A303872 n)

end

end A182059.P3274409817030629865

namespace A182059

/-- `lcm(A206735(n), A303872(n))` -/
def P3274409817030629865.Spec : Prop :=
  ∀ n, (P3274409817030629865.a n : ℤ) = A182059 n

end A182059

/-! ## A182059.P2632371879147013239

`and(A013609(n), A113679(n))`
-/

namespace A182059.P2632371879147013239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A113679 n)

end

end A182059.P2632371879147013239

namespace A182059

/-- `and(A013609(n), A113679(n))` -/
def P2632371879147013239.Spec : Prop :=
  ∀ n, P2632371879147013239.a n = A182059 n

end A182059

/-! ## A182059.P14703198349837902718

`xor(A013609(n), A073424(n))`
-/

namespace A182059.P14703198349837902718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A013609 n) (A073424 n)

end

end A182059.P14703198349837902718

namespace A182059

/-- `xor(A013609(n), A073424(n))` -/
def P14703198349837902718.Spec : Prop :=
  ∀ n, P14703198349837902718.a n = A182059 n

end A182059

/-! ## A182059.P2100482597569498283

`and(A000007(n)-2, A013609(n))`
-/

namespace A182059.P2100482597569498283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 n - 2) (A013609 n)

end

end A182059.P2100482597569498283

namespace A182059

/-- `and(A000007(n)-2, A013609(n))` -/
def P2100482597569498283.Spec : Prop :=
  ∀ n, P2100482597569498283.a n = A182059 n

end A182059

/-! ## A182059.P16430245304157607918

`and(A057427(n)-3, A013609(n))`
-/

namespace A182059.P16430245304157607918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n - 3) (A013609 n)

end

end A182059.P16430245304157607918

namespace A182059

/-- `and(A057427(n)-3, A013609(n))` -/
def P16430245304157607918.Spec : Prop :=
  ∀ n, P16430245304157607918.a n = A182059 n

end A182059

/-! ## A182059.P13349926768082106084

`and(-gcd(2, A000122(n)), A013609(n))`
-/

namespace A182059.P13349926768082106084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Int.gcd 2 (A000122 n) : ℤ)) (A013609 n)

end

end A182059.P13349926768082106084

namespace A182059

/-- `and(-gcd(2, A000122(n)), A013609(n))` -/
def P13349926768082106084.Spec : Prop :=
  ∀ n, P13349926768082106084.a n = A182059 n

end A182059

/-! ## A182059.P4785259114985218338

`A182042(n)+A013609(n)-A013610(n)`
-/

namespace A182059.P4785259114985218338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182042 n + (A013609 n - A013610 n)

end

end A182059.P4785259114985218338

namespace A182059

/-- `A182042(n)+A013609(n)-A013610(n)` -/
def P4785259114985218338.Spec : Prop :=
  ∀ n, P4785259114985218338.a n = A182059 n

end A182059

/-! ## A182059.P12187746944003888048

`floor(A013609(n)/A134058(n))*A134058(n)`
-/

namespace A182059.P12187746944003888048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013609 n : ℚ) / (A134058 n : ℚ)⌋ * A134058 n

end

end A182059.P12187746944003888048

namespace A182059

/-- `floor(A013609(n)/A134058(n))*A134058(n)` -/
def P12187746944003888048.Spec : Prop :=
  ∀ n, P12187746944003888048.a n = A182059 n

end A182059

/-! ## A182059.P5602037347347661356

`A208510(n+1)+A013609(n)-A029653(n)`
-/

namespace A182059.P5602037347347661356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + (A013609 n - A029653 n)

end

end A182059.P5602037347347661356

namespace A182059

/-- `A208510(n+1)+A013609(n)-A029653(n)` -/
def P5602037347347661356.Spec : Prop :=
  ∀ n, P5602037347347661356.a n = A182059 n

end A182059

/-! ## A182059.P12701080657313927931

`A013609(n)*A182042(A013610(n)-A182042(n))`
-/

namespace A182059.P12701080657313927931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A182042 (A013610 n - A182042 n).toNat

end

end A182059.P12701080657313927931

namespace A182059

/-- `A013609(n)*A182042(A013610(n)-A182042(n))` -/
def P12701080657313927931.Spec : Prop :=
  ∀ n, P12701080657313927931.a n = A182059 n

end A182059

/-! ## A182059.P1670511076502656483

`and(A000918(n), A013609(n))`
-/

namespace A182059.P1670511076502656483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A013609 n)

end

end A182059.P1670511076502656483

namespace A182059

/-- `and(A000918(n), A013609(n))` -/
def P1670511076502656483.Spec : Prop :=
  ∀ n, P1670511076502656483.a n = A182059 n

end A182059

/-! ## A182059.P13195355956010014961

`and(A013609(n), A095121(n))`
-/

namespace A182059.P13195355956010014961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A095121 n)

end

end A182059.P13195355956010014961

namespace A182059

/-- `and(A013609(n), A095121(n))` -/
def P13195355956010014961.Spec : Prop :=
  ∀ n, P13195355956010014961.a n = A182059 n

end A182059

/-! ## A182059.P14194109225799909110

`and(A013609(n), A033484(n))`
-/

namespace A182059.P14194109225799909110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A033484 n)

end

end A182059.P14194109225799909110

namespace A182059

/-- `and(A013609(n), A033484(n))` -/
def P14194109225799909110.Spec : Prop :=
  ∀ n, P14194109225799909110.a n = A182059 n

end A182059

/-! ## A182059.P13793064391171344929

`and(A013609(n), A134067(n))`
-/

namespace A182059.P13793064391171344929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A134067 n)

end

end A182059.P13793064391171344929

namespace A182059

/-- `and(A013609(n), A134067(n))` -/
def P13793064391171344929.Spec : Prop :=
  ∀ n, P13793064391171344929.a n = A182059 n

end A182059

/-! ## A182059.P13103476344793710292

`and(A013609(n), A307457(n+1))`
-/

namespace A182059.P13103476344793710292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A307457 (n + 1))

end

end A182059.P13103476344793710292

namespace A182059

/-- `and(A013609(n), A307457(n+1))` -/
def P13103476344793710292.Spec : Prop :=
  ∀ n, P13103476344793710292.a n = A182059 n

end A182059

/-! ## A182059.P15674938337587917381

`and(A013609(n), A051633(n))`
-/

namespace A182059.P15674938337587917381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A051633 n)

end

end A182059.P15674938337587917381

namespace A182059

/-- `and(A013609(n), A051633(n))` -/
def P15674938337587917381.Spec : Prop :=
  ∀ n, P15674938337587917381.a n = A182059 n

end A182059

/-!
# A182060: Triangle read by rows arising from the Mann-Shanks criterion for primality.

The programs for A182060, there is no canonical definition to state claims against.
-/

/-! ## A182060.P17486980159794195367

`A001055(A146657(n+1))*A360744(n+1)`
-/

namespace A182060.P17486980159794195367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A146657 (n + 1)).toNat * A360744 (n + 1)

end

end A182060.P17486980159794195367

/-!
# A182061: Smallest number with "natural" logarithm n, cf. A061373.

The programs for A182061, there is no canonical definition to state claims against.
-/

/-! ## A182061.P11342761030773113956

`A005520(n+1)-A058276(A008279(n))`
-/

namespace A182061.P11342761030773113956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (n + 1) - A058276 (A008279 n).toNat

end

end A182061.P11342761030773113956

/-! ## A182061.P15486831402417872495

`A005520(n+1)-A106166(A156579(n))`
-/

namespace A182061.P15486831402417872495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (n + 1) - A106166 (A156579 n).toNat

end

end A182061.P15486831402417872495

/-! ## A182061.P16833648334882106414

`A005520(n+1)-A316868(A285437(n+1))`
-/

namespace A182061.P16833648334882106414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (n + 1) - A316868 (A285437 (n + 1)).toNat

end

end A182061.P16833648334882106414

/-! ## A182061.P15038219051277182995

`A005520(n+1)-A086011(A005520(2*n+5))`
-/

namespace A182061.P15038219051277182995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (n + 1) - A086011 (A005520 (2 * n + 5)).toNat

end

end A182061.P15038219051277182995

/-!
# A182062: T(n,k) = C(n+1-k,k)*k!*(n-k)!, the number of ways for k men and n-k women to form a queue in which no man is next to another man.

The programs for A182062, the canonical program `A182062.P751900248150404470` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182062 has offset 0).

The definition of A182062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182062.P751900248150404470

`A098361(n)*A169803(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182062

/-- `A098361(n)*A169803(n)` -/
def P751900248150404470.Spec : Prop :=
  ∀ n, P751900248150404470.a n = A182062 n

theorem P751900248150404470.correct : P751900248150404470.Spec := by
  intro n
  simp only [A182062]

end A182062

/-! ## A182062.P9491608175168493521

`A052553(comp[∑[n-1]])*A098361(n)`
-/

namespace A182062.P9491608175168493521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A098361 n

end

end A182062.P9491608175168493521

namespace A182062

/-- `A052553(comp[∑[n-1]])*A098361(n)` -/
def P9491608175168493521.Spec : Prop :=
  ∀ n, P9491608175168493521.a n = A182062 n

end A182062

/-! ## A182062.P8846739536549213754

`A030528(A038722(n+1))*A098361(n)`
-/

namespace A182062.P8846739536549213754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A038722 (n + 1)).toNat * A098361 n

end

end A182062.P8846739536549213754

namespace A182062

/-- `A030528(A038722(n+1))*A098361(n)` -/
def P8846739536549213754.Spec : Prop :=
  ∀ n, P8846739536549213754.a n = A182062 n

end A182062

/-! ## A182062.P12210670488784062803

`A030528(A061579(n)+1)*A098361(n)`
-/

namespace A182062.P12210670488784062803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A061579 n + 1).toNat * A098361 n

end

end A182062.P12210670488784062803

namespace A182062

/-- `A030528(A061579(n)+1)*A098361(n)` -/
def P12210670488784062803.Spec : Prop :=
  ∀ n, P12210670488784062803.a n = A182062 n

end A182062

/-! ## A182062.P4535410576147216728

`C(A193592(n), A002262(n))*A098361(n)`
-/

namespace A182062.P4535410576147216728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A193592 n).toNat (A002262 n).toNat : ℤ) * A098361 n

end

end A182062.P4535410576147216728

namespace A182062

/-- `C(A193592(n), A002262(n))*A098361(n)` -/
def P4535410576147216728.Spec : Prop :=
  ∀ n, P4535410576147216728.a n = A182062 n

end A182062

/-! ## A182062.P11430976064511594894

`A112624(A036561(n))*A169803(n)`
-/

namespace A182062.P11430976064511594894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A036561 n).toNat * A169803 n

end

end A182062.P11430976064511594894

namespace A182062

/-- `A112624(A036561(n))*A169803(n)` -/
def P11430976064511594894.Spec : Prop :=
  ∀ n, P11430976064511594894.a n = A182062 n

end A182062

/-! ## A182062.P2043459484904728017

`A052553(A007401(n+1))*A112624(A036561(n))`
-/

namespace A182062.P2043459484904728017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A007401 (n + 1)).toNat * A112624 (A036561 n).toNat

end

end A182062.P2043459484904728017

namespace A182062

/-- `A052553(A007401(n+1))*A112624(A036561(n))` -/
def P2043459484904728017.Spec : Prop :=
  ∀ n, P2043459484904728017.a n = A182062 n

end A182062

/-!
# A182063: Leading coefficient (divided by n+1) of the denominator of the factorization of a certain integral of a truncated series converging to the Riemann zeta function.

The programs for A182063, there is no canonical definition to state claims against.
-/

/-! ## A182063.P945780006494849856

`lcm(gcd(3, A145871(n+1)), A072504(n+1))`
-/

namespace A182063.P945780006494849856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 3 (A145871 (n + 1)) : ℤ) (A072504 (n + 1))

end

end A182063.P945780006494849856

/-! ## A182063.P14195613633232160295

`A305195(A305214(n+1))*A348581(n+1)`
-/

namespace A182063.P14195613633232160295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A305214 (n + 1)).toNat * A348581 (n + 1)

end

end A182063.P14195613633232160295

/-! ## A182063.P10836031317015076503

`lcm(A072504(n+1), A305195(A305214(n+1)))`
-/

namespace A182063.P10836031317015076503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072504 (n + 1)) (A305195 (A305214 (n + 1)).toNat)

end

end A182063.P10836031317015076503

/-! ## A182063.P10902490257330095352

`A072504(n+1)*A215495(A003557(A036653(n)))`
-/

namespace A182063.P10902490257330095352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1) * A215495 (A003557 (A036653 n).toNat).toNat

end

end A182063.P10902490257330095352

/-! ## A182063.P9117489931055781254

`gcd(A010875(A100019(n+1)), A214080(n+2))`
-/

namespace A182063.P9117489931055781254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010875 (A100019 (n + 1)).toNat) (A214080 (n + 2))

end

end A182063.P9117489931055781254

/-!
# A182065: Smallest average of twin prime pairs s such that s^(2^n)+1 is prime.

The programs for A182065, there is no canonical definition to state claims against.
-/

/-! ## A182065.P15803129070853142705

`A185145(or(A005408(n), A215465(n)))`
-/

namespace A182065.P15803129070853142705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (Int.lor (A005408 n) (A215465 n)).toNat

end

end A182065.P15803129070853142705

/-! ## A182065.P6192170974583629806

`A185145(or(A215465(n), A340019(n+1)))`
-/

namespace A182065.P6192170974583629806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (Int.lor (A215465 n) (A340019 (n + 1))).toNat

end

end A182065.P6192170974583629806

/-!
# A182066: a(n) = sum of the squares of the coefficients of x^(2*k) in A(x^2)^{2*(n-2*k+1)}, as k varies from 0 to floor(n/2), with a(0)=1.

The programs for A182066, there is no canonical definition to state claims against.
-/

/-! ## A182066.P10411881710910404967

`A084242(A000267(n)^n)`
-/

namespace A182066.P10411881710910404967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (A000267 n ^ n).toNat

end

end A182066.P10411881710910404967

/-! ## A182066.P12396339885231701891

`A084242(A084242(n+2)^n)`
-/

namespace A182066.P12396339885231701891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (A084242 (n + 2) ^ n).toNat

end

end A182066.P12396339885231701891

/-!
# A182067: a(n) = floor(n) - floor(n/2) - floor(n/3) - floor(n/5) + floor(n/30).

The programs for A182067, the canonical program `A182067.P3272839607822920999` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182067 has offset 0).

The definition of A182067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-floor(n/2)-floor(n/3)-floor(n/5)+floor(n/30)` (program `A182067.P3272839607822920999`, by `A182067.P3272839607822920999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182067.P3272839607822920999

`n-floor(n/2)-floor(n/3)-floor(n/5)+floor(n/30)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182067

/-- `n-floor(n/2)-floor(n/3)-floor(n/5)+floor(n/30)` -/
def P3272839607822920999.Spec : Prop :=
  ∀ n, P3272839607822920999.a n = A182067 n

theorem P3272839607822920999.correct : P3272839607822920999.Spec := by
  intro n
  simp only [A182067]

end A182067

/-! ## A182067.P7749120912141815174

`floor(n)-floor(n/2)-floor(n/3)-floor(n/5)+floor(n/30)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).

`floor` is left out, it is the identity on integers.
-/

namespace A182067.P7749120912141815174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / 2⌋ - ⌊(n : ℚ) / 3⌋ - ⌊(n : ℚ) / 5⌋ + ⌊(n : ℚ) / 30⌋

end

end A182067.P7749120912141815174

namespace A182067

/-- `floor(n)-floor(n/2)-floor(n/3)-floor(n/5)+floor(n/30)` -/
def P7749120912141815174.Spec : Prop :=
  ∀ n, P7749120912141815174.a n = A182067 n

theorem P7749120912141815174.correct : P7749120912141815174.Spec := by
  intro n
  simp only [A182067, Nat.add_sub_cancel, A182067.P7749120912141815174.a, A182067.P3272839607822920999.a, SequenceMachineLib.memo_apply]

end A182067

/-!
# A182068: Number of Williamson Hadamard matrices over Z_(2*n+1) X Z^2_2.

The programs for A182068, there is no canonical definition to state claims against.
-/

/-! ## A182068.P8428964678548508941

`A001175(∑[∑[A049402(n)]])`
-/

namespace A182068.P8428964678548508941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182068.P8428964678548508941

/-!
# A182069: Triangle of numbers 2^i*C(n,i) mod 3 converted to decimal.

The programs for A182069, there is no canonical definition to state claims against.
-/

/-! ## A182069.P10814207473424639642

`A330740(A255286(n))`
-/

namespace A182069.P10814207473424639642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (A255286 n).toNat

end

end A182069.P10814207473424639642

/-! ## A182069.P622155988312081272

`A117967(A117983(n))`
-/

namespace A182069.P622155988312081272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A117983 n).toNat

end

end A182069.P622155988312081272

/-! ## A182069.P17395879979826740981

`A030102(∏{p}[A255286(n), #])`
-/

namespace A182069.P17395879979826740981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A182069.P17395879979826740981

/-! ## A182069.P5805557224597014589

`A030102(A255286(∑{digits}[n, #]))`
-/

namespace A182069.P5805557224597014589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A255286 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum).toNat

end

end A182069.P5805557224597014589

/-! ## A182069.P1028385803687547198

`A030102(A255286(n)%((6*n+5)^3))`
-/

namespace A182069.P1028385803687547198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (Int.tmod (A255286 n) ((6 * n + 5) ^ 3 : ℤ)).toNat

end

end A182069.P1028385803687547198

/-!
# A182071: Number of primes in the half-open interval [n*sqrt((n-1)/2), (n+1)*sqrt(n/2)).

The programs for A182071, there is no canonical definition to state claims against.
-/

/-! ## A182071.P609826157187970873

`Δ[A230774(or(1, A006002(n)))]`
-/

namespace A182071.P609826157187970873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (Int.lor 1 (A006002 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182071.P609826157187970873

/-! ## A182071.P5062708007281112024

`Δ[A230774(A109613((n+1)*∑[n]))]`
-/

namespace A182071.P5062708007281112024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (A109613 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182071.P5062708007281112024

/-! ## A182071.P17456303495858384034

`A099362(or(n%2, A036561(n)))`
-/

namespace A182071.P17456303495858384034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099362 (Int.lor ((n % 2 : ℕ) : ℤ) (A036561 n)).toNat

end

end A182071.P17456303495858384034

/-! ## A182071.P11125746262174624384

`A099362(or(A000035(n), A036561(n)))`
-/

namespace A182071.P11125746262174624384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099362 (Int.lor (A000035 n) (A036561 n)).toNat

end

end A182071.P11125746262174624384

/-! ## A182071.P16333412942620500328

`A099362(or(A036561(n), A323239(n)))`
-/

namespace A182071.P16333412942620500328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099362 (Int.lor (A036561 n) (A323239 n)).toNat

end

end A182071.P16333412942620500328

/-!
# A182072: a(n) is the minimal m such that sqrt(m) - pi(sqrt(p_m)) >= n, where p_m is the m-th prime.

The programs for A182072, there is no canonical definition to state claims against.
-/

/-! ## A182072.P10727993094678587348

`∑[A019474(A002457(n))]²`
-/

namespace A182072.P10727993094678587348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019474 (A002457 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A182072.P10727993094678587348

/-!
# A182073: Square array read by antidiagonals: T(n,k) = n!*k! / (floor(n/2)! * floor(k/2)! * floor((n+k)/2)!).

The programs for A182073, there is no canonical definition to state claims against.
-/

/-! ## A182073.P8730455633147739530

`A328001(n)/A211226(n)`
-/

namespace A182073.P8730455633147739530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328001 n : ℚ) / (A211226 n : ℚ)

end

end A182073.P8730455633147739530

/-! ## A182073.P13963755369983531530

`∏{e}[A036561(n), A056040(#)]/A211226(n)`
-/

namespace A182073.P13963755369983531530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ) / (A211226 n : ℚ)

end

end A182073.P13963755369983531530

/-! ## A182073.P1596495778732287846

`A246661(A089633(n))/A211226(n)`
-/

namespace A182073.P1596495778732287846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246661 (A089633 n).toNat : ℚ) / (A211226 n : ℚ)

end

end A182073.P1596495778732287846

/-! ## A182073.P230949198592898571

`A246661(A099627(n)-A176224(n))/A211226(n)`
-/

namespace A182073.P230949198592898571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246661 (A099627 n - A176224 n).toNat : ℚ) / (A211226 n : ℚ)

end

end A182073.P230949198592898571

/-! ## A182073.P2671219006491115828

`∏{e}[A175840(n), A056040(#)]/A211226(n)`
-/

namespace A182073.P2671219006491115828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ) / (A211226 n : ℚ)

end

end A182073.P2671219006491115828

/-! ## A182073.P3130075315284801584

`A246661(A043569(n+1)-2)/A211226(n)`
-/

namespace A182073.P3130075315284801584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246661 (A043569 (n + 1) - 2).toNat : ℚ) / (A211226 n : ℚ)

end

end A182073.P3130075315284801584

/-! ## A182073.P12545814802870942907

`A246661(A087136(n))/A211226(n)`
-/

namespace A182073.P12545814802870942907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246661 (A087136 n).toNat : ℚ) / (A211226 n : ℚ)

end

end A182073.P12545814802870942907

/-!
# A182075: Number of partial binary words of length n without a critical factorization.

The programs for A182075, there is no canonical definition to state claims against.
-/

/-! ## A182075.P13906176483447947170

`A342642(A342333(n)!)`
-/

namespace A182075.P13906176483447947170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342642 (Nat.factorial (A342333 n).toNat)

end

end A182075.P13906176483447947170

/-! ## A182075.P724427082659527581

`A028598(A133558(n+1))`
-/

namespace A182075.P724427082659527581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028598 (A133558 (n + 1)).toNat

end

end A182075.P724427082659527581

/-!
# A182078: Odd numbers n such that the reduced Collatz map n -> (3n+1)/2^k gives a trajectory of decreasing odd numbers.

The programs for A182078, there is no canonical definition to state claims against.
-/

/-! ## A182078.P16169248456405786269

`eq[1, A350369(n^(n%2))]`
-/

namespace A182078.P16169248456405786269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350369 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182078.P16169248456405786269

/-! ## A182078.P8076631100003291206

`eq[1, A350369(A053438(n))]`
-/

namespace A182078.P8076631100003291206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350369 (A053438 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182078.P8076631100003291206

/-! ## A182078.P4314812513736176966

`eq[1, A350369(A093178(n))]`
-/

namespace A182078.P4314812513736176966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350369 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182078.P4314812513736176966

/-! ## A182078.P9397980141887841476

`A005408(eq[1, A350369(2*n+1)])`
-/

namespace A182078.P9397980141887841476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350369 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182078.P9397980141887841476

/-!
# A182079: a(n) = floor(n*floor((n-1)/2)/3).

The programs for A182079, the canonical program `A182079.P5807454605697257138` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182079 has offset 0).

The definition of A182079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*floor((n-1)/2)/3)` (program `A182079.P5807454605697257138`, by `A182079.P5807454605697257138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182079.P5066496992403524631

`floor(n/3*floor((n-1)/2))`
-/

namespace A182079.P5066496992403524631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3 * (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ)⌋

end

end A182079.P5066496992403524631

namespace A182079

/-- `floor(n/3*floor((n-1)/2))` -/
def P5066496992403524631.Spec : Prop :=
  ∀ n, P5066496992403524631.a n = A182079 n

theorem P5066496992403524631.correct : P5066496992403524631.Spec := by
  intro n
  simp only [A182079, Nat.add_sub_cancel, A182079.P5066496992403524631.a, A182079.P5807454605697257138.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182079

/-! ## A182079.P5807454605697257138

`floor(n*floor((n-1)/2)/3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182079

/-- `floor(n*floor((n-1)/2)/3)` -/
def P5807454605697257138.Spec : Prop :=
  ∀ n, P5807454605697257138.a n = A182079 n

theorem P5807454605697257138.correct : P5807454605697257138.Spec := by
  intro n
  simp only [A182079]

end A182079

/-! ## A182079.P2260726740532700955

`∑[floor(A014682(n)/3)]`
-/

namespace A182079.P2260726740532700955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014682 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P2260726740532700955

namespace A182079

/-- `∑[floor(A014682(n)/3)]` -/
def P2260726740532700955.Spec : Prop :=
  ∀ n, P2260726740532700955.a n = A182079 n

end A182079

/-! ## A182079.P2815673627261084602

`∑[comp[4*n]-A260307(n)]`
-/

namespace A182079.P2815673627261084602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - A260307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P2815673627261084602

namespace A182079

/-- `∑[comp[4*n]-A260307(n)]` -/
def P2815673627261084602.Spec : Prop :=
  ∀ n, P2815673627261084602.a n = A182079 n

end A182079

/-! ## A182079.P14001491184880535102

`round((n-A008619(n))*n/3)`
-/

namespace A182079.P14001491184880535102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - A008619 n : ℚ) * ((n : ℚ) / 3))

end

end A182079.P14001491184880535102

namespace A182079

/-- `round((n-A008619(n))*n/3)` -/
def P14001491184880535102.Spec : Prop :=
  ∀ n, P14001491184880535102.a n = A182079 n

end A182079

/-! ## A182079.P17286165442366469030

`∑[A004773(A142150(n))]-A142150(n)`
-/

namespace A182079.P17286165442366469030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142150 n

end

end A182079.P17286165442366469030

namespace A182079

/-- `∑[A004773(A142150(n))]-A142150(n)` -/
def P17286165442366469030.Spec : Prop :=
  ∀ n, P17286165442366469030.a n = A182079 n

end A182079

/-! ## A182079.P15010784189729136135

`A069905(n)+A000212(A140106(n+1))`
-/

namespace A182079.P15010784189729136135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A000212 (A140106 (n + 1)).toNat

end

end A182079.P15010784189729136135

namespace A182079

/-- `A069905(n)+A000212(A140106(n+1))` -/
def P15010784189729136135.Spec : Prop :=
  ∀ n, P15010784189729136135.a n = A182079 n

end A182079

/-! ## A182079.P5565392087899133105

`A002620(n)-A000212(A004526(n)+1)`
-/

namespace A182079.P5565392087899133105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A000212 (A004526 n + 1).toNat

end

end A182079.P5565392087899133105

namespace A182079

/-- `A002620(n)-A000212(A004526(n)+1)` -/
def P5565392087899133105.Spec : Prop :=
  ∀ n, P5565392087899133105.a n = A182079 n

end A182079

/-! ## A182079.P6695195132206713752

`A069905(2*A140106(n+1))+A069905(n)`
-/

namespace A182079.P6695195132206713752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * A140106 (n + 1)).toNat + A069905 n

end

end A182079.P6695195132206713752

namespace A182079

/-- `A069905(2*A140106(n+1))+A069905(n)` -/
def P6695195132206713752.Spec : Prop :=
  ∀ n, P6695195132206713752.a n = A182079 n

end A182079

/-! ## A182079.P13445718462219700028

`A002620(n)-A000212(Δ[A002620(n+1)])`
-/

namespace A182079.P13445718462219700028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A000212 (f1 (n + 1) - f1 n).toNat

end

end A182079.P13445718462219700028

namespace A182079

/-- `A002620(n)-A000212(Δ[A002620(n+1)])` -/
def P13445718462219700028.Spec : Prop :=
  ∀ n, P13445718462219700028.a n = A182079 n

end A182079

/-! ## A182079.P10566855180578753992

`∑[A002264(A266285(n)-1)]`
-/

namespace A182079.P10566855180578753992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A266285 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P10566855180578753992

namespace A182079

/-- `∑[A002264(A266285(n)-1)]` -/
def P10566855180578753992.Spec : Prop :=
  ∀ n, P10566855180578753992.a n = A182079 n

end A182079

/-! ## A182079.P4837828992866426457

`∑[A002264(Δ[A031940(n+1)]-2)]`
-/

namespace A182079.P4837828992866426457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f2 (n + 1) - f2 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P4837828992866426457

namespace A182079

/-- `∑[A002264(Δ[A031940(n+1)]-2)]` -/
def P4837828992866426457.Spec : Prop :=
  ∀ n, P4837828992866426457.a n = A182079 n

end A182079

/-! ## A182079.P3985381418733068216

`∑[A002264(∑[2*n]%(2*n+1))]`
-/

namespace A182079.P3985381418733068216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P3985381418733068216

namespace A182079

/-- `∑[A002264(∑[2*n]%(2*n+1))]` -/
def P3985381418733068216.Spec : Prop :=
  ∀ n, P3985381418733068216.a n = A182079 n

end A182079

/-! ## A182079.P14714540458893584622

`∑[A002264(A014682(n))]`
-/

namespace A182079.P14714540458893584622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P14714540458893584622

namespace A182079

/-- `∑[A002264(A014682(n))]` -/
def P14714540458893584622.Spec : Prop :=
  ∀ n, P14714540458893584622.a n = A182079 n

end A182079

/-! ## A182079.P8648328382225180707

`∑[A002264(A001057(n)+n)]`
-/

namespace A182079.P8648328382225180707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001057 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P8648328382225180707

namespace A182079

/-- `∑[A002264(A001057(n)+n)]` -/
def P8648328382225180707.Spec : Prop :=
  ∀ n, P8648328382225180707.a n = A182079 n

end A182079

/-! ## A182079.P9232464521299886260

`A309685(2*n)-Δ[A309685(n+1)]`
-/

namespace A182079.P9232464521299886260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (2 * n) - (f1 (n + 1) - f1 n)

end

end A182079.P9232464521299886260

namespace A182079

/-- `A309685(2*n)-Δ[A309685(n+1)]` -/
def P9232464521299886260.Spec : Prop :=
  ∀ n, P9232464521299886260.a n = A182079 n

end A182079

/-! ## A182079.P4757413447936659545

`∑[val(A076936(n+1), 8)]`
-/

namespace A182079.P4757413447936659545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076936 (n + 1)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182079.P4757413447936659545

namespace A182079

/-- `∑[val(A076936(n+1), 8)]` -/
def P4757413447936659545.Spec : Prop :=
  ∀ n, (P4757413447936659545.a n : ℤ) = A182079 n

end A182079

/-!
# A182081: Next semiprime after the partial sum of the first n semiprimes.

The programs for A182081, the canonical program `A182081.P16024361419725133729` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182081 has offset 1).

The definition of A182081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182081.P16024361419725133729

`A001358(A072000(A062198(n+1))+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A182081

/-- `A001358(A072000(A062198(n+1))+1)` -/
def P16024361419725133729.Spec : Prop :=
  ∀ n, P16024361419725133729.a n = A182081 (n + 1)

theorem P16024361419725133729.correct : P16024361419725133729.Spec := by
  intro n
  simp only [A182081, Nat.add_sub_cancel]

end A182081

/-! ## A182081.P12030792184685342993

`A325281(∑[∑[A287352(n+2)]])`
-/

namespace A182081.P12030792184685342993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182081.P12030792184685342993

namespace A182081

/-- `A325281(∑[∑[A287352(n+2)]])` -/
def P12030792184685342993.Spec : Prop :=
  ∀ n, P12030792184685342993.a n = A182081 (n + 1)

end A182081

/-! ## A182081.P14150986775419755485

`∩[A100658(n+1), A257559(n+1)]`
-/

namespace A182081.P14150986775419755485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182081.P14150986775419755485

namespace A182081

/-- `∩[A100658(n+1), A257559(n+1)]` -/
def P14150986775419755485.Spec : Prop :=
  ∀ n, (P14150986775419755485.a n : ℤ) = A182081 (n + 1)

end A182081

/-! ## A182081.P16090901212103963356

`∩[A105642(n+1), A257559(n+1)]`
-/

namespace A182081.P16090901212103963356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182081.P16090901212103963356

namespace A182081

/-- `∩[A105642(n+1), A257559(n+1)]` -/
def P16090901212103963356.Spec : Prop :=
  ∀ n, (P16090901212103963356.a n : ℤ) = A182081 (n + 1)

end A182081

/-!
# A182082: Number of pairs, (x,y), with x >= y, whose LCM does not exceed n.

The programs for A182082, the canonical program `A182082.P6630599206526508764` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182082 has offset 1).

The definition of A182082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182082.P16394085208518669056

`∑[A018892(n+1)]`
-/

namespace A182082.P16394085208518669056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P16394085208518669056

namespace A182082

/-- `∑[A018892(n+1)]` -/
def P16394085208518669056.Spec : Prop :=
  ∀ n, P16394085208518669056.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P13671214291448413547

`∑[A063647(n+1)+1]`
-/

namespace A182082.P13671214291448413547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P13671214291448413547

namespace A182082

/-- `∑[A063647(n+1)+1]` -/
def P13671214291448413547.Spec : Prop :=
  ∀ n, P13671214291448413547.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P5766774664168718677

`∑[A176835(4*(n+1))]`
-/

namespace A182082.P5766774664168718677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P5766774664168718677

namespace A182082

/-- `∑[A176835(4*(n+1))]` -/
def P5766774664168718677.Spec : Prop :=
  ∀ n, P5766774664168718677.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P1784791293356069223

`∑[ceil(A048691(n+1)/2)]`
-/

namespace A182082.P1784791293356069223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048691 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P1784791293356069223

namespace A182082

/-- `∑[ceil(A048691(n+1)/2)]` -/
def P1784791293356069223.Spec : Prop :=
  ∀ n, P1784791293356069223.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P8380260815556651824

`∑[A046079(2*(n+1))+1]`
-/

namespace A182082.P8380260815556651824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P8380260815556651824

namespace A182082

/-- `∑[A046079(2*(n+1))+1]` -/
def P8380260815556651824.Spec : Prop :=
  ∀ n, P8380260815556651824.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P6630599206526508764

`ceil((A061503(n+1)+n)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182082

/-- `ceil((A061503(n+1)+n)/2)` -/
def P6630599206526508764.Spec : Prop :=
  ∀ n, P6630599206526508764.a n = A182082 (n + 1)

theorem P6630599206526508764.correct : P6630599206526508764.Spec := by
  intro n
  simp only [A182082, Nat.add_sub_cancel]

end A182082

/-! ## A182082.P9520248005198244998

`∑[A000463(A048691(n+1))]`
-/

namespace A182082.P9520248005198244998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A048691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P9520248005198244998

namespace A182082

/-- `∑[A000463(A048691(n+1))]` -/
def P9520248005198244998.Spec : Prop :=
  ∀ n, P9520248005198244998.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P466569384118291500

`∑[A008620(A146564(n+1))]`
-/

namespace A182082.P466569384118291500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A146564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P466569384118291500

namespace A182082

/-- `∑[A008620(A146564(n+1))]` -/
def P466569384118291500.Spec : Prop :=
  ∀ n, P466569384118291500.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P7327856099040758056

`∑[A080513(A117677(n+1))]`
-/

namespace A182082.P7327856099040758056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A117677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P7327856099040758056

namespace A182082

/-- `∑[A080513(A117677(n+1))]` -/
def P7327856099040758056.Spec : Prop :=
  ∀ n, P7327856099040758056.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P2573071679553177434

`A072391(n+1)-A132345(n+1)`
-/

namespace A182082.P2573071679553177434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072391 (n + 1) - A132345 (n + 1)

end

end A182082.P2573071679553177434

namespace A182082

/-- `A072391(n+1)-A132345(n+1)` -/
def P2573071679553177434.Spec : Prop :=
  ∀ n, P2573071679553177434.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P15768711531611108583

`∑[A089233(n+1)+A000005(n+1)]`
-/

namespace A182082.P15768711531611108583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P15768711531611108583

namespace A182082

/-- `∑[A089233(n+1)+A000005(n+1)]` -/
def P15768711531611108583.Spec : Prop :=
  ∀ n, P15768711531611108583.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P4052478350134513270

`∑[sqrt(A221837(2*(n+1)))+1]`
-/

namespace A182082.P4052478350134513270
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A221837 (2 * (n + 1)) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P4052478350134513270

namespace A182082

/-- `∑[sqrt(A221837(2*(n+1)))+1]` -/
def P4052478350134513270.Spec : Prop :=
  ∀ n, P4052478350134513270.a n = (A182082 (n + 1) : ℝ)

end A182082

/-! ## A182082.P6369416190056079697

`∑[ceil(∏{e}[(n+1)², #+1]/2)]`
-/

namespace A182082.P6369416190056079697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P6369416190056079697

namespace A182082

/-- `∑[ceil(∏{e}[(n+1)², #+1]/2)]` -/
def P6369416190056079697.Spec : Prop :=
  ∀ n, P6369416190056079697.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P1655623960697539980

`∑[A001057(∏{e}[∑[2*n]+n+1, #+1])]`
-/

namespace A182082.P1655623960697539980
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P1655623960697539980

namespace A182082

/-- `∑[A001057(∏{e}[∑[2*n]+n+1, #+1])]` -/
def P1655623960697539980.Spec : Prop :=
  ∀ n, P1655623960697539980.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P10204160206512261925

`∑[ceil(A000005((n+1)²)/2)]`
-/

namespace A182082.P10204160206512261925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 ((n + 1) ^ 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P10204160206512261925

namespace A182082

/-- `∑[ceil(A000005((n+1)²)/2)]` -/
def P10204160206512261925.Spec : Prop :=
  ∀ n, P10204160206512261925.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P6599463219008668450

`∑[(A000005(∑[2*n+1])+1)/2]`
-/

namespace A182082.P6599463219008668450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (∑ j ∈ Finset.range (n + 1), f2 j) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P6599463219008668450

namespace A182082

/-- `∑[(A000005(∑[2*n+1])+1)/2]` -/
def P6599463219008668450.Spec : Prop :=
  ∀ n, P6599463219008668450.a n = (A182082 (n + 1) : ℚ)

end A182082

/-! ## A182082.P17845609552767422846

`∑[A028242(A000005((n+1)²)+2)]`
-/

namespace A182082.P17845609552767422846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000005 ((n + 1) ^ 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P17845609552767422846

namespace A182082

/-- `∑[A028242(A000005((n+1)²)+2)]` -/
def P17845609552767422846.Spec : Prop :=
  ∀ n, P17845609552767422846.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P7528623067130905040

`∑[A038548((n+1)²)]`
-/

namespace A182082.P7528623067130905040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P7528623067130905040

namespace A182082

/-- `∑[A038548((n+1)²)]` -/
def P7528623067130905040.Spec : Prop :=
  ∀ n, P7528623067130905040.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P3132529234250874509

`∑[A033831((n+1)²)+1]`
-/

namespace A182082.P3132529234250874509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P3132529234250874509

namespace A182082

/-- `∑[A033831((n+1)²)+1]` -/
def P3132529234250874509.Spec : Prop :=
  ∀ n, P3132529234250874509.a n = A182082 (n + 1)

end A182082

/-! ## A182082.P1592740123280788746

`∑[A056924((n+1)²)+1]`
-/

namespace A182082.P1592740123280788746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182082.P1592740123280788746

namespace A182082

/-- `∑[A056924((n+1)²)+1]` -/
def P1592740123280788746.Spec : Prop :=
  ∀ n, P1592740123280788746.a n = A182082 (n + 1)

end A182082

/-!
# A182083: Number of cocyclic Hadamard matrices over Z_(2*n+1) X Z^2_2.

The programs for A182083, there is no canonical definition to state claims against.
-/

/-! ## A182083.P10635996161276020005

`A222866(A095678(n+1))`
-/

namespace A182083.P10635996161276020005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222866 (A095678 (n + 1)).toNat

end

end A182083.P10635996161276020005

/-!
# A182084: a(n) = 3*n - n/p, where p is the smallest prime dividing n.

The programs for A182084, there is no canonical definition to state claims against.
-/

/-! ## A182084.P18102455415669275859

`3*(n+2)-A032742(n+2)`
-/

namespace A182084.P18102455415669275859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - A032742 (n + 2)

end

end A182084.P18102455415669275859

/-! ## A182084.P11786629704402835651

`4*(n+2)-A338281(n+2)`
-/

namespace A182084.P11786629704402835651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 2) : ℤ) - A338281 (n + 2)

end

end A182084.P11786629704402835651

/-! ## A182084.P8524257185201334585

`3*n+5-A089196(n+1)`
-/

namespace A182084.P8524257185201334585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) - A089196 (n + 1)

end

end A182084.P8524257185201334585

/-! ## A182084.P16801171208117745715

`(n+2)*(3-1/A020639(n+2))`
-/

namespace A182084.P16801171208117745715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (3 - 1 / (A020639 (n + 2) : ℚ))

end

end A182084.P16801171208117745715

/-! ## A182084.P8457805795454511306

`2*(n+2)+A060681(n+2)`
-/

namespace A182084.P8457805795454511306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) + A060681 (n + 2)

end

end A182084.P8457805795454511306

/-! ## A182084.P8241919627231353646

`a(n-1)+3-Δ[A032742(n+1)]` with `a(0)=5`
-/

namespace A182084.P8241919627231353646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 3 - (f1 (n + 1) - f1 n)

end

end A182084.P8241919627231353646

/-! ## A182084.P13304095476764829210

`A060681(n+2)+Δ[A028387(n)]`
-/

namespace A182084.P13304095476764829210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) + (f1 (n + 1) - f1 n)

end

end A182084.P13304095476764829210

/-! ## A182084.P5648378635285965491

`A060681(n+2)+Δ[A028552(n)]`
-/

namespace A182084.P5648378635285965491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) + (f1 (n + 1) - f1 n)

end

end A182084.P5648378635285965491

/-! ## A182084.P15814332563613375263

`A060681(n+2)+A004277(n+2)`
-/

namespace A182084.P15814332563613375263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) + A004277 (n + 2)

end

end A182084.P15814332563613375263

/-! ## A182084.P432056170919961289

`A242992(n+3)+2*n+3`
-/

namespace A182084.P432056170919961289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242992 (n + 3) + (2 * n + 3 : ℤ)

end

end A182084.P432056170919961289

/-!
# A182087: Carmichael numbers of the form C = (30n-p)*(60n-(2p+1))*(90n-(3p+2)), where n is a natural number and p, 2p+1, 3p+2 are all three prime numbers.

The programs for A182087, there is no canonical definition to state claims against.
-/

/-! ## A182087.P12157236812379741881

`∩[A002997(n+1), A011199(A008851(n+1))]`
-/

namespace A182087.P12157236812379741881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (A008851 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182087.P12157236812379741881

/-! ## A182087.P12840453703112321625

`∩[A083732(n+1), A011199(n)]`
-/

namespace A182087.P12840453703112321625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182087.P12840453703112321625

/-! ## A182087.P15031739844441171277

`∩[A083737(n+1), A011199(n)]`
-/

namespace A182087.P15031739844441171277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182087.P15031739844441171277

/-!
# A182091: Numbers n such that (n-1)*n^2/2-1 is prime.

The programs for A182091, there is no canonical definition to state claims against.
-/

/-! ## A182091.P4834159133042043774

`eq[1, ∑{e}[n*C(n, 2)-1, #]]`
-/

namespace A182091.P4834159133042043774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose n 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182091.P4834159133042043774

/-! ## A182091.P17164634201074472377

`eq[2, ∑{e}[(1-n)*n²+2, #]]`
-/

namespace A182091.P17164634201074472377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (n ^ 2 : ℤ) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182091.P17164634201074472377

/-! ## A182091.P12234486674452860315

`eq[1, A001222(abs(n*C(n, 2)-1))]`
-/

namespace A182091.P12234486674452860315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(n * Nat.choose n 2 : ℤ) - 1|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182091.P12234486674452860315

/-!
# A182092: Primes in A182040.

The programs for A182092, there is no canonical definition to state claims against.
-/

/-! ## A182092.P18098383058242119123

`p?[A182040(n+1)]`
-/

namespace A182092.P18098383058242119123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182092.P18098383058242119123

/-! ## A182092.P9249805625960985243

`record[p?[A182040(A331300(n))]]`
-/

namespace A182092.P9249805625960985243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182040 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182092.P9249805625960985243

/-! ## A182092.P1531145447994992719

`record[p?[A182040(A291769(n))]]`
-/

namespace A182092.P1531145447994992719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182040 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182092.P1531145447994992719

/-! ## A182092.P10838858453974103910

`p?[A057427(n)*A182040(A028310(n))]`
-/

namespace A182092.P10838858453974103910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A182040 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182092.P10838858453974103910

/-! ## A182092.P2984130589524268128

`record[p?[A182040(A065648(n))]]`
-/

namespace A182092.P2984130589524268128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182040 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182092.P2984130589524268128

/-!
# A182093: Partial sums of A005590.

The programs for A182093, the canonical program `A182093.P17307292128728891994` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182093 has offset 0).

The definition of A182093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182093.P17307292128728891994

`∑[A005590(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182093

/-- `∑[A005590(n)]` -/
def P17307292128728891994.Spec : Prop :=
  ∀ n, P17307292128728891994.a n = A182093 n

theorem P17307292128728891994.correct : P17307292128728891994.Spec := by
  intro n
  simp only [A182093]

end A182093

/-! ## A182093.P11366636382983622831

`∑[∑[A281048(n+1)]-A281048(n+1)]`
-/

namespace A182093.P11366636382983622831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281048 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A281048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P11366636382983622831

namespace A182093

/-- `∑[∑[A281048(n+1)]-A281048(n+1)]` -/
def P11366636382983622831.Spec : Prop :=
  ∀ n, P11366636382983622831.a n = A182093 n

end A182093

/-! ## A182093.P16086928976799239605

`∑[A145865(A122155(n))]`
-/

namespace A182093.P16086928976799239605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A122155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P16086928976799239605

namespace A182093

/-- `∑[A145865(A122155(n))]` -/
def P16086928976799239605.Spec : Prop :=
  ∀ n, P16086928976799239605.a n = A182093 n

end A182093

/-! ## A182093.P13627175364743685706

`∑[A145865(A054429(n+1)+2)]`
-/

namespace A182093.P13627175364743685706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A054429 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P13627175364743685706

namespace A182093

/-- `∑[A145865(A054429(n+1)+2)]` -/
def P13627175364743685706.Spec : Prop :=
  ∀ n, P13627175364743685706.a n = A182093 n

end A182093

/-! ## A182093.P16840328806188597209

`A005590(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A182093.P16840328806188597209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005590 (2 * n) + a (n - 1)

end

end A182093.P16840328806188597209

namespace A182093

/-- `A005590(2*n)+a(n-1)` -/
def P16840328806188597209.Spec : Prop :=
  ∀ n, P16840328806188597209.a n = A182093 n

end A182093

/-! ## A182093.P4045613008727169782

`∑[A281048(2*(n+1))]`
-/

namespace A182093.P4045613008727169782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281048 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P4045613008727169782

namespace A182093

/-- `∑[A281048(2*(n+1))]` -/
def P4045613008727169782.Spec : Prop :=
  ∀ n, P4045613008727169782.a n = A182093 n

end A182093

/-!
# A182094: Total area of the bounding boxes of all integer partitions of n.

The programs for A182094, there is no canonical definition to state claims against.
-/

/-! ## A182094.P9234859731403490492

`A188814(n)+A066186(n)`
-/

namespace A182094.P9234859731403490492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188814 n + A066186 n

end

end A182094.P9234859731403490492

/-! ## A182094.P4098818149098425972

`A188814(n)+n*A000041(n)`
-/

namespace A182094.P4098818149098425972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188814 n + (n : ℤ) * A000041 n

end

end A182094.P4098818149098425972

/-! ## A182094.P15598270971801229513

`A188814(n)+A220909(n)/2`
-/

namespace A182094.P15598270971801229513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188814 n : ℚ) + (A220909 n : ℚ) / 2

end

end A182094.P15598270971801229513

/-! ## A182094.P1826163150902662055

`A296010(n)-A220907(A028310(n))`
-/

namespace A182094.P1826163150902662055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - A220907 (A028310 n).toNat

end

end A182094.P1826163150902662055

/-! ## A182094.P3523712694775102317

`A103628(n)+A194544(n)+A188814(n)`
-/

namespace A182094.P3523712694775102317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 n + (A194544 n + A188814 n)

end

end A182094.P3523712694775102317

/-! ## A182094.P7384559057784286052

`A188814(n)-(A066186(n)-A220909(n))`
-/

namespace A182094.P7384559057784286052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188814 n - (A066186 n - A220909 n)

end

end A182094.P7384559057784286052

/-! ## A182094.P7797644444794787231

`A182707(n+1)+A188814(n)-A182709(n+1)`
-/

namespace A182094.P7797644444794787231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) + (A188814 n - A182709 (n + 1))

end

end A182094.P7797644444794787231

/-! ## A182094.P9321797299409148478

`A188814(n)+A182700(A000217(n))`
-/

namespace A182094.P9321797299409148478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188814 n + A182700 (A000217 n).toNat

end

end A182094.P9321797299409148478

/-! ## A182094.P6689339428827031189

`A213191(A034856(n+1))+A188814(n)`
-/

namespace A182094.P6689339428827031189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A034856 (n + 1)).toNat + A188814 n

end

end A182094.P6689339428827031189

/-!
# A182095: Number of composite numbers between 2^n and 2^(n+1).

The programs for A182095, there is no canonical definition to state claims against.
-/

/-! ## A182095.P3012953997944249387

`or(1, 2^n-1)-A036378(n)`
-/

namespace A182095.P3012953997944249387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) - A036378 n

end

end A182095.P3012953997944249387

/-! ## A182095.P6505690888837418066

`or(1, 2^n-1)-Δ[A007053(n)]`
-/

namespace A182095.P6505690888837418066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) - (f1 (n + 1) - f1 n)

end

end A182095.P6505690888837418066

/-! ## A182095.P14334342037104179521

`A255047(n)-A036378(n)`
-/

namespace A182095.P14334342037104179521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A036378 n

end

end A182095.P14334342037104179521

/-! ## A182095.P494584315907383524

`Δ[A132045(n)-A007053(n)]`
-/

namespace A182095.P494584315907383524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 n - A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182095.P494584315907383524

/-! ## A182095.P901774420815029880

`A255047(n)-(A007053(n+1)-A007053(n))`
-/

namespace A182095.P901774420815029880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - (A007053 (n + 1) - A007053 n)

end

end A182095.P901774420815029880

/-! ## A182095.P2645868190299699264

`A255047(n)-(Δ[A024622(n)]-A036380(n+1))`
-/

namespace A182095.P2645868190299699264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - (f1 (n + 1) - f1 n - A036380 (n + 1))

end

end A182095.P2645868190299699264

/-!
# A182097: Expansion of 1/(1-x^2-x^3).

The programs for A182097, the canonical program `A182097.P4426029162727447789` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182097 has offset 0).

The definition of A182097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3))` (program `A182097.P4426029162727447789`, by `A182097.P4426029162727447789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182097.P4426029162727447789

`ogf(1/(1-x^2-x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182097

/-- `ogf(1/(1-x^2-x^3))` -/
def P4426029162727447789.Spec : Prop :=
  ∀ n, P4426029162727447789.a n = A182097 n

theorem P4426029162727447789.correct : P4426029162727447789.Spec := by
  intro n
  simp only [A182097]

end A182097

/-! ## A182097.P4652543691351148105

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A182097.P4652543691351148105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) + a (n - 3)

end

end A182097.P4652543691351148105

namespace A182097

/-- `a(n-2)+a(n-3)` -/
def P4652543691351148105.Spec : Prop :=
  ∀ n, (P4652543691351148105.a n : ℤ) = A182097 n

end A182097

/-! ## A182097.P7610967987304599749

`A000931(n+3)`
-/

namespace A182097.P7610967987304599749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 3)

end

end A182097.P7610967987304599749

namespace A182097

/-- `A000931(n+3)` -/
def P7610967987304599749.Spec : Prop :=
  ∀ n, P7610967987304599749.a n = A182097 n

end A182097

/-! ## A182097.P6108017773995920738

`(A001608(n)-A000931(n))/2`
-/

namespace A182097.P6108017773995920738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001608 n - A000931 n : ℚ) / 2

end

end A182097.P6108017773995920738

namespace A182097

/-- `(A001608(n)-A000931(n))/2` -/
def P6108017773995920738.Spec : Prop :=
  ∀ n, P6108017773995920738.a n = (A182097 n : ℚ)

end A182097

/-! ## A182097.P4731917445751947324

`a(n-2)-floor(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A182097.P4731917445751947324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A182097.P4731917445751947324

namespace A182097

/-- `a(n-2)-floor(-a(n-3))` -/
def P4731917445751947324.Spec : Prop :=
  ∀ n, P4731917445751947324.a n = A182097 n

end A182097

/-! ## A182097.P16402849581054267271

`a(n-2)-ceil(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A182097.P16402849581054267271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A182097.P16402849581054267271

namespace A182097

/-- `a(n-2)-ceil(-a(n-3))` -/
def P16402849581054267271.Spec : Prop :=
  ∀ n, P16402849581054267271.a n = A182097 n

end A182097

/-! ## A182097.P3241268448399015727

`a(n-2)-round(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A182097.P3241268448399015727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A182097.P3241268448399015727

namespace A182097

/-- `a(n-2)-round(-a(n-3))` -/
def P3241268448399015727.Spec : Prop :=
  ∀ n, P3241268448399015727.a n = A182097 n

end A182097

/-! ## A182097.P16036360229298467685

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A182097.P16036360229298467685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A182097.P16036360229298467685

namespace A182097

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P16036360229298467685.Spec : Prop :=
  ∀ n, P16036360229298467685.a n = A182097 n

end A182097

/-! ## A182097.P15178464018070447715

`∑[A078027(n)]`
-/

namespace A182097.P15178464018070447715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182097.P15178464018070447715

namespace A182097

/-- `∑[A078027(n)]` -/
def P15178464018070447715.Spec : Prop :=
  ∀ n, P15178464018070447715.a n = A182097 n

end A182097

/-! ## A182097.P3196193671882242920

`A052954(n)-1`
-/

namespace A182097.P3196193671882242920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 n - 1

end

end A182097.P3196193671882242920

namespace A182097

/-- `A052954(n)-1` -/
def P3196193671882242920.Spec : Prop :=
  ∀ n, P3196193671882242920.a n = A182097 n

end A182097

/-! ## A182097.P11669271165040398905

`A078027(n+5)`
-/

namespace A182097.P11669271165040398905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 5)

end

end A182097.P11669271165040398905

namespace A182097

/-- `A078027(n+5)` -/
def P11669271165040398905.Spec : Prop :=
  ∀ n, P11669271165040398905.a n = A182097 n

end A182097

/-! ## A182097.P1182913466714890449

`A133034(n+7)`
-/

namespace A182097.P1182913466714890449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 7)

end

end A182097.P1182913466714890449

namespace A182097

/-- `A133034(n+7)` -/
def P1182913466714890449.Spec : Prop :=
  ∀ n, P1182913466714890449.a n = A182097 n

end A182097

/-! ## A182097.P3993127162589663337

`abs(A124745(n+5))`
-/

namespace A182097.P3993127162589663337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 (n + 5)|

end

end A182097.P3993127162589663337

namespace A182097

/-- `abs(A124745(n+5))` -/
def P3993127162589663337.Spec : Prop :=
  ∀ n, P3993127162589663337.a n = A182097 n

end A182097

/-! ## A182097.P17642478447590224636

`A114775(A168205(n+1))`
-/

namespace A182097.P17642478447590224636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A168205 (n + 1)).toNat

end

end A182097.P17642478447590224636

namespace A182097

/-- `A114775(A168205(n+1))` -/
def P17642478447590224636.Spec : Prop :=
  ∀ n, P17642478447590224636.a n = A182097 n

end A182097

/-! ## A182097.P2717215958623684091

`A114775(A042963(n+2))`
-/

namespace A182097.P2717215958623684091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A042963 (n + 2)).toNat

end

end A182097.P2717215958623684091

namespace A182097

/-- `A114775(A042963(n+2))` -/
def P2717215958623684091.Spec : Prop :=
  ∀ n, P2717215958623684091.a n = A182097 n

end A182097

/-! ## A182097.P15597818492740238268

`A114775(A047425(n+2))`
-/

namespace A182097.P15597818492740238268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A047425 (n + 2)).toNat

end

end A182097.P15597818492740238268

namespace A182097

/-- `A114775(A047425(n+2))` -/
def P15597818492740238268.Spec : Prop :=
  ∀ n, P15597818492740238268.a n = A182097 n

end A182097

/-! ## A182097.P11547151758596517742

`A114775(A047431(n+2))`
-/

namespace A182097.P11547151758596517742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A047431 (n + 2)).toNat

end

end A182097.P11547151758596517742

namespace A182097

/-- `A114775(A047431(n+2))` -/
def P11547151758596517742.Spec : Prop :=
  ∀ n, P11547151758596517742.a n = A182097 n

end A182097

/-! ## A182097.P5745475154918401026

`A114775(A074231(n+2))`
-/

namespace A182097.P5745475154918401026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A074231 (n + 2)).toNat

end

end A182097.P5745475154918401026

namespace A182097

/-- `A114775(A074231(n+2))` -/
def P5745475154918401026.Spec : Prop :=
  ∀ n, P5745475154918401026.a n = A182097 n

end A182097

/-! ## A182097.P2974601866307524925

`A114775(A154708(n+2))`
-/

namespace A182097.P2974601866307524925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A154708 (n + 2)).toNat

end

end A182097.P2974601866307524925

namespace A182097

/-- `A114775(A154708(n+2))` -/
def P2974601866307524925.Spec : Prop :=
  ∀ n, P2974601866307524925.a n = A182097 n

end A182097

/-! ## A182097.P1156209709371363917

`A114775(A338062(n+2))`
-/

namespace A182097.P1156209709371363917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A338062 (n + 2)).toNat

end

end A182097.P1156209709371363917

namespace A182097

/-- `A114775(A338062(n+2))` -/
def P1156209709371363917.Spec : Prop :=
  ∀ n, P1156209709371363917.a n = A182097 n

end A182097

/-!
# A182099: Total area of the largest inscribed rectangles of all integer partitions of n.

The programs for A182099, there is no canonical definition to state claims against.
-/

/-! ## A182099.P11072369148271805388

`A116939(A000217(n)*A174465(n))`
-/

namespace A182099.P11072369148271805388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A000217 n * A174465 n).toNat

end

end A182099.P11072369148271805388

