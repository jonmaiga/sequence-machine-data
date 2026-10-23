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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A357110: Numbers k such that 1 + k^2 * 2^k + k^3 * 3^k is prime.

The programs for A357110, there is no canonical definition to state claims against.
-/

/-! ## A357110.P6512689947913894309

`eq[A072650(n), A117728(n+1)]`
-/

namespace A357110.P6512689947913894309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357110.P6512689947913894309

/-! ## A357110.P3144038558387844059

`record[A037225(A229223(n)%A290436(n))]`
-/

namespace A357110.P3144038558387844059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (Int.tmod (A229223 n) (A290436 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357110.P3144038558387844059

/-! ## A357110.P6636164285669403948

`or(A000079(A000005(n+1)), A094960(n+2))`
-/

namespace A357110.P6636164285669403948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (A000005 (n + 1)).toNat) (A094960 (n + 2))

end

end A357110.P6636164285669403948

/-! ## A357110.P4254857384228339378

`lt[A001065(A020330(n+1)), A014261(3*n+1)]`
-/

namespace A357110.P4254857384228339378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A020330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357110.P4254857384228339378

/-! ## A357110.P5879180724666416546

`eq[A269303(A057567(n+1)), A353269(3*n+4)]`
-/

namespace A357110.P5879180724666416546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A057567 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357110.P5879180724666416546

/-!
# A357111: For n >= 1, a(n) = n / A076775(n).

The programs for A357111, the canonical program `A357111.P15741096504218641398` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357111 has offset 1).

The definition of A357111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076775, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357111.P15741096504218641398

`(n+1)/A076775(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A357111

/-- `(n+1)/A076775(n+1)` -/
def P15741096504218641398.Spec : Prop :=
  ∀ n, P15741096504218641398.a n = (A357111 (n + 1) : ℚ)

end A357111

/-! ## A357111.P11221951460024836182

`(n+1)/gcd(n+1, A007088(n+1))`
-/

namespace A357111.P11221951460024836182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007088 (n + 1)) : ℚ)

end

end A357111.P11221951460024836182

namespace A357111

/-- `(n+1)/gcd(n+1, A007088(n+1))` -/
def P11221951460024836182.Spec : Prop :=
  ∀ n, P11221951460024836182.a n = (A357111 (n + 1) : ℚ)

end A357111

/-! ## A357111.P8416461592203661072

`(n+1)/gcd(A007088(n+1), A131738(n))`
-/

namespace A357111.P8416461592203661072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A007088 (n + 1)) (A131738 n) : ℚ)

end

end A357111.P8416461592203661072

namespace A357111

/-- `(n+1)/gcd(A007088(n+1), A131738(n))` -/
def P8416461592203661072.Spec : Prop :=
  ∀ n, P8416461592203661072.a n = (A357111 (n + 1) : ℚ)

end A357111

/-! ## A357111.P18092592771656312891

`(n+1)/gcd(A000027(n+1), A355297(n+1))`
-/

namespace A357111.P18092592771656312891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000027 (n + 1)) (A355297 (n + 1)) : ℚ)

end

end A357111.P18092592771656312891

namespace A357111

/-- `(n+1)/gcd(A000027(n+1), A355297(n+1))` -/
def P18092592771656312891.Spec : Prop :=
  ∀ n, P18092592771656312891.a n = (A357111 (n + 1) : ℚ)

end A357111

/-! ## A357111.P5273351014306408627

`(n+1)/gcd(A005843(n+1), A185544(2*(n+1)))`
-/

namespace A357111.P5273351014306408627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A005843 (n + 1)) (A185544 (2 * (n + 1))) : ℚ)

end

end A357111.P5273351014306408627

namespace A357111

/-- `(n+1)/gcd(A005843(n+1), A185544(2*(n+1)))` -/
def P5273351014306408627.Spec : Prop :=
  ∀ n, P5273351014306408627.a n = (A357111 (n + 1) : ℚ)

end A357111

/-!
# A357112: a(n) = A035019(n)/6 for n > 0.

The programs for A357112, there is no canonical definition to state claims against.
-/

/-! ## A357112.P9814265335923246651

`A035019(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357112.P9814265335923246651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035019 (n + 1) : ℚ) / 6

end

end A357112.P9814265335923246651

/-! ## A357112.P8030178466475586439

`Δ[A038161(n)]`
-/

namespace A357112.P8030178466475586439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357112.P8030178466475586439

/-! ## A357112.P7347525407245818476

`Δ[A038590(n)/6]`
-/

namespace A357112.P7347525407245818476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038590 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357112.P7347525407245818476

/-! ## A357112.P13949278709631547644

`∑[ceil(Δ[A035019(n)/6])]`
-/

namespace A357112.P13949278709631547644
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035019 n : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357112.P13949278709631547644

/-! ## A357112.P17916460405168874845

`A008615(A035019(n+1))`
-/

namespace A357112.P17916460405168874845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A035019 (n + 1)).toNat

end

end A357112.P17916460405168874845

/-! ## A357112.P7010832955589424191

`A103221(A035019(n+1)+1)`
-/

namespace A357112.P7010832955589424191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A035019 (n + 1) + 1).toNat

end

end A357112.P7010832955589424191

/-! ## A357112.P8562149347581469902

`A038161(n+1)-A038161(n)`
-/

namespace A357112.P8562149347581469902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038161 (n + 1) - A038161 n

end

end A357112.P8562149347581469902

/-! ## A357112.P16420450396272260681

`A002324(A003136(n+2))`
-/

namespace A357112.P16420450396272260681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A003136 (n + 2)).toNat

end

end A357112.P16420450396272260681

/-! ## A357112.P9384131109655897672

`A035178(A270050(n+2)/2)`
-/

namespace A357112.P9384131109655897672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (SequenceMachineLib.roundAway ((A270050 (n + 2) : ℚ) / 2)).toNat

end

end A357112.P9384131109655897672

/-! ## A357112.P13940275925613421239

`A035178(A270050(n+2))`
-/

namespace A357112.P13940275925613421239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (A270050 (n + 2)).toNat

end

end A357112.P13940275925613421239

/-! ## A357112.P14078800825877341090

`A002324(A270672(n+2))`
-/

namespace A357112.P14078800825877341090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A270672 (n + 2)).toNat

end

end A357112.P14078800825877341090

/-! ## A357112.P17884865667465180117

`A002324(A270248(n+2))`
-/

namespace A357112.P17884865667465180117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A270248 (n + 2)).toNat

end

end A357112.P17884865667465180117

/-!
# A357113: T(n,m) is the numerator of the resistance between two diametrically opposite nodes of a rectangular electric network of n*m quadratic cells in which all edges are replaced by one-ohm resistors, where T(n,m) is a triangle read by rows.

The programs for A357113, there is no canonical definition to state claims against.
-/

/-! ## A357113.P17680341122248712172

`A330947(a(n-1))` with `a(0)=1, a(1)=7, a(2)=3`
-/

namespace A357113.P17680341122248712172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 3] fun n a =>
  A330947 (a (n - 1)).toNat

end

end A357113.P17680341122248712172

/-!
# A357117: Sums of two consecutive primes whose reversal is also the sum of two consecutive primes.

The programs for A357117, there is no canonical definition to state claims against.
-/

/-! ## A357117.P3140212231594127251

`A141340(∑[gcd(4, n+2)+2]+1)`
-/

namespace A357117.P3140212231594127251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A357117.P3140212231594127251

/-!
# A357119: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} |Stirling1(n,k*j)|.

The programs for A357119, there is no canonical definition to state claims against.
-/

/-! ## A357119.P16100720108325843940

`A265515(A357883(n))`
-/

namespace A357119.P16100720108325843940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265515 (A357883 n).toNat

end

end A357119.P16100720108325843940

/-! ## A357119.P2238925476747866625

`A357883(n)%A001272(n+1)`
-/

namespace A357119.P2238925476747866625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357883 n) (A001272 (n + 1))

end

end A357119.P2238925476747866625

/-! ## A357119.P6277957001377000865

`and(A100780(n+1), A357883(n))`
-/

namespace A357119.P6277957001377000865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100780 (n + 1)) (A357883 n)

end

end A357119.P6277957001377000865

/-! ## A357119.P3975448799299984718

`and(A118574(n+1), A357883(n))`
-/

namespace A357119.P3975448799299984718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118574 (n + 1)) (A357883 n)

end

end A357119.P3975448799299984718

/-! ## A357119.P4784975767322270846

`and(A146184(n+1), A357883(n))`
-/

namespace A357119.P4784975767322270846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146184 (n + 1)) (A357883 n)

end

end A357119.P4784975767322270846

/-!
# A357120: Irregular triangle T(n, k), n > 0, k = 1..A278043(n); the n-th row contains, in ascending order, the terms in the greedy tribonacci representation of n.

The programs for A357120, there is no canonical definition to state claims against.
-/

/-! ## A357120.P16361005223899938388

`A121562(xor(12*n², A049793(2*(n+1))))`
-/

namespace A357120.P16361005223899938388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121562 (Int.xor (12 * n ^ 2 : ℤ) (A049793 (2 * (n + 1)))).toNat

end

end A357120.P16361005223899938388

/-! ## A357120.P9161650894251718693

`A000070(A283306(n+1))%A340158(2*(n+2))`
-/

namespace A357120.P9161650894251718693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000070 (A283306 (n + 1)).toNat) (A340158 (2 * (n + 2)))

end

