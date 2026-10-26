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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076803: Smallest multiple of n which is a reverse concatenation of n nonnegative consecutive numbers, or 0 if no such multiple exists.

The programs for A076803, there is no canonical definition to state claims against.
-/

/-! ## A076803.P7728870332122331820

`(n+1)*A077691(n+1)`
-/

namespace A076803.P7728870332122331820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077691 (n + 1)

end

end A076803.P7728870332122331820

/-!
# A076804: a(n) = least positive integer k satisfying Omega(k) = Omega(k+1)+Omega(k+2)....+Omega(k+n), where Omega = A001222 = number of prime factors, counting multiplicity.

The programs for A076804, there is no canonical definition to state claims against.
-/

/-! ## A076804.P11463433339206414899

`A000010(lcm(A268898(n+1), A312128(n)))`
-/

namespace A076804.P11463433339206414899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A268898 (n + 1)) (A312128 n))

end

end A076804.P11463433339206414899

/-!
# A076805: Triskaidekaphobic or 13-free primes: primes that do not contain the number 13.

The programs for A076805, there is no canonical definition to state claims against.
-/

/-! ## A076805.P16091636063878614240

`A015919(∑[A352620(3*n+1)^A239705(n+5)]+1)`
-/

namespace A076805.P16091636063878614240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352620 (3 * n + 1) : ℚ) ^ (A239705 (n + 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A076805.P16091636063878614240

/-! ## A076805.P5038374080066204928

`p?[n*A178334(A004454(n))]`
-/

namespace A076805.P5038374080066204928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178334 (A004454 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076805.P5038374080066204928

/-! ## A076805.P1192884106182534697

`A000040(lt[1, A113648(2*(n+2))])`
-/

namespace A076805.P1192884106182534697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113648 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076805.P1192884106182534697

/-! ## A076805.P15186376316667203990

`record[A000040(n+1)%A140116(n+3)]`
-/

namespace A076805.P15186376316667203990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A140116 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076805.P15186376316667203990

/-! ## A076805.P853647248928035105

`A000040(A129487(n+1)%A129539(n))`
-/

namespace A076805.P853647248928035105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A129487 (n + 1)) (A129539 n)).toNat

end

end A076805.P853647248928035105

/-!
# A076806: Minimal odd k such that k*2^n-1 and k*2^n+1 are twin primes.

The programs for A076806, there is no canonical definition to state claims against.
-/

/-! ## A076806.P3123258878192322852

`A008486(lcm(A134323(n+1), A182030(n+1)))`
-/

namespace A076806.P3123258878192322852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.lcm (A134323 (n + 1)) (A182030 (n + 1)))

end

end A076806.P3123258878192322852

/-! ## A076806.P146366416887054565

`A008486(A134323(n+1)²*A182030(n+1))`
-/

namespace A076806.P146366416887054565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A134323 (n + 1) ^ 2 * A182030 (n + 1)).toNat

end

end A076806.P146366416887054565

/-! ## A076806.P3850999538150901921

`A008486(A134323(n+1)*A182030(n+1)*A134323(n+1))`
-/

namespace A076806.P3850999538150901921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A134323 (n + 1) * A182030 (n + 1) * A134323 (n + 1)).toNat

end

end A076806.P3850999538150901921

/-! ## A076806.P14856632770553072655

`A008486(A182030(n+1))/A358692(n+1)`
-/

namespace A076806.P14856632770553072655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A182030 (n + 1)).toNat : ℚ) / (A358692 (n + 1) : ℚ)

end

end A076806.P14856632770553072655

/-! ## A076806.P14029533960922696976

`A064353(A181595(n+1)*A182030(n+1))*A182030(n+1)`
-/

namespace A076806.P14029533960922696976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A181595 (n + 1) * A182030 (n + 1)).toNat * A182030 (n + 1)

end

end A076806.P14029533960922696976

/-!
# A076807: 

The programs for A076807, there is no canonical definition to state claims against.
-/

/-! ## A076807.P9785424041369384755

`12^n²`
-/

namespace A076807.P9785424041369384755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n ^ 2

end

end A076807.P9785424041369384755

/-!
# A076808: a(n) = 82n^3 - 1228n^2 + 6130n - 5861.

The programs for A076808, there is no canonical definition to state claims against.
-/

/-! ## A076808.P3630493704323114592

`A033999(A016116(n))*A272324(n+1)`
-/

namespace A076808.P3630493704323114592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A016116 n).toNat * A272324 (n + 1)

end

end A076808.P3630493704323114592

/-! ## A076808.P3353791338511230513

`A158388(A135503(n))*A272324(n+1)`
-/

namespace A076808.P3353791338511230513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A135503 n).toNat * A272324 (n + 1)

end

end A076808.P3353791338511230513

/-! ## A076808.P2045860886876649073

`A272324(n+1)/A158388(A087897(3*n+1))`
-/

namespace A076808.P2045860886876649073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272324 (n + 1) : ℚ) / (A158388 (A087897 (3 * n + 1)).toNat : ℚ)

end

end A076808.P2045860886876649073

/-! ## A076808.P7732984614558447445

`A272324(n+1)/A087960(∏[gcd(2, n)]-1)`
-/

namespace A076808.P7732984614558447445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272324 (n + 1) : ℚ) / (A087960 (∏ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ)

end

end A076808.P7732984614558447445

/-! ## A076808.P7858512818124824708

`A158388(A209313(n+1))*A272324(n+1)`
-/

namespace A076808.P7858512818124824708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A209313 (n + 1)).toNat * A272324 (n + 1)

end

end A076808.P7858512818124824708

/-!
# A076809: a(n) = n^4 + 853n^3 + 2636n^2 + 3536n + 1753.

The programs for A076809, there is no canonical definition to state claims against.
-/

/-! ## A076809.P12820784076647098750

`A272326(n+1)%A032749(n+1)`
-/

namespace A076809.P12820784076647098750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272326 (n + 1)) (A032749 (n + 1))

end

end A076809.P12820784076647098750

/-! ## A076809.P14375808632253636096

`A272326(n+1)^C(A272325(n+1), n)`
-/

namespace A076809.P14375808632253636096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272326 (n + 1) ^ Nat.choose (A272325 (n + 1)).toNat n

end

end A076809.P14375808632253636096

/-! ## A076809.P17887258551645007384

`A272326(n+1)+A000007(A048454(n))`
-/

namespace A076809.P17887258551645007384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272326 (n + 1) + A000007 (A048454 n).toNat

end

end A076809.P17887258551645007384

/-! ## A076809.P1543727123377491035

`A272326(n+1)+A000007(A322439(n))`
-/

namespace A076809.P1543727123377491035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272326 (n + 1) + A000007 (A322439 n).toNat

end

end A076809.P1543727123377491035

/-!
# A076811: 

The programs for A076811, there is no canonical definition to state claims against.
-/

/-! ## A076811.P7168202001973898192

`13^n²`
-/

namespace A076811.P7168202001973898192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n ^ 2

end

end A076811.P7168202001973898192

/-!
# A076812: a(n) = the smallest prime p such that p-prime(n)*4 is prime.

The programs for A076812, there is no canonical definition to state claims against.
-/

/-! ## A076812.P2849146151931922829

`A020484(A100484(n+1))`
-/

namespace A076812.P2849146151931922829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A100484 (n + 1)).toNat

end

end A076812.P2849146151931922829

/-! ## A076812.P5966065877892604838

`A020484(A001747(n+2))`
-/

namespace A076812.P5966065877892604838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A001747 (n + 2)).toNat

end

end A076812.P5966065877892604838

/-! ## A076812.P2581423657857645033

`A020484(Δ[2*A007504(n)])`
-/

namespace A076812.P2581423657857645033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (n + 1) - f1 n).toNat

end

end A076812.P2581423657857645033

/-! ## A076812.P12315694351857470613

`A020484(record[2*A051698(n)])`
-/

namespace A076812.P12315694351857470613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076812.P12315694351857470613

/-! ## A076812.P6380654470816923943

`A020484(2*A000040(n+1))`
-/

namespace A076812.P6380654470816923943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (2 * A000040 (n + 1)).toNat

end

end A076812.P6380654470816923943

/-! ## A076812.P9374302866859581723

`A020484(A000040(n+1)+A000040(n+1))`
-/

namespace A076812.P9374302866859581723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A076812.P9374302866859581723

/-! ## A076812.P1321284205975348556

`A020484(A073704(n+1)-A073703(n+1))`
-/

namespace A076812.P1321284205975348556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A073704 (n + 1) - A073703 (n + 1)).toNat

end

end A076812.P1321284205975348556

/-! ## A076812.P11856054369558193015

`A204894(A001749(n+1))`
-/

namespace A076812.P11856054369558193015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A001749 (n + 1)).toNat

end

end A076812.P11856054369558193015

/-! ## A076812.P11690512563911704747

`A270753(A001749(n+1)+2)`
-/

namespace A076812.P11690512563911704747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A001749 (n + 1) + 2).toNat

end

end A076812.P11690512563911704747

/-! ## A076812.P15911949381950260118

`A020484(A339114(n+2))`
-/

namespace A076812.P15911949381950260118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A339114 (n + 2)).toNat

end

end A076812.P15911949381950260118

/-!
# A076814: Integer averages of five successive primes squared, (prime(n)^2+prime(n+1)^2+prime(n+2)^2+prime(n+3)^2+prime(n+4)^2)/5, for some n.

The programs for A076814, there is no canonical definition to state claims against.
-/

/-! ## A076814.P7084579703552303157

`A131686(A076815(n+1))/5`
-/

namespace A076814.P7084579703552303157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (A076815 (n + 1)).toNat : ℚ) / 5

end

end A076814.P7084579703552303157

/-!
# A076816: Squares modulo triangular numbers: n^2 minus the greatest triangular number smaller than or equal to n^2.

The programs for A076816, the canonical program `A076816.P12064210013836610838` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076816 has offset 0).

The definition of A076816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076816.P12064210013836610838

`n²-C(A214857(n), 2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076816

/-- `n²-C(A214857(n), 2)` -/
def P12064210013836610838.Spec : Prop :=
  ∀ n, P12064210013836610838.a n = A076816 n

theorem P12064210013836610838.correct : P12064210013836610838.Spec := by
  intro n
  simp only [A076816]

end A076816

/-! ## A076816.P7034687206575461337

`n²-A000217(A214857(n)-1)`
-/

namespace A076816.P7034687206575461337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000217 (A214857 n - 1).toNat

end

end A076816.P7034687206575461337

namespace A076816

/-- `n²-A000217(A214857(n)-1)` -/
def P7034687206575461337.Spec : Prop :=
  ∀ n, P7034687206575461337.a n = A076816 n

end A076816

/-! ## A076816.P12856923136235235921

`A175032(A214857(n)-1)`
-/

namespace A076816.P12856923136235235921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (A214857 n - 1).toNat

end

end A076816.P12856923136235235921

namespace A076816

/-- `A175032(A214857(n)-1)` -/
def P12856923136235235921.Spec : Prop :=
  ∀ n, P12856923136235235921.a n = A076816 n

end A076816

/-! ## A076816.P2128568154801496109

`A175032(lt[A175032(n), n+1])`
-/

namespace A076816.P2128568154801496109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076816.P2128568154801496109

namespace A076816

/-- `A175032(lt[A175032(n), n+1])` -/
def P2128568154801496109.Spec : Prop :=
  ∀ n, P2128568154801496109.a n = A076816 n

end A076816

/-! ## A076816.P7299302737367518589

`A000290(n)-A161680(A214857(n))`
-/

namespace A076816.P7299302737367518589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A161680 (A214857 n).toNat

end

end A076816.P7299302737367518589

namespace A076816

/-- `A000290(n)-A161680(A214857(n))` -/
def P7299302737367518589.Spec : Prop :=
  ∀ n, P7299302737367518589.a n = A076816 n

theorem P7299302737367518589.correct : P7299302737367518589.Spec := by
  intro n
  simp only [A076816, Nat.add_sub_cancel, A076816.P7299302737367518589.a, A076816.P12064210013836610838.a, A000290, A000290.P12206242496348924484.a, A161680, A161680.P17206074215489759881.a, A214857, A214857.P13673621577136797249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A076816

/-! ## A076816.P9803196353788916308

`A059252(A163357(n²))`
-/

namespace A076816.P9803196353788916308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163357 (n ^ 2)).toNat

end

end A076816.P9803196353788916308

namespace A076816

/-- `A059252(A163357(n²))` -/
def P9803196353788916308.Spec : Prop :=
  ∀ n, P9803196353788916308.a n = A076816 n

end A076816

/-! ## A076816.P6626759473479838543

`A059253(A163359(n²))`
-/

namespace A076816.P6626759473479838543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163359 (n ^ 2)).toNat

end

end A076816.P6626759473479838543

namespace A076816

/-- `A059253(A163359(n²))` -/
def P6626759473479838543.Spec : Prop :=
  ∀ n, P6626759473479838543.a n = A076816 n

end A076816

/-! ## A076816.P14574035563953201373

`A163529(A163334(n²))`
-/

namespace A076816.P14574035563953201373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163334 (n ^ 2)).toNat

end

end A076816.P14574035563953201373

namespace A076816

/-- `A163529(A163334(n²))` -/
def P14574035563953201373.Spec : Prop :=
  ∀ n, P14574035563953201373.a n = A076816 n

end A076816

/-! ## A076816.P3581275581565057977

`log2(A059268(n²))`
-/

namespace A076816.P3581275581565057977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (n ^ 2) : ℝ)

end

end A076816.P3581275581565057977

namespace A076816

/-- `log2(A059268(n²))` -/
def P3581275581565057977.Spec : Prop :=
  ∀ n, P3581275581565057977.a n = (A076816 n : ℝ)

end A076816

/-! ## A076816.P8798583600792619622

`A002260(n²+1)-1`
-/

namespace A076816.P8798583600792619622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n ^ 2 + 1) - 1

end

end A076816.P8798583600792619622

namespace A076816

/-- `A002260(n²+1)-1` -/
def P8798583600792619622.Spec : Prop :=
  ∀ n, P8798583600792619622.a n = A076816 n

end A076816

/-! ## A076816.P6033868903759770318

`abs(A002260(∑[2*n]-n+1)-1)`
-/

namespace A076816.P6033868903759770318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 1).toNat - 1|

end

end A076816.P6033868903759770318

namespace A076816

/-- `abs(A002260(∑[2*n]-n+1)-1)` -/
def P6033868903759770318.Spec : Prop :=
  ∀ n, P6033868903759770318.a n = A076816 n

end A076816

/-! ## A076816.P17514348911777070428

`abs(1-A002260(n*(n-char[1])+1))`
-/

namespace A076816.P17514348911777070428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A002260 ((n : ℤ) * ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1).toNat|

end

end A076816.P17514348911777070428

namespace A076816

/-- `abs(1-A002260(n*(n-char[1])+1))` -/
def P17514348911777070428.Spec : Prop :=
  ∀ n, P17514348911777070428.a n = A076816 n

end A076816

/-! ## A076816.P11001683301688847359

`A023443(A002260(n²+1))`
-/

namespace A076816.P11001683301688847359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002260 (n ^ 2 + 1)).toNat

end

end A076816.P11001683301688847359

namespace A076816

/-- `A023443(A002260(n²+1))` -/
def P11001683301688847359.Spec : Prop :=
  ∀ n, P11001683301688847359.a n = A076816 n

end A076816

/-! ## A076816.P6298286113787067270

`A057554(A058331(n))`
-/

namespace A076816.P6298286113787067270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A058331 n).toNat

end

end A076816.P6298286113787067270

namespace A076816

/-- `A057554(A058331(n))` -/
def P6298286113787067270.Spec : Prop :=
  ∀ n, P6298286113787067270.a n = A076816 n

end A076816

/-! ## A076816.P14202333765950622902

`A048151(A028310(n²))`
-/

namespace A076816.P14202333765950622902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (A028310 (n ^ 2)).toNat

end

end A076816.P14202333765950622902

namespace A076816

/-- `A048151(A028310(n²))` -/
def P14202333765950622902.Spec : Prop :=
  ∀ n, P14202333765950622902.a n = A076816 n

end A076816

/-! ## A076816.P7041224347629999565

`n²-A000217(A003056(n²))`
-/

namespace A076816.P7041224347629999565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000217 (A003056 (n ^ 2)).toNat

end

end A076816.P7041224347629999565

namespace A076816

/-- `n²-A000217(A003056(n²))` -/
def P7041224347629999565.Spec : Prop :=
  ∀ n, P7041224347629999565.a n = A076816 n

end A076816

/-! ## A076816.P18061994747334575982

`A002262(n²)`
-/

namespace A076816.P18061994747334575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n ^ 2)

end

end A076816.P18061994747334575982

namespace A076816

/-- `A002262(n²)` -/
def P18061994747334575982.Spec : Prop :=
  ∀ n, P18061994747334575982.a n = A076816 n

end A076816

/-! ## A076816.P16031552100936166436

`sqrt(A143844(n²))`
-/

namespace A076816.P16031552100936166436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 (n ^ 2) : ℝ)

end

end A076816.P16031552100936166436

namespace A076816

/-- `sqrt(A143844(n²))` -/
def P16031552100936166436.Spec : Prop :=
  ∀ n, P16031552100936166436.a n = (A076816 n : ℝ)

end A076816

/-! ## A076816.P6345511023389081954

`val(A130328(n²), 2)`
-/

namespace A076816.P6345511023389081954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 (n ^ 2)).toNat 2

end

end A076816.P6345511023389081954

namespace A076816

/-- `val(A130328(n²), 2)` -/
def P6345511023389081954.Spec : Prop :=
  ∀ n, (P6345511023389081954.a n : ℤ) = A076816 n

end A076816

/-!
# A076818: Lexicographically earliest sequence of pairwise coprime tetrahedral numbers.

The programs for A076818, there is no canonical definition to state claims against.
-/

/-! ## A076818.P1977210804334931875

`C(A213623(n²)+3, 3)`
-/

namespace A076818.P1977210804334931875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213623 (n ^ 2) + 3).toNat 3

end

end A076818.P1977210804334931875

/-!
# A076820: Second-largest distinct prime dividing n (or 1 if n is a power of a prime).

The programs for A076820, the canonical program `A076820.P8986618252350859910` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076820 has offset 1).

The definition of A076820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076820.P13212730869989082399

`A087039(∏{p}[n+1, #])`
-/

namespace A076820.P13212730869989082399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076820.P13212730869989082399

namespace A076820

/-- `A087039(∏{p}[n+1, #])` -/
def P13212730869989082399.Spec : Prop :=
  ∀ n, P13212730869989082399.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P10149557132697241203

`A006530(A051119(n+1))`
-/

namespace A076820.P10149557132697241203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051119 (n + 1)).toNat

end

end A076820.P10149557132697241203

namespace A076820

/-- `A006530(A051119(n+1))` -/
def P10149557132697241203.Spec : Prop :=
  ∀ n, P10149557132697241203.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P4766250762249060460

`A087039(A007947(n+1))`
-/

namespace A076820.P4766250762249060460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A007947 (n + 1)).toNat

end

end A076820.P4766250762249060460

namespace A076820

/-- `A087039(A007947(n+1))` -/
def P4766250762249060460.Spec : Prop :=
  ∀ n, P4766250762249060460.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P16903528052512673647

`A002034(A293810(n+1))`
-/

namespace A076820.P16903528052512673647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A293810 (n + 1)).toNat

end

end A076820.P16903528052512673647

namespace A076820

/-- `A002034(A293810(n+1))` -/
def P16903528052512673647.Spec : Prop :=
  ∀ n, P16903528052512673647.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P5202607322487525778

`A087039(A243074(n+1))`
-/

namespace A076820.P5202607322487525778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A243074 (n + 1)).toNat

end

end A076820.P5202607322487525778

namespace A076820

/-- `A087039(A243074(n+1))` -/
def P5202607322487525778.Spec : Prop :=
  ∀ n, P5202607322487525778.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P452085427837751293

`A087039(A334085(n+1))`
-/

namespace A076820.P452085427837751293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A334085 (n + 1)).toNat

end

end A076820.P452085427837751293

namespace A076820

/-- `A087039(A334085(n+1))` -/
def P452085427837751293.Spec : Prop :=
  ∀ n, P452085427837751293.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P2481304342803446191

`A085392(2*A293810(n+1))`
-/

namespace A076820.P2481304342803446191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A293810 (n + 1)).toNat

end

end A076820.P2481304342803446191

namespace A076820

/-- `A085392(2*A293810(n+1))` -/
def P2481304342803446191.Spec : Prop :=
  ∀ n, P2481304342803446191.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P14598311924234639141

`A006530(A052126(∏{p}[n+1, #]))`
-/

namespace A076820.P14598311924234639141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052126 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A076820.P14598311924234639141

namespace A076820

/-- `A006530(A052126(∏{p}[n+1, #]))` -/
def P14598311924234639141.Spec : Prop :=
  ∀ n, P14598311924234639141.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P12495255985924367132

`A053585(A051119(∏{p}[n+1, #]))`
-/

namespace A076820.P12495255985924367132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A051119 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A076820.P12495255985924367132

