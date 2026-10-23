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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A369700: Möbius transform of reduced totient function (A002322).

The programs for A369700, there is no canonical definition to state claims against.
-/

/-! ## A369700.P4844663788312283550

`∑{d}[n+1, A002322(#)*A008683((n+1)/#)]`
-/

namespace A369700.P4844663788312283550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002322 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369700.P4844663788312283550

/-! ## A369700.P9175055646020870146

`∑{d}[n+1, A007427(#)*A141258((n+1)/#)]`
-/

namespace A369700.P9175055646020870146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A141258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369700.P9175055646020870146

/-! ## A369700.P14090329604472872330

`∑{d}[n+1, A046692(#)*A331314((n+1)/#)]`
-/

namespace A369700.P14090329604472872330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A331314 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369700.P14090329604472872330

/-! ## A369700.P8222933451401804489

`∑{d}[n+1, A055615(#)*A369601((n+1)/#)]`
-/

namespace A369700.P8222933451401804489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A369601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369700.P8222933451401804489

/-!
# A369701: AGM transform of the numbers of partitions (A000041) of the positive numbers.

The programs for A369701, there is no canonical definition to state claims against.
-/

/-! ## A369701.P4189797302210194477

`A026905(n+1)^(n+1)-A000312(n+1)*A058694(n+1)`
-/

namespace A369701.P4189797302210194477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) ^ (n + 1) - A000312 (n + 1) * A058694 (n + 1)

end

end A369701.P4189797302210194477

/-!
# A369704: Number of pairs (p,q) of partitions of n such that the set of parts in q is a subset of the set of parts in p.

The programs for A369704, there is no canonical definition to state claims against.
-/

/-! ## A369704.P1458641905919754712

`A000041(n)+A369707(n)`
-/

namespace A369704.P1458641905919754712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A369707 n

end

end A369704.P1458641905919754712

/-! ## A369704.P3544961524991334810

`A369910(n)+A369695(n)`
-/

namespace A369704.P3544961524991334810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369910 n + A369695 n

end

end A369704.P3544961524991334810

/-! ## A369704.P445314407940603389

`A369910(n)+2*A369696(n)-A000041(n)`
-/

namespace A369704.P445314407940603389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369910 n + (2 * A369696 n - A000041 n)

end

end A369704.P445314407940603389

/-! ## A369704.P3288203743486049403

`A369910(n)+A256193(∑[n])+2*A369697(n)`
-/

namespace A369704.P3288203743486049403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369910 n + (A256193 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * A369697 n)

end

end A369704.P3288203743486049403

/-! ## A369704.P17850303723856065344

`A151661(A003242(n))+A000010(n+1)`
-/

namespace A369704.P17850303723856065344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151661 (A003242 n).toNat + A000010 (n + 1)

end

end A369704.P17850303723856065344

/-!
# A369706: Maximal coefficient of (1 + x^2) * (1 + x^3) * (1 + x^4) * ... * (1 + x^n).

The programs for A369706, there is no canonical definition to state claims against.
-/

/-! ## A369706.P3435756700032231092

`A342521(ceil(A000213(n)/(n+1)))`
-/

namespace A369706.P3435756700032231092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342521 ⌈(A000213 n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A369706.P3435756700032231092

/-! ## A369706.P15424828082241972037

`ceil(A293348(n+1)/A006355(n+3))`
-/

namespace A369706.P15424828082241972037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293348 (n + 1) : ℚ) / (A006355 (n + 3) : ℚ)⌉

end

end A369706.P15424828082241972037

/-! ## A369706.P15440657754459674515

`ceil(A324843(2*n+5)/A128309(2*n+5))`
-/

namespace A369706.P15440657754459674515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324843 (2 * n + 5) : ℚ) / (A128309 (2 * n + 5) : ℚ)⌉

end

end A369706.P15440657754459674515

/-! ## A369706.P1381200300421972088

`A110654(A025591(n)%A051825(n+4))`
-/

namespace A369706.P1381200300421972088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A025591 n) (A051825 (n + 4))).toNat

end

end A369706.P1381200300421972088

/-! ## A369706.P17004826510058196882

`A110654(A025591(n))%A304904(3*n+5)`
-/

namespace A369706.P17004826510058196882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A025591 n).toNat) (A304904 (3 * n + 5))

end

end A369706.P17004826510058196882

/-!
# A369707: Number of pairs (p,q) of distinct partitions of n such that the set of parts in q is a subset of the set of parts in p.

The programs for A369707, there is no canonical definition to state claims against.
-/

/-! ## A369707.P6715088048991069207

`A369704(n)-A000041(n)`
-/

namespace A369707.P6715088048991069207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369704 n - A000041 n

end

end A369707.P6715088048991069207

/-! ## A369707.P12230093237249017651

`A369910(n)+2*A369697(n)`
-/

namespace A369707.P12230093237249017651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369910 n + 2 * A369697 n

end

end A369707.P12230093237249017651

/-! ## A369707.P4810086805951996835

`A369704(n)-A114099(9*n)`
-/

namespace A369707.P4810086805951996835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369704 n - A114099 (9 * n)

end

end A369707.P4810086805951996835

/-! ## A369707.P11506580066612598803

`A355390(n)+A369704(n)-A001255(n)`
-/

namespace A369707.P11506580066612598803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355390 n + (A369704 n - A001255 n)

end

end A369707.P11506580066612598803

/-! ## A369707.P5368815482167808834

`A369704(n)-A133042(n)/A001255(n)`
-/

namespace A369707.P5368815482167808834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369704 n : ℚ) - (A133042 n : ℚ) / (A001255 n : ℚ)

end

end A369707.P5368815482167808834

/-!
# A369709: Maximal coefficient of (1 + x)^3 * (1 + x^2)^3 * (1 + x^3)^3 * ... * (1 + x^n)^3.

The programs for A369709, there is no canonical definition to state claims against.
-/

/-! ## A369709.P4072210899787903777

`A241086(A301151(n+1))`
-/

namespace A369709.P4072210899787903777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (A301151 (n + 1)).toNat

end

end A369709.P4072210899787903777

/-!
# A369710: Maximal coefficient of (1 - x)^2 * (1 - x^2)^2 * (1 - x^3)^2 * ... * (1 - x^n)^2.

The programs for A369710, there is no canonical definition to state claims against.
-/

/-! ## A369710.P9056044646829732740

`A008627(n)*A056624(A000244(n))`
-/

namespace A369710.P9056044646829732740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n * A056624 (A000244 n).toNat

end

end A369710.P9056044646829732740

/-!
# A369711: Maximum coefficient of (1 - x)^3 * (1 - x^2)^3 * (1 - x^3)^3 * ... * (1 - x^n)^3.

The programs for A369711, there is no canonical definition to state claims against.
-/

/-! ## A369711.P7381126713696259890

`A369983(n^(∑{digits}[n, 10^#]%9))`
-/

namespace A369711.P7381126713696259890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369983 (n ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A369711.P7381126713696259890

/-! ## A369711.P10259162557184943232

`A369983(A002998(n))`
-/

namespace A369711.P10259162557184943232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369983 (A002998 n).toNat

end

end A369711.P10259162557184943232

/-! ## A369711.P12649267465767700122

`A369983(A023106(n))`
-/

namespace A369711.P12649267465767700122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369983 (A023106 n).toNat

end

end A369711.P12649267465767700122

/-! ## A369711.P4830207664767444212

`A369983(A024659(n))`
-/

namespace A369711.P4830207664767444212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369983 (A024659 n).toNat

end

end A369711.P4830207664767444212

/-! ## A369711.P14535604709346476906

`A369983(A024660(n))`
-/

namespace A369711.P14535604709346476906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369983 (A024660 n).toNat

end

end A369711.P14535604709346476906

/-!
# A369712: Maximal coefficient of (1 + x) * (1 + x^2)^2 * (1 + x^3)^3 * ... * (1 + x^n)^n.

The programs for A369712, there is no canonical definition to state claims against.
-/

/-! ## A369712.P2546830533444046812

`A105025(∑[A000700(abs(3*2^n-4))])`
-/

namespace A369712.P2546830533444046812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 |(3 * 2 ^ n : ℤ) - 4|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369712.P2546830533444046812

/-!
# A369713: a(n) is the sum over all multiplicative partitions k of n of the absolute value of the Möbius function evaluated at k,n in the poset of multiplicative partitions of n under refinement.

The programs for A369713, there is no canonical definition to state claims against.
-/

/-! ## A369713.P467284601676815961

`A238571(A001055(n+1)%A007658(n+1))`
-/

namespace A369713.P467284601676815961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238571 (Int.tmod (A001055 (n + 1)) (A007658 (n + 1))).toNat

end

end A369713.P467284601676815961

/-! ## A369713.P8488483355506220279

`A325325(A001055(n+1))%A057468(n+1)`
-/

namespace A369713.P8488483355506220279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325325 (A001055 (n + 1)).toNat) (A057468 (n + 1))

end

end A369713.P8488483355506220279

/-! ## A369713.P7997665015195078535

`gcd(A015818(2*n), A101881(A339846(n+1)))`
-/

namespace A369713.P7997665015195078535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015818 (2 * n)) (A101881 (A339846 (n + 1)).toNat)

end

end A369713.P7997665015195078535

/-! ## A369713.P10101995503895050928

`A360617(3*(n+1))+A320322(A001055(n+1))`
-/

namespace A369713.P10101995503895050928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (3 * (n + 1)) + A320322 (A001055 (n + 1)).toNat

end

end A369713.P10101995503895050928

/-! ## A369713.P12802790017725756362

`A325325(A317791(n+1)%A337983(2*(n+1)))`
-/

namespace A369713.P12802790017725756362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 (Int.tmod (A317791 (n + 1)) (A337983 (2 * (n + 1)))).toNat

end

end A369713.P12802790017725756362

/-!
# A369715: Number of digits of phi (the golden ratio) correctly approximated by Fibonacci(n+1) / Fibonacci(n).

The programs for A369715, there is no canonical definition to state claims against.
-/

/-! ## A369715.P1192681502629947784

`A318058(n+1)+1`
-/

namespace A369715.P1192681502629947784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318058 (n + 1) + 1

end

end A369715.P1192681502629947784

/-!
# A369716: The number of divisors of the smallest powerful number that is a multiple of n.

The programs for A369716, the canonical program `A369716.P4935667274442389698` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369716 has offset 1).

The definition of A369716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369716.P4935667274442389698

`A000005(A197863(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369716

/-- `A000005(A197863(n+1))` -/
def P4935667274442389698.Spec : Prop :=
  ∀ n, P4935667274442389698.a n = A369716 (n + 1)

theorem P4935667274442389698.correct : P4935667274442389698.Spec := by
  intro n
  simp only [A369716, Nat.add_sub_cancel]

end A369716

/-! ## A369716.P9824664809553665456

`∏{e}[n+1, ceil(2/#+#)]`
-/

namespace A369716.P9824664809553665456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ) + (Nat.factorization (f1 n) p : ℚ)⌉

end

end A369716.P9824664809553665456

namespace A369716

/-- `∏{e}[n+1, ceil(2/#+#)]` -/
def P9824664809553665456.Spec : Prop :=
  ∀ n, P9824664809553665456.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P2845052710501599486

`A000005(A046523(n+1)²/A212173(n+1))`
-/

namespace A369716.P2845052710501599486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A046523 (n + 1) ^ 2 : ℚ) / (A212173 (n + 1) : ℚ))).toNat

end

end A369716.P2845052710501599486

namespace A369716

/-- `A000005(A046523(n+1)²/A212173(n+1))` -/
def P2845052710501599486.Spec : Prop :=
  ∀ n, P2845052710501599486.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P10431519849880870764

`A000005(A046523(n+1)^A323236(2*(n+2))/A212173(n+1))`
-/

namespace A369716.P10431519849880870764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) ^ (A323236 (2 * (n + 2)) : ℤ) / (A212173 (n + 1) : ℚ))).toNat

end

end A369716.P10431519849880870764

namespace A369716

/-- `A000005(A046523(n+1)^A323236(2*(n+2))/A212173(n+1))` -/
def P10431519849880870764.Spec : Prop :=
  ∀ n, P10431519849880870764.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P13259466759771612063

`A000005(lcm(n+1, ∏{p}[n+1, #²]))`
-/

namespace A369716.P13259466759771612063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A369716.P13259466759771612063

namespace A369716

/-- `A000005(lcm(n+1, ∏{p}[n+1, #²]))` -/
def P13259466759771612063.Spec : Prop :=
  ∀ n, P13259466759771612063.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P3646982092213434425

`A000005((n+1)/∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #²])`
-/

namespace A369716.P3646982092213434425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℚ))).toNat

end

end A369716.P3646982092213434425

namespace A369716

/-- `A000005((n+1)/∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #²])` -/
def P3646982092213434425.Spec : Prop :=
  ∀ n, P3646982092213434425.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P8347804150036703876

`A000005((n+1)*A055231(n+1))`
-/

namespace A369716.P8347804150036703876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A369716.P8347804150036703876

namespace A369716

/-- `A000005((n+1)*A055231(n+1))` -/
def P8347804150036703876.Spec : Prop :=
  ∀ n, P8347804150036703876.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P14005540875768886045