end A357120.P9161650894251718693

/-! ## A357120.P5501862618096823318

`A000070((A305260(n)-n*A283305(n+1))%A120210(3*(n+1)))`
-/

namespace A357120.P5501862618096823318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (Int.tmod (A305260 n - (n : ℤ) * A283305 (n + 1)) (A120210 (3 * (n + 1)))).toNat

end

end A357120.P5501862618096823318

/-!
# A357121: Irregular triangle T(n, k), n > 0, k = 1..A352104(n); the n-th row contains, in ascending order, the terms in the lazy tribonacci representation of n.

The programs for A357121, there is no canonical definition to state claims against.
-/

/-! ## A357121.P8817613730872935017

`A357120(A115026(n+1))`
-/

namespace A357121.P8817613730872935017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357120 (A115026 (n + 1)).toNat

end

end A357121.P8817613730872935017

/-! ## A357121.P14336653842165406119

`A179301(A156882(n))^A133457(n+1)`
-/

namespace A357121.P14336653842165406119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179301 (A156882 n).toNat : ℚ) ^ (A133457 (n + 1) : ℤ)

end

end A357121.P14336653842165406119

/-! ## A357121.P10679228455266869508

`A348296(n+1)%A176252(A124324(n))`
-/

namespace A357121.P10679228455266869508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348296 (n + 1)) (A176252 (A124324 n).toNat)

end

end A357121.P10679228455266869508

/-! ## A357121.P18006605698873582482

`A278908(A340854(n+2)^A384234(n+3))`
-/

namespace A357121.P18006605698873582482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (SequenceMachineLib.roundAway ((A340854 (n + 2) : ℚ) ^ (A384234 (n + 3) : ℤ))).toNat

end

end A357121.P18006605698873582482

/-! ## A357121.P6376678384218772441

`gcd(A230874(n+4), A278346(A133457(n+1)))`
-/

namespace A357121.P6376678384218772441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230874 (n + 4)) (A278346 (A133457 (n + 1)).toNat)

end

end A357121.P6376678384218772441

/-!
# A357125: Positive integers n such that 2^(n-3) == -1 (mod n).

The programs for A357125, there is no canonical definition to state claims against.
-/

/-! ## A357125.P10473906678786192127

`filter[A245319(n+1), A373154(#)]`
-/

namespace A357125.P10473906678786192127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A357125.P10473906678786192127

/-!
# A357127: a(n) = A081257(n) if A081257(n) > n, otherwise a(n) = 1.

The programs for A357127, there is no canonical definition to state claims against.
-/

/-! ## A357127.P6319125578045238466

`gcd(A025441(A268904(n+3)), A081257(n+2))`
-/

namespace A357127.P6319125578045238466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025441 (A268904 (n + 3)).toNat) (A081257 (n + 2))

end

end A357127.P6319125578045238466

/-!
# A357130: a(n) = 2*n - (-1)^n*(1+(n mod 2)).

The programs for A357130, the canonical program `A357130.P14224182942342598324` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357130 has offset 1).

The definition of A357130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357130.P14224182942342598324

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A357130

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14224182942342598324.Spec : Prop :=
  ∀ n, P14224182942342598324.a n = A357130 (n + 1)

theorem P14224182942342598324.correct : P14224182942342598324.Spec := by
  intro n
  simp only [A357130, Nat.add_sub_cancel]

end A357130

/-! ## A357130.P17720500500262196447

`2*(n+1)-(-1)^(n+1)*(1+(n+1)%2)`
-/

namespace A357130.P17720500500262196447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (-1) ^ (n + 1) * ((1 + (n + 1) % 2 : ℕ) : ℤ)

end

end A357130.P17720500500262196447

namespace A357130

/-- `2*(n+1)-(-1)^(n+1)*(1+(n+1)%2)` -/
def P17720500500262196447.Spec : Prop :=
  ∀ n, P17720500500262196447.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P17922301780972326125

`abs(xor(comp[or(2, n)], -4))`
-/

namespace A357130.P17922301780972326125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-4)|

end

end A357130.P17922301780972326125

namespace A357130

/-- `abs(xor(comp[or(2, n)], -4))` -/
def P17922301780972326125.Spec : Prop :=
  ∀ n, P17922301780972326125.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P2947105210219048370

`a(n-2)+4` with `a(0)=4, a(1)=3`
-/

namespace A357130.P2947105210219048370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 2) + 4

end

end A357130.P2947105210219048370

namespace A357130

/-- `a(n-2)+4` -/
def P2947105210219048370.Spec : Prop :=
  ∀ n, (P2947105210219048370.a n : ℤ) = A357130 (n + 1)

end A357130

/-! ## A357130.P1433731594459595107

`xor(1, record[xor(2, n)])+1`
-/

namespace A357130.P1433731594459595107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A357130.P1433731594459595107

namespace A357130

/-- `xor(1, record[xor(2, n)])+1` -/
def P1433731594459595107.Spec : Prop :=
  ∀ n, (P1433731594459595107.a n : ℤ) = A357130 (n + 1)

end A357130

/-! ## A357130.P12772378010540424192

`gcd(2, n)²+2*n`
-/

namespace A357130.P12772378010540424192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + 2 * n

end

end A357130.P12772378010540424192

namespace A357130

/-- `gcd(2, n)²+2*n` -/
def P12772378010540424192.Spec : Prop :=
  ∀ n, (P12772378010540424192.a n : ℤ) = A357130 (n + 1)

end A357130

/-! ## A357130.P5202543298618481290

`gcd(4, n²)+n+n`
-/

namespace A357130.P5202543298618481290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2) + n + n

end

end A357130.P5202543298618481290

namespace A357130

/-- `gcd(4, n²)+n+n` -/
def P5202543298618481290.Spec : Prop :=
  ∀ n, (P5202543298618481290.a n : ℤ) = A357130 (n + 1)

end A357130

/-! ## A357130.P15225103874019674373

`3*or(1, n)+1-n`
-/

namespace A357130.P15225103874019674373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 1 n : ℤ) + (1 - (n : ℤ))

end

end A357130.P15225103874019674373

namespace A357130

/-- `3*or(1, n)+1-n` -/
def P15225103874019674373.Spec : Prop :=
  ∀ n, P15225103874019674373.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P14952007359729612271

`xor(1, n+2)+or(1, n)`
-/

namespace A357130.P14952007359729612271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) + Nat.lor 1 n

end

end A357130.P14952007359729612271

namespace A357130

/-- `xor(1, n+2)+or(1, n)` -/
def P14952007359729612271.Spec : Prop :=
  ∀ n, (P14952007359729612271.a n : ℤ) = A357130 (n + 1)

end A357130

/-! ## A357130.P1952699711634039509

`or(n, -2)²+2*n`
-/

namespace A357130.P1952699711634039509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2 + (2 * n : ℤ)

end

end A357130.P1952699711634039509

namespace A357130

/-- `or(n, -2)²+2*n` -/
def P1952699711634039509.Spec : Prop :=
  ∀ n, P1952699711634039509.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P16983054379163046407

`∑[4-a(n-1)]` with `a(0)=4, a(1)=-1`
-/

namespace A357130.P16983054379163046407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357130.P16983054379163046407

namespace A357130

/-- `∑[4-a(n-1)]` -/
def P16983054379163046407.Spec : Prop :=
  ∀ n, P16983054379163046407.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P12612246607752910020

`2*(2^(-1)^n+n)`
-/

namespace A357130.P12612246607752910020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ ((-1) ^ n : ℤ) + (n : ℚ))

end

end A357130.P12612246607752910020

namespace A357130

/-- `2*(2^(-1)^n+n)` -/
def P12612246607752910020.Spec : Prop :=
  ∀ n, P12612246607752910020.a n = (A357130 (n + 1) : ℚ)

theorem P12612246607752910020.correct : P12612246607752910020.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A357130, Nat.add_sub_cancel, A357130.P12612246607752910020.a, A357130.P14224182942342598324.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A357130, Nat.add_sub_cancel, A357130.P12612246607752910020.a, A357130.P14224182942342598324.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A357130

/-! ## A357130.P6509512599617279381

`∑[∑[ogf((4-x+x^2)/(1+x))]]`
-/

namespace A357130.P6509512599617279381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357130.P6509512599617279381

namespace A357130

/-- `∑[∑[ogf((4-x+x^2)/(1+x))]]` -/
def P6509512599617279381.Spec : Prop :=
  ∀ n, P6509512599617279381.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P1945038148915523290

`ogf((4-x+x^2)/(1-x-x^2+x^3))`
-/

namespace A357130.P1945038148915523290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, 1] [1, -1, -1, 1] n

end

end A357130.P1945038148915523290

namespace A357130

/-- `ogf((4-x+x^2)/(1-x-x^2+x^3))` -/
def P1945038148915523290.Spec : Prop :=
  ∀ n, P1945038148915523290.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P3862748434838358377

`4-floor(-a(n-2))` with `a(0)=4, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A357130.P3862748434838358377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  4 - (-a (n - 2))

end

end A357130.P3862748434838358377

namespace A357130

/-- `4-floor(-a(n-2))` -/
def P3862748434838358377.Spec : Prop :=
  ∀ n, P3862748434838358377.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P13034095772201814118

`4-ceil(-a(n-2))` with `a(0)=4, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A357130.P13034095772201814118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  4 - (-a (n - 2))

end

end A357130.P13034095772201814118

namespace A357130