namespace A076820

/-- `A053585(A051119(∏{p}[n+1, #]))` -/
def P12495255985924367132.Spec : Prop :=
  ∀ n, P12495255985924367132.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P1742715899483158462

`A346088(∏{p}[A051119(n+1), #])`
-/

namespace A076820.P1742715899483158462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076820.P1742715899483158462

namespace A076820

/-- `A346088(∏{p}[A051119(n+1), #])` -/
def P1742715899483158462.Spec : Prop :=
  ∀ n, P1742715899483158462.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P3172428972838543844

`A006530((n+1)/A053585(n+1))`
-/

namespace A076820.P3172428972838543844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053585 (n + 1) : ℚ))).toNat

end

end A076820.P3172428972838543844

namespace A076820

/-- `A006530((n+1)/A053585(n+1))` -/
def P3172428972838543844.Spec : Prop :=
  ∀ n, P3172428972838543844.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P9653003400414470825

`A006530((n+1)/A217434(n+1))`
-/

namespace A076820.P9653003400414470825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A217434 (n + 1) : ℚ))).toNat

end

end A076820.P9653003400414470825

namespace A076820

/-- `A006530((n+1)/A217434(n+1))` -/
def P9653003400414470825.Spec : Prop :=
  ∀ n, P9653003400414470825.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P14711649309295289368

`A053585((n+1)/A217434(n+1))`
-/

namespace A076820.P14711649309295289368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A217434 (n + 1) : ℚ))).toNat

end

end A076820.P14711649309295289368

namespace A076820

/-- `A053585((n+1)/A217434(n+1))` -/
def P14711649309295289368.Spec : Prop :=
  ∀ n, P14711649309295289368.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P7513514170965206054

`A217434((n+1)/A217434(n+1))`
-/

namespace A076820.P7513514170965206054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A217434 (n + 1) : ℚ))).toNat

end

end A076820.P7513514170965206054

namespace A076820

/-- `A217434((n+1)/A217434(n+1))` -/
def P7513514170965206054.Spec : Prop :=
  ∀ n, P7513514170965206054.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P8986618252350859910

`A006530(∏{p}[n+1, #]/A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076820

/-- `A006530(∏{p}[n+1, #]/A006530(n+1))` -/
def P8986618252350859910.Spec : Prop :=
  ∀ n, P8986618252350859910.a n = A076820 (n + 1)

theorem P8986618252350859910.correct : P8986618252350859910.Spec := by
  intro n
  simp only [A076820, Nat.add_sub_cancel]

end A076820

/-! ## A076820.P384976787319252071

`A006530(gcd(n+1, ∏{d}[n+1, A020639(#)]/(n+1)))`
-/

namespace A076820.P384976787319252071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), A020639 d : ℤ) : ℚ) / (n + 1 : ℚ))))

end

end A076820.P384976787319252071

namespace A076820

/-- `A006530(gcd(n+1, ∏{d}[n+1, A020639(#)]/(n+1)))` -/
def P384976787319252071.Spec : Prop :=
  ∀ n, P384976787319252071.a n = A076820 (n + 1)

end A076820

/-! ## A076820.P8404385544747257782

`A006530(A007947(n+1)/A006530(n+1))`
-/

namespace A076820.P8404385544747257782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A076820.P8404385544747257782

namespace A076820

/-- `A006530(A007947(n+1)/A006530(n+1))` -/
def P8404385544747257782.Spec : Prop :=
  ∀ n, P8404385544747257782.a n = A076820 (n + 1)

theorem P8404385544747257782.correct : P8404385544747257782.Spec := by
  intro n
  simp only [A076820, Nat.add_sub_cancel, A076820.P8404385544747257782.a, A076820.P8986618252350859910.f1, A076820.P8986618252350859910.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076820

/-!
# A076821: Squares of the differences between consecutive primes.

The programs for A076821, the canonical program `A076821.P15340504469380767190` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076821 has offset 1).

The definition of A076821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076821.P15340504469380767190

`(A000040(n+2)-A000040(n+1))²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076821

/-- `(A000040(n+2)-A000040(n+1))²` -/
def P15340504469380767190.Spec : Prop :=
  ∀ n, P15340504469380767190.a n = A076821 (n + 1)

theorem P15340504469380767190.correct : P15340504469380767190.Spec := by
  intro n
  simp only [A076821, Nat.add_sub_cancel]

end A076821

/-! ## A076821.P5010677421170368169

`A001223(n+1)²`
-/

namespace A076821.P5010677421170368169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) ^ 2

end

end A076821.P5010677421170368169

namespace A076821

/-- `A001223(n+1)²` -/
def P5010677421170368169.Spec : Prop :=
  ∀ n, P5010677421170368169.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P11777476264299289365

`log2(A218075(n+1))²`
-/

namespace A076821.P11777476264299289365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ) ^ 2

end

end A076821.P11777476264299289365

namespace A076821

/-- `log2(A218075(n+1))²` -/
def P11777476264299289365.Spec : Prop :=
  ∀ n, P11777476264299289365.a n = (A076821 (n + 1) : ℝ)

end A076821

/-! ## A076821.P17103738231689085772

`Δ[A330547(n+1)]²`
-/

namespace A076821.P17103738231689085772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A076821.P17103738231689085772

namespace A076821

/-- `Δ[A330547(n+1)]²` -/
def P17103738231689085772.Spec : Prop :=
  ∀ n, P17103738231689085772.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P17180744197295729660

`A081345(A046933(n+1))`
-/

namespace A076821.P17180744197295729660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (A046933 (n + 1)).toNat

end

end A076821.P17180744197295729660

namespace A076821

/-- `A081345(A046933(n+1))` -/
def P17180744197295729660.Spec : Prop :=
  ∀ n, P17180744197295729660.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P10089112652830558131

`A079097(A100803(n+1))`
-/

namespace A076821.P10089112652830558131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A100803 (n + 1)).toNat

end

end A076821.P10089112652830558131

namespace A076821

/-- `A079097(A100803(n+1))` -/
def P10089112652830558131.Spec : Prop :=
  ∀ n, P10089112652830558131.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P47078304970805514

`A289506(A082910(n+1))`
-/

namespace A076821.P47078304970805514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A082910 (n + 1)).toNat

end

end A076821.P47078304970805514

namespace A076821

/-- `A289506(A082910(n+1))` -/
def P47078304970805514.Spec : Prop :=
  ∀ n, P47078304970805514.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P1903958781408990035

`A000290(A123128(n+1)-(n+1))`
-/

namespace A076821.P1903958781408990035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A123128 (n + 1) - (n + 1 : ℤ)).toNat

end

end A076821.P1903958781408990035

namespace A076821

/-- `A000290(A123128(n+1)-(n+1))` -/
def P1903958781408990035.Spec : Prop :=
  ∀ n, P1903958781408990035.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P14408966725671208563

`A069484(n+1)-A069486(n+1)`
-/

namespace A076821.P14408966725671208563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A069486 (n + 1)

end

end A076821.P14408966725671208563

namespace A076821

/-- `A069484(n+1)-A069486(n+1)` -/
def P14408966725671208563.Spec : Prop :=
  ∀ n, P14408966725671208563.a n = A076821 (n + 1)

theorem P14408966725671208563.correct : P14408966725671208563.Spec := by
  intro n
  simp only [A076821, Nat.add_sub_cancel, A076821.P14408966725671208563.a, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, A069486, A069486.P4196932283638993766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076821

/-! ## A076821.P14346699360241811436

`A048852(n+1)-A291463(n+1)`
-/

namespace A076821.P14346699360241811436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1) - A291463 (n + 1)

end

end A076821.P14346699360241811436

namespace A076821

/-- `A048852(n+1)-A291463(n+1)` -/
def P14346699360241811436.Spec : Prop :=
  ∀ n, P14346699360241811436.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P8025296620039718425

`A069262(n+1)%A001043(n+1)`
-/

namespace A076821.P8025296620039718425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069262 (n + 1)) (A001043 (n + 1))

end

end A076821.P8025296620039718425

namespace A076821

/-- `A069262(n+1)%A001043(n+1)` -/
def P8025296620039718425.Spec : Prop :=
  ∀ n, P8025296620039718425.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P14299310398093872701

`A069484(n+1)%A006094(n+1)`
-/

namespace A076821.P14299310398093872701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069484 (n + 1)) (A006094 (n + 1))

end

end A076821.P14299310398093872701

namespace A076821

/-- `A069484(n+1)%A006094(n+1)` -/
def P14299310398093872701.Spec : Prop :=
  ∀ n, P14299310398093872701.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P4288911233395307588

`A069482(n+1)%A062876(n+1)`
-/

namespace A076821.P4288911233395307588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069482 (n + 1)) (A062876 (n + 1))

end

end A076821.P4288911233395307588

namespace A076821

/-- `A069482(n+1)%A062876(n+1)` -/
def P4288911233395307588.Spec : Prop :=
  ∀ n, P4288911233395307588.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P3912617800802851006

`A075526(n+1)²`
-/

namespace A076821.P3912617800802851006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) ^ 2

end

end A076821.P3912617800802851006

namespace A076821

/-- `A075526(n+1)²` -/
def P3912617800802851006.Spec : Prop :=
  ∀ n, P3912617800802851006.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P5039437582741489500

`A054541(n+2)²`
-/

namespace A076821.P5039437582741489500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) ^ 2

end

end A076821.P5039437582741489500

namespace A076821

/-- `A054541(n+2)²` -/
def P5039437582741489500.Spec : Prop :=
  ∀ n, P5039437582741489500.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P8595438854552505297

`A125266(n+2)²`
-/

namespace A076821.P8595438854552505297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2) ^ 2

end

end A076821.P8595438854552505297

namespace A076821

/-- `A125266(n+2)²` -/
def P8595438854552505297.Spec : Prop :=
  ∀ n, P8595438854552505297.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P5593977173764110606

`Δ[Δ[A007504(n)]]²`
-/

namespace A076821.P5593977173764110606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A076821.P5593977173764110606

namespace A076821

/-- `Δ[Δ[A007504(n)]]²` -/
def P5593977173764110606.Spec : Prop :=
  ∀ n, P5593977173764110606.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P7256933267726044272

`Δ[p?[A259153(n)]]²`
-/

namespace A076821.P7256933267726044272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A076821.P7256933267726044272

namespace A076821

/-- `Δ[p?[A259153(n)]]²` -/
def P7256933267726044272.Spec : Prop :=
  ∀ n, P7256933267726044272.a n = A076821 (n + 1)

end A076821

/-! ## A076821.P11449646313680598650

`Δ[A000040(n+1)]²`
-/

namespace A076821.P11449646313680598650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A076821.P11449646313680598650

namespace A076821

/-- `Δ[A000040(n+1)]²` -/
def P11449646313680598650.Spec : Prop :=
  ∀ n, P11449646313680598650.a n = A076821 (n + 1)

theorem P11449646313680598650.correct : P11449646313680598650.Spec := by
  intro n
  simp only [A076821, Nat.add_sub_cancel, A076821.P11449646313680598650.f1, A076821.P11449646313680598650.a, A076821.P15340504469380767190.a, SequenceMachineLib.memo_apply]

end A076821

/-! ## A076821.P1287437411339973695

`Δ[A006093(n+1)]²`
-/

namespace A076821.P1287437411339973695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A076821.P1287437411339973695

namespace A076821

/-- `Δ[A006093(n+1)]²` -/
def P1287437411339973695.Spec : Prop :=
  ∀ n, P1287437411339973695.a n = A076821 (n + 1)

theorem P1287437411339973695.correct : P1287437411339973695.Spec := by
  intro n
  simp only [A076821, Nat.add_sub_cancel, A076821.P1287437411339973695.f1, A076821.P1287437411339973695.a, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076821

/-!
# A076822: Number of partitions of the n-th triangular number involving only the numbers 1..n and with exactly n terms.

The programs for A076822, there is no canonical definition to state claims against.
-/

/-! ## A076822.P4524105464270206192

`A277218(comp[2*(n+1)])`
-/

namespace A076822.P4524105464270206192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277218 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076822.P4524105464270206192

/-! ## A076822.P15686835822106189534

`A275213(A004273(n))`
-/

namespace A076822.P15686835822106189534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004273 n).toNat

end

end A076822.P15686835822106189534

/-! ## A076822.P6523517675056155227

`A275213(A163985(n))`
-/

namespace A076822.P6523517675056155227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A163985 n).toNat

end

end A076822.P6523517675056155227

/-! ## A076822.P4388154757307682991

`A275213(A004274(n+1))`
-/

namespace A076822.P4388154757307682991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004274 (n + 1)).toNat

end

end A076822.P4388154757307682991

/-! ## A076822.P16079425370124624440

`A275213(A004280(n+1))`
-/

namespace A076822.P16079425370124624440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004280 (n + 1)).toNat

end

end A076822.P16079425370124624440

/-! ## A076822.P15151652064504624094

`A275213(A004281(n+1))`
-/

namespace A076822.P15151652064504624094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004281 (n + 1)).toNat

end

end A076822.P15151652064504624094

/-! ## A076822.P3881080776234054174

`A275213(A004277(n)-1)`
-/

namespace A076822.P3881080776234054174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004277 n - 1).toNat

end

end A076822.P3881080776234054174

/-!
# A076823: Array of coefficients of 1/det(M_n)*P(M_n) where P(M_n) is the characteristic polynomial of the n-th n X n Hilbert matrix M_n(i,j)=1/(i+j-1).

The programs for A076823, there is no canonical definition to state claims against.
-/

/-! ## A076823.P1715592162136974352

`A135451(A061579(n+1))`
-/

namespace A076823.P1715592162136974352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 (A061579 (n + 1)).toNat

end

end A076823.P1715592162136974352

/-! ## A076823.P5717385560321956407

`A135451(A038722(n+2)-1)`
-/

namespace A076823.P5717385560321956407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 (A038722 (n + 2) - 1).toNat

end

end A076823.P5717385560321956407

/-! ## A076823.P993023499560307827

`A135451(A114327(n+1)+1+n)`
-/

namespace A076823.P993023499560307827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 (A114327 (n + 1) + 1 + (n : ℤ)).toNat

end

end A076823.P993023499560307827

/-! ## A076823.P10537725534403718462

`A135451(A057944(n+1)+A025581(n+1))`
-/

namespace A076823.P10537725534403718462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 (A057944 (n + 1) + A025581 (n + 1)).toNat

end

end A076823.P10537725534403718462

/-! ## A076823.P8045077878269935049

`A135451(A057428(n+1)+A038722(n+2))`
-/

namespace A076823.P8045077878269935049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 (A057428 (n + 1) + A038722 (n + 2)).toNat

end

end A076823.P8045077878269935049

/-!
# A076824: Let a(1)=a(2)=1, a(n)=(2^ceiling(a(n-1)/2)+1)/a(n-2).

The programs for A076824, the canonical program `A076824.P16863952290679626243` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076824 has offset 1).

The definition of A076824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076824.P16863952290679626243

`(2^ceil(a(n-1)/2)+1)/a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076824

/-- `(2^ceil(a(n-1)/2)+1)/a(n-2)` -/
def P16863952290679626243.Spec : Prop :=
  ∀ n, P16863952290679626243.a n = (A076824 (n + 1) : ℚ)

end A076824

/-!
# A076826: a(n) = 2*(Sum_{k=0..n} A010060(k)) - n, where A010060 is a Thue-Morse sequence.

The programs for A076826, the canonical program `A076826.P11423364779277600938` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076826 has offset 0).

The definition of A076826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076826.P11423364779277600938

`2*A115384(n)-n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076826

/-- `2*A115384(n)-n` -/
def P11423364779277600938.Spec : Prop :=
  ∀ n, P11423364779277600938.a n = A076826 n

theorem P11423364779277600938.correct : P11423364779277600938.Spec := by
  intro n
  simp only [A076826]

end A076826

/-! ## A076826.P3275556725730724487

`2-a(and(n, n-2))` with `a(0)=0, a(1)=1`
-/

namespace A076826.P3275556725730724487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A076826.P3275556725730724487

namespace A076826

/-- `2-a(and(n, n-2))` -/
def P3275556725730724487.Spec : Prop :=
  ∀ n, P3275556725730724487.a n = A076826 n

end A076826

/-! ## A076826.P4695714740199689825

`2*∑[char[comp[xor(n, 2*n)]]]-n`
-/

namespace A076826.P4695714740199689825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A076826.P4695714740199689825

namespace A076826

/-- `2*∑[char[comp[xor(n, 2*n)]]]-n` -/
def P4695714740199689825.Spec : Prop :=
  ∀ n, P4695714740199689825.a n = A076826 n

end A076826

/-! ## A076826.P4354878104877898502

`(∑[char[xor(n, 2*n)]+1]+1)%3`
-/

namespace A076826.P4354878104877898502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3

end

end A076826.P4354878104877898502

namespace A076826

/-- `(∑[char[xor(n, 2*n)]+1]+1)%3` -/
def P4354878104877898502.Spec : Prop :=
  ∀ n, (P4354878104877898502.a n : ℤ) = A076826 n

end A076826

/-! ## A076826.P12936509485181840908

`A193494(n)%3`
-/

namespace A076826.P12936509485181840908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193494 n) 3

end

end A076826.P12936509485181840908

namespace A076826

/-- `A193494(n)%3` -/
def P12936509485181840908.Spec : Prop :=
  ∀ n, P12936509485181840908.a n = A076826 n

end A076826

/-! ## A076826.P1471312411136899765

`A151572(n)%4`
-/

namespace A076826.P1471312411136899765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151572 n) 4

end

end A076826.P1471312411136899765

namespace A076826

/-- `A151572(n)%4` -/
def P1471312411136899765.Spec : Prop :=
  ∀ n, P1471312411136899765.a n = A076826 n

end A076826

/-! ## A076826.P12917315508756918085

`1-∑[A106400(n)]`
-/

namespace A076826.P12917315508756918085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076826.P12917315508756918085

namespace A076826

/-- `1-∑[A106400(n)]` -/
def P12917315508756918085.Spec : Prop :=
  ∀ n, P12917315508756918085.a n = A076826 n

end A076826

/-! ## A076826.P238285691911196163

`a(A296207(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A076826.P238285691911196163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A296207 n).toNat

end

end A076826.P238285691911196163

namespace A076826

/-- `a(A296207(n))` -/
def P238285691911196163.Spec : Prop :=
  ∀ n, (P238285691911196163.a n : ℤ) = A076826 n

end A076826

/-! ## A076826.P4227877875441455391

`A080978(n+1)%3`
-/

namespace A076826.P4227877875441455391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080978 (n + 1)) 3

end

end A076826.P4227877875441455391

namespace A076826

/-- `A080978(n+1)%3` -/
def P4227877875441455391.Spec : Prop :=
  ∀ n, P4227877875441455391.a n = A076826 n

end A076826

/-! ## A076826.P6641722364830269393

`(2*A316828(n))%3`
-/

namespace A076826.P6641722364830269393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A316828 n) 3

end

end A076826.P6641722364830269393

namespace A076826

/-- `(2*A316828(n))%3` -/
def P6641722364830269393.Spec : Prop :=
  ∀ n, P6641722364830269393.a n = A076826 n

end A076826

/-! ## A076826.P5861700822166342699

`n-2*A245710(n)`
-/

namespace A076826.P5861700822166342699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A245710 n

end

end A076826.P5861700822166342699

namespace A076826

/-- `n-2*A245710(n)` -/
def P5861700822166342699.Spec : Prop :=
  ∀ n, P5861700822166342699.a n = A076826 n

end A076826

/-! ## A076826.P3120390560406896950

`1-∑[∑[A292118(n)]]`
-/

namespace A076826.P3120390560406896950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076826.P3120390560406896950

namespace A076826

/-- `1-∑[∑[A292118(n)]]` -/
def P3120390560406896950.Spec : Prop :=
  ∀ n, P3120390560406896950.a n = A076826 n

end A076826

/-! ## A076826.P15580258805722980700

`∑[2*A010060(n)]-n`
-/

namespace A076826.P15580258805722980700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A076826.P15580258805722980700

namespace A076826

/-- `∑[2*A010060(n)]-n` -/
def P15580258805722980700.Spec : Prop :=
  ∀ n, P15580258805722980700.a n = A076826 n

end A076826

/-! ## A076826.P13213799228455426485

`∑[log2(A001285(n)²)]-n`
-/

namespace A076826.P13213799228455426485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001285 n ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A076826.P13213799228455426485

namespace A076826

/-- `∑[log2(A001285(n)²)]-n` -/
def P13213799228455426485.Spec : Prop :=
  ∀ n, P13213799228455426485.a n = (A076826 n : ℝ)

end A076826

/-! ## A076826.P5267087472450549668

`(2*A071044(n)+1)%3`
-/

namespace A076826.P5267087472450549668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A071044 n + 1) 3

end

end A076826.P5267087472450549668

namespace A076826

/-- `(2*A071044(n)+1)%3` -/
def P5267087472450549668.Spec : Prop :=
  ∀ n, P5267087472450549668.a n = A076826 n

end A076826

/-! ## A076826.P7705026094746857048

`n+2-2*A159481(n)`
-/

