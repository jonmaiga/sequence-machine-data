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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A191300: Expansion of exp(x*arctan(x)) = 1 + Sum_{n>0} a(n)*x^(2*n)/(2*n-1)!.

The programs for A191300, there is no canonical definition to state claims against.
-/

/-! ## A191300.P13209360094588299188

`A296787(n)/A004277(n)`
-/

namespace A191300.P13209360094588299188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296787 n : ℚ) / (A004277 n : ℚ)

end

end A191300.P13209360094588299188

/-! ## A191300.P2518177001794761308

`A296787(n)/A004275(n+1)`
-/

namespace A191300.P2518177001794761308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296787 n : ℚ) / (A004275 (n + 1) : ℚ)

end

end A191300.P2518177001794761308

/-! ## A191300.P17184884544500675199

`A296787(n)/A131737(A016777(n))`
-/

namespace A191300.P17184884544500675199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296787 n : ℚ) / (A131737 (A016777 n).toNat : ℚ)

end

end A191300.P17184884544500675199

/-! ## A191300.P11698438668391507329

`A296787(n)/A004396(A008574(n)-n)`
-/

namespace A191300.P11698438668391507329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296787 n : ℚ) / (A004396 (A008574 n - (n : ℤ)).toNat : ℚ)

end

end A191300.P11698438668391507329

/-! ## A191300.P13729758839630990866

`A296787(n)/A007733(A000051(n))`
-/

namespace A191300.P13729758839630990866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296787 n : ℚ) / (A007733 (A000051 n).toNat : ℚ)

end

end A191300.P13729758839630990866

/-!
# A191301: Expansion of exp(x*arcsin(x)) = sum_{n>=0} a(n)*x^(2n)/product(k, 0

The programs for A191301, there is no canonical definition to state claims against.
-/

/-! ## A191301.P10555725468339517777

`A259647(n)/A004277(n)`
-/

namespace A191301.P10555725468339517777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259647 n : ℚ) / (A004277 n : ℚ)

end

end A191301.P10555725468339517777

/-! ## A191301.P18093546764663499956

`A259647(n)/record[A185048(n+1)]`
-/

namespace A191301.P18093546764663499956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259647 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A191301.P18093546764663499956

/-! ## A191301.P17206047374191754998

`A259647(n)/record[A322250(n+1)]`
-/

namespace A191301.P17206047374191754998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322250 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259647 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A191301.P17206047374191754998

/-! ## A191301.P5818372738492991605

`A259647(n)/A185048(2*n+1)`
-/

namespace A191301.P5818372738492991605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259647 n : ℚ) / (A185048 (2 * n + 1) : ℚ)

end

end A191301.P5818372738492991605

/-! ## A191301.P625395259726926121

`A259647(n)/A322250(2*n+1)`
-/

namespace A191301.P625395259726926121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259647 n : ℚ) / (A322250 (2 * n + 1) : ℚ)

end

end A191301.P625395259726926121

/-!
# A191304: Records in A132199.

The programs for A191304, there is no canonical definition to state claims against.
-/

/-! ## A191304.P7083080810617602982

`record[A221869(A028310(n))%A010901(n)]`
-/

namespace A191304.P7083080810617602982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221869 (A028310 n).toNat) (A010901 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191304.P7083080810617602982

/-! ## A191304.P14329978983634697982

`record[A221869(A008619(n))%A010901(n)]`
-/

namespace A191304.P14329978983634697982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221869 (A008619 n).toNat) (A010901 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191304.P14329978983634697982

/-! ## A191304.P1478737280231092525

`record[gcd(A168007(n+5), A168007(n+6))]`
-/

namespace A191304.P1478737280231092525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168007 (n + 5)) (A168007 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191304.P1478737280231092525

/-! ## A191304.P14734744944584412322

`gcd(C(2, n+2), p?[A168007(n+3)])`
-/

namespace A191304.P14734744944584412322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A191304.P14734744944584412322

/-! ## A191304.P17440460397808119616

`p?[A168007(n+3)]%∏[A020639(n+2)]`
-/

namespace A191304.P17440460397808119616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A191304.P17440460397808119616

/-!
# A191306: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths (i.e., Motzkin paths with no (1,0) steps at positive heights) of length n having height of first peak equal to k.

The programs for A191306, there is no canonical definition to state claims against.
-/

/-! ## A191306.P10275953987131026210

`A191525(A046079(2^n))`
-/

namespace A191306.P10275953987131026210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (A046079 (2 ^ n)).toNat

end

end A191306.P10275953987131026210

/-! ## A191306.P13742106286727105558

`A191525(A307409(2^n))`
-/

namespace A191306.P13742106286727105558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (A307409 (2 ^ n)).toNat

end

end A191306.P13742106286727105558

/-! ## A191306.P18202980129551726217

`A191525(gcd(n-1, A353353(2^n)))`
-/

namespace A191306.P18202980129551726217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (Int.gcd ((n : ℤ) - 1) (A353353 (2 ^ n)))

end

end A191306.P18202980129551726217

/-! ## A191306.P3699082500876159609

`A191525(A055645(round(sqrt(n²+1))-1))`
-/

namespace A191306.P3699082500876159609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (A055645 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat).toNat

end

end A191306.P3699082500876159609

/-! ## A191306.P14896802407187733114

`A191525(A057428(n)+A055645(n))`
-/

namespace A191306.P14896802407187733114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (A057428 n + A055645 n).toNat

end

end A191306.P14896802407187733114

/-!
# A191307: Sum of the heights of the first peaks in all dispersed Dyck paths of length n (i.e., in Motzkin paths of length n with no (1,0)-steps at positive heights).

The programs for A191307, the canonical program `A191307.P5108314988491942072` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191307 has offset 0).

The definition of A191307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191307.P5108314988491942072

`∑[A037955(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191307

/-- `∑[A037955(n)]` -/
def P5108314988491942072.Spec : Prop :=
  ∀ n, P5108314988491942072.a n = A191307 n

theorem P5108314988491942072.correct : P5108314988491942072.Spec := by
  intro n
  simp only [A191307]

end A191307

/-! ## A191307.P8235273921510822766

`∑[A001405(n)-A208355(n)]`
-/

namespace A191307.P8235273921510822766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A208355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P8235273921510822766

namespace A191307

/-- `∑[A001405(n)-A208355(n)]` -/
def P8235273921510822766.Spec : Prop :=
  ∀ n, P8235273921510822766.a n = A191307 n

end A191307

/-! ## A191307.P5535290752417161026

`A026010(n)-A072100(n+1)`
-/

namespace A191307.P5535290752417161026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - A072100 (n + 1)

end

end A191307.P5535290752417161026

namespace A191307

/-- `A026010(n)-A072100(n+1)` -/
def P5535290752417161026.Spec : Prop :=
  ∀ n, P5535290752417161026.a n = A191307 n

end A191307

/-! ## A191307.P10682475663061441914

`A037952(n+1)-A110199(n)`
-/

namespace A191307.P10682475663061441914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - A110199 n

end

end A191307.P10682475663061441914

namespace A191307

/-- `A037952(n+1)-A110199(n)` -/
def P10682475663061441914.Spec : Prop :=
  ∀ n, P10682475663061441914.a n = A191307 n

end A191307

/-! ## A191307.P16863985084600736549

`∑[A026010(n)-A001405(n+1)]`
-/

namespace A191307.P16863985084600736549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P16863985084600736549

namespace A191307

/-- `∑[A026010(n)-A001405(n+1)]` -/
def P16863985084600736549.Spec : Prop :=
  ∀ n, P16863985084600736549.a n = A191307 n

end A191307

/-! ## A191307.P1787040855367771297

`∑[A037952(n+1)-A001405(n)]`
-/

namespace A191307.P1787040855367771297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P1787040855367771297

namespace A191307

/-- `∑[A037952(n+1)-A001405(n)]` -/
def P1787040855367771297.Spec : Prop :=
  ∀ n, P1787040855367771297.a n = A191307 n

end A191307

/-! ## A191307.P2816249247645445226

`∑[A037951(n+1)-A037956(n)]`
-/

namespace A191307.P2816249247645445226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (n + 1) - A037956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P2816249247645445226

namespace A191307

/-- `∑[A037951(n+1)-A037956(n)]` -/
def P2816249247645445226.Spec : Prop :=
  ∀ n, P2816249247645445226.a n = A191307 n

end A191307

/-! ## A191307.P10266942449794440803

`A037952(n+1)-∑[A126120(n)]`
-/

namespace A191307.P10266942449794440803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P10266942449794440803

namespace A191307

/-- `A037952(n+1)-∑[A126120(n)]` -/
def P10266942449794440803.Spec : Prop :=
  ∀ n, P10266942449794440803.a n = A191307 n

end A191307

/-! ## A191307.P5162012857562331743

`∑[A007007(n+1)%A001405(n)]`
-/

namespace A191307.P5162012857562331743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007007 (n + 1)) (A001405 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P5162012857562331743

namespace A191307

/-- `∑[A007007(n+1)%A001405(n)]` -/
def P5162012857562331743.Spec : Prop :=
  ∀ n, P5162012857562331743.a n = A191307 n

end A191307

/-! ## A191307.P16840001633958466066

`A014495(n+1)+A037952(n+1)-A036256(n)`
-/

namespace A191307.P16840001633958466066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + (A037952 (n + 1) - A036256 n)

end

end A191307.P16840001633958466066

namespace A191307

/-- `A014495(n+1)+A037952(n+1)-A036256(n)` -/
def P16840001633958466066.Spec : Prop :=
  ∀ n, P16840001633958466066.a n = A191307 n

end A191307

/-! ## A191307.P12399518226573489553

`A037952(n+1)+A037952(n)-A072100(n+1)`
-/

namespace A191307.P12399518226573489553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + (A037952 n - A072100 (n + 1))

end

end A191307.P12399518226573489553

namespace A191307

/-- `A037952(n+1)+A037952(n)-A072100(n+1)` -/
def P12399518226573489553.Spec : Prop :=
  ∀ n, P12399518226573489553.a n = A191307 n

end A191307

/-! ## A191307.P16846593163489960433

`A014495(n+2)-A036256(n)`
-/

namespace A191307.P16846593163489960433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 2) - A036256 n

end

end A191307.P16846593163489960433

namespace A191307

/-- `A014495(n+2)-A036256(n)` -/
def P16846593163489960433.Spec : Prop :=
  ∀ n, P16846593163489960433.a n = A191307 n

end A191307

/-! ## A191307.P12762631576933389364

`A001405(n+2)-A072100(n+2)`
-/

namespace A191307.P12762631576933389364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) - A072100 (n + 2)

end

end A191307.P12762631576933389364

namespace A191307

/-- `A001405(n+2)-A072100(n+2)` -/
def P12762631576933389364.Spec : Prop :=
  ∀ n, P12762631576933389364.a n = A191307 n

end A191307

/-! ## A191307.P10011063574553000253

`A210736(n+3)-A072100(n+2)`
-/

namespace A191307.P10011063574553000253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 3) - A072100 (n + 2)

end

end A191307.P10011063574553000253

namespace A191307

/-- `A210736(n+3)-A072100(n+2)` -/
def P10011063574553000253.Spec : Prop :=
  ∀ n, P10011063574553000253.a n = A191307 n

end A191307

/-! ## A191307.P9312782314428347809

`∑[C(n, ceil(n/2)+1)]`
-/

namespace A191307.P9312782314428347809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (⌈(n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P9312782314428347809

namespace A191307

/-- `∑[C(n, ceil(n/2)+1)]` -/
def P9312782314428347809.Spec : Prop :=
  ∀ n, (P9312782314428347809.a n : ℤ) = A191307 n

end A191307

/-! ## A191307.P16400212343379632608

`a(n-1)+C(n, floor((n+3)/2))` with `a(0)=0`
-/

namespace A191307.P16400212343379632608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose n ⌊(n + 3 : ℚ) / 2⌋.toNat

end

end A191307.P16400212343379632608

namespace A191307

/-- `a(n-1)+C(n, floor((n+3)/2))` -/
def P16400212343379632608.Spec : Prop :=
  ∀ n, (P16400212343379632608.a n : ℤ) = A191307 n

end A191307

/-! ## A191307.P724177599510514807

`∑[A111505(A080827(n+1))]`
-/

namespace A191307.P724177599510514807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111505 (A080827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P724177599510514807

namespace A191307

/-- `∑[A111505(A080827(n+1))]` -/
def P724177599510514807.Spec : Prop :=
  ∀ n, P724177599510514807.a n = A191307 n

end A191307

/-! ## A191307.P11203921848458327655

`∑[A097805(A047838(n+2))]`
-/

namespace A191307.P11203921848458327655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A047838 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P11203921848458327655

namespace A191307

/-- `∑[A097805(A047838(n+2))]` -/
def P11203921848458327655.Spec : Prop :=
  ∀ n, P11203921848458327655.a n = A191307 n

end A191307

/-! ## A191307.P11827758798096085730

`∑[A097805(∑[A109613(n)]+n)]`
-/

namespace A191307.P11827758798096085730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P11827758798096085730

namespace A191307

/-- `∑[A097805(∑[A109613(n)]+n)]` -/
def P11827758798096085730.Spec : Prop :=
  ∀ n, P11827758798096085730.a n = A191307 n

end A191307

/-! ## A191307.P13126430677084577447

`∑[A097805(A001972(2*n+1)-1)]`
-/

namespace A191307.P13126430677084577447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P13126430677084577447

namespace A191307

/-- `∑[A097805(A001972(2*n+1)-1)]` -/
def P13126430677084577447.Spec : Prop :=
  ∀ n, P13126430677084577447.a n = A191307 n

end A191307

/-!
# A191309: Number of peaks at height >= 2 in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

The programs for A191309, the canonical program `A191309.P18243075712559101294` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191309 has offset 0).

The definition of A191309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191309.P18243075712559101294

`A000034(n)*A139262(A004526(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191309

/-- `A000034(n)*A139262(A004526(n))` -/
def P18243075712559101294.Spec : Prop :=
  ∀ n, P18243075712559101294.a n = A191309 n

theorem P18243075712559101294.correct : P18243075712559101294.Spec := by
  intro n
  simp only [A191309]

end A191309

/-! ## A191309.P16047058332645433566

`A000034(n)*A139262(A123108(n))`
-/

namespace A191309.P16047058332645433566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A139262 (A123108 n).toNat

end

end A191309.P16047058332645433566

namespace A191309

/-- `A000034(n)*A139262(A123108(n))` -/
def P16047058332645433566.Spec : Prop :=
  ∀ n, P16047058332645433566.a n = A191309 n

end A191309

/-! ## A191309.P1877034565679080229

`A008619(n)*A210736(n)-A011782(n)`
-/

namespace A191309.P1877034565679080229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A210736 n - A011782 n

end

end A191309.P1877034565679080229

namespace A191309

/-- `A008619(n)*A210736(n)-A011782(n)` -/
def P1877034565679080229.Spec : Prop :=
  ∀ n, P1877034565679080229.a n = A191309 n

end A191309

/-! ## A191309.P13632104485573244979

`A191527(n)-A191524(n)`
-/

namespace A191309.P13632104485573244979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n - A191524 n

end

end A191309.P13632104485573244979

namespace A191309

/-- `A191527(n)-A191524(n)` -/
def P13632104485573244979.Spec : Prop :=
  ∀ n, P13632104485573244979.a n = A191309 n

end A191309

/-! ## A191309.P14698526408722081303

`A340568(n)-A191522(n)`
-/

namespace A191309.P14698526408722081303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 n - A191522 n

end

end A191309.P14698526408722081303

namespace A191309

/-- `A340568(n)-A191522(n)` -/
def P14698526408722081303.Spec : Prop :=
  ∀ n, P14698526408722081303.a n = A191309 n

end A191309

/-! ## A191309.P17092862509369041978

`A103406(A007590(n))-A011782(n)`
-/

namespace A191309.P17092862509369041978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (A007590 n).toNat - A011782 n

end

end A191309.P17092862509369041978

namespace A191309

/-- `A103406(A007590(n))-A011782(n)` -/
def P17092862509369041978.Spec : Prop :=
  ∀ n, P17092862509369041978.a n = A191309 n

end A191309

/-!
# A191310: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths (i.e., Motzkin paths with no (1,0) steps at positive heights) of length n having k up-steps starting at level 0.

The programs for A191310, there is no canonical definition to state claims against.
-/

/-! ## A191310.P87210344484914371

`A178798(A062687(n+1))+A124428(n)`
-/

namespace A191310.P87210344484914371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A062687 (n + 1)).toNat + A124428 n

end

end A191310.P87210344484914371

/-! ## A191310.P9118253001180023832

`A177976(A056536(n+1)%A069564(n+1))`
-/

namespace A191310.P9118253001180023832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177976 (Int.tmod (A056536 (n + 1)) (A069564 (n + 1))).toNat

end

end A191310.P9118253001180023832

/-! ## A191310.P14971643940209487821

`A178798(A062687(n+1))+A172101(comp[n²]+n)`
-/

namespace A191310.P14971643940209487821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A062687 (n + 1)).toNat + A172101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A191310.P14971643940209487821

/-! ## A191310.P9608772958153690853

`A178798(A062687(n+1))+A099735(A119462(n))`
-/

namespace A191310.P9608772958153690853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A062687 (n + 1)).toNat + A099735 (A119462 n).toNat

end

end A191310.P9608772958153690853

/-! ## A191310.P14992637343007221265

`A124428(n)-A178798(A317081(n))`
-/

namespace A191310.P14992637343007221265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124428 n - A178798 (A317081 n).toNat

end

end A191310.P14992637343007221265

/-!
# A191311: Numbers m such that exactly half of the a such that 0

The programs for A191311, there is no canonical definition to state claims against.
-/

/-! ## A191311.P10305946028013258374

`eq[2, A247074(A028310(n))]`
-/

namespace A191311.P10305946028013258374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191311.P10305946028013258374

/-! ## A191311.P11451931328847032162

`filter[A064910(n), A156254(#)]`
-/

namespace A191311.P11451931328847032162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156254 (f1 j).toNat = 1) n)

end

end A191311.P11451931328847032162

/-! ## A191311.P9114976828771964719

`A020725(eq[2, A247074(n+1)])`
-/

namespace A191311.P9114976828771964719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191311.P9114976828771964719

/-!
# A191312: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths (i.e., Motzkin paths with no (1,0) steps at positive heights) of length n having abscissa of the first return to the horizontal axis equal to k (assumed to be 0 if there are no such returns).

The programs for A191312, there is no canonical definition to state claims against.
-/

/-! ## A191312.P4995953554220008312

`A133734(n)*A185319(A318191(n))`
-/

namespace A191312.P4995953554220008312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 n * A185319 (A318191 n).toNat

end

end A191312.P4995953554220008312

/-! ## A191312.P4237065312236589960

`A240159(n+2)-A240348(A240381(n+1))`
-/

namespace A191312.P4237065312236589960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240159 (n + 2) - A240348 (A240381 (n + 1)).toNat

end

end A191312.P4237065312236589960

/-! ## A191312.P7911560496116015196

`A240159(A077342(n+1)+1)`
-/

namespace A191312.P7911560496116015196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240159 (A077342 (n + 1) + 1).toNat

end

end A191312.P7911560496116015196

/-! ## A191312.P5974102043888406374

`A240159(A242474(n+1)+1)`
-/

namespace A191312.P5974102043888406374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240159 (A242474 (n + 1) + 1).toNat

end

end A191312.P5974102043888406374

/-! ## A191312.P7341176058836999343

`A240159(A351374(n+1)+1)`
-/

namespace A191312.P7341176058836999343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240159 (A351374 (n + 1) + 1).toNat

end

end A191312.P7341176058836999343

/-!
# A191313: Sum of the abscissae of the first returns to the horizontal axis (assumed to be 0 if there are no such returns) in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

The programs for A191313, the canonical program `A191313.P12692184345472457997` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191313 has offset 0).

The definition of A191313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191313.P12692184345472457997