/-- `4-ceil(-a(n-2))` -/
def P13034095772201814118.Spec : Prop :=
  ∀ n, P13034095772201814118.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P12489289429490152738

`4-round(-a(n-2))` with `a(0)=4, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A357130.P12489289429490152738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  4 - (-a (n - 2))

end

end A357130.P12489289429490152738

namespace A357130

/-- `4-round(-a(n-2))` -/
def P12489289429490152738.Spec : Prop :=
  ∀ n, P12489289429490152738.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P16822243486533532487

`(2-n%2)²+2*n`
-/

namespace A357130.P16822243486533532487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) ^ 2 + (2 * n : ℤ)

end

end A357130.P16822243486533532487

namespace A357130

/-- `(2-n%2)²+2*n` -/
def P16822243486533532487.Spec : Prop :=
  ∀ n, P16822243486533532487.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P14139520758037834396

`(and(1, n)-2)²+2*n`
-/

namespace A357130.P14139520758037834396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 2) ^ 2 + (2 * n : ℤ)

end

end A357130.P14139520758037834396

namespace A357130

/-- `(and(1, n)-2)²+2*n` -/
def P14139520758037834396.Spec : Prop :=
  ∀ n, P14139520758037834396.a n = A357130 (n + 1)

end A357130

/-! ## A357130.P3086565076415630758

`and(1, n)-2*xor(n, -2)`
-/

namespace A357130.P3086565076415630758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 2 * Int.xor (n : ℤ) (-2)

end

end A357130.P3086565076415630758

namespace A357130

/-- `and(1, n)-2*xor(n, -2)` -/
def P3086565076415630758.Spec : Prop :=
  ∀ n, P3086565076415630758.a n = A357130 (n + 1)

end A357130

/-!
# A357134: Take the k-th composition in standard order for each part k of the n-th composition in standard order; then set a(n) to be the index (in standard order) of the concatenation.

The programs for A357134, there is no canonical definition to state claims against.
-/

/-! ## A357134.P3906541038758391110

`A080719(A261300(n))`
-/

namespace A357134.P3906541038758391110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A261300 n).toNat

end

end A357134.P3906541038758391110

/-!
# A357135: Take the k-th composition in standard order for each part k of the n-th composition in standard order; then concatenate.

The programs for A357135, there is no canonical definition to state claims against.
-/

/-! ## A357135.P2447620540292496316

`A198293(A301739(2*(n+4))+6*n)`
-/

namespace A357135.P2447620540292496316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198293 (A301739 (2 * (n + 4)) + (6 * n : ℤ)).toNat

end

end A357135.P2447620540292496316

/-! ## A357135.P2607570759457794186

`gcd(A128157(2*n+3), A192744(A049604(n)))`
-/

namespace A357135.P2607570759457794186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128157 (2 * n + 3)) (A192744 (A049604 n).toNat)

end

end A357135.P2607570759457794186

/-! ## A357135.P1302512857141005678

`A237593(gcd(A048594(2*n+3), A247013(n+1)))`
-/

namespace A357135.P1302512857141005678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (Int.gcd (A048594 (2 * n + 3)) (A247013 (n + 1)))

end

end A357135.P1302512857141005678

/-! ## A357135.P7148461824887775127

`A055457(A034677(n+1)+A007318(n))`
-/

namespace A357135.P7148461824887775127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A034677 (n + 1) + A007318 n).toNat

end

end A357135.P7148461824887775127

/-! ## A357135.P8996674896119369082

`A331591(A320462(n+1)+A066982(n+1))`
-/

namespace A357135.P8996674896119369082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A320462 (n + 1) + A066982 (n + 1)).toNat

end

end A357135.P8996674896119369082

/-!
# A357136: Triangle read by rows where T(n,k) is the number of integer compositions of n with alternating sum k = 0..n. Part of the full triangle A097805.

The programs for A357136, there is no canonical definition to state claims against.
-/

/-! ## A357136.P18175442421042505837

`A109187(n)/A123185(n)`
-/

namespace A357136.P18175442421042505837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A123185 n : ℚ)

end

end A357136.P18175442421042505837

/-! ## A357136.P454675918103343013

`A115727(A164652(n))`
-/

namespace A357136.P454675918103343013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (A164652 n).toNat

end

end A357136.P454675918103343013

/-! ## A357136.P8732782759612917820

`A177903(A152150(n))`
-/

namespace A357136.P8732782759612917820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A152150 n).toNat

end

end A357136.P8732782759612917820

/-! ## A357136.P17971582843583775246

`A329362(A097591(n))`
-/

namespace A357136.P17971582843583775246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A097591 n).toNat

end

end A357136.P17971582843583775246

/-! ## A357136.P6208121935561317215

`A307301(A129684(n))`
-/

namespace A357136.P6208121935561317215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307301 (A129684 n).toNat

end

end A357136.P6208121935561317215

/-!
# A357137: Maximal run-length of the n-th composition in standard order; a(0) = 0.

The programs for A357137, there is no canonical definition to state claims against.
-/

/-! ## A357137.P13224194800463835487

`A333766(A333627(n))`
-/

namespace A357137.P13224194800463835487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A333627 n).toNat

end

end A357137.P13224194800463835487

/-! ## A357137.P15160509279312966105

`A158388(n)+A087117(A333627(n))`
-/

namespace A357137.P15160509279312966105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A087117 (A333627 n).toNat

end

end A357137.P15160509279312966105

/-! ## A357137.P15534247079884538502

`(A087117(A333627(n))+1)%A013973(n)`
-/

namespace A357137.P15534247079884538502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 (A333627 n).toNat + 1) (A013973 n)

end

end A357137.P15534247079884538502

/-! ## A357137.P8360963017113718661

`(A087117(A333627(n))+1)*char[A235791(n+1)]`
-/

namespace A357137.P8360963017113718661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087117 (A333627 n).toNat + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357137.P8360963017113718661

/-! ## A357137.P17874109403058836949

`(A087117(A333627(n))+1)*A029908(n+4)%2`
-/

namespace A357137.P17874109403058836949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087117 (A333627 n).toNat + 1) * Int.tmod (A029908 (n + 4)) 2

end

end A357137.P17874109403058836949

/-! ## A357137.P15696350008510386769

`and(A087117(A333627(n))+1, n-A053645(n+1))`
-/

namespace A357137.P15696350008510386769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087117 (A333627 n).toNat + 1) ((n : ℤ) - A053645 (n + 1))

end

end A357137.P15696350008510386769

/-! ## A357137.P3875263071041455467

`A333381(lcm(n, A088530(n+2)))`
-/

namespace A357137.P3875263071041455467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.lcm (n : ℤ) (A088530 (n + 2)))

end

end A357137.P3875263071041455467

/-! ## A357137.P6329134777009931232

`A333381(n*A043286(n+9))`
-/

namespace A357137.P6329134777009931232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 ((n : ℤ) * A043286 (n + 9)).toNat

end

end A357137.P6329134777009931232

/-! ## A357137.P1079705224307657019

`A333381(n)+A010815(A155561(n+1))`
-/

namespace A357137.P1079705224307657019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n + A010815 (A155561 (n + 1)).toNat

end

end A357137.P1079705224307657019

/-! ## A357137.P15363415691457715157

`A333381(n)+A240328(A169834(3*n+1))`
-/

namespace A357137.P15363415691457715157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n + A240328 (A169834 (3 * n + 1)).toNat

end

end A357137.P15363415691457715157

/-!
# A357138: Minimal run-length of the n-th composition in standard order; a(0) = 0.

The programs for A357138, there is no canonical definition to state claims against.
-/

/-! ## A357138.P2574005292739068835

`gcd(A357180(A273886(n+1)), A357181(n))`
-/

namespace A357138.P2574005292739068835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A357180 (A273886 (n + 1)).toNat) (A357181 n)

end

end A357138.P2574005292739068835

/-! ## A357138.P15891484752673215154

`A333768(A333627(n))`
-/

namespace A357138.P15891484752673215154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A333627 n).toNat

end

end A357138.P15891484752673215154

/-! ## A357138.P13761723677030894688

`A052409(A333219(n+1)%A238476(n+1))`
-/

namespace A357138.P13761723677030894688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (Int.tmod (A333219 (n + 1)) (A238476 (n + 1))).toNat

end

end A357138.P13761723677030894688

/-! ## A357138.P13677384469850297889

`A138904(n)%A329312(2*n+1)`
-/

namespace A357138.P13677384469850297889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138904 n) (A329312 (2 * n + 1))

end

end A357138.P13677384469850297889

/-! ## A357138.P7449170776831887721

`A138904(n)-A000007(A226492(n))`
-/

namespace A357138.P7449170776831887721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 n - A000007 (A226492 n).toNat

end

end A357138.P7449170776831887721

/-!
# A357139: Take the weakly increasing prime indices of each prime index of n, then concatenate.

The programs for A357139, there is no canonical definition to state claims against.
-/

/-! ## A357139.P14463892497459206233

`A118914(A309593(3*n+2)+A193595(n))`
-/

namespace A357139.P14463892497459206233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A309593 (3 * n + 2) + A193595 n).toNat

end

end A357139.P14463892497459206233

/-! ## A357139.P1394994927828798947

`gcd(A049444(n), A238586(A344414(3*n+5)))`
-/

namespace A357139.P1394994927828798947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049444 n) (A238586 (A344414 (3 * n + 5)).toNat)

end

end A357139.P1394994927828798947

/-! ## A357139.P11238100220307869894

`gcd(A143227(A118575(n+1)), A343321(n))`
-/

namespace A357139.P11238100220307869894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143227 (A118575 (n + 1)).toNat) (A343321 n)

end

end A357139.P11238100220307869894

/-! ## A357139.P11282218435182392008

`A357299(A004394(n+1)+A002144(n+1))`
-/

namespace A357139.P11282218435182392008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357299 (A004394 (n + 1) + A002144 (n + 1)).toNat

end

end A357139.P11282218435182392008

/-!
# A357140: Number of n X n triangular (0,1)-matrices with exactly 2n entries equal to 1 and no zero rows or columns.

The programs for A357140, there is no canonical definition to state claims against.
-/

/-! ## A357140.P12103489740898021063

`A137252(∑[4*n])`
-/

namespace A357140.P12103489740898021063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357140.P12103489740898021063

/-! ## A357140.P1559541583137677647

`A137252(A046092(n))+A063524(2*(n+2))`
-/

namespace A357140.P1559541583137677647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137252 (A046092 n).toNat + A063524 (2 * (n + 2))

end

end A357140.P1559541583137677647

/-! ## A357140.P10173484289539975672

`gcd(A137248(3*(n+1)), A137252(A046092(n)))`
-/

namespace A357140.P10173484289539975672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137248 (3 * (n + 1))) (A137252 (A046092 n).toNat)

end

end A357140.P10173484289539975672

/-!
# A357141: Number of n X n triangular matrices with nonnegative integer entries and without zero rows or columns such that sum of all entries is equal to 2n.

The programs for A357141, there is no canonical definition to state claims against.
-/

/-! ## A357141.P18312910532287145175

`A137251(round(1/acot(n))+C(2*n, 2))`
-/

namespace A357141.P18312910532287145175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (Nat.choose (2 * n) 2 : ℤ)).toNat

end

end A357141.P18312910532287145175

/-! ## A357141.P248354971294753540

`A137251(A004277(n²))`
-/

namespace A357141.P248354971294753540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (A004277 (n ^ 2)).toNat

end

end A357141.P248354971294753540

/-! ## A357141.P7187108381826134320

`A137251(A028310(2*n²))`
-/

namespace A357141.P7187108381826134320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (A028310 (2 * n ^ 2)).toNat

end

end A357141.P7187108381826134320

/-! ## A357141.P3949161410910972168

`A137251(eq[n^(n%2), A049581(n)])`
-/

namespace A357141.P3949161410910972168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357141.P3949161410910972168

/-! ## A357141.P7181513575735651961

`A137251(A004277(n)*A028310(n))`
-/

namespace A357141.P7181513575735651961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (A004277 n * A028310 n).toNat

end

end A357141.P7181513575735651961

/-!
# A357142: Nonnegative numbers all of whose pairs of consecutive decimal digits are adjacent digits, where 9 and 0 are considered adjacent.

The programs for A357142, there is no canonical definition to state claims against.
-/

/-! ## A357142.P2525195064631631864

`filter[A376425(n+1), A196368(#)]`
-/

namespace A357142.P2525195064631631864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A357142.P2525195064631631864

/-! ## A357142.P13981726116424392545

`filter[A376425(n+1), A228710(#)]`
-/

namespace A357142.P13981726116424392545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A357142.P13981726116424392545

/-! ## A357142.P16855025389087624430

`∩[A030141(n+1), A376425(n+1)]`
-/

namespace A357142.P16855025389087624430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357142.P16855025389087624430

/-! ## A357142.P694450507450965880

`∩[A043096(n+1), A376425(n+1)]`
-/

namespace A357142.P694450507450965880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357142.P694450507450965880

/-! ## A357142.P2074077630055327931

`∩[A355301(n+1), A376425(n+1)]`
-/

namespace A357142.P2074077630055327931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357142.P2074077630055327931

/-!
# A357143: a(n) is sum of the base-5 digits of n each raised to the number of digits of n in base 5.

The programs for A357143, the canonical program `A357143.P9618217690361557058` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357143 has offset 1).

The definition of A357143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357143.P9618217690361557058

`A101337(A007091(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A357143

/-- `A101337(A007091(n+1))` -/
def P9618217690361557058.Spec : Prop :=
  ∀ n, P9618217690361557058.a n = A357143 (n + 1)

theorem P9618217690361557058.correct : P9618217690361557058.Spec := by
  intro n
  simp only [A357143, Nat.add_sub_cancel]

end A357143

/-!
# A357144: Square array, A(n, k), n, k >= 0, read by antidiagonals; A(n, k) = g(f(n) * f(k)) where f(m) = A002487(m)/A002487(m+1) and g is the inverse of f.

The programs for A357144, there is no canonical definition to state claims against.
-/

/-! ## A357144.P3649109867301599461

`A384447(A049207(n))`
-/

namespace A357144.P3649109867301599461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384447 (A049207 n).toNat

end

end A357144.P3649109867301599461

/-! ## A357144.P9098951487804853137

`A277994(A064298(n+1))`
-/

namespace A357144.P9098951487804853137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277994 (A064298 (n + 1)).toNat

end

end A357144.P9098951487804853137

/-! ## A357144.P184580561414125782

`A000523(A220644(n+1))%A137896(n)`
-/

namespace A357144.P184580561414125782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (A220644 (n + 1)).toNat) (A137896 n)

end

end A357144.P184580561414125782

/-! ## A357144.P17649327195064135718

`A007953(A329331(n)%A329300(n+2))`
-/

namespace A357144.P17649327195064135718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A329331 n) (A329300 (n + 2))).toNat

end

end A357144.P17649327195064135718

/-! ## A357144.P5951351049772849775

`A004086(A329331(n))%A374679(n+3)`
-/

namespace A357144.P5951351049772849775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A329331 n).toNat) (A374679 (n + 3))

end

end A357144.P5951351049772849775

/-!
# A357146: a(n) = n! * Sum_{k=0..floor(n/2)} (n - 2*k)^(2*k)/(n - 2*k)!.

The programs for A357146, there is no canonical definition to state claims against.
-/

/-! ## A357146.P8567056276199850326

`(A354437(n)+A354436(n))/2`
-/

namespace A357146.P8567056276199850326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354437 n + A354436 n : ℚ) / 2

end

end A357146.P8567056276199850326

/-! ## A357146.P2912741292943287792

`A000265(A354437(n)+A354436(n))`
-/

namespace A357146.P2912741292943287792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A354437 n + A354436 n).toNat

end

end A357146.P2912741292943287792

/-! ## A357146.P7638762233649193691

`A325642(A354437(n)+A354436(n))`
-/

namespace A357146.P7638762233649193691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A354437 n + A354436 n).toNat

end

end A357146.P7638762233649193691

/-!
# A357147: a(n) = n! * Sum_{k=0..floor(n/3)} (n - 3*k)^(3*k)/(n - 3*k)!.

The programs for A357147, there is no canonical definition to state claims against.
-/

/-! ## A357147.P15160347584923371853

`A016813(∏{e}[n+1, #+1]*A058831(n))`
-/

namespace A357147.P15160347584923371853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A058831 n).toNat

end

end A357147.P15160347584923371853

/-! ## A357147.P8193742898484939686

`A109613(A052762(n)*A140343(n))`
-/

namespace A357147.P8193742898484939686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A052762 n * A140343 n).toNat

end

end A357147.P8193742898484939686

/-! ## A357147.P2522532406087908267

`A008619(A052735(n)*A153804(n+1))`
-/

namespace A357147.P2522532406087908267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A052735 n * A153804 (n + 1)).toNat