namespace A076826.P7705026094746857048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - 2 * A159481 n

end

end A076826.P7705026094746857048

namespace A076826

/-- `n+2-2*A159481(n)` -/
def P7705026094746857048.Spec : Prop :=
  ∀ n, P7705026094746857048.a n = A076826 n

theorem P7705026094746857048.correct : P7705026094746857048.Spec := by
  intro n
  simp only [A076826, Nat.add_sub_cancel, A076826.P7705026094746857048.a, A076826.P11423364779277600938.a, A115384, A115384.P10033913726558094609.a, A159481, A159481.P7251533249853496071.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076826

/-! ## A076826.P983394509149736958

`and(A151712(n)+3, gcd(2, n))`
-/

namespace A076826.P983394509149736958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151712 n + 3) (Nat.gcd 2 n : ℤ)

end

end A076826.P983394509149736958

namespace A076826

/-- `and(A151712(n)+3, gcd(2, n))` -/
def P983394509149736958.Spec : Prop :=
  ∀ n, P983394509149736958.a n = A076826 n

end A076826

/-! ## A076826.P7494912134131952003

`A095190(n)+A010060(n)`
-/

namespace A076826.P7494912134131952003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n + A010060 n

end

end A076826.P7494912134131952003

namespace A076826

/-- `A095190(n)+A010060(n)` -/
def P7494912134131952003.Spec : Prop :=
  ∀ n, P7494912134131952003.a n = A076826 n

end A076826

/-! ## A076826.P6003075550561685589

`A001285(n)-A179020(n)`
-/

namespace A076826.P6003075550561685589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - A179020 n

end

end A076826.P6003075550561685589

namespace A076826

/-- `A001285(n)-A179020(n)` -/
def P6003075550561685589.Spec : Prop :=
  ∀ n, P6003075550561685589.a n = A076826 n

end A076826

/-! ## A076826.P14564186464143410114

`A115384(n)-A245710(n)`
-/

namespace A076826.P14564186464143410114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n - A245710 n

end

end A076826.P14564186464143410114

namespace A076826

/-- `A115384(n)-A245710(n)` -/
def P14564186464143410114.Spec : Prop :=
  ∀ n, P14564186464143410114.a n = A076826 n

end A076826

/-!
# A076827: Number of odd terms minus number of even terms in the set S(n) = ( A002977(k) : k<=n).

The programs for A076827, there is no canonical definition to state claims against.
-/

/-! ## A076827.P5464034727667512425

`abs(∑[(-1)^A002977(n+1)])`
-/

namespace A076827.P5464034727667512425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002977 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A076827.P5464034727667512425

/-! ## A076827.P14741744300906252500

`∑[(-1)^A190807(n+2)]`
-/

namespace A076827.P14741744300906252500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A190807 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P14741744300906252500

/-! ## A076827.P11979755008157730476

`∑[(A190811(n+2)-1)%4-1]`
-/

namespace A076827.P11979755008157730476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190811 (n + 2) - 1) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P11979755008157730476

/-! ## A076827.P12300157170680809835

`∑[(-1)^eq[1, A007448(n)-n]]`
-/

namespace A076827.P12300157170680809835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P12300157170680809835

/-! ## A076827.P622396516057964383

`-∑[(-1)^(eq[1, A132138(n+1)]+1)]`
-/

namespace A076827.P622396516057964383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076827.P622396516057964383

/-! ## A076827.P14959989486451750244

`∑[A062157(A002977(n+1))]`
-/

namespace A076827.P14959989486451750244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P14959989486451750244

/-! ## A076827.P9928599453988683042

`∑[A033999(A190807(n+2))]`
-/

namespace A076827.P9928599453988683042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A190807 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P9928599453988683042

/-! ## A076827.P15627479877815238420

`∑[A033999(A002977(n+1)+1)]`
-/

namespace A076827.P15627479877815238420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002977 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P15627479877815238420

/-! ## A076827.P5835753665167909827

`∑[A101675(A002977(n+1)+3)]`
-/

namespace A076827.P5835753665167909827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (A002977 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P5835753665167909827

/-! ## A076827.P7469496557157130280

`∑[A309873(or(2, A002977(n+1)))]`
-/

namespace A076827.P7469496557157130280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (Int.lor 2 (A002977 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076827.P7469496557157130280

/-!
# A076828: Record high values in A078142.

The programs for A076828, there is no canonical definition to state claims against.
-/

/-! ## A076828.P18190290284002146234

`record[A078142(n+1)]`
-/

namespace A076828.P18190290284002146234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076828.P18190290284002146234

/-! ## A076828.P6473250197218225002

`record[A068527(A126773(n+1))+A005871(n)]`
-/

namespace A076828.P6473250197218225002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A126773 (n + 1)).toNat + A005871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076828.P6473250197218225002

/-!
# A076829: a(n) = floor(log(log(n^n^n))).

The programs for A076829, the canonical program `A076829.P15575559029121480196` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076829 has offset 2).

The definition of A076829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076829.P15575559029121480196

`floor((n+2)*log(n+2)+log(log(n+2)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076829

/-- `floor((n+2)*log(n+2)+log(log(n+2)))` -/
def P15575559029121480196.Spec : Prop :=
  ∀ n, P15575559029121480196.a n = A076829 (n + 2)

theorem P15575559029121480196.correct : P15575559029121480196.Spec := by
  intro n
  simp only [A076829, Nat.add_sub_cancel]

end A076829

/-! ## A076829.P3008304964423988286

`A300403(A066022(2*n+1)+1)+A066022(2*n+1)`
-/

namespace A076829.P3008304964423988286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300403 (A066022 (2 * n + 1) + 1).toNat + A066022 (2 * n + 1)

end

end A076829.P3008304964423988286

namespace A076829

/-- `A300403(A066022(2*n+1)+1)+A066022(2*n+1)` -/
def P3008304964423988286.Spec : Prop :=
  ∀ n, P3008304964423988286.a n = A076829 (n + 2)

end A076829

/-! ## A076829.P2049838606657980381

`∑[A055642((2*∑{d}[n+1, #])²)]`
-/

namespace A076829.P2049838606657980381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((2 * (∑ d ∈ Nat.divisors (f2 n), d)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076829.P2049838606657980381

namespace A076829

/-- `∑[A055642((2*∑{d}[n+1, #])²)]` -/
def P2049838606657980381.Spec : Prop :=
  ∀ n, P2049838606657980381.a n = A076829 (n + 2)

end A076829

/-! ## A076829.P3067998037735812299

`∑[A390256(A000203(n+1))]`
-/

namespace A076829.P3067998037735812299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076829.P3067998037735812299

namespace A076829

/-- `∑[A390256(A000203(n+1))]` -/
def P3067998037735812299.Spec : Prop :=
  ∀ n, P3067998037735812299.a n = A076829 (n + 2)

end A076829

/-! ## A076829.P2546004520821776419

`∑[A055642(A002659(n+1)²)]`
-/

namespace A076829.P2546004520821776419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A002659 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076829.P2546004520821776419

namespace A076829

/-- `∑[A055642(A002659(n+1)²)]` -/
def P2546004520821776419.Spec : Prop :=
  ∀ n, P2546004520821776419.a n = A076829 (n + 2)

end A076829

/-!
# A076830: Least square s such that A078142(s) is equal to the n-th prime.

The programs for A076830, there is no canonical definition to state claims against.
-/

/-! ## A076830.P12660099232076037737

`A073939(n+1)²`
-/

namespace A076830.P12660099232076037737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (n + 1) ^ 2

end

end A076830.P12660099232076037737

/-! ## A076830.P10736048037653198410

`A073939(2*(n+1)-(n+1))^2`
-/

namespace A076830.P10736048037653198410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (2 * (n + 1) - (n + 1)) ^ 2

end

end A076830.P10736048037653198410

/-! ## A076830.P12835999609625999186

`(A073939(n+1)%A073938(n+1))^2`
-/

namespace A076830.P12835999609625999186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073939 (n + 1)) (A073938 (n + 1)) ^ 2

end

end A076830.P12835999609625999186

/-! ## A076830.P8141437622995648995

`A073939(A000027(n+1))*A073939(n+1)`
-/

namespace A076830.P8141437622995648995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (A000027 (n + 1)).toNat * A073939 (n + 1)

end

end A076830.P8141437622995648995

/-! ## A076830.P13639941758498130710

`A073939(A008619(2*n))*A073939(n+1)`
-/

namespace A076830.P13639941758498130710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (A008619 (2 * n)).toNat * A073939 (n + 1)

end

end A076830.P13639941758498130710

/-! ## A076830.P16625517653014531913

`A073939(A266285(2*n))*A073939(n+1)`
-/

namespace A076830.P16625517653014531913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (A266285 (2 * n)).toNat * A073939 (n + 1)

end

end A076830.P16625517653014531913

/-! ## A076830.P1946804959712883496

`(-A073939(n+1))^A046027(A003946(C(2, n))+1)`
-/

namespace A076830.P1946804959712883496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A073939 (n + 1) : ℚ) ^ (A046027 (A003946 (Nat.choose 2 n) + 1).toNat : ℤ)

end

end A076830.P1946804959712883496

/-! ## A076830.P15514229442684603891

`A073939(n+1)*A073939((n+1)%A073939(n+1))`
-/

namespace A076830.P15514229442684603891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (n + 1) * A073939 (Int.tmod (n + 1 : ℤ) (A073939 (n + 1))).toNat

end

end A076830.P15514229442684603891

/-! ## A076830.P3535906226227718394

`A000027(A073939(n+1))^A000005(A002476(n+1))`
-/

namespace A076830.P3535906226227718394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A073939 (n + 1)).toNat : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A076830.P3535906226227718394

/-! ## A076830.P17539317265036247349

`A073939(n+1)*A073939(A114327(C(n+2, 2)))`
-/

namespace A076830.P17539317265036247349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073939 (n + 1) * A073939 (A114327 (Nat.choose (n + 2) 2)).toNat

end

end A076830.P17539317265036247349

/-!
# A076831: Triangle T(n,k) read by rows giving number of inequivalent binary linear [n,k] codes (n >= 0, 0 <= k <= n).

The programs for A076831, there is no canonical definition to state claims against.
-/

/-! ## A076831.P13255964541097163223

`A034356(A271439(n)+A010054(n))`
-/

namespace A076831.P13255964541097163223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034356 (A271439 n + A010054 n).toNat

end

end A076831.P13255964541097163223

/-! ## A076831.P3809289486179569221

`A034356(gcd(A010816(n), A083920(n)))`
-/

namespace A076831.P3809289486179569221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034356 (Int.gcd (A010816 n) (A083920 n))

end

end A076831.P3809289486179569221

/-! ## A076831.P12058518829303528759

`A250002(n)+A007318(n)`
-/

namespace A076831.P12058518829303528759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + A007318 n

end

end A076831.P12058518829303528759

/-! ## A076831.P10849897325044745535

`A250002(n)+abs(A108086(n))`
-/

namespace A076831.P10849897325044745535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + |A108086 n|

end

end A076831.P10849897325044745535

/-! ## A076831.P184053624900525626

`A250002(n)+abs(A117440(n))`
-/

namespace A076831.P184053624900525626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + |A117440 n|

end

end A076831.P184053624900525626

/-! ## A076831.P17123439929223068147

`A250002(n)+abs(A130595(n))`
-/

namespace A076831.P17123439929223068147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + |A130595 n|

end

end A076831.P17123439929223068147

/-! ## A076831.P16712868448418377202

`A250002(n)+sqrt(A008459(n))`
-/

namespace A076831.P16712868448418377202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250002 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A076831.P16712868448418377202

/-! ## A076831.P74936937624138779

`A250002(n)+Δ[A102363(n)]`
-/

namespace A076831.P74936937624138779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + (f1 (n + 1) - f1 n)

end

end A076831.P74936937624138779

/-! ## A076831.P12433332000243356498

`A250002(n)+A028326(n)/2`
-/

namespace A076831.P12433332000243356498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250002 n : ℚ) + (A028326 n : ℚ) / 2

end

end A076831.P12433332000243356498

/-! ## A076831.P14322516265775374072

`A250002(n)+A001281(A028326(n))`
-/

namespace A076831.P14322516265775374072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 n + A001281 (A028326 n).toNat

end

end A076831.P14322516265775374072

/-!
# A076832: Triangle T(n,k), read by rows, giving the total number of inequivalent binary linear [n,i] codes with no column of zeros, summed for i <= k (n >= 1, 1 <= k <= n).

The programs for A076832, there is no canonical definition to state claims against.
-/

/-! ## A076832.P1489973738161991589

`A037800(A185274(n))+A008949(n)`
-/

namespace A076832.P1489973738161991589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A185274 n).toNat + A008949 n

end

end A076832.P1489973738161991589

/-! ## A076832.P6437909901216360702

`or(A008949(n), A088512(A213003(n)))`
-/

namespace A076832.P6437909901216360702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008949 n) (A088512 (A213003 n).toNat)

end

end A076832.P6437909901216360702

/-! ## A076832.P6450756239997939404

`A008949(n)+∑[A307598(A094344(n))]`
-/

namespace A076832.P6450756239997939404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A094344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076832.P6450756239997939404

/-! ## A076832.P10570922424617313392

`or(A008949(n), A335520(A161187(n+1)))`
-/

namespace A076832.P10570922424617313392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008949 n) (A335520 (A161187 (n + 1)).toNat)

end

end A076832.P10570922424617313392

/-! ## A076832.P6599684007093365842

`A327928(A247820(n+1))+A008949(n)`
-/

namespace A076832.P6599684007093365842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A247820 (n + 1)).toNat + A008949 n

end

end A076832.P6599684007093365842

/-!
# A076833: Triangle T(n,k) read by rows giving number of inequivalent projective binary linear [n,k] codes (n >= 1, 1 <= k <= n).

The programs for A076833, there is no canonical definition to state claims against.
-/

/-! ## A076833.P1677632035505887861

`A336917(A235648(n+1))+A259095(n+1)`
-/

namespace A076833.P1677632035505887861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (A235648 (n + 1)).toNat + A259095 (n + 1)

end

end A076833.P1677632035505887861

/-! ## A076833.P5303471741915049709

`A026729(n)+A014061(A045912(n))`
-/

namespace A076833.P5303471741915049709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n + A014061 (A045912 n).toNat

end

end A076833.P5303471741915049709

/-! ## A076833.P13469927128138245559

`A055641(A167040(n))+A026729(n)`
-/

namespace A076833.P13469927128138245559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A167040 n).toNat + A026729 n

end

end A076833.P13469927128138245559

/-! ## A076833.P12722593926433305174

`A083895(A229243(n))+A026729(n)`
-/

namespace A076833.P12722593926433305174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A229243 n).toNat + A026729 n

end

end A076833.P12722593926433305174

/-! ## A076833.P1732042075873533025

`A282355(A346061(n))+A026729(n)`
-/

namespace A076833.P1732042075873533025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A346061 n).toNat + A026729 n

end

end A076833.P1732042075873533025

/-!
# A076834: Number of inequivalent projective binary linear [n,k] codes of any dimension k <= n. Also the number of simple binary matroids on n points.

The programs for A076834, there is no canonical definition to state claims against.
-/

/-! ## A076834.P14900409831872527466

`A091008(∑[n+1])`
-/

namespace A076834.P14900409831872527466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091008 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076834.P14900409831872527466

/-! ## A076834.P2080693894784073544

`A028409(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A076834.P2080693894784073544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028409 (n + 1) - a (n - 1)

end

end A076834.P2080693894784073544

/-! ## A076834.P1338841042120249819

`A028310(A091008(∑[comp[12*n]]))`
-/

namespace A076834.P1338841042120249819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A091008 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076834.P1338841042120249819

/-! ## A076834.P11456794692943380362

`A091008(A025747(n))^ceil(acot(n))`
-/

namespace A076834.P11456794692943380362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091008 (A025747 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A076834.P11456794692943380362

/-! ## A076834.P5302055820235041496

`A091008(A025747(n))+A084904(n)`
-/

namespace A076834.P5302055820235041496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091008 (A025747 n).toNat + A084904 n

end

end A076834.P5302055820235041496

/-!
# A076835: Coefficients in expansion of Eisenstein series -q*E'_2.

The programs for A076835, the canonical program `A076835.P15410372118314724071` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076835 has offset 1).

The definition of A076835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076835.P15410372118314724071

`24*A064987(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076835

/-- `24*A064987(n+1)` -/
def P15410372118314724071.Spec : Prop :=
  ∀ n, P15410372118314724071.a n = A076835 (n + 1)

theorem P15410372118314724071.correct : P15410372118314724071.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel]

end A076835

/-! ## A076835.P2679582599190113214

`24*(n+1)*A000203(n+1)`
-/

namespace A076835.P2679582599190113214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * (n + 1) : ℤ) * A000203 (n + 1)

end

end A076835.P2679582599190113214

namespace A076835

/-- `24*(n+1)*A000203(n+1)` -/
def P2679582599190113214.Spec : Prop :=
  ∀ n, P2679582599190113214.a n = A076835 (n + 1)

theorem P2679582599190113214.correct : P2679582599190113214.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel, A076835.P2679582599190113214.a, A076835.P15410372118314724071.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064987, A064987.P14181610018234257040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076835

/-! ## A076835.P17292898636531327009

`24*(n+1)*∑{d}[n+1, #]`
-/

namespace A076835.P17292898636531327009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A076835.P17292898636531327009

namespace A076835

/-- `24*(n+1)*∑{d}[n+1, #]` -/
def P17292898636531327009.Spec : Prop :=
  ∀ n, (P17292898636531327009.a n : ℤ) = A076835 (n + 1)

theorem P17292898636531327009.correct : P17292898636531327009.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel, A076835.P17292898636531327009.f1, A076835.P17292898636531327009.a, A076835.P15410372118314724071.a, A064987, A064987.P14181610018234257040.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076835

/-! ## A076835.P9885324774380779064

`3*(n+1)*A319528(n+1)`
-/

namespace A076835.P9885324774380779064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A319528 (n + 1))

end

end A076835.P9885324774380779064

namespace A076835

/-- `3*(n+1)*A319528(n+1)` -/
def P9885324774380779064.Spec : Prop :=
  ∀ n, P9885324774380779064.a n = A076835 (n + 1)

theorem P9885324774380779064.correct : P9885324774380779064.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel, A076835.P9885324774380779064.a, A076835.P15410372118314724071.a, A064987, A064987.P14181610018234257040.a, A319528, A319528.P5610714732727847470.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076835

/-! ## A076835.P3728251176267337518

`4*(n+1)*A274536(n+1)`
-/

namespace A076835.P3728251176267337518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A274536 (n + 1))

end

end A076835.P3728251176267337518

namespace A076835

/-- `4*(n+1)*A274536(n+1)` -/
def P3728251176267337518.Spec : Prop :=
  ∀ n, P3728251176267337518.a n = A076835 (n + 1)

theorem P3728251176267337518.correct : P3728251176267337518.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel, A076835.P3728251176267337518.a, A076835.P15410372118314724071.a, A064987, A064987.P14181610018234257040.a, A274536, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076835

/-! ## A076835.P10529791566946548156

`8*(n+1)*A272027(n+1)`
-/

namespace A076835.P10529791566946548156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) * A272027 (n + 1)

end

end A076835.P10529791566946548156

namespace A076835

/-- `8*(n+1)*A272027(n+1)` -/
def P10529791566946548156.Spec : Prop :=
  ∀ n, P10529791566946548156.a n = A076835 (n + 1)

theorem P10529791566946548156.correct : P10529791566946548156.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel, A076835.P10529791566946548156.a, A076835.P15410372118314724071.a, A064987, A064987.P14181610018234257040.a, A272027, A272027.P17950759033993077215.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076835

/-! ## A076835.P11990407179101628290

`A282154(n+1)/(n+1)`
-/

namespace A076835.P11990407179101628290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282154 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076835.P11990407179101628290

namespace A076835

/-- `A282154(n+1)/(n+1)` -/
def P11990407179101628290.Spec : Prop :=
  ∀ n, P11990407179101628290.a n = (A076835 (n + 1) : ℚ)

end A076835

/-! ## A076835.P12537035086270330773

`(1-4/2-n)*A006352(n+1)`
-/

namespace A076835.P12537035086270330773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2 - (n : ℚ)) * (A006352 (n + 1) : ℚ)

end

end A076835.P12537035086270330773

namespace A076835

/-- `(1-4/2-n)*A006352(n+1)` -/
def P12537035086270330773.Spec : Prop :=
  ∀ n, P12537035086270330773.a n = (A076835 (n + 1) : ℚ)

end A076835

/-! ## A076835.P2651849801199767711

`(A016945(n+1)+A016945(n))*A074400(n+1)`
-/

namespace A076835.P2651849801199767711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 (n + 1) + A016945 n) * A074400 (n + 1)

end

end A076835.P2651849801199767711

namespace A076835

/-- `(A016945(n+1)+A016945(n))*A074400(n+1)` -/
def P2651849801199767711.Spec : Prop :=
  ∀ n, P2651849801199767711.a n = A076835 (n + 1)