`∑[A226881(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191313

/-- `∑[A226881(n)]` -/
def P12692184345472457997.Spec : Prop :=
  ∀ n, P12692184345472457997.a n = A191313 n

theorem P12692184345472457997.correct : P12692184345472457997.Spec := by
  intro n
  simp only [A191313]

end A191313

/-! ## A191313.P6609714450190063353

`∑[A027306(n)-1]`
-/

namespace A191313.P6609714450190063353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P6609714450190063353

namespace A191313

/-- `∑[A027306(n)-1]` -/
def P6609714450190063353.Spec : Prop :=
  ∀ n, P6609714450190063353.a n = A191313 n

end A191313

/-! ## A191313.P5414303586341347860

`∑[floor((A081672(n)-1)/2)]`
-/

namespace A191313.P5414303586341347860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081672 n - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P5414303586341347860

namespace A191313

/-- `∑[floor((A081672(n)-1)/2)]` -/
def P5414303586341347860.Spec : Prop :=
  ∀ n, P5414303586341347860.a n = A191313 n

end A191313

/-! ## A191313.P16464171543828314473

`∑[2^n-A058622(n)-1]`
-/

namespace A191313.P16464171543828314473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A058622 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P16464171543828314473

namespace A191313

/-- `∑[2^n-A058622(n)-1]` -/
def P16464171543828314473.Spec : Prop :=
  ∀ n, P16464171543828314473.a n = A191313 n

end A191313

/-! ## A191313.P18166512952529343372

`∑[A000225(n)-A058622(n)]`
-/

namespace A191313.P18166512952529343372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A058622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P18166512952529343372

namespace A191313

/-- `∑[A000225(n)-A058622(n)]` -/
def P18166512952529343372.Spec : Prop :=
  ∀ n, P18166512952529343372.a n = A191313 n

end A191313

/-! ## A191313.P14872767391202762560

`∑[A000295(n)+n-A058622(n)]`
-/

namespace A191313.P14872767391202762560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + ((n : ℤ) - A058622 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P14872767391202762560

namespace A191313

/-- `∑[A000295(n)+n-A058622(n)]` -/
def P14872767391202762560.Spec : Prop :=
  ∀ n, P14872767391202762560.a n = A191313 n

end A191313

/-! ## A191313.P9740039181824659985

`∑[A185252(n+1)/(n+1)-1]`
-/

namespace A191313.P9740039181824659985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185252 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P9740039181824659985

namespace A191313

/-- `∑[A185252(n+1)/(n+1)-1]` -/
def P9740039181824659985.Spec : Prop :=
  ∀ n, P9740039181824659985.a n = (A191313 n : ℚ)

end A191313

/-! ## A191313.P10846085217597149689

`∑[A292506(∑[n]+1)]-n`
-/

namespace A191313.P10846085217597149689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A191313.P10846085217597149689

namespace A191313

/-- `∑[A292506(∑[n]+1)]-n` -/
def P10846085217597149689.Spec : Prop :=
  ∀ n, P10846085217597149689.a n = A191313 n

end A191313

/-! ## A191313.P9894097813963126167

`∑[A226873(∑[n+3])-1]`
-/

namespace A191313.P9894097813963126167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P9894097813963126167

namespace A191313

/-- `∑[A226873(∑[n+3])-1]` -/
def P9894097813963126167.Spec : Prop :=
  ∀ n, P9894097813963126167.a n = A191313 n

end A191313

/-!
# A191314: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths (i.e., Motzkin paths with no (1,0) steps at positive heights) of length n and height k.

The programs for A191314, there is no canonical definition to state claims against.
-/

/-! ## A191314.P16486247583377390402

`A128502(A242661(A191306(n)))`
-/

namespace A191314.P16486247583377390402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128502 (A242661 (A191306 n).toNat).toNat

end

end A191314.P16486247583377390402

/-! ## A191314.P16809806877345510274

`gcd(A028346(n), A301512(A263140(n)))`
-/

namespace A191314.P16809806877345510274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028346 n) (A301512 (A263140 n).toNat)

end

end A191314.P16809806877345510274

/-!
# A191315: Sum of the heights of all dispersed Dyck paths of length n (i.e., of Motzkin paths of length n with no (1,0) steps at positive heights).

The programs for A191315, there is no canonical definition to state claims against.
-/

/-! ## A191315.P8063264127111787462

`A347609(A027430(n+1)+A008284(n+1))`
-/

namespace A191315.P8063264127111787462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A027430 (n + 1) + A008284 (n + 1)).toNat

end

end A191315.P8063264127111787462

/-!
# A191316: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n having k UDU's, where U = (1,1) and D = (1,-1).

The programs for A191316, there is no canonical definition to state claims against.
-/

/-! ## A191316.P12258033046540660547

`xor(A167393(A185274(n)), A191387(n))`
-/

namespace A191316.P12258033046540660547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A167393 (A185274 n).toNat) (A191387 n)

end

end A191316.P12258033046540660547

/-! ## A191316.P5085185194226661706

`xor(A185236(A055645(n)), A191387(n))`
-/

namespace A191316.P5085185194226661706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185236 (A055645 n).toNat) (A191387 n)

end

end A191316.P5085185194226661706

/-! ## A191316.P73015439498398708

`xor(A185274(A180200(n)), A191387(n))`
-/

namespace A191316.P73015439498398708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185274 (A180200 n).toNat) (A191387 n)

end

end A191316.P73015439498398708

/-! ## A191316.P16414021565078745333

`xor(A143052(A185274(n)²), A191387(n))`
-/

namespace A191316.P16414021565078745333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143052 (A185274 n ^ 2).toNat) (A191387 n)

end

end A191316.P16414021565078745333

/-! ## A191316.P7895531061218318131

`xor(A143053(A185274(n)²), A191387(n))`
-/

namespace A191316.P7895531061218318131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143053 (A185274 n ^ 2).toNat) (A191387 n)

end

end A191316.P7895531061218318131

/-!
# A191317: Number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0)-steps at positive heights) having no UDU's, where U=(1,1) and D=(1,-1).

The programs for A191317, there is no canonical definition to state claims against.
-/

/-! ## A191317.P3226082650127132867

`A191385(n)+A078027(2*(n+2))`
-/

namespace A191317.P3226082650127132867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 n + A078027 (2 * (n + 2))

end

end A191317.P3226082650127132867

/-! ## A191317.P9555393274462459890

`A191316(A152950(n+1)%A087811(n+1))`
-/

namespace A191317.P9555393274462459890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191316 (Int.tmod (A152950 (n + 1)) (A087811 (n + 1))).toNat

end

end A191317.P9555393274462459890

/-! ## A191317.P169908310380484612

`A088141(A230352(n+1))`
-/

namespace A191317.P169908310380484612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A230352 (n + 1)).toNat

end

end A191317.P169908310380484612

/-! ## A191317.P365758394969081458

`A004788(2*A128695(n))`
-/

namespace A191317.P365758394969081458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (2 * A128695 n).toNat

end

end A191317.P365758394969081458

/-!
# A191318: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights) having pyramid weight equal to k.

The programs for A191318, there is no canonical definition to state claims against.
-/

/-! ## A191318.P6477220399414580827

`A193957(A100861(n))+Δ[A101637(n+1)]`
-/

namespace A191318.P6477220399414580827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193957 (A100861 n).toNat + (f1 (n + 1) - f1 n)

end

end A191318.P6477220399414580827

/-! ## A191318.P4400192459120986324

`A104559(A100861(n)+1)+Δ[A101637(n+1)]`
-/

namespace A191318.P4400192459120986324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104559 (A100861 n + 1).toNat + (f1 (n + 1) - f1 n)

end

end A191318.P4400192459120986324

/-! ## A191318.P8292943571287981396

`A048766(A118588(n))*A118588(A208673(n)²)`
-/

namespace A191318.P8292943571287981396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A118588 n).toNat * A118588 (A208673 n ^ 2).toNat

end

end A191318.P8292943571287981396

/-! ## A191318.P18329210304082912439

`A048766(A118588(n*A208673(n)))`
-/

namespace A191318.P18329210304082912439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A118588 ((n : ℤ) * A208673 n).toNat).toNat

end

end A191318.P18329210304082912439

/-! ## A191318.P6069197233205534226

`A048766(A118588(n)^A208673(n))`
-/

namespace A191318.P6069197233205534226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A118588 n : ℚ) ^ (A208673 n : ℤ))).toNat

end

end A191318.P6069197233205534226

/-!
# A191319: Sum of pyramid weights of all dispersed Dyck paths of length n (i.e., of all Motzkin paths of length n with no (1,0) steps at positive heights).

The programs for A191319, the canonical program `A191319.P759594844245076753` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191319 has offset 0).

The definition of A191319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191319.P759594844245076753

`a(n-2)+A004526(n)*A210736(n)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191319

/-- `a(n-2)+A004526(n)*A210736(n)` -/
def P759594844245076753.Spec : Prop :=
  ∀ n, P759594844245076753.a n = A191319 n

theorem P759594844245076753.correct : P759594844245076753.Spec := by
  intro n
  simp only [A191319]

end A191319

/-! ## A191319.P5323961899772009515

`A000034(n)*A277178(A004526(n))`
-/

namespace A191319.P5323961899772009515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A277178 (A004526 n).toNat

end

end A191319.P5323961899772009515

namespace A191319

/-- `A000034(n)*A277178(A004526(n))` -/
def P5323961899772009515.Spec : Prop :=
  ∀ n, P5323961899772009515.a n = A191319 n

end A191319

/-! ## A191319.P17177104796409189423

`Δ[A032766(n)]*A277178(A004526(n))`
-/

namespace A191319.P17177104796409189423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A277178 (A004526 n).toNat

end

end A191319.P17177104796409189423

namespace A191319

/-- `Δ[A032766(n)]*A277178(A004526(n))` -/
def P17177104796409189423.Spec : Prop :=
  ∀ n, P17177104796409189423.a n = A191319 n

end A191319

/-! ## A191319.P7780812327295395026

`ratio[A016116(n)]*A277178(A004526(n))`
-/

namespace A191319.P7780812327295395026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A277178 (A004526 n).toNat : ℚ)

end

end A191319.P7780812327295395026

namespace A191319

/-- `ratio[A016116(n)]*A277178(A004526(n))` -/
def P7780812327295395026.Spec : Prop :=
  ∀ n, P7780812327295395026.a n = (A191319 n : ℚ)

end A191319

/-! ## A191319.P7408323596120079086

`A026633(and(1, -n))*A277178(A004526(n))`
-/

namespace A191319.P7408323596120079086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026633 (Int.land 1 (-(n : ℤ))).toNat * A277178 (A004526 n).toNat

end

end A191319.P7408323596120079086

namespace A191319

/-- `A026633(and(1, -n))*A277178(A004526(n))` -/
def P7408323596120079086.Spec : Prop :=
  ∀ n, P7408323596120079086.a n = A191319 n

end A191319

/-! ## A191319.P4145099916002983947

`A057174(and(1, -n))*A277178(A004526(n))`
-/

namespace A191319.P4145099916002983947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (Int.land 1 (-(n : ℤ))).toNat * A277178 (A004526 n).toNat

end

end A191319.P4145099916002983947

namespace A191319

/-- `A057174(and(1, -n))*A277178(A004526(n))` -/
def P4145099916002983947.Spec : Prop :=
  ∀ n, P4145099916002983947.a n = A191319 n

end A191319

/-! ## A191319.P17895394539220909629

`A277178(A004526(n))*A331348(and(1, -n))`
-/

namespace A191319.P17895394539220909629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277178 (A004526 n).toNat * A331348 (Int.land 1 (-(n : ℤ))).toNat

end

end A191319.P17895394539220909629

namespace A191319

/-- `A277178(A004526(n))*A331348(and(1, -n))` -/
def P17895394539220909629.Spec : Prop :=
  ∀ n, P17895394539220909629.a n = A191319 n

end A191319

/-! ## A191319.P5669517079928427652

`A277178(A004526(n))*A331349(and(1, -n))`
-/

namespace A191319.P5669517079928427652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277178 (A004526 n).toNat * A331349 (Int.land 1 (-(n : ℤ))).toNat

end

end A191319.P5669517079928427652

namespace A191319

/-- `A277178(A004526(n))*A331349(and(1, -n))` -/
def P5669517079928427652.Spec : Prop :=
  ∀ n, P5669517079928427652.a n = A191319 n

end A191319

/-! ## A191319.P10374836011426135627

`A059268(or(1, 2-n)+n)*A277178(A004526(n))`
-/

namespace A191319.P10374836011426135627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (Int.lor 1 (2 - (n : ℤ)) + (n : ℤ)).toNat * A277178 (A004526 n).toNat

end

end A191319.P10374836011426135627

namespace A191319

/-- `A059268(or(1, 2-n)+n)*A277178(A004526(n))` -/
def P10374836011426135627.Spec : Prop :=
  ∀ n, P10374836011426135627.a n = A191319 n

end A191319

/-! ## A191319.P11273428479983022911

`A077089(or(1, 2-n)+n)*A277178(A004526(n))`
-/

namespace A191319.P11273428479983022911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077089 (Int.lor 1 (2 - (n : ℤ)) + (n : ℤ)).toNat * A277178 (A004526 n).toNat

end

end A191319.P11273428479983022911

namespace A191319

/-- `A077089(or(1, 2-n)+n)*A277178(A004526(n))` -/
def P11273428479983022911.Spec : Prop :=
  ∀ n, P11273428479983022911.a n = A191319 n

end A191319

/-!
# A191322: Number of bases in which both n and the reversal of n are 3-digit numbers.

The programs for A191322, there is no canonical definition to state claims against.
-/

/-! ## A191322.P17231812527137711602

`A328163(A234852(n+4))%2`
-/

namespace A191322.P17231812527137711602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328163 (A234852 (n + 4)).toNat) 2

end

end A191322.P17231812527137711602

/-! ## A191322.P4552303550891166404

`A257732(A324934(3*n+4)+2)%2`
-/

namespace A191322.P4552303550891166404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257732 (A324934 (3 * n + 4) + 2).toNat) 2

end

end A191322.P4552303550891166404

/-! ## A191322.P6693197298493609371

`A212126(A007504(n)+A000045(n))`
-/

namespace A191322.P6693197298493609371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212126 (A007504 n + A000045 n).toNat

end

end A191322.P6693197298493609371

/-! ## A191322.P12971837603293306011

`A246146(A246147(n)%A130328(n))`
-/

namespace A191322.P12971837603293306011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (Int.tmod (A246147 n) (A130328 n)).toNat

end

end A191322.P12971837603293306011

/-! ## A191322.P3200815485439217770

`A010060(A162982(n)*A272207(n+2))`
-/

namespace A191322.P3200815485439217770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A162982 n * A272207 (n + 2)).toNat

end

end A191322.P3200815485439217770

/-!
# A191323: Increasing sequence generated by these rules: a(1)=1, and if x is in a then [3x/2]+1 and 3x+1 are in a, where [ ]=floor.

The programs for A191323, there is no canonical definition to state claims against.
-/

/-! ## A191323.P12845426349921697737

`lt[A335933(n), A335933(2*n+3)]`
-/

namespace A191323.P12845426349921697737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335933 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191323.P12845426349921697737

/-! ## A191323.P8738995607551633956

`A036445(A099389(n+1))+A004275(n)`
-/

namespace A191323.P8738995607551633956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A099389 (n + 1)).toNat + A004275 n

end

end A191323.P8738995607551633956

/-! ## A191323.P10166101765781419624

`A036445(p?[A100021(n+1)])+A004275(n)`
-/

namespace A191323.P10166101765781419624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A004275 n

end

end A191323.P10166101765781419624

/-! ## A191323.P18292166011451264921

`A036445(p?[A098764(n+1)-3])+A004275(n)`
-/

namespace A191323.P18292166011451264921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A004275 n

end

end A191323.P18292166011451264921

/-!
# A191324: Increasing sequence generated by these rules: a(1)=1, and if x is in a then [3x/2]+1 and 3x+2 are in a, where [ ]=floor.

The programs for A191324, there is no canonical definition to state claims against.
-/

/-! ## A191324.P10761813944797421062

`lt[0, Δ[A143091(n)]]`
-/

namespace A191324.P10761813944797421062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191324.P10761813944797421062

/-! ## A191324.P14561402152287273049

`eq[1, A048766(Δ[A143091(n)])]`
-/

namespace A191324.P14561402152287273049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191324.P14561402152287273049

/-! ## A191324.P15586361388559134807

`eq[1, A278907(Δ[A143091(n)])]`
-/

namespace A191324.P15586361388559134807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191324.P15586361388559134807

/-!
# A191325: Increasing sequence generated by these rules: a(1)=1, and if x is in a then [3x/2] and [5x/2] are in a, where [ ]=floor.

The programs for A191325, there is no canonical definition to state claims against.
-/

/-! ## A191325.P8308399080614664812

`lt[A344005(A329136(n)), A160818(n+1)]`
-/

namespace A191325.P8308399080614664812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A329136 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191325.P8308399080614664812

/-!
# A191326: Increasing sequence generated by these rules: a(1)=1, and if x is in a then [3x/2] and [7x/2] are in a, where [ ]=floor.

The programs for A191326, there is no canonical definition to state claims against.
-/

/-! ## A191326.P8036653727822442763

`eq[A087371(3*n+1), A303906(A216344(n))]`
-/

namespace A191326.P8036653727822442763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087371 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 (A216344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191326.P8036653727822442763

/-! ## A191326.P16748229994345008118

`A112690(A177231(n+5))+2*n`
-/

namespace A191326.P16748229994345008118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 (A177231 (n + 5)).toNat + (2 * n : ℤ)

end

end A191326.P16748229994345008118

/-! ## A191326.P10433922355960990318

`∑[gcd(A097825(n+1), A277059(n+2))]`
-/

namespace A191326.P10433922355960990318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097825 (n + 1)) (A277059 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191326.P10433922355960990318

/-! ## A191326.P13944919425742299515

`lt[A236547(A007318(n)), A254218(2*n+5)]`
-/

namespace A191326.P13944919425742299515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236547 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191326.P13944919425742299515

/-!
# A191329: (Lower Wythoff sequence mod 2)+(Upper Wythoff sequence mod 2).

The programs for A191329, the canonical program `A191329.P14559015055408526172` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191329 has offset 1).

The definition of A191329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085002, A171587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191329.P14559015055408526172