end

end A357147.P2522532406087908267

/-!
# A357148: a(n) = A357082(n-1) + A357082(n).

The programs for A357148, there is no canonical definition to state claims against.
-/

/-! ## A357148.P5222685429806019706

`A357082(n)+A357082(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357148.P5222685429806019706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357082 n + A357082 (n + 1)

end

end A357148.P5222685429806019706

/-! ## A357148.P5286818102506708125

`A357082(A008619(2*n))-A001489(A357082(n))`
-/

namespace A357148.P5286818102506708125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357082 (A008619 (2 * n)).toNat - A001489 (A357082 n).toNat

end

end A357148.P5286818102506708125

/-!
# A357150: Primitive terms in A357148.

The programs for A357150, there is no canonical definition to state claims against.
-/

/-! ## A357150.P13182282779598557785

`lt[0, char[A357148(n+1)]]`
-/

namespace A357150.P13182282779598557785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357148 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357150.P13182282779598557785

/-! ## A357150.P17680867527681499731

`eq[A000038(n)+1, char[A357148(n+1)]]`
-/

namespace A357150.P17680867527681499731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357148 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A357150.P17680867527681499731

/-! ## A357150.P14245785964170133993

`lt[0, char[A357082(n+1)+A357082(n)]]`
-/

namespace A357150.P14245785964170133993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357082 (n + 1) + A357082 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357150.P14245785964170133993

/-! ## A357150.P745724060330643355

`eq[1, char[A357148(A056239(n+1)+1)]]`
-/

namespace A357150.P745724060330643355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357148 (A056239 (n + 1) + 1).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357150.P745724060330643355

/-! ## A357150.P541445359681426348

`record[A357148(n+1)]%A357110(n+1)`
-/

namespace A357150.P541445359681426348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A357110 (n + 1))

end

end A357150.P541445359681426348

/-!
# A357151: Coefficients in the power series A(x) such that: A(x) = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357151, there is no canonical definition to state claims against.
-/

/-! ## A357151.P15223352176793841538

`A033781(A196597(n+1))`
-/

namespace A357151.P15223352176793841538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033781 (A196597 (n + 1)).toNat

end

end A357151.P15223352176793841538

/-! ## A357151.P4520721154993436196

`A185714(A081570(n)+6)`
-/

namespace A357151.P4520721154993436196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A081570 n + 6).toNat

end

end A357151.P4520721154993436196

/-!
# A357152: Coefficients in the power series A(x) such that: A(x)^2 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357152, there is no canonical definition to state claims against.
-/

/-! ## A357152.P11012382967364910470

`A152799(n)+A152785(A232215(n))`
-/

namespace A357152.P11012382967364910470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152799 n + A152785 (A232215 n).toNat

end

end A357152.P11012382967364910470

/-!
# A357153: Coefficients in the power series A(x) such that: A(x)^3 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357153, there is no canonical definition to state claims against.
-/

/-! ## A357153.P6269662969042477505

`A104020(7*a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A357153.P6269662969042477505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A104020 (7 * a (n - 2)).toNat

end

end A357153.P6269662969042477505

/-!
# A357154: Coefficients in the power series A(x) such that: A(x)^4 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357154, there is no canonical definition to state claims against.
-/

/-! ## A357154.P17595276700889802383

`A194920(A000891(n))`
-/

namespace A357154.P17595276700889802383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A000891 n).toNat