theorem P2651849801199767711.correct : P2651849801199767711.Spec := by
  intro n
  simp only [A076835, Nat.add_sub_cancel, A076835.P2651849801199767711.a, A076835.P15410372118314724071.a, A016945, A016945.P12463160785118576711.a, A064987, A064987.P14181610018234257040.a, A074400, A074400.P16312391460013478761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076835

/-! ## A076835.P14422473162371975241

`A006352(n+1)/A013973(n+1)*A145095(n+1)`
-/

namespace A076835.P14422473162371975241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006352 (n + 1) : ℚ) / (A013973 (n + 1) : ℚ) * (A145095 (n + 1) : ℚ)

end

end A076835.P14422473162371975241

namespace A076835

/-- `A006352(n+1)/A013973(n+1)*A145095(n+1)` -/
def P14422473162371975241.Spec : Prop :=
  ∀ n, P14422473162371975241.a n = (A076835 (n + 1) : ℚ)

end A076835

/-! ## A076835.P8744231385399983558

`A006352(n+1)*A289833(n+1)/A000594(n+2)`
-/

namespace A076835.P8744231385399983558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006352 (n + 1) * A289833 (n + 1) : ℚ) / (A000594 (n + 2) : ℚ)

end

end A076835.P8744231385399983558

namespace A076835

/-- `A006352(n+1)*A289833(n+1)/A000594(n+2)` -/
def P8744231385399983558.Spec : Prop :=
  ∀ n, P8744231385399983558.a n = (A076835 (n + 1) : ℚ)

end A076835

/-! ## A076835.P9344021753603993342

`2*A326065(2*(n+1))*A008594(n+1)`
-/

namespace A076835.P9344021753603993342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326065 (2 * (n + 1)) * A008594 (n + 1)

end

end A076835.P9344021753603993342

namespace A076835

/-- `2*A326065(2*(n+1))*A008594(n+1)` -/
def P9344021753603993342.Spec : Prop :=
  ∀ n, P9344021753603993342.a n = A076835 (n + 1)

end A076835

/-! ## A076835.P3224778564541134525

`(A017653(2*n+1)+1)*A245092(2*n+1)`
-/

namespace A076835.P3224778564541134525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017653 (2 * n + 1) + 1) * A245092 (2 * n + 1)

end

end A076835.P3224778564541134525

namespace A076835

/-- `(A017653(2*n+1)+1)*A245092(2*n+1)` -/
def P3224778564541134525.Spec : Prop :=
  ∀ n, P3224778564541134525.a n = A076835 (n + 1)

end A076835

/-! ## A076835.P9096721173702069611

`(n+1)*A008606(A000203(n+1))`
-/

namespace A076835.P9096721173702069611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008606 (A000203 (n + 1)).toNat

end

end A076835.P9096721173702069611

namespace A076835

/-- `(n+1)*A008606(A000203(n+1))` -/
def P9096721173702069611.Spec : Prop :=
  ∀ n, P9096721173702069611.a n = A076835 (n + 1)

end A076835

/-! ## A076835.P15283874447249917273

`(n+1)*A008590(A272027(n+1))`
-/

namespace A076835.P15283874447249917273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008590 (A272027 (n + 1)).toNat

end

end A076835.P15283874447249917273

namespace A076835

/-- `(n+1)*A008590(A272027(n+1))` -/
def P15283874447249917273.Spec : Prop :=
  ∀ n, P15283874447249917273.a n = A076835 (n + 1)

end A076835

/-! ## A076835.P1527541880217056320

`(n+1)*A008585(A319528(n+1))`
-/

namespace A076835.P1527541880217056320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008585 (A319528 (n + 1)).toNat

end

end A076835.P1527541880217056320

namespace A076835

/-- `(n+1)*A008585(A319528(n+1))` -/
def P1527541880217056320.Spec : Prop :=
  ∀ n, P1527541880217056320.a n = A076835 (n + 1)

end A076835

/-!
# A076837: Triangle T(n,k) read by rows giving number of inequivalent projective indecomposable binary linear [n,k] codes (n >= 1, 1 <= k <= n).

The programs for A076837, there is no canonical definition to state claims against.
-/

/-! ## A076837.P2890328224418351481

`A091006(A184425(n+1))`
-/

namespace A076837.P2890328224418351481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (A184425 (n + 1)).toNat

end

end A076837.P2890328224418351481

/-! ## A076837.P15361534838387661735

`A091006(lt[2, A273616(n)])`
-/

namespace A076837.P15361534838387661735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076837.P15361534838387661735

/-! ## A076837.P9407006996932055569

`A091006(lt[1, A194902(n+3)])`
-/

namespace A076837.P9407006996932055569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076837.P9407006996932055569

/-! ## A076837.P3047368554359066636

`A091006(A087845(n+1)+n)`
-/

namespace A076837.P3047368554359066636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (A087845 (n + 1) + (n : ℤ)).toNat

end

end A076837.P3047368554359066636

/-! ## A076837.P10164847574589488200

`A091006(comp[A156324(n+1)-1])`
-/

namespace A076837.P10164847574589488200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156324 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076837.P10164847574589488200

/-!
# A076838: Number of inequivalent indecomposable projective binary linear [n,k] codes of any dimension k <= n.

The programs for A076838, there is no canonical definition to state claims against.
-/

/-! ## A076838.P3593881820360445839

`A029411(A347652(n+1)-1)`
-/

namespace A076838.P3593881820360445839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 (A347652 (n + 1) - 1).toNat

end

end A076838.P3593881820360445839

/-! ## A076838.P16056539341625977255

`floor(A139376(n)/A334714(n+1))`
-/

namespace A076838.P16056539341625977255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139376 n : ℚ) / (A334714 (n + 1) : ℚ)⌋

end

end A076838.P16056539341625977255

/-! ## A076838.P13137102474107776217

`round(A032292(n+1)/A092754(n+1))`
-/

namespace A076838.P13137102474107776217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032292 (n + 1) : ℚ) / (A092754 (n + 1) : ℚ))

end

end A076838.P13137102474107776217

/-! ## A076838.P13014489703065412072

`Δ[A374759(A000045(n)+1)]`
-/

namespace A076838.P13014489703065412072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374759 (A000045 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076838.P13014489703065412072

/-!
# A076839: A simple example of the Lyness 5-cycle: a(1) = a(2) = 1; a(n) = (a(n-1)+1)/a(n-2) (for n>2).

The programs for A076839, the canonical program `A076839.P1236699306668572076` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076839 has offset 1).

The definition of A076839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076839.P1236699306668572076

`a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076839

/-- `a(n-5)` -/
def P1236699306668572076.Spec : Prop :=
  ∀ n, (P1236699306668572076.a n : ℤ) = A076839 (n + 1)

theorem P1236699306668572076.correct : P1236699306668572076.Spec := by
  intro n
  simp only [A076839, Nat.add_sub_cancel]

end A076839

/-! ## A076839.P11469136875236374491

`(a(n-1)+1)/a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076839.P11469136875236374491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 1) / a (n - 2)

end

end A076839.P11469136875236374491

namespace A076839

/-- `(a(n-1)+1)/a(n-2)` -/
def P11469136875236374491.Spec : Prop :=
  ∀ n, P11469136875236374491.a n = (A076839 (n + 1) : ℚ)

end A076839

/-!
# A076840: a(1) = a(2) = 1; a(n) = (a(n-1) + 1)/a(n-2) (for n>2, n odd), (a(n-1)^2 + 1)/a(n-2) (for n>2, n even).

The programs for A076840, the canonical program `A076840.P11061255812772467441` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076840 has offset 1).

The definition of A076840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076840.P11061255812772467441

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=3, a(5)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076840

/-- `a(n-6)` -/
def P11061255812772467441.Spec : Prop :=
  ∀ n, (P11061255812772467441.a n : ℤ) = A076840 (n + 1)

theorem P11061255812772467441.correct : P11061255812772467441.Spec := by
  intro n
  simp only [A076840, Nat.add_sub_cancel]

end A076840

/-!
# A076844: a(1) = a(2) = a(3) = 1; a(n) = (a(n-1) + a(n-2) + 1)/a(n-3) (for n>3).

The programs for A076844, the canonical program `A076844.P8653622864456525529` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076844 has offset 1).

The definition of A076844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076844.P8653622864456525529

`(a(n-1)+a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076844

/-- `(a(n-1)+a(n-2)+1)/a(n-3)` -/
def P8653622864456525529.Spec : Prop :=
  ∀ n, P8653622864456525529.a n = (A076844 (n + 1) : ℚ)

end A076844

/-!
# A076845: Least k>0 such that n^k + n - 1 is prime.

The programs for A076845, there is no canonical definition to state claims against.
-/

/-! ## A076845.P7300659753484355430

`gcd(A068640(n+1), A078178(n+2))`
-/

namespace A076845.P7300659753484355430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068640 (n + 1)) (A078178 (n + 2))

end

end A076845.P7300659753484355430

/-! ## A076845.P4316817246514972692

`A078178(n+2)^A001221(A049653(n+2))`
-/

namespace A076845.P4316817246514972692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078178 (n + 2) : ℚ) ^ (A001221 (A049653 (n + 2)).toNat : ℤ)

end

end A076845.P4316817246514972692

/-! ## A076845.P887207366876064884

`A078680(A228539(n)+n+1)`
-/

namespace A076845.P887207366876064884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (A228539 n + (n + 1 : ℤ)).toNat

end

end A076845.P887207366876064884

/-! ## A076845.P2927306432120134250

`gcd(A008220(n), A008223(A016958(n)))`
-/

namespace A076845.P2927306432120134250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008220 n) (A008223 (A016958 n).toNat)

end

end A076845.P2927306432120134250

/-! ## A076845.P8731030301289365450

`A006519(A299278(n)+A292090(n+4))`
-/

namespace A076845.P8731030301289365450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A299278 n + A292090 (n + 4)).toNat

end

end A076845.P8731030301289365450

/-!
# A076846: Primes of the form n^k + n - 1, where k>0 is minimal.

The programs for A076846, there is no canonical definition to state claims against.
-/

/-! ## A076846.P3698411320455392428

`(n+2)^A076845(n+2)+n+1`
-/

namespace A076846.P3698411320455392428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A076845 (n + 2) : ℤ) + (n + 1 : ℚ)

end

end A076846.P3698411320455392428

/-! ## A076846.P6871176910784541211

`A093574(A173588(∑[n]))`
-/

namespace A076846.P6871176910784541211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076846.P6871176910784541211

/-! ## A076846.P2740854860057750242

`A093574(A062399(n+1))`
-/

namespace A076846.P2740854860057750242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 (A062399 (n + 1)).toNat

end

end A076846.P2740854860057750242

/-! ## A076846.P5200315801446194530

`A093574(A120126(n+1))`
-/

namespace A076846.P5200315801446194530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 (A120126 (n + 1)).toNat

end

end A076846.P5200315801446194530

/-! ## A076846.P11123023812939117009

`A093574(A351870(n+1))`
-/

namespace A076846.P11123023812939117009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 (A351870 (n + 1)).toNat

end

end A076846.P11123023812939117009

/-!
# A076847: Ramanujan function tau(p) as p runs through the primes.

The programs for A076847, there is no canonical definition to state claims against.
-/

/-! ## A076847.P12781601357811366412

`A000594(A000040(n+1))`
-/

namespace A076847.P12781601357811366412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A000040 (n + 1)).toNat

end

end A076847.P12781601357811366412

/-! ## A076847.P2491303677227183874

`A278577(A024620(n+1))`
-/

namespace A076847.P2491303677227183874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (A024620 (n + 1)).toNat

end

end A076847.P2491303677227183874

/-! ## A076847.P3953985439941976537

`A278577(A027883(n+1)+1)`
-/

namespace A076847.P3953985439941976537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (A027883 (n + 1) + 1).toNat

end

end A076847.P3953985439941976537

/-! ## A076847.P5086620224585459010

`A000594(A008578(n+2))`
-/

namespace A076847.P5086620224585459010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A008578 (n + 2)).toNat

end

end A076847.P5086620224585459010

/-! ## A076847.P4562112830821842209

`A000594(A182986(n+2))`
-/

namespace A076847.P4562112830821842209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A182986 (n + 2)).toNat

end

end A076847.P4562112830821842209

/-! ## A076847.P8310191406477372152

`A000594(record[A006530(n+2)])`
-/

namespace A076847.P8310191406477372152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076847.P8310191406477372152

/-! ## A076847.P12665132051258959421

`A000594(record[A020639(n+2)])`
-/

namespace A076847.P12665132051258959421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076847.P12665132051258959421

/-! ## A076847.P10370923937599414096

`A000594(A006093(n+1)+1)`
-/

namespace A076847.P10370923937599414096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A006093 (n + 1) + 1).toNat

end

end A076847.P10370923937599414096

/-! ## A076847.P17200914891532309236

`A000594(A100484(n+1)/2)`
-/

namespace A076847.P17200914891532309236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A076847.P17200914891532309236

/-! ## A076847.P7268795589321590634

`A000594(A014692(n+1)+n)`
-/

namespace A076847.P7268795589321590634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A076847.P7268795589321590634

/-! ## A076847.P13680178776274065720

`A000594(eq[1, A001222(n+1)]+1)`
-/

namespace A076847.P13680178776274065720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076847.P13680178776274065720

/-! ## A076847.P13491238930553651553

`A000594(A008347(n+1)+A008347(n))`
-/

namespace A076847.P13491238930553651553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A008347 (n + 1) + A008347 n).toNat

end

end A076847.P13491238930553651553

/-! ## A076847.P13661673770207389492

`A000594(A272198(n+1)+A272197(n+1))`
-/

namespace A076847.P13661673770207389492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A272198 (n + 1) + A272197 (n + 1)).toNat

end

end A076847.P13661673770207389492

/-! ## A076847.P9824435152067484077

`A000594(record[A014963(n+2)])`
-/

namespace A076847.P9824435152067484077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076847.P9824435152067484077

/-! ## A076847.P3190755575001055735

`A000594(lt[gcd(2, A071574(n+1)), 2]+1)`
-/

namespace A076847.P3190755575001055735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A071574 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A076847.P3190755575001055735

/-!
# A076849: Let u(1)=1, u(n) = n + abs(u(ceiling(n/2)) - u(floor(n/2))); then a(n) = u(n) - n.

The programs for A076849, there is no canonical definition to state claims against.
-/

/-! ## A076849.P14959068708278251077

`val(A254048(A169986(n)), A089120(n+1))`
-/

namespace A076849.P14959068708278251077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A254048 (A169986 n).toNat).toNat (A089120 (n + 1)).toNat

end

end A076849.P14959068708278251077

/-! ## A076849.P12809301700040759476

`val(A254048(A169986(n)), A074828(n+2))`
-/

namespace A076849.P12809301700040759476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A254048 (A169986 n).toNat).toNat (A074828 (n + 2)).toNat

end

end A076849.P12809301700040759476

/-! ## A076849.P453851382665037312

`A276165(A142150(n)%A050953(n+1))`
-/

namespace A076849.P453851382665037312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276165 (Int.tmod (A142150 n) (A050953 (n + 1))).toNat

end

end A076849.P453851382665037312

/-! ## A076849.P4500631979971862803

`A007814(abs(A003966(n+3)-A273172(n))+1)`
-/

namespace A076849.P4500631979971862803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (|A003966 (n + 3) - A273172 n| + 1).toNat

end

end A076849.P4500631979971862803

/-! ## A076849.P15683470682586972853

`A276165(A142150(n))+A000038(A001588(n))`
-/

namespace A076849.P15683470682586972853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276165 (A142150 n).toNat + A000038 (A001588 n).toNat

end

end A076849.P15683470682586972853

/-!
# A076850: Numbers k such that (10^k + 2)/6 is prime.

The programs for A076850, there is no canonical definition to state claims against.
-/

/-! ## A076850.P11352611801119637539

`A102940(n+1)+1`
-/

namespace A076850.P11352611801119637539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102940 (n + 1) + 1

end

end A076850.P11352611801119637539

/-! ## A076850.P12882942963443521745

`A102024(A028310(n))+A000032(C(2, n+2))`
-/

namespace A076850.P12882942963443521745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A000032 (Nat.choose 2 (n + 2))

end

end A076850.P12882942963443521745

/-! ## A076850.P15831055640497423032

`A102024(A028310(n))+A000040(n+1)%2+1`
-/

namespace A076850.P15831055640497423032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2 + 1

end

end A076850.P15831055640497423032

/-! ## A076850.P8022807712234295378

`A102024(A028310(n))+A000045(n²%(n+1))+1`
-/

namespace A076850.P8022807712234295378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A000045 (n ^ 2 % (n + 1)) + 1

end

end A076850.P8022807712234295378

/-! ## A076850.P12135479119327857789

`A102024(A028310(n))+A020639(A000040(n+1)-1)`
-/

namespace A076850.P12135479119327857789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A020639 (A000040 (n + 1) - 1).toNat

end

end A076850.P12135479119327857789

/-!
# A076863: a(n) = n^(n-2)+(n*(n-1)/2)*(n-1)^(n-3).

The programs for A076863, there is no canonical definition to state claims against.
-/

/-! ## A076863.P318550718816644649

`A000272(n+1)+∑[n]*A000272(n)`
-/

namespace A076863.P318550718816644649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000272 n

end

end A076863.P318550718816644649

/-! ## A076863.P8908541352637962384

`A033842(A000217(n))+A000217(n)*A000272(n)`
-/

namespace A076863.P8908541352637962384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 (A000217 n).toNat + A000217 n * A000272 n

end

end A076863.P8908541352637962384

/-!
# A076864: Number of connected loopless multigraphs with n edges.

The programs for A076864, there is no canonical definition to state claims against.
-/

/-! ## A076864.P18336403501975991739

`A156689(A148463(n))`
-/

namespace A076864.P18336403501975991739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148463 n).toNat

end

end A076864.P18336403501975991739

/-! ## A076864.P3780607052540409132

`A138194(A145847(n)+A000108(n))`
-/

namespace A076864.P3780607052540409132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A145847 n + A000108 n).toNat

end

end A076864.P3780607052540409132

/-! ## A076864.P6440962717898207096

`A108954(A330133(n)+A007581(n))`
-/

namespace A076864.P6440962717898207096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A330133 n + A007581 n).toNat

end

end A076864.P6440962717898207096

/-! ## A076864.P3104543897340052252

`A148293(n)-A163351(A110132(n))`
-/

namespace A076864.P3104543897340052252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148293 n - A163351 (A110132 n).toNat

end

end A076864.P3104543897340052252

/-!
# A076865: Inverse Euler transform of 1, 1, 3, 8, 23, ... (A050535).

The programs for A076865, there is no canonical definition to state claims against.
-/

/-! ## A076865.P6289002187523936744

`A003056(A164117(n)+A052610(n))`
-/

namespace A076865.P6289002187523936744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A164117 n + A052610 n).toNat

end

end A076865.P6289002187523936744

/-! ## A076865.P2441005488164257201

`A345167(A001006(n))+A293549(n)`
-/

namespace A076865.P2441005488164257201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A001006 n).toNat + A293549 n

end

end A076865.P2441005488164257201

/-! ## A076865.P10021347805934221891

`A374767(A209383(n))+A097355(n)`
-/

namespace A076865.P10021347805934221891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (A209383 n).toNat + A097355 n

end

end A076865.P10021347805934221891

/-!
# A076866: Euler transform of 1, 1, 3, 8, 23, ... (A050535).

The programs for A076866, there is no canonical definition to state claims against.
-/

/-! ## A076866.P10499813654738092572

`∑[A001462(A120895(n)²)]`
-/

namespace A076866.P10499813654738092572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A120895 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076866.P10499813654738092572

/-! ## A076866.P6061564795513537865

`A307496(n)+record[A086427(n)]`
-/

namespace A076866.P6061564795513537865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307496 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076866.P6061564795513537865

/-! ## A076866.P12096716838409318522

`A307496(n)+record[A120705(n)]`
-/

namespace A076866.P12096716838409318522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307496 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076866.P12096716838409318522

/-!
# A076867: Euler transform of 1, 3, 8, 23, ... (A050535).

The programs for A076867, there is no canonical definition to state claims against.
-/

/-! ## A076867.P10697642542596601624

`A081567(n)+A033831(A005809(n))`
-/

namespace A076867.P10697642542596601624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + A033831 (A005809 n).toNat

end

end A076867.P10697642542596601624

/-! ## A076867.P16978582167458436833

`A219652(or(A061188(n), A344816(n+1)))`
-/

namespace A076867.P16978582167458436833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (Int.lor (A061188 n) (A344816 (n + 1))).toNat

end

end A076867.P16978582167458436833

/-!
# A076868: a(n) = smallest m such that a spherical n-design with m points exists in three dimensions.

The programs for A076868, there is no canonical definition to state claims against.
-/

/-! ## A076868.P15570247367253495792

`A061799(n+1)+A055961(n)`
-/

namespace A076868.P15570247367253495792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1) + A055961 n

end

end A076868.P15570247367253495792

/-! ## A076868.P1033897968795348035

`A061799(n+1)+Δ[A229891(n)]`
-/

namespace A076868.P1033897968795348035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1) + (f1 (n + 1) - f1 n)

end

end A076868.P1033897968795348035

/-! ## A076868.P8509666061454987463

`∑[A242896(n)]*A002024(n+1)`
-/

namespace A076868.P8509666061454987463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002024 (n + 1)

end

end A076868.P8509666061454987463

/-! ## A076868.P4787482779790186145

`A139770(2^n)+Δ[A229891(n)]`
-/

namespace A076868.P4787482779790186145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (2 ^ n) + (f1 (n + 1) - f1 n)

end

end A076868.P4787482779790186145

/-! ## A076868.P5161216323161713429

`∑[A242896(n)]*A000194(2*(n+1))`
-/

namespace A076868.P5161216323161713429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000194 (2 * (n + 1))

end

end A076868.P5161216323161713429

/-!
# A076870: a(n) = smallest m such that a spherical n-design with m points exists in four dimensions.

The programs for A076870, there is no canonical definition to state claims against.
-/

/-! ## A076870.P16323963851869265772

`∑[∏{e}[(3*n-4)*Δ[A171842(n)], #+1]]`
-/

namespace A076870.P16323963851869265772
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 4) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076870.P16323963851869265772

/-!
# A076871: Sum of two powerful numbers (definition (1), A001694).

The programs for A076871, there is no canonical definition to state claims against.
-/

/-! ## A076871.P659290789959396563

`comp[A085253(n+1)-1]+1`
-/

namespace A076871.P659290789959396563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085253 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A076871.P659290789959396563

/-! ## A076871.P8329758493510286487

`∪[A085254(n+1), A085255(n+1)]`
-/

namespace A076871.P8329758493510286487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076871.P8329758493510286487

/-! ## A076871.P10904783922457259609

`lt[0, A085252(n+1)]+1`
-/

namespace A076871.P10904783922457259609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076871.P10904783922457259609

/-! ## A076871.P8394125371144141049

`eq[1, A000010(a(A085252(n)))]` with `a(0)=3`
-/

namespace A076871.P8394125371144141049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076871.P8394125371144141049

/-! ## A076871.P16967038078772796373

`eq[1, A000045(a(A085252(n)))]` with `a(0)=3`
-/

namespace A076871.P16967038078772796373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076871.P16967038078772796373

/-! ## A076871.P9901019699804397972

`eq[2, A000005(a(A085252(n)))]` with `a(0)=4`
-/

namespace A076871.P9901019699804397972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076871.P9901019699804397972

/-!
# A076872: a(n) = number of numbers <= n that are the sum of two squarefull numbers.

The programs for A076872, there is no canonical definition to state claims against.
-/

/-! ## A076872.P8190346794139797423

`∑[char[comp[A085253(n+1)-1]]]`
-/

namespace A076872.P8190346794139797423
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085253 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P8190346794139797423

/-! ## A076872.P10328666096857778114

`∑[A057427(A085252(n+1))]`
-/

namespace A076872.P10328666096857778114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A085252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P10328666096857778114

/-! ## A076872.P13275575435584114235

`∑[A060576(A085252(n+1)+1)]`
-/

namespace A076872.P13275575435584114235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A085252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P13275575435584114235

/-! ## A076872.P17337387884049693703

`∑[ceil(A085252(n+1)/A000124(n))]`
-/

namespace A076872.P17337387884049693703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085252 (n + 1) : ℚ) / (A000124 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P17337387884049693703

/-! ## A076872.P10237936805214937926

`∑[ceil(A085252(n+1)/A004277(n))]`
-/

namespace A076872.P10237936805214937926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085252 (n + 1) : ℚ) / (A004277 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P10237936805214937926

/-! ## A076872.P7700098625461754898

`∑[ceil(A085252(n+1)/A008619(n))]`
-/

namespace A076872.P7700098625461754898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085252 (n + 1) : ℚ) / (A008619 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P7700098625461754898

/-! ## A076872.P17238192028292730025

`∑[ceil(A085252(n+1)/A008642(n))]`
-/

namespace A076872.P17238192028292730025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085252 (n + 1) : ℚ) / (A008642 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076872.P17238192028292730025

/-!
# A076873: Smallest prime not less than sum of first n primes.

The programs for A076873, the canonical program `A076873.P18423737301945540033` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076873 has offset 1).