`A085002(n+1)+A171587(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A191329

/-- `A085002(n+1)+A171587(n)` -/
def P14559015055408526172.Spec : Prop :=
  ∀ n, P14559015055408526172.a n = A191329 (n + 1)

theorem P14559015055408526172.correct : P14559015055408526172.Spec := by
  intro n
  simp only [A191329, Nat.add_sub_cancel]

end A191329

/-! ## A191329.P5327364890990415365

`and(3, -(n*A035336(n+1)+3))`
-/

namespace A191329.P5327364890990415365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-((n : ℤ) * A035336 (n + 1) + 3))

end

end A191329.P5327364890990415365

namespace A191329

/-- `and(3, -(n*A035336(n+1)+3))` -/
def P5327364890990415365.Spec : Prop :=
  ∀ n, P5327364890990415365.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P793144242456311892

`A085002(n+1)+A000035(A005206(n))`
-/

namespace A191329.P793144242456311892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1) + A000035 (A005206 n).toNat

end

end A191329.P793144242456311892

namespace A191329

/-- `A085002(n+1)+A000035(A005206(n))` -/
def P793144242456311892.Spec : Prop :=
  ∀ n, P793144242456311892.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P3075596379605238517

`and(A284620(n+2), A284621(n+2))`
-/

namespace A191329.P3075596379605238517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284620 (n + 2)) (A284621 (n + 2))

end

end A191329.P3075596379605238517

namespace A191329

/-- `and(A284620(n+2), A284621(n+2))` -/
def P3075596379605238517.Spec : Prop :=
  ∀ n, P3075596379605238517.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P5075024528945176525

`and(A000034(n), A062157(A249115(n+1)))`
-/

namespace A191329.P5075024528945176525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A062157 (A249115 (n + 1)).toNat)

end

end A191329.P5075024528945176525

namespace A191329

/-- `and(A000034(n), A062157(A249115(n+1)))` -/
def P5075024528945176525.Spec : Prop :=
  ∀ n, P5075024528945176525.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P12861954966050783495

`1-A085002(A000201(n+1))+A085002(n+1)`
-/

namespace A191329.P12861954966050783495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085002 (A000201 (n + 1)).toNat + A085002 (n + 1)

end

end A191329.P12861954966050783495

namespace A191329

/-- `1-A085002(A000201(n+1))+A085002(n+1)` -/
def P12861954966050783495.Spec : Prop :=
  ∀ n, P12861954966050783495.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P10403617821749485054

`A085002(A000201(n+1)+3)+A085002(n+1)`
-/

namespace A191329.P10403617821749485054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A000201 (n + 1) + 3).toNat + A085002 (n + 1)

end

end A191329.P10403617821749485054

namespace A191329

/-- `A085002(A000201(n+1)+3)+A085002(n+1)` -/
def P10403617821749485054.Spec : Prop :=
  ∀ n, P10403617821749485054.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P5684032436137548256

`and(gcd(2, n+1), A005408(floor(ϕ*(n+1))))`
-/

namespace A191329.P5684032436137548256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 2 (n + 1) : ℤ) (A005408 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat)

end

end A191329.P5684032436137548256

namespace A191329

/-- `and(gcd(2, n+1), A005408(floor(ϕ*(n+1))))` -/
def P5684032436137548256.Spec : Prop :=
  ∀ n, P5684032436137548256.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P4572832127102993061

`A286752(2*n+1)+A171587(n)`
-/

namespace A191329.P4572832127102993061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (2 * n + 1) + A171587 n

end

end A191329.P4572832127102993061

namespace A191329

/-- `A286752(2*n+1)+A171587(n)` -/
def P4572832127102993061.Spec : Prop :=
  ∀ n, P4572832127102993061.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P5519725468306774749

`and(n+1-A035336(n+1), A176895(2*n))`
-/

namespace A191329.P5519725468306774749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1 : ℤ) - A035336 (n + 1)) (A176895 (2 * n))

end

end A191329.P5519725468306774749

namespace A191329

/-- `and(n+1-A035336(n+1), A176895(2*n))` -/
def P5519725468306774749.Spec : Prop :=
  ∀ n, P5519725468306774749.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P11943335950855651796

`A140081(A286754(n+1))`
-/

namespace A191329.P11943335950855651796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (A286754 (n + 1)).toNat

end

end A191329.P11943335950855651796

namespace A191329

/-- `A140081(A286754(n+1))` -/
def P11943335950855651796.Spec : Prop :=
  ∀ n, P11943335950855651796.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P2687100854385064591

`A085002(A085002(n+1)+A001950(n+1))+A085002(n+1)`
-/

namespace A191329.P2687100854385064591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A085002 (n + 1) + A001950 (n + 1)).toNat + A085002 (n + 1)

end

end A191329.P2687100854385064591

namespace A191329

/-- `A085002(A085002(n+1)+A001950(n+1))+A085002(n+1)` -/
def P2687100854385064591.Spec : Prop :=
  ∀ n, P2687100854385064591.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P3210886824377668705

`A171587(A001950(n+1))+A171587(n)`
-/

namespace A191329.P3210886824377668705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A001950 (n + 1)).toNat + A171587 n

end

end A191329.P3210886824377668705

namespace A191329

/-- `A171587(A001950(n+1))+A171587(n)` -/
def P3210886824377668705.Spec : Prop :=
  ∀ n, P3210886824377668705.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P12006430780692970026

`A171587(A003622(n+1))+A171587(n)`
-/

namespace A191329.P12006430780692970026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A003622 (n + 1)).toNat + A171587 n

end

end A191329.P12006430780692970026

namespace A191329

/-- `A171587(A003622(n+1))+A171587(n)` -/
def P12006430780692970026.Spec : Prop :=
  ∀ n, P12006430780692970026.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P17275210430366792406

`and(A000034(n), A316340(A001950(n+1)))`
-/

namespace A191329.P17275210430366792406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A316340 (A001950 (n + 1)).toNat)

end

end A191329.P17275210430366792406

namespace A191329

/-- `and(A000034(n), A316340(A001950(n+1)))` -/
def P17275210430366792406.Spec : Prop :=
  ∀ n, P17275210430366792406.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P18157206277645998326

`A284620(A035336(n+1))`
-/

namespace A191329.P18157206277645998326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A035336 (n + 1)).toNat

end

end A191329.P18157206277645998326

namespace A191329

/-- `A284620(A035336(n+1))` -/
def P18157206277645998326.Spec : Prop :=
  ∀ n, P18157206277645998326.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P12692231668450172248

`A284620(2*A000201(n+1)+n)`
-/

namespace A191329.P12692231668450172248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (2 * A000201 (n + 1) + (n : ℤ)).toNat

end

end A191329.P12692231668450172248

namespace A191329

/-- `A284620(2*A000201(n+1)+n)` -/
def P12692231668450172248.Spec : Prop :=
  ∀ n, P12692231668450172248.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P10305460191919930622

`A284620(A284621(n+2)-(n+3))`
-/

namespace A191329.P10305460191919930622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A284621 (n + 2) - (n + 3 : ℤ)).toNat

end

end A191329.P10305460191919930622

namespace A191329

/-- `A284620(A284621(n+2)-(n+3))` -/
def P10305460191919930622.Spec : Prop :=
  ∀ n, P10305460191919930622.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P7120379765103423451

`A284620(lt[1, A284620(n+1)]+n)`
-/

namespace A191329.P7120379765103423451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n)

end

end A191329.P7120379765103423451

namespace A191329

/-- `A284620(lt[1, A284620(n+1)]+n)` -/
def P7120379765103423451.Spec : Prop :=
  ∀ n, P7120379765103423451.a n = A191329 (n + 1)

end A191329

/-! ## A191329.P6704659405902204915

`A284620(eq[2, A284620(n+1)]+n)`
-/

namespace A191329.P6704659405902204915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n)

end

end A191329.P6704659405902204915

namespace A191329

/-- `A284620(eq[2, A284620(n+1)]+n)` -/
def P6704659405902204915.Spec : Prop :=
  ∀ n, P6704659405902204915.a n = A191329 (n + 1)

end A191329

/-!
# A191330: Positions of 0 in A191329.

The programs for A191330, the canonical program `A191330.P17506206293950054102` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191330 has offset 1).

The definition of A191330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191330.P3060870545275033997

`eq[1, floor(n/ϕ²)%gcd(2, n)]`
-/

namespace A191330.P3060870545275033997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋ (Nat.gcd 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191330.P3060870545275033997

namespace A191330

/-- `eq[1, floor(n/ϕ²)%gcd(2, n)]` -/
def P3060870545275033997.Spec : Prop :=
  ∀ n, (P3060870545275033997.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P14852887954295184104

`eq[ceil(ϕ*n)%2, cos(and(1, n))]`
-/

namespace A191330.P14852887954295184104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Nat.land 1 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A191330.P14852887954295184104

namespace A191330

/-- `eq[ceil(ϕ*n)%2, cos(and(1, n))]` -/
def P14852887954295184104.Spec : Prop :=
  ∀ n, (P14852887954295184104.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P5796153966567734352

`eq[(-1)^n, and(1, floor(n/ϕ²))]`
-/

namespace A191330.P5796153966567734352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191330.P5796153966567734352

namespace A191330

/-- `eq[(-1)^n, and(1, floor(n/ϕ²))]` -/
def P5796153966567734352.Spec : Prop :=
  ∀ n, (P5796153966567734352.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P5663618008389039457

`2*A005653(n+1)`
-/

namespace A191330.P5663618008389039457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005653 (n + 1)

end

end A191330.P5663618008389039457

namespace A191330

/-- `2*A005653(n+1)` -/
def P5663618008389039457.Spec : Prop :=
  ∀ n, P5663618008389039457.a n = A191330 (n + 1)

end A191330

/-! ## A191330.P17506206293950054102

`lt[(n+7)*A191329(n+1), 1]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A191330

/-- `lt[(n+7)*A191329(n+1), 1]+1` -/
def P17506206293950054102.Spec : Prop :=
  ∀ n, (P17506206293950054102.a n : ℤ) = A191330 (n + 1)

theorem P17506206293950054102.correct : P17506206293950054102.Spec := by
  intro n
  simp only [A191330, Nat.add_sub_cancel]

end A191330

/-! ## A191330.P17452056233122599654

`2*∪[A188468(n+1), A035511(n)]`
-/

namespace A191330.P17452056233122599654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035511 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P17452056233122599654

namespace A191330

/-- `2*∪[A188468(n+1), A035511(n)]` -/
def P17452056233122599654.Spec : Prop :=
  ∀ n, (P17452056233122599654.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P2049785331547207932

`2*(A190428(n+1)-A190430(n+1))`
-/

namespace A191330.P2049785331547207932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A190428 (n + 1) - A190430 (n + 1))

end

end A191330.P2049785331547207932

namespace A191330

/-- `2*(A190428(n+1)-A190430(n+1))` -/
def P2049785331547207932.Spec : Prop :=
  ∀ n, P2049785331547207932.a n = A191330 (n + 1)

end A191330

/-! ## A191330.P10767036448551001140

`2*∪[A001950(n+1), A190442(n+1)]`
-/

namespace A191330.P10767036448551001140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P10767036448551001140

namespace A191330