end

end A357154.P17595276700889802383

/-!
# A357155: Coefficients in the power series A(x) such that: A(x)^5 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357155, there is no canonical definition to state claims against.
-/

/-! ## A357155.P1812457100838231297

`A216433(A149708(n))`
-/

namespace A357155.P1812457100838231297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216433 (A149708 n).toNat

end

end A357155.P1812457100838231297

/-!
# A357158: a(n) = coefficient of x^n in the power series A(x) such that: 1 = Sum_{n=-oo..+oo} n * x^n * (1 - x^n)^n * A(x)^n.

The programs for A357158, there is no canonical definition to state claims against.
-/

/-! ## A357158.P10586513616127100673

`A131396(A298906(n))+A091055(n)`
-/

namespace A357158.P10586513616127100673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (A298906 n).toNat + A091055 n

end

end A357158.P10586513616127100673

/-!
# A357160: Coefficients in the power series A(x) such that: 1 = Sum_{n=-oo..+oo} x^(3*n+2) * (1 - x^(n-1))^(n+1) * A(x)^n.

The programs for A357160, there is no canonical definition to state claims against.
-/

/-! ## A357160.P3651360165857770041

`A116538(A369296(n))`
-/

namespace A357160.P3651360165857770041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116538 (A369296 n).toNat

end

end A357160.P3651360165857770041

/-! ## A357160.P13146601482873380896

`A226762(A150807(n))+A054908(A057635(n+1))`
-/

namespace A357160.P13146601482873380896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150807 n).toNat + A054908 (A057635 (n + 1)).toNat

end

end A357160.P13146601482873380896

/-! ## A357160.P17115751933336700363

`A367467(A149864(n))-A094202(A024417(n+1))`
-/

namespace A357160.P17115751933336700363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A149864 n).toNat - A094202 (A024417 (n + 1)).toNat

end

end A357160.P17115751933336700363

/-!
# A357161: Coefficients in the power series A(x) such that: A(x) = Sum_{n=-oo..+oo} x^(3*n+2) * (1 - x^(n-1))^(n+1) * A(x)^n.

The programs for A357161, there is no canonical definition to state claims against.
-/

/-! ## A357161.P17617948843655907631

`A110266(xor(3, A100054(n)!))`
-/

namespace A357161.P17617948843655907631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (Nat.xor 3 (Nat.factorial (A100054 n).toNat))

end

end A357161.P17617948843655907631

/-! ## A357161.P6450186138791970682

`A072531(A007838(n+2)+3)`
-/

namespace A357161.P6450186138791970682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072531 (A007838 (n + 2) + 3).toNat

end

end A357161.P6450186138791970682

/-!
# A357162: Coefficients in the power series A(x) such that: A(x)^2 = Sum_{n=-oo..+oo} x^(3*n+2) * (1 - x^(n-1))^(n+1) * A(x)^n.

The programs for A357162, there is no canonical definition to state claims against.
-/

/-! ## A357162.P7179242227734237313

`A340072(A125094(n)+A111343(n))`
-/

namespace A357162.P7179242227734237313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340072 (A125094 n + A111343 n).toNat

end

end A357162.P7179242227734237313

/-!
# A357163: Coefficients in the power series A(x) such that: A(x)^3 = Sum_{n=-oo..+oo} x^(3*n+2) * (1 - x^(n-1))^(n+1) * A(x)^n.

The programs for A357163, there is no canonical definition to state claims against.
-/

/-! ## A357163.P15709842630719997571

`A172266(n)+A037178(A002294(n))`
-/

namespace A357163.P15709842630719997571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 n + A037178 (A002294 n).toNat

end

end A357163.P15709842630719997571

/-! ## A357163.P2886978011822137233

`A208675(n)+A056654(A004148(n))`
-/

namespace A357163.P2886978011822137233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208675 n + A056654 (A004148 n).toNat

end

end A357163.P2886978011822137233

/-!
# A357164: Coefficients in the power series A(x) such that: A(x)^4 = Sum_{n=-oo..+oo} x^(3*n+2) * (1 - x^(n-1))^(n+1) * A(x)^n.

The programs for A357164, there is no canonical definition to state claims against.
-/

/-! ## A357164.P11185535073398167376

`∏[∏{p}[(n^n)², 2*n+#]]`
-/

namespace A357164.P11185535073398167376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 * n + p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A357164.P11185535073398167376

/-!
# A357165: Coefficients in the power series A(x) such that: A(x)^5 = Sum_{n=-oo..+oo} x^(3*n+2) * (1 - x^(n-1))^(n+1) * A(x)^n.

The programs for A357165, there is no canonical definition to state claims against.
-/

/-! ## A357165.P1951637859588797607

`A226785(floor(10^(n-1))+2)`
-/

namespace A357165.P1951637859588797607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226785 (⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2).toNat

end

end A357165.P1951637859588797607

/-!
# A357167: Numbers k such that k and k+2 are both odd numbers whose prime factors are all prime-indexed primes.

The programs for A357167, the canonical program `A357167.P3325441078361987082` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357167 has offset 1).

The definition of A357167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357167.P3325441078361987082