The definition of A076873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076873.P18423737301945540033

`A151800(∑[p?[2*n+1]]+1-p?[2*n+1])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076873

/-- `A151800(∑[p?[2*n+1]]+1-p?[2*n+1])` -/
def P18423737301945540033.Spec : Prop :=
  ∀ n, P18423737301945540033.a n = A076873 (n + 1)

theorem P18423737301945540033.correct : P18423737301945540033.Spec := by
  intro n
  simp only [A076873, Nat.add_sub_cancel]

end A076873

/-! ## A076873.P16378337124846447687

`A151800(A237589(n+1))`
-/

namespace A076873.P16378337124846447687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A237589 (n + 1)).toNat

end

end A076873.P16378337124846447687

namespace A076873

/-- `A151800(A237589(n+1))` -/
def P16378337124846447687.Spec : Prop :=
  ∀ n, P16378337124846447687.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P6016114627200871806

`A151800(∑[record[A110560(n)]])`
-/

namespace A076873.P6016114627200871806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P6016114627200871806

namespace A076873

/-- `A151800(∑[record[A110560(n)]])` -/
def P6016114627200871806.Spec : Prop :=
  ∀ n, P6016114627200871806.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P4699308313288061192

`A151800(∑[record[A128059(n)]])`
-/

namespace A076873.P4699308313288061192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P4699308313288061192

namespace A076873

/-- `A151800(∑[record[A128059(n)]])` -/
def P4699308313288061192.Spec : Prop :=
  ∀ n, P4699308313288061192.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P3542283230639005246

`A151800(∑[A006005(n+1)])`
-/

namespace A076873.P3542283230639005246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P3542283230639005246

namespace A076873

/-- `A151800(∑[A006005(n+1)])` -/
def P3542283230639005246.Spec : Prop :=
  ∀ n, P3542283230639005246.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P8871150608837453720

`A151800(A007504(n+1)-1)`
-/

namespace A076873.P8871150608837453720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007504 (n + 1) - 1).toNat

end

end A076873.P8871150608837453720

namespace A076873

/-- `A151800(A007504(n+1)-1)` -/
def P8871150608837453720.Spec : Prop :=
  ∀ n, P8871150608837453720.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P3612113342095388206

`A151800(∑[record[A090368(n+1)]])`
-/

namespace A076873.P3612113342095388206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P3612113342095388206

namespace A076873

/-- `A151800(∑[record[A090368(n+1)]])` -/
def P3612113342095388206.Spec : Prop :=
  ∀ n, P3612113342095388206.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P10511048789803255308

`A151800(∑[p?[A090223(n)]]-1)`
-/

namespace A076873.P10511048789803255308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P10511048789803255308

namespace A076873

/-- `A151800(∑[p?[A090223(n)]]-1)` -/
def P10511048789803255308.Spec : Prop :=
  ∀ n, P10511048789803255308.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P2049033613062899426

`A151800(∑[A000040(n+1)]-1)`
-/

namespace A076873.P2049033613062899426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P2049033613062899426

namespace A076873

/-- `A151800(∑[A000040(n+1)]-1)` -/
def P2049033613062899426.Spec : Prop :=
  ∀ n, P2049033613062899426.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P6956168914894485355

`A151800(∑[A008578(n+2)]-1)`
-/

namespace A076873.P6956168914894485355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P6956168914894485355

namespace A076873

/-- `A151800(∑[A008578(n+2)]-1)` -/
def P6956168914894485355.Spec : Prop :=
  ∀ n, P6956168914894485355.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P6043408412059345300

`A151800(∑[A158611(n+3)]-1)`
-/

namespace A076873.P6043408412059345300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P6043408412059345300

namespace A076873

/-- `A151800(∑[A158611(n+3)]-1)` -/
def P6043408412059345300.Spec : Prop :=
  ∀ n, P6043408412059345300.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P5312718046600526098

`A151800(∑[A006093(n+1)]+n)`
-/

namespace A076873.P5312718046600526098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A076873.P5312718046600526098

namespace A076873

/-- `A151800(∑[A006093(n+1)]+n)` -/
def P5312718046600526098.Spec : Prop :=
  ∀ n, P5312718046600526098.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P12239423518825569885

`A151800(A160793(2*(n+1))-1)`
-/

namespace A076873.P12239423518825569885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A160793 (2 * (n + 1)) - 1).toNat

end

end A076873.P12239423518825569885

namespace A076873

/-- `A151800(A160793(2*(n+1))-1)` -/
def P12239423518825569885.Spec : Prop :=
  ∀ n, P12239423518825569885.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P1065244797651596976

`A151800(∑[A003961(a(n-1))])` with `a(0)=1, a(1)=3`
-/

namespace A076873.P1065244797651596976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A003961 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P1065244797651596976

namespace A076873

/-- `A151800(∑[A003961(a(n-1))])` -/
def P1065244797651596976.Spec : Prop :=
  ∀ n, P1065244797651596976.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P1433701197062614354

`A151800(∑[record[A006530(n+2)]]-1)`
-/

namespace A076873.P1433701197062614354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P1433701197062614354

namespace A076873

/-- `A151800(∑[record[A006530(n+2)]]-1)` -/
def P1433701197062614354.Spec : Prop :=
  ∀ n, P1433701197062614354.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P921923981525042811

`A151800(∑[record[A014963(n+2)]]-1)`
-/

namespace A076873.P921923981525042811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P921923981525042811

namespace A076873

/-- `A151800(∑[record[A014963(n+2)]]-1)` -/
def P921923981525042811.Spec : Prop :=
  ∀ n, P921923981525042811.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P848674264886954141

`A151800(∑[record[A020639(n+2)]]-1)`
-/

namespace A076873.P848674264886954141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P848674264886954141

namespace A076873

/-- `A151800(∑[record[A020639(n+2)]]-1)` -/
def P848674264886954141.Spec : Prop :=
  ∀ n, P848674264886954141.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P9012239531157109620

`A151800(∑[p?[A111234(n+1)]]-1)`
-/

namespace A076873.P9012239531157109620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A076873.P9012239531157109620

namespace A076873

/-- `A151800(∑[p?[A111234(n+1)]]-1)` -/
def P9012239531157109620.Spec : Prop :=
  ∀ n, P9012239531157109620.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P14318684002581657316

`A151800(∑[record[A006530(2*n+1)]])`
-/

namespace A076873.P14318684002581657316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P14318684002581657316

namespace A076873

/-- `A151800(∑[record[A006530(2*n+1)]])` -/
def P14318684002581657316.Spec : Prop :=
  ∀ n, P14318684002581657316.a n = A076873 (n + 1)

end A076873

/-! ## A076873.P1568091521754920523

`A151800(∑[record[A014963(2*n+1)]])`
-/

namespace A076873.P1568091521754920523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076873.P1568091521754920523

namespace A076873

/-- `A151800(∑[record[A014963(2*n+1)]])` -/
def P1568091521754920523.Spec : Prop :=
  ∀ n, P1568091521754920523.a n = A076873 (n + 1)

end A076873

/-!
# A076874: a(n) = n - floor ( ( 4*n + 1 )^(1/2) ).

The programs for A076874, the canonical program `A076874.P6285611246801135770` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076874 has offset 3).

The definition of A076874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+3-floor((4*(n+3)+1)^(1/2))` (program `A076874.P6285611246801135770`, by `A076874.P6285611246801135770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076874.P6285611246801135770

`n+3-floor((4*(n+3)+1)^(1/2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076874

/-- `n+3-floor((4*(n+3)+1)^(1/2))` -/
def P6285611246801135770.Spec : Prop :=
  ∀ n, P6285611246801135770.a n = A076874 (n + 3)

theorem P6285611246801135770.correct : P6285611246801135770.Spec := by
  intro n
  simp only [A076874, Nat.add_sub_cancel]

end A076874

/-! ## A076874.P15380489360394254073

`floor(record[n-2*sqrt(n)])`
-/

namespace A076874.P15380489360394254073
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - 2 * Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A076874.P15380489360394254073

namespace A076874

/-- `floor(record[n-2*sqrt(n)])` -/
def P15380489360394254073.Spec : Prop :=
  ∀ n, P15380489360394254073.a n = A076874 (n + 3)

end A076874

/-! ## A076874.P6577646065855789471

`∑[char[A183869(n)]]`
-/

namespace A076874.P6577646065855789471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076874.P6577646065855789471

namespace A076874

/-- `∑[char[A183869(n)]]` -/
def P6577646065855789471.Spec : Prop :=
  ∀ n, (P6577646065855789471.a n : ℤ) = A076874 (n + 3)

end A076874

/-! ## A076874.P12579439750352727506

`A000523(A225391(n))`
-/

namespace A076874.P12579439750352727506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A225391 n).toNat

end

end A076874.P12579439750352727506

namespace A076874

/-- `A000523(A225391(n))` -/
def P12579439750352727506.Spec : Prop :=
  ∀ n, P12579439750352727506.a n = A076874 (n + 3)

end A076874

/-! ## A076874.P17944065911761308292

`A000523(A282240(n+1))`
-/

namespace A076874.P17944065911761308292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A282240 (n + 1)).toNat

end

end A076874.P17944065911761308292

namespace A076874

/-- `A000523(A282240(n+1))` -/
def P17944065911761308292.Spec : Prop :=
  ∀ n, P17944065911761308292.a n = A076874 (n + 3)

end A076874

/-!
# A076875: Meandric numbers for a curve crossing two perpendicular lines at n points.

The programs for A076875, there is no canonical definition to state claims against.
-/

/-! ## A076875.P9797890562628943243

`∑[A111439(A281433(n))]`
-/

namespace A076875.P9797890562628943243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A281433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076875.P9797890562628943243

/-! ## A076875.P5959459336333099732

`A357981(A122086(n+2))`
-/

namespace A076875.P5959459336333099732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357981 (A122086 (n + 2)).toNat

end

end A076875.P5959459336333099732

/-! ## A076875.P14271048702642446154

`A357981(A125702(n+2))`
-/

namespace A076875.P14271048702642446154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357981 (A125702 (n + 2)).toNat

end

end A076875.P14271048702642446154

/-!
# A076876: Meandric numbers for a river crossing two parallel roads at n points.

The programs for A076876, there is no canonical definition to state claims against.
-/

/-! ## A076876.P1293193289559322591

`A380367(∑[n+1]+n)`
-/

namespace A076876.P1293193289559322591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A076876.P1293193289559322591

/-! ## A076876.P9777214740003718928

`A380367(A034856(n+1))+A132440(3*n)`
-/

namespace A076876.P9777214740003718928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A034856 (n + 1)).toNat + A132440 (3 * n)

end

end A076876.P9777214740003718928

/-!
# A076877: a(n) = A020330(n) / n.

The programs for A076877, the canonical program `A076877.P347906767039016912` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076877 has offset 1).

The definition of A076877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076877.P347906767039016912

`1+2*A053644(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076877

/-- `1+2*A053644(n+1)` -/
def P347906767039016912.Spec : Prop :=
  ∀ n, P347906767039016912.a n = A076877 (n + 1)

theorem P347906767039016912.correct : P347906767039016912.Spec := by
  intro n
  simp only [A076877, Nat.add_sub_cancel]

end A076877

/-! ## A076877.P642757153882212123

`A020330(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076877.P642757153882212123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020330 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076877.P642757153882212123

namespace A076877

/-- `A020330(n+1)/(n+1)` -/
def P642757153882212123.Spec : Prop :=
  ∀ n, P642757153882212123.a n = (A076877 (n + 1) : ℚ)

end A076877

/-! ## A076877.P17852367278408200997

`1+A062383(n+1)`
-/

namespace A076877.P17852367278408200997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A062383 (n + 1)

end

end A076877.P17852367278408200997

namespace A076877

/-- `1+A062383(n+1)` -/
def P17852367278408200997.Spec : Prop :=
  ∀ n, P17852367278408200997.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P9225338094347699461

`lt[xor(n, floor(n/2)), n]-n`
-/

namespace A076877.P9225338094347699461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A076877.P9225338094347699461

namespace A076877

/-- `lt[xor(n, floor(n/2)), n]-n` -/
def P9225338094347699461.Spec : Prop :=
  ∀ n, P9225338094347699461.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P16962067499286216894

`2^(floor(log2(n+1))+1)+1`
-/

namespace A076877.P16962067499286216894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (Nat.log 2 (n + 1) + 1) + 1

end

end A076877.P16962067499286216894

namespace A076877

/-- `2^(floor(log2(n+1))+1)+1` -/
def P16962067499286216894.Spec : Prop :=
  ∀ n, (P16962067499286216894.a n : ℤ) = A076877 (n + 1)

end A076877

/-! ## A076877.P8939639336866121754

`and(2*n+3, 2-a(n-1))` with `a(0)=3`
-/

namespace A076877.P8939639336866121754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land (2 * n + 3 : ℤ) (2 - a (n - 1))

end

end A076877.P8939639336866121754

namespace A076877

/-- `and(2*n+3, 2-a(n-1))` -/
def P8939639336866121754.Spec : Prop :=
  ∀ n, P8939639336866121754.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P9843621061896792771

`A048578(floor(log2(n+1)))`
-/

namespace A076877.P9843621061896792771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (Nat.log 2 (n + 1))

end

end A076877.P9843621061896792771

namespace A076877

/-- `A048578(floor(log2(n+1)))` -/
def P9843621061896792771.Spec : Prop :=
  ∀ n, P9843621061896792771.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P1255709363434291746

`A000051(ceil(log2(n+2)))`
-/

namespace A076877.P1255709363434291746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat

end

end A076877.P1255709363434291746

namespace A076877

/-- `A000051(ceil(log2(n+2)))` -/
def P1255709363434291746.Spec : Prop :=
  ∀ n, P1255709363434291746.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P12385915080462337892

`A083318(ceil(log2(n+2)))`
-/

namespace A076877.P12385915080462337892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat

end

end A076877.P12385915080462337892

namespace A076877

/-- `A083318(ceil(log2(n+2)))` -/
def P12385915080462337892.Spec : Prop :=
  ∀ n, P12385915080462337892.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P110971941330081255

`A007479(A003817(n+1))`
-/

namespace A076877.P110971941330081255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007479 (A003817 (n + 1)).toNat

end

end A076877.P110971941330081255

namespace A076877

/-- `A007479(A003817(n+1))` -/
def P110971941330081255.Spec : Prop :=
  ∀ n, P110971941330081255.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P8366467868130279529

`A080307(A053644(n+1))`
-/

namespace A076877.P8366467868130279529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080307 (A053644 (n + 1)).toNat

end

end A076877.P8366467868130279529

namespace A076877

/-- `A080307(A053644(n+1))` -/
def P8366467868130279529.Spec : Prop :=
  ∀ n, P8366467868130279529.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P10466023100435469612

`A086341(A129972(n+1))`
-/

namespace A076877.P10466023100435469612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (A129972 (n + 1)).toNat

end

end A076877.P10466023100435469612

namespace A076877

/-- `A086341(A129972(n+1))` -/
def P10466023100435469612.Spec : Prop :=
  ∀ n, P10466023100435469612.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P9976052498732732053

`A118113(A124229(n+1))`
-/

namespace A076877.P9976052498732732053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 (A124229 (n + 1)).toNat

end

end A076877.P9976052498732732053

namespace A076877

/-- `A118113(A124229(n+1))` -/
def P9976052498732732053.Spec : Prop :=
  ∀ n, P9976052498732732053.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P15324210104706633682

`A051032(A191682(n+1))`
-/

namespace A076877.P15324210104706633682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (A191682 (n + 1)).toNat

end

end A076877.P15324210104706633682

namespace A076877

/-- `A051032(A191682(n+1))` -/
def P15324210104706633682.Spec : Prop :=
  ∀ n, P15324210104706633682.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P13760897033884501395

`A065271(A053644(n+1)+1)`
-/

namespace A076877.P13760897033884501395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065271 (A053644 (n + 1) + 1).toNat

end

end A076877.P13760897033884501395

namespace A076877

/-- `A065271(A053644(n+1)+1)` -/
def P13760897033884501395.Spec : Prop :=
  ∀ n, P13760897033884501395.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P4056116540142509864

`xor(A004442(n), A206332(n+1))`
-/

namespace A076877.P4056116540142509864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A206332 (n + 1))

end

end A076877.P4056116540142509864

namespace A076877

/-- `xor(A004442(n), A206332(n+1))` -/
def P4056116540142509864.Spec : Prop :=
  ∀ n, P4056116540142509864.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P4646033859533326768

`gcd(A020330(n+1), A391588(n+1))`
-/

namespace A076877.P4646033859533326768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020330 (n + 1)) (A391588 (n + 1))

end

end A076877.P4646033859533326768

namespace A076877

/-- `gcd(A020330(n+1), A391588(n+1))` -/
def P4646033859533326768.Spec : Prop :=
  ∀ n, (P4646033859533326768.a n : ℤ) = A076877 (n + 1)

end A076877

/-! ## A076877.P12638139956728286652

`xor(A079946(n+1), A171763(n+1))`
-/