/-- `2*∪[A001950(n+1), A190442(n+1)]` -/
def P10767036448551001140.Spec : Prop :=
  ∀ n, (P10767036448551001140.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P13208781601134802820

`2*∪[A140398(n+1), A190442(n+1)]`
-/

namespace A191330.P13208781601134802820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P13208781601134802820

namespace A191330

/-- `2*∪[A140398(n+1), A190442(n+1)]` -/
def P13208781601134802820.Spec : Prop :=
  ∀ n, (P13208781601134802820.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P3404722011764814838

`2*∪[A187949(n+1), A190442(n+1)]`
-/

namespace A191330.P3404722011764814838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P3404722011764814838

namespace A191330

/-- `2*∪[A187949(n+1), A190442(n+1)]` -/
def P3404722011764814838.Spec : Prop :=
  ∀ n, (P3404722011764814838.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P10328806318958476614

`2*∪[A188016(n+1), A190442(n+1)]`
-/

namespace A191330.P10328806318958476614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P10328806318958476614

namespace A191330

/-- `2*∪[A188016(n+1), A190442(n+1)]` -/
def P10328806318958476614.Spec : Prop :=
  ∀ n, (P10328806318958476614.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P18386994182671799001

`2*∪[A188025(n+1), A190442(n+1)]`
-/

namespace A191330.P18386994182671799001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P18386994182671799001

namespace A191330

/-- `2*∪[A188025(n+1), A190442(n+1)]` -/
def P18386994182671799001.Spec : Prop :=
  ∀ n, (P18386994182671799001.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P3684639449030214872

`2*∪[A188036(n+1), A190442(n+1)]`
-/

namespace A191330.P3684639449030214872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P3684639449030214872

namespace A191330

/-- `2*∪[A188036(n+1), A190442(n+1)]` -/
def P3684639449030214872.Spec : Prop :=
  ∀ n, (P3684639449030214872.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P5660746267955574516

`2*∪[A188468(n+1), A190442(n+1)]`
-/

namespace A191330.P5660746267955574516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P5660746267955574516

namespace A191330

/-- `2*∪[A188468(n+1), A190442(n+1)]` -/
def P5660746267955574516.Spec : Prop :=
  ∀ n, (P5660746267955574516.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P8265650817350337301

`2*∪[A190249(n+1), A190442(n+1)]`
-/

namespace A191330.P8265650817350337301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P8265650817350337301

namespace A191330

/-- `2*∪[A190249(n+1), A190442(n+1)]` -/
def P8265650817350337301.Spec : Prop :=
  ∀ n, (P8265650817350337301.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P2147761208770584079

`A004277(A005653(n+1))`
-/

namespace A191330.P2147761208770584079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005653 (n + 1)).toNat

end

end A191330.P2147761208770584079

namespace A191330

/-- `A004277(A005653(n+1))` -/
def P2147761208770584079.Spec : Prop :=
  ∀ n, P2147761208770584079.a n = A191330 (n + 1)

end A191330

/-! ## A191330.P1152743618547983507

`∩[A283765(n+1), A103517(n)]`
-/

namespace A191330.P1152743618547983507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P1152743618547983507

namespace A191330

/-- `∩[A283765(n+1), A103517(n)]` -/
def P1152743618547983507.Spec : Prop :=
  ∀ n, (P1152743618547983507.a n : ℤ) = A191330 (n + 1)

end A191330

/-! ## A191330.P1175080645152315762

`A020739(A005653(n+1)-2)-2`
-/

namespace A191330.P1175080645152315762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A005653 (n + 1) - 2).toNat - 2

end

end A191330.P1175080645152315762

namespace A191330

/-- `A020739(A005653(n+1)-2)-2` -/
def P1175080645152315762.Spec : Prop :=
  ∀ n, P1175080645152315762.a n = A191330 (n + 1)

end A191330

/-! ## A191330.P1705364767678498509

`A005408(lt[1, A024569(n+1)])+1`
-/

namespace A191330.P1705364767678498509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A191330.P1705364767678498509

namespace A191330

/-- `A005408(lt[1, A024569(n+1)])+1` -/
def P1705364767678498509.Spec : Prop :=
  ∀ n, P1705364767678498509.a n = A191330 (n + 1)

end A191330

/-! ## A191330.P17884296669775609141

`∩[A163300(n+1), A283765(n+1)]`
-/

namespace A191330.P17884296669775609141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191330.P17884296669775609141

namespace A191330

/-- `∩[A163300(n+1), A283765(n+1)]` -/
def P17884296669775609141.Spec : Prop :=
  ∀ n, (P17884296669775609141.a n : ℤ) = A191330 (n + 1)

end A191330

/-!
# A191331: Positions of 2 in A191329.

The programs for A191331, the canonical program `A191331.P4692217345239116527` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191331 has offset 1).

The definition of A191331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191331.P10532861580684103932

`eq[(-1)^n, gcd(2, floor(ϕ*n))]`
-/

namespace A191331.P10532861580684103932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A191331.P10532861580684103932

namespace A191331

/-- `eq[(-1)^n, gcd(2, floor(ϕ*n))]` -/
def P10532861580684103932.Spec : Prop :=
  ∀ n, (P10532861580684103932.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P4130554573274220510

`eq[(-1)^n, floor(n/ϕ)%2]`
-/

namespace A191331.P4130554573274220510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / Real.goldenRatio⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191331.P4130554573274220510

namespace A191331

/-- `eq[(-1)^n, floor(n/ϕ)%2]` -/
def P4130554573274220510.Spec : Prop :=
  ∀ n, (P4130554573274220510.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P17071822211737550863

`eq[(-1)^n, and(1, floor(n/ϕ))]`
-/

namespace A191331.P17071822211737550863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191331.P17071822211737550863

namespace A191331

/-- `eq[(-1)^n, and(1, floor(n/ϕ))]` -/
def P17071822211737550863.Spec : Prop :=
  ∀ n, (P17071822211737550863.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P16079648654735574011

`2*lt[0, floor(2*ϕ*n)%2]`
-/

namespace A191331.P16079648654735574011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191331.P16079648654735574011

namespace A191331

/-- `2*lt[0, floor(2*ϕ*n)%2]` -/
def P16079648654735574011.Spec : Prop :=
  ∀ n, (P16079648654735574011.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P4692217345239116527

`2*A005652(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A191331

/-- `2*A005652(n+1)` -/
def P4692217345239116527.Spec : Prop :=
  ∀ n, P4692217345239116527.a n = A191331 (n + 1)

theorem P4692217345239116527.correct : P4692217345239116527.Spec := by
  intro n
  simp only [A191331, Nat.add_sub_cancel]

end A191331

/-! ## A191331.P1005578263746121906

`2*(A279934(n+1)-1)`
-/

namespace A191331.P1005578263746121906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A279934 (n + 1) - 1)

end

end A191331.P1005578263746121906

namespace A191331

/-- `2*(A279934(n+1)-1)` -/
def P1005578263746121906.Spec : Prop :=
  ∀ n, P1005578263746121906.a n = A191331 (n + 1)

end A191331

/-! ## A191331.P12533357241112609804

`2*∪[A190443(n+1), A026352(n)]`
-/

namespace A191331.P12533357241112609804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P12533357241112609804

namespace A191331

/-- `2*∪[A190443(n+1), A026352(n)]` -/
def P12533357241112609804.Spec : Prop :=
  ∀ n, (P12533357241112609804.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P5656156139184373772

`2*∪[A003234(n+1), A190443(n+1)]`
-/

namespace A191331.P5656156139184373772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P5656156139184373772

namespace A191331

/-- `2*∪[A003234(n+1), A190443(n+1)]` -/
def P5656156139184373772.Spec : Prop :=
  ∀ n, (P5656156139184373772.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P9680825851542774437

`2*∪[A140400(n+1), A190443(n+1)]`
-/

namespace A191331.P9680825851542774437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P9680825851542774437

namespace A191331

/-- `2*∪[A140400(n+1), A190443(n+1)]` -/
def P9680825851542774437.Spec : Prop :=
  ∀ n, (P9680825851542774437.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P2868391071294767439

`2*∪[A187952(n+1), A190443(n+1)]`
-/

namespace A191331.P2868391071294767439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P2868391071294767439

namespace A191331

/-- `2*∪[A187952(n+1), A190443(n+1)]` -/
def P2868391071294767439.Spec : Prop :=
  ∀ n, (P2868391071294767439.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P14630472792850668452

`2*eq[1, A078588(n)]`
-/

namespace A191331.P14630472792850668452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191331.P14630472792850668452

namespace A191331

/-- `2*eq[1, A078588(n)]` -/
def P14630472792850668452.Spec : Prop :=
  ∀ n, (P14630472792850668452.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P14174793214593111525

`∩[2*n, A283766(n+1)]`
-/

namespace A191331.P14174793214593111525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P14174793214593111525

namespace A191331

/-- `∩[2*n, A283766(n+1)]` -/
def P14174793214593111525.Spec : Prop :=
  ∀ n, (P14174793214593111525.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P18023723670072225596

`∩[2*n, A283768(n+1)]`
-/

namespace A191331.P18023723670072225596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P18023723670072225596

namespace A191331

/-- `∩[2*n, A283768(n+1)]` -/
def P18023723670072225596.Spec : Prop :=
  ∀ n, (P18023723670072225596.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P15829616235546433130

`A004277(A005652(n+1))`
-/

namespace A191331.P15829616235546433130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005652 (n + 1)).toNat

end

end A191331.P15829616235546433130

namespace A191331

/-- `A004277(A005652(n+1))` -/
def P15829616235546433130.Spec : Prop :=
  ∀ n, P15829616235546433130.a n = A191331 (n + 1)

end A191331

/-! ## A191331.P15671062247750572600

`A004275(A279934(n+1))`
-/

namespace A191331.P15671062247750572600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A279934 (n + 1)).toNat

end

end A191331.P15671062247750572600

namespace A191331

/-- `A004275(A279934(n+1))` -/
def P15671062247750572600.Spec : Prop :=
  ∀ n, P15671062247750572600.a n = A191331 (n + 1)

end A191331

/-! ## A191331.P10551079361090431374

`∩[A283768(n+1), A004277(n)]`
-/

namespace A191331.P10551079361090431374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P10551079361090431374

namespace A191331

/-- `∩[A283768(n+1), A004277(n)]` -/
def P10551079361090431374.Spec : Prop :=
  ∀ n, (P10551079361090431374.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P16689655259883346895

`∩[A283766(n+1), A005843(n)]`
-/

namespace A191331.P16689655259883346895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P16689655259883346895

namespace A191331

/-- `∩[A283766(n+1), A005843(n)]` -/
def P16689655259883346895.Spec : Prop :=
  ∀ n, (P16689655259883346895.a n : ℤ) = A191331 (n + 1)

end A191331

/-! ## A191331.P9062548482212184212

`∩[A283768(n+1), A005843(n)]`
-/

namespace A191331.P9062548482212184212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191331.P9062548482212184212

namespace A191331

/-- `∩[A283768(n+1), A005843(n)]` -/
def P9062548482212184212.Spec : Prop :=
  ∀ n, (P9062548482212184212.a n : ℤ) = A191331 (n + 1)

end A191331

/-!
# A191336: (A022838 mod 2)+(A054406 mod 2).

The programs for A191336, the canonical program `A191336.P3483189818635209172` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191336 has offset 1).

The definition of A191336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191336.P3483189818635209172

`A000035(A022838(n+1))+A000035(A054406(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191336

/-- `A000035(A022838(n+1))+A000035(A054406(n+1))` -/
def P3483189818635209172.Spec : Prop :=
  ∀ n, P3483189818635209172.a n = A191336 (n + 1)

theorem P3483189818635209172.correct : P3483189818635209172.Spec := by
  intro n
  simp only [A191336, Nat.add_sub_cancel]

end A191336

/-! ## A191336.P8497960670626618937

`A000035(A003512(n+1))+A000035(A054406(n+1))`
-/

namespace A191336.P8497960670626618937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003512 (n + 1)).toNat + A000035 (A054406 (n + 1)).toNat

end

end A191336.P8497960670626618937

namespace A191336

/-- `A000035(A003512(n+1))+A000035(A054406(n+1))` -/
def P8497960670626618937.Spec : Prop :=
  ∀ n, P8497960670626618937.a n = A191336 (n + 1)

end A191336

/-! ## A191336.P12458562184033150714

`A021913(A182778(n+1))+A000035(A022838(n+1))`
-/

namespace A191336.P12458562184033150714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A182778 (n + 1)).toNat + A000035 (A022838 (n + 1)).toNat

end

end A191336.P12458562184033150714

namespace A191336

/-- `A021913(A182778(n+1))+A000035(A022838(n+1))` -/
def P12458562184033150714.Spec : Prop :=
  ∀ n, P12458562184033150714.a n = A191336 (n + 1)

end A191336

/-! ## A191336.P2951677344484816641

`A000035(A003512(n+1))+A000035(A188088(n+1))`
-/

namespace A191336.P2951677344484816641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003512 (n + 1)).toNat + A000035 (A188088 (n + 1)).toNat

end

end A191336.P2951677344484816641

namespace A191336

/-- `A000035(A003512(n+1))+A000035(A188088(n+1))` -/
def P2951677344484816641.Spec : Prop :=
  ∀ n, P2951677344484816641.a n = A191336 (n + 1)

end A191336

/-! ## A191336.P2666909387639889748

`A000035(A188088(n+1))+A000035(A190334(n+1))`
-/

namespace A191336.P2666909387639889748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A188088 (n + 1)).toNat + A000035 (A190334 (n + 1)).toNat

end

end A191336.P2666909387639889748

namespace A191336

/-- `A000035(A188088(n+1))+A000035(A190334(n+1))` -/
def P2666909387639889748.Spec : Prop :=
  ∀ n, P2666909387639889748.a n = A191336 (n + 1)

end A191336

/-!
# A191337: Positions of 0 in A191336.

The programs for A191337, the canonical program `A191337.P12212658348506033970` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191337 has offset 1).

The definition of A191337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191337.P12212658348506033970

`eq[0, A191336(n+2)]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A191337

/-- `eq[0, A191336(n+2)]+2` -/
def P12212658348506033970.Spec : Prop :=
  ∀ n, (P12212658348506033970.a n : ℤ) = A191337 (n + 1)

theorem P12212658348506033970.correct : P12212658348506033970.Spec := by
  intro n
  simp only [A191337, Nat.add_sub_cancel]

end A191337

/-! ## A191337.P7787266426766941607

`lt[A191336(n+1), 1]+1`
-/

namespace A191337.P7787266426766941607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191337.P7787266426766941607

namespace A191337

/-- `lt[A191336(n+1), 1]+1` -/
def P7787266426766941607.Spec : Prop :=
  ∀ n, (P7787266426766941607.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P16339110941514212279

`lt[A191336(A028310(n)), 1]`
-/

namespace A191337.P16339110941514212279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191337.P16339110941514212279

namespace A191337

/-- `lt[A191336(A028310(n)), 1]` -/
def P16339110941514212279.Spec : Prop :=
  ∀ n, (P16339110941514212279.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P14528830606247533032

`eq[0, A191336(A000038(n)+n)]`
-/

namespace A191337.P14528830606247533032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191337.P14528830606247533032

namespace A191337

/-- `eq[0, A191336(A000038(n)+n)]` -/
def P14528830606247533032.Spec : Prop :=
  ∀ n, (P14528830606247533032.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P10109719270998827443

`eq[0, A191336(A000007(n)+n)]`
-/

namespace A191337.P10109719270998827443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191337.P10109719270998827443

namespace A191337

/-- `eq[0, A191336(A000007(n)+n)]` -/
def P10109719270998827443.Spec : Prop :=
  ∀ n, (P10109719270998827443.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P15342317003949425580

`eq[A215781(n)%4, A000034(n)]`
-/

namespace A191337.P15342317003949425580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215781 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191337.P15342317003949425580

namespace A191337

/-- `eq[A215781(n)%4, A000034(n)]` -/
def P15342317003949425580.Spec : Prop :=
  ∀ n, (P15342317003949425580.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P3093564261258137480

`eq[A000034(n), A010873(A215781(n))]`
-/

namespace A191337.P3093564261258137480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191337.P3093564261258137480

namespace A191337

/-- `eq[A000034(n), A010873(A215781(n))]` -/
def P3093564261258137480.Spec : Prop :=
  ∀ n, (P3093564261258137480.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P908045006180282943

`eq[1, A228826(A215781(n)+A040001(n))]`
-/

namespace A191337.P908045006180282943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A215781 n + A040001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191337.P908045006180282943

namespace A191337

/-- `eq[1, A228826(A215781(n)+A040001(n))]` -/
def P908045006180282943.Spec : Prop :=
  ∀ n, (P908045006180282943.a n : ℤ) = A191337 (n + 1)

end A191337

/-! ## A191337.P1736805073885944801

`eq[0, A191336(A233583(n+1))]`
-/

namespace A191337.P1736805073885944801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191337.P1736805073885944801

namespace A191337

/-- `eq[0, A191336(A233583(n+1))]` -/
def P1736805073885944801.Spec : Prop :=
  ∀ n, (P1736805073885944801.a n : ℤ) = A191337 (n + 1)

end A191337

/-!
# A191338: Positions of 1 in A191336.

The programs for A191338, the canonical program `A191338.P15959979912852935596` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191338 has offset 1).

The definition of A191338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191338.P15959979912852935596

`eq[1, A191336(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A191338

/-- `eq[1, A191336(n+1)]+1` -/
def P15959979912852935596.Spec : Prop :=
  ∀ n, (P15959979912852935596.a n : ℤ) = A191338 (n + 1)

theorem P15959979912852935596.correct : P15959979912852935596.Spec := by
  intro n
  simp only [A191338, Nat.add_sub_cancel]

end A191338

/-! ## A191338.P16247559234533060066

`eq[1, A000035(A014245(n+1))]+1`
-/

namespace A191338.P16247559234533060066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014245 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191338.P16247559234533060066

namespace A191338

/-- `eq[1, A000035(A014245(n+1))]+1` -/
def P16247559234533060066.Spec : Prop :=
  ∀ n, (P16247559234533060066.a n : ℤ) = A191338 (n + 1)

end A191338

/-! ## A191338.P7684924538429982087

`record[(n+1)*A000217(A182777(n+1))%2]`
-/

namespace A191338.P7684924538429982087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000217 (A182777 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P7684924538429982087

namespace A191338

/-- `record[(n+1)*A000217(A182777(n+1))%2]` -/
def P7684924538429982087.Spec : Prop :=
  ∀ n, P7684924538429982087.a n = A191338 (n + 1)

end A191338

/-! ## A191338.P7322068558530045174

`eq[A021913(A215781(n)), A059841(n)]`
-/

namespace A191338.P7322068558530045174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A215781 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191338.P7322068558530045174

namespace A191338

/-- `eq[A021913(A215781(n)), A059841(n)]` -/
def P7322068558530045174.Spec : Prop :=
  ∀ n, (P7322068558530045174.a n : ℤ) = A191338 (n + 1)

end A191338

/-! ## A191338.P3598009176653571360

`eq[A000035(n), A133872(A215781(n))]`
-/

namespace A191338.P3598009176653571360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191338.P3598009176653571360

namespace A191338

/-- `eq[A000035(n), A133872(A215781(n))]` -/
def P3598009176653571360.Spec : Prop :=
  ∀ n, (P3598009176653571360.a n : ℤ) = A191338 (n + 1)

end A191338

/-! ## A191338.P5391970794790462129

`eq[2, A021913(A215781(n))+A000034(n)]`
-/

namespace A191338.P5391970794790462129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A215781 n).toNat + A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191338.P5391970794790462129

namespace A191338

/-- `eq[2, A021913(A215781(n))+A000034(n)]` -/
def P5391970794790462129.Spec : Prop :=
  ∀ n, (P5391970794790462129.a n : ℤ) = A191338 (n + 1)

end A191338

/-! ## A191338.P15226537479637414790

`eq[n, A028310(n)*A191336(A028310(n))]`
-/

namespace A191338.P15226537479637414790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A191336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191338.P15226537479637414790

namespace A191338

/-- `eq[n, A028310(n)*A191336(A028310(n))]` -/
def P15226537479637414790.Spec : Prop :=
  ∀ n, (P15226537479637414790.a n : ℤ) = A191338 (n + 1)

end A191338

/-! ## A191338.P5331984094842966122

`record[A000027(n+1)*A000035(A014245(n+1))]`
-/

namespace A191338.P5331984094842966122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A000035 (A014245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P5331984094842966122

namespace A191338

/-- `record[A000027(n+1)*A000035(A014245(n+1))]` -/
def P5331984094842966122.Spec : Prop :=
  ∀ n, P5331984094842966122.a n = A191338 (n + 1)

end A191338

/-! ## A191338.P18422736605228570903

`record[(1-A001489(n))*A000035(A014245(n+1))]`
-/

namespace A191338.P18422736605228570903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n) * A000035 (A014245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P18422736605228570903

namespace A191338

/-- `record[(1-A001489(n))*A000035(A014245(n+1))]` -/
def P18422736605228570903.Spec : Prop :=
  ∀ n, P18422736605228570903.a n = A191338 (n + 1)

end A191338

/-! ## A191338.P5097098073058856403

`record[A000035(A014245(n+1))*A328399(2*n)]`
-/

namespace A191338.P5097098073058856403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014245 (n + 1)).toNat * A328399 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P5097098073058856403

namespace A191338

/-- `record[A000035(A014245(n+1))*A328399(2*n)]` -/
def P5097098073058856403.Spec : Prop :=
  ∀ n, P5097098073058856403.a n = A191338 (n + 1)

end A191338

/-! ## A191338.P15687291238999840590

`record[A026254(A182777(or(1, n)))]`
-/

namespace A191338.P15687291238999840590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A182777 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P15687291238999840590

namespace A191338

/-- `record[A026254(A182777(or(1, n)))]` -/
def P15687291238999840590.Spec : Prop :=
  ∀ n, P15687291238999840590.a n = A191338 (n + 1)

end A191338

/-! ## A191338.P11905066096801240900

`record[A026254(A182777(2*n+1))]`
-/

namespace A191338.P11905066096801240900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A182777 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P11905066096801240900

namespace A191338

/-- `record[A026254(A182777(2*n+1))]` -/
def P11905066096801240900.Spec : Prop :=
  ∀ n, P11905066096801240900.a n = A191338 (n + 1)

end A191338

/-! ## A191338.P11911338867117625666

`record[A008619(2*n)/A001511(A014245(n+1))]`
-/

namespace A191338.P11911338867117625666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A001511 (A014245 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191338.P11911338867117625666

namespace A191338

/-- `record[A008619(2*n)/A001511(A014245(n+1))]` -/
def P11911338867117625666.Spec : Prop :=
  ∀ n, P11911338867117625666.a n = (A191338 (n + 1) : ℚ)

end A191338

/-!
# A191339: Positions of 2 in A191336.

The programs for A191339, the canonical program `A191339.P16789462610040793669` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191339 has offset 1).

The definition of A191339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191339.P16789462610040793669

`lt[1, A191336(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A191339

/-- `lt[1, A191336(n+1)]+1` -/
def P16789462610040793669.Spec : Prop :=
  ∀ n, (P16789462610040793669.a n : ℤ) = A191339 (n + 1)

theorem P16789462610040793669.correct : P16789462610040793669.Spec := by
  intro n
  simp only [A191339, Nat.add_sub_cancel]

end A191339

/-! ## A191339.P8382353596194859808

`eq[2, A191336(n+2)]+2`
-/

namespace A191339.P8382353596194859808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191339.P8382353596194859808

namespace A191339

/-- `eq[2, A191336(n+2)]+2` -/
def P8382353596194859808.Spec : Prop :=
  ∀ n, (P8382353596194859808.a n : ℤ) = A191339 (n + 1)

end A191339

/-! ## A191339.P8072408280101527118

`lt[1, A191336(A028310(n))]`
-/

namespace A191339.P8072408280101527118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191339.P8072408280101527118

namespace A191339

/-- `lt[1, A191336(A028310(n))]` -/
def P8072408280101527118.Spec : Prop :=
  ∀ n, (P8072408280101527118.a n : ℤ) = A191339 (n + 1)

end A191339

/-! ## A191339.P12536718327901788203

`eq[2, A191336(A000007(n)+n)]`
-/

namespace A191339.P12536718327901788203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191339.P12536718327901788203

namespace A191339

/-- `eq[2, A191336(A000007(n)+n)]` -/
def P12536718327901788203.Spec : Prop :=
  ∀ n, (P12536718327901788203.a n : ℤ) = A191339 (n + 1)

end A191339

/-! ## A191339.P6845982539537917419

`eq[2, A191336(A000038(n)+n)]`
-/

namespace A191339.P6845982539537917419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191339.P6845982539537917419

namespace A191339

/-- `eq[2, A191336(A000038(n)+n)]` -/
def P6845982539537917419.Spec : Prop :=
  ∀ n, (P6845982539537917419.a n : ℤ) = A191339 (n + 1)

end A191339

/-! ## A191339.P420743666530906093

`eq[A040001(n), A228826(A215781(n))]`
-/

namespace A191339.P420743666530906093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191339.P420743666530906093

namespace A191339

/-- `eq[A040001(n), A228826(A215781(n))]` -/
def P420743666530906093.Spec : Prop :=
  ∀ n, (P420743666530906093.a n : ℤ) = A191339 (n + 1)

end A191339

/-! ## A191339.P8614327240381299224

`eq[2, A191336(A233583(n+1))]`
-/

namespace A191339.P8614327240381299224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191339.P8614327240381299224

namespace A191339

/-- `eq[2, A191336(A233583(n+1))]` -/
def P8614327240381299224.Spec : Prop :=
  ∀ n, (P8614327240381299224.a n : ℤ) = A191339 (n + 1)

end A191339

/-!
# A191340: (A022839 mod 2)+(A108598 mod 2).

The programs for A191340, the canonical program `A191340.P7440786748683160494` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191340 has offset 1).

The definition of A191340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191340.P7440786748683160494

`A000035(A022839(n+1))+A000035(A108598(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191340

/-- `A000035(A022839(n+1))+A000035(A108598(n+1))` -/
def P7440786748683160494.Spec : Prop :=
  ∀ n, P7440786748683160494.a n = A191340 (n + 1)

theorem P7440786748683160494.correct : P7440786748683160494.Spec := by
  intro n
  simp only [A191340, Nat.add_sub_cancel]

end A191340

/-!
# A191341: a(n) = 4^n - 2*2^n + 3.

The programs for A191341, the canonical program `A191341.P2024127929147058052` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191341 has offset 1).

The definition of A191341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191341.P2024127929147058052

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=11, a(2)=51`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191341

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P2024127929147058052.Spec : Prop :=
  ∀ n, P2024127929147058052.a n = A191341 (n + 1)

theorem P2024127929147058052.correct : P2024127929147058052.Spec := by
  intro n
  simp only [A191341, Nat.add_sub_cancel]

end A191341

/-! ## A191341.P4582007174252175955

`∑[2^n]²+2`
-/

namespace A191341.P4582007174252175955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2

end

end A191341.P4582007174252175955

namespace A191341

/-- `∑[2^n]²+2` -/
def P4582007174252175955.Spec : Prop :=
  ∀ n, (P4582007174252175955.a n : ℤ) = A191341 (n + 1)

end A191341

/-! ## A191341.P10012401376473457238

`or(2, ∑[2^n]²)`
-/

namespace A191341.P10012401376473457238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A191341.P10012401376473457238

namespace A191341

/-- `or(2, ∑[2^n]²)` -/
def P10012401376473457238.Spec : Prop :=
  ∀ n, (P10012401376473457238.a n : ℤ) = A191341 (n + 1)

end A191341

/-! ## A191341.P6813721972704385687

`xor(2, ∑[2^n]²)`
-/

namespace A191341.P6813721972704385687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A191341.P6813721972704385687

namespace A191341

/-- `xor(2, ∑[2^n]²)` -/
def P6813721972704385687.Spec : Prop :=
  ∀ n, (P6813721972704385687.a n : ℤ) = A191341 (n + 1)

end A191341

/-! ## A191341.P16054199360150602721

`∑[xor(Δ[4^n]-1, ∑[2^n])]`
-/

namespace A191341.P16054199360150602721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191341.P16054199360150602721

namespace A191341

/-- `∑[xor(Δ[4^n]-1, ∑[2^n])]` -/
def P16054199360150602721.Spec : Prop :=
  ∀ n, P16054199360150602721.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P15156011003881964107

`abs(3-(2*4^n+2*a(n-1)))` with `a(0)=3`
-/

namespace A191341.P15156011003881964107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |3 - ((2 * 4 ^ n : ℤ) + 2 * a (n - 1))|

end

end A191341.P15156011003881964107

namespace A191341

/-- `abs(3-(2*4^n+2*a(n-1)))` -/
def P15156011003881964107.Spec : Prop :=
  ∀ n, P15156011003881964107.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P6973636488543095922

`abs(or(1, 2^(n+1)-1)*∑[2^n]+2)`
-/

namespace A191341.P6973636488543095922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((2 ^ (n + 1) : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2|

end

end A191341.P6973636488543095922

namespace A191341

/-- `abs(or(1, 2^(n+1)-1)*∑[2^n]+2)` -/
def P6973636488543095922.Spec : Prop :=
  ∀ n, P6973636488543095922.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P13779063687627008117

`abs(∑[2^n]*record[2^abs(1-n)-1]+2)`
-/

namespace A191341.P13779063687627008117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2|

end

end A191341.P13779063687627008117

namespace A191341

/-- `abs(∑[2^n]*record[2^abs(1-n)-1]+2)` -/
def P13779063687627008117.Spec : Prop :=
  ∀ n, P13779063687627008117.a n = (A191341 (n + 1) : ℚ)

end A191341

/-! ## A191341.P5365847065224195806

`record[A077896(n)²+2]`
-/

namespace A191341.P5365847065224195806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P5365847065224195806

namespace A191341

/-- `record[A077896(n)²+2]` -/
def P5365847065224195806.Spec : Prop :=
  ∀ n, P5365847065224195806.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P10475681449784943804

`record[A094024(n)²+2]`
-/

namespace A191341.P10475681449784943804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P10475681449784943804

namespace A191341

/-- `record[A094024(n)²+2]` -/
def P10475681449784943804.Spec : Prop :=
  ∀ n, P10475681449784943804.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P14880225414720166767

`record[A290418(n)²+2]`
-/

namespace A191341.P14880225414720166767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P14880225414720166767

namespace A191341

/-- `record[A290418(n)²+2]` -/
def P14880225414720166767.Spec : Prop :=
  ∀ n, P14880225414720166767.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P2944042929764602754

`record[A290422(n)²+2]`
-/

namespace A191341.P2944042929764602754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P2944042929764602754

namespace A191341

/-- `record[A290422(n)²+2]` -/
def P2944042929764602754.Spec : Prop :=
  ∀ n, P2944042929764602754.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P4002352310552783785

`record[A290673(n)²+2]`
-/

namespace A191341.P4002352310552783785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290673 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P4002352310552783785

namespace A191341

/-- `record[A290673(n)²+2]` -/
def P4002352310552783785.Spec : Prop :=
  ∀ n, P4002352310552783785.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P13243897609332941345

`record[Δ[A075427(n)]²+2]`
-/

namespace A191341.P13243897609332941345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P13243897609332941345

namespace A191341

/-- `record[Δ[A075427(n)]²+2]` -/
def P13243897609332941345.Spec : Prop :=
  ∀ n, P13243897609332941345.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P10911188188844033502

`2*(A000225(n+1)²/2+1)`
-/

namespace A191341.P10911188188844033502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000225 (n + 1) ^ 2 : ℚ) / 2 + 1)

end

end A191341.P10911188188844033502

namespace A191341

/-- `2*(A000225(n+1)²/2+1)` -/
def P10911188188844033502.Spec : Prop :=
  ∀ n, P10911188188844033502.a n = (A191341 (n + 1) : ℚ)

end A191341

/-! ## A191341.P14923943325675824319

`and(2-A281482(n+1), A285947(2*n+1))`
-/

namespace A191341.P14923943325675824319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A281482 (n + 1)) (A285947 (2 * n + 1))

end

end A191341.P14923943325675824319

namespace A191341

/-- `and(2-A281482(n+1), A285947(2*n+1))` -/
def P14923943325675824319.Spec : Prop :=
  ∀ n, P14923943325675824319.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P2266458769079001742

`and(2-A281482(n+1), A285948(2*n+1))`
-/

namespace A191341.P2266458769079001742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A281482 (n + 1)) (A285948 (2 * n + 1))

end

end A191341.P2266458769079001742

namespace A191341

/-- `and(2-A281482(n+1), A285948(2*n+1))` -/
def P2266458769079001742.Spec : Prop :=
  ∀ n, P2266458769079001742.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P45385597766621547

`record[A130330(n)²+2]`
-/

namespace A191341.P45385597766621547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P45385597766621547

namespace A191341

/-- `record[A130330(n)²+2]` -/
def P45385597766621547.Spec : Prop :=
  ∀ n, P45385597766621547.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P13341225609040709587

`record[A104709(n)²+2]`
-/

namespace A191341.P13341225609040709587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P13341225609040709587

namespace A191341

/-- `record[A104709(n)²+2]` -/
def P13341225609040709587.Spec : Prop :=
  ∀ n, P13341225609040709587.a n = A191341 (n + 1)

end A191341

/-! ## A191341.P10937502281656046773

`record[A130328(n)²+2]`
-/

namespace A191341.P10937502281656046773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191341.P10937502281656046773

namespace A191341

/-- `record[A130328(n)²+2]` -/
def P10937502281656046773.Spec : Prop :=
  ∀ n, P10937502281656046773.a n = A191341 (n + 1)

end A191341

/-!
# A191342: a(n) = 2^(n-1) - A190820(n).

The programs for A191342, there is no canonical definition to state claims against.
-/

/-! ## A191342.P10333512565397963910

`2^(n+1)-A190820(n+1)`
-/

namespace A191342.P10333512565397963910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A190820 (n + 1)

end

end A191342.P10333512565397963910

/-! ## A191342.P8009035471332068273

`Δ[∑[2^n]-A120411(n+1)]`
-/

namespace A191342.P8009035471332068273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A120411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191342.P8009035471332068273

/-! ## A191342.P11505231072897595990

`Δ[A036563(n+1)-∑[A190820(n)]]`
-/

namespace A191342.P11505231072897595990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191342.P11505231072897595990

/-! ## A191342.P16265201114563015366

`abs(A000079(n+1)-A190820(n+1))`
-/

namespace A191342.P16265201114563015366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A190820 (n + 1)|

end

end A191342.P16265201114563015366

/-! ## A191342.P7978618281015794061

`A000079(n+1)-Δ[A120411(n+1)]`
-/

namespace A191342.P7978618281015794061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191342.P7978618281015794061

/-!
# A191343: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 1 horizontally, vertically or diagonally neighboring 1.

The programs for A191343, there is no canonical definition to state claims against.
-/

/-! ## A191343.P18172690397150616040

`A005185(A355381(n))+n`
-/

namespace A191343.P18172690397150616040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A355381 n).toNat + (n : ℤ)

end

end A191343.P18172690397150616040

/-! ## A191343.P17506216757678343856

`A187211(n!)+A000788(n)`
-/

namespace A191343.P17506216757678343856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187211 (Nat.factorial n) + A000788 n

end

end A191343.P17506216757678343856

/-!
# A191344: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 2 horizontally, vertically or diagonally neighboring 1s.

The programs for A191344, there is no canonical definition to state claims against.
-/

/-! ## A191344.P10618682019707465765

`A023190(A163859(n))`
-/

namespace A191344.P10618682019707465765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A163859 n).toNat

end

end A191344.P10618682019707465765

/-! ## A191344.P17198835129488489068

`A191930(2*A209626(n))`
-/

namespace A191344.P17198835129488489068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191930 (2 * A209626 n).toNat

end

end A191344.P17198835129488489068

/-!
# A191345: Numbers n with property that n and 2n are sums of two distinct positive cubes.

The programs for A191345, there is no canonical definition to state claims against.
-/

/-! ## A191345.P7168790473332435585

`∩[A024670(n+1), A268319(n+1)]`
-/

namespace A191345.P7168790473332435585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191345.P7168790473332435585

/-! ## A191345.P14772773049464857535

`∩[A003325(n+1), A268319(n+1)]`
-/

namespace A191345.P14772773049464857535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191345.P14772773049464857535

/-! ## A191345.P2815459656666879906

`∩[A114090(n+1), A268319(n+1)]`
-/

namespace A191345.P2815459656666879906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191345.P2815459656666879906

/-!
# A191347: Array read by antidiagonals: ((floor(sqrt(n)) + sqrt(n))^k + (floor(sqrt(n)) - sqrt(n))^k)/2 for columns k >= 0 and rows n >= 0.

The programs for A191347, there is no canonical definition to state claims against.
-/

/-! ## A191347.P5859833526243607668

`A187445(A232006(n)+A072170(n))`
-/

namespace A191347.P5859833526243607668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187445 (A232006 n + A072170 n).toNat

end

end A191347.P5859833526243607668

/-! ## A191347.P15517482797908415886

`A072645(A047030(n)*A238802(n))`
-/

namespace A191347.P15517482797908415886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (A047030 n * A238802 n).toNat

end

end A191347.P15517482797908415886

/-! ## A191347.P5932418643211435384

`A072645(A047120(n)*A238802(n))`
-/

namespace A191347.P5932418643211435384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (A047120 n * A238802 n).toNat

end

end A191347.P5932418643211435384

/-! ## A191347.P13104340120668606428

`A308959(A300705(n+4))+A172263(2*A120060(n))`
-/

namespace A191347.P13104340120668606428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308959 (A300705 (n + 4)).toNat + A172263 (2 * A120060 n).toNat

end

end A191347.P13104340120668606428

/-! ## A191347.P10469345059138063906

`A255704(n+1)+A185284(A000961(n+1))`
-/

namespace A191347.P10469345059138063906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (n + 1) + A185284 (A000961 (n + 1)).toNat

end

end A191347.P10469345059138063906

/-!
# A191348: Array read by antidiagonals: ((ceiling(sqrt(n)) + sqrt(n))^k + (ceiling(sqrt(n)) - sqrt(n))^k)/2 for columns k >= 0 and rows n >= 0.

The programs for A191348, there is no canonical definition to state claims against.
-/

/-! ## A191348.P3729615088984309787

`A253893(2^A198792(n))`
-/

namespace A191348.P3729615088984309787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253893 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A198792 n : ℤ))).toNat

end

end A191348.P3729615088984309787

/-! ## A191348.P8452919322766160341

`A001222(A051437(A189233(n)))`
-/

namespace A191348.P8452919322766160341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051437 (A189233 n).toNat).toNat

end

end A191348.P8452919322766160341

/-! ## A191348.P9230520651953624002

`A001222(A051437(A321960(n)))`
-/

namespace A191348.P9230520651953624002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051437 (A321960 n).toNat).toNat

end

end A191348.P9230520651953624002

/-! ## A191348.P6447413331012248990

`A008687(A268436(n))`
-/

namespace A191348.P6447413331012248990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A268436 n).toNat

end

end A191348.P6447413331012248990

/-! ## A191348.P4695888689771157613

`A328324(A113103(n))`
-/

namespace A191348.P4695888689771157613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328324 (A113103 n).toNat

end

end A191348.P4695888689771157613

/-!
# A191349: Binomial sums: a(n) = Sum_{k=0..floor(n/3)} binomial(n-k,2*k)^2.

The programs for A191349, there is no canonical definition to state claims against.
-/

/-! ## A191349.P12334683792724820960

`A298567(2*n)`
-/

namespace A191349.P12334683792724820960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298567 (2 * n)

end

end A191349.P12334683792724820960

/-! ## A191349.P13224668186882724960

`lcm((-1)^n, A298567(A005843(n)))`
-/

namespace A191349.P13224668186882724960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A298567 (A005843 n).toNat)

end

end A191349.P13224668186882724960

/-! ## A191349.P1847792780068979233

`gcd(A130706(n), A298567(A004277(n)))`
-/

namespace A191349.P1847792780068979233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A298567 (A004277 n).toNat)

end

end A191349.P1847792780068979233

/-! ## A191349.P7442010963211937912

`A298567(A005843(n))%A298578(n+1)`
-/

namespace A191349.P7442010963211937912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298567 (A005843 n).toNat) (A298578 (n + 1))

end

end A191349.P7442010963211937912

/-! ## A191349.P5364127710717825008

`A298567(A005843(n))%A014010(n)`
-/

namespace A191349.P5364127710717825008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298567 (A005843 n).toNat) (A014010 n)

end

end A191349.P5364127710717825008

/-! ## A191349.P1211948843065618306

`A298567(record[A014681(n)])%A000108(n+2)`
-/

namespace A191349.P1211948843065618306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000108 (n + 2))

end

end A191349.P1211948843065618306

/-! ## A191349.P15738715050879422999

`A298567(record[A014681(n)])/A027907(n²)`
-/

namespace A191349.P15738715050879422999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A027907 (n ^ 2) : ℚ)

end

end A191349.P15738715050879422999

/-!
# A191350: The number of bases not exceeding n+1 in which the expansion of n (i) has only digits <=9 and (ii) represents a prime if digits are concatenated/reinterpreted as decimals.

The programs for A191350, there is no canonical definition to state claims against.
-/

/-! ## A191350.P8022767303097055347

`A333226(A095378(n+1))`
-/

namespace A191350.P8022767303097055347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (A095378 (n + 1)).toNat

end

end A191350.P8022767303097055347

/-! ## A191350.P6875449872966725956

`A326190(∑[p?[A285407(n)]])`
-/

namespace A191350.P6875449872966725956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191350.P6875449872966725956

/-! ## A191350.P17276303812985093671

`A325225(A003000(n+4)+n+1)`
-/

namespace A191350.P17276303812985093671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A003000 (n + 4) + (n + 1 : ℤ)).toNat

end

end A191350.P17276303812985093671

/-! ## A191350.P5306198224533191629

`A351014(A278114(n+1))+n%2`
-/

namespace A191350.P5306198224533191629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A278114 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A191350.P5306198224533191629

/-! ## A191350.P17516307756402294697

`A340988(A077957(n))+A000119(n)`
-/

namespace A191350.P17516307756402294697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A077957 n).toNat + 91) + A000119 n

end

end A191350.P17516307756402294697

/-!
# A191351: E.g.f. (1+x+x^2)^(x+x^2).

The programs for A191351, there is no canonical definition to state claims against.
-/

/-! ## A191351.P13033242924049355051

`xor(1, A329296(A293759(n+1)))`
-/

namespace A191351.P13033242924049355051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A329296 (A293759 (n + 1)).toNat)

end

end A191351.P13033242924049355051

/-! ## A191351.P1482220432581723603

`and(A179795(3*n+5), A213095(n))`
-/

namespace A191351.P1482220432581723603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179795 (3 * n + 5)) (A213095 n)

end

end A191351.P1482220432581723603

/-!
# A191352: Numbers n with property that 9*n is a sum of two distinct positive cubes.

The programs for A191352, there is no canonical definition to state claims against.
-/

/-! ## A191352.P18322688836819279722

`lt[1, A280618(A008591(n))]`
-/

namespace A191352.P18322688836819279722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A008591 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191352.P18322688836819279722

/-! ## A191352.P7805083662082644258

`eq[9, A191367(n+1)]+1`
-/

namespace A191352.P7805083662082644258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191352.P7805083662082644258

/-! ## A191352.P16996612389131756591

`record[A008591(n+1)/A191367(n+1)]`
-/

namespace A191352.P16996612389131756591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008591 (n + 1) : ℚ) / (A191367 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191352.P16996612389131756591

/-!
# A191354: Number of lattice paths from (0,0) to (n,n) using steps (1,0), (1,1), (1,2), and (2,1).

The programs for A191354, there is no canonical definition to state claims against.
-/

/-! ## A191354.P672987493337516897

`A387141(A099214(n+1))`
-/

namespace A191354.P672987493337516897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A099214 (n + 1)).toNat

end

end A191354.P672987493337516897

/-! ## A191354.P2140465627282486700

`A152467(A002783(n))+gcd(n, (n+1)!)`
-/

namespace A191354.P2140465627282486700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A002783 n).toNat + (Nat.gcd n (Nat.factorial (n + 1)) : ℤ)

end

end A191354.P2140465627282486700

/-! ## A191354.P14426473847755539468

`A028310(A152467(A002783(n))+n)`
-/

namespace A191354.P14426473847755539468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152467 (A002783 n).toNat + (n : ℤ)).toNat

end

end A191354.P14426473847755539468

/-! ## A191354.P6107657871584338628

`A152467(A002783(n))+A353428(n)+n`
-/

namespace A191354.P6107657871584338628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A002783 n).toNat + (A353428 n + (n : ℤ))

end

end A191354.P6107657871584338628

/-!
# A191355: Indices of terms in A069748 with two decimal digits 1 and all others 0.

The programs for A191355, there is no canonical definition to state claims against.
-/

/-! ## A191355.P15204845811922644917

`∑[n%3]+a(n-2)` with `a(0)=5, a(1)=6`
-/

namespace A191355.P15204845811922644917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A191355.P15204845811922644917

/-! ## A191355.P8444404881422299658

`∑[floor(n/2)+n²%3]+5`
-/

namespace A191355.P8444404881422299658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A191355.P8444404881422299658

/-! ## A191355.P8952675330518973005

`∑[a(n-3)+gcd(2, n)]` with `a(0)=5, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A191355.P8952675330518973005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 2, 1] fun n f1 =>
  f1 (n - 3) + Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191355.P8952675330518973005

/-! ## A191355.P8628562195557814199

`floor(∑[a(n-2)+3]/3)+5` with `a(0)=2, a(1)=2`
-/

namespace A191355.P8628562195557814199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋ + 5

end

end A191355.P8628562195557814199

/-! ## A191355.P14360203002803893577

`∑[floor(n/2)+floor((n+2)/3)-floor(n/3)]+5`
-/

namespace A191355.P14360203002803893577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ⌊(n + 2 : ℚ) / 3⌋ - ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A191355.P14360203002803893577

/-!
# A191356: Interpret the terms of A069748 having only decimal digits 0 and 1 as binary numbers and then convert those numbers to decimal.

The programs for A191356, there is no canonical definition to state claims against.
-/

/-! ## A191356.P10703439718760983212

`A006995(lt[A025149(n), A115873(n+1)])`
-/

namespace A191356.P10703439718760983212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191356.P10703439718760983212

/-! ## A191356.P826231881708602503

`eq[A178225(n), A321902(A117147(n+1))]`
-/

namespace A191356.P826231881708602503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (A117147 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191356.P826231881708602503

/-! ## A191356.P8475608084098327371

`record[gcd(A181578(n), A206913(n))]`
-/

namespace A191356.P8475608084098327371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181578 n) (A206913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191356.P8475608084098327371

/-! ## A191356.P3148009258300240999

`eq[A105769(n+1), A178225(n)]`
-/

namespace A191356.P3148009258300240999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191356.P3148009258300240999

/-! ## A191356.P10084978538609688092

`eq[A055945(n), A324326(n+1)]`
-/

namespace A191356.P10084978538609688092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191356.P10084978538609688092

/-!
# A191360: Number of the diagonal of the Wythoff array that contains n.

The programs for A191360, there is no canonical definition to state claims against.
-/

/-! ## A191360.P15454014504453218478

`A035612(n+1)-A003603(n+1)`
-/

namespace A191360.P15454014504453218478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - A003603 (n + 1)

end

end A191360.P15454014504453218478

/-! ## A191360.P1322608315518429200

`A035614(n)-A019586(n+1)`
-/

namespace A191360.P1322608315518429200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n - A019586 (n + 1)

end

end A191360.P1322608315518429200

/-! ## A191360.P10002794843925602943

`A035614(n)+1-A003603(n+1)`
-/

namespace A191360.P10002794843925602943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n + (1 - A003603 (n + 1))

end

end A191360.P10002794843925602943

/-! ## A191360.P13109185881256462831

`val(∑[A129761(n)], 2)-A019586(n+1)`
-/

namespace A191360.P13109185881256462831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ) - A019586 (n + 1)

end

end A191360.P13109185881256462831

/-! ## A191360.P12889842682567233778

`A035612(n+1)-(A019586(n+1)+1)`
-/

namespace A191360.P12889842682567233778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - (A019586 (n + 1) + 1)

end

end A191360.P12889842682567233778

/-! ## A191360.P16273578555060156297

`ceil(log2(A319432(n+1))-A003603(n+1))`
-/

namespace A191360.P16273578555060156297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A319432 (n + 1) : ℝ) - (A003603 (n + 1) : ℝ)⌉

end

end A191360.P16273578555060156297

/-! ## A191360.P15462725529411725202

`val(A048679(n+1), 2)+1-A003603(n+1)`
-/

namespace A191360.P15462725529411725202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A048679 (n + 1)).toNat 2 + 1 : ℤ) - A003603 (n + 1)

end

end A191360.P15462725529411725202

/-! ## A191360.P528428087821198459

`val(A277335(n+1), 2)+1-A003603(n+1)`
-/

namespace A191360.P528428087821198459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A277335 (n + 1)).toNat 2 + 1 : ℤ) - A003603 (n + 1)

end

end A191360.P528428087821198459

/-! ## A191360.P13125688965335578800

`val(A290258(n+2), 2)+1-A003603(n+1)`
-/

namespace A191360.P13125688965335578800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A290258 (n + 2)).toNat 2 + 1 : ℤ) - A003603 (n + 1)

end

end A191360.P13125688965335578800

/-! ## A191360.P6684456859202430118

`A035612(n+1)+A035614(n)-A360485(n+1)`
-/

namespace A191360.P6684456859202430118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) + (A035614 n - A360485 (n + 1))