`A366901(A365683((n+1)²))`
-/

namespace A369716.P14005540875768886045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (A365683 ((n + 1) ^ 2)).toNat

end

end A369716.P14005540875768886045

namespace A369716

/-- `A366901(A365683((n+1)²))` -/
def P14005540875768886045.Spec : Prop :=
  ∀ n, P14005540875768886045.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P5811256054752211742

`A357669((n+1)*A055231(n+1))`
-/

namespace A369716.P5811256054752211742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A369716.P5811256054752211742

namespace A369716

/-- `A357669((n+1)*A055231(n+1))` -/
def P5811256054752211742.Spec : Prop :=
  ∀ n, P5811256054752211742.a n = A369716 (n + 1)

end A369716

/-! ## A369716.P5105571380700237673

`A366901((n+1)*A350390(n+1))`
-/

namespace A369716.P5105571380700237673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 ((n + 1 : ℤ) * A350390 (n + 1)).toNat

end

end A369716.P5105571380700237673

namespace A369716

/-- `A366901((n+1)*A350390(n+1))` -/
def P5105571380700237673.Spec : Prop :=
  ∀ n, P5105571380700237673.a n = A369716 (n + 1)

end A369716

/-!
# A369717: The sum of divisors of the smallest powerful number that is a multiple of n.

The programs for A369717, the canonical program `A369717.P11411986062886320830` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369717 has offset 1).

The definition of A369717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197863, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369717.P11411986062886320830

`A000203(A197863(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369717

/-- `A000203(A197863(n+1))` -/
def P11411986062886320830.Spec : Prop :=
  ∀ n, P11411986062886320830.a n = A369717 (n + 1)

theorem P11411986062886320830.correct : P11411986062886320830.Spec := by
  intro n
  simp only [A369717, Nat.add_sub_cancel]

end A369717

/-! ## A369717.P2449495780898255145

`∑{d}[lcm(n+1, ∏{p}[n+1, #²]), #]`
-/

namespace A369717.P2449495780898255145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A369717.P2449495780898255145

namespace A369717

/-- `∑{d}[lcm(n+1, ∏{p}[n+1, #²]), #]` -/
def P2449495780898255145.Spec : Prop :=
  ∀ n, (P2449495780898255145.a n : ℤ) = A369717 (n + 1)

end A369717

/-! ## A369717.P8091219357352226330

`A000203((n+1)*A055231(n+1))`
-/

namespace A369717.P8091219357352226330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A369717.P8091219357352226330

namespace A369717

/-- `A000203((n+1)*A055231(n+1))` -/
def P8091219357352226330.Spec : Prop :=
  ∀ n, P8091219357352226330.a n = A369717 (n + 1)

end A369717

/-! ## A369717.P9113629192774130338

`A000203(A062378(n+1)*A078615(n+1))`
-/

namespace A369717.P9113629192774130338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062378 (n + 1) * A078615 (n + 1)).toNat

end

end A369717.P9113629192774130338

namespace A369717

/-- `A000203(A062378(n+1)*A078615(n+1))` -/
def P9113629192774130338.Spec : Prop :=
  ∀ n, P9113629192774130338.a n = A369717 (n + 1)

end A369717

/-! ## A369717.P2452010460975487414

`A000203(lcm(A007947(n+1)², A242603(n+1)))`
-/

namespace A369717.P2452010460975487414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (A007947 (n + 1) ^ 2) (A242603 (n + 1)))

end

end A369717.P2452010460975487414

namespace A369717

/-- `A000203(lcm(A007947(n+1)², A242603(n+1)))` -/
def P2452010460975487414.Spec : Prop :=
  ∀ n, P2452010460975487414.a n = A369717 (n + 1)

end A369717

/-! ## A369717.P4375722034796468634

`A295294((n+1)*A055231(n+1))`
-/

namespace A369717.P4375722034796468634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A369717.P4375722034796468634

namespace A369717

/-- `A295294((n+1)*A055231(n+1))` -/
def P4375722034796468634.Spec : Prop :=
  ∀ n, P4375722034796468634.a n = A369717 (n + 1)

end A369717

/-!
# A369718: The sum of unitary divisors of the smallest powerful number that is a multiple of n.

The programs for A369718, the canonical program `A369718.P3306263792337587207` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369718 has offset 1).

The definition of A369718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369718.P3306263792337587207

`A034448(A197863(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369718

/-- `A034448(A197863(n+1))` -/
def P3306263792337587207.Spec : Prop :=
  ∀ n, P3306263792337587207.a n = A369718 (n + 1)

theorem P3306263792337587207.correct : P3306263792337587207.Spec := by
  intro n
  simp only [A369718, Nat.add_sub_cancel]

end A369718

/-! ## A369718.P16530112575577134757

`A091306(n+1)*A360720(n+1)`
-/

namespace A369718.P16530112575577134757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1) * A360720 (n + 1)

end

end A369718.P16530112575577134757

namespace A369718

/-- `A091306(n+1)*A360720(n+1)` -/
def P16530112575577134757.Spec : Prop :=
  ∀ n, P16530112575577134757.a n = A369718 (n + 1)

end A369718

/-! ## A369718.P11830495945769307114

`A034448(∑{d}[n+1, A349379(#)])*A091306(n+1)`
-/

namespace A369718.P11830495945769307114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (∑ d ∈ Nat.divisors (f1 n), A349379 d).toNat * A091306 (n + 1)

end

end A369718.P11830495945769307114

namespace A369718

/-- `A034448(∑{d}[n+1, A349379(#)])*A091306(n+1)` -/
def P11830495945769307114.Spec : Prop :=
  ∀ n, P11830495945769307114.a n = A369718 (n + 1)

end A369718

/-! ## A369718.P15470770996288420161

`A091306(n+1)*A365404(A057521(n+1)²)`
-/

namespace A369718.P15470770996288420161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1) * A365404 (A057521 (n + 1) ^ 2).toNat

end

end A369718.P15470770996288420161

namespace A369718

/-- `A091306(n+1)*A365404(A057521(n+1)²)` -/
def P15470770996288420161.Spec : Prop :=
  ∀ n, P15470770996288420161.a n = A369718 (n + 1)

end A369718

/-! ## A369718.P367355411809653668

`A034448(lcm(n+1, ∏{p}[n+1, #²]))`
-/

namespace A369718.P367355411809653668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A369718.P367355411809653668

namespace A369718

/-- `A034448(lcm(n+1, ∏{p}[n+1, #²]))` -/
def P367355411809653668.Spec : Prop :=
  ∀ n, P367355411809653668.a n = A369718 (n + 1)

end A369718

/-! ## A369718.P6479277978509680158

`A034448((n+1)/∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #²])`
-/

namespace A369718.P6479277978509680158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℚ))).toNat

end

end A369718.P6479277978509680158

namespace A369718

/-- `A034448((n+1)/∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #²])` -/
def P6479277978509680158.Spec : Prop :=
  ∀ n, P6479277978509680158.a n = A369718 (n + 1)

end A369718

/-! ## A369718.P8453231252722488202

`A345451((n+1)*∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])+1`
-/

namespace A369718.P8453231252722488202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)))).toNat + 1

end

end A369718.P8453231252722488202

namespace A369718

/-- `A345451((n+1)*∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])+1` -/
def P8453231252722488202.Spec : Prop :=
  ∀ n, P8453231252722488202.a n = A369718 (n + 1)

end A369718

/-! ## A369718.P775154579769113612

`A034448((n+1)*A055231(n+1))`
-/

namespace A369718.P775154579769113612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A369718.P775154579769113612

namespace A369718

/-- `A034448((n+1)*A055231(n+1))` -/
def P775154579769113612.Spec : Prop :=
  ∀ n, P775154579769113612.a n = A369718 (n + 1)

end A369718

/-!
# A369719: The number of divisors of the smallest cubefull number that is a multiple of n.

The programs for A369719, the canonical program `A369719.P18303552168383655355` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369719 has offset 1).

The definition of A369719 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369719.P18303552168383655355

`A000005(A356193(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A369719

/-- `A000005(A356193(n+1))` -/
def P18303552168383655355.Spec : Prop :=
  ∀ n, P18303552168383655355.a n = A369719 (n + 1)

theorem P18303552168383655355.correct : P18303552168383655355.Spec := by
  intro n
  simp only [A369719, Nat.add_sub_cancel]

end A369719

/-! ## A369719.P6662052040388284580

`∏{e}[n+1, ceil(3/#+#)]`
-/

namespace A369719.P6662052040388284580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈3 / (Nat.factorization (f1 n) p : ℚ) + (Nat.factorization (f1 n) p : ℚ)⌉

end

end A369719.P6662052040388284580

namespace A369719

/-- `∏{e}[n+1, ceil(3/#+#)]` -/
def P6662052040388284580.Spec : Prop :=
  ∀ n, P6662052040388284580.a n = A369719 (n + 1)

end A369719

/-! ## A369719.P12943065883663587806

`A000005(lcm(n+1, ∏{p}[n+1, #^3]))`
-/

namespace A369719.P12943065883663587806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3))

end

end A369719.P12943065883663587806

namespace A369719

/-- `A000005(lcm(n+1, ∏{p}[n+1, #^3]))` -/
def P12943065883663587806.Spec : Prop :=
  ∀ n, P12943065883663587806.a n = A369719 (n + 1)

end A369719

/-! ## A369719.P1597668442829174765

`A000005((n+1)*A360541(n+1))`
-/

namespace A369719.P1597668442829174765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A360541 (n + 1)).toNat

end

end A369719.P1597668442829174765

namespace A369719

/-- `A000005((n+1)*A360541(n+1))` -/
def P1597668442829174765.Spec : Prop :=
  ∀ n, P1597668442829174765.a n = A369719 (n + 1)

end A369719

/-! ## A369719.P2009543638830587104

`A000005(A356192(n+1)/A365685(n+1))`
-/

namespace A369719.P2009543638830587104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A356192 (n + 1) : ℚ) / (A365685 (n + 1) : ℚ))).toNat

end

end A369719.P2009543638830587104

namespace A369719

/-- `A000005(A356192(n+1)/A365685(n+1))` -/
def P2009543638830587104.Spec : Prop :=
  ∀ n, P2009543638830587104.a n = A369719 (n + 1)

end A369719

/-!
# A369720: The sum of divisors of the smallest cubefull number that is a multiple of n.

The programs for A369720, the canonical program `A369720.P12052647085879140276` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369720 has offset 1).

The definition of A369720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369720.P12052647085879140276

`A000203(A356193(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369720

/-- `A000203(A356193(n+1))` -/
def P12052647085879140276.Spec : Prop :=
  ∀ n, P12052647085879140276.a n = A369720 (n + 1)

theorem P12052647085879140276.correct : P12052647085879140276.Spec := by
  intro n
  simp only [A369720, Nat.add_sub_cancel]

end A369720

/-! ## A369720.P7595713687096699285

`∑{d}[lcm(n+1, ∏{p}[n+1, #^3]), #]`
-/

namespace A369720.P7595713687096699285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A369720.P7595713687096699285

namespace A369720

/-- `∑{d}[lcm(n+1, ∏{p}[n+1, #^3]), #]` -/
def P7595713687096699285.Spec : Prop :=
  ∀ n, (P7595713687096699285.a n : ℤ) = A369720 (n + 1)

end A369720

/-! ## A369720.P836374494679091801

`∑{d}[A055231(A350390(n+1))²*A366765(n+1), #]`
-/

namespace A369720.P836374494679091801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A350390 (n + 1)).toNat ^ 2 * A366765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A369720.P836374494679091801

namespace A369720

/-- `∑{d}[A055231(A350390(n+1))²*A366765(n+1), #]` -/
def P836374494679091801.Spec : Prop :=
  ∀ n, (P836374494679091801.a n : ℤ) = A369720 (n + 1)

end A369720

/-! ## A369720.P8155214652570338121

`A000203(lcm(n+1, ∏{p}[n+1, #^3]))`
-/

namespace A369720.P8155214652570338121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3))

end

end A369720.P8155214652570338121

namespace A369720

/-- `A000203(lcm(n+1, ∏{p}[n+1, #^3]))` -/
def P8155214652570338121.Spec : Prop :=
  ∀ n, P8155214652570338121.a n = A369720 (n + 1)

end A369720

/-! ## A369720.P14596271592742059866

`A369758(A187829(n+1))`
-/

namespace A369720.P14596271592742059866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369758 (A187829 (n + 1)).toNat

end

end A369720.P14596271592742059866

namespace A369720

/-- `A369758(A187829(n+1))` -/
def P14596271592742059866.Spec : Prop :=
  ∀ n, P14596271592742059866.a n = A369720 (n + 1)

end A369720

/-!
# A369721: The sum of unitary divisors of the smallest cubefull number that is a multiple of n.

The programs for A369721, the canonical program `A369721.P9851319542305346441` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369721 has offset 1).

The definition of A369721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369721.P9851319542305346441