`∩[A076610(n+1)-2, A076610(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A357167

/-- `∩[A076610(n+1)-2, A076610(n+1)]` -/
def P3325441078361987082.Spec : Prop :=
  ∀ n, (P3325441078361987082.a n : ℤ) = A357167 (n + 1)

theorem P3325441078361987082.correct : P3325441078361987082.Spec := by
  intro n
  simp only [A357167, Nat.add_sub_cancel]

end A357167

/-! ## A357167.P15217165398747865556

`record[A360325(n+1)/A360329(n+3)]`
-/

namespace A357167.P15217165398747865556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360325 (n + 1) : ℚ) / (A360329 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357167.P15217165398747865556

namespace A357167

/-- `record[A360325(n+1)/A360329(n+3)]` -/
def P15217165398747865556.Spec : Prop :=
  ∀ n, P15217165398747865556.a n = (A357167 (n + 1) : ℚ)

end A357167

/-! ## A357167.P12033406883127857026

`record[A360325(n+1)/A360331(n+3)]`
-/

namespace A357167.P12033406883127857026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360325 (n + 1) : ℚ) / (A360331 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357167.P12033406883127857026

namespace A357167

/-- `record[A360325(n+1)/A360331(n+3)]` -/
def P12033406883127857026.Spec : Prop :=
  ∀ n, P12033406883127857026.a n = (A357167 (n + 1) : ℚ)

end A357167

/-! ## A357167.P11747526134887627089

`record[A360325(n+1)%A360325(n+3)]`
-/

namespace A357167.P11747526134887627089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360325 (n + 1)) (A360325 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357167.P11747526134887627089

namespace A357167

/-- `record[A360325(n+1)%A360325(n+3)]` -/
def P11747526134887627089.Spec : Prop :=
  ∀ n, P11747526134887627089.a n = A357167 (n + 1)

end A357167

/-! ## A357167.P5823860965782968278

`∩[A076610(n+1), A023444(A076610(n+1))]`
-/

namespace A357167.P5823860965782968278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A076610 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357167.P5823860965782968278

namespace A357167

/-- `∩[A076610(n+1), A023444(A076610(n+1))]` -/
def P5823860965782968278.Spec : Prop :=
  ∀ n, (P5823860965782968278.a n : ℤ) = A357167 (n + 1)

end A357167

/-!
# A357168: Starts of runs of at least 3 consecutive odd numbers whose prime factors are all prime-indexed primes.

The programs for A357168, the canonical program `A357168.P13820866121939299860` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357168 has offset 1).

The definition of A357168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357168.P13820866121939299860

`∩[A357167(n+1)-2, A357167(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A357168

/-- `∩[A357167(n+1)-2, A357167(n+1)]` -/
def P13820866121939299860.Spec : Prop :=
  ∀ n, (P13820866121939299860.a n : ℤ) = A357168 (n + 1)

theorem P13820866121939299860.correct : P13820866121939299860.Spec := by
  intro n
  simp only [A357168, Nat.add_sub_cancel]

end A357168

/-! ## A357168.P16729640580061435267

`∩[A357167(n+1), A023444(A357167(n+1))]`
-/

namespace A357168.P16729640580061435267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A357167 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357168.P16729640580061435267

namespace A357168

/-- `∩[A357167(n+1), A023444(A357167(n+1))]` -/
def P16729640580061435267.Spec : Prop :=
  ∀ n, (P16729640580061435267.a n : ℤ) = A357168 (n + 1)

end A357168

/-!
# A357170: Primes p such that the minimum number of divisors among the numbers between p and NextPrime(p) is a prime power.

The programs for A357170, there is no canonical definition to state claims against.
-/

/-! ## A357170.P13724289820072325402

`record[A056608(A282671(n+2)+n)]`
-/

namespace A357170.P13724289820072325402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (A282671 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357170.P13724289820072325402

/-! ## A357170.P14311177701665887884

`p?[A360556(comp[∑[n-2]]+1)]`
-/

namespace A357170.P14311177701665887884
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360556 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357170.P14311177701665887884

/-! ## A357170.P13229246758009402560

`record[A164880(A108309(n+4))]`
-/

namespace A357170.P13229246758009402560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164880 (A108309 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357170.P13229246758009402560

/-! ## A357170.P14755064182297178878

`p?[lt[A309766(n), A166123(n+2)]]`
-/

namespace A357170.P14755064182297178878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166123 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A357170.P14755064182297178878

/-! ## A357170.P12215487403313365513

`A000040(lt[A326786(3*n+2), A170823(n)])`
-/

namespace A357170.P12215487403313365513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357170.P12215487403313365513

/-!
# A357171: a(n) is the number of divisors of n whose digits are in strictly increasing order (A009993).

The programs for A357171, there is no canonical definition to state claims against.
-/

/-! ## A357171.P5902137678688964111

`∑{d}[n+1, A260526(#)%2]`
-/

namespace A357171.P5902137678688964111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A260526 d) 2

end

end A357171.P5902137678688964111

/-! ## A357171.P14005333188696282938

`∑{d}[n+1, A008683(A260526(#))]`
-/

namespace A357171.P14005333188696282938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (A260526 d).toNat

end

end A357171.P14005333188696282938

/-! ## A357171.P9851826317452510414

`∏{e}[n+1, #+1]-A280710(A323866(n))`
-/

namespace A357171.P9851826317452510414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A280710 (A323866 n).toNat

end

end A357171.P9851826317452510414

/-! ## A357171.P16313563879486016044

`∏{e}[n+1, #+1]-A143104(A339532(2*(n+2)))`
-/

namespace A357171.P16313563879486016044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A143104 (A339532 (2 * (n + 2))).toNat

end

end A357171.P16313563879486016044

/-! ## A357171.P3062858636431034068

`Δ[A054519(n)]-A216579(A335471(n))`
-/

namespace A357171.P3062858636431034068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A216579 (A335471 n).toNat

end

end A357171.P3062858636431034068

/-!
# A357172: a(n) is the smallest integer that has exactly n divisors whose decimal digits are in strictly increasing order.

The programs for A357172, there is no canonical definition to state claims against.
-/

/-! ## A357172.P1300138078019648820

`A005179(n+1)-A258197(A277043(n))`
-/

namespace A357172.P1300138078019648820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) - A258197 (A277043 n).toNat

end

end A357172.P1300138078019648820

/-! ## A357172.P15949836706591633444

`A005179(n+1)-A332356(A095008(n+1))`
-/

namespace A357172.P15949836706591633444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) - A332356 (A095008 (n + 1)).toNat

end

end A357172.P15949836706591633444

/-! ## A357172.P14785902514642617636

`A015897(n+1)*A183759(A368386(n+1))`
-/

namespace A357172.P14785902514642617636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015897 (n + 1) * A183759 (A368386 (n + 1)).toNat

end

end A357172.P14785902514642617636

/-! ## A357172.P9963364987337176794

`A005179(n+1)-A350139(A155211(3*n+5))`
-/

namespace A357172.P9963364987337176794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) - A350139 (A155211 (3 * n + 5)).toNat

end

end A357172.P9963364987337176794

/-!
# A357173: Positions of records in A357171, i.e., integers whose number of divisors whose decimal digits are in strictly increasing order sets a new record.

The programs for A357173, there is no canonical definition to state claims against.
-/

/-! ## A357173.P12955919863041405519

`record[A357172(n+1)%A357172(A351374(n+2))]`
-/

namespace A357173.P12955919863041405519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357172 (n + 1)) (A357172 (A351374 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357173.P12955919863041405519

/-! ## A357173.P13235432015103264886

`A309015(A062399(n+1))`
-/

namespace A357173.P13235432015103264886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309015 (A062399 (n + 1)).toNat

end

end A357173.P13235432015103264886

/-! ## A357173.P18277370089034679501

`A309015(A120126(n+1))`
-/

namespace A357173.P18277370089034679501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309015 (A120126 (n + 1)).toNat

end

end A357173.P18277370089034679501

/-! ## A357173.P13235806294910797496

`A109680(A355579(n+1))`
-/

namespace A357173.P13235806294910797496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A355579 (n + 1)).toNat

end

end A357173.P13235806294910797496

/-! ## A357173.P8183773730299140353

`A309015(A351870(n+1))`
-/

namespace A357173.P8183773730299140353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309015 (A351870 (n + 1)).toNat

end

end A357173.P8183773730299140353

/-!
# A357175: Primes p such that the minimum of the number of divisors among the numbers between p and NextPrime(p) is a cube.

The programs for A357175, there is no canonical definition to state claims against.
-/

/-! ## A357175.P5924197197069561310

`A007967(A070268(n+1))`
-/

namespace A357175.P5924197197069561310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A070268 (n + 1)).toNat

end

end A357175.P5924197197069561310

/-! ## A357175.P4903126922491330175

`A006530(A070268(n+1)²)`
-/

namespace A357175.P4903126922491330175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070268 (n + 1) ^ 2).toNat

end

end A357175.P4903126922491330175

/-!
# A357177: Prime indices of the Heegner numbers (A003173).

The programs for A357177, there is no canonical definition to state claims against.
-/

/-! ## A357177.P1018627971053916644

`ogf((-x+3x^4+2x^5+2x^6+9x^7)/(-1+2x))`
-/

namespace A357177.P1018627971053916644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, -3, -2, -2, -9] [1, -2] n

end

end A357177.P1018627971053916644

/-! ## A357177.P10431917412939662534

`A309465(n)+comp[Δ[lcm(3, n)]]`
-/

namespace A357177.P10431917412939662534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309465 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A357177.P10431917412939662534

/-! ## A357177.P6523958812484318363

`A053267(A312596(n))`
-/

namespace A357177.P6523958812484318363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 (A312596 n).toNat

end

end A357177.P6523958812484318363

/-! ## A357177.P8229569140952196054

`A203554(A273161(n))`
-/

namespace A357177.P8229569140952196054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203554 (A273161 n).toNat

end

end A357177.P8229569140952196054

/-! ## A357177.P1894443718277794382

`record[A222049(A102605(n))]`
-/

namespace A357177.P1894443718277794382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222049 (A102605 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357177.P1894443718277794382

/-!
# A357178: First differences of cubes of triangular numbers.

The programs for A357178, the canonical program `A357178.P2131028927137133422` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357178 has offset 0).

The definition of A357178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357178.P2131028927137133422