end

end A191360.P6684456859202430118

/-!
# A191361: Number of the diagonal of the Wythoff difference array that contains n.

The programs for A191361, there is no canonical definition to state claims against.
-/

/-! ## A191361.P14394034734666109103

`A261095(floor(ϕ*(n+1))+n)-A120873(n+1)`
-/

namespace A191361.P14394034734666109103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat - A120873 (n + 1)

end

end A191361.P14394034734666109103

/-! ## A191361.P2540974143527574261

`A261095(A003622(n+1))-A003603(A001950(n+1))`
-/

namespace A191361.P2540974143527574261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A003622 (n + 1)).toNat - A003603 (A001950 (n + 1)).toNat

end

end A191361.P2540974143527574261

/-! ## A191361.P16843079977274512840

`A261095(A022342(n+1))-A003603(A001950(n+1))`
-/

namespace A191361.P16843079977274512840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A022342 (n + 1)).toNat - A003603 (A001950 (n + 1)).toNat

end

end A191361.P16843079977274512840

/-! ## A191361.P13184530231269682978

`A261095(A003622(n+1))-A334749(A060138(n)+1)`
-/

namespace A191361.P13184530231269682978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A003622 (n + 1)).toNat - A334749 (A060138 n + 1).toNat

end

end A191361.P13184530231269682978

/-! ## A191361.P17779785987749187762

`A261095(A022342(n+1))-A334749(A060138(n)+1)`
-/

namespace A191361.P17779785987749187762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A022342 (n + 1)).toNat - A334749 (A060138 n + 1).toNat

end

end A191361.P17779785987749187762

/-!
# A191362: Number of the diagonal of the dispersion of the even positive integers that contains n.

The programs for A191362, the canonical program `A191362.P9436509259666573639` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191362 has offset 1).

The definition of A191362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191362.P9436509259666573639