`A034448(A356193(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369721

/-- `A034448(A356193(n+1))` -/
def P9851319542305346441.Spec : Prop :=
  ∀ n, P9851319542305346441.a n = A369721 (n + 1)

theorem P9851319542305346441.correct : P9851319542305346441.Spec := by
  intro n
  simp only [A369721, Nat.add_sub_cancel]

end A369721

/-! ## A369721.P7028808490147270957

`A115613((n+1)/∏{p}[n+1, gcd(n+1, #²)])+∏{p}[n+1, #^3+1]`
-/

namespace A369721.P7028808490147270957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat + ((∏ p ∈ Nat.primeFactors (f2 n), (p ^ 3 + 1) : ℕ) : ℤ)

end

end A369721.P7028808490147270957

namespace A369721

/-- `A115613((n+1)/∏{p}[n+1, gcd(n+1, #²)])+∏{p}[n+1, #^3+1]` -/
def P7028808490147270957.Spec : Prop :=
  ∀ n, P7028808490147270957.a n = A369721 (n + 1)

end A369721

/-! ## A369721.P15023462990380755258

`A369718(A356193(2*n+1-n))`
-/

namespace A369721.P15023462990380755258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (A356193 (2 * n + 1 - n)).toNat

end

end A369721.P15023462990380755258

namespace A369721

/-- `A369718(A356193(2*n+1-n))` -/
def P15023462990380755258.Spec : Prop :=
  ∀ n, P15023462990380755258.a n = A369721 (n + 1)

end A369721

/-! ## A369721.P7726337995859190188

`A369718(or(floor(1/(n+1)), A356193(n+1)))`
-/

namespace A369721.P7726337995859190188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A356193 (n + 1))).toNat

end

end A369721.P7726337995859190188

namespace A369721

/-- `A369718(or(floor(1/(n+1)), A356193(n+1)))` -/
def P7726337995859190188.Spec : Prop :=
  ∀ n, P7726337995859190188.a n = A369721 (n + 1)

end A369721

/-!
# A369722: Expansion of e.g.f. exp( (3/2) * (1-sqrt(1-4*x)) ).

The programs for A369722, the canonical program `A369722.P13715112494014846831` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369722 has offset 0).

The definition of A369722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369722.P13715112494014846831

`2*(2*n-3)*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369722

/-- `2*(2*n-3)*a(n-1)+9*a(n-2)` -/
def P13715112494014846831.Spec : Prop :=
  ∀ n, P13715112494014846831.a n = A369722 n

theorem P13715112494014846831.correct : P13715112494014846831.Spec := by
  intro n
  simp only [A369722]

end A369722

/-!
# A369723: Expansion of e.g.f. exp( 2 * (1-sqrt(1-4*x)) ).

The programs for A369723, the canonical program `A369723.P16280102019826548282` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369723 has offset 0).

The definition of A369723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369723.P16280102019826548282

`2*(2*n-3)*a(n-1)+16*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369723

/-- `2*(2*n-3)*a(n-1)+16*a(n-2)` -/
def P16280102019826548282.Spec : Prop :=
  ∀ n, P16280102019826548282.a n = A369723 n

theorem P16280102019826548282.correct : P16280102019826548282.Spec := by
  intro n
  simp only [A369723]

end A369723

/-! ## A369723.P6041326356210721983

`∑[ceil(2^(n-1))]*A107104(n)`
-/

namespace A369723.P6041326356210721983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A107104 n

end

end A369723.P6041326356210721983

namespace A369723

/-- `∑[ceil(2^(n-1))]*A107104(n)` -/
def P6041326356210721983.Spec : Prop :=
  ∀ n, P6041326356210721983.a n = A369723 n

end A369723

/-! ## A369723.P5171734029334119084

`A107104(n)*A131577(n+1)`
-/

namespace A369723.P5171734029334119084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107104 n * A131577 (n + 1)

end

end A369723.P5171734029334119084

namespace A369723

/-- `A107104(n)*A131577(n+1)` -/
def P5171734029334119084.Spec : Prop :=
  ∀ n, P5171734029334119084.a n = A369723 n

end A369723

/-!
# A369724: Expansion of e.g.f. exp( (5/2) * (1-sqrt(1-4*x)) ).

The programs for A369724, the canonical program `A369724.P14748727989781308692` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369724 has offset 0).

The definition of A369724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369724.P14748727989781308692

`2*(2*n-3)*a(n-1)+25*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369724

/-- `2*(2*n-3)*a(n-1)+25*a(n-2)` -/
def P14748727989781308692.Spec : Prop :=
  ∀ n, P14748727989781308692.a n = A369724 n

theorem P14748727989781308692.correct : P14748727989781308692.Spec := by
  intro n
  simp only [A369724]

end A369724

/-!
# A369725: Maximal coefficient of ( (1 + x) * (1 + x^2) * (1 + x^3) * ... * (1 + x^n) )^n.

The programs for A369725, there is no canonical definition to state claims against.
-/

/-! ## A369725.P4180854044806342149

`A350282(n)+A010054(A000058(n))`
-/

namespace A369725.P4180854044806342149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350282 n + A010054 (A000058 n).toNat

end

end A369725.P4180854044806342149

/-!
# A369726: Maximal coefficient of (1 - x) * (1 - x^2)^2 * (1 - x^3)^3 * ... * (1 - x^n)^n.

The programs for A369726, there is no canonical definition to state claims against.
-/

/-! ## A369726.P9719686507644835146

`A035250(A006531(n))`
-/

namespace A369726.P9719686507644835146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A006531 n).toNat

end

end A369726.P9719686507644835146

/-! ## A369726.P6019663179873575506

`A087950(A148426(n))`
-/

namespace A369726.P6019663179873575506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087950 (A148426 n).toNat

end

end A369726.P6019663179873575506

/-!
# A369727: Maximal coefficient of ( (1 - x) * (1 - x^2) * (1 - x^3) * ... * (1 - x^n) )^n.

The programs for A369727, there is no canonical definition to state claims against.
-/

/-! ## A369727.P6263198465479263667

`A192524(a(n-1))+3` with `a(0)=1, a(1)=1`
-/

namespace A369727.P6263198465479263667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A192524 (a (n - 1)).toNat + 3

end

end A369727.P6263198465479263667

/-!
# A369728: Maximal coefficient of (1 - x) * (1 - x^4) * (1 - x^9) * ... * (1 - x^(n^2)).

The programs for A369728, there is no canonical definition to state claims against.
-/

/-! ## A369728.P9805852471580592192

`A369986(n)%A358730(n+2)`
-/

namespace A369728.P9805852471580592192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369986 n) (A358730 (n + 2))

end

end A369728.P9805852471580592192

/-! ## A369728.P7560658904092985431

`A369986(n)+A000007(A030032(n))`
-/

namespace A369728.P7560658904092985431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369986 n + A000007 (A030032 n).toNat

end

end A369728.P7560658904092985431

/-! ## A369728.P9304161320839690233

`A369986(n)+A186681(A000383(n))`
-/

namespace A369728.P9304161320839690233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369986 n + A186681 (A000383 n).toNat

end

end A369728.P9304161320839690233

/-! ## A369728.P13661776602580893463

`A369986(n)+A369965(A074048(n))`
-/

namespace A369728.P13661776602580893463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369986 n + A369965 (A074048 n).toNat

end

end A369728.P13661776602580893463

/-! ## A369728.P719935569690251563

`A158388(A003242(n))*A369986(n)`
-/

namespace A369728.P719935569690251563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A003242 n).toNat * A369986 n

end

end A369728.P719935569690251563

/-!
# A369729: Number of solutions to +- 1 +- 3 +- 5 +- 7 +- ... +- (4*n-3) = 1.

The programs for A369729, there is no canonical definition to state claims against.
-/

/-! ## A369729.P18187405914697228375

`ceil(ceil(A000720(A001894(n+4))/3)/3)`
-/

namespace A369729.P18187405914697228375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A000720 (A001894 (n + 4)).toNat : ℚ) / 3⌉ : ℚ) / 3⌉

end

end A369729.P18187405914697228375

/-! ## A369729.P663971211973771886

`A246955(a(n-2)+a(n-1)-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A369729.P663971211973771886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A246955 (a (n - 2) + a (n - 1) - 1).toNat

end

end A369729.P663971211973771886

/-! ## A369729.P4491373995399080491

`A071841(A197156(n+1)+2)`
-/

namespace A369729.P4491373995399080491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A197156 (n + 1) + 2).toNat

end

end A369729.P4491373995399080491

/-! ## A369729.P18376279425430777223

`A262689(A000045(n)*A278749(n))`
-/

namespace A369729.P18376279425430777223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A000045 n * A278749 n).toNat

end

end A369729.P18376279425430777223

/-!
# A369730: Number of solutions to +- 1^2 +- 2^2 +- 3^2 +- ... +- n^2 = 1.

The programs for A369730, there is no canonical definition to state claims against.
-/

/-! ## A369730.P16718843601159134781

`A021913(n+1)*A307877(n)`
-/

namespace A369730.P16718843601159134781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 1) * A307877 n

end

end A369730.P16718843601159134781

/-! ## A369730.P4025457878123392594

`(A014695(n)-1)*A307877(n)`
-/

namespace A369730.P4025457878123392594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014695 n - 1) * A307877 n

end

end A369730.P4025457878123392594

/-! ## A369730.P5036084545014284620

`A000035(A110654(n))*A307877(n)`
-/

namespace A369730.P5036084545014284620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110654 n).toNat * A307877 n

end

end A369730.P5036084545014284620

/-! ## A369730.P5320466495251657448

`A058377(n+2)/A069918(n+2)*A307877(n)`
-/

namespace A369730.P5320466495251657448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058377 (n + 2) : ℚ) / (A069918 (n + 2) : ℚ) * (A307877 n : ℚ)

end

end A369730.P5320466495251657448

/-! ## A369730.P16349645375814122067

`A021913(n+1)*A350403(n)`
-/

namespace A369730.P16349645375814122067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 1) * A350403 n

end

end A369730.P16349645375814122067

/-!
# A369732: Number of solutions to +- 1^4 +- 2^4 +- 3^4 +- ... +- n^4 = 1.

The programs for A369732, there is no canonical definition to state claims against.
-/

/-! ## A369732.P11954250984302905009

`(n²-C(n, 2))%2*A369629(n)`
-/

namespace A369732.P11954250984302905009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) 2 * A369629 n

end

end A369732.P11954250984302905009

/-! ## A369732.P4622135090785672087

`A021913(n+1)*A369629(n)`
-/

namespace A369732.P4622135090785672087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 1) * A369629 n

end

end A369732.P4622135090785672087

/-! ## A369732.P4929314098646949409

`A000035(A006694(n))*A369629(n)`
-/

namespace A369732.P4929314098646949409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006694 n).toNat * A369629 n

end

end A369732.P4929314098646949409

/-! ## A369732.P7274836258715095162

`A000035(A110654(n))*A369629(n)`
-/

namespace A369732.P7274836258715095162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110654 n).toNat * A369629 n

end

end A369732.P7274836258715095162

/-! ## A369732.P15538451598555338668

`A369629(n)%(A369731(n)+1)`
-/

namespace A369732.P15538451598555338668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369629 n) (A369731 n + 1)

end

end A369732.P15538451598555338668

/-!
# A369733: Number of solutions to 2*k_1 + 3*k_2 + ... + prime(n)*k_n = 1, where k_i are from {-1,0,1}, i=1..n.

The programs for A369733, there is no canonical definition to state claims against.
-/

/-! ## A369733.P16230772599960512073

`A232463(A186738(n+2)+1)`
-/

namespace A369733.P16230772599960512073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232463 (A186738 (n + 2) + 1).toNat

end

end A369733.P16230772599960512073

/-!
# A369734: Number of solutions to 1^2*k_1 + 2^2*k_2 + ... + n^2*k_n = 1, where k_i are from {-1,0,1}, i=1..n.

The programs for A369734, there is no canonical definition to state claims against.
-/

/-! ## A369734.P10209964310394351140

`A088526(A088499(n+1)+A005248(n))`
-/

namespace A369734.P10209964310394351140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (A088499 (n + 1) + A005248 n).toNat

end

end A369734.P10209964310394351140

/-! ## A369734.P10934736512377692620

`A167025(A327665(n))`
-/

namespace A369734.P10934736512377692620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167025 (A327665 n).toNat

end

end A369734.P10934736512377692620

/-! ## A369734.P2450704973746181000

`A167025(A191629(n+2))`
-/

namespace A369734.P2450704973746181000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167025 (A191629 (n + 2)).toNat

end

end A369734.P2450704973746181000

/-! ## A369734.P4167606672008302729

`A337682(A001595(n))+A075897(n)`
-/

namespace A369734.P4167606672008302729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337682 (A001595 n).toNat + A075897 n

end

end A369734.P4167606672008302729

/-! ## A369734.P7763237357363552238

`A156261(A178964(n))+A001221(n+1)`
-/

namespace A369734.P7763237357363552238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A178964 n).toNat + A001221 (n + 1)

end

end A369734.P7763237357363552238

/-!
# A369736: Triangle read by rows. T(n, k) = 0 if n - k is odd otherwise if 4 divides n - k then 1 otherwise -1.

The programs for A369736, the canonical program `A369736.P2745609336317517813` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369736 has offset 0).