`(n^3+3*n^5)/4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A357178

/-- `(n^3+3*n^5)/4` -/
def P2131028927137133422.Spec : Prop :=
  ∀ n, P2131028927137133422.a n = (A357178 n : ℚ)

end A357178

/-! ## A357178.P1304710155335687888

`Δ[C(n, 2)^3]`
-/

namespace A357178.P1304710155335687888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A357178.P1304710155335687888

namespace A357178

/-- `Δ[C(n, 2)^3]` -/
def P1304710155335687888.Spec : Prop :=
  ∀ n, P1304710155335687888.a n = A357178 n

end A357178

/-! ## A357178.P5677668586310962601

`Δ[C(n, 2)²*C(n, 2)]`
-/

namespace A357178.P5677668586310962601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A357178.P5677668586310962601

namespace A357178

/-- `Δ[C(n, 2)²*C(n, 2)]` -/
def P5677668586310962601.Spec : Prop :=
  ∀ n, P5677668586310962601.a n = A357178 n

end A357178

/-! ## A357178.P15315788922521863173

`Δ[A161680(n)^3]`
-/

namespace A357178.P15315788922521863173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357178.P15315788922521863173

namespace A357178

/-- `Δ[A161680(n)^3]` -/
def P15315788922521863173.Spec : Prop :=
  ∀ n, P15315788922521863173.a n = A357178 n

end A357178

/-! ## A357178.P11496307800292623024

`n*(n²²-A006011(n))`
-/

namespace A357178.P11496307800292623024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n ^ 2) ^ 2 : ℤ) - A006011 n)

end

end A357178.P11496307800292623024

namespace A357178

/-- `n*(n²²-A006011(n))` -/
def P11496307800292623024.Spec : Prop :=
  ∀ n, P11496307800292623024.a n = A357178 n

end A357178

/-! ## A357178.P4841592891445958390

`A000584(n)-A321672(n)/2`
-/

namespace A357178.P4841592891445958390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n : ℚ) - (A321672 n : ℚ) / 2

end

end A357178.P4841592891445958390

namespace A357178

/-- `A000584(n)-A321672(n)/2` -/
def P4841592891445958390.Spec : Prop :=
  ∀ n, P4841592891445958390.a n = (A357178 n : ℚ)

end A357178

/-! ## A357178.P7404952819348490134

`n*(A139594(n)+A112742(n))`
-/

namespace A357178.P7404952819348490134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A139594 n + A112742 n)

end

end A357178.P7404952819348490134

namespace A357178

/-- `n*(A139594(n)+A112742(n))` -/
def P7404952819348490134.Spec : Prop :=
  ∀ n, P7404952819348490134.a n = A357178 n

end A357178

/-! ## A357178.P7193882089854995066

`Δ[A000578(C(n, 2))]`
-/

namespace A357178.P7193882089854995066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357178.P7193882089854995066

namespace A357178

/-- `Δ[A000578(C(n, 2))]` -/
def P7193882089854995066.Spec : Prop :=
  ∀ n, P7193882089854995066.a n = A357178 n

end A357178

/-! ## A357178.P471295946980911131

`n*A330707(n²)`
-/

namespace A357178.P471295946980911131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A330707 (n ^ 2)

end

end A357178.P471295946980911131

namespace A357178

/-- `n*A330707(n²)` -/
def P471295946980911131.Spec : Prop :=
  ∀ n, P471295946980911131.a n = A357178 n

end A357178

/-! ## A357178.P2194126218172113817

`n*A387355(n²)`
-/

namespace A357178.P2194126218172113817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A387355 (n ^ 2)

end

end A357178.P2194126218172113817

namespace A357178

/-- `n*A387355(n²)` -/
def P2194126218172113817.Spec : Prop :=
  ∀ n, P2194126218172113817.a n = A357178 n

end A357178

/-! ## A357178.P15165964977196569260

`Δ[A034828(n²-n)]`
-/

namespace A357178.P15165964977196569260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357178.P15165964977196569260

namespace A357178

/-- `Δ[A034828(n²-n)]` -/
def P15165964977196569260.Spec : Prop :=
  ∀ n, P15165964977196569260.a n = A357178 n

end A357178

/-! ## A357178.P15470036427828587338

`Δ[A081276(n²-n)]`
-/

namespace A357178.P15470036427828587338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357178.P15470036427828587338

namespace A357178

/-- `Δ[A081276(n²-n)]` -/
def P15470036427828587338.Spec : Prop :=
  ∀ n, P15470036427828587338.a n = A357178 n

end A357178

/-!
# A357180: First run-length of the n-th composition in standard order.

The programs for A357180, there is no canonical definition to state claims against.
-/

/-! ## A357180.P9360618771592493182

`A065120(A333627(n))`
-/

namespace A357180.P9360618771592493182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A333627 n).toNat

end

end A357180.P9360618771592493182

/-! ## A357180.P10977180891882623857

`gcd(A124760(A048767(n+1)), A357137(n))`
-/

namespace A357180.P10977180891882623857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124760 (A048767 (n + 1)).toNat) (A357137 n)

end

end A357180.P10977180891882623857

/-! ## A357180.P6542993930335918085

`A375378(A333627(n))%A375398(2*n+1)`
-/

namespace A357180.P6542993930335918085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375378 (A333627 n).toNat) (A375398 (2 * n + 1))

end

end A357180.P6542993930335918085

/-! ## A357180.P1014728175895228787

`A333381(n)-A062977(A007088(n+1))`
-/

namespace A357180.P1014728175895228787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n - A062977 (A007088 (n + 1)).toNat

end

end A357180.P1014728175895228787

/-! ## A357180.P15015218761796251243

`A375378(A333627(n))%A375382(n+1)`
-/

namespace A357180.P15015218761796251243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375378 (A333627 n).toNat) (A375382 (n + 1))

end

end A357180.P15015218761796251243

/-!
# A357181: Last run-length of the n-th composition in standard order.

The programs for A357181, there is no canonical definition to state claims against.
-/

/-! ## A357181.P17264508839115134531

`val(A334031(A333627(n)), 2)`
-/

namespace A357181.P17264508839115134531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334031 (A333627 n).toNat).toNat 2

end

end A357181.P17264508839115134531

/-! ## A357181.P5760330677027350126

`∑{d}[A333627(n), A209229(#)]`
-/

namespace A357181.P5760330677027350126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A357181.P5760330677027350126

/-! ## A357181.P16620000878433294752

`A065120(gcd(A131577(n), A333627(n)))`
-/

namespace A357181.P16620000878433294752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (Int.gcd (A131577 n) (A333627 n))

end

end A357181.P16620000878433294752

/-! ## A357181.P13602264346859788480

`lcm(A138904(n)%A329313(2*n+1), A368332(n+1))`
-/

namespace A357181.P13602264346859788480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A138904 n) (A329313 (2 * n + 1))) (A368332 (n + 1))

end

end A357181.P13602264346859788480

/-! ## A357181.P8470157107687681175

`A051903(A333627(2*n+1)-A010051(3*n+1))`
-/

namespace A357181.P8470157107687681175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A333627 (2 * n + 1) - A010051 (3 * n + 1)).toNat

end

end A357181.P8470157107687681175

/-!
# A357182: Number of integer compositions of n with the same length as their alternating sum.

The programs for A357182, there is no canonical definition to state claims against.
-/

/-! ## A357182.P16629197037443632420

`A239366(2*n²)`
-/

namespace A357182.P16629197037443632420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (2 * n ^ 2)

end

end A357182.P16629197037443632420

/-!
# A357184: Numbers k such that the k-th composition in standard order has the same length as its alternating sum.

The programs for A357184, there is no canonical definition to state claims against.
-/

/-! ## A357184.P17187080030874893805

`eq[A000120(n), A124754(n)]`
-/

namespace A357184.P17187080030874893805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357184.P17187080030874893805

/-! ## A357184.P6032555623849160885

`eq[log2(A001316(n)), A124754(n)]`
-/

namespace A357184.P6032555623849160885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A357184.P6032555623849160885

/-! ## A357184.P9728268574135941497

`eq[A001222(A071044(n)), A124754(n)]`
-/

namespace A357184.P9728268574135941497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357184.P9728268574135941497

/-! ## A357184.P16496376543540292819

`eq[A124754(n), A296062(A071044(2*n))]`
-/

namespace A357184.P16496376543540292819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (A071044 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357184.P16496376543540292819

/-! ## A357184.P11181586426211835788

`eq[A001222(A005940(n+1)), A124754(n)]`
-/

namespace A357184.P11181586426211835788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357184.P11181586426211835788

/-!
# A357185: Numbers k such that the k-th composition in standard order has the same length as the absolute value of its alternating sum.

The programs for A357185, there is no canonical definition to state claims against.
-/

/-! ## A357185.P18331565945801599775

`eq[abs(A124754(n)), A000120(n)]`
-/

namespace A357185.P18331565945801599775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124754 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357185.P18331565945801599775

/-! ## A357185.P5163364904308496549

`eq[A001222(A005940(n+1))², A124754(n)²]`
-/

namespace A357185.P5163364904308496549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357185.P5163364904308496549

/-! ## A357185.P12893528237054400901

`eq[abs(A344618(n)), A000120(n)]`
-/

namespace A357185.P12893528237054400901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344618 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357185.P12893528237054400901

/-!
# A357186: Take the k-th composition in standard order for each part k of the n-th composition in standard order, then add up everything.

The programs for A357186, there is no canonical definition to state claims against.
-/

/-! ## A357186.P18326773243698031224

`A029837(A357134(n)+1)`
-/

namespace A357186.P18326773243698031224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A357134 n + 1).toNat

end

end A357186.P18326773243698031224

/-! ## A357186.P11051469862887811953

`A080773(A358506(n+1))`
-/

namespace A357186.P11051469862887811953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080773 (A358506 (n + 1)).toNat

end

end A357186.P11051469862887811953

/-! ## A357186.P1697248104245481216

`∑{e}[A057335(n), A070939(#)]`
-/

namespace A357186.P1697248104245481216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070939 (Nat.factorization (f1 n).natAbs p)

end

end A357186.P1697248104245481216

/-! ## A357186.P10287204686726820115

`∑{e}[A057335(n), A071673(#)]`
-/

namespace A357186.P10287204686726820115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071673 (Nat.factorization (f1 n).natAbs p)

end

end A357186.P10287204686726820115

/-! ## A357186.P15276716968121910552

`∑{e}[A057335(n), A072643(#)]`
-/

namespace A357186.P15276716968121910552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A072643 (Nat.factorization (f1 n).natAbs p)

end

end A357186.P15276716968121910552

/-! ## A357186.P1386723651271529363

`∑{e}[A057335(n), A072660(#)]`
-/

namespace A357186.P1386723651271529363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A072660 (Nat.factorization (f1 n).natAbs p)

end

end A357186.P1386723651271529363

/-! ## A357186.P13697241612922978880

`∑{e}[A334031(n), A070939(#)]`
-/

namespace A357186.P13697241612922978880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070939 (Nat.factorization (f1 n).natAbs p)

end

end A357186.P13697241612922978880

/-! ## A357186.P17116882477061095977

`∑{e}[A334031(n), A072660(#)]`
-/

namespace A357186.P17116882477061095977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A072660 (Nat.factorization (f1 n).natAbs p)

end

end A357186.P17116882477061095977

/-! ## A357186.P18231232297582173001