`floor(n/(xor(n, n+1)+1))-val(n+1, 2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191362

/-- `floor(n/(xor(n, n+1)+1))-val(n+1, 2)` -/
def P9436509259666573639.Spec : Prop :=
  ∀ n, P9436509259666573639.a n = A191362 (n + 1)

theorem P9436509259666573639.correct : P9436509259666573639.Spec := by
  intro n
  simp only [A191362, Nat.add_sub_cancel]

end A191362

/-! ## A191362.P6274519234937475995

`round(n/(xor(n, n+1)+1)-val(n+1, 2))`
-/

namespace A191362.P6274519234937475995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) - (SequenceMachineLib.valuation (n + 1) 2 : ℚ))

end

end A191362.P6274519234937475995

namespace A191362

/-- `round(n/(xor(n, n+1)+1)-val(n+1, 2))` -/
def P6274519234937475995.Spec : Prop :=
  ∀ n, P6274519234937475995.a n = A191362 (n + 1)

end A191362

/-! ## A191362.P7778656308791749179

`floor(n/2^val(n+1, 2))/2-val(n+1, 2)`
-/

namespace A191362.P7778656308791749179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2 - (SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A191362.P7778656308791749179

namespace A191362

/-- `floor(n/2^val(n+1, 2))/2-val(n+1, 2)` -/
def P7778656308791749179.Spec : Prop :=
  ∀ n, P7778656308791749179.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P8079074030319662380

`floor(n/(xor(n, n+1)+1))-floor(log2(xor(n, n+1)))`
-/

namespace A191362.P8079074030319662380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ - (Nat.log 2 (Nat.xor n (n + 1)) : ℤ)

end

end A191362.P8079074030319662380

namespace A191362

/-- `floor(n/(xor(n, n+1)+1))-floor(log2(xor(n, n+1)))` -/
def P8079074030319662380.Spec : Prop :=
  ∀ n, P8079074030319662380.a n = A191362 (n + 1)

end A191362

/-! ## A191362.P3119825875887959154

`floor(n/and(n+1, -(n+1)))/2-val(n+1, 2)`
-/

namespace A191362.P3119825875887959154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 - (SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A191362.P3119825875887959154

namespace A191362

/-- `floor(n/and(n+1, -(n+1)))/2-val(n+1, 2)` -/
def P3119825875887959154.Spec : Prop :=
  ∀ n, P3119825875887959154.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P13658973384510277014

`round(n/(xor(n, n+1)+1))-log2(or(n, n+1)-n)`
-/

namespace A191362.P13658973384510277014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)) : ℝ) - Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

end

end A191362.P13658973384510277014

namespace A191362

/-- `round(n/(xor(n, n+1)+1))-log2(or(n, n+1)-n)` -/
def P13658973384510277014.Spec : Prop :=
  ∀ n, P13658973384510277014.a n = (A191362 (n + 1) : ℝ)

end A191362

/-! ## A191362.P15791195721170572048

`log2(2^floor(n/(xor(n, n+1)+1))/2^val(n+1, 2))`
-/

namespace A191362.P15791195721170572048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

end

end A191362.P15791195721170572048

namespace A191362

/-- `log2(2^floor(n/(xor(n, n+1)+1))/2^val(n+1, 2))` -/
def P15791195721170572048.Spec : Prop :=
  ∀ n, P15791195721170572048.a n = (A191362 (n + 1) : ℝ)

end A191362

/-! ## A191362.P12766541546950914912

`((n+1)/2^val(n+1, 2)-(val((n+1)², 2)+1))/2`
-/

namespace A191362.P12766541546950914912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1 : ℚ)) / 2

end

end A191362.P12766541546950914912

namespace A191362

/-- `((n+1)/2^val(n+1, 2)-(val((n+1)², 2)+1))/2` -/
def P12766541546950914912.Spec : Prop :=
  ∀ n, P12766541546950914912.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P7699934642235089275

`∏{e}[xor(n, n+1)+1, floor(n/(xor(n, n+1)+1))+1-#]`
-/

namespace A191362.P7699934642235089275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 - (Nat.factorization (f1 n) p : ℤ))

end

end A191362.P7699934642235089275

namespace A191362

/-- `∏{e}[xor(n, n+1)+1, floor(n/(xor(n, n+1)+1))+1-#]` -/
def P7699934642235089275.Spec : Prop :=
  ∀ n, P7699934642235089275.a n = A191362 (n + 1)

end A191362

/-! ## A191362.P1465917691452860175

`((n+1)/2^val(n+1, 2)+1)/2-(val(n+1, 2)+1)`
-/

namespace A191362.P1465917691452860175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2 - (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A191362.P1465917691452860175

namespace A191362

/-- `((n+1)/2^val(n+1, 2)+1)/2-(val(n+1, 2)+1)` -/
def P1465917691452860175.Spec : Prop :=
  ∀ n, P1465917691452860175.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P8337714512756415457

`and((n+1)/and(n+1, -(n+1)), -2)/2-val(n+1, 2)`
-/

namespace A191362.P8337714512756415457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (-2) : ℚ) / 2 - (SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A191362.P8337714512756415457

namespace A191362

/-- `and((n+1)/and(n+1, -(n+1)), -2)/2-val(n+1, 2)` -/
def P8337714512756415457.Spec : Prop :=
  ∀ n, P8337714512756415457.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P10782660043713582629

`((n+1)/and(n+1, -(n+1))+1)/2-log2(xor(n, n+1)+1)`
-/

namespace A191362.P10782660043713582629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 : ℝ) - Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A191362.P10782660043713582629

namespace A191362

/-- `((n+1)/and(n+1, -(n+1))+1)/2-log2(xor(n, n+1)+1)` -/
def P10782660043713582629.Spec : Prop :=
  ∀ n, P10782660043713582629.a n = (A191362 (n + 1) : ℝ)

end A191362

/-! ## A191362.P14963498323662486474

`floor(n/(xor(n, n+1)+1))-∑{d}[n+1, (#+1)%2]/∑{d}[n+1, #%2]`
-/

namespace A191362.P14963498323662486474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℚ) - ((∑ d ∈ Nat.divisors (f1 n), (d + 1) % 2 : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℚ)

end

end A191362.P14963498323662486474

namespace A191362

/-- `floor(n/(xor(n, n+1)+1))-∑{d}[n+1, (#+1)%2]/∑{d}[n+1, #%2]` -/
def P14963498323662486474.Spec : Prop :=
  ∀ n, P14963498323662486474.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P971290661064737208

`floor(n/(xor(n, n+1)+1))-A001222(or(n, n+1)-n)`
-/

namespace A191362.P971290661064737208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ - A001222 (Nat.lor n (n + 1) - n)

end

end A191362.P971290661064737208

namespace A191362

/-- `floor(n/(xor(n, n+1)+1))-A001222(or(n, n+1)-n)` -/
def P971290661064737208.Spec : Prop :=
  ∀ n, P971290661064737208.a n = A191362 (n + 1)

end A191362

/-! ## A191362.P2579453303703136028

`floor(n/(xor(n, n+1)+1))-A001222(and(n+1, -(n+1)))`
-/

namespace A191362.P2579453303703136028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ - A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A191362.P2579453303703136028

namespace A191362

/-- `floor(n/(xor(n, n+1)+1))-A001222(and(n+1, -(n+1)))` -/
def P2579453303703136028.Spec : Prop :=
  ∀ n, P2579453303703136028.a n = A191362 (n + 1)

end A191362

/-! ## A191362.P1390531436209666027

`floor(n/(xor(n, n+1)+1))+1-A001222(xor(n, n+1)+1)`
-/

namespace A191362.P1390531436209666027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 - A001222 (Nat.xor n (n + 1) + 1)

end

end A191362.P1390531436209666027

namespace A191362

/-- `floor(n/(xor(n, n+1)+1))+1-A001222(xor(n, n+1)+1)` -/
def P1390531436209666027.Spec : Prop :=
  ∀ n, P1390531436209666027.a n = A191362 (n + 1)

end A191362

/-! ## A191362.P5447879848774195483

`floor(n/and(n+1, -(n+1)))/2-(A000005(xor(n, n+1)+1)-2)`
-/

namespace A191362.P5447879848774195483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 - (A000005 (Nat.xor n (n + 1) + 1) - 2 : ℚ)

end

end A191362.P5447879848774195483

namespace A191362

/-- `floor(n/and(n+1, -(n+1)))/2-(A000005(xor(n, n+1)+1)-2)` -/
def P5447879848774195483.Spec : Prop :=
  ∀ n, P5447879848774195483.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P3616253179371435725

`floor(n/and(n+1, -(n+1)))/2-A001222(n+1-and(n, n+1))`
-/

namespace A191362.P3616253179371435725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 - (A001222 (n + 1 - Nat.land n (n + 1)) : ℚ)

end

end A191362.P3616253179371435725

namespace A191362

/-- `floor(n/and(n+1, -(n+1)))/2-A001222(n+1-and(n, n+1))` -/
def P3616253179371435725.Spec : Prop :=
  ∀ n, P3616253179371435725.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P12759250161318748766

`((n+1)/and(n+1, -(n+1))+1)/2-A000005(and(n+1, -(n+1)))`
-/

namespace A191362.P12759250161318748766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 - (A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A191362.P12759250161318748766

namespace A191362

/-- `((n+1)/and(n+1, -(n+1))+1)/2-A000005(and(n+1, -(n+1)))` -/
def P12759250161318748766.Spec : Prop :=
  ∀ n, P12759250161318748766.a n = (A191362 (n + 1) : ℚ)

end A191362

/-! ## A191362.P12233271429190270512

`A114327(A075303(n))`
-/

namespace A191362.P12233271429190270512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A075303 n).toNat

end

end A191362.P12233271429190270512

namespace A191362

/-- `A114327(A075303(n))` -/
def P12233271429190270512.Spec : Prop :=
  ∀ n, P12233271429190270512.a n = A191362 (n + 1)

end A191362

/-!
# A191363: Numbers m whose deficiency is 2: sigma(m) - 2*m = -2.

The programs for A191363, the canonical program `A191363.P16502874192890773683` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191363 has offset 1).

The definition of A191363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191363.P16502874192890773683

`A007582(2^n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191363

/-- `A007582(2^n)` -/
def P16502874192890773683.Spec : Prop :=
  ∀ n, P16502874192890773683.a n = A191363 (n + 1)

theorem P16502874192890773683.correct : P16502874192890773683.Spec := by
  intro n
  simp only [A191363, Nat.add_sub_cancel]

end A191363

/-!
# A191364: E.g.f. (1+x)^((1-sqrt(1-4*x))/(2*x)).

The programs for A191364, there is no canonical definition to state claims against.
-/

/-! ## A191364.P18013947865608394346

`A053556(n)+A005843(A052719(n))`
-/

namespace A191364.P18013947865608394346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053556 n + A005843 (A052719 n).toNat

end

end A191364.P18013947865608394346

/-! ## A191364.P15187926128046508319

`A213212(n)+A002264(A052868(n))`
-/

namespace A191364.P15187926128046508319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213212 n + A002264 (A052868 n).toNat

end

end A191364.P15187926128046508319

/-!
# A191365: Expansion of e.g.f. (1/(1-x))^exp(x).

The programs for A191365, there is no canonical definition to state claims against.
-/

/-! ## A191365.P10904151248479842220

`A353995(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A191365.P10904151248479842220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353995 n + (n : ℤ) * a (n - 1)

end

end A191365.P10904151248479842220

/-! ## A191365.P11376658327935652803

`abs(A009139(n)-A009584(n))`
-/

namespace A191365.P11376658327935652803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009139 n - A009584 n|

end

end A191365.P11376658327935652803

/-! ## A191365.P8195750496288633363

`abs(2*A009139(n)-A009198(n))`
-/

namespace A191365.P8195750496288633363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A009139 n - A009198 n|

end

end A191365.P8195750496288633363

/-! ## A191365.P16214452125987307102

`(A009139(n)-A009584(n))*A033999(n)`
-/

namespace A191365.P16214452125987307102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009139 n - A009584 n) * A033999 n

end

end A191365.P16214452125987307102

/-! ## A191365.P11211505879177650936

`abs(A009198(n)-A009584(n)-A009584(n))`
-/

namespace A191365.P11211505879177650936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009198 n - A009584 n - A009584 n|

end

end A191365.P11211505879177650936

/-!
# A191368: Expansion of (x*exp(x)/(exp(x)-1))^2 = sum(n>=0, a(n)/(n!*(n+1)!)*x^n).

The programs for A191368, there is no canonical definition to state claims against.
-/

/-! ## A191368.P10593294905218302764

`A081908(n)-A253566(A337105(n))`
-/

namespace A191368.P10593294905218302764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 n - A253566 (A337105 n).toNat

end

end A191368.P10593294905218302764

/-!
# A191369: Numbers n with k divisors such that n-1 and n+1 in binary representation have same number k of 0's as 1's.

The programs for A191369, there is no canonical definition to state claims against.
-/

/-! ## A191369.P16469101369010987951

`∩[A135774(n+1), A191292(n+1)]`
-/

namespace A191369.P16469101369010987951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191369.P16469101369010987951

/-! ## A191369.P8222445574367483438

`∩[A047457(A031443(n+1)+1), A135774(n+1)]`
-/

namespace A191369.P8222445574367483438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (A031443 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191369.P8222445574367483438

/-! ## A191369.P9279147745142285950

`∩[A135774(n+1), A271833(A337238(n+1))]`
-/

namespace A191369.P9279147745142285950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271833 (A337238 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191369.P9279147745142285950

/-!
# A191370: a(n) = 2*(1+(-1)^n)/3 + 2*A010892(n-1).

The programs for A191370, the canonical program `A191370.P9490600084678236272` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191370 has offset 0).

The definition of A191370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191370.P9490600084678236272

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191370

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P9490600084678236272.Spec : Prop :=
  ∀ n, P9490600084678236272.a n = A191370 n

theorem P9490600084678236272.correct : P9490600084678236272.Spec := by
  intro n
  simp only [A191370]

end A191370

/-! ## A191370.P9531010718996092568

`A113405(n+3)-5*A113405(n)`
-/

namespace A191370.P9531010718996092568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 3) - 5 * A113405 n

end

end A191370.P9531010718996092568

namespace A191370

/-- `A113405(n+3)-5*A113405(n)` -/
def P9531010718996092568.Spec : Prop :=
  ∀ n, P9531010718996092568.a n = A191370 n

end A191370

/-! ## A191370.P5086652319987238874

`A132367(n)+A131708(n)`
-/

namespace A191370.P5086652319987238874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 n + A131708 n

end

end A191370.P5086652319987238874

namespace A191370

/-- `A132367(n)+A131708(n)` -/
def P5086652319987238874.Spec : Prop :=
  ∀ n, P5086652319987238874.a n = A191370 n

end A191370

/-! ## A191370.P11547117849411898839

`A078008(n)-A130772(n+2)`
-/

namespace A191370.P11547117849411898839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A130772 (n + 2)

end

end A191370.P11547117849411898839

namespace A191370

/-- `A078008(n)-A130772(n+2)` -/
def P11547117849411898839.Spec : Prop :=
  ∀ n, P11547117849411898839.a n = A191370 n

end A191370

/-! ## A191370.P12167275200061723979

`A130151(n)+A130707(n)-A130151(n+1)`
-/

namespace A191370.P12167275200061723979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n + (A130707 n - A130151 (n + 1))

end

end A191370.P12167275200061723979

namespace A191370

/-- `A130151(n)+A130707(n)-A130151(n+1)` -/
def P12167275200061723979.Spec : Prop :=
  ∀ n, P12167275200061723979.a n = A191370 n

end A191370

/-! ## A191370.P1600785452554892609

`A130707(n)-A010872(n)*A010892(n+1)`
-/

namespace A191370.P1600785452554892609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - A010872 n * A010892 (n + 1)

end

end A191370.P1600785452554892609

namespace A191370

/-- `A130707(n)-A010872(n)*A010892(n+1)` -/
def P1600785452554892609.Spec : Prop :=
  ∀ n, P1600785452554892609.a n = A191370 n

end A191370

/-! ## A191370.P17989483185126687391

`A130707(n)-A022003(n)*A087204(n+1)`
-/

namespace A191370.P17989483185126687391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - A022003 n * A087204 (n + 1)

end

end A191370.P17989483185126687391

namespace A191370

/-- `A130707(n)-A022003(n)*A087204(n+1)` -/
def P17989483185126687391.Spec : Prop :=
  ∀ n, P17989483185126687391.a n = A191370 n

end A191370

/-! ## A191370.P17493483382228689281

`Δ[A001045(n)-A130772(n)]`
-/

namespace A191370.P17493483382228689281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A130772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191370.P17493483382228689281

namespace A191370

/-- `Δ[A001045(n)-A130772(n)]` -/
def P17493483382228689281.Spec : Prop :=
  ∀ n, P17493483382228689281.a n = A191370 n

end A191370

/-! ## A191370.P6262631193009424242

`A000079(n)-6*A113405(n)`
-/

namespace A191370.P6262631193009424242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 6 * A113405 n

end

end A191370.P6262631193009424242

namespace A191370

/-- `A000079(n)-6*A113405(n)` -/
def P6262631193009424242.Spec : Prop :=
  ∀ n, P6262631193009424242.a n = A191370 n

end A191370

/-! ## A191370.P5440514911615471512

`Δ[A001045(n)+A001045(n+1)%6]`
-/

namespace A191370.P5440514911615471512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + Int.tmod (A001045 (n + 1)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191370.P5440514911615471512

namespace A191370

/-- `Δ[A001045(n)+A001045(n+1)%6]` -/
def P5440514911615471512.Spec : Prop :=
  ∀ n, P5440514911615471512.a n = A191370 n

end A191370

/-!
# A191371: Number of simple labeled graphs with (at most) 3-colored nodes such that no edge connects two nodes of the same color.

The programs for A191371, there is no canonical definition to state claims against.
-/

/-! ## A191371.P14220367231257410289

`A322280(∑[n+3]+n+3)`
-/

namespace A191371.P14220367231257410289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A191371.P14220367231257410289

/-! ## A191371.P2651442946825469566

`record[A322280(abs(A046691(n)))]`
-/

namespace A191371.P2651442946825469566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191371.P2651442946825469566

/-! ## A191371.P5232941380776465389

`record[A322280(eq[1, A322280(n+2)])]`
-/

namespace A191371.P5232941380776465389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191371.P5232941380776465389

/-! ## A191371.P10788308481546742053

`record[A322280(A001105(n)%A000124(n))]`
-/

namespace A191371.P10788308481546742053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (Int.tmod (A001105 n) (A000124 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191371.P10788308481546742053

/-! ## A191371.P4745704709194055061

`record[A322280(A046691(n)%A192949(n))]`
-/

namespace A191371.P4745704709194055061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (Int.tmod (A046691 n) (A192949 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191371.P4745704709194055061

/-!
# A191372: The Sierpinski-Stern triangle.

The programs for A191372, there is no canonical definition to state claims against.
-/

/-! ## A191372.P2723651719247976609

`A001221(A024645(n)+2^n)`
-/

namespace A191372.P2723651719247976609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A024645 n + (2 ^ n : ℤ)).toNat

end

end A191372.P2723651719247976609

/-! ## A191372.P3380436929394470778

`A001221(A004849(n+2)+A000225(n))`
-/

namespace A191372.P3380436929394470778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004849 (n + 2) + A000225 n).toNat

end

end A191372.P3380436929394470778

/-! ## A191372.P15434837856837680051

`A001221(A023105(n)*A029669(n))`
-/

namespace A191372.P15434837856837680051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A023105 n * A029669 n).toNat

end

end A191372.P15434837856837680051

/-! ## A191372.P4663041727899541910

`A001221(lcm(A023105(n), A029669(n)))`
-/

namespace A191372.P4663041727899541910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A023105 n) (A029669 n))

end

end A191372.P4663041727899541910

/-! ## A191372.P4742326617021534967

`A001221(A000010(A005714(n+3))-n)`
-/

namespace A191372.P4742326617021534967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (A005714 (n + 3)).toNat - (n : ℤ)).toNat

end

end A191372.P4742326617021534967

/-!
# A191373: Sum of binomial coefficients C(i+j,i) modulo 2 over all pairs (i,j) of positive integers satisfying 5i+j=n.

The programs for A191373, there is no canonical definition to state claims against.
-/

/-! ## A191373.P1543917772847388638

`A078978(A246884(n))`
-/

namespace A191373.P1543917772847388638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078978 (A246884 n).toNat

end

end A191373.P1543917772847388638

/-! ## A191373.P16460341260536391033

`A115577(3*A073711(n))`
-/

namespace A191373.P16460341260536391033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (3 * A073711 n).toNat

end

end A191373.P16460341260536391033

/-! ## A191373.P2752825270569379458

`A333749(A392399(n))`
-/

namespace A191373.P2752825270569379458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (A392399 n).toNat

end

end A191373.P2752825270569379458

/-! ## A191373.P10718055552952339523

`A318357(A297166(n+2))`
-/

namespace A191373.P10718055552952339523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318357 (A297166 (n + 2)).toNat

end

end A191373.P10718055552952339523

/-! ## A191373.P2841322538381284296

`A345926(A345921(3*(n+1))%A356711(2*(n+2)))`
-/

namespace A191373.P2841322538381284296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345926 (Int.tmod (A345921 (3 * (n + 1))) (A356711 (2 * (n + 2)))).toNat

end

end A191373.P2841322538381284296

/-!
# A191374: Number of ways (up to rotations and reflections) of arranging numbers 1 through 2n around a circle such that the sum of each pair of adjacent numbers is composite.

The programs for A191374, there is no canonical definition to state claims against.
-/

/-! ## A191374.P2374651017099572775

`A182540(A004156(n)+1)`
-/

namespace A191374.P2374651017099572775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182540 (A004156 n + 1).toNat

end

end A191374.P2374651017099572775

/-! ## A191374.P7081540265435486075

`A182540(lt[0, A073467(n+3)])`
-/

namespace A191374.P7081540265435486075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073467 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A191374.P7081540265435486075

/-!
# A191375: Primes that are the sum of squares of three positive Fibonacci numbers.

The programs for A191375, there is no canonical definition to state claims against.
-/

/-! ## A191375.P3707660263090554956

`record[p?[A136450(n+1)+A136432(n)]]`
-/

namespace A191375.P3707660263090554956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136450 (n + 1) + A136432 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191375.P3707660263090554956

/-! ## A191375.P1313941105189944686

`record[A088254(A357859(n+2)+A260723(n+1))]`
-/