The definition of A369736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369736.P6598754164683797112

`A356205(n)%2`
-/

namespace A369736.P6598754164683797112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356205 n) 2

end

end A369736.P6598754164683797112

namespace A369736

/-- `A356205(n)%2` -/
def P6598754164683797112.Spec : Prop :=
  ∀ n, P6598754164683797112.a n = A369736 n

end A369736

/-! ## A369736.P2745609336317517813

`A130194(n+1)%2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A369736

/-- `A130194(n+1)%2` -/
def P2745609336317517813.Spec : Prop :=
  ∀ n, P2745609336317517813.a n = A369736 n

theorem P2745609336317517813.correct : P2745609336317517813.Spec := by
  intro n
  simp only [A369736]

end A369736

/-! ## A369736.P8244256902021136924

`A009531(C(comp[∑[n]]-n, 2)-n)%2`
-/

namespace A369736.P8244256902021136924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009531 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 2

end

end A369736.P8244256902021136924

namespace A369736

/-- `A009531(C(comp[∑[n]]-n, 2)-n)%2` -/
def P8244256902021136924.Spec : Prop :=
  ∀ n, P8244256902021136924.a n = A369736 n

end A369736

/-! ## A369736.P15080469540413107161

`A046978(A104571(n))`
-/

namespace A369736.P15080469540413107161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A104571 n).toNat

end

end A369736.P15080469540413107161

namespace A369736

/-- `A046978(A104571(n))` -/
def P15080469540413107161.Spec : Prop :=
  ∀ n, P15080469540413107161.a n = A369736 n

end A369736

/-! ## A369736.P16312130797662659981

`A092220(A104568(n))`
-/

namespace A369736.P16312130797662659981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (A104568 n).toNat

end

end A369736.P16312130797662659981

namespace A369736

/-- `A092220(A104568(n))` -/
def P16312130797662659981.Spec : Prop :=
  ∀ n, P16312130797662659981.a n = A369736 n

end A369736

/-! ## A369736.P636410346070290870

`A118828(A099375(n))`
-/

namespace A369736.P636410346070290870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (A099375 n).toNat

end

end A369736.P636410346070290870

namespace A369736

/-- `A118828(A099375(n))` -/
def P636410346070290870.Spec : Prop :=
  ∀ n, P636410346070290870.a n = A369736 n

end A369736

/-! ## A369736.P2169660805719747258

`A101455(A134224(n))`
-/

namespace A369736.P2169660805719747258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A134224 n).toNat

end

end A369736.P2169660805719747258

namespace A369736

/-- `A101455(A134224(n))` -/
def P2169660805719747258.Spec : Prop :=
  ∀ n, P2169660805719747258.a n = A369736 n

end A369736

/-! ## A369736.P396969253000320093

`A117569(A025581(n)+1)`
-/

namespace A369736.P396969253000320093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A025581 n + 1).toNat

end

end A369736.P396969253000320093

namespace A369736

/-- `A117569(A025581(n)+1)` -/
def P396969253000320093.Spec : Prop :=
  ∀ n, P396969253000320093.a n = A369736 n

end A369736

/-! ## A369736.P12345152182312046837

`A010892(A104568(n)-1)`
-/

namespace A369736.P12345152182312046837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A104568 n - 1).toNat

end

end A369736.P12345152182312046837

namespace A369736

/-- `A010892(A104568(n)-1)` -/
def P12345152182312046837.Spec : Prop :=
  ∀ n, P12345152182312046837.a n = A369736 n

end A369736

/-! ## A369736.P17799559404369195383

`A046980(A099375(n)-1)`
-/

namespace A369736.P17799559404369195383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A099375 n - 1).toNat

end

end A369736.P17799559404369195383

namespace A369736

/-- `A046980(A099375(n)-1)` -/
def P17799559404369195383.Spec : Prop :=
  ∀ n, P17799559404369195383.a n = A369736 n

end A369736

/-! ## A369736.P6776621221775572137

`A049310(n)/A046854(n)`
-/

namespace A369736.P6776621221775572137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049310 n : ℚ) / (A046854 n : ℚ)

end

end A369736.P6776621221775572137

namespace A369736

/-- `A049310(n)/A046854(n)` -/
def P6776621221775572137.Spec : Prop :=
  ∀ n, P6776621221775572137.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P12472318872586558615

`A049310(n)/A134513(n)`
-/

namespace A369736.P12472318872586558615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049310 n : ℚ) / (A134513 n : ℚ)

end

end A369736.P12472318872586558615

namespace A369736

/-- `A049310(n)/A134513(n)` -/
def P12472318872586558615.Spec : Prop :=
  ∀ n, P12472318872586558615.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P16090515466841332368

`A117179(n)/A105438(n)`
-/

namespace A369736.P16090515466841332368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117179 n : ℚ) / (A105438 n : ℚ)

end

end A369736.P16090515466841332368

namespace A369736

/-- `A117179(n)/A105438(n)` -/
def P16090515466841332368.Spec : Prop :=
  ∀ n, P16090515466841332368.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P15180695001853913429

`A119467(n)/A108086(n)`
-/

namespace A369736.P15180695001853913429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119467 n : ℚ) / (A108086 n : ℚ)

end

end A369736.P15180695001853913429

namespace A369736

/-- `A119467(n)/A108086(n)` -/
def P15180695001853913429.Spec : Prop :=
  ∀ n, P15180695001853913429.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P571833105868960558

`A111527(n)/A117184(n)`
-/

namespace A369736.P571833105868960558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111527 n : ℚ) / (A117184 n : ℚ)

end

end A369736.P571833105868960558

namespace A369736

/-- `A111527(n)/A117184(n)` -/
def P571833105868960558.Spec : Prop :=
  ∀ n, P571833105868960558.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P11636944114541441987

`A108045(n)/A123185(n)`
-/

namespace A369736.P11636944114541441987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108045 n : ℚ) / (A123185 n : ℚ)

end

end A369736.P11636944114541441987

namespace A369736

/-- `A108045(n)/A123185(n)` -/
def P11636944114541441987.Spec : Prop :=
  ∀ n, P11636944114541441987.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P13109247704946849805

`A119467(n)/A117440(n)`
-/

namespace A369736.P13109247704946849805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119467 n : ℚ) / (A117440 n : ℚ)

end

end A369736.P13109247704946849805

namespace A369736

/-- `A119467(n)/A117440(n)` -/
def P13109247704946849805.Spec : Prop :=
  ∀ n, P13109247704946849805.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P573070759869912131

`A168561(n)/A130777(n)`
-/

namespace A369736.P573070759869912131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168561 n : ℚ) / (A130777 n : ℚ)

end

end A369736.P573070759869912131

namespace A369736

/-- `A168561(n)/A130777(n)` -/
def P573070759869912131.Spec : Prop :=
  ∀ n, P573070759869912131.a n = (A369736 n : ℚ)

end A369736

/-! ## A369736.P16128373463623084329

`A132380(2*A004736(n+1))`
-/

namespace A369736.P16128373463623084329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (2 * A004736 (n + 1)).toNat

end

end A369736.P16128373463623084329

namespace A369736

/-- `A132380(2*A004736(n+1))` -/
def P16128373463623084329.Spec : Prop :=
  ∀ n, P16128373463623084329.a n = A369736 n

end A369736

/-! ## A369736.P1144254522154859442

`A117568(n)*A128174(n+1)`
-/

namespace A369736.P1144254522154859442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A128174 (n + 1)

end

end A369736.P1144254522154859442

namespace A369736

/-- `A117568(n)*A128174(n+1)` -/
def P1144254522154859442.Spec : Prop :=
  ∀ n, P1144254522154859442.a n = A369736 n

end A369736

/-!
# A369737: a(n) = b(n, 1/2) where b(n, x) = (Pi/4)*(Y(0, x)*J(n, x) - J(0, x)*Y(n, x)) and Y, J are Bessel functions.

The programs for A369737, there is no canonical definition to state claims against.
-/

/-! ## A369737.P11370411030112197417

`4*(n-1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A369737.P11370411030112197417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (((n : ℤ) - 1) * a (n - 1)) - a (n - 2)

end

end A369737.P11370411030112197417

/-!
# A369738: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(1 - (1+x)^k).

The programs for A369738, there is no canonical definition to state claims against.
-/

/-! ## A369738.P7379620434859297380

`A286352(n)+A011672(A283834(n))`
-/

namespace A369738.P7379620434859297380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n + A011672 (A283834 n).toNat

end

end A369738.P7379620434859297380

/-! ## A369738.P8098120734753053417

`A110555(n)-A184963(A331161(n))`
-/

namespace A369738.P8098120734753053417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A184963 (A331161 n).toNat

end

end A369738.P8098120734753053417

/-! ## A369738.P5164834024858819765

`A110555(n)-A025441(A341245(n+6))`
-/

namespace A369738.P5164834024858819765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A025441 (A341245 (n + 6)).toNat

end

end A369738.P5164834024858819765

/-! ## A369738.P17088569581085541253

`A110555(n)-A185284(A156552(n+1))`
-/

namespace A369738.P17088569581085541253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A185284 (A156552 (n + 1)).toNat

end

end A369738.P17088569581085541253

/-! ## A369738.P9519308760614383110

`A110555(n)-A335446(A296712(n+1))`
-/

namespace A369738.P9519308760614383110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A335446 (A296712 (n + 1)).toNat

end

end A369738.P9519308760614383110

/-!
# A369740: a(n) = Sum_{p|n, p prime} p^sigma(n/p).

The programs for A369740, there is no canonical definition to state claims against.
-/

/-! ## A369740.P6202339700526440229

`((n+1)*∏{p}[n+1, #^val((n-1)!, #)])%A316494(A005228(n+1))`
-/

namespace A369740.P6202339700526440229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p) : ℕ) : ℤ) (A316494 (A005228 (n + 1)).toNat)

end

end A369740.P6202339700526440229

/-! ## A369740.P6652959213369288794

`A051696(A352462(n+1))%A299276(n)`
-/

namespace A369740.P6652959213369288794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051696 (A352462 (n + 1)).toNat) (A299276 n)

end

end A369740.P6652959213369288794

/-! ## A369740.P2906089134985757826

`((n+1)*∏{p}[n+1, #^val((n-1)!, #)])%A330189(A014137(n))`
-/

namespace A369740.P2906089134985757826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p) : ℕ) : ℤ) (A330189 (A014137 n).toNat)

end

end A369740.P2906089134985757826

/-! ## A369740.P6094664303031689457

`A051696(n+1)%A316428(A380670(n))`
-/

namespace A369740.P6094664303031689457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051696 (n + 1)) (A316428 (A380670 n).toNat)

end

end A369740.P6094664303031689457

/-!
# A369741: a(n) = Sum_{p|n, p prime} p^Omega(n/p).

The programs for A369741, there is no canonical definition to state claims against.
-/

/-! ## A369741.P17585352198206635664

`A171453(A306329(n+1))`
-/

namespace A369741.P17585352198206635664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (A306329 (n + 1)).toNat

end

end A369741.P17585352198206635664

/-! ## A369741.P14048786550962039801

`A241459(A121391(n))+A069359(n+1)`
-/

namespace A369741.P14048786550962039801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241459 (A121391 n).toNat + A069359 (n + 1)

end

end A369741.P14048786550962039801

/-! ## A369741.P7779305853117125410

`∑{d}[n+1, #]-(n+1)-A083916(14^∑{e}[n+1, #])`
-/

namespace A369741.P7779305853117125410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A083916 (14 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A369741.P7779305853117125410

/-! ## A369741.P14015962372811396631

`A335453(A272919(n+1))+A069359(n+1)`
-/

namespace A369741.P14015962372811396631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A272919 (n + 1)).toNat + A069359 (n + 1)

end

end A369741.P14015962372811396631

/-! ## A369741.P1833824514292853967

`∑{p}[n+1, ceil(n/#)]-A178780(A321451(n))`
-/

namespace A369741.P1833824514292853967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ - A178780 (A321451 n).toNat

end

end A369741.P1833824514292853967

/-!
# A369742: a(n) = Sum_{p|n, p prime} p^(mu(n/p)^2).

The programs for A369742, there is no canonical definition to state claims against.
-/

/-! ## A369742.P17296200846841254723

`A008472(n+1)-A331416(A167015(n))`
-/

namespace A369742.P17296200846841254723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A331416 (A167015 n).toNat

end

end A369742.P17296200846841254723

/-! ## A369742.P10637030227107789782

`A008472(n+1)-A319000(A020882(n+1))`
-/

namespace A369742.P10637030227107789782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A319000 (A020882 (n + 1)).toNat

end

end A369742.P10637030227107789782

/-! ## A369742.P15266401252534812955

`A008472(n+1)-A242830(A060627(n+1))`
-/

namespace A369742.P15266401252534812955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A242830 (A060627 (n + 1)).toNat

end

end A369742.P15266401252534812955

/-! ## A369742.P5482761792343171840

`A008472(n+1)-A373954(A227450(n+1))`
-/

namespace A369742.P5482761792343171840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A373954 (A227450 (n + 1)).toNat

end

end A369742.P5482761792343171840