namespace A076877.P12638139956728286652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079946 (n + 1)) (A171763 (n + 1))

end

end A076877.P12638139956728286652

namespace A076877

/-- `xor(A079946(n+1), A171763(n+1))` -/
def P12638139956728286652.Spec : Prop :=
  ∀ n, P12638139956728286652.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P11260972176080152010

`A003188(A003817(n+1)+A003817(n+1))`
-/

namespace A076877.P11260972176080152010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003817 (n + 1) + A003817 (n + 1)).toNat

end

end A076877.P11260972176080152010

namespace A076877

/-- `A003188(A003817(n+1)+A003817(n+1))` -/
def P11260972176080152010.Spec : Prop :=
  ∀ n, P11260972176080152010.a n = A076877 (n + 1)

end A076877

/-! ## A076877.P8304258740203155225

`A094373(A070941(n+1))`
-/

namespace A076877.P8304258740203155225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A070941 (n + 1)).toNat

end

end A076877.P8304258740203155225

namespace A076877

/-- `A094373(A070941(n+1))` -/
def P8304258740203155225.Spec : Prop :=
  ∀ n, P8304258740203155225.a n = A076877 (n + 1)

end A076877

/-!
# A076878: a(n) = ceiling(n^(1/n))^n - n.

The programs for A076878, the canonical program `A076878.P18161205595024699814` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076878 has offset 1).

The definition of A076878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(1/(n+1)))^(n+1)-(n+1)` (program `A076878.P18161205595024699814`, by `A076878.P18161205595024699814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076878.P18161205595024699814

`ceil((n+1)^(1/(n+1)))^(n+1)-(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076878

/-- `ceil((n+1)^(1/(n+1)))^(n+1)-(n+1)` -/
def P18161205595024699814.Spec : Prop :=
  ∀ n, P18161205595024699814.a n = A076878 (n + 1)

theorem P18161205595024699814.correct : P18161205595024699814.Spec := by
  intro n
  simp only [A076878, Nat.add_sub_cancel]

end A076878

/-! ## A076878.P2666659004522374221

`∑[ogf((2x-3x^2+2x^3)/(1-3x+2x^2))]`
-/

namespace A076878.P2666659004522374221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P2666659004522374221

namespace A076878

/-- `∑[ogf((2x-3x^2+2x^3)/(1-3x+2x^2))]` -/
def P2666659004522374221.Spec : Prop :=
  ∀ n, P2666659004522374221.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P7082323216201665301

`ogf((2x-3x^2+2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A076878.P7082323216201665301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3, 2] [1, -4, 5, -2] n

end

end A076878.P7082323216201665301

namespace A076878

/-- `ogf((2x-3x^2+2x^3)/(1-4x+5x^2-2x^3))` -/
def P7082323216201665301.Spec : Prop :=
  ∀ n, P7082323216201665301.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P8400456147671851908

`∑[lcm(2, a(n-1))+1]` with `a(0)=0, a(1)=2`
-/

namespace A076878.P8400456147671851908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P8400456147671851908

namespace A076878

/-- `∑[lcm(2, a(n-1))+1]` -/
def P8400456147671851908.Spec : Prop :=
  ∀ n, (P8400456147671851908.a n : ℤ) = A076878 (n + 1)

end A076878

/-! ## A076878.P2353983702408920447

`∑[2*a(n-1)+1]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A076878.P2353983702408920447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P2353983702408920447

namespace A076878

/-- `∑[2*a(n-1)+1]` -/
def P2353983702408920447.Spec : Prop :=
  ∀ n, (P2353983702408920447.a n : ℤ) = A076878 (n + 1)

end A076878

/-! ## A076878.P6266394530736155823

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A076878.P6266394530736155823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P6266394530736155823

namespace A076878

/-- `∑[∑[2*a(n-1)]]` -/
def P6266394530736155823.Spec : Prop :=
  ∀ n, (P6266394530736155823.a n : ℤ) = A076878 (n + 1)

end A076878

/-! ## A076878.P2264825810051856106

`2*(a(n-1)-(1-n)/2)` with `a(0)=0, a(1)=2`
-/

namespace A076878.P2264825810051856106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 1) - (1 - (n : ℤ) : ℚ) / 2)

end

end A076878.P2264825810051856106

namespace A076878

/-- `2*(a(n-1)-(1-n)/2)` -/
def P2264825810051856106.Spec : Prop :=
  ∀ n, P2264825810051856106.a n = (A076878 (n + 1) : ℚ)

end A076878

/-! ## A076878.P13190697321525326670

`∑[or(a(n-1)+1, a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A076878.P13190697321525326670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.lor (f1 (n - 1) + 1) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P13190697321525326670

namespace A076878

/-- `∑[or(a(n-1)+1, a(n-1))]` -/
def P13190697321525326670.Spec : Prop :=
  ∀ n, (P13190697321525326670.a n : ℤ) = A076878 (n + 1)

end A076878

/-! ## A076878.P3892396675999416141

`∑[a(n-1)+a(n-1)+1]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A076878.P3892396675999416141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P3892396675999416141

namespace A076878

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P3892396675999416141.Spec : Prop :=
  ∀ n, (P3892396675999416141.a n : ℤ) = A076878 (n + 1)

end A076878

/-! ## A076878.P10876451102727862334

`floor(a(n-1)+(a(n-1)-1)%a(n-1)+n)` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A076878.P10876451102727862334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + Int.tmod (a (n - 1) - 1) (a (n - 1)) + (n : ℤ)

end

end A076878.P10876451102727862334

namespace A076878

/-- `floor(a(n-1)+(a(n-1)-1)%a(n-1)+n)` -/
def P10876451102727862334.Spec : Prop :=
  ∀ n, P10876451102727862334.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P14096464663625545861

`∑[A130103(n)+n]`
-/

namespace A076878.P14096464663625545861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130103 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076878.P14096464663625545861

namespace A076878

/-- `∑[A130103(n)+n]` -/
def P14096464663625545861.Spec : Prop :=
  ∀ n, P14096464663625545861.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P9022865876543373034

`record[Δ[A390532(n+3)]]`
-/

namespace A076878.P9022865876543373034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076878.P9022865876543373034

namespace A076878

/-- `record[Δ[A390532(n+3)]]` -/
def P9022865876543373034.Spec : Prop :=
  ∀ n, P9022865876543373034.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P6833962073651500448

`xor(A004442(n), A095121(n))`
-/

namespace A076878.P6833962073651500448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A095121 n)

end

end A076878.P6833962073651500448

namespace A076878

/-- `xor(A004442(n), A095121(n))` -/
def P6833962073651500448.Spec : Prop :=
  ∀ n, P6833962073651500448.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P4368888638366172734

`xor(A028310(n), A126646(n))`
-/

namespace A076878.P4368888638366172734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028310 n) (A126646 n)

end

end A076878.P4368888638366172734

namespace A076878

/-- `xor(A028310(n), A126646(n))` -/
def P4368888638366172734.Spec : Prop :=
  ∀ n, P4368888638366172734.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P9482425877531947888

`xor(A000295(n), A155559(n))`
-/

namespace A076878.P9482425877531947888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000295 n) (A155559 n)

end

end A076878.P9482425877531947888

namespace A076878

/-- `xor(A000295(n), A155559(n))` -/
def P9482425877531947888.Spec : Prop :=
  ∀ n, P9482425877531947888.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P14079370958965590349

`xor(A006127(n), A255047(n))`
-/

namespace A076878.P14079370958965590349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006127 n) (A255047 n)

end

end A076878.P14079370958965590349

namespace A076878

/-- `xor(A006127(n), A255047(n))` -/
def P14079370958965590349.Spec : Prop :=
  ∀ n, P14079370958965590349.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P3119924576061753501

`xor(A084173(n), A135528(n+1))`
-/

namespace A076878.P3119924576061753501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084173 n) (A135528 (n + 1))

end

end A076878.P3119924576061753501

namespace A076878

/-- `xor(A084173(n), A135528(n+1))` -/
def P3119924576061753501.Spec : Prop :=
  ∀ n, P3119924576061753501.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P13717456780342262120

`xor(A048724(n), A244331(n+1))`
-/

namespace A076878.P13717456780342262120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048724 n) (A244331 (n + 1))

end

end A076878.P13717456780342262120

namespace A076878

/-- `xor(A048724(n), A244331(n+1))` -/
def P13717456780342262120.Spec : Prop :=
  ∀ n, P13717456780342262120.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P13707973896570840958

`A000325(n+1)*A266070(2*n+1)`
-/

namespace A076878.P13707973896570840958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1) * A266070 (2 * n + 1)

end

end A076878.P13707973896570840958

namespace A076878

/-- `A000325(n+1)*A266070(2*n+1)` -/
def P13707973896570840958.Spec : Prop :=
  ∀ n, P13707973896570840958.a n = A076878 (n + 1)

end A076878

/-! ## A076878.P16788378648485609596

`A000325(n+1)*A347523(2*n+1)`
-/

namespace A076878.P16788378648485609596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1) * A347523 (2 * n + 1)

end

end A076878.P16788378648485609596

namespace A076878

/-- `A000325(n+1)*A347523(2*n+1)` -/
def P16788378648485609596.Spec : Prop :=
  ∀ n, P16788378648485609596.a n = A076878 (n + 1)

end A076878

/-!
# A076879: In binary representation: number of substrings of n^2 having the same number of 0's and 1's as n.

The programs for A076879, there is no canonical definition to state claims against.
-/

/-! ## A076879.P13146306812506597412

`A004074(A162598(n+1)%A075963(n))`
-/

namespace A076879.P13146306812506597412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (Int.tmod (A162598 (n + 1)) (A075963 n)).toNat

end

end A076879.P13146306812506597412

/-! ## A076879.P12523323027346707297

`A004074(A023931(n)!*A162598(n+1))`
-/

namespace A076879.P12523323027346707297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 ((Nat.factorial (A023931 n).toNat : ℤ) * A162598 (n + 1)).toNat

end

end A076879.P12523323027346707297

/-! ## A076879.P15278879496578494178

`A004074(A162598(n+1))^(A055764(n)+1)`
-/

namespace A076879.P15278879496578494178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (A162598 (n + 1)).toNat : ℚ) ^ (A055764 n + 1 : ℤ)

end

end A076879.P15278879496578494178

/-! ## A076879.P8038361940568655139

`A336040(n+1)+A007814(A037260(n))`
-/

namespace A076879.P8038361940568655139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1) + A007814 (A037260 n).toNat

end

end A076879.P8038361940568655139

/-! ## A076879.P1556188645060999720

`gcd(A213731(A240062(3*n+1)), A213731(n))`
-/

namespace A076879.P1556188645060999720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213731 (A240062 (3 * n + 1)).toNat) (A213731 n)

end

end A076879.P1556188645060999720

/-!
# A076881: pi(n) - floor(n / log(n)), where pi(n) = the number of primes <= n.

The programs for A076881, the canonical program `A076881.P13252112177777502547` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076881 has offset 2).

The definition of A076881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+2)-floor((n+2)/log(n+2))` (program `A076881.P13252112177777502547`, by `A076881.P13252112177777502547.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076881.P13252112177777502547

`A000720(n+2)-floor((n+2)/log(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076881

/-- `A000720(n+2)-floor((n+2)/log(n+2))` -/
def P13252112177777502547.Spec : Prop :=
  ∀ n, P13252112177777502547.a n = A076881 (n + 2)

theorem P13252112177777502547.correct : P13252112177777502547.Spec := by
  intro n
  simp only [A076881, Nat.add_sub_cancel]

end A076881

/-! ## A076881.P11907112120079568248

`A076882(n+2)+1`
-/

namespace A076881.P11907112120079568248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076882 (n + 2) + 1

end

end A076881.P11907112120079568248

namespace A076881

/-- `A076882(n+2)+1` -/
def P11907112120079568248.Spec : Prop :=
  ∀ n, P11907112120079568248.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P18022169618499632962

`∑[A010051(n+2)]-floor((n+2)/log(n+2))`
-/

namespace A076881.P18022169618499632962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A076881.P18022169618499632962

namespace A076881

/-- `∑[A010051(n+2)]-floor((n+2)/log(n+2))` -/
def P18022169618499632962.Spec : Prop :=
  ∀ n, P18022169618499632962.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P17155107495476550935

`∑[floor(1/A001222(n+2))]-A050500(n+2)`
-/

namespace A076881.P17155107495476550935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050500 (n + 2)

end

end A076881.P17155107495476550935

namespace A076881

/-- `∑[floor(1/A001222(n+2))]-A050500(n+2)` -/
def P17155107495476550935.Spec : Prop :=
  ∀ n, P17155107495476550935.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P15759270714666639657

`A020725(A000720(n+2))-A050501(n+2)`
-/

namespace A076881.P15759270714666639657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000720 (n + 2)).toNat - A050501 (n + 2)

end

end A076881.P15759270714666639657

namespace A076881

/-- `A020725(A000720(n+2))-A050501(n+2)` -/
def P15759270714666639657.Spec : Prop :=
  ∀ n, P15759270714666639657.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P11870378792116110512

`A047784(n+2)-(A052435(n+2)+A050500(n+2))`
-/

namespace A076881.P11870378792116110512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (n + 2) - (A052435 (n + 2) + A050500 (n + 2))

end

end A076881.P11870378792116110512

namespace A076881

/-- `A047784(n+2)-(A052435(n+2)+A050500(n+2))` -/
def P11870378792116110512.Spec : Prop :=
  ∀ n, P11870378792116110512.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P2440540885232567450

`Δ[A046992(n+1)]-floor((n+2)/log(n+2))`
-/

namespace A076881.P2440540885232567450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A076881.P2440540885232567450

namespace A076881

/-- `Δ[A046992(n+1)]-floor((n+2)/log(n+2))` -/
def P2440540885232567450.Spec : Prop :=
  ∀ n, P2440540885232567450.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P1815186316545984783

`A036234(n+2)-A050501(n+2)`
-/

namespace A076881.P1815186316545984783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 2) - A050501 (n + 2)

end

end A076881.P1815186316545984783

namespace A076881

/-- `A036234(n+2)-A050501(n+2)` -/
def P1815186316545984783.Spec : Prop :=
  ∀ n, P1815186316545984783.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P10446885220433504105

`A230980(n+2)-A050500(n+2)`
-/

namespace A076881.P10446885220433504105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2) - A050500 (n + 2)

end

end A076881.P10446885220433504105

namespace A076881

/-- `A230980(n+2)-A050500(n+2)` -/
def P10446885220433504105.Spec : Prop :=
  ∀ n, P10446885220433504105.a n = A076881 (n + 2)

end A076881

/-! ## A076881.P9401041772548621845

`A056172(2*(n+2))-A050500(n+2)`
-/

namespace A076881.P9401041772548621845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 2)) - A050500 (n + 2)

end

end A076881.P9401041772548621845

namespace A076881

/-- `A056172(2*(n+2))-A050500(n+2)` -/
def P9401041772548621845.Spec : Prop :=
  ∀ n, P9401041772548621845.a n = A076881 (n + 2)

end A076881

/-!
# A076882: pi(n) - ceiling(n / log(n)), where pi(n) = the number of primes <= n.

The programs for A076882, the canonical program `A076882.P938491703345637959` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076882 has offset 2).

The definition of A076882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+2)-ceil((n+2)/log(n+2))` (program `A076882.P938491703345637959`, by `A076882.P938491703345637959.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076882.P938491703345637959

`A000720(n+2)-ceil((n+2)/log(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076882

/-- `A000720(n+2)-ceil((n+2)/log(n+2))` -/
def P938491703345637959.Spec : Prop :=
  ∀ n, P938491703345637959.a n = A076882 (n + 2)

theorem P938491703345637959.correct : P938491703345637959.Spec := by
  intro n
  simp only [A076882, Nat.add_sub_cancel]

end A076882

/-! ## A076882.P3937786556317545022

`A076881(n+2)-1`
-/

namespace A076882.P3937786556317545022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076881 (n + 2) - 1

end

end A076882.P3937786556317545022

namespace A076882

/-- `A076881(n+2)-1` -/
def P3937786556317545022.Spec : Prop :=
  ∀ n, P3937786556317545022.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P14121902076688478611

`∑[A010051(n+2)]-floor((n+2)/log(n+2))-1`
-/

namespace A076882.P14121902076688478611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋ - 1

end

end A076882.P14121902076688478611

namespace A076882

/-- `∑[A010051(n+2)]-floor((n+2)/log(n+2))-1` -/
def P14121902076688478611.Spec : Prop :=
  ∀ n, P14121902076688478611.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P6931810106605805011

`A106400(gcd(n, n+1))+A076881(n+2)`
-/

namespace A076882.P6931810106605805011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Nat.gcd n (n + 1)) + A076881 (n + 2)

end

end A076882.P6931810106605805011

namespace A076882

/-- `A106400(gcd(n, n+1))+A076881(n+2)` -/
def P6931810106605805011.Spec : Prop :=
  ∀ n, P6931810106605805011.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P223669018242369089

`∑[floor(1/A001222(n+2))]-A050500(n+2)-1`
-/

namespace A076882.P223669018242369089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050500 (n + 2) - 1

end

end A076882.P223669018242369089

namespace A076882

/-- `∑[floor(1/A001222(n+2))]-A050500(n+2)-1` -/
def P223669018242369089.Spec : Prop :=
  ∀ n, P223669018242369089.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P6018680615313689770

`Δ[A046992(n+1)]-ceil((n+2)/log(n+2))`
-/

namespace A076882.P6018680615313689770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌈(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌉

end

end A076882.P6018680615313689770

namespace A076882

/-- `Δ[A046992(n+1)]-ceil((n+2)/log(n+2))` -/
def P6018680615313689770.Spec : Prop :=
  ∀ n, P6018680615313689770.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P9185156688918712814

`A033270(n+2)-A050500(n+2)`
-/

namespace A076882.P9185156688918712814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 2) - A050500 (n + 2)

end

end A076882.P9185156688918712814

namespace A076882

/-- `A033270(n+2)-A050500(n+2)` -/
def P9185156688918712814.Spec : Prop :=
  ∀ n, P9185156688918712814.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P8200187289573265660

`A036234(n+2)-A050501(n+2)-1`
-/

namespace A076882.P8200187289573265660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 2) - A050501 (n + 2) - 1

end

end A076882.P8200187289573265660

namespace A076882

/-- `A036234(n+2)-A050501(n+2)-1` -/
def P8200187289573265660.Spec : Prop :=
  ∀ n, P8200187289573265660.a n = A076882 (n + 2)

theorem P8200187289573265660.correct : P8200187289573265660.Spec := by
  intro n
  simp only [A076882, Nat.add_sub_cancel, A076882.P8200187289573265660.a, A076882.P938491703345637959.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A050501, A050501.P9725214682591786112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076882

/-! ## A076882.P1845203095343228880

`A230980(n+2)-A050501(n+2)`
-/

namespace A076882.P1845203095343228880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2) - A050501 (n + 2)

end

end A076882.P1845203095343228880

namespace A076882

/-- `A230980(n+2)-A050501(n+2)` -/
def P1845203095343228880.Spec : Prop :=
  ∀ n, P1845203095343228880.a n = A076882 (n + 2)

end A076882

/-! ## A076882.P15442036043851443358

`A174737(6*n+1)+A076881(n+2)`
-/

namespace A076882.P15442036043851443358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174737 (6 * n + 1) + A076881 (n + 2)

end

end A076882.P15442036043851443358

namespace A076882

/-- `A174737(6*n+1)+A076881(n+2)` -/
def P15442036043851443358.Spec : Prop :=
  ∀ n, P15442036043851443358.a n = A076882 (n + 2)

end A076882

/-!
# A076883: Let u(0)=1, u(n) = 5/2 * floor(u(n-1)); then a(n) = (2/5)*u(n).

The programs for A076883, the canonical program `A076883.P12210396069954038646` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076883 has offset 1).

The definition of A076883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076883.P12210396069954038646

`floor(5/2*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076883

/-- `floor(5/2*a(n-1))` -/
def P12210396069954038646.Spec : Prop :=
  ∀ n, P12210396069954038646.a n = A076883 (n + 1)

theorem P12210396069954038646.correct : P12210396069954038646.Spec := by
  intro n
  simp only [A076883, Nat.add_sub_cancel]

end A076883

/-! ## A076883.P5165070860061728560

`floor(a(n-1)/(1-3/5))` with `a(0)=1`
-/

namespace A076883.P5165070860061728560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (3 : ℚ) / 5)⌋

end

end A076883.P5165070860061728560

namespace A076883

/-- `floor(a(n-1)/(1-3/5))` -/
def P5165070860061728560.Spec : Prop :=
  ∀ n, P5165070860061728560.a n = A076883 (n + 1)