namespace A191375.P1313941105189944686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088254 (A357859 (n + 2) + A260723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191375.P1313941105189944686

/-!
# A191376: Primes that are the sum of two positive Fibonacci numbers and the square of a positive Fibonacci number.

The programs for A191376, there is no canonical definition to state claims against.
-/

/-! ## A191376.P10280367124507470381

`p?[lt[A352823(n+1), 2^val(n+1, 2)]]`
-/

namespace A191376.P10280367124507470381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352823 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191376.P10280367124507470381

/-! ## A191376.P9782668984125469571

`p?[A335126(A335467(n+2))]`
-/

namespace A191376.P9782668984125469571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335126 (A335467 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191376.P9782668984125469571

/-! ## A191376.P5198268341205914820

`p?[A032548(A325391(n))+2*n]`
-/

namespace A191376.P5198268341205914820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A325391 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191376.P5198268341205914820

/-! ## A191376.P15838099372971061230

`A000040(lt[A316996(n), A245788(n)])`
-/

namespace A191376.P15838099372971061230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191376.P15838099372971061230

/-! ## A191376.P16923350136220494

`A065091(lt[A275820(n), A242424(n+1)])`
-/

namespace A191376.P16923350136220494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275820 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191376.P16923350136220494

/-!
# A191377: Primes that are the sum of a positive Fibonacci number and the squares of two positive Fibonacci numbers.

The programs for A191377, there is no canonical definition to state claims against.
-/

/-! ## A191377.P14187327266035754481

`p?[A097218(n+1)*A342459(n+1)]`
-/

namespace A191377.P14187327266035754481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (n + 1) * A342459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191377.P14187327266035754481

/-! ## A191377.P8975344423110859912

`record[p?[n+1-A166478(n+2)]]`
-/

namespace A191377.P8975344423110859912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A166478 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191377.P8975344423110859912

/-! ## A191377.P572439918515711959

`p?[∑[A036989(A003336(n+1))]]`
-/

namespace A191377.P572439918515711959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A003336 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191377.P572439918515711959

/-! ## A191377.P16610139705888732572

`A045395(lt[A113084(2*n), A233332(n+2)])`
-/

namespace A191377.P16610139705888732572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191377.P16610139705888732572

/-! ## A191377.P2627365688941497870

`∩[A102800(n+1), A395565(n+1)]`
-/

namespace A191377.P2627365688941497870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191377.P2627365688941497870

/-!
# A191378: Primes that are the sum of a positive Fibonacci, a positive Fibonacci number squared, and a positive Fibonacci number cubed.

The programs for A191378, there is no canonical definition to state claims against.
-/

/-! ## A191378.P4256637924374810715

`p?[A105356(A226537(n+1))]`
-/

namespace A191378.P4256637924374810715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A226537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191378.P4256637924374810715

/-! ## A191378.P17423137269182272326

`p?[∪[A127260(2*n+1), A153309(n+2)]]`
-/

namespace A191378.P17423137269182272326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127260 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153309 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191378.P17423137269182272326

/-! ## A191378.P11966333825252937963

`p?[∪[A127260(2*n+1), A153329(n+2)]]`
-/

namespace A191378.P11966333825252937963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127260 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153329 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191378.P11966333825252937963

/-! ## A191378.P14246516344200618383

`p?[∪[A322911(3*(n+1)), A322903(n+1)]]`
-/

namespace A191378.P14246516344200618383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191378.P14246516344200618383

/-! ## A191378.P13330372437031395635

`p?[A060747(lt[3*n/12-5, A160651(n)]+1)]`
-/

namespace A191378.P13330372437031395635
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / 12) - 5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℚ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191378.P13330372437031395635

/-!
# A191379: Expansion of product(n>=0, 1+2*x^(3^n)+x^(2*3^n)+2*x^(3*3^n)+x^(4*3^n) ).

The programs for A191379, there is no canonical definition to state claims against.
-/

/-! ## A191379.P9505954022011535645

`A036989((A292689(n+1)-1)/2)`
-/

namespace A191379.P9505954022011535645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (SequenceMachineLib.roundAway ((A292689 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A191379.P9505954022011535645

/-! ## A191379.P15165822917535503239

`A272604(A292689(n+1))`
-/

namespace A191379.P15165822917535503239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A292689 (n + 1)).toNat

end

end A191379.P15165822917535503239

/-! ## A191379.P4278669569156776935

`gcd(A037861(A292689(n+1)), A193542(n+3))`
-/

namespace A191379.P4278669569156776935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037861 (A292689 (n + 1)).toNat) (A193542 (n + 3))

end

end A191379.P4278669569156776935

/-! ## A191379.P11476327047402755177

`A036989(2*A292689(n+1))`
-/

namespace A191379.P11476327047402755177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (2 * A292689 (n + 1)).toNat

end

end A191379.P11476327047402755177

/-! ## A191379.P12384877153139619813

`A036989(lcm(2, A292689(n+1)))`
-/

namespace A191379.P12384877153139619813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (Int.lcm 2 (A292689 (n + 1)))

end

end A191379.P12384877153139619813

/-!
# A191380: Positions of 0 in A191340.

The programs for A191380, the canonical program `A191380.P14959086145490964009` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191380 has offset 1).

The definition of A191380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191380.P14959086145490964009

`eq[0, A191340(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191380

/-- `eq[0, A191340(n+1)]+1` -/
def P14959086145490964009.Spec : Prop :=
  ∀ n, (P14959086145490964009.a n : ℤ) = A191380 (n + 1)

theorem P14959086145490964009.correct : P14959086145490964009.Spec := by
  intro n
  simp only [A191380, Nat.add_sub_cancel]

end A191380

/-! ## A191380.P6789180925508330502

`eq[0, A191340(A028310(n))]`
-/

namespace A191380.P6789180925508330502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191380.P6789180925508330502

namespace A191380

/-- `eq[0, A191340(A028310(n))]` -/
def P6789180925508330502.Spec : Prop :=
  ∀ n, (P6789180925508330502.a n : ℤ) = A191380 (n + 1)

end A191380

/-! ## A191380.P5908376684156366224

`A020725(eq[0, A191340(n+1)])`
-/

namespace A191380.P5908376684156366224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191380.P5908376684156366224

namespace A191380

/-- `A020725(eq[0, A191340(n+1)])` -/
def P5908376684156366224.Spec : Prop :=
  ∀ n, P5908376684156366224.a n = A191380 (n + 1)

end A191380

/-! ## A191380.P14730851127126968378

`eq[0, A191340(A000038(n)+n)]`
-/

namespace A191380.P14730851127126968378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191380.P14730851127126968378

namespace A191380

/-- `eq[0, A191340(A000038(n)+n)]` -/
def P14730851127126968378.Spec : Prop :=
  ∀ n, (P14730851127126968378.a n : ℤ) = A191380 (n + 1)

end A191380

/-! ## A191380.P11695434037271717678

`eq[0, A191340(A000007(n)+n)]`
-/

namespace A191380.P11695434037271717678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191380.P11695434037271717678

namespace A191380

/-- `eq[0, A191340(A000007(n)+n)]` -/
def P11695434037271717678.Spec : Prop :=
  ∀ n, (P11695434037271717678.a n : ℤ) = A191380 (n + 1)

end A191380

/-! ## A191380.P12938700939950663439

`eq[0, A191340(A233583(n+1))]`
-/

namespace A191380.P12938700939950663439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191380.P12938700939950663439

namespace A191380

/-- `eq[0, A191340(A233583(n+1))]` -/
def P12938700939950663439.Spec : Prop :=
  ∀ n, (P12938700939950663439.a n : ℤ) = A191380 (n + 1)

end A191380

/-!
# A191381: Positions of 1 in A191340.

The programs for A191381, the canonical program `A191381.P10898136946303278485` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191381 has offset 1).

The definition of A191381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191381.P10898136946303278485

`eq[1, A191340(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191381

/-- `eq[1, A191340(n+1)]+1` -/
def P10898136946303278485.Spec : Prop :=
  ∀ n, (P10898136946303278485.a n : ℤ) = A191381 (n + 1)

theorem P10898136946303278485.correct : P10898136946303278485.Spec := by
  intro n
  simp only [A191381, Nat.add_sub_cancel]

end A191381

/-! ## A191381.P853926162591794637

`eq[n, A028310(n)*A191340(A028310(n))]`
-/

namespace A191381.P853926162591794637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A191340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191381.P853926162591794637

namespace A191381

/-- `eq[n, A028310(n)*A191340(A028310(n))]` -/
def P853926162591794637.Spec : Prop :=
  ∀ n, (P853926162591794637.a n : ℤ) = A191381 (n + 1)

end A191381

/-! ## A191381.P2551841625088294168

`record[A032742(A191340(n+1)+A005408(n))]`
-/

namespace A191381.P2551841625088294168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191340 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191381.P2551841625088294168

namespace A191381

/-- `record[A032742(A191340(n+1)+A005408(n))]` -/
def P2551841625088294168.Spec : Prop :=
  ∀ n, P2551841625088294168.a n = A191381 (n + 1)

end A191381

/-! ## A191381.P13368492900802725205

`record[A078898(A191340(n+1)+A005408(n))]`
-/

namespace A191381.P13368492900802725205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191340 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191381.P13368492900802725205

namespace A191381

/-- `record[A078898(A191340(n+1)+A005408(n))]` -/
def P13368492900802725205.Spec : Prop :=
  ∀ n, P13368492900802725205.a n = A191381 (n + 1)

end A191381

/-! ## A191381.P1382697795088728353

`record[A142150(A191340(n+1)+A005408(n))]`
-/

namespace A191381.P1382697795088728353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A191340 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191381.P1382697795088728353

namespace A191381

/-- `record[A142150(A191340(n+1)+A005408(n))]` -/
def P1382697795088728353.Spec : Prop :=
  ∀ n, P1382697795088728353.a n = A191381 (n + 1)

end A191381

/-! ## A191381.P6828821039343086548

`eq[1, A165211(A276854(n))]`
-/

namespace A191381.P6828821039343086548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A276854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191381.P6828821039343086548

namespace A191381

/-- `eq[1, A165211(A276854(n))]` -/
def P6828821039343086548.Spec : Prop :=
  ∀ n, (P6828821039343086548.a n : ℤ) = A191381 (n + 1)

end A191381

/-! ## A191381.P14881878447104728823

`record[A032742(A026242(A047415(n+1)))]`
-/

namespace A191381.P14881878447104728823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A026242 (A047415 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191381.P14881878447104728823

namespace A191381

/-- `record[A032742(A026242(A047415(n+1)))]` -/
def P14881878447104728823.Spec : Prop :=
  ∀ n, P14881878447104728823.a n = A191381 (n + 1)

end A191381

/-!
# A191382: Positions of 2 in A191340.

The programs for A191382, the canonical program `A191382.P1751492391094146324` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191382 has offset 1).

The definition of A191382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191382.P1751492391094146324

`lt[1, A191340(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191382

/-- `lt[1, A191340(n+1)]+1` -/
def P1751492391094146324.Spec : Prop :=
  ∀ n, (P1751492391094146324.a n : ℤ) = A191382 (n + 1)

theorem P1751492391094146324.correct : P1751492391094146324.Spec := by
  intro n
  simp only [A191382, Nat.add_sub_cancel]

end A191382

/-! ## A191382.P2220709765015786839

`lt[1, A191340(A028310(n))]`
-/

namespace A191382.P2220709765015786839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191382.P2220709765015786839

namespace A191382

/-- `lt[1, A191340(A028310(n))]` -/
def P2220709765015786839.Spec : Prop :=
  ∀ n, (P2220709765015786839.a n : ℤ) = A191382 (n + 1)

end A191382

/-! ## A191382.P8034979400358217155

`A020725(eq[2, A191340(n+1)])`
-/

namespace A191382.P8034979400358217155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191382.P8034979400358217155

namespace A191382

/-- `A020725(eq[2, A191340(n+1)])` -/
def P8034979400358217155.Spec : Prop :=
  ∀ n, P8034979400358217155.a n = A191382 (n + 1)

end A191382

/-! ## A191382.P8469983078661246293

`eq[2, A191340(A000007(n)+n)]`
-/

namespace A191382.P8469983078661246293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191382.P8469983078661246293

namespace A191382

/-- `eq[2, A191340(A000007(n)+n)]` -/
def P8469983078661246293.Spec : Prop :=
  ∀ n, (P8469983078661246293.a n : ℤ) = A191382 (n + 1)

end A191382

/-! ## A191382.P8443478662203869534

`eq[2, A191340(A000038(n)+n)]`
-/

namespace A191382.P8443478662203869534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191382.P8443478662203869534

namespace A191382

/-- `eq[2, A191340(A000038(n)+n)]` -/
def P8443478662203869534.Spec : Prop :=
  ∀ n, (P8443478662203869534.a n : ℤ) = A191382 (n + 1)

end A191382

/-! ## A191382.P8635475380270623070

`eq[2, A191340(A233583(n+1))]`
-/

namespace A191382.P8635475380270623070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191382.P8635475380270623070

namespace A191382

/-- `eq[2, A191340(A233583(n+1))]` -/
def P8635475380270623070.Spec : Prop :=
  ∀ n, (P8635475380270623070.a n : ℤ) = A191382 (n + 1)

end A191382

/-!
# A191384: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights) with k ascents of length 1. An ascent is a maximal sequence of consecutive (1,1)-steps.

The programs for A191384, there is no canonical definition to state claims against.
-/

/-! ## A191384.P11959846752713133713

`A109035(eq[A022303(n+1), A158687(n)])`
-/

namespace A191384.P11959846752713133713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191384.P11959846752713133713

/-!
# A191385: Number of dispersed Dyck paths of length n having no ascents of length 1.

The programs for A191385, there is no canonical definition to state claims against.
-/

/-! ## A191385.P10632141590507259730

`A191384(∑[ceil(n/2)])`
-/

namespace A191385.P10632141590507259730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191385.P10632141590507259730

/-! ## A191385.P13132823180436058449

`A191384(A076921(n+1))%(9*2^n)`
-/

namespace A191385.P13132823180436058449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191384 (A076921 (n + 1)).toNat) (9 * 2 ^ n : ℤ)

end

end A191385.P13132823180436058449

/-! ## A191385.P12654297946544726410

`A191384(A182531(n+1))%A042612(n)`
-/

namespace A191385.P12654297946544726410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191384 (A182531 (n + 1)).toNat) (A042612 n)

end

end A191385.P12654297946544726410

/-!
# A191386: Number of ascents of length 1 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights). An ascent is a maximal sequence of consecutive (1,1)-steps.

The programs for A191386, the canonical program `A191386.P5013181058466511668` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191386 has offset 0).

The definition of A191386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191386.P2522830388674191277

`A191520(n)+A307768(n)/2`
-/

namespace A191386.P2522830388674191277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191520 n : ℚ) + (A307768 n : ℚ) / 2

end

end A191386.P2522830388674191277

namespace A191386

/-- `A191520(n)+A307768(n)/2` -/
def P2522830388674191277.Spec : Prop :=
  ∀ n, P2522830388674191277.a n = (A191386 n : ℚ)

end A191386

/-! ## A191386.P5013181058466511668

`A000034(n)*A258431(A004526(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191386

/-- `A000034(n)*A258431(A004526(n))` -/
def P5013181058466511668.Spec : Prop :=
  ∀ n, P5013181058466511668.a n = A191386 n

theorem P5013181058466511668.correct : P5013181058466511668.Spec := by
  intro n
  simp only [A191386]

end A191386

/-! ## A191386.P11520256585705340271

`A191524(n)-A191787(n)`
-/

namespace A191386.P11520256585705340271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n - A191787 n

end

end A191386.P11520256585705340271

namespace A191386

/-- `A191524(n)-A191787(n)` -/
def P11520256585705340271.Spec : Prop :=
  ∀ n, P11520256585705340271.a n = A191386 n

end A191386

/-! ## A191386.P10280700257318072408

`A191520(n)+A191524(n)-A191522(n)`
-/

namespace A191386.P10280700257318072408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191520 n + (A191524 n - A191522 n)

end

end A191386.P10280700257318072408

namespace A191386

/-- `A191520(n)+A191524(n)-A191522(n)` -/
def P10280700257318072408.Spec : Prop :=
  ∀ n, P10280700257318072408.a n = A191386 n

end A191386

/-! ## A191386.P4298807260562039303

`A191527(n)-(A191787(n)+A191309(n))`
-/

namespace A191386.P4298807260562039303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n - (A191787 n + A191309 n)

end

end A191386.P4298807260562039303

namespace A191386

/-- `A191527(n)-(A191787(n)+A191309(n))` -/
def P4298807260562039303.Spec : Prop :=
  ∀ n, P4298807260562039303.a n = A191386 n

end A191386

/-! ## A191386.P10826160443174968928

`(A131352(n)-A164990(n+1))/2`
-/

namespace A191386.P10826160443174968928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 n - A164990 (n + 1) : ℚ) / 2

end

end A191386.P10826160443174968928

namespace A191386

/-- `(A131352(n)-A164990(n+1))/2` -/
def P10826160443174968928.Spec : Prop :=
  ∀ n, P10826160443174968928.a n = (A191386 n : ℚ)

end A191386

/-!
# A191387: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n with k valleys at level 0.

The programs for A191387, there is no canonical definition to state claims against.
-/

/-! ## A191387.P15752296351529238

`xor(A167393(A185274(n)), A191316(n))`
-/

namespace A191387.P15752296351529238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A167393 (A185274 n).toNat) (A191316 n)

end

end A191387.P15752296351529238

/-! ## A191387.P7659321155322342081

`xor(A185274(A055645(n)), A191316(n))`
-/

namespace A191387.P7659321155322342081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185274 (A055645 n).toNat) (A191316 n)

end

end A191387.P7659321155322342081

/-! ## A191387.P7224587662093599844

`xor(A185274(A180200(n)), A191316(n))`
-/

namespace A191387.P7224587662093599844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185274 (A180200 n).toNat) (A191316 n)

end

end A191387.P7224587662093599844

/-! ## A191387.P2753285136582760326

`xor(A101040(A083961(n+1)), A191316(n))`
-/

namespace A191387.P2753285136582760326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101040 (A083961 (n + 1)).toNat) (A191316 n)

end

end A191387.P2753285136582760326

/-! ## A191387.P10235805069283012443

`A048266(A191316(n))`
-/

namespace A191387.P10235805069283012443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A191316 n).toNat

end

end A191387.P10235805069283012443

/-!
# A191388: Number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights) with no valleys at level 0.

The programs for A191388, there is no canonical definition to state claims against.
-/

/-! ## A191388.P9398807647614718907