/-! ## A369742.P16748349252654821719

`A075860(n+1)-A102683(A000292(3*n+4))`
-/

namespace A369742.P16748349252654821719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1) - A102683 (A000292 (3 * n + 4)).toNat

end

end A369742.P16748349252654821719

/-!
# A369743: a(n) = Sum_{p|n, p prime} p * Omega(n/p).

The programs for A369743, the canonical program `A369743.P5377607149347298905` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369743 has offset 1).

The definition of A369743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369743.P14319502948741981986

`A039697(n+1)-A008472(n+1)`
-/

namespace A369743.P14319502948741981986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039697 (n + 1) - A008472 (n + 1)

end

end A369743.P14319502948741981986

namespace A369743

/-- `A039697(n+1)-A008472(n+1)` -/
def P14319502948741981986.Spec : Prop :=
  ∀ n, P14319502948741981986.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P10477466254694713426

`A008472(n+1)*A252736(n+1)`
-/

namespace A369743.P10477466254694713426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A252736 (n + 1)

end

end A369743.P10477466254694713426

namespace A369743

/-- `A008472(n+1)*A252736(n+1)` -/
def P10477466254694713426.Spec : Prop :=
  ∀ n, P10477466254694713426.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P5377607149347298905

`A105221(n+1)*A252736(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A369743

/-- `A105221(n+1)*A252736(n+1)` -/
def P5377607149347298905.Spec : Prop :=
  ∀ n, P5377607149347298905.a n = A369743 (n + 1)

theorem P5377607149347298905.correct : P5377607149347298905.Spec := by
  intro n
  simp only [A369743, Nat.add_sub_cancel]

end A369743

/-! ## A369743.P7405973303978253362

`(A001222(n+1)-1)*A008472(n+1)`
-/

namespace A369743.P7405973303978253362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A008472 (n + 1)

end

end A369743.P7405973303978253362

namespace A369743

/-- `(A001222(n+1)-1)*A008472(n+1)` -/
def P7405973303978253362.Spec : Prop :=
  ∀ n, P7405973303978253362.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P13784270849254381334

`(A086436(n+1)-1)*A008472(n+1)`
-/

namespace A369743.P13784270849254381334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086436 (n + 1) - 1) * A008472 (n + 1)

end

end A369743.P13784270849254381334

namespace A369743

/-- `(A086436(n+1)-1)*A008472(n+1)` -/
def P13784270849254381334.Spec : Prop :=
  ∀ n, P13784270849254381334.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P3956228871671552019

`(A001222(n+1)-1)*A105221(n+1)`
-/

namespace A369743.P3956228871671552019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A105221 (n + 1)

end

end A369743.P3956228871671552019

namespace A369743

/-- `(A001222(n+1)-1)*A105221(n+1)` -/
def P3956228871671552019.Spec : Prop :=
  ∀ n, P3956228871671552019.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P12052058025099682720

`(A144494(n+1)-1)*A105221(n+1)`
-/

namespace A369743.P12052058025099682720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144494 (n + 1) - 1) * A105221 (n + 1)

end

end A369743.P12052058025099682720

namespace A369743

/-- `(A144494(n+1)-1)*A105221(n+1)` -/
def P12052058025099682720.Spec : Prop :=
  ∀ n, P12052058025099682720.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P2298972307320194722

`∑{d}[n+1, A001222(#)*A061397((n+1)/#)]`
-/

namespace A369743.P2298972307320194722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369743.P2298972307320194722

namespace A369743

/-- `∑{d}[n+1, A001222(#)*A061397((n+1)/#)]` -/
def P2298972307320194722.Spec : Prop :=
  ∀ n, P2298972307320194722.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P17871006086040867586

`∑{d}[n+1, A008472(#)*A069513((n+1)/#)]`
-/

namespace A369743.P17871006086040867586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369743.P17871006086040867586

namespace A369743

/-- `∑{d}[n+1, A008472(#)*A069513((n+1)/#)]` -/
def P17871006086040867586.Spec : Prop :=
  ∀ n, P17871006086040867586.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P11648931932013648657

`∑{d}[n+1, A069264(#)*A137851((n+1)/#)]`
-/

namespace A369743.P11648931932013648657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069264 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369743.P11648931932013648657

namespace A369743

/-- `∑{d}[n+1, A069264(#)*A137851((n+1)/#)]` -/
def P11648931932013648657.Spec : Prop :=
  ∀ n, P11648931932013648657.a n = A369743 (n + 1)

end A369743

/-! ## A369743.P13540866150956515305

`A008472(n+1)*A368251(A061142(n+1))`
-/

namespace A369743.P13540866150956515305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A368251 (A061142 (n + 1)).toNat

end

end A369743.P13540866150956515305

namespace A369743

/-- `A008472(n+1)*A368251(A061142(n+1))` -/
def P13540866150956515305.Spec : Prop :=
  ∀ n, P13540866150956515305.a n = A369743 (n + 1)

end A369743

/-!
# A369744: a(n) = Sum_{p|n, p prime} p * omega(n/p).

The programs for A369744, the canonical program `A369744.P12931148306204078682` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369744 has offset 1).

The definition of A369744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369744.P8422488905279383580

`∑{d}[n+1, A008472(#)*A010051((n+1)/#)]`
-/

namespace A369744.P8422488905279383580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P8422488905279383580

namespace A369744

/-- `∑{d}[n+1, A008472(#)*A010051((n+1)/#)]` -/
def P8422488905279383580.Spec : Prop :=
  ∀ n, P8422488905279383580.a n = A369744 (n + 1)

end A369744

/-! ## A369744.P11950665237490768197

`∑{d}[n+1, A001221(#)*A061397((n+1)/#)]`
-/

namespace A369744.P11950665237490768197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P11950665237490768197

namespace A369744

/-- `∑{d}[n+1, A001221(#)*A061397((n+1)/#)]` -/
def P11950665237490768197.Spec : Prop :=
  ∀ n, P11950665237490768197.a n = A369744 (n + 1)

end A369744

/-! ## A369744.P12931148306204078682

`∑{d}[n+1, A062799(#)*A137851((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369744

/-- `∑{d}[n+1, A062799(#)*A137851((n+1)/#)]` -/
def P12931148306204078682.Spec : Prop :=
  ∀ n, P12931148306204078682.a n = A369744 (n + 1)

theorem P12931148306204078682.correct : P12931148306204078682.Spec := by
  intro n
  simp only [A369744, Nat.add_sub_cancel]

end A369744

/-! ## A369744.P643690871132163716

`∑{d}[n+1, A023900(#)*A369907((n+1)/#)]`
-/

namespace A369744.P643690871132163716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A369907 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P643690871132163716

namespace A369744

/-- `∑{d}[n+1, A023900(#)*A369907((n+1)/#)]` -/
def P643690871132163716.Spec : Prop :=
  ∀ n, P643690871132163716.a n = A369744 (n + 1)

end A369744

/-! ## A369744.P15057962988815110727

`∑{d}[n+1, A143519(#)*A319131((n+1)/#)]`
-/

namespace A369744.P15057962988815110727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P15057962988815110727

namespace A369744

/-- `∑{d}[n+1, A143519(#)*A319131((n+1)/#)]` -/
def P15057962988815110727.Spec : Prop :=
  ∀ n, P15057962988815110727.a n = A369744 (n + 1)

end A369744

/-!
# A369745: a(n) = Sum_{p|n, p prime} p * pi(n/p).

The programs for A369745, the canonical program `A369745.P3771573079941059180` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369745 has offset 1).

The definition of A369745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369745.P1992076265856286110

`∑{d}[n+1, A000720(#)*A061397((n+1)/#)]`
-/

namespace A369745.P1992076265856286110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000720 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369745.P1992076265856286110

namespace A369745

/-- `∑{d}[n+1, A000720(#)*A061397((n+1)/#)]` -/
def P1992076265856286110.Spec : Prop :=
  ∀ n, P1992076265856286110.a n = A369745 (n + 1)

end A369745

/-! ## A369745.P10117296662244102646

`∑{d}[n+1, A008472(#)*A062778((n+1)/#)]`
-/

namespace A369745.P10117296662244102646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A062778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369745.P10117296662244102646

namespace A369745

/-- `∑{d}[n+1, A008472(#)*A062778((n+1)/#)]` -/
def P10117296662244102646.Spec : Prop :=
  ∀ n, P10117296662244102646.a n = A369745 (n + 1)

end A369745

/-! ## A369745.P3771573079941059180

`∑{d}[n+1, A062774(#)*A137851((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369745

/-- `∑{d}[n+1, A062774(#)*A137851((n+1)/#)]` -/
def P3771573079941059180.Spec : Prop :=
  ∀ n, P3771573079941059180.a n = A369745 (n + 1)

theorem P3771573079941059180.correct : P3771573079941059180.Spec := by
  intro n
  simp only [A369745, Nat.add_sub_cancel]

end A369745

/-!
# A369746: Expansion of e.g.f. exp( 3 * (1-sqrt(1-2*x)) ).

The programs for A369746, the canonical program `A369746.P15699055682510488865` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369746 has offset 0).

The definition of A369746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369746.P15699055682510488865

`(2*n-3)*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369746

/-- `(2*n-3)*a(n-1)+9*a(n-2)` -/
def P15699055682510488865.Spec : Prop :=
  ∀ n, P15699055682510488865.a n = A369746 n

theorem P15699055682510488865.correct : P15699055682510488865.Spec := by
  intro n
  simp only [A369746]

end A369746

/-!
# A369747: a(n) = Sum_{p|n, p prime} pi(n/p).

The programs for A369747, the canonical program `A369747.P13998751493365301120` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369747 has offset 1).

The definition of A369747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369747.P17154668757853750707

`∑{p}[n+1, A000720((n+1)/#)]`
-/

namespace A369747.P17154668757853750707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A369747.P17154668757853750707

namespace A369747

/-- `∑{p}[n+1, A000720((n+1)/#)]` -/
def P17154668757853750707.Spec : Prop :=
  ∀ n, P17154668757853750707.a n = A369747 (n + 1)

end A369747

/-! ## A369747.P2230627895780463967

`∑{d}[n+1, A000720(#)*A010051((n+1)/#)]`
-/

namespace A369747.P2230627895780463967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000720 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369747.P2230627895780463967

namespace A369747

/-- `∑{d}[n+1, A000720(#)*A010051((n+1)/#)]` -/
def P2230627895780463967.Spec : Prop :=
  ∀ n, P2230627895780463967.a n = A369747 (n + 1)

end A369747

/-! ## A369747.P11120717077721348588

`∑{d}[n+1, A001221(#)*A062778((n+1)/#)]`
-/

namespace A369747.P11120717077721348588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A062778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369747.P11120717077721348588

namespace A369747

/-- `∑{d}[n+1, A001221(#)*A062778((n+1)/#)]` -/
def P11120717077721348588.Spec : Prop :=
  ∀ n, P11120717077721348588.a n = A369747 (n + 1)

end A369747

/-! ## A369747.P13998751493365301120

`∑{d}[n+1, A062774(#)*A143519((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369747

/-- `∑{d}[n+1, A062774(#)*A143519((n+1)/#)]` -/
def P13998751493365301120.Spec : Prop :=
  ∀ n, P13998751493365301120.a n = A369747 (n + 1)

theorem P13998751493365301120.correct : P13998751493365301120.Spec := by
  intro n
  simp only [A369747, Nat.add_sub_cancel]

end A369747

/-! ## A369747.P18153865271502170876

`A144741(n+1)+A079275(n+1)`
-/

namespace A369747.P18153865271502170876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144741 (n + 1) + A079275 (n + 1)

end

end A369747.P18153865271502170876

namespace A369747

/-- `A144741(n+1)+A079275(n+1)` -/
def P18153865271502170876.Spec : Prop :=
  ∀ n, P18153865271502170876.a n = A369747 (n + 1)

end A369747

/-!
# A369748: a(n) = Sum_{p|n, p prime} prime(n/p).

The programs for A369748, the canonical program `A369748.P2504085863916396421` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369748 has offset 1).

The definition of A369748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369748.P2504085863916396421

`∑{p}[n+1, A000040((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369748

/-- `∑{p}[n+1, A000040((n+1)/#)]` -/
def P2504085863916396421.Spec : Prop :=
  ∀ n, P2504085863916396421.a n = A369748 (n + 1)

theorem P2504085863916396421.correct : P2504085863916396421.Spec := by
  intro n
  simp only [A369748, Nat.add_sub_cancel]

end A369748

/-! ## A369748.P12747382237874298956

`∑{d}[n+1, A001221(#)*A007444((n+1)/#)]`
-/

namespace A369748.P12747382237874298956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369748.P12747382237874298956

namespace A369748

/-- `∑{d}[n+1, A001221(#)*A007444((n+1)/#)]` -/
def P12747382237874298956.Spec : Prop :=
  ∀ n, P12747382237874298956.a n = A369748 (n + 1)

end A369748

/-! ## A369748.P2597311100831879462

`∑{d}[n+1, A000040(#)*A010051((n+1)/#)]`
-/

namespace A369748.P2597311100831879462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369748.P2597311100831879462

namespace A369748

/-- `∑{d}[n+1, A000040(#)*A010051((n+1)/#)]` -/
def P2597311100831879462.Spec : Prop :=
  ∀ n, P2597311100831879462.a n = A369748 (n + 1)

end A369748

/-! ## A369748.P2583426752480199221

`A384812(A374431(n+1))`
-/

namespace A369748.P2583426752480199221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384812 (A374431 (n + 1)).toNat

end

end A369748.P2583426752480199221

namespace A369748

/-- `A384812(A374431(n+1))` -/
def P2583426752480199221.Spec : Prop :=
  ∀ n, P2583426752480199221.a n = A369748 (n + 1)

end A369748

/-!
# A369749: a(n) = Sum_{p|n, p prime} p * prime(n/p).

The programs for A369749, the canonical program `A369749.P2966338414670891840` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369749 has offset 1).

The definition of A369749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369749.P7113905419481434287

`∑{d}[n+1, A007444(#)*A008472((n+1)/#)]`
-/

namespace A369749.P7113905419481434287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d * A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369749.P7113905419481434287

namespace A369749

/-- `∑{d}[n+1, A007444(#)*A008472((n+1)/#)]` -/
def P7113905419481434287.Spec : Prop :=
  ∀ n, P7113905419481434287.a n = A369749 (n + 1)

end A369749

/-! ## A369749.P2966338414670891840

`∑{d}[n+1, A000040(#)*A061397((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A369749

/-- `∑{d}[n+1, A000040(#)*A061397((n+1)/#)]` -/
def P2966338414670891840.Spec : Prop :=
  ∀ n, P2966338414670891840.a n = A369749 (n + 1)

theorem P2966338414670891840.correct : P2966338414670891840.Spec := by
  intro n
  simp only [A369749, Nat.add_sub_cancel]

end A369749

/-!
# A369751: Expansion of e.g.f. exp(1 - (1+x)^3).

The programs for A369751, there is no canonical definition to state claims against.
-/

/-! ## A369751.P13725770209431344614

`A369738(∑[n+4]+2)`
-/

namespace A369751.P13725770209431344614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369738 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A369751.P13725770209431344614

/-!
# A369752: Expansion of e.g.f. exp(1 - (1+x)^4).

The programs for A369752, there is no canonical definition to state claims against.
-/

/-! ## A369752.P11854827989468602132

`A369738(A000217(n+4)+n)`
-/

namespace A369752.P11854827989468602132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369738 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A369752.P11854827989468602132

/-! ## A369752.P12015124216688503586

`A369738(A179865(n+5)+n)`
-/

namespace A369752.P12015124216688503586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369738 (A179865 (n + 5) + (n : ℤ)).toNat

end

end A369752.P12015124216688503586

/-!
# A369753: Expansion of e.g.f. exp(1 - (1+x)^5).

The programs for A369753, there is no canonical definition to state claims against.
-/

/-! ## A369753.P5003827091437711731

`A369738(eq[5, A025581(n)])`
-/

namespace A369753.P5003827091437711731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A369753.P5003827091437711731

/-!
# A369754: a(n) = n! * [x^n] exp(1 - (1+x)^n).

The programs for A369754, there is no canonical definition to state claims against.
-/

/-! ## A369754.P13007283901654687218

`A369738(∑[4*n])`
-/

namespace A369754.P13007283901654687218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369738 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369754.P13007283901654687218

/-! ## A369754.P16559034321913621847

`A087960(A028560(n))*A369738(A046092(n))`
-/

namespace A369754.P16559034321913621847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A028560 n).toNat * A369738 (A046092 n).toNat

end

end A369754.P16559034321913621847

/-!
# A369757: The number of divisors of the smallest cubefull exponentially odd number that is divisible by n.

The programs for A369757, the canonical program `A369757.P5287777437790964755` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369757 has offset 1).

The definition of A369757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369757.P5287777437790964755

`A000005(A356192(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369757

/-- `A000005(A356192(n+1))` -/
def P5287777437790964755.Spec : Prop :=
  ∀ n, P5287777437790964755.a n = A369757 (n + 1)

theorem P5287777437790964755.correct : P5287777437790964755.Spec := by
  intro n
  simp only [A369757, Nat.add_sub_cancel]

end A369757

/-! ## A369757.P6841459083859420620

`∏{e}[n+1, or(1, #)+1]*∏{e}[n+1, ceil(2/#)]`
-/

namespace A369757.P6841459083859420620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.lor 1 (Nat.factorization (f1 n) p) + 1) : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉)

end

end A369757.P6841459083859420620

namespace A369757

/-- `∏{e}[n+1, or(1, #)+1]*∏{e}[n+1, ceil(2/#)]` -/
def P6841459083859420620.Spec : Prop :=
  ∀ n, P6841459083859420620.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P6445858688981023149

`A056671(n+1)*A365348(n+1)`
-/

namespace A369757.P6445858688981023149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A365348 (n + 1)

end

end A369757.P6445858688981023149

namespace A369757

/-- `A056671(n+1)*A365348(n+1)` -/
def P6445858688981023149.Spec : Prop :=
  ∀ n, P6445858688981023149.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P4770283880801318349

`∏{e}[n+1, or(1, #)+1]*A367170(A350389(n+1))`
-/

namespace A369757.P4770283880801318349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.lor 1 (Nat.factorization (f1 n) p) + 1) : ℕ) : ℤ) * A367170 (A350389 (n + 1)).toNat

end

end A369757.P4770283880801318349

namespace A369757

/-- `∏{e}[n+1, or(1, #)+1]*A367170(A350389(n+1))` -/
def P4770283880801318349.Spec : Prop :=
  ∀ n, P4770283880801318349.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P17707190911306719654

`A369719(A356192(n+1)/A360541(n+1))`
-/

namespace A369757.P17707190911306719654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369719 (SequenceMachineLib.roundAway ((A356192 (n + 1) : ℚ) / (A360541 (n + 1) : ℚ))).toNat

end

end A369757.P17707190911306719654

namespace A369757

/-- `A369719(A356192(n+1)/A360541(n+1))` -/
def P17707190911306719654.Spec : Prop :=
  ∀ n, P17707190911306719654.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P16515137438028214156

`A369719(A356191(n+1))`
-/

namespace A369757.P16515137438028214156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369719 (A356191 (n + 1)).toNat

end

end A369757.P16515137438028214156

namespace A369757

/-- `A369719(A356191(n+1))` -/
def P16515137438028214156.Spec : Prop :=
  ∀ n, P16515137438028214156.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P6115079811770478303

`∏{e}[n+1, or(1, #)+1]*A367170((n+1)²/∏{p}[n+1, #])`
-/

namespace A369757.P6115079811770478303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.lor 1 (Nat.factorization (f1 n) p) + 1) : ℕ) : ℤ) * A367170 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A369757.P6115079811770478303

namespace A369757

/-- `∏{e}[n+1, or(1, #)+1]*A367170((n+1)²/∏{p}[n+1, #])` -/
def P6115079811770478303.Spec : Prop :=
  ∀ n, P6115079811770478303.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P12954493671551515519

`A365348(A197863(n+1))`
-/

namespace A369757.P12954493671551515519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365348 (A197863 (n + 1)).toNat

end

end A369757.P12954493671551515519

namespace A369757

/-- `A365348(A197863(n+1))` -/
def P12954493671551515519.Spec : Prop :=
  ∀ n, P12954493671551515519.a n = A369757 (n + 1)

end A369757

/-! ## A369757.P15209549951494393832

`A056671(n+1)*A368104(A064549(n+1))`
-/

namespace A369757.P15209549951494393832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A368104 (A064549 (n + 1)).toNat

end

end A369757.P15209549951494393832

namespace A369757

/-- `A056671(n+1)*A368104(A064549(n+1))` -/
def P15209549951494393832.Spec : Prop :=
  ∀ n, P15209549951494393832.a n = A369757 (n + 1)

end A369757

/-!
# A369758: The sum of divisors of the smallest cubefull exponentially odd number that is divisible by n.

The programs for A369758, the canonical program `A369758.P236084488663508184` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369758 has offset 1).