theorem P5165070860061728560.correct : P5165070860061728560.Spec := by
  intro n
  simp only [A076883, Nat.add_sub_cancel, A076883.P5165070860061728560.a, A076883.P12210396069954038646.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076883

/-! ## A076883.P12444738390395288942

`(a(n-1)-a(n-1)%2)/2+2*a(n-1)` with `a(0)=1`
-/

namespace A076883.P12444738390395288942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2 + 2 * a (n - 1)

end

end A076883.P12444738390395288942

namespace A076883

/-- `(a(n-1)-a(n-1)%2)/2+2*a(n-1)` -/
def P12444738390395288942.Spec : Prop :=
  ∀ n, P12444738390395288942.a n = (A076883 (n + 1) : ℚ)

end A076883

/-! ## A076883.P7132527661188937903

`and(5*a(n-1), -2)/2` with `a(0)=1`
-/

namespace A076883.P7132527661188937903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.land (SequenceMachineLib.roundAway (5 * a (n - 1))) (-2) : ℚ) / 2

end

end A076883.P7132527661188937903

namespace A076883

/-- `and(5*a(n-1), -2)/2` -/
def P7132527661188937903.Spec : Prop :=
  ∀ n, P7132527661188937903.a n = (A076883 (n + 1) : ℚ)

end A076883

/-! ## A076883.P6848174873336091895

`ceil((5*a(n-1)-1)/2)` with `a(0)=1`
-/

namespace A076883.P6848174873336091895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(5 * a (n - 1) - 1 : ℚ) / 2⌉

end

end A076883.P6848174873336091895

namespace A076883

/-- `ceil((5*a(n-1)-1)/2)` -/
def P6848174873336091895.Spec : Prop :=
  ∀ n, P6848174873336091895.a n = A076883 (n + 1)

end A076883

/-! ## A076883.P15591153941938654062

`round((5*a(n-1)-1)/2)` with `a(0)=1`
-/

namespace A076883.P15591153941938654062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((5 * a (n - 1) - 1 : ℚ) / 2)

end

end A076883.P15591153941938654062

namespace A076883

/-- `round((5*a(n-1)-1)/2)` -/
def P15591153941938654062.Spec : Prop :=
  ∀ n, P15591153941938654062.a n = A076883 (n + 1)

end A076883

/-! ## A076883.P11630156759508710112

`A191723(∑[n]+1)`
-/

namespace A076883.P11630156759508710112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076883.P11630156759508710112

namespace A076883

/-- `A191723(∑[n]+1)` -/
def P11630156759508710112.Spec : Prop :=
  ∀ n, P11630156759508710112.a n = A076883 (n + 1)

end A076883

/-!
# A076885: Let u(0)=1, u(1)=1 u(n) = u(n-1) + u(n-2) - n*z where z = (5-sqrt(5))/10 =0.27..., then a(n)=floor(u(n)).

The programs for A076885, the canonical program `A076885.P12736356851806597047` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076885 has offset 0).

The definition of A076885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076885.P16795308377561788058

`floor((floor(acot(n))+3+n)/(ϕ+2))`
-/

namespace A076885.P16795308377561788058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊SequenceMachineLib.acot (n : ℝ)⌋ + 3 + (n : ℤ) : ℝ) / (Real.goldenRatio + 2)⌋

end

end A076885.P16795308377561788058

namespace A076885

/-- `floor((floor(acot(n))+3+n)/(ϕ+2))` -/
def P16795308377561788058.Spec : Prop :=
  ∀ n, P16795308377561788058.a n = A076885 n

end A076885

/-! ## A076885.P2082504556513428084

`floor((n+2)²/((ϕ+2)*(n+1)))`
-/

namespace A076885.P2082504556513428084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℝ) / ((Real.goldenRatio + 2) * (n + 1 : ℝ))⌋

end

end A076885.P2082504556513428084

namespace A076885

/-- `floor((n+2)²/((ϕ+2)*(n+1)))` -/
def P2082504556513428084.Spec : Prop :=
  ∀ n, P2082504556513428084.a n = A076885 n

end A076885

/-! ## A076885.P4913489274425404300

`∑[A221150(ceil(sqrt(n²+4)))]`
-/

namespace A076885.P4913489274425404300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076885.P4913489274425404300

namespace A076885

/-- `∑[A221150(ceil(sqrt(n²+4)))]` -/
def P4913489274425404300.Spec : Prop :=
  ∀ n, P4913489274425404300.a n = A076885 n

end A076885

/-! ## A076885.P12736356851806597047

`A221150(n+1)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076885

/-- `A221150(n+1)+a(n-1)` -/
def P12736356851806597047.Spec : Prop :=
  ∀ n, P12736356851806597047.a n = A076885 n

theorem P12736356851806597047.correct : P12736356851806597047.Spec := by
  intro n
  simp only [A076885]

end A076885

/-! ## A076885.P9752187315592715901

`A060144(n+2-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A076885.P9752187315592715901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060144 ((n + 2 : ℤ) - a (n - 1)).toNat

end

end A076885.P9752187315592715901

namespace A076885

/-- `A060144(n+2-a(n-1))` -/
def P9752187315592715901.Spec : Prop :=
  ∀ n, P9752187315592715901.a n = A076885 n

end A076885

/-! ## A076885.P12808256443799639792

`A287727(n+1)-A087156(n+1)`
-/

namespace A076885.P12808256443799639792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (n + 1) - A087156 (n + 1)

end

end A076885.P12808256443799639792

namespace A076885

/-- `A287727(n+1)-A087156(n+1)` -/
def P12808256443799639792.Spec : Prop :=
  ∀ n, P12808256443799639792.a n = A076885 n

end A076885

/-!
# A076886: Smallest palindrome with exactly n prime factors (counted with multiplicity).

The programs for A076886, there is no canonical definition to state claims against.
-/

/-! ## A076886.P9832806245296292446

`A309565(C(n, ∏{e}[n+1, #]))`
-/

namespace A076886.P9832806245296292446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309565 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A076886.P9832806245296292446

/-! ## A076886.P6759674207114401520

`A046385(C(n, ceil(xor(n, n+1)/4)))`
-/

namespace A076886.P6759674207114401520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046385 (Nat.choose n ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat)

end

end A076886.P6759674207114401520

/-! ## A076886.P17898037566659122808

`A046385(C(n, (n+1)/∏{p}[n+1, #]))`
-/

namespace A076886.P17898037566659122808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046385 (Nat.choose n (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A076886.P17898037566659122808

/-!
# A076887: Sum of divisors of nonzero palindromic numbers.

The programs for A076887, there is no canonical definition to state claims against.
-/

/-! ## A076887.P14376736117617103761

`A000203(A002113(n+2))`
-/

namespace A076887.P14376736117617103761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002113 (n + 2)).toNat

end

end A076887.P14376736117617103761

/-! ## A076887.P1185344920292690787

`∑{d}[∑[A086862(n+1)], #]`
-/

namespace A076887.P1185344920292690787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A076887.P1185344920292690787

/-! ## A076887.P15113500331361366554

`A000203(∑[A086862(n+1)])`
-/

namespace A076887.P15113500331361366554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076887.P15113500331361366554

/-! ## A076887.P18065939315090702568

`∑{d}[eq[n+1, A004086(n+1)]+1, #]`
-/

namespace A076887.P18065939315090702568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A076887.P18065939315090702568

/-! ## A076887.P5848733239107277161

`A000203(eq[1, A050782(n)])`
-/

namespace A076887.P5848733239107277161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076887.P5848733239107277161

/-! ## A076887.P17456898257742247899

`A000203(record[A047813(n+1)])`
-/

namespace A076887.P17456898257742247899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076887.P17456898257742247899

/-! ## A076887.P17828830372575478915

`A000203(record[A093030(n+1)])`
-/

namespace A076887.P17828830372575478915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076887.P17828830372575478915

/-! ## A076887.P2950690953305587664

`A000203(record[A262087(n+1)])`
-/

namespace A076887.P2950690953305587664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076887.P2950690953305587664

/-! ## A076887.P5569248707410079060

`A000203(record[A262188(n+1)])`
-/

namespace A076887.P5569248707410079060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076887.P5569248707410079060

/-! ## A076887.P4237336344435917133

`A000203(record[A265525(n+1)])`
-/

namespace A076887.P4237336344435917133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076887.P4237336344435917133

/-! ## A076887.P2576426495659997007

`A000203(record[A331472(n+1)])`
-/

namespace A076887.P2576426495659997007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076887.P2576426495659997007

/-! ## A076887.P1944244662386022909

`A000203(eq[n, A028310(A004086(n))])`
-/

namespace A076887.P1944244662386022909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076887.P1944244662386022909

/-! ## A076887.P3449672717732494354

`A039653(eq[A000007(n), A256756(n)])+1`
-/

namespace A076887.P3449672717732494354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A076887.P3449672717732494354

/-! ## A076887.P616395926303051294

`A039653(eq[A000038(n), A256756(n)])+1`
-/

namespace A076887.P616395926303051294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A076887.P616395926303051294

/-! ## A076887.P14149844391271313153

`A039653(eq[A000007(n), A338827(n)])+1`
-/

namespace A076887.P14149844391271313153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A076887.P14149844391271313153

/-! ## A076887.P4263456239537807783

`A039653(eq[A000038(n), A338827(n)])+1`
-/

namespace A076887.P4263456239537807783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A076887.P4263456239537807783

/-!
# A076888: a(n) is the number of divisors of the n-th positive palindromic number.

The programs for A076888, there is no canonical definition to state claims against.
-/

/-! ## A076888.P12294784291611312462

`A000005(A002113(n+2))`
-/

namespace A076888.P12294784291611312462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002113 (n + 2)).toNat

end

end A076888.P12294784291611312462

/-! ## A076888.P7318016518774896912

`∑{d}[A002113(n+2), gcd(#, A002385(n+2))]`
-/

namespace A076888.P7318016518774896912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A002385 (n + 2))

end

end A076888.P7318016518774896912

/-! ## A076888.P15497613243125968063

`A000005(∑[A086862(n+1)])`
-/

namespace A076888.P15497613243125968063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076888.P15497613243125968063

/-! ## A076888.P3014031616599287082

`A000005(A014187(n+1)^(1/3))`
-/

namespace A076888.P3014031616599287082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A014187 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A076888.P3014031616599287082

/-! ## A076888.P18340519606629103037

`A000005(eq[n+1, A004086(n+1)]+1)`
-/

namespace A076888.P18340519606629103037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076888.P18340519606629103037

/-! ## A076888.P14123652946740998145

`A000005(eq[1, A050782(n)])`
-/

namespace A076888.P14123652946740998145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076888.P14123652946740998145

/-! ## A076888.P4047373569280660818

`A000005(record[A047813(n+1)])`
-/

namespace A076888.P4047373569280660818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076888.P4047373569280660818

/-! ## A076888.P8235093237184518386

`A000005(record[A093030(n+1)])`
-/

namespace A076888.P8235093237184518386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076888.P8235093237184518386

/-! ## A076888.P17570212387435152909

`A000005(record[A262087(n+1)])`
-/

namespace A076888.P17570212387435152909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076888.P17570212387435152909

/-! ## A076888.P7639491253306672529

`A000005(record[A262188(n+1)])`
-/

namespace A076888.P7639491253306672529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076888.P7639491253306672529

/-! ## A076888.P15558201040446075119

`A000005(record[A265525(n+1)])`
-/

namespace A076888.P15558201040446075119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076888.P15558201040446075119

/-! ## A076888.P1059689681833170777

`A000005(record[A331472(n+1)])`
-/

namespace A076888.P1059689681833170777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076888.P1059689681833170777

/-! ## A076888.P18148476048695771708

`A000005(eq[n, A028310(A004086(n))])`
-/

namespace A076888.P18148476048695771708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076888.P18148476048695771708

/-! ## A076888.P11493781806852817744

`A000005(eq[n, A004086(A000007(n)+n)])`
-/

namespace A076888.P11493781806852817744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076888.P11493781806852817744

/-! ## A076888.P7114963242190551628

`A000005(eq[n-A000007(n), A004086(n)])`
-/

namespace A076888.P7114963242190551628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076888.P7114963242190551628

/-!
# A076889: Sum of aliquot divisors of palindromic numbers.

The programs for A076889, there is no canonical definition to state claims against.
-/

/-! ## A076889.P10277694687359105602

`A076887(n+1)-A002113(n+2)`
-/

namespace A076889.P10277694687359105602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076887 (n + 1) - A002113 (n + 2)

end

end A076889.P10277694687359105602

/-! ## A076889.P2413561675931906574

`A076887(n+1)-∑[A086862(n+1)]`
-/

namespace A076889.P2413561675931906574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076887 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076889.P2413561675931906574

/-! ## A076889.P6176215996589142023

`∑{d}[A002113(n+2), #-A000010(#)]`
-/

namespace A076889.P6176215996589142023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A076889.P6176215996589142023

/-! ## A076889.P12293946755412204433

`A000203(A002113(A000027(n+2)))-A002113(n+2)`
-/

namespace A076889.P12293946755412204433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002113 (A000027 (n + 2)).toNat).toNat - A002113 (n + 2)

end

end A076889.P12293946755412204433

/-! ## A076889.P4658375536172296818

`A001065(A002113(n+2))`
-/

namespace A076889.P4658375536172296818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A002113 (n + 2)).toNat

end

end A076889.P4658375536172296818

/-! ## A076889.P16934483166604583367

`A001065(∑[A086862(n+1)])`
-/

namespace A076889.P16934483166604583367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076889.P16934483166604583367

/-! ## A076889.P13108708285461404704

`A001065(record[A047813(n+1)])`
-/

namespace A076889.P13108708285461404704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076889.P13108708285461404704

/-! ## A076889.P15930908364699931801

`A001065(eq[n+1, A004086(n+1)]+1)`
-/

namespace A076889.P15930908364699931801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076889.P15930908364699931801

/-!
# A076890: Number of primes up to n-th palindromic number.

The programs for A076890, there is no canonical definition to state claims against.
-/

/-! ## A076890.P17070780813491796224

`A000720(A002113(n+2))`
-/

namespace A076890.P17070780813491796224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002113 (n + 2)).toNat

end

end A076890.P17070780813491796224

/-! ## A076890.P10996826660252516755

`A000720(∑[A086862(n+1)])`
-/

namespace A076890.P10996826660252516755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076890.P10996826660252516755

/-! ## A076890.P3673679203352595907

`A000720(A014187(n+1)^(1/3))`
-/

namespace A076890.P3673679203352595907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A014187 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A076890.P3673679203352595907

/-! ## A076890.P10025901307342371693

`A289507(A186698(n+1))-1`
-/

namespace A076890.P10025901307342371693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (A186698 (n + 1)).toNat - 1

end

end A076890.P10025901307342371693

/-! ## A076890.P8122970995509791679

`A036234(∑[A086862(n+1)])-1`
-/

namespace A076890.P8122970995509791679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A076890.P8122970995509791679

/-! ## A076890.P6650462668070238873

`A230980(eq[A000038(n), A064834(n)])`
-/

namespace A076890.P6650462668070238873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076890.P6650462668070238873

/-! ## A076890.P17348865877256069614

`A230980(eq[A000007(n), A261424(n)])`
-/

namespace A076890.P17348865877256069614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076890.P17348865877256069614

/-! ## A076890.P4105453600323663842

`A000720(lt[A056965(n)², A000720(n+1)])`
-/

namespace A076890.P4105453600323663842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076890.P4105453600323663842

/-! ## A076890.P1887832930762811477

`A033270(A186698(n+1))`
-/

namespace A076890.P1887832930762811477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A186698 (n + 1)).toNat

end

end A076890.P1887832930762811477

/-! ## A076890.P10842093268259839667

`A132090(A105581(n+1))`
-/

namespace A076890.P10842093268259839667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A105581 (n + 1)).toNat

end

end A076890.P10842093268259839667

/-!
# A076891: a(n) = [n/1][n/2][n/3] ...[n/n] / n^(tau(n)/2).

The programs for A076891, there is no canonical definition to state claims against.
-/

/-! ## A076891.P17129522912203604276

`A010786(n+1)/A007955(n+1)`
-/

namespace A076891.P17129522912203604276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A076891.P17129522912203604276

/-! ## A076891.P17781028844845707265

`A010786(n+1)/(n+1)^(A000005(n+1)/2)`
-/

namespace A076891.P17781028844845707265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 1) : ℝ) / (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ)

end

end A076891.P17781028844845707265

/-! ## A076891.P4957208862225858766

`A208448(n+1)/A007955(n+1)*A208450(n+1)`
-/

namespace A076891.P4957208862225858766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208448 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A208450 (n + 1) : ℚ)

end

end A076891.P4957208862225858766

/-! ## A076891.P15861068204538637856

`A010786(n)/A377484(n+1)`
-/

namespace A076891.P15861068204538637856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 n : ℚ) / (A377484 (n + 1) : ℚ)

end

end A076891.P15861068204538637856

/-! ## A076891.P14520573929447646392

`A010786(n+1)/sqrt(n+1)^A000005(n+1)`
-/

namespace A076891.P14520573929447646392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 1) : ℝ) / Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ)

end

end A076891.P14520573929447646392

/-! ## A076891.P1000365303799060980

`floor((n+1)!/∏{d}[n+1, #])/A076000(n+1)`
-/

namespace A076891.P1000365303799060980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋ : ℚ) / (A076000 (n + 1) : ℚ)

end

end A076891.P1000365303799060980

/-! ## A076891.P8381938940346156268

`floor((n+1)!/sqrt((n+1)^A000005(n+1)))/A076000(n+1)`
-/

namespace A076891.P8381938940346156268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (n + 1) : ℝ) / Real.sqrt ((n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ) : ℝ)⌋ : ℚ) / (A076000 (n + 1) : ℚ)

end

end A076891.P8381938940346156268

/-!
# A076892: Number of inequivalent ternary linear codes of length n. Also the number of nonisomorphic ternary matroids on an n-set.

The programs for A076892, there is no canonical definition to state claims against.
-/

/-! ## A076892.P7709756517702457516

`A028310(∑[A076893(n+1)]+1)`
-/

namespace A076892.P7709756517702457516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A076892.P7709756517702457516

/-! ## A076892.P2046724205093438400

`A029579(∑[2*A076893(n+1)])`
-/

namespace A076892.P2046724205093438400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076892.P2046724205093438400

/-! ## A076892.P9999963872584468938

`∑[A076893(n+1)+A008683(A000302(n))]`
-/

namespace A076892.P9999963872584468938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076893 (n + 1) + A008683 (A000302 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076892.P9999963872584468938

/-! ## A076892.P15752830844993740220

`∑[A233583(A076893(n+1)+1)]`
-/

namespace A076892.P15752830844993740220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A076893 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076892.P15752830844993740220

/-!
# A076893: Number of inequivalent linear ternary codes of length n with no zero columns. Also the number of nonisomorphic loopless ternary matroids on an n-set.

The programs for A076893, there is no canonical definition to state claims against.
-/

/-! ## A076893.P5252182706938080897

`A000267(Δ[or(n, n!)])`
-/

namespace A076893.P5252182706938080897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A076893.P5252182706938080897

/-! ## A076893.P4159324058396804673

`round(sqrt(A027706(Δ[n!]+1)))`
-/

namespace A076893.P4159324058396804673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A027706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℝ))

end

end A076893.P4159324058396804673

/-! ## A076893.P12861417383253371243

`A383014(A018086(n))`
-/

namespace A076893.P12861417383253371243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383014 (A018086 n).toNat

end

end A076893.P12861417383253371243

/-!
# A076894: Number of inequivalent linear projective ternary codes of length n (i.e., with distinct columns and without zero columns). Also the number of nonisomorphic simple ternary matroids on an n-set.

The programs for A076894, there is no canonical definition to state claims against.
-/

/-! ## A076894.P8029957956705691042

`A024417(ceil(sqrt(A244754(n))))`
-/

namespace A076894.P8029957956705691042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 ⌈Real.sqrt (A244754 n : ℝ)⌉.toNat

end

end A076894.P8029957956705691042

/-! ## A076894.P6210496628174895753

`A024417(round(sqrt(A244754(n))))`
-/

namespace A076894.P6210496628174895753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (SequenceMachineLib.roundAway (Real.sqrt (A244754 n : ℝ))).toNat

end

end A076894.P6210496628174895753

/-! ## A076894.P7591966299563362443

`A002877(n+1)+A293641(n)²`
-/

namespace A076894.P7591966299563362443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002877 (n + 1) + A293641 n ^ 2

end

end A076894.P7591966299563362443

/-! ## A076894.P16940360939029865351

`A002877(n+1)+A237825(n+1)²`
-/

namespace A076894.P16940360939029865351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002877 (n + 1) + A237825 (n + 1) ^ 2

end

end A076894.P16940360939029865351

/-!
# A076895: a(1) = 1, a(n) = n - a(ceiling(n/2)).

The programs for A076895, the canonical program `A076895.P16994902037719533940` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076895 has offset 1).

The definition of A076895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(ceil((n+1)/2)-1)` (program `A076895.P16994902037719533940`, by `A076895.P16994902037719533940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076895.P16994902037719533940