`A191398(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A191388.P9398807647614718907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A191398 (n - 2) + a (n - 1)

end

end A191388.P9398807647614718907

/-! ## A191388.P16385757058714234318

`A057428(n)+∑[A191398(A289207(n))]`
-/

namespace A191388.P16385757058714234318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191398 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191388.P16385757058714234318

/-! ## A191388.P17926661324574256124

`∑[A191398(A289207(n))]-A057427(n)`
-/

namespace A191388.P17926661324574256124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191398 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A191388.P17926661324574256124

/-! ## A191388.P6179452779434229116

`∑[A060576(n)*A191398(A289207(n))]`
-/

namespace A191388.P6179452779434229116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A191398 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191388.P6179452779434229116

/-! ## A191388.P11019069127727957143

`∑[A191398(A289207(n))]-A060576(n+1)`
-/

namespace A191388.P11019069127727957143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191398 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060576 (n + 1)

end

end A191388.P11019069127727957143

/-! ## A191388.P1419738500864756405

`A191387(A152950(n+1)%A087811(n+1))`
-/

namespace A191388.P1419738500864756405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191387 (Int.tmod (A152950 (n + 1)) (A087811 (n + 1))).toNat

end

end A191388.P1419738500864756405

/-!
# A191389: Number of valleys at level 0 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights).

The programs for A191389, the canonical program `A191389.P9489773032743378258` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191389 has offset 0).

The definition of A191389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191389.P13316010158365168188

`A191391(n)-A037952(n)`
-/

namespace A191389.P13316010158365168188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191391 n - A037952 n

end

end A191389.P13316010158365168188

namespace A191389

/-- `A191391(n)-A037952(n)` -/
def P13316010158365168188.Spec : Prop :=
  ∀ n, P13316010158365168188.a n = A191389 n

end A191389

/-! ## A191389.P9489773032743378258

`A011782(n)-Δ[A050168(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A191389

/-- `A011782(n)-Δ[A050168(n)]` -/
def P9489773032743378258.Spec : Prop :=
  ∀ n, P9489773032743378258.a n = A191389 n

theorem P9489773032743378258.correct : P9489773032743378258.Spec := by
  intro n
  simp only [A191389]

end A191389

/-! ## A191389.P14688367018051277720

`A166444(n+1)-Δ[A050168(n)]`
-/

namespace A191389.P14688367018051277720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191389.P14688367018051277720

namespace A191389

/-- `A166444(n+1)-Δ[A050168(n)]` -/
def P14688367018051277720.Spec : Prop :=
  ∀ n, P14688367018051277720.a n = A191389 n

end A191389

/-! ## A191389.P11731801175652760303

`A001405(n)+A191391(n)-A001405(n+1)`
-/

namespace A191389.P11731801175652760303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A191391 n - A001405 (n + 1))

end

end A191389.P11731801175652760303

namespace A191389

/-- `A001405(n)+A191391(n)-A001405(n+1)` -/
def P11731801175652760303.Spec : Prop :=
  ∀ n, P11731801175652760303.a n = A191389 n

end A191389

/-! ## A191389.P14447135079590373762

`Δ[A056469(n)-A050168(n)]`
-/

namespace A191389.P14447135079590373762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191389.P14447135079590373762

namespace A191389

/-- `Δ[A056469(n)-A050168(n)]` -/
def P14447135079590373762.Spec : Prop :=
  ∀ n, P14447135079590373762.a n = A191389 n

end A191389

/-! ## A191389.P18007380696031606793

`Δ[A131577(n)-A050168(n)]`
-/

namespace A191389.P18007380696031606793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191389.P18007380696031606793

namespace A191389

/-- `Δ[A131577(n)-A050168(n)]` -/
def P18007380696031606793.Spec : Prop :=
  ∀ n, P18007380696031606793.a n = A191389 n

end A191389

/-! ## A191389.P12315520318533822781

`A011782(n)-A209561(∑[or(1, n)])`
-/

namespace A191389.P12315520318533822781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A209561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191389.P12315520318533822781

namespace A191389

/-- `A011782(n)-A209561(∑[or(1, n)])` -/
def P12315520318533822781.Spec : Prop :=
  ∀ n, P12315520318533822781.a n = A191389 n

end A191389

/-!
# A191390: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n with k horizontal segments.

The programs for A191390, there is no canonical definition to state claims against.
-/

/-! ## A191390.P6790173842328648200

`A274183(A274183(n)+A196590(n+1))`
-/

namespace A191390.P6790173842328648200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274183 (A274183 n + A196590 (n + 1)).toNat

end

end A191390.P6790173842328648200

/-! ## A191390.P1871947904930261514

`A274183(A274183(n)+A196802(n+1))`
-/

namespace A191390.P1871947904930261514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274183 (A274183 n + A196802 (n + 1)).toNat

end

end A191390.P1871947904930261514

/-! ## A191390.P7572466096555273958

`A006530(A257442(2*(n+1)))%A243060(n+5)`
-/

namespace A191390.P7572466096555273958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A257442 (2 * (n + 1))).toNat) (A243060 (n + 5))

end

end A191390.P7572466096555273958

/-!
# A191391: Number of horizontal segments in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights; a horizontal segment is a maximal sequence of consecutive (1,0)-steps).

The programs for A191391, the canonical program `A191391.P4772639634849094179` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191391 has offset 0).

The definition of A191391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191391.P14965569981119980812

`floor(2^(n-1))-Δ[A210736(n)]`
-/

namespace A191391.P14965569981119980812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - (f1 (n + 1) - f1 n)

end

end A191391.P14965569981119980812

namespace A191391

/-- `floor(2^(n-1))-Δ[A210736(n)]` -/
def P14965569981119980812.Spec : Prop :=
  ∀ n, P14965569981119980812.a n = A191391 n

end A191391

/-! ## A191391.P3347731763996080023

`A191389(n)+A037952(n)`
-/

namespace A191391.P3347731763996080023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 n + A037952 n

end

end A191391.P3347731763996080023

namespace A191391

/-- `A191389(n)+A037952(n)` -/
def P3347731763996080023.Spec : Prop :=
  ∀ n, P3347731763996080023.a n = A191391 n

end A191391

/-! ## A191391.P4772639634849094179

`A001405(n+1)+A191389(n)-A001405(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A191391

/-- `A001405(n+1)+A191389(n)-A001405(n)` -/
def P4772639634849094179.Spec : Prop :=
  ∀ n, P4772639634849094179.a n = A191391 n

theorem P4772639634849094179.correct : P4772639634849094179.Spec := by
  intro n
  simp only [A191391]

end A191391

/-! ## A191391.P12438555546349102541

`A014495(n+1)+A191389(n)-A014495(n)`
-/

namespace A191391.P12438555546349102541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + (A191389 n - A014495 n)

end

end A191391.P12438555546349102541

namespace A191391

/-- `A014495(n+1)+A191389(n)-A014495(n)` -/
def P12438555546349102541.Spec : Prop :=
  ∀ n, P12438555546349102541.a n = A191391 n

end A191391

/-! ## A191391.P1859493392676630490

`Δ[A045621(log2(ceil(2^(n-1))))]`
-/

namespace A191391.P1859493392676630490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P1859493392676630490

namespace A191391

/-- `Δ[A045621(log2(ceil(2^(n-1))))]` -/
def P1859493392676630490.Spec : Prop :=
  ∀ n, P1859493392676630490.a n = A191391 n

end A191391

/-! ## A191391.P16290739557322189687

`Δ[A011782(n)-A210736(n)]`
-/

namespace A191391.P16290739557322189687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P16290739557322189687

namespace A191391

/-- `Δ[A011782(n)-A210736(n)]` -/
def P16290739557322189687.Spec : Prop :=
  ∀ n, P16290739557322189687.a n = A191391 n

end A191391

/-! ## A191391.P6808374905395286810

`A045621(n)-A307768(n)/2`
-/

namespace A191391.P6808374905395286810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045621 n : ℚ) - (A307768 n : ℚ) / 2

end

end A191391.P6808374905395286810

namespace A191391

/-- `A045621(n)-A307768(n)/2` -/
def P6808374905395286810.Spec : Prop :=
  ∀ n, P6808374905395286810.a n = (A191391 n : ℚ)

end A191391

/-! ## A191391.P3074586044443351237

`A045621(n)-A045621(log2(A011782(n)))`
-/

namespace A191391.P3074586044443351237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - A045621 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A191391.P3074586044443351237

namespace A191391

/-- `A045621(n)-A045621(log2(A011782(n)))` -/
def P3074586044443351237.Spec : Prop :=
  ∀ n, P3074586044443351237.a n = A191391 n

end A191391

/-! ## A191391.P13606700779521480490

`A045621(n)-A045621(A028310(n)-1)`
-/

namespace A191391.P13606700779521480490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - A045621 (A028310 n - 1).toNat

end

end A191391.P13606700779521480490

namespace A191391

/-- `A045621(n)-A045621(A028310(n)-1)` -/
def P13606700779521480490.Spec : Prop :=
  ∀ n, P13606700779521480490.a n = A191391 n

end A191391

/-! ## A191391.P11978459633342655343

`A045621(n)+A128014(n)-A027306(n)`
-/

namespace A191391.P11978459633342655343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n + (A128014 n - A027306 n)

end

end A191391.P11978459633342655343

namespace A191391

/-- `A045621(n)+A128014(n)-A027306(n)` -/
def P11978459633342655343.Spec : Prop :=
  ∀ n, P11978459633342655343.a n = A191391 n

end A191391

/-! ## A191391.P9171631975283447950

`A045621(n)-A045621(A004273(n)-n)`
-/

namespace A191391.P9171631975283447950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - A045621 (A004273 n - (n : ℤ)).toNat

end

end A191391.P9171631975283447950

namespace A191391

/-- `A045621(n)-A045621(A004273(n)-n)` -/
def P9171631975283447950.Spec : Prop :=
  ∀ n, P9171631975283447950.a n = A191391 n

end A191391

/-! ## A191391.P16650294444221237899

`Δ[A307768(n)/2]`
-/

namespace A191391.P16650294444221237899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P16650294444221237899

namespace A191391

/-- `Δ[A307768(n)/2]` -/
def P16650294444221237899.Spec : Prop :=
  ∀ n, P16650294444221237899.a n = (A191391 n : ℚ)

end A191391

/-! ## A191391.P7985211624202207732

`Δ[(2^n-A063886(n))/2]`
-/

namespace A191391.P7985211624202207732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A063886 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P7985211624202207732

namespace A191391

/-- `Δ[(2^n-A063886(n))/2]` -/
def P7985211624202207732.Spec : Prop :=
  ∀ n, P7985211624202207732.a n = (A191391 n : ℚ)

end A191391

/-! ## A191391.P2039638363746177959

`Δ[Δ[A131577(n)]-A210736(n)]`
-/

namespace A191391.P2039638363746177959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P2039638363746177959

namespace A191391

/-- `Δ[Δ[A131577(n)]-A210736(n)]` -/
def P2039638363746177959.Spec : Prop :=
  ∀ n, P2039638363746177959.a n = A191391 n

end A191391

/-! ## A191391.P10363922330120643407

`Δ[A191524(n)-A191522(n)]`
-/

namespace A191391.P10363922330120643407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n - A191522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P10363922330120643407

namespace A191391

/-- `Δ[A191524(n)-A191522(n)]` -/
def P10363922330120643407.Spec : Prop :=
  ∀ n, P10363922330120643407.a n = A191391 n

end A191391

/-! ## A191391.P7683596277529077889

`Δ[ceil(2^(n-1))-A007318(floor(n²/2))]`
-/

namespace A191391.P7683596277529077889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A007318 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191391.P7683596277529077889

namespace A191391

/-- `Δ[ceil(2^(n-1))-A007318(floor(n²/2))]` -/
def P7683596277529077889.Spec : Prop :=
  ∀ n, P7683596277529077889.a n = A191391 n

end A191391

/-!
# A191392: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0)-steps at positive heights) having k base pyramids. A base pyramid is a factor of the form U^j D^j (j > 0), starting at the horizontal axis. Here U = (1,1) and D = (1,-1).

The programs for A191392, there is no canonical definition to state claims against.
-/

/-! ## A191392.P18258322543083234830

`A191310(n)+A178798(A062687(n+2))`
-/

namespace A191392.P18258322543083234830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191310 n + A178798 (A062687 (n + 2)).toNat

end

end A191392.P18258322543083234830

/-! ## A191392.P9070168552581079451

`A124428(n)-A178798(A062687(n+1)+2)`
-/

namespace A191392.P9070168552581079451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124428 n - A178798 (A062687 (n + 1) + 2).toNat

end

end A191392.P9070168552581079451

/-!
# A191393: Number of dispersed Dyck paths of length n (i.e., of Motzkin paths of length n with no (1,0)-steps at positive heights) having no base pyramids. A base pyramid is a factor of the form U^j D^j (j>0), starting at the horizontal axis. Here U=(1,1) and D=(1,-1).

The programs for A191393, there is no canonical definition to state claims against.
-/

/-! ## A191393.P638204688685835745

`A191392(∑[A110654(n)])`
-/

namespace A191393.P638204688685835745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191393.P638204688685835745

/-! ## A191393.P440428043503494734

`A191392(A002620(n+1))`
-/

namespace A191393.P440428043503494734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (A002620 (n + 1)).toNat

end

end A191393.P440428043503494734

/-! ## A191393.P142679230276716816

`A191392(A076921(n+1))`
-/

namespace A191393.P142679230276716816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (A076921 (n + 1)).toNat

end

end A191393.P142679230276716816

/-! ## A191393.P15684804202719152602

`A191392(A182531(n+1))`
-/

namespace A191393.P15684804202719152602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (A182531 (n + 1)).toNat

end

end A191393.P15684804202719152602

/-! ## A191393.P530325095204735844

`A191392(∑[∑[A000035(n)]])`
-/

namespace A191393.P530325095204735844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191393.P530325095204735844

/-! ## A191393.P13596601832950098567

`A191392(∑[A080513(n)-1])`
-/

namespace A191393.P13596601832950098567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191393.P13596601832950098567

/-! ## A191393.P2982382797055924874

`A191392(∑[A008619(n+1)-1])`
-/

namespace A191393.P2982382797055924874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191393.P2982382797055924874

/-! ## A191393.P16288021017025520649

`A191392(∑[A008619(n)]-A008619(n))`
-/

namespace A191393.P16288021017025520649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (∑ j ∈ Finset.range (n + 1), f1 j - A008619 n).toNat

end

end A191393.P16288021017025520649

/-! ## A191393.P8311768228969960019

`A191392(A035106(n+1)-A065033(n))`
-/

namespace A191393.P8311768228969960019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (A035106 (n + 1) - A065033 n).toNat

end

end A191393.P8311768228969960019

/-! ## A191393.P980157845196618042

`A191392(A065033(n+1)*A065033(n))`
-/

namespace A191393.P980157845196618042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (A065033 (n + 1) * A065033 n).toNat

end

end A191393.P980157845196618042

/-! ## A191393.P2447217545202096860

`A191392(A110654(n+1)*A110654(n))`
-/

namespace A191393.P2447217545202096860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191392 (A110654 (n + 1) * A110654 n).toNat

end

end A191393.P2447217545202096860

/-!
# A191394: Number of base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights).

The programs for A191394, the canonical program `A191394.P2196182716254979201` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191394 has offset 0).

The definition of A191394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191394.P2196182716254979201

`A000975(n)-A174783(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191394

/-- `A000975(n)-A174783(n)` -/
def P2196182716254979201.Spec : Prop :=
  ∀ n, P2196182716254979201.a n = A191394 n

theorem P2196182716254979201.correct : P2196182716254979201.Spec := by
  intro n
  simp only [A191394]

end A191394

/-! ## A191394.P7653097602412009546

`∑[A001045(n)]-A174783(n)`
-/

namespace A191394.P7653097602412009546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174783 n

end

end A191394.P7653097602412009546

namespace A191394

/-- `∑[A001045(n)]-A174783(n)` -/
def P7653097602412009546.Spec : Prop :=
  ∀ n, P7653097602412009546.a n = A191394 n

end A191394

/-! ## A191394.P10527642731795709160

`A001045(n+1)-A124642(n)`
-/

namespace A191394.P10527642731795709160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A124642 n

end

end A191394.P10527642731795709160

namespace A191394

/-- `A001045(n+1)-A124642(n)` -/
def P10527642731795709160.Spec : Prop :=
  ∀ n, P10527642731795709160.a n = A191394 n

end A191394

/-! ## A191394.P7505472613959529026

`Δ[A000975(n)]-A124642(n)`
-/

namespace A191394.P7505472613959529026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A124642 n

end

end A191394.P7505472613959529026

namespace A191394

/-- `Δ[A000975(n)]-A124642(n)` -/
def P7505472613959529026.Spec : Prop :=
  ∀ n, P7505472613959529026.a n = A191394 n

end A191394

/-! ## A191394.P9543578863515133576

`xor(A174783(n)+A000975(n+1), A000225(n+1))`
-/

namespace A191394.P9543578863515133576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A174783 n + A000975 (n + 1)) (A000225 (n + 1))

end

end A191394.P9543578863515133576

namespace A191394

/-- `xor(A174783(n)+A000975(n+1), A000225(n+1))` -/
def P9543578863515133576.Spec : Prop :=
  ∀ n, P9543578863515133576.a n = A191394 n

end A191394

/-! ## A191394.P9254410417756330648

`∑[A116384(n)-A116382(∑[n])]`
-/

namespace A191394.P9254410417756330648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116384 n - A116382 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191394.P9254410417756330648

namespace A191394

/-- `∑[A116384(n)-A116382(∑[n])]` -/
def P9254410417756330648.Spec : Prop :=
  ∀ n, P9254410417756330648.a n = A191394 n

end A191394

/-!
# A191395: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of length n (i.e., of Motzkin paths of length n with no (1,0)-steps at positive heights) for which the sum of the heights of its base pyramid is k. A base pyramid is a factor of the form U^j D^j (j>0), starting at the horizontal axis. Here U=(1,1) and D=(1,-1).

The programs for A191395, there is no canonical definition to state claims against.
-/

/-! ## A191395.P3046855129620664141

`A086015(A083061(n))+A008315(n)`
-/

namespace A191395.P3046855129620664141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086015 (A083061 n).toNat + A008315 n

end

end A191395.P3046855129620664141

/-! ## A191395.P3868428769602375840

`A093956(A167015(n))+A008315(n)`
-/

namespace A191395.P3868428769602375840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093956 (A167015 n).toNat + A008315 n

end

end A191395.P3868428769602375840

/-! ## A191395.P13220379966658248177

`A085974(A175954(n))+A008315(n)`
-/

namespace A191395.P13220379966658248177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A175954 n).toNat + A008315 n

end

end A191395.P13220379966658248177

/-! ## A191395.P17224582419325751260

`A181838(A106516(n))+A008315(n)`
-/

namespace A191395.P17224582419325751260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181838 (A106516 n).toNat + A008315 n

end

end A191395.P17224582419325751260

/-!
# A191396: Sum of the heights of the base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights). A base pyramid is a factor of the form U^j D^j (j>0), starting at the horizontal axis. Here U=(1,1) and D=(1,-1).

The programs for A191396, the canonical program `A191396.P7229870374882606009` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191396 has offset 0).

The definition of A191396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191396.P7229870374882606009

`A191394(n)+a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191396

/-- `A191394(n)+a(n-2)` -/
def P7229870374882606009.Spec : Prop :=
  ∀ n, P7229870374882606009.a n = A191396 n

theorem P7229870374882606009.correct : P7229870374882606009.Spec := by
  intro n
  simp only [A191396]

end A191396

/-! ## A191396.P771467442850215881

`a(n-2)+A000975(n)-A174783(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A191396.P771467442850215881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + (A000975 n - A174783 n)

end

end A191396.P771467442850215881

namespace A191396

/-- `a(n-2)+A000975(n)-A174783(n)` -/
def P771467442850215881.Spec : Prop :=
  ∀ n, P771467442850215881.a n = A191396 n

end A191396

/-! ## A191396.P3139142357681384535

`∑[A000975(n)-A174783(n)]-a(n-1)` with `a(0)=0`
-/

namespace A191396.P3139142357681384535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A174783 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A191396.P3139142357681384535

namespace A191396

/-- `∑[A000975(n)-A174783(n)]-a(n-1)` -/
def P3139142357681384535.Spec : Prop :=
  ∀ n, P3139142357681384535.a n = A191396 n

end A191396

/-! ## A191396.P8642800802780236880

`a(n-2)+Δ[A000975(n)]-A124642(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A191396.P8642800802780236880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + (f1 (n + 1) - f1 n - A124642 n)

end

end A191396.P8642800802780236880

namespace A191396

/-- `a(n-2)+Δ[A000975(n)]-A124642(n)` -/
def P8642800802780236880.Spec : Prop :=
  ∀ n, P8642800802780236880.a n = A191396 n

end A191396

/-! ## A191396.P12130264185056887149

`A123621(A344911(n)+A338740(n+3))`
-/

namespace A191396.P12130264185056887149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A344911 n + A338740 (n + 3)).toNat

end

end A191396.P12130264185056887149

namespace A191396

/-- `A123621(A344911(n)+A338740(n+3))` -/
def P12130264185056887149.Spec : Prop :=
  ∀ n, P12130264185056887149.a n = A191396 n

end A191396

/-!
# A191398: Number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0)-steps at positive heights) having no DHU's (here U=(1,1), H=(1,0), and D=(1,-1)).

The programs for A191398, there is no canonical definition to state claims against.
-/

/-! ## A191398.P12297586665730936352

`Δ[A191388(n+1)]`
-/

namespace A191398.P12297586665730936352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191398.P12297586665730936352

/-! ## A191398.P2278407578130541572

`Δ[record[A191388(A008611(n))]]`
-/

namespace A191398.P2278407578130541572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191398.P2278407578130541572

/-! ## A191398.P13550879445502282474

`Δ[record[A191388(A008624(n))]]`
-/

namespace A191398.P13550879445502282474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191398.P13550879445502282474

/-! ## A191398.P6325080792140572505

`Δ[record[A191388(A142150(n))]]`
-/

namespace A191398.P6325080792140572505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191398.P6325080792140572505

/-! ## A191398.P13036122061242368032

`A191388(n+2)-A191388(n+1)`
-/

namespace A191398.P13036122061242368032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (n + 2) - A191388 (n + 1)

end

end A191398.P13036122061242368032

/-! ## A191398.P9670542158475379825

`Δ[record[A191388(A002262(n))]]`
-/

namespace A191398.P9670542158475379825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191388 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191398.P9670542158475379825