The definition of A369758 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369758.P236084488663508184

`A000203(A356192(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369758

/-- `A000203(A356192(n+1))` -/
def P236084488663508184.Spec : Prop :=
  ∀ n, P236084488663508184.a n = A369758 (n + 1)

theorem P236084488663508184.correct : P236084488663508184.Spec := by
  intro n
  simp only [A369758, Nat.add_sub_cancel]

end A369758

/-! ## A369758.P9573960623200247307

`A091306(n+1)*A365349(n+1)`
-/

namespace A369758.P9573960623200247307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1) * A365349 (n + 1)

end

end A369758.P9573960623200247307

namespace A369758

/-- `A091306(n+1)*A365349(n+1)` -/
def P9573960623200247307.Spec : Prop :=
  ∀ n, P9573960623200247307.a n = A369758 (n + 1)

end A369758

/-! ## A369758.P11301335827964905195

`A000203(A356191(n+1))*A091306(n+1)`
-/

namespace A369758.P11301335827964905195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356191 (n + 1)).toNat * A091306 (n + 1)

end

end A369758.P11301335827964905195

namespace A369758

/-- `A000203(A356191(n+1))*A091306(n+1)` -/
def P11301335827964905195.Spec : Prop :=
  ∀ n, P11301335827964905195.a n = A369758 (n + 1)

end A369758

/-! ## A369758.P8459861564654490969

`A000203(A007947(n+1)*A008833(n+1))*A091306(n+1)`
-/

namespace A369758.P8459861564654490969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1) * A008833 (n + 1)).toNat * A091306 (n + 1)

end

end A369758.P8459861564654490969

namespace A369758

/-- `A000203(A007947(n+1)*A008833(n+1))*A091306(n+1)` -/
def P8459861564654490969.Spec : Prop :=
  ∀ n, P8459861564654490969.a n = A369758 (n + 1)

end A369758

/-! ## A369758.P18132185728331651389

`A369720(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])`
-/

namespace A369758.P18132185728331651389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369720 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A369758.P18132185728331651389

namespace A369758

/-- `A369720(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])` -/
def P18132185728331651389.Spec : Prop :=
  ∀ n, P18132185728331651389.a n = A369758 (n + 1)

end A369758

/-! ## A369758.P16613787370301726388

`A369720(A356191(n+1))`
-/

namespace A369758.P16613787370301726388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369720 (A356191 (n + 1)).toNat

end

end A369758.P16613787370301726388

namespace A369758

/-- `A369720(A356191(n+1))` -/
def P16613787370301726388.Spec : Prop :=
  ∀ n, P16613787370301726388.a n = A369758 (n + 1)

end A369758

/-! ## A369758.P4333103173924782278

`∑{d}[(n+1)*A365298(n+1), #]`
-/

namespace A369758.P4333103173924782278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A369758.P4333103173924782278

namespace A369758

/-- `∑{d}[(n+1)*A365298(n+1), #]` -/
def P4333103173924782278.Spec : Prop :=
  ∀ n, (P4333103173924782278.a n : ℤ) = A369758 (n + 1)

end A369758

/-! ## A369758.P2473997004105228710

`A365349(A197863(n+1))`
-/

namespace A369758.P2473997004105228710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365349 (A197863 (n + 1)).toNat

end

end A369758.P2473997004105228710

namespace A369758

/-- `A365349(A197863(n+1))` -/
def P2473997004105228710.Spec : Prop :=
  ∀ n, P2473997004105228710.a n = A369758 (n + 1)

end A369758

/-!
# A369759: The sum of unitary divisors of the smallest cubefull exponentially odd number that is divisible by n.

The programs for A369759, the canonical program `A369759.P9544556233329631005` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369759 has offset 1).

The definition of A369759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369759.P9544556233329631005