`∑{e}[A057335(n), A001222(A057335(#))]`
-/

namespace A357186.P18231232297582173001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A057335 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A357186.P18231232297582173001

/-! ## A357186.P17088036986724270744

`A001222(∏{e}[A057335(n), A057335(#)])`
-/

namespace A357186.P17088036986724270744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A057335 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A357186.P17088036986724270744

/-!
# A357187: First differences A357186 = "Take the k-th composition in standard order for each part k of the n-th composition in standard order, then add up everything.".

The programs for A357187, there is no canonical definition to state claims against.
-/

/-! ## A357187.P8062423543157744664

`A357186(n+1)-A357186(n)`
-/

namespace A357187.P8062423543157744664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (n + 1) - A357186 n

end

end A357187.P8062423543157744664

/-! ## A357187.P8932517398285082009

`Δ[A357186(n)]`
-/

namespace A357187.P8932517398285082009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357187.P8932517398285082009

/-! ## A357187.P17550668748875767390

`Δ[A080773(A358506(n+1))]`
-/

namespace A357187.P17550668748875767390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080773 (A358506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357187.P17550668748875767390

/-! ## A357187.P17636617618422790992

`Δ[∑{e}[A057335(n), A070939(#)]]`
-/

namespace A357187.P17636617618422790992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A070939 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357187.P17636617618422790992

/-! ## A357187.P8336548492807011076

`Δ[∑{e}[A334031(n), A070939(#)]]`
-/

namespace A357187.P8336548492807011076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A070939 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357187.P8336548492807011076

/-! ## A357187.P11483936839390408420

`Δ[∑{e}[A334031(n), A072660(#)]]`
-/

namespace A357187.P11483936839390408420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A072660 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357187.P11483936839390408420

/-!
# A357188: Numbers with (WLOG adjacent) prime indices x <= y such that the greatest prime factor of x is greater than the least prime factor of y.

The programs for A357188, there is no canonical definition to state claims against.
-/

/-! ## A357188.P17622960379426514967

`∩[A275199(n+1), A354235(n+1)]`
-/

namespace A357188.P17622960379426514967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357188.P17622960379426514967

/-! ## A357188.P12159356483464791765

`A050931(n+1)*A086386(A060455(n))`
-/

namespace A357188.P12159356483464791765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1) * A086386 (A060455 n).toNat

end

end A357188.P12159356483464791765

/-! ## A357188.P16617870492174454000

`A050931(n+1)*A096763(A249909(n))`
-/

namespace A357188.P16617870492174454000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1) * A096763 (A249909 n).toNat

end

end A357188.P16617870492174454000

/-!
# A357191: a(n) = n! * Sum_{k=0..floor(n/2)} k^n/k!.

The programs for A357191, there is no canonical definition to state claims against.
-/

/-! ## A357191.P11844757044868681137

`A026741(A000142(n)*A100304(n))`
-/

namespace A357191.P11844757044868681137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000142 n * A100304 n).toNat

end

end A357191.P11844757044868681137

/-! ## A357191.P14671285901192803888

`A154657(n)*A192085(A002077(n+1))`
-/

namespace A357191.P14671285901192803888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154657 n * A192085 (A002077 (n + 1)).toNat

end

end A357191.P14671285901192803888

/-!
# A357192: a(n) = n! * Sum_{k=0..floor(n/3)} k^n/k!.

The programs for A357192, there is no canonical definition to state claims against.
-/

/-! ## A357192.P13396116122437883503

`A000142(n)*A001057(A352982(n))`
-/

namespace A357192.P13396116122437883503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001057 (A352982 n).toNat

end

end A357192.P13396116122437883503

/-! ## A357192.P2139647439809483847

`A000142(n)*A367094(A001434(n))`
-/

namespace A357192.P2139647439809483847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A367094 (A001434 n).toNat

end

end A357192.P2139647439809483847

/-! ## A357192.P10166320653415524038

`A357194(n)%A246660(A107464(n))`
-/

namespace A357192.P10166320653415524038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357194 n) (A246660 (A107464 n).toNat)

end

end A357192.P10166320653415524038

/-!
# A357193: a(n) = n! * Sum_{k=0..floor(n/2)} k^(2*n)/k!.

The programs for A357193, there is no canonical definition to state claims against.
-/

/-! ## A357193.P2246549926710353230

`A000142(n)*A001057(A352983(n))`
-/

namespace A357193.P2246549926710353230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001057 (A352983 n).toNat

end

end A357193.P2246549926710353230

/-!
# A357195: a(n) is the smallest palindrome of the form k*(2*n+k-1)/2 where k is a positive integer.

The programs for A357195, there is no canonical definition to state claims against.
-/

/-! ## A357195.P18210353281394595567

`A000217(A109841(n+1))-∑[n]`
-/

namespace A357195.P18210353281394595567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A109841 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A357195.P18210353281394595567

/-! ## A357195.P7515714230766787128

`A000124(A109841(n+1))-A000124(n)`
-/

namespace A357195.P7515714230766787128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A109841 (n + 1)).toNat - A000124 n

end

end A357195.P7515714230766787128

/-!
# A357196: Number of regions in a hexagon when n internal hexagons are drawn between the 6n points that divide each side into n+1 equal parts.

The programs for A357196, there is no canonical definition to state claims against.
-/

/-! ## A357196.P12505156806216433305

`A357198(n)-A357197(n)+1`
-/

namespace A357196.P12505156806216433305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357198 n - A357197 n + 1

end

end A357196.P12505156806216433305

/-! ## A357196.P4230333575531851985

`A357198(n)+A024000(A357197(n))`
-/

namespace A357196.P4230333575531851985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357198 n + A024000 (A357197 n).toNat

end

end A357196.P4230333575531851985

/-!
# A357197: Number of vertices in a hexagon when n internal hexagons are drawn between the 6n points that divide each side into n+1 equal parts.

The programs for A357197, there is no canonical definition to state claims against.
-/

/-! ## A357197.P17063162430873770353

`A357198(n)-A357196(n)+1`
-/

namespace A357197.P17063162430873770353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357198 n - A357196 n + 1

end

end A357197.P17063162430873770353

/-! ## A357197.P1778000035355816516

`A357198(n)+A024000(A357196(n))`
-/

namespace A357197.P1778000035355816516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357198 n + A024000 (A357196 n).toNat

end

end A357197.P1778000035355816516

/-! ## A357197.P6410717222258203066

`A014681(A357198(n)-A357196(n))`
-/

namespace A357197.P6410717222258203066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A357198 n - A357196 n).toNat

end

end A357197.P6410717222258203066

/-! ## A357197.P15903715870513160060

`A373185(A357198(n)-A357196(n))`
-/

namespace A357197.P15903715870513160060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373185 (A357198 n - A357196 n).toNat

end

end A357197.P15903715870513160060

/-! ## A357197.P6927412201979387278

`(A357198(n)-A199969(A357196(n)))%A016970(n)`
-/

namespace A357197.P6927412201979387278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357198 n - A199969 (A357196 n).toNat) (A016970 n)

end

end A357197.P6927412201979387278

/-!
# A357198: Number of edges in a hexagon when n internal hexagons are drawn between the 6n points that divide each side into n+1 equal parts.

The programs for A357198, there is no canonical definition to state claims against.
-/

/-! ## A357198.P9534101494199766607

`A357196(n)+A357197(n)-1`
-/

namespace A357198.P9534101494199766607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357196 n + A357197 n - 1

end

end A357198.P9534101494199766607

/-! ## A357198.P18267884766575524579

`A357196(n)+A014681(A357197(n))`
-/

namespace A357198.P18267884766575524579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357196 n + A014681 (A357197 n).toNat

end

end A357198.P18267884766575524579

/-! ## A357198.P12430179431658825943

`A023443(A357197(n)+A357196(n))`
-/

namespace A357198.P12430179431658825943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A357197 n + A357196 n).toNat

end

end A357198.P12430179431658825943

/-! ## A357198.P13341289555980369485

`A199969(A357197(n)+A357196(n))`
-/

namespace A357198.P13341289555980369485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A357197 n + A357196 n).toNat

end

end A357198.P13341289555980369485

/-! ## A357198.P17606801969076641793

`A014681(A357196(n)-(2-A357197(n)))`
-/

namespace A357198.P17606801969076641793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A357196 n - (2 - A357197 n)).toNat

end

end A357198.P17606801969076641793

/-!
# A357199: Primes p such that (5*p+2)/3 is the square of a prime.

The programs for A357199, there is no canonical definition to state claims against.
-/

/-! ## A357199.P5792638950281338303

`p?[floor(3*p?[round(8*n/7)]²/5)]`
-/

namespace A357199.P5792638950281338303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357199.P5792638950281338303

/-! ## A357199.P16736213508310370136

`p?[A184535(p?[floor(4*n/5)])]`
-/

namespace A357199.P16736213508310370136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n : ℚ) / 5)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357199.P16736213508310370136

/-! ## A357199.P3613137536209043827

`p?[A184535(A000040(n+1))]`
-/

namespace A357199.P3613137536209043827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357199.P3613137536209043827

/-! ## A357199.P7249455944866505628

`p?[A184535(A040990(n+1))]`
-/

namespace A357199.P7249455944866505628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (A040990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357199.P7249455944866505628

/-! ## A357199.P11710555332749624928

`p?[A184535(A006093(n+1)+1)]`
-/

namespace A357199.P11710555332749624928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357199.P11710555332749624928