`n+1-a(ceil((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076895

/-- `n+1-a(ceil((n+1)/2)-1)` -/
def P16994902037719533940.Spec : Prop :=
  ∀ n, P16994902037719533940.a n = A076895 (n + 1)

theorem P16994902037719533940.correct : P16994902037719533940.Spec := by
  intro n
  simp only [A076895, Nat.add_sub_cancel]

end A076895

/-! ## A076895.P13889638751454985413

`1-a(floor(n/2))+n` with `a(0)=1`
-/

namespace A076895.P13889638751454985413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

end

end A076895.P13889638751454985413

namespace A076895

/-- `1-a(floor(n/2))+n` -/
def P13889638751454985413.Spec : Prop :=
  ∀ n, P13889638751454985413.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P2718899482280001246

`1-(a(floor(n/2))-n)` with `a(0)=1`
-/

namespace A076895.P2718899482280001246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))

end

end A076895.P2718899482280001246

namespace A076895

/-- `1-(a(floor(n/2))-n)` -/
def P2718899482280001246.Spec : Prop :=
  ∀ n, P2718899482280001246.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P339125965159076472

`(n*a(floor(n/2)))%(n+1)` with `a(0)=1`
-/

namespace A076895.P339125965159076472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a ⌊(n : ℚ) / 2⌋.toNat % (n + 1)

end

end A076895.P339125965159076472

namespace A076895

/-- `(n*a(floor(n/2)))%(n+1)` -/
def P339125965159076472.Spec : Prop :=
  ∀ n, (P339125965159076472.a n : ℤ) = A076895 (n + 1)

end A076895

/-! ## A076895.P17330518532585032684

`Δ[n²]%(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A076895.P17330518532585032684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

end

end A076895.P17330518532585032684

namespace A076895

/-- `Δ[n²]%(a(floor(n/2))+n)` -/
def P17330518532585032684.Spec : Prop :=
  ∀ n, P17330518532585032684.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P1093004323969480846

`∑[char[A053661(n+2)]]+1`
-/

namespace A076895.P1093004323969480846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A076895.P1093004323969480846

namespace A076895

/-- `∑[char[A053661(n+2)]]+1` -/
def P1093004323969480846.Spec : Prop :=
  ∀ n, (P1093004323969480846.a n : ℤ) = A076895 (n + 1)

end A076895

/-! ## A076895.P12774340171485840907

`a(n-1)+1-A217586(n)` with `a(0)=1`
-/

namespace A076895.P12774340171485840907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A217586 n)

end

end A076895.P12774340171485840907

namespace A076895

/-- `a(n-1)+1-A217586(n)` -/
def P12774340171485840907.Spec : Prop :=
  ∀ n, P12774340171485840907.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P14887117666109475563

`a(n-1)-A121538(a(n-1))+n` with `a(0)=1`
-/

namespace A076895.P14887117666109475563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A121538 (a (n - 1)).toNat + (n : ℤ)

end

end A076895.P14887117666109475563

namespace A076895

/-- `a(n-1)-A121538(a(n-1))+n` -/
def P14887117666109475563.Spec : Prop :=
  ∀ n, P14887117666109475563.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P3794684003465719931

`A275973(n+1)+A050292(n)`
-/

namespace A076895.P3794684003465719931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1) + A050292 n

end

end A076895.P3794684003465719931

namespace A076895

/-- `A275973(n+1)+A050292(n)` -/
def P3794684003465719931.Spec : Prop :=
  ∀ n, P3794684003465719931.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P13363229011433678770

`n-A023443(a(A123108(n)))` with `a(0)=1`
-/

namespace A076895.P13363229011433678770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A023443 (a (A123108 n).toNat).toNat

end

end A076895.P13363229011433678770

namespace A076895

/-- `n-A023443(a(A123108(n)))` -/
def P13363229011433678770.Spec : Prop :=
  ∀ n, P13363229011433678770.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P16990893428315490483

`A028310(∑[char[A053661(n+1)]])`
-/

namespace A076895.P16990893428315490483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076895.P16990893428315490483

namespace A076895

/-- `A028310(∑[char[A053661(n+1)]])` -/
def P16990893428315490483.Spec : Prop :=
  ∀ n, P16990893428315490483.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P11252170010859387076

`A050292(n)+A030300(2*n+1)`
-/

namespace A076895.P11252170010859387076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n + A030300 (2 * n + 1)

end

end A076895.P11252170010859387076

namespace A076895

/-- `A050292(n)+A030300(2*n+1)` -/
def P11252170010859387076.Spec : Prop :=
  ∀ n, P11252170010859387076.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P13477633008382815800

`A217586(n+1)+∑[1-A217586(n+1)]`
-/

namespace A076895.P13477633008382815800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A217586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076895.P13477633008382815800

namespace A076895

/-- `A217586(n+1)+∑[1-A217586(n+1)]` -/
def P13477633008382815800.Spec : Prop :=
  ∀ n, P13477633008382815800.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P819697061933511030

`∑[char[A175880(n+2)]]`
-/

namespace A076895.P819697061933511030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076895.P819697061933511030

namespace A076895

/-- `∑[char[A175880(n+2)]]` -/
def P819697061933511030.Spec : Prop :=
  ∀ n, (P819697061933511030.a n : ℤ) = A076895 (n + 1)

end A076895

/-! ## A076895.P14227113457775133625

`A123087(2*n)+A030300(2*n+1)`
-/

namespace A076895.P14227113457775133625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (2 * n) + A030300 (2 * n + 1)

end

end A076895.P14227113457775133625

namespace A076895

/-- `A123087(2*n)+A030300(2*n+1)` -/
def P14227113457775133625.Spec : Prop :=
  ∀ n, P14227113457775133625.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P4711840983108699824

`A083905(2*n+1)+A068639(2*n+1)`
-/

namespace A076895.P4711840983108699824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083905 (2 * n + 1) + A068639 (2 * n + 1)

end

end A076895.P4711840983108699824

namespace A076895

/-- `A083905(2*n+1)+A068639(2*n+1)` -/
def P4711840983108699824.Spec : Prop :=
  ∀ n, P4711840983108699824.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P16072160053341751173

`∑[A039984(2*n+1)]-A039984(2*(n+1))`
-/

namespace A076895.P16072160053341751173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039984 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039984 (2 * (n + 1))

end

end A076895.P16072160053341751173

namespace A076895

/-- `∑[A039984(2*n+1)]-A039984(2*(n+1))` -/
def P16072160053341751173.Spec : Prop :=
  ∀ n, P16072160053341751173.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P4726684361625564108

`∑[A039963(2*A004761(n+1))]`
-/

namespace A076895.P4726684361625564108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (2 * A004761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076895.P4726684361625564108

namespace A076895

/-- `∑[A039963(2*A004761(n+1))]` -/
def P4726684361625564108.Spec : Prop :=
  ∀ n, P4726684361625564108.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P13387099544864576217

`∑[A039963(A004760(n+1)+n)]`
-/

namespace A076895.P13387099544864576217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A004760 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076895.P13387099544864576217

namespace A076895

/-- `∑[A039963(A004760(n+1)+n)]` -/
def P13387099544864576217.Spec : Prop :=
  ∀ n, P13387099544864576217.a n = A076895 (n + 1)

end A076895

/-! ## A076895.P16751881754314169892

`∑[char[A171944(n+1)]]`
-/

namespace A076895.P16751881754314169892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171944 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076895.P16751881754314169892

namespace A076895

/-- `∑[char[A171944(n+1)]]` -/
def P16751881754314169892.Spec : Prop :=
  ∀ n, (P16751881754314169892.a n : ℤ) = A076895 (n + 1)

end A076895

/-!
# A076896: a(1) = 1, a(n) = n-a(floor(2n/3)).

The programs for A076896, the canonical program `A076896.P12140124223143804925` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076896 has offset 1).

The definition of A076896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(floor(2*(n+1)/3)-1)` (program `A076896.P12140124223143804925`, by `A076896.P12140124223143804925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076896.P12140124223143804925

`n+1-a(floor(2*(n+1)/3)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076896

/-- `n+1-a(floor(2*(n+1)/3)-1)` -/
def P12140124223143804925.Spec : Prop :=
  ∀ n, P12140124223143804925.a n = A076896 (n + 1)

theorem P12140124223143804925.correct : P12140124223143804925.Spec := by
  intro n
  simp only [A076896, Nat.add_sub_cancel]

end A076896

/-! ## A076896.P8564719507015643313

`1-a(∑[n²%3]-1)+n` with `a(0)=1`
-/

namespace A076896.P8564719507015643313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ)

end

end A076896.P8564719507015643313

namespace A076896

/-- `1-a(∑[n²%3]-1)+n` -/
def P8564719507015643313.Spec : Prop :=
  ∀ n, P8564719507015643313.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P11239716933568667974

`1-a(floor((2*n-1)/3))+n` with `a(0)=1`
-/

namespace A076896.P11239716933568667974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌊((2 * n : ℤ) - 1 : ℚ) / 3⌋.toNat + (n : ℤ)

end

end A076896.P11239716933568667974

namespace A076896

/-- `1-a(floor((2*n-1)/3))+n` -/
def P11239716933568667974.Spec : Prop :=
  ∀ n, P11239716933568667974.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P3297862858738559207

`1-(a(∑[char[comp[3*n]]]-1)-n)` with `a(0)=1`
-/

namespace A076896.P3297862858738559207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (∑ j ∈ Finset.range (n + 1), f1 j - 1) - (n : ℤ))

end

end A076896.P3297862858738559207

namespace A076896

/-- `1-(a(∑[char[comp[3*n]]]-1)-n)` -/
def P3297862858738559207.Spec : Prop :=
  ∀ n, P3297862858738559207.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P14090081679087943918

`abs(a(round((8*n-7)/12))-1-n)` with `a(0)=1`
-/

namespace A076896.P14090081679087943918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (SequenceMachineLib.roundAway (((8 * n : ℤ) - 7 : ℚ) / 12)).toNat - 1 - (n : ℤ)|

end

end A076896.P14090081679087943918

namespace A076896

/-- `abs(a(round((8*n-7)/12))-1-n)` -/
def P14090081679087943918.Spec : Prop :=
  ∀ n, P14090081679087943918.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P13448547043326233300

`abs(a(n-ceil((n+1)/3))-n)+1` with `a(0)=1`
-/

namespace A076896.P13448547043326233300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a ((n : ℤ) - ⌈(n + 1 : ℚ) / 3⌉).toNat - (n : ℤ)| + 1

end

end A076896.P13448547043326233300

namespace A076896

/-- `abs(a(n-ceil((n+1)/3))-n)+1` -/
def P13448547043326233300.Spec : Prop :=
  ∀ n, P13448547043326233300.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P14822816692951793725

`∑[A357518(n+1)]`
-/

namespace A076896.P14822816692951793725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076896.P14822816692951793725

namespace A076896

/-- `∑[A357518(n+1)]` -/
def P14822816692951793725.Spec : Prop :=
  ∀ n, P14822816692951793725.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P7386605031384700914

`∑[A087088(n+1)%2]`
-/

namespace A076896.P7386605031384700914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087088 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076896.P7386605031384700914

namespace A076896

/-- `∑[A087088(n+1)%2]` -/
def P7386605031384700914.Spec : Prop :=
  ∀ n, P7386605031384700914.a n = A076896 (n + 1)

end A076896

/-! ## A076896.P12548124883996973888

`∑[char[A026343(n+1)-1]]`
-/

namespace A076896.P12548124883996973888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076896.P12548124883996973888

namespace A076896

/-- `∑[char[A026343(n+1)-1]]` -/
def P12548124883996973888.Spec : Prop :=
  ∀ n, (P12548124883996973888.a n : ℤ) = A076896 (n + 1)

end A076896

/-!
# A076897: a(1)=1, a(n)=n-a(floor(3n/4)).

The programs for A076897, the canonical program `A076897.P15563405045264766264` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076897 has offset 1).

The definition of A076897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(floor(3*(n+1)/4)-1)` (program `A076897.P15563405045264766264`, by `A076897.P15563405045264766264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076897.P15563405045264766264

`n+1-a(floor(3*(n+1)/4)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076897

/-- `n+1-a(floor(3*(n+1)/4)-1)` -/
def P15563405045264766264.Spec : Prop :=
  ∀ n, P15563405045264766264.a n = A076897 (n + 1)

theorem P15563405045264766264.correct : P15563405045264766264.Spec := by
  intro n
  simp only [A076897, Nat.add_sub_cancel]

end A076897

/-! ## A076897.P2517204934324470653

`abs(a(n-(A002265(n)+1))-n)+1` with `a(0)=1`
-/

namespace A076897.P2517204934324470653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a ((n : ℤ) - (A002265 n + 1)).toNat - (n : ℤ)| + 1

end

end A076897.P2517204934324470653

namespace A076897

/-- `abs(a(n-(A002265(n)+1))-n)+1` -/
def P2517204934324470653.Spec : Prop :=
  ∀ n, P2517204934324470653.a n = A076897 (n + 1)

end A076897

/-! ## A076897.P4509389722148039186

`n+1-ceil(a(A110655(3*n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A076897.P4509389722148039186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - a (A110655 (3 * n) - 1).toNat

end

end A076897.P4509389722148039186

namespace A076897

/-- `n+1-ceil(a(A110655(3*n)-1))` -/
def P4509389722148039186.Spec : Prop :=
  ∀ n, P4509389722148039186.a n = A076897 (n + 1)

end A076897

/-! ## A076897.P14350009486412193667

`∑[and(1, Δ[A244041(3*n)])]`
-/

namespace A076897.P14350009486412193667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076897.P14350009486412193667

namespace A076897

/-- `∑[and(1, Δ[A244041(3*n)])]` -/
def P14350009486412193667.Spec : Prop :=
  ∀ n, P14350009486412193667.a n = A076897 (n + 1)

end A076897

/-! ## A076897.P12470119393712875623

`∑[A000035(Δ[A244041(3*n)]²)]`
-/

namespace A076897.P12470119393712875623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076897.P12470119393712875623

namespace A076897

/-- `∑[A000035(Δ[A244041(3*n)]²)]` -/
def P12470119393712875623.Spec : Prop :=
  ∀ n, P12470119393712875623.a n = A076897 (n + 1)

end A076897

/-! ## A076897.P13429166920863225824

`∑[A010873(Δ[A244041(3*n)]²)]`
-/

namespace A076897.P13429166920863225824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076897.P13429166920863225824

namespace A076897

/-- `∑[A010873(Δ[A244041(3*n)]²)]` -/
def P13429166920863225824.Spec : Prop :=
  ∀ n, P13429166920863225824.a n = A076897 (n + 1)

end A076897

/-! ## A076897.P15017349880190710969

`∑[A087165(n+1)%2]`
-/

namespace A076897.P15017349880190710969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087165 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076897.P15017349880190710969

namespace A076897

/-- `∑[A087165(n+1)%2]` -/
def P15017349880190710969.Spec : Prop :=
  ∀ n, P15017349880190710969.a n = A076897 (n + 1)

end A076897

/-! ## A076897.P12117038736103660077

`∑[A230074(A087165(n+1)²)]`
-/

namespace A076897.P12117038736103660077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (A087165 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076897.P12117038736103660077

namespace A076897

/-- `∑[A230074(A087165(n+1)²)]` -/
def P12117038736103660077.Spec : Prop :=
  ∀ n, P12117038736103660077.a n = A076897 (n + 1)

end A076897

/-!
# A076898: Let u(1)=u(2)=u(3)=1, u(n)=sign(u(n-1)-u(n-2))/(u(n-3)+1); then a(n) is the numerator of u(n).

The programs for A076898, the canonical program `A076898.P2074698076264924769` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076898 has offset 1).

The definition of A076898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076898.P2074698076264924769

`A053602(A008620(n))*A163806(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076898

/-- `A053602(A008620(n))*A163806(n)` -/
def P2074698076264924769.Spec : Prop :=
  ∀ n, P2074698076264924769.a n = A076898 (n + 1)

theorem P2074698076264924769.correct : P2074698076264924769.Spec := by
  intro n
  simp only [A076898, Nat.add_sub_cancel]

end A076898

/-! ## A076898.P1965342627497676952

`A053602(Δ[A274583(n)])*A163806(n)`
-/

namespace A076898.P1965342627497676952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (f1 (n + 1) - f1 n).toNat * A163806 n

end

end A076898.P1965342627497676952

namespace A076898

/-- `A053602(Δ[A274583(n)])*A163806(n)` -/
def P1965342627497676952.Spec : Prop :=
  ∀ n, P1965342627497676952.a n = A076898 (n + 1)

end A076898

/-! ## A076898.P3463910165631439747

`A053602(A002264(n)+1)*A163806(n)`
-/

namespace A076898.P3463910165631439747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A002264 n + 1).toNat * A163806 n

end

end A076898.P3463910165631439747

namespace A076898

/-- `A053602(A002264(n)+1)*A163806(n)` -/
def P3463910165631439747.Spec : Prop :=
  ∀ n, P3463910165631439747.a n = A076898 (n + 1)

end A076898

/-! ## A076898.P4899898083331095113

`A053602(A087507(n))*A163806(n)`
-/

namespace A076898.P4899898083331095113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A087507 n).toNat * A163806 n

end

end A076898.P4899898083331095113

namespace A076898

/-- `A053602(A087507(n))*A163806(n)` -/
def P4899898083331095113.Spec : Prop :=
  ∀ n, P4899898083331095113.a n = A076898 (n + 1)

end A076898

/-!
# A076899: Let u(1)=u(2)=u(3)=1, u(n)=sign(u(n-1)-u(n-2))/(u(n-3)+1); then a(n) is the denominator of u(n).

The programs for A076899, the canonical program `A076899.P11870256552254514627` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076899 has offset 1).

The definition of A076899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076899.P6441521016052218087

`A123231(∑[char[3*n]]^(n²%3))`
-/

namespace A076899.P6441521016052218087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n ^ 2 % 3))

end

end A076899.P6441521016052218087

namespace A076899

/-- `A123231(∑[char[3*n]]^(n²%3))` -/
def P6441521016052218087.Spec : Prop :=
  ∀ n, P6441521016052218087.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P11870256552254514627

`A123231(Δ[A274583(n)])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076899

/-- `A123231(Δ[A274583(n)])` -/
def P11870256552254514627.Spec : Prop :=
  ∀ n, P11870256552254514627.a n = A076899 (n + 1)

theorem P11870256552254514627.correct : P11870256552254514627.Spec := by
  intro n
  simp only [A076899, Nat.add_sub_cancel]

end A076899

/-! ## A076899.P1195449024537625383

`A053602(A087508(n)+1)`
-/

namespace A076899.P1195449024537625383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A087508 n + 1).toNat

end

end A076899.P1195449024537625383

namespace A076899

/-- `A053602(A087508(n)+1)` -/
def P1195449024537625383.Spec : Prop :=
  ∀ n, P1195449024537625383.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P9095943002858582886

`A272912(A087508(n)+3)`
-/

namespace A076899.P9095943002858582886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A087508 n + 3).toNat

end

end A076899.P9095943002858582886

namespace A076899

/-- `A272912(A087508(n)+3)` -/
def P9095943002858582886.Spec : Prop :=
  ∀ n, P9095943002858582886.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P16140354931837099755

`A123231(abs(∑[A122918(n)]))`
-/

namespace A076899.P16140354931837099755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A076899.P16140354931837099755

namespace A076899

/-- `A123231(abs(∑[A122918(n)]))` -/
def P16140354931837099755.Spec : Prop :=
  ∀ n, P16140354931837099755.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P17579491546481484055

`A053602(Δ[A274583(n)]+1)`
-/

namespace A076899.P17579491546481484055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (f1 (n + 1) - f1 n + 1).toNat

end

end A076899.P17579491546481484055

namespace A076899

/-- `A053602(Δ[A274583(n)]+1)` -/
def P17579491546481484055.Spec : Prop :=
  ∀ n, P17579491546481484055.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P1959515028406359618

`A123231(A008619(A102899(n)))`
-/

namespace A076899.P1959515028406359618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A008619 (A102899 n).toNat).toNat

end

end A076899.P1959515028406359618

namespace A076899

/-- `A123231(A008619(A102899(n)))` -/
def P1959515028406359618.Spec : Prop :=
  ∀ n, P1959515028406359618.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P10339258467446216113

`A123231(A032742(abs(A138189(n))))`
-/

namespace A076899.P10339258467446216113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A032742 |A138189 n|.toNat).toNat

end

end A076899.P10339258467446216113

namespace A076899

/-- `A123231(A032742(abs(A138189(n))))` -/
def P10339258467446216113.Spec : Prop :=
  ∀ n, P10339258467446216113.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P11165826101909774128

`A000045(A028242(A087508(n))+1)`
-/

namespace A076899.P11165826101909774128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028242 (A087508 n).toNat + 1).toNat

end

end A076899.P11165826101909774128

namespace A076899

/-- `A000045(A028242(A087508(n))+1)` -/
def P11165826101909774128.Spec : Prop :=
  ∀ n, P11165826101909774128.a n = A076899 (n + 1)

end A076899

/-! ## A076899.P14268422688835324329

`A028310(abs(A076898(n+4)))`
-/

namespace A076899.P14268422688835324329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A076898 (n + 4)|.toNat

end

end A076899.P14268422688835324329

namespace A076899

/-- `A028310(abs(A076898(n+4)))` -/
def P14268422688835324329.Spec : Prop :=
  ∀ n, P14268422688835324329.a n = A076899 (n + 1)

end A076899