`A034448(A356192(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369759

/-- `A034448(A356192(n+1))` -/
def P9544556233329631005.Spec : Prop :=
  ∀ n, P9544556233329631005.a n = A369759 (n + 1)

theorem P9544556233329631005.correct : P9544556233329631005.Spec := by
  intro n
  simp only [A369759, Nat.add_sub_cancel]

end A369759

/-! ## A369759.P17126029730303207030

`A369721(A356192(n+1)/A360541(n+1))`
-/

namespace A369759.P17126029730303207030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (SequenceMachineLib.roundAway ((A356192 (n + 1) : ℚ) / (A360541 (n + 1) : ℚ))).toNat

end

end A369759.P17126029730303207030

namespace A369759

/-- `A369721(A356192(n+1)/A360541(n+1))` -/
def P17126029730303207030.Spec : Prop :=
  ∀ n, P17126029730303207030.a n = A369759 (n + 1)

end A369759

/-! ## A369759.P1726391019879074231

`A369721(A356191(n+1))`
-/

namespace A369759.P1726391019879074231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (A356191 (n + 1)).toNat

end

end A369759.P1726391019879074231

namespace A369759

/-- `A369721(A356191(n+1))` -/
def P1726391019879074231.Spec : Prop :=
  ∀ n, P1726391019879074231.a n = A369759 (n + 1)

end A369759

/-! ## A369759.P6781511689161663738

`A369721(A007913(n+1)*A011264(n+1))`
-/

namespace A369759.P6781511689161663738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (A007913 (n + 1) * A011264 (n + 1)).toNat

end

end A369759.P6781511689161663738

namespace A369759

/-- `A369721(A007913(n+1)*A011264(n+1))` -/
def P6781511689161663738.Spec : Prop :=
  ∀ n, P6781511689161663738.a n = A369759 (n + 1)

end A369759

/-! ## A369759.P3671561979321849402

`A365480(A197863(n+1))`
-/

namespace A369759.P3671561979321849402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365480 (A197863 (n + 1)).toNat

end

end A369759.P3671561979321849402

namespace A369759

/-- `A365480(A197863(n+1))` -/
def P3671561979321849402.Spec : Prop :=
  ∀ n, P3671561979321849402.a n = A369759 (n + 1)

end A369759

/-! ## A369759.P8245137852980131550

`A369721((n+1)*A365298(n+1)/A055231(n+1))`
-/

namespace A369759.P8245137852980131550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * A365298 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A369759.P8245137852980131550

namespace A369759

/-- `A369721((n+1)*A365298(n+1)/A055231(n+1))` -/
def P8245137852980131550.Spec : Prop :=
  ∀ n, P8245137852980131550.a n = A369759 (n + 1)

end A369759

/-!
# A369760: The number of divisors of the smallest multiple of n whose prime factorization exponents are all powers of 2.

The programs for A369760, there is no canonical definition to state claims against.
-/

/-! ## A369760.P9792959244901827920

`A000005(A356194(n+1))`
-/

namespace A369760.P9792959244901827920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356194 (n + 1)).toNat

end

end A369760.P9792959244901827920

/-! ## A369760.P4147931143488643362

`A000005((n+1)*A365297(n+1))`
-/

namespace A369760.P4147931143488643362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A365297 (n + 1)).toNat

end

end A369760.P4147931143488643362

/-! ## A369760.P2309265795301762314

`A367170((n+1)*A365297(n+1))`
-/

namespace A369760.P2309265795301762314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 ((n + 1 : ℤ) * A365297 (n + 1)).toNat

end

end A369760.P2309265795301762314

/-! ## A369760.P5593318214572113339

`A367170(A356194(2*n+1-n))`
-/

namespace A369760.P5593318214572113339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A356194 (2 * n + 1 - n)).toNat

end

end A369760.P5593318214572113339

/-! ## A369760.P15828302080178646039

`A369890(A356194(n+1))%A000040(n+1)`
-/

namespace A369760.P15828302080178646039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369890 (A356194 (n + 1)).toNat) (A000040 (n + 1))

end

end A369760.P15828302080178646039

/-! ## A369760.P910376789749280419

`A369890(A356194(n+1)%A075047(n+1))`
-/

namespace A369760.P910376789749280419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369890 (Int.tmod (A356194 (n + 1)) (A075047 (n + 1))).toNat

end

end A369760.P910376789749280419

/-! ## A369760.P8449452029342820852

`A257993(2*n+1)+A032741(A356194(n+1))`
-/

namespace A369760.P8449452029342820852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * n + 1) + A032741 (A356194 (n + 1)).toNat

end

end A369760.P8449452029342820852

/-! ## A369760.P7400286733270284293

`A369890(A102631(n+1))`
-/

namespace A369760.P7400286733270284293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369890 (A102631 (n + 1)).toNat

end

end A369760.P7400286733270284293

/-! ## A369760.P11572873097550451476

`A369310(A366994(n+1)²)`
-/

namespace A369760.P11572873097550451476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369310 (A366994 (n + 1) ^ 2).toNat

end

end A369760.P11572873097550451476

/-! ## A369760.P10344565563430758142

`A369890(A270436(n+1))`
-/

namespace A369760.P10344565563430758142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369890 (A270436 (n + 1)).toNat

end

end A369760.P10344565563430758142

/-!
# A369761: The sum of divisors of the smallest multiple of n whose prime factorization exponents are all powers of 2.

The programs for A369761, there is no canonical definition to state claims against.
-/

/-! ## A369761.P14836008626353639801

`A000203(A356194(n+1))`
-/

namespace A369761.P14836008626353639801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356194 (n + 1)).toNat

end

end A369761.P14836008626353639801

/-! ## A369761.P17803902578312996671

`∑{d}[(n+1)*A365297(n+1), #]`
-/

namespace A369761.P17803902578312996671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A369761.P17803902578312996671

/-! ## A369761.P11700042722865627273

`A366744((n+1)*A365297(n+1))`
-/

namespace A369761.P11700042722865627273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366744 ((n + 1 : ℤ) * A365297 (n + 1)).toNat

end

end A369761.P11700042722865627273

/-! ## A369761.P6783534569868895863

`A367171((n+1)*A365297(n+1))`
-/

namespace A369761.P6783534569868895863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 ((n + 1 : ℤ) * A365297 (n + 1)).toNat

end

end A369761.P6783534569868895863

/-! ## A369761.P4214800490874156293

`A367171(A356194(2*n+1-n))`
-/

namespace A369761.P4214800490874156293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A356194 (2 * n + 1 - n)).toNat

end

end A369761.P4214800490874156293

/-!
# A369762: The sum of unitary divisors of the smallest multiple of n whose prime factorization exponents are all powers of 2.

The programs for A369762, there is no canonical definition to state claims against.
-/

/-! ## A369762.P15210940721547743774

`A034448(A356194(n+1))`
-/

namespace A369762.P15210940721547743774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A356194 (n + 1)).toNat

end

end A369762.P15210940721547743774

/-! ## A369762.P806242740114487753

`A049417(gcd(A356194(2*(n+1)), A356194(n+1)))`
-/

namespace A369762.P806242740114487753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (Int.gcd (A356194 (2 * (n + 1))) (A356194 (n + 1)))

end

end A369762.P806242740114487753

/-! ## A369762.P1937437283595315520

`A034448(A367933(n+1))%A099651(n+1)`
-/

namespace A369762.P1937437283595315520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (A367933 (n + 1)).toNat) (A099651 (n + 1))

end

end A369762.P1937437283595315520

/-! ## A369762.P5201225007768381791

`A049417(n+1)+A000122(A089085(n+1))`
-/

namespace A369762.P5201225007768381791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1) + A000122 (A089085 (n + 1)).toNat

end

end A369762.P5201225007768381791

/-! ## A369762.P15832009634847624833

`A132952(A119479(n+5))+A049417(n+1)`
-/

namespace A369762.P15832009634847624833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (A119479 (n + 5)).toNat + A049417 (n + 1)

end

end A369762.P15832009634847624833

/-!
# A369764: Maximal coefficient of (1 - x) * (1 - x^8) * (1 - x^27) * ... * (1 - x^(n^3)).

The programs for A369764, there is no canonical definition to state claims against.
-/

/-! ## A369764.P10188220001656838994

`A122079(A369987(n))`
-/

namespace A369764.P10188220001656838994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A369987 n).toNat

end

end A369764.P10188220001656838994

/-! ## A369764.P13064314606508131536

`filter[A369987(n), A102609(#)]`
-/

namespace A369764.P13064314606508131536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A369764.P13064314606508131536

/-! ## A369764.P2615096133331035937

`filter[A369987(n), A133011(#)]`
-/

namespace A369764.P2615096133331035937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A369764.P2615096133331035937

/-! ## A369764.P3995099833509142956

`A369987(n)+A007814(A189560(n))`
-/

namespace A369764.P3995099833509142956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369987 n + A007814 (A189560 n).toNat

end

end A369764.P3995099833509142956

/-!
# A369765: Maximal coefficient of (1 + x) * (1 + x^2) * (1 + x^3) * (1 + x^5) * ... * (1 + x^prime(n-1)).

The programs for A369765, there is no canonical definition to state claims against.
-/

/-! ## A369765.P16601911873337326757

`A053261(A331022(n)+A002328(n+1))`
-/

namespace A369765.P16601911873337326757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (A331022 n + A002328 (n + 1)).toNat

end

end A369765.P16601911873337326757

/-!
# A369766: Maximal coefficient of Product_{i=1..n} Sum_{j=0..i} x^(i*j).

The programs for A369766, there is no canonical definition to state claims against.
-/

/-! ## A369766.P16223128059407247354

`A345909(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A369766.P16223128059407247354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A345909 (a (n - 1)).toNat + 1

end

end A369766.P16223128059407247354

/-! ## A369766.P8097279560094423004

`A304717(or(val(n+1, 2)+1, n*(2*n-1)))`
-/

namespace A369766.P8097279560094423004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304717 (Int.lor (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) ((n : ℤ) * ((2 * n : ℤ) - 1))).toNat

end

end A369766.P8097279560094423004

/-! ## A369766.P15543393174318581657

`A106506(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=6`
-/

namespace A369766.P15543393174318581657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 6] fun n a =>
  A106506 (a (n - 1) + a (n - 2) - a (n - 3)).toNat

end

end A369766.P15543393174318581657

/-!
# A369767: Maximal coefficient of Product_{i=1..n} Sum_{j=0..n} x^(i*j).

The programs for A369767, there is no canonical definition to state claims against.
-/

/-! ## A369767.P54891541279937175

`A100913(A115626(n))`
-/

namespace A369767.P54891541279937175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100913 (A115626 n).toNat

end

end A369767.P54891541279937175

/-! ## A369767.P12905612849138489092

`A100196(A374680(∑[n]))`
-/

namespace A369767.P12905612849138489092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A374680 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A369767.P12905612849138489092

/-!
# A369772: a(1) = 1, a(2) = 2; for n >= 3, a(n) = a(GCD(n - 1, a(n - 1))) + a(n - GCD(n - 1, a(n - 2))).

The programs for A369772, the canonical program `A369772.P8168012744899667824` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369772 has offset 1).

The definition of A369772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(gcd(n, a(n-1))-1)+a(n-gcd(n, a(n-2)))` (program `A369772.P8168012744899667824`, by `A369772.P8168012744899667824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369772.P8168012744899667824

`a(gcd(n, a(n-1))-1)+a(n-gcd(n, a(n-2)))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=2, a(5)=2, a(6)=4, a(7)=5, a(8)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369772

/-- `a(gcd(n, a(n-1))-1)+a(n-gcd(n, a(n-2)))` -/
def P8168012744899667824.Spec : Prop :=
  ∀ n, (P8168012744899667824.a n : ℤ) = A369772 (n + 1)

theorem P8168012744899667824.correct : P8168012744899667824.Spec := by
  intro n
  simp only [A369772, Nat.add_sub_cancel]

end A369772

/-!
# A369775: Maximal coefficient of (1 + x^2) * (1 + x^2 + x^3) * (1 + x^2 + x^3 + x^5) * ... * (1 + x^2 + ... + x^prime(n)).

The programs for A369775, there is no canonical definition to state claims against.
-/

/-! ## A369775.P2899431561411462582

`A389835(A148110(n))`
-/

namespace A369775.P2899431561411462582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389835 (A148110 n).toNat

end

end A369775.P2899431561411462582

/-! ## A369775.P13359203464187003074

`A105659(A056362(n+1))`
-/

namespace A369775.P13359203464187003074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A056362 (n + 1)).toNat

end

end A369775.P13359203464187003074

/-! ## A369775.P7172642852007512802

`A248227(A317652(n)+1)`
-/

namespace A369775.P7172642852007512802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A317652 n + 1).toNat

end

end A369775.P7172642852007512802

/-!
# A369777: Primes that do not divide any 3-Carmichael numbers.

The programs for A369777, there is no canonical definition to state claims against.
-/

/-! ## A369777.P3957817148397847937

`filter[A051663(n+1), A188082(#)]`
-/

namespace A369777.P3957817148397847937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188082 (f1 j).toNat = 1) n)

end

end A369777.P3957817148397847937

/-! ## A369777.P10934417729041655749

`filter[A051663(n+1), A285431(#)]`
-/

namespace A369777.P10934417729041655749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285431 (f1 j).toNat = 1) n)

end

end A369777.P10934417729041655749

/-!
# A369778: Number of inequivalent (as defined below) transitive binary relations on [n].

The programs for A369778, there is no canonical definition to state claims against.
-/

/-! ## A369778.P514606169804091018

`A269364(A099718(n))`
-/

namespace A369778.P514606169804091018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269364 (A099718 n).toNat

end

end A369778.P514606169804091018

/-!
# A369779: a(n) = n * Sum_{p|n, p prime} phi(n/p) / p.

The programs for A369779, the canonical program `A369779.P12147843016961809865` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369779 has offset 1).

The definition of A369779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369779.P4237340938878581308

`∑{d}[n+1, A002618(#)*A010051((n+1)/#)]`
-/

namespace A369779.P4237340938878581308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P4237340938878581308

namespace A369779

/-- `∑{d}[n+1, A002618(#)*A010051((n+1)/#)]` -/
def P4237340938878581308.Spec : Prop :=
  ∀ n, P4237340938878581308.a n = A369779 (n + 1)

end A369779

/-! ## A369779.P6336827449929666753

`∑{d}[n+1, A001221(#)*A063445((n+1)/#)]`
-/

namespace A369779.P6336827449929666753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P6336827449929666753

namespace A369779

/-- `∑{d}[n+1, A001221(#)*A063445((n+1)/#)]` -/
def P6336827449929666753.Spec : Prop :=
  ∀ n, P6336827449929666753.a n = A369779 (n + 1)

end A369779

/-! ## A369779.P16763727029436839266

`∑{d}[n+1, A057660(#)*A143519((n+1)/#)]`
-/

namespace A369779.P16763727029436839266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P16763727029436839266

namespace A369779

/-- `∑{d}[n+1, A057660(#)*A143519((n+1)/#)]` -/
def P16763727029436839266.Spec : Prop :=
  ∀ n, P16763727029436839266.a n = A369779 (n + 1)

end A369779

/-! ## A369779.P12147843016961809865

`∑{d}[n+1, A055615(#)*A322078((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A369779

/-- `∑{d}[n+1, A055615(#)*A322078((n+1)/#)]` -/
def P12147843016961809865.Spec : Prop :=
  ∀ n, P12147843016961809865.a n = A369779 (n + 1)

theorem P12147843016961809865.correct : P12147843016961809865.Spec := by
  intro n
  simp only [A369779, Nat.add_sub_cancel]

end A369779

/-! ## A369779.P12147956320496090688

`∑{d}[n+1, A117494(#)*A340850((n+1)/#)]`
-/

namespace A369779.P12147956320496090688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P12147956320496090688

namespace A369779

/-- `∑{d}[n+1, A117494(#)*A340850((n+1)/#)]` -/
def P12147956320496090688.Spec : Prop :=
  ∀ n, P12147956320496090688.a n = A369779 (n + 1)

end A369779

/-! ## A369779.P14898379882684731512

`∑{d}[n+1, A328722(#)*A369904((n+1)/#)]`
-/

namespace A369779.P14898379882684731512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A369904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P14898379882684731512

namespace A369779

/-- `∑{d}[n+1, A328722(#)*A369904((n+1)/#)]` -/
def P14898379882684731512.Spec : Prop :=
  ∀ n, P14898379882684731512.a n = A369779 (n + 1)

end A369779

/-!
# A369780: a(n) = number of subsets of {1,2,...,n} that contain more primes than nonprimes.

The programs for A369780, there is no canonical definition to state claims against.
-/

/-! ## A369780.P13202720235026826697

`A000225(n)-A369781(n)`
-/

namespace A369780.P13202720235026826697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A369781 n

end

end A369780.P13202720235026826697

/-! ## A369780.P10203999432408184625

`A000079(n)-(A369781(n)+1)`
-/

namespace A369780.P10203999432408184625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A369781 n + 1)

end

end A369780.P10203999432408184625

/-! ## A369780.P1930516789598317714

`Δ[A000295(n)]-A369781(n)`
-/

namespace A369780.P1930516789598317714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A369781 n

end

end A369780.P1930516789598317714

/-! ## A369780.P2918355984528228330

`Δ[A000325(n)]-A369781(n)`
-/

namespace A369780.P2918355984528228330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A369781 n

end

end A369780.P2918355984528228330

/-! ## A369780.P15618985279042292694

`record[A218616(n)]-A369781(n)`
-/

namespace A369780.P15618985279042292694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A369781 n

end

end A369780.P15618985279042292694

/-!
# A369781: a(n) = number of nonempty subsets S of {1,2,...,n} such that (number of primes in S) <= (number of nonprimes in S).

The programs for A369781, there is no canonical definition to state claims against.
-/

/-! ## A369781.P10140823160062186368

`A369853(n)+A369854(n)`
-/

namespace A369781.P10140823160062186368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369853 n + A369854 n

end

end A369781.P10140823160062186368

/-! ## A369781.P2825549575038796022

`A000225(n)-A369780(n)`
-/

namespace A369781.P2825549575038796022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A369780 n

end

end A369781.P2825549575038796022

/-! ## A369781.P12091341614808118332

`A000079(n)-(A369780(n)+1)`
-/

namespace A369781.P12091341614808118332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A369780 n + 1)

end

end A369781.P12091341614808118332

/-! ## A369781.P9664625104712081275

`A000051(n)-(A369780(n)+2)`
-/

namespace A369781.P9664625104712081275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A369780 n + 2)

end

end A369781.P9664625104712081275

/-! ## A369781.P11845035893885490846

`A023758(A000124(n))-A369780(n)`
-/

namespace A369781.P11845035893885490846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A000124 n).toNat - A369780 n

end

end A369781.P11845035893885490846

/-!
# A369783: Expansion of e.g.f. exp( exp(3*(exp(x)-1))-1 ).

The programs for A369783, there is no canonical definition to state claims against.
-/

/-! ## A369783.P11559443499993976254

`A384210(A126346(n+1))+A307678(n)`
-/

namespace A369783.P11559443499993976254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384210 (A126346 (n + 1)).toNat + A307678 n

end

end A369783.P11559443499993976254

/-!
# A369784: Expansion of e.g.f. exp( (exp(2*(exp(x)-1))-1)/2 ).

The programs for A369784, there is no canonical definition to state claims against.
-/

/-! ## A369784.P12932632076045852118

`A005185(A332278(n)+A171804(n))`
-/

namespace A369784.P12932632076045852118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A332278 n + A171804 n).toNat

end

end A369784.P12932632076045852118

/-! ## A369784.P4878596624708981239

`A278288(A278755(n)+A213101(n))`
-/

namespace A369784.P4878596624708981239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278288 (A278755 n + A213101 n).toNat

end

end A369784.P4878596624708981239

/-!
# A369785: Expansion of e.g.f. exp( (exp(3*(exp(x)-1))-1)/3 ).

The programs for A369785, there is no canonical definition to state claims against.
-/

/-! ## A369785.P1958104019232133673

`A104737(A005190(n))`
-/

namespace A369785.P1958104019232133673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104737 (A005190 n).toNat

end

end A369785.P1958104019232133673

/-!
# A369786: Number of different coefficient values in expansion of Product_{k=1..n} (1+x^(k^2)).

The programs for A369786, there is no canonical definition to state claims against.
-/

/-! ## A369786.P4421055174098301732

`A122921(A192477(n+1)+A004050(n+1))`
-/

namespace A369786.P4421055174098301732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A192477 (n + 1) + A004050 (n + 1)).toNat

end

end A369786.P4421055174098301732

/-!
# A369787: Number of different coefficient values in expansion of Product_{k=1..n} (1+x^(k*(k+1)/2)).

The programs for A369787, there is no canonical definition to state claims against.
-/

/-! ## A369787.P8994524327903613163

`A204553(A229997(n+1)+A079437(n))`
-/

namespace A369787.P8994524327903613163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A229997 (n + 1) + A079437 n).toNat

end

end A369787.P8994524327903613163

/-!
# A369791: a(n) is the maximal coefficient of (1 + x^a(1)) * (1 + x^a(1) + x^a(2)) * ... * (1 + x^a(1) + x^a(2) + ... + x^a(n-1)).

The programs for A369791, there is no canonical definition to state claims against.
-/

/-! ## A369791.P6170842305382410295

`A342516(A003274(n))`
-/

namespace A369791.P6170842305382410295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A003274 n).toNat

end

end A369791.P6170842305382410295

/-!
# A369793: a(n) is the number of occurrences of n in A063655.

The programs for A369793, there is no canonical definition to state claims against.
-/

/-! ## A369793.P14070179898106528892

`Δ[A225527(n)]`
-/

namespace A369793.P14070179898106528892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369793.P14070179898106528892

/-! ## A369793.P1914614612105067079

`Δ[A227800(n+1)]`
-/

namespace A369793.P1914614612105067079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369793.P1914614612105067079

/-! ## A369793.P3421487492897914970

`Δ[A225523(n)/2]`
-/

namespace A369793.P3421487492897914970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225523 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369793.P3421487492897914970

/-! ## A369793.P14772966343841408998

`Δ[A000463(A225523(n))]`
-/

namespace A369793.P14772966343841408998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A225523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369793.P14772966343841408998

/-! ## A369793.P7869467912926165715

`A004525(Δ[A225523(n)])`
-/

namespace A369793.P7869467912926165715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A369793.P7869467912926165715

/-! ## A369793.P8197868273601777190

`A038572(Δ[A225523(n)])`
-/

namespace A369793.P8197868273601777190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (n + 1) - f1 n).toNat

end

end A369793.P8197868273601777190

/-! ## A369793.P8604530274773979914

`A225527(n+1)-A225527(n)`
-/

namespace A369793.P8604530274773979914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225527 (n + 1) - A225527 n

end

end A369793.P8604530274773979914

/-! ## A369793.P11274350108019783432

`A227800(n+2)-A227800(n+1)`
-/

namespace A369793.P11274350108019783432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (n + 2) - A227800 (n + 1)

end

end A369793.P11274350108019783432

/-!
# A369794: Expansion of 1/(1 - x^5/(1-x)^6).

The programs for A369794, the canonical program `A369794.P3978708617283797670` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369794 has offset 0).

The definition of A369794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-7x^5+x^6))` (program `A369794.P3978708617283797670`, by `A369794.P3978708617283797670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369794.P3978708617283797670

`ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-7x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369794

/-- `ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-7x^5+x^6))` -/
def P3978708617283797670.Spec : Prop :=
  ∀ n, P3978708617283797670.a n = A369794 n

theorem P3978708617283797670.correct : P3978708617283797670.Spec := by
  intro n
  simp only [A369794]

end A369794

/-! ## A369794.P14158762246026196336

`A017837(record[A019426(n)])`
-/

namespace A369794.P14158762246026196336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369794.P14158762246026196336

namespace A369794

/-- `A017837(record[A019426(n)])` -/
def P14158762246026196336.Spec : Prop :=
  ∀ n, P14158762246026196336.a n = A369794 n

end A369794

/-! ## A369794.P14321899879820137288

`Δ[A127840(A008458(n)+1)]`
-/

namespace A369794.P14321899879820137288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A008458 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369794.P14321899879820137288

namespace A369794

/-- `Δ[A127840(A008458(n)+1)]` -/
def P14321899879820137288.Spec : Prop :=
  ∀ n, P14321899879820137288.a n = A369794 n

end A369794

/-! ## A369794.P15111952016290104159

`filter[A243740(n+5), A290452(#)]`
-/

namespace A369794.P15111952016290104159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243740 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290452 (f1 j).toNat = 1) n)

end

end A369794.P15111952016290104159

namespace A369794

/-- `filter[A243740(n+5), A290452(#)]` -/
def P15111952016290104159.Spec : Prop :=
  ∀ n, P15111952016290104159.a n = A369794 n

end A369794

/-! ## A369794.P9363977565089197422

`Δ[A212385(n)%A186069(n+1)]`
-/

namespace A369794.P9363977565089197422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212385 n) (A186069 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369794.P9363977565089197422

namespace A369794

/-- `Δ[A212385(n)%A186069(n+1)]` -/
def P9363977565089197422.Spec : Prop :=
  ∀ n, P9363977565089197422.a n = A369794 n

end A369794

/-!
# A369795: Binomial transform of A355408.

The programs for A369795, there is no canonical definition to state claims against.
-/

/-! ## A369795.P6372404220569003168

`A002264((A169759(n)+2)²)`
-/

namespace A369795.P6372404220569003168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((A169759 n + 2) ^ 2).toNat

end

end A369795.P6372404220569003168

/-!
# A369797: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(n+2))))).

The programs for A369797, there is no canonical definition to state claims against.
-/

/-! ## A369797.P14831724981992074244

`A286516(A016777(n+2)²)`
-/

namespace A369797.P14831724981992074244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286516 (A016777 (n + 2) ^ 2).toNat

end

end A369797.P14831724981992074244

/-!
# A369798: S is a "boomerang sequence": multiply each digit d of S by the number to which d belongs: the sequence S remains identical to itself if we follow each multiplication with a comma.

The programs for A369798, there is no canonical definition to state claims against.
-/

/-! ## A369798.P17060862351738047160

`A007283(n)%A217320(n+1)`
-/

namespace A369798.P17060862351738047160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007283 n) (A217320 (n + 1))

end

end A369798.P17060862351738047160

/-! ## A369798.P14013557676951310418

`record[A083890(n+1)*A336173(n)]`
-/

namespace A369798.P14013557676951310418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (n + 1) * A336173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369798.P14013557676951310418

/-! ## A369798.P1315599283066908105

`Δ[A033484(n)]%A217320(n+1)`
-/

namespace A369798.P1315599283066908105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A217320 (n + 1))

end

end A369798.P1315599283066908105

/-! ## A369798.P9151951265572387545

`Δ[A007283(n)]%A247203(n+1)`
-/

namespace A369798.P9151951265572387545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A247203 (n + 1))

end

end A369798.P9151951265572387545

/-!
# A369799: Number of binary relations R on [n] such that q(R) is a quasi-order and s(R) is a strict partial order (where q(R) and s(R) are defined below).

The programs for A369799, there is no canonical definition to state claims against.
-/

/-! ## A369799.P15379760466351584347

`A307002(A111847(n))-A055031(n+1)`
-/

namespace A369799.P15379760466351584347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (A111847 n).toNat - A055031 (n + 1)

end

end A369799.P15379760466351584347

