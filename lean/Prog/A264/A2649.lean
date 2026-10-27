import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A264900: Integers k such that A122102(k) + 1 is prime.

The programs for A264900, there is no canonical definition to state claims against.
-/

/-! ## A264900.P13176157658037856836

`record[gcd(A057538(n+1), A310635(n))]`
-/

namespace A264900.P13176157658037856836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057538 (n + 1)) (A310635 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264900.P13176157658037856836

/-! ## A264900.P1130935282906994745

`A324695(A005574(2*n+1)+n+n)`
-/

namespace A264900.P1130935282906994745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A005574 (2 * n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A264900.P1130935282906994745

/-!
# A264901: Sorted powers C^z = A^x + B^y with all positive integers and x,y,z > 2, with multiplicity.

The programs for A264901, there is no canonical definition to state claims against.
-/

/-! ## A264901.P4511754779867464304

`8*∏{p}[Δ[n*(n+1)!], 2%(#+1)]`
-/

namespace A264901.P4511754779867464304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 % (p + 1))

end

end A264901.P4511754779867464304

/-! ## A264901.P2860508923438992286

`A207872(7*n+11)`
-/

namespace A264901.P2860508923438992286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207872 (7 * n + 11)

end

end A264901.P2860508923438992286

/-! ## A264901.P14356607063431243290

`A164632(∑[n+10]²)`
-/

namespace A264901.P14356607063431243290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164632 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A264901.P14356607063431243290

/-!
# A264902: Number T(n,k) of defective parking functions of length n and defect k; triangle T(n,k), n>=0, 0<=k<=max(0,n-1), read by rows.

The programs for A264902, there is no canonical definition to state claims against.
-/

/-! ## A264902.P13224049620867427369

`A222029(n)-A102560(A058122(n))`
-/

namespace A264902.P13224049620867427369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222029 n - A102560 (A058122 n).toNat

end

end A264902.P13224049620867427369

/-! ## A264902.P11086100347530618391

`A002260(A005232(n)^A029837(n+1))`
-/

namespace A264902.P11086100347530618391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A005232 n : ℚ) ^ (A029837 (n + 1) : ℤ))).toNat

end

end A264902.P11086100347530618391

/-! ## A264902.P16526929682445967163

`A178300(n+1)^A241531(A001644(n))`
-/

namespace A264902.P16526929682445967163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178300 (n + 1) : ℚ) ^ (A241531 (A001644 n).toNat : ℤ)

end

end A264902.P16526929682445967163

/-! ## A264902.P12546443086395891135

`A178300(n+1)^A136711(A186769(n))`
-/

namespace A264902.P12546443086395891135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178300 (n + 1) : ℚ) ^ (A136711 (A186769 n).toNat : ℤ)

end

end A264902.P12546443086395891135

/-!
# A264903: Number of defective parking functions of length 2n and defect n.

The programs for A264903, there is no canonical definition to state claims against.
-/

/-! ## A264903.P11258366059416039261

`A264902(A058331(n))`
-/

namespace A264903.P11258366059416039261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A058331 n).toNat

end

end A264903.P11258366059416039261

/-! ## A264903.P18209207362477586339

`A264902(A005408(n²))`
-/

namespace A264903.P18209207362477586339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A005408 (n ^ 2)).toNat

end

end A264903.P18209207362477586339

/-! ## A264903.P16423725589297784619

`A264902(A001105(n)+1)`
-/

namespace A264903.P16423725589297784619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A001105 n + 1).toNat

end

end A264903.P16423725589297784619

/-! ## A264903.P11854726382284178040

`A264902(or(1, A001105(n)))`
-/

namespace A264903.P11854726382284178040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (Int.lor 1 (A001105 n)).toNat

end

end A264903.P11854726382284178040

/-! ## A264903.P16722785789032210846

`A264902(xor(1, A001105(n)))`
-/

namespace A264903.P16722785789032210846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (Int.xor 1 (A001105 n)).toNat

end

end A264903.P16722785789032210846

/-!
# A264904: Primes of the form x^2 + y^2 with 0 < x < y such that all the numbers (x-a)^2 + (y+a)^2 (a = 1,...,x) are composite.

The programs for A264904, there is no canonical definition to state claims against.
-/

/-! ## A264904.P1166192658025210809

`record[p?[A048147(A243808(n+1))]]`
-/

namespace A264904.P1166192658025210809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A243808 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264904.P1166192658025210809

/-! ## A264904.P9695648077937356684

`A359397(A006093(A013634(n+1)))`
-/

namespace A264904.P9695648077937356684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359397 (A006093 (A013634 (n + 1)).toNat).toNat

end

end A264904.P9695648077937356684

/-!
# A264906: a(n) is the denominator of the 2nd term of the power series which is the loop length in a regular n-gon. (See comment.)

The programs for A264906, the canonical program `A264906.P2037382324926713002` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264906 has offset 5).

The definition of A264906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264906.P2037382324926713002

`(n+5)²/gcd((n+1)/gcd(n+1, 4), n+5)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264906

/-- `(n+5)²/gcd((n+1)/gcd(n+1, 4), n+5)` -/
def P2037382324926713002.Spec : Prop :=
  ∀ n, P2037382324926713002.a n = (A264906 (n + 5) : ℚ)

end A264906

/-! ## A264906.P4318292903987216495

`A003557(A355038(n+5))/A003557(A003557(n+1))`
-/

namespace A264906.P4318292903987216495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (A355038 (n + 5)).toNat : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ)

end

end A264906.P4318292903987216495

namespace A264906

/-- `A003557(A355038(n+5))/A003557(A003557(n+1))` -/
def P4318292903987216495.Spec : Prop :=
  ∀ n, P4318292903987216495.a n = (A264906 (n + 5) : ℚ)

end A264906

/-! ## A264906.P5009486029113880240

`(n+5)²/A288120(A288129(n))`
-/

namespace A264906.P5009486029113880240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) ^ 2 : ℚ) / (A288120 (A288129 n).toNat : ℚ)

end

end A264906.P5009486029113880240

namespace A264906

/-- `(n+5)²/A288120(A288129(n))` -/
def P5009486029113880240.Spec : Prop :=
  ∀ n, P5009486029113880240.a n = (A264906 (n + 5) : ℚ)

end A264906

/-! ## A264906.P15030214559871793968

`(n+5)²/A055229(A054496(n+1))`
-/

namespace A264906.P15030214559871793968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) ^ 2 : ℚ) / (A055229 (A054496 (n + 1)).toNat : ℚ)

end

end A264906.P15030214559871793968

namespace A264906

/-- `(n+5)²/A055229(A054496(n+1))` -/
def P15030214559871793968.Spec : Prop :=
  ∀ n, P15030214559871793968.a n = (A264906 (n + 5) : ℚ)

end A264906

/-! ## A264906.P1699140258483137507

`(n+5)²/A061704(A100157(n+1))`
-/

namespace A264906.P1699140258483137507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) ^ 2 : ℚ) / (A061704 (A100157 (n + 1)).toNat : ℚ)

end

end A264906.P1699140258483137507

namespace A264906

/-- `(n+5)²/A061704(A100157(n+1))` -/
def P1699140258483137507.Spec : Prop :=
  ∀ n, P1699140258483137507.a n = (A264906 (n + 5) : ℚ)

end A264906

/-!
# A264907: a(n) is the smallest "cyclic" integer, k, that has exactly n prime factors.

The programs for A264907, there is no canonical definition to state claims against.
-/

/-! ## A264907.P1007684731262970351

`A000788(∑[A121316(n)])`
-/

namespace A264907.P1007684731262970351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264907.P1007684731262970351

/-!
# A264908: Primes of the form 2^i + 2^j + 2^k - 1, i > j > k > 0.

The programs for A264908, there is no canonical definition to state claims against.
-/

/-! ## A264908.P1218447715488142058

`p?[eq[4, A048896(n)]]`
-/

namespace A264908.P1218447715488142058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264908.P1218447715488142058

/-! ## A264908.P10390849588596973303

`p?[A014311(n+1)-1]`
-/

namespace A264908.P10390849588596973303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264908.P10390849588596973303

/-! ## A264908.P649164624655640888

`p?[A014312(n+1)-2]`
-/

namespace A264908.P649164624655640888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264908.P649164624655640888

/-! ## A264908.P7867400953602518160

`p?[eq[3, A000120(n+1)]]`
-/

namespace A264908.P7867400953602518160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264908.P7867400953602518160

/-! ## A264908.P11464286421435639975

`p?[eq[3, A000120(n)]-1]`
-/

namespace A264908.P11464286421435639975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264908.P11464286421435639975

/-! ## A264908.P218421555988748446

`p?[eq[4, A128975(n+1)]]`
-/

namespace A264908.P218421555988748446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264908.P218421555988748446

/-! ## A264908.P5040358381522826766

`p?[eq[8, A071044(n+1)]]`
-/

namespace A264908.P5040358381522826766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264908.P5040358381522826766

/-! ## A264908.P3285321054811543292

`p?[n*(A048881(n)-1)]`
-/

namespace A264908.P3285321054811543292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A048881 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264908.P3285321054811543292

/-! ## A264908.P13579102382503103352

`eq[A048881(n), A092976(n)]`
-/

namespace A264908.P13579102382503103352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264908.P13579102382503103352

/-! ## A264908.P15659554623225861632

`eq[A048881(n), A217670(n)]`
-/

namespace A264908.P15659554623225861632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264908.P15659554623225861632

/-!
# A264909: Number A(n,k) of k-ascent sequences of length n with no consecutive repeated letters; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A264909, there is no canonical definition to state claims against.
-/

/-! ## A264909.P5895446522984771924

`A335570(n)-A121262(A142963(n+1))`
-/

namespace A264909.P5895446522984771924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 n - A121262 (A142963 (n + 1)).toNat

end

end A264909.P5895446522984771924

/-! ## A264909.P601440948849967348

`A000120(A000217(abs(A306629(n))))`
-/

namespace A264909.P601440948849967348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000217 |A306629 n|.toNat).toNat

end

end A264909.P601440948849967348

/-! ## A264909.P804852154567365024

`A124768(A208879(n))*A262124(n)`
-/

namespace A264909.P804852154567365024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A208879 n).toNat * A262124 n

end

end A264909.P804852154567365024

/-! ## A264909.P15238791038528566795

`A398106(n)-A053603(A089456(n+1))`
-/

namespace A264909.P15238791038528566795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398106 n - A053603 (A089456 (n + 1)).toNat

end

end A264909.P15238791038528566795

/-!
# A264910: Number of 5-ascent sequences of length n with no consecutive repeated letters.

The programs for A264910, there is no canonical definition to state claims against.
-/

/-! ## A264910.P3521244056532725955

`A264909(eq[5, A025581(n)])`
-/

namespace A264910.P3521244056532725955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264910.P3521244056532725955

/-! ## A264910.P9473260176919898529

`A264909(eq[6, A193739(n)])`
-/

namespace A264910.P9473260176919898529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264910.P9473260176919898529

/-! ## A264910.P6984935699554338994

`A264909(eq[11, A099375(n)])`
-/

namespace A264910.P6984935699554338994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264910.P6984935699554338994

/-! ## A264910.P3389736300042194360

`A264909(eq[32, A130321(n)])`
-/

namespace A264910.P3389736300042194360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264910.P3389736300042194360

/-! ## A264910.P8851856360187442766

`A264909(Δ[A023551(n+1)])`
-/

namespace A264910.P8851856360187442766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (f1 (n + 1) - f1 n).toNat

end

end A264910.P8851856360187442766

/-! ## A264910.P5531119539020445401

`A264909(eq[6, A004736(n+1)])`
-/

namespace A264910.P5531119539020445401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264910.P5531119539020445401

/-! ## A264910.P10922820533751564082

`A264909(Δ[A055831(n+5)]-1)`
-/

namespace A264910.P10922820533751564082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (f1 (n + 1) - f1 n - 1).toNat

end

end A264910.P10922820533751564082

/-!
# A264911: Number of 6-ascent sequences of length n with no consecutive repeated letters.

The programs for A264911, there is no canonical definition to state claims against.
-/

/-! ## A264911.P16185002919643595586

`A264909(eq[6, A025581(n)])`
-/

namespace A264911.P16185002919643595586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264911.P16185002919643595586

/-! ## A264911.P11199990271722983363

`A264909(eq[7, A193739(n)])`
-/

namespace A264911.P11199990271722983363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264911.P11199990271722983363

/-! ## A264911.P8249912442861383846

`A264909(eq[13, A099375(n)])`
-/

namespace A264911.P8249912442861383846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264911.P8249912442861383846

/-! ## A264911.P15102116959559973293

`A264909(A000217(n+7)-7)`
-/

namespace A264911.P15102116959559973293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A000217 (n + 7) - 7).toNat

end

end A264911.P15102116959559973293

/-! ## A264911.P16196048285869481183

`A264909(eq[7, A004736(n+1)])`
-/

namespace A264911.P16196048285869481183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264911.P16196048285869481183

/-! ## A264911.P14122204837681588918

`A264909(Δ[A023551(n+2)]-1)`
-/

namespace A264911.P14122204837681588918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (f1 (n + 1) - f1 n - 1).toNat

end

end A264911.P14122204837681588918

/-!
# A264912: Number of 7-ascent sequences of length n with no consecutive repeated letters.

The programs for A264912, there is no canonical definition to state claims against.
-/

/-! ## A264912.P7896336788354515757

`A264909(A155212(n+4))`
-/

namespace A264912.P7896336788354515757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A155212 (n + 4)).toNat

end

end A264912.P7896336788354515757

/-! ## A264912.P13388047699905987666

`A264909(eq[7, A025581(n)])`
-/

namespace A264912.P13388047699905987666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264912.P13388047699905987666

/-! ## A264912.P9471813726776245476

`A264909(eq[8, A193739(n)])`
-/

namespace A264912.P9471813726776245476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264912.P9471813726776245476

/-! ## A264912.P10881958200484072599

`A264909(eq[15, A099375(n)])`
-/

namespace A264912.P10881958200484072599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264912.P10881958200484072599

/-! ## A264912.P13212981655708680646

`A264909(eq[8, A004736(n+1)])`
-/

namespace A264912.P13212981655708680646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264912.P13212981655708680646

/-!
# A264913: Number of 8-ascent sequences of length n with no consecutive repeated letters.

The programs for A264913, there is no canonical definition to state claims against.
-/

/-! ## A264913.P9564022123753533849

`A264909(A055998(n+7)-6)`
-/

namespace A264913.P9564022123753533849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A055998 (n + 7) - 6).toNat

end

end A264913.P9564022123753533849

/-! ## A264913.P5727084539948081252

`A264909(A000217(n+9)-9)`
-/

namespace A264913.P5727084539948081252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A000217 (n + 9) - 9).toNat

end

end A264913.P5727084539948081252

/-! ## A264913.P660902380566954053

`A264909(A152947(n+10)+n-1)`
-/

namespace A264913.P660902380566954053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A152947 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A264913.P660902380566954053

/-! ## A264913.P17349287273606337793

`A264909(2*n+A000124(n+7)+7)`
-/

namespace A264913.P17349287273606337793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 ((2 * n : ℤ) + (A000124 (n + 7) + 7)).toNat

end

end A264913.P17349287273606337793

/-! ## A264913.P16967018821159010637

`A264909(A020742(n)+A000124(n+7))`
-/

namespace A264913.P16967018821159010637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A020742 n + A000124 (n + 7)).toNat

end

end A264913.P16967018821159010637

/-! ## A264913.P8720525680635157954

`A264909(A005408(n)+A055998(n+5)+10)`
-/

namespace A264913.P8720525680635157954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A005408 n + (A055998 (n + 5) + 10)).toNat

end

end A264913.P8720525680635157954

/-!
# A264914: Number of 9-ascent sequences of length n with no consecutive repeated letters.

The programs for A264914, there is no canonical definition to state claims against.
-/

/-! ## A264914.P8716425675831607847

`A264909(eq[9, A025581(n)])`
-/

namespace A264914.P8716425675831607847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264914.P8716425675831607847

/-! ## A264914.P1024476262077763608

`A264909(eq[10, A193739(n)])`
-/

namespace A264914.P1024476262077763608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264914.P1024476262077763608

/-! ## A264914.P8432621183711244859

`A264909(eq[10, A195663(n)])`
-/

namespace A264914.P8432621183711244859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264914.P8432621183711244859

/-! ## A264914.P16919132697803629769

`A264909(eq[19, A099375(n)])`
-/

namespace A264914.P16919132697803629769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264914.P16919132697803629769

/-! ## A264914.P2566876672248897528

`A264909(eq[10, A004736(n+1)])`
-/

namespace A264914.P2566876672248897528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264914.P2566876672248897528

/-!
# A264915: Number of 10-ascent sequences of length n with no consecutive repeated letters.

The programs for A264915, there is no canonical definition to state claims against.
-/

/-! ## A264915.P12183978338368030209

`A264909(eq[10, A025581(n)])`
-/

namespace A264915.P12183978338368030209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264915.P12183978338368030209

/-! ## A264915.P11317438263423240190

`A264909(eq[11, A193739(n)])`
-/

namespace A264915.P11317438263423240190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264915.P11317438263423240190

/-! ## A264915.P9372720174135272387

`A264909(eq[11, A195663(n)])`
-/

namespace A264915.P9372720174135272387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264915.P9372720174135272387

/-! ## A264915.P16875995105288418797

`A264909(eq[21, A099375(n)])`
-/

namespace A264915.P16875995105288418797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264915.P16875995105288418797

/-! ## A264915.P10801133134296971185

`A264909(eq[11, A004736(n+1)])`
-/

namespace A264915.P10801133134296971185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264915.P10801133134296971185

/-!
# A264916: Number of n-ascent sequences of length n with no consecutive repeated letters.

The programs for A264916, there is no canonical definition to state claims against.
-/

/-! ## A264916.P682485737710104718

`A264909(∑[4*n])`
-/

namespace A264916.P682485737710104718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264916.P682485737710104718

/-! ## A264916.P16426074600010645760

`lcm(A033999(n), A264909(A046092(n)))`
-/

namespace A264916.P16426074600010645760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264909 (A046092 n).toNat)

end

end A264916.P16426074600010645760

/-! ## A264916.P2199233598350969925

`or(A000007(n), A264909(A046092(n)))`
-/

namespace A264916.P2199233598350969925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264909 (A046092 n).toNat)

end

end A264916.P2199233598350969925

/-! ## A264916.P15624323421205420559

`A014963(12*n+6)*A264909(A046092(n))`
-/

namespace A264916.P15624323421205420559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A264909 (A046092 n).toNat

end

end A264916.P15624323421205420559

/-! ## A264916.P17210110743614174701

`A000041(C(2, 2*n))*A264909(A046092(n))`
-/

namespace A264916.P17210110743614174701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A264909 (A046092 n).toNat

end

end A264916.P17210110743614174701

/-!
# A264923: Expansion of g.f. 1 / Product_{n>=0} (1 - x^(n+3))^((n+1)*(n+2)/2!).

The programs for A264923, there is no canonical definition to state claims against.
-/

/-! ## A264923.P9550870386378808010

`A218913(n)-∑[A001221(A000667(n))]`
-/

namespace A264923.P9550870386378808010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218913 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264923.P9550870386378808010

/-! ## A264923.P11717961461902523264

`floor(root(A263867(n+2), 4))-(A240413(n+1)+1)%2`
-/

namespace A264923.P11717961461902523264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263867 (n + 2) : ℝ) ^ (1 / (4 : ℝ))⌋ - Int.tmod (A240413 (n + 1) + 1) 2

end

end A264923.P11717961461902523264

/-! ## A264923.P1483199429278452439

`∑[eq[A088863(n+1), A279945(n+1)]-1]+2-n`
-/

namespace A264923.P1483199429278452439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - (n : ℤ)

end

end A264923.P1483199429278452439

/-! ## A264923.P3634792875704497446

`A354912(A062721(n+1))%ceil(2^(n+1-log2(n+1)))`
-/

namespace A264923.P3634792875704497446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354912 (A062721 (n + 1)).toNat) ⌈(2 : ℝ) ^ ((n + 1 : ℝ) - Real.logb 2 (n + 1 : ℝ))⌉

end

end A264923.P3634792875704497446

/-! ## A264923.P5933875845639619890

`A012265(A000219(n)-A005251(n))`
-/

namespace A264923.P5933875845639619890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A000219 n - A005251 n).toNat

end

end A264923.P5933875845639619890

/-!
# A264924: G.f.: 1 / Product_{n>=0} (1 - x^(n+4))^((n+1)*(n+2)*(n+3)/3!).

The programs for A264924, there is no canonical definition to state claims against.
-/

/-! ## A264924.P11206427639731369450

`A123580(A368475(n))`
-/

namespace A264924.P11206427639731369450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A368475 n).toNat

end

end A264924.P11206427639731369450

/-! ## A264924.P14190996027863322369

`A123580(A243739(n+4))`
-/

namespace A264924.P14190996027863322369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A243739 (n + 4)).toNat

end

end A264924.P14190996027863322369

/-! ## A264924.P4415894159719239486

`A117332(A003065(n))-n`
-/

namespace A264924.P4415894159719239486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A003065 n).toNat - (n : ℤ)

end

end A264924.P4415894159719239486

/-! ## A264924.P7275684259510225532

`A117332(A073031(n))-n`
-/

namespace A264924.P7275684259510225532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A073031 n).toNat - (n : ℤ)

end

end A264924.P7275684259510225532

/-!
# A264925: G.f.: 1 / Product_{n>=0} (1 - x^(n+5))^((n+1)*(n+2)*(n+3)*(n+4)/4!).

The programs for A264925, there is no canonical definition to state claims against.
-/

/-! ## A264925.P10733262255078525402

`A275935(A077168(n+3))`
-/

namespace A264925.P10733262255078525402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 (A077168 (n + 3)).toNat

end

end A264925.P10733262255078525402

/-! ## A264925.P8842969265320586776

`A275935(A062399(n)+4)`
-/

namespace A264925.P8842969265320586776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 (A062399 n + 4).toNat

end

end A264925.P8842969265320586776

/-! ## A264925.P5153393458972410573

`A275935(A120126(n)+4)`
-/

namespace A264925.P5153393458972410573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 (A120126 n + 4).toNat

end

end A264925.P5153393458972410573

/-! ## A264925.P1351833103723935260

`A275935(A351870(n)+4)`
-/

namespace A264925.P1351833103723935260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 (A351870 n + 4).toNat

end

end A264925.P1351833103723935260

/-! ## A264925.P2557912872759263964

`A275935(A043318(n+3)+1)`
-/

namespace A264925.P2557912872759263964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 (A043318 (n + 3) + 1).toNat

end

end A264925.P2557912872759263964

/-!
# A264926: G.f.: 1 / Product_{n>=0} (1 - x^(n+6))^((n+1)*(n+2)*(n+3)*(n+4)*(n+5)/5!).

The programs for A264926, there is no canonical definition to state claims against.
-/

/-! ## A264926.P18024302107615048516

`A275936(A043318(n+1)+4)`
-/

namespace A264926.P18024302107615048516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275936 (A043318 (n + 1) + 4).toNat

end

end A264926.P18024302107615048516

/-! ## A264926.P7645970221256884138

`A275936(A004885(n+1)+5)`
-/

namespace A264926.P7645970221256884138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275936 (A004885 (n + 1) + 5).toNat

end

end A264926.P7645970221256884138

/-! ## A264926.P10634129077034370543

`A275936(A004896(n+1)+5)`
-/

namespace A264926.P10634129077034370543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275936 (A004896 (n + 1) + 5).toNat

end

end A264926.P10634129077034370543

/-! ## A264926.P1460687843509606996

`A099132(n)-A010059(A003945(n))`
-/

namespace A264926.P1460687843509606996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099132 n - A010059 (A003945 n).toNat

end

end A264926.P1460687843509606996

/-! ## A264926.P11889321851466339939

`A099132(n)-A068322(A049002(n+1))`
-/

namespace A264926.P11889321851466339939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099132 n - A068322 (A049002 (n + 1)).toNat

end

end A264926.P11889321851466339939

/-!
# A264927: Terms satisfy: a(2*n) = b(n)^2 and a(2*n+1) = b(n)*b(n+1) for n>=0 with a(0)=1, where A(x)^2 = Sum_{n>=0} b(n)*x^n and g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A264927, there is no canonical definition to state claims against.
-/

/-! ## A264927.P1267358104598909431

`A171181(10*a(n-1)+9)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A264927.P1267358104598909431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A171181 (10 * a (n - 1) + 9).toNat

end

end A264927.P1267358104598909431

/-! ## A264927.P1971036147990390685

`A020657(floor(round(sqrt(n+1))^(n-1))²+1)`
-/

namespace A264927.P1971036147990390685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (⌊(SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2 + 1).toNat

end

end A264927.P1971036147990390685

/-!
# A264928: G.f.: exp( Sum_{n>=1} x^n/n * (1 - 3*x^n)/(1 - x^n) ).

The programs for A264928, there is no canonical definition to state claims against.
-/

/-! ## A264928.P2097450247231135995

`∑[∑[∑[A002107(n)]]]`
-/

namespace A264928.P2097450247231135995
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264928.P2097450247231135995

/-! ## A264928.P13228871155832826415

`∑[∑[∑[A033999(n)*A208845(n)]]]`
-/

namespace A264928.P13228871155832826415
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264928.P13228871155832826415

/-! ## A264928.P15210092492880117154

`∑[∑[∑[(1-2*A000035(n))*A208845(n)]]]`
-/

namespace A264928.P15210092492880117154
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A208845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264928.P15210092492880117154

/-! ## A264928.P3524015645115624646

`∑[∑[∑[A293388(∑[n+2]-1)%8]]]`
-/

namespace A264928.P3524015645115624646
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293388 (∑ j ∈ Finset.range (n + 1), f4 j - 1)) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264928.P3524015645115624646

/-! ## A264928.P5053269653924900708

`∑[∑[∑[A286354(∑[n+3])]]]`
-/

namespace A264928.P5053269653924900708
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264928.P5053269653924900708

/-! ## A264928.P4701804833612192923

`∑[∑[∑[A050305((n+1)²+n²)]]]`
-/

namespace A264928.P4701804833612192923
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050305 ((n + 1) ^ 2 + n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264928.P4701804833612192923

/-!
# A264930: 

The programs for A264930, there is no canonical definition to state claims against.
-/

/-! ## A264930.P17173090503479129982

`n^n^A000045(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A264930.P17173090503479129982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℝ) ^ ((n : ℚ) ^ (A000045 (SequenceMachineLib.roundAway (a (n - 2))).toNat : ℤ) : ℝ)

end

end A264930.P17173090503479129982

/-!
# A264933: a(0)=0; a(1)=1; a(2)=2; a(n) = a(n-1)^a(n-2)^a(n-3).

The programs for A264933, there is no canonical definition to state claims against.
-/

/-! ## A264933.P16159586134813742280

`4^a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A264933.P16159586134813742280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 4] fun n a =>
  4 ^ a (n - 1)

end

end A264933.P16159586134813742280

/-!
# A264935: Numbers k such that the average of the digits of the k-th Fibonacci number is greater than 5.

The programs for A264935, there is no canonical definition to state claims against.
-/

/-! ## A264935.P17564555616567268222

`lt[A000720(A138980(n)), A004090(n)]`
-/

namespace A264935.P17564555616567268222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264935.P17564555616567268222

/-! ## A264935.P10330422579052331913

`lt[A000009(3*n), A143823(A004090(n))]`
-/

namespace A264935.P10330422579052331913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (A004090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264935.P10330422579052331913

/-! ## A264935.P10865877146680279198

`lt[A335376(n+1), A004090(n)]`
-/

namespace A264935.P10865877146680279198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264935.P10865877146680279198

/-! ## A264935.P17834039635668235171

`lt[A353838(n+1), A004090(n)]`
-/

namespace A264935.P17834039635668235171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264935.P17834039635668235171

/-! ## A264935.P2675862101072071334

`lt[A335376(n+1)+A280185(n), n]`
-/

namespace A264935.P2675862101072071334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (n + 1) + A280185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A264935.P2675862101072071334

/-!
# A264937: Positive numbers k such that (10^(k+2) - 49) / 3 is prime.

The programs for A264937, there is no canonical definition to state claims against.
-/

/-! ## A264937.P3985572489802970471

`record[gcd(A265227(10*n+13), A312437(5*n+8))]`
-/

namespace A264937.P3985572489802970471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265227 (10 * n + 13)) (A312437 (5 * n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264937.P3985572489802970471

/-!
# A264938: a(n) = n*(2*n-1) + floor(n/3).

The programs for A264938, the canonical program `A264938.P1361556350688262366` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264938 has offset 0).

The definition of A264938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-1)+floor(n/3)` (program `A264938.P1361556350688262366`, by `A264938.P1361556350688262366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264938.P1361556350688262366

`n*(2*n-1)+floor(n/3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264938

/-- `n*(2*n-1)+floor(n/3)` -/
def P1361556350688262366.Spec : Prop :=
  ∀ n, P1361556350688262366.a n = A264938 n

theorem P1361556350688262366.correct : P1361556350688262366.Spec := by
  intro n
  simp only [A264938]

end A264938

/-! ## A264938.P18234001986394610199

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A264938.P18234001986394610199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264938.P18234001986394610199

namespace A264938

/-- `∑[∑[floor(a(n-3))]]` -/
def P18234001986394610199.Spec : Prop :=
  ∀ n, (P18234001986394610199.a n : ℤ) = A264938 n

end A264938

/-! ## A264938.P13228249713009949239

`round(C(2*n, 2)+(n-1)/3)`
-/

namespace A264938.P13228249713009949239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 2 : ℚ) + ((n : ℤ) - 1 : ℚ) / 3)

end

end A264938.P13228249713009949239

namespace A264938

/-- `round(C(2*n, 2)+(n-1)/3)` -/
def P13228249713009949239.Spec : Prop :=
  ∀ n, P13228249713009949239.a n = A264938 n

end A264938

/-! ## A264938.P5544613339433907938

`ceil(C(2*n, 2)+(n-2)/3)`
-/

namespace A264938.P5544613339433907938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 : ℚ) + ((n : ℤ) - 2 : ℚ) / 3⌉

end

end A264938.P5544613339433907938

namespace A264938

/-- `ceil(C(2*n, 2)+(n-2)/3)` -/
def P5544613339433907938.Spec : Prop :=
  ∀ n, P5544613339433907938.a n = A264938 n

end A264938

/-! ## A264938.P12912527887851352222

`∑[∑[a(n-3)%n]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=3`
-/

namespace A264938.P12912527887851352222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5, 3] fun n f2 =>
  f2 (n - 3) % n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264938.P12912527887851352222

namespace A264938

/-- `∑[∑[a(n-3)%n]]` -/
def P12912527887851352222.Spec : Prop :=
  ∀ n, (P12912527887851352222.a n : ℤ) = A264938 n

end A264938

/-! ## A264938.P10508782597250310995

`ceil(((n-1)*A016957(n)+2)/3)`
-/

namespace A264938.P10508782597250310995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1) * A016957 n + 2 : ℚ) / 3⌉

end

end A264938.P10508782597250310995

namespace A264938

/-- `ceil(((n-1)*A016957(n)+2)/3)` -/
def P10508782597250310995.Spec : Prop :=
  ∀ n, P10508782597250310995.a n = A264938 n

end A264938

/-! ## A264938.P10984783424810845987

`A069894(n)%A248121(n+1)`
-/

namespace A264938.P10984783424810845987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069894 n) (A248121 (n + 1))

end

end A264938.P10984783424810845987

namespace A264938

/-- `A069894(n)%A248121(n+1)` -/
def P10984783424810845987.Spec : Prop :=
  ∀ n, P10984783424810845987.a n = A264938 n

end A264938

/-! ## A264938.P16350655405997731571

`A260708(A004273(n))`
-/

namespace A264938.P16350655405997731571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 (A004273 n).toNat

end

end A264938.P16350655405997731571

namespace A264938

/-- `A260708(A004273(n))` -/
def P16350655405997731571.Spec : Prop :=
  ∀ n, P16350655405997731571.a n = A264938 n

end A264938

/-! ## A264938.P12776357342904635669

`A004773(A000326(n))`
-/

namespace A264938.P12776357342904635669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A000326 n).toNat

end

end A264938.P12776357342904635669

namespace A264938

/-- `A004773(A000326(n))` -/
def P12776357342904635669.Spec : Prop :=
  ∀ n, P12776357342904635669.a n = A264938 n

end A264938

/-! ## A264938.P3083375934466906972

`A004523(A049450(n))`
-/

namespace A264938.P3083375934466906972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A049450 n).toNat

end

end A264938.P3083375934466906972

namespace A264938

/-- `A004523(A049450(n))` -/
def P3083375934466906972.Spec : Prop :=
  ∀ n, P3083375934466906972.a n = A264938 n

end A264938

/-!
# A264939: Number of n X n arrays containing n copies of 0..n-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264939, there is no canonical definition to state claims against.
-/

/-! ## A264939.P17420074706268243133

`A264945(∑[4*n]+1)`
-/

namespace A264939.P17420074706268243133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264939.P17420074706268243133

/-!
# A264940: Lucky factor of n.

The programs for A264940, there is no canonical definition to state claims against.
-/

/-! ## A264940.P7724748681390169174

`A262775(A265859(n+1)%A032647(n+1))`
-/

namespace A264940.P7724748681390169174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 (Int.tmod (A265859 (n + 1)) (A032647 (n + 1))).toNat

end

end A264940.P7724748681390169174

/-! ## A264940.P8126084136773653014

`A262775(A265859(n+1))%A262759(n+1)`
-/

namespace A264940.P8126084136773653014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262775 (A265859 (n + 1)).toNat) (A262759 (n + 1))

end

end A264940.P8126084136773653014

/-! ## A264940.P13754440893090474278

`A262775(A265859(n+1))+C(A283795(n)%3+2, 6)/6`
-/

namespace A264940.P13754440893090474278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262775 (A265859 (n + 1)).toNat : ℚ) + (Nat.choose (Int.tmod (A283795 n) 3 + 2).toNat 6 : ℚ) / 6

end

end A264940.P13754440893090474278

/-! ## A264940.P6460298398708540062

`A262775(A265859(n+1))+A000007(A283795(n))`
-/

namespace A264940.P6460298398708540062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 (A265859 (n + 1)).toNat + A000007 (A283795 n).toNat

end

end A264940.P6460298398708540062

/-! ## A264940.P7957177262583288909

`A262775(A265859(n+1))+A000007(A096670(n+4))`
-/

namespace A264940.P7957177262583288909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 (A265859 (n + 1)).toNat + A000007 (A096670 (n + 4)).toNat

end

end A264940.P7957177262583288909

/-! ## A264940.P9846561541537868538

`A007318(A151933(n+2))*A262775(A265859(n+1))`
-/

namespace A264940.P9846561541537868538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A151933 (n + 2)).toNat * A262775 (A265859 (n + 1)).toNat

end

end A264940.P9846561541537868538

/-! ## A264940.P890568974899114290

`A262775(A265859(n+1)%p?[A262775(n)])`
-/

namespace A264940.P890568974899114290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 (Int.tmod (A265859 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A264940.P890568974899114290

/-! ## A264940.P6413210550216407324

`A262775(A265859(n+1))+A000007(A283808(n+1))`
-/

namespace A264940.P6413210550216407324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 (A265859 (n + 1)).toNat + A000007 (A283808 (n + 1)).toNat

end

end A264940.P6413210550216407324

/-! ## A264940.P4798372160983847980

`A262775(A265859(n+1))+A000007(A283814(n+1))`
-/

namespace A264940.P4798372160983847980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 (A265859 (n + 1)).toNat + A000007 (A283814 (n + 1)).toNat

end

end A264940.P4798372160983847980

/-! ## A264940.P14107247630874680909

`A262775(A265859(n+1))%A048379(A340962(n))`
-/

namespace A264940.P14107247630874680909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262775 (A265859 (n + 1)).toNat) (A048379 (A340962 (n + 12)).toNat)

end

end A264940.P14107247630874680909

/-!
# A264941: Number of n X 3 arrays containing 3 copies of 0..n-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264941, there is no canonical definition to state claims against.
-/

/-! ## A264941.P12653835292692779392

`A264945(∑[n+3]+1)`
-/

namespace A264941.P12653835292692779392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264941.P12653835292692779392

/-! ## A264941.P15438304900254648028

`record[A264945(A198464(n+1))]`
-/

namespace A264941.P15438304900254648028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264941.P15438304900254648028

/-!
# A264942: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264942, there is no canonical definition to state claims against.
-/

/-! ## A264942.P13921206394588997640

`A264945(∑[n+4]+3)`
-/

namespace A264942.P13921206394588997640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264942.P13921206394588997640

/-! ## A264942.P17751174595247111005

`lcm(2, A264945(A141214(n+1)))`
-/

namespace A264942.P17751174595247111005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A264945 (A141214 (n + 1)).toNat)

end

end A264942.P17751174595247111005

/-! ## A264942.P15461401982840096059

`A264945(A141214(n+1))+A025439(n)`
-/

namespace A264942.P15461401982840096059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A141214 (n + 1)).toNat + A025439 n

end

end A264942.P15461401982840096059

/-! ## A264942.P14172643152971406061

`A264945(A141214(n+1))+A025443(n)`
-/

namespace A264942.P14172643152971406061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A141214 (n + 1)).toNat + A025443 n

end

end A264942.P14172643152971406061

/-!
# A264943: Number of nX5 arrays of permutations of 5 copies of 0..n-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264943, there is no canonical definition to state claims against.
-/

/-! ## A264943.P15227421284303537541

`record[A264945(A052905(n)+1)]`
-/

namespace A264943.P15227421284303537541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264943.P15227421284303537541

/-! ## A264943.P4204922507989168255

`A264945(A052905(n+2)+1)`
-/

namespace A264943.P4204922507989168255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A052905 (n + 2) + 1).toNat

end

end A264943.P4204922507989168255

/-! ## A264943.P16340519368111391404

`record[A264945(A198464(n+1)-2)]`
-/

namespace A264943.P16340519368111391404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264943.P16340519368111391404

/-!
# A264944: Number of nX6 arrays of permutations of 6 copies of 0..n-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264944, there is no canonical definition to state claims against.
-/

/-! ## A264944.P17312784488845851714

`A264945(A052905(n+3))`
-/

namespace A264944.P17312784488845851714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A052905 (n + 3)).toNat

end

end A264944.P17312784488845851714

/-!
# A264945: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264945, there is no canonical definition to state claims against.
-/

/-! ## A264945.P8529987145006540604

`A230889(A256130(n))%10`
-/

namespace A264945.P8529987145006540604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230889 (A256130 n).toNat) 10

end

end A264945.P8529987145006540604

/-! ## A264945.P3797272175929313661

`A001222(A132393(n)+A022183(n))`
-/

namespace A264945.P3797272175929313661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A132393 n + A022183 n).toNat

end

end A264945.P3797272175929313661

/-! ## A264945.P2390419643701936348

`A088990(n)+A058710(A056939(n))`
-/

namespace A264945.P2390419643701936348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088990 n + A058710 (A056939 n).toNat

end

end A264945.P2390419643701936348

/-! ## A264945.P17735031639069529909

`A105367(A022183(n))+A088990(n)`
-/

namespace A264945.P17735031639069529909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105367 (A022183 n).toNat + A088990 n

end

end A264945.P17735031639069529909

/-! ## A264945.P8216507324463702755

`A088990(n)+A058710(A168288(n))`
-/

namespace A264945.P8216507324463702755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088990 n + A058710 (A168288 n).toNat

end

end A264945.P8216507324463702755

/-!
# A264946: Number of 3 X n arrays containing n copies of 0..3-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264946, there is no canonical definition to state claims against.
-/

/-! ## A264946.P2088565728335637949

`A264945(∑[n+2]+4)`
-/

namespace A264946.P2088565728335637949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264946.P2088565728335637949

/-! ## A264946.P3426697283746107305

`record[A264945(A152950(n+1))]`
-/

namespace A264946.P3426697283746107305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A152950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264946.P3426697283746107305

/-! ## A264946.P11057624600113058210

`record[A264945(A000124(n)+2)]`
-/

namespace A264946.P11057624600113058210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264946.P11057624600113058210

/-! ## A264946.P686778604001464077

`record[A264945(A000217(n)+3)]`
-/

namespace A264946.P686778604001464077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264946.P686778604001464077

/-! ## A264946.P4672464651001963855

`record[gcd(A086329(n), A264945(n+3))]`
-/

namespace A264946.P4672464651001963855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086329 n) (A264945 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264946.P4672464651001963855

/-!
# A264947: Number of 4 X n arrays containing n copies of 0..4-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264947, there is no canonical definition to state claims against.
-/

/-! ## A264947.P18426539123088190122

`A264945(C(n+4, 2)+4)`
-/

namespace A264947.P18426539123088190122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (Nat.choose (n + 4) 2 + 4)

end

end A264947.P18426539123088190122

/-! ## A264947.P17099328150976758441

`A264945(A141214(n)+7)`
-/

namespace A264947.P17099328150976758441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A141214 n + 7).toNat

end

end A264947.P17099328150976758441

/-! ## A264947.P15200700972002099715

`A264945(A052905(n)+9)`
-/

namespace A264947.P15200700972002099715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A052905 n + 9).toNat

end

end A264947.P15200700972002099715

/-! ## A264947.P6156122443593249733

`A264945(A055999(n)+10)`
-/

namespace A264947.P6156122443593249733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A055999 n + 10).toNat

end

end A264947.P6156122443593249733

/-!
# A264948: Number of 5Xn arrays containing n copies of 0..5-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264948, there is no canonical definition to state claims against.
-/

/-! ## A264948.P5509058972450462605

`record[A264945(A167499(n))]`
-/

namespace A264948.P5509058972450462605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264948.P5509058972450462605

/-! ## A264948.P6937816378513067

`A264945(eq[7, A066657(n)])`
-/

namespace A264948.P6937816378513067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264948.P6937816378513067

/-!
# A264949: Number of 6Xn arrays containing n copies of 0..6-1 with no equal horizontal neighbors and new values introduced sequentially from 0.

The programs for A264949, there is no canonical definition to state claims against.
-/

/-! ## A264949.P175309431993082748

`A264945(eq[7, A131818(n+1)])`
-/

namespace A264949.P175309431993082748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264949.P175309431993082748

/-!
# A264951: Amicable digital numbers.

The programs for A264951, there is no canonical definition to state claims against.
-/

/-! ## A264951.P17551833500100467157

`A264958(∑[A006820(n)!])`
-/

namespace A264951.P17551833500100467157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006820 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264958 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264951.P17551833500100467157

/-! ## A264951.P13649521172693412595

`A264958(∑[A328960(n)!])`
-/

namespace A264951.P13649521172693412595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264958 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264951.P13649521172693412595

/-! ## A264951.P217176533051407742

`A264958(A006820(n)!+n)`
-/

namespace A264951.P217176533051407742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264958 (Nat.factorial (A006820 n).toNat + n)

end

end A264951.P217176533051407742

/-! ## A264951.P15286793030263633009

`A262615(∑[A006820(n)!²])`
-/

namespace A264951.P15286793030263633009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006820 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264951.P15286793030263633009

/-!
# A264952: Number of nX2 arrays containing 2 copies of 0..n-1 with no equal horizontal or vertical neighbors.

The programs for A264952, there is no canonical definition to state claims against.
-/

/-! ## A264952.P4442517687599018175

`(n+1)!*A265167(n+1)`
-/

namespace A264952.P4442517687599018175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A265167 (n + 1)

end

end A264952.P4442517687599018175

/-! ## A264952.P5390937411934767792

`Δ[A007489(n)]*A265167(n+1)`
-/

namespace A264952.P5390937411934767792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A265167 (n + 1)

end

end A264952.P5390937411934767792

/-! ## A264952.P14678990238260576044

`∏[A291769(n)]*A265167(n+1)`
-/

namespace A264952.P14678990238260576044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A265167 (n + 1)

end

end A264952.P14678990238260576044

/-! ## A264952.P9313735381218625746

`record[A123361(n)]*A265167(n+1)`
-/

namespace A264952.P9313735381218625746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A265167 (n + 1)

end

end A264952.P9313735381218625746

/-! ## A264952.P5235415280530757577

`∑[A094258(n+1)]*A265167(n+1)`
-/

namespace A264952.P5235415280530757577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A265167 (n + 1)

end

end A264952.P5235415280530757577

/-!
# A264953: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal horizontal or vertical neighbors.

The programs for A264953, there is no canonical definition to state claims against.
-/

/-! ## A264953.P5184264478433313662

`A264954(∑[n+3]+1)`
-/

namespace A264953.P5184264478433313662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264953.P5184264478433313662

/-! ## A264953.P12180260410748011145

`lcm(2, A264954(A034856(n+2)))`
-/

namespace A264953.P12180260410748011145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A264954 (A034856 (n + 2)).toNat)

end

end A264953.P12180260410748011145

/-! ## A264953.P6389393119508600797

`A077168(n)!*A265168(n+1)`
-/

namespace A264953.P6389393119508600797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A077168 n).toNat : ℤ) * A265168 (n + 1)

end

end A264953.P6389393119508600797

/-! ## A264953.P1822900031525036033

`A291766(n)!*A265168(n+1)`
-/

namespace A264953.P1822900031525036033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A291766 n).toNat : ℤ) * A265168 (n + 1)

end

end A264953.P1822900031525036033

/-!
# A264954: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal horizontal or vertical neighbors.

The programs for A264954, there is no canonical definition to state claims against.
-/

/-! ## A264954.P13522502489616128409

`A166350(n+1)*A265170(n+1)`
-/

namespace A264954.P13522502489616128409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) * A265170 (n + 1)

end

end A264954.P13522502489616128409

/-! ## A264954.P18045342976190728283

`A002260(n+1)!*A265170(n+1)`
-/

namespace A264954.P18045342976190728283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A265170 (n + 1)

end

end A264954.P18045342976190728283

/-! ## A264954.P11112176772755958765

`A214078(A133819(n+1))*A265170(n+1)`
-/

namespace A264954.P11112176772755958765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A133819 (n + 1)).toNat * A265170 (n + 1)

end

end A264954.P11112176772755958765

/-! ## A264954.P11713528023383250657

`A214078(A002260(n+1)²)*A265170(n+1)`
-/

namespace A264954.P11713528023383250657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A002260 (n + 1) ^ 2).toNat * A265170 (n + 1)

end

end A264954.P11713528023383250657

/-! ## A264954.P13661698973090799679

`A000142(sqrt(A133819(n+1)))*A265170(n+1)`
-/

namespace A264954.P13661698973090799679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A265170 (n + 1)

end

end A264954.P13661698973090799679

/-!
# A264955: Number of 3Xn arrays containing n copies of 0..3-1 with no equal horizontal or vertical neighbors.

The programs for A264955, there is no canonical definition to state claims against.
-/

/-! ## A264955.P14758232879670305395

`6*A199128(n+1)`
-/

namespace A264955.P14758232879670305395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A199128 (n + 1)

end

end A264955.P14758232879670305395

/-! ## A264955.P12900417293211983446

`6*A199133(∑[n+2]+4)`
-/

namespace A264955.P12900417293211983446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A199133 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264955.P12900417293211983446

/-! ## A264955.P11011375899046356350

`6*A199133(A167614(n+1))%(n+2)!`
-/

namespace A264955.P11011375899046356350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A199133 (A167614 (n + 1)).toNat) (Nat.factorial (n + 2) : ℤ)

end

end A264955.P11011375899046356350

/-! ## A264955.P16857124851589691351

`6*lcm(A001221(n+2), A199133(A167614(n+1)))`
-/

namespace A264955.P16857124851589691351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Int.lcm (A001221 (n + 2)) (A199133 (A167614 (n + 1)).toNat)

end

end A264955.P16857124851589691351

/-! ## A264955.P3101854863787613937

`6*A007318(C(n, 2))*A199133(A167614(n+1))`
-/

namespace A264955.P3101854863787613937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A007318 (Nat.choose n 2) * A199133 (A167614 (n + 1)).toNat)

end

end A264955.P3101854863787613937

/-!
# A264956: Number of 4 X n arrays containing n copies of 0..4-1 with no equal horizontal or vertical neighbors.

The programs for A264956, there is no canonical definition to state claims against.
-/

/-! ## A264956.P3081337958926592883

`24*A199252(n+1)`
-/

namespace A264956.P3081337958926592883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A199252 (n + 1)

end

end A264956.P3081337958926592883

/-! ## A264956.P16797803989759333427

`24*A199256(∑[n+3]+7)`
-/

namespace A264956.P16797803989759333427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A199256 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264956.P16797803989759333427

/-! ## A264956.P4144915087713780084

`24*A103377(n+1)*A199256(A141214(n)+7)`
-/

namespace A264956.P4144915087713780084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A103377 (n + 1) * A199256 (A141214 n + 7).toNat)

end

end A264956.P4144915087713780084

/-! ## A264956.P11678612126390752230

`A264954(A145018(n+4))`
-/

namespace A264956.P11678612126390752230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (A145018 (n + 4)).toNat

end

end A264956.P11678612126390752230

/-!
# A264957: Number of 5Xn arrays containing n copies of 0..5-1 with no equal horizontal or vertical neighbors.

The programs for A264957, there is no canonical definition to state claims against.
-/

/-! ## A264957.P5236787294246671055

`A264954(A155212(n)+13)`
-/

namespace A264957.P5236787294246671055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (A155212 n + 13).toNat

end

end A264957.P5236787294246671055

/-! ## A264957.P8217462199004791617

`A264954(eq[7, A066657(n)])`
-/

namespace A264957.P8217462199004791617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264957.P8217462199004791617

/-!
# A264958: Amicable digital pair: the pairs from A262615 ordered by their smallest member.

The programs for A264958, there is no canonical definition to state claims against.
-/

/-! ## A264958.P6916376369841444949

`A262615(or(A077727(n+1), A338554(n)))`
-/

namespace A264958.P6916376369841444949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (Int.lor (A077727 (n + 1)) (A338554 n)).toNat

end

end A264958.P6916376369841444949

/-! ## A264958.P8178359610574018021

`A262615(or(A306360(n+1), A338554(n)))`
-/

namespace A264958.P8178359610574018021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (Int.lor (A306360 (n + 1)) (A338554 n)).toNat

end

end A264958.P8178359610574018021

/-! ## A264958.P6474498480252898826

`A262615(A262619(n+1)+A004914(n+1))`
-/

namespace A264958.P6474498480252898826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (A262619 (n + 1) + A004914 (n + 1)).toNat

end

end A264958.P6474498480252898826

/-! ## A264958.P11283824998460165620

`A262615(A262619(n+1)+A029965(n+1))`
-/

namespace A264958.P11283824998460165620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262615 (A262619 (n + 1) + A029965 (n + 1)).toNat

end

end A264958.P11283824998460165620

/-!
# A264959: a(n) = A257851(n,n).

The programs for A264959, there is no canonical definition to state claims against.
-/

/-! ## A264959.P17600068224782370753

`A257851(∑[n]+n)`
-/

namespace A264959.P17600068224782370753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257851 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A264959.P17600068224782370753

/-! ## A264959.P6468534533108744056

`record[A257851(A061579(n))]`
-/

namespace A264959.P6468534533108744056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257851 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264959.P6468534533108744056

/-! ## A264959.P14026308897323798608

`record[A023531(n)*A257851(n)]`
-/

namespace A264959.P14026308897323798608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A257851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264959.P14026308897323798608

/-! ## A264959.P14952096037123836463

`record[A103452(n)*A257851(n)]`
-/

namespace A264959.P14952096037123836463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A257851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264959.P14952096037123836463

/-! ## A264959.P17469685057916408214

`record[A167374(n)*A257851(n)]`
-/

namespace A264959.P17469685057916408214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A257851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264959.P17469685057916408214

/-!
# A264960: Half-convolution of the central binomial coefficients A000984 with itself.

The programs for A264960, the canonical program `A264960.P11808814825159870349` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264960 has offset 0).

The definition of A264960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264960.P6476652801157037197

`A187151(n)+A186648(n)`
-/

namespace A264960.P6476652801157037197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187151 n + A186648 n

end

end A264960.P6476652801157037197

namespace A264960

/-- `A187151(n)+A186648(n)` -/
def P6476652801157037197.Spec : Prop :=
  ∀ n, P6476652801157037197.a n = A264960 n

end A264960

/-! ## A264960.P3343317062112735257

`A032443(n)-A058621(n)`
-/

namespace A264960.P3343317062112735257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n - A058621 n

end

end A264960.P3343317062112735257

namespace A264960

/-- `A032443(n)-A058621(n)` -/
def P3343317062112735257.Spec : Prop :=
  ∀ n, P3343317062112735257.a n = A264960 n

end A264960

/-! ## A264960.P9336567378318845530

`A000984(n)+2*A186648(n)`
-/

namespace A264960.P9336567378318845530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A186648 n

end

end A264960.P9336567378318845530

namespace A264960

/-- `A000984(n)+2*A186648(n)` -/
def P9336567378318845530.Spec : Prop :=
  ∀ n, P9336567378318845530.a n = A264960 n

end A264960

/-! ## A264960.P14981130257213756058

`A027306(2*n)-A058621(n)`
-/

namespace A264960.P14981130257213756058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (2 * n) - A058621 n

end

end A264960.P14981130257213756058

namespace A264960

/-- `A027306(2*n)-A058621(n)` -/
def P14981130257213756058.Spec : Prop :=
  ∀ n, P14981130257213756058.a n = A264960 n

end A264960

/-! ## A264960.P6930273209819311464

`2*A187151(n)-A000984(n)`
-/

namespace A264960.P6930273209819311464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187151 n - A000984 n

end

end A264960.P6930273209819311464

namespace A264960

/-- `2*A187151(n)-A000984(n)` -/
def P6930273209819311464.Spec : Prop :=
  ∀ n, P6930273209819311464.a n = A264960 n

end A264960

/-! ## A264960.P11808814825159870349

`A027306(n)²+A058622(n)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A264960

/-- `A027306(n)²+A058622(n)²` -/
def P11808814825159870349.Spec : Prop :=
  ∀ n, P11808814825159870349.a n = A264960 n

theorem P11808814825159870349.correct : P11808814825159870349.Spec := by
  intro n
  simp only [A264960]

end A264960

/-! ## A264960.P6685590173594727264

`(A000302(n)+A126869(n)²)/2`
-/

namespace A264960.P6685590173594727264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n + A126869 n ^ 2 : ℚ) / 2

end

end A264960.P6685590173594727264

namespace A264960

/-- `(A000302(n)+A126869(n)²)/2` -/
def P6685590173594727264.Spec : Prop :=
  ∀ n, P6685590173594727264.a n = (A264960 n : ℚ)

end A264960

/-! ## A264960.P13762360416076119538

`A001405(A005843(n))+2*A186648(n)`
-/

namespace A264960.P13762360416076119538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A005843 n).toNat + 2 * A186648 n

end

end A264960.P13762360416076119538

namespace A264960

/-- `A001405(A005843(n))+2*A186648(n)` -/
def P13762360416076119538.Spec : Prop :=
  ∀ n, P13762360416076119538.a n = A264960 n

end A264960

/-! ## A264960.P10364427773702726797

`2*A187151(n)-A001405(A005843(n))`
-/

namespace A264960.P10364427773702726797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187151 n - A001405 (A005843 n).toNat

end

end A264960.P10364427773702726797

namespace A264960

/-- `2*A187151(n)-A001405(A005843(n))` -/
def P10364427773702726797.Spec : Prop :=
  ∀ n, P10364427773702726797.a n = A264960 n

end A264960

/-!
# A264962: Pulsating Checkpoint Sequence: use powers of 2 as checkpoints; place powers of 2, starting with 4, with spacing equal to the previous power of 2. Whenever we encounter a checkpoint, we jump over it; otherwise, we insert four numbers into the sequence: 2p, p, 3p, and 3p+3, where p is the smallest odd prime not yet in the sequence.

The programs for A264962, there is no canonical definition to state claims against.
-/

/-! ## A264962.P16924637872147527797

`A202952(A184955(n))+A064413(n+3)`
-/

namespace A264962.P16924637872147527797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202952 (A184955 n).toNat + A064413 (n + 3)

end

end A264962.P16924637872147527797

/-! ## A264962.P3155064170439275200

`or(A064413(n+3), A326540(A309633(2*(n+2))))`
-/

namespace A264962.P3155064170439275200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064413 (n + 3)) (A326540 (A309633 (2 * (n + 2))).toNat)

end

end A264962.P3155064170439275200

/-! ## A264962.P3366302208123641778

`A064413(A187829(n+1)+2)`
-/

namespace A264962.P3366302208123641778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A187829 (n + 1) + 2).toNat

end

end A264962.P3366302208123641778

/-! ## A264962.P7861435161473383074

`A064413(n+3)%A046416(n+1)`
-/

namespace A264962.P7861435161473383074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064413 (n + 3)) (A046416 (n + 1))

end

end A264962.P7861435161473383074

/-! ## A264962.P14235152087921517174

`A286996(round(2^(n-1)))+A064413(n+3)`
-/

namespace A264962.P14235152087921517174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286996 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + A064413 (n + 3)

end

end A264962.P14235152087921517174

/-!
# A264963: Number of down-up parking functions of length n.

The programs for A264963, there is no canonical definition to state claims against.
-/

/-! ## A264963.P4792140397699833456

`xor(A120813(n+1), A330626(n))`
-/

namespace A264963.P4792140397699833456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120813 (n + 1)) (A330626 n)

end

end A264963.P4792140397699833456

/-! ## A264963.P3704503139795429087

`A145101(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A264963.P3704503139795429087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A145101 (a (n - 1)).toNat

end

end A264963.P3704503139795429087

/-!
# A264964: Numbers that are the sum of two binary palindromes of the same (binary) length.

The programs for A264964, there is no canonical definition to state claims against.
-/

/-! ## A264964.P6202221811576949322

`lt[A181187(A272919(n+1)), A393209(n+1)]`
-/

namespace A264964.P6202221811576949322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (A272919 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393209 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A264964.P6202221811576949322

/-! ## A264964.P6418426009828176231

`∑[A001222(A000694(n+1)²)]`
-/

namespace A264964.P6418426009828176231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000694 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264964.P6418426009828176231

/-! ## A264964.P13836404099149073897

`record[A000005(A290508(n+1))-6]`
-/

namespace A264964.P13836404099149073897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A290508 (n + 1)).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264964.P13836404099149073897

/-! ## A264964.P13367780423847220995

`eq[A175835(n+1)!, A230642(n)]`
-/

namespace A264964.P13367780423847220995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A175835 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264964.P13367780423847220995

/-! ## A264964.P2100558592064647263

`eq[(-1)^n, A007723(A245547(2*(n+1)))]`
-/

namespace A264964.P2100558592064647263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A245547 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264964.P2100558592064647263

/-!
# A264965: Permutation of nonnegative integers: a(n) = A263273(A057889(n)).

The programs for A264965, there is no canonical definition to state claims against.
-/

/-! ## A264965.P9537787199524934536

`A263273(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264965.P9537787199524934536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A057889 n).toNat

end

end A264965.P9537787199524934536

/-! ## A264965.P10187370128571152364

`A265352(A266641(n))`
-/

namespace A264965.P10187370128571152364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A266641 n).toNat

end

end A264965.P10187370128571152364

/-! ## A264965.P1120428817665493718

`A263273(A266642(A263272(n)))`
-/

namespace A264965.P1120428817665493718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266642 (A263272 n).toNat).toNat

end

end A264965.P1120428817665493718

/-! ## A264965.P1684305304340579317

`A266643(A246200(A057889(A264993(A264993(n)))))`
-/

namespace A264965.P1684305304340579317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 (A057889 (A264993 (A264993 n).toNat).toNat).toNat).toNat

end

end A264965.P1684305304340579317

/-! ## A264965.P5220669347615756860

`A266643(A246200(A057889(A264994(A264994(n)))))`
-/

namespace A264965.P5220669347615756860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 (A057889 (A264994 (A264994 n).toNat).toNat).toNat).toNat

end

end A264965.P5220669347615756860

/-! ## A264965.P208765413330694058

`A266643(A246200(A057889(A265335(A265335(n)))))`
-/

namespace A264965.P208765413330694058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 (A057889 (A265335 (A265335 n).toNat).toNat).toNat).toNat

end

end A264965.P208765413330694058

/-! ## A264965.P799008620732107814

`A265329(A263273(n))`
-/

namespace A264965.P799008620732107814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A263273 n).toNat

end

end A264965.P799008620732107814

/-! ## A264965.P6132431003079311238

`A265329(A057889(A264966(n)))`
-/

namespace A264965.P6132431003079311238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A057889 (A264966 n).toNat).toNat

end

end A264965.P6132431003079311238

/-! ## A264965.P2230998091962698646

`A265329(A266643(A246200(n)))`
-/

namespace A264965.P2230998091962698646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A266643 (A246200 n).toNat).toNat

end

end A264965.P2230998091962698646

/-! ## A264965.P9316381689763706376

`A265329(A246200(A266644(n)))`
-/

namespace A264965.P9316381689763706376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A246200 (A266644 n).toNat).toNat

end

end A264965.P9316381689763706376

/-! ## A264965.P4622688496413778804

`A265329(A263272(A265351(n)))`
-/

namespace A264965.P4622688496413778804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A263272 (A265351 n).toNat).toNat

end

end A264965.P4622688496413778804

/-! ## A264965.P11711681065950835256

`A263273(A264966(A263273(A381618(A381618(n)))))`
-/

namespace A264965.P11711681065950835256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264966 (A263273 (A381618 (A381618 n).toNat).toNat).toNat).toNat

end

end A264965.P11711681065950835256

/-! ## A264965.P3866351638439990294

`A263273(A264966(A263273(A264968(A264967(n)))))`
-/

namespace A264965.P3866351638439990294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264966 (A263273 (A264968 (A264967 n).toNat).toNat).toNat).toNat

end

end A264965.P3866351638439990294

/-! ## A264965.P4185076412046694316

`A263273(A264966(A266643(A263273(A266643(n)))))`
-/

namespace A264965.P4185076412046694316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264966 (A266643 (A263273 (A266643 n).toNat).toNat).toNat).toNat

end

end A264965.P4185076412046694316

/-! ## A264965.P10863177663988392724

`A265329(A265352(A264976(A264974(n))))`
-/

namespace A264965.P10863177663988392724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A265352 (A264976 (A264974 n).toNat).toNat).toNat

end

end A264965.P10863177663988392724

/-! ## A264965.P10990039701565075585

`A057889(A265369(n))`
-/

namespace A264965.P10990039701565075585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A265369 n).toNat

end

end A264965.P10990039701565075585

/-! ## A264965.P16550005191402862550

`A246200(A266644(A057889(2*n-n)))`
-/

namespace A264965.P16550005191402862550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266644 (A057889 (2 * n - n)).toNat).toNat

end

end A264965.P16550005191402862550

/-! ## A264965.P11174887663987012613

`A263272(A266641(A265369(2*n-n)))`
-/

namespace A264965.P11174887663987012613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266641 (A265369 (2 * n - n)).toNat).toNat

end

end A264965.P11174887663987012613

/-! ## A264965.P3339874920244362927

`A057889(A264966(A266642(A057889(A266642(n)))))`
-/

namespace A264965.P3339874920244362927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264966 (A266642 (A057889 (A266642 n).toNat).toNat).toNat).toNat

end

end A264965.P3339874920244362927

/-! ## A264965.P15182882799830322880

`A265329(A265368(A264975(n)))`
-/

namespace A264965.P15182882799830322880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A265368 (A264975 n).toNat).toNat

end

end A264965.P15182882799830322880

/-!
# A264966: Permutation of nonnegative integers: a(n) = A057889(A263273(n)).

The programs for A264966, there is no canonical definition to state claims against.
-/

/-! ## A264966.P15999854968917338765

`A057889(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264966.P15999854968917338765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A263273 n).toNat

end

end A264966.P15999854968917338765

/-! ## A264966.P3691444013483617793

`A265369(A057889(n))`
-/

namespace A264966.P3691444013483617793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 (A057889 n).toNat

end

end A264966.P3691444013483617793

/-! ## A264966.P13590844104878290061

`A265369(A266642(A263272(n)))`
-/

namespace A264966.P13590844104878290061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 (A266642 (A263272 n).toNat).toNat

end

end A264966.P13590844104878290061

/-! ## A264966.P6985886735901956852

`A265369(A263272(A266641(n)))`
-/

namespace A264966.P6985886735901956852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 (A263272 (A266641 n).toNat).toNat

end

end A264966.P6985886735901956852

/-! ## A264966.P2582174148360090926

`A057889(A266643(A246200(n)))`
-/

namespace A264966.P2582174148360090926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266643 (A246200 n).toNat).toNat

end

end A264966.P2582174148360090926

/-! ## A264966.P12708493320502569937

`A057889(A265366(A264978(n)))`
-/

namespace A264966.P12708493320502569937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A265366 (A264978 n).toNat).toNat

end

end A264966.P12708493320502569937

/-! ## A264966.P14441539146562878626

`A057889(A264965(A266642(A057889(A266642(n)))))`
-/

namespace A264966.P14441539146562878626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264965 (A266642 (A057889 (A266642 n).toNat).toNat).toNat).toNat

end

end A264966.P14441539146562878626

/-! ## A264966.P7601075483925180064

`A266642(A265351(n))`
-/

namespace A264966.P7601075483925180064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (A265351 n).toNat

end

end A264966.P7601075483925180064

/-! ## A264966.P9150366403155198667

`A057889(A246200(A266644(n)))`
-/

namespace A264966.P9150366403155198667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A246200 (A266644 n).toNat).toNat

end

end A264966.P9150366403155198667

/-! ## A264966.P9098236627313814089

`A246200(A266644(A265329(n)))`
-/

namespace A264966.P9098236627313814089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266644 (A265329 n).toNat).toNat

end

end A264966.P9098236627313814089

/-! ## A264966.P9558651807002983271

`A057889(A266643(A263272(A264967(n))))`
-/

namespace A264966.P9558651807002983271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266643 (A263272 (A264967 n).toNat).toNat).toNat

end

end A264966.P9558651807002983271

/-! ## A264966.P2503451711624063422

`A057889(A265329(A264965(n)))`
-/

namespace A264966.P2503451711624063422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A265329 (A264965 n).toNat).toNat

end

end A264966.P2503451711624063422

/-! ## A264966.P18152682487339746092

`A265369(A264965(A265369(n)))`
-/

namespace A264966.P18152682487339746092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 (A264965 (A265369 n).toNat).toNat

end

end A264966.P18152682487339746092

/-! ## A264966.P12386767736723033497

`A057889(A264965(A057889(A264967(A264968(n)))))`
-/

namespace A264966.P12386767736723033497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264965 (A057889 (A264967 (A264968 n).toNat).toNat).toNat).toNat

end

end A264966.P12386767736723033497

/-! ## A264966.P14961190338151694857

`A263273(A265329(n))`
-/

namespace A264966.P14961190338151694857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265329 n).toNat

end

end A264966.P14961190338151694857

/-! ## A264966.P4245490145460379377

`A263273(A264965(A266643(A263273(A266643(n)))))`
-/

namespace A264966.P4245490145460379377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264965 (A266643 (A263273 (A266643 n).toNat).toNat).toNat).toNat

end

end A264966.P4245490145460379377

/-!
# A264967: Permutation of nonnegative integers: a(n) = A263272(A246200(n)).

The programs for A264967, there is no canonical definition to state claims against.
-/

/-! ## A264967.P9434227536726078101

`A263272(A246200(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264967.P9434227536726078101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A246200 n).toNat

end

end A264967.P9434227536726078101

/-! ## A264967.P17870604449315009584

`A266641(A057889(A266644(A263273(n))))`
-/

namespace A264967.P17870604449315009584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A057889 (A266644 (A263273 n).toNat).toNat).toNat

end

end A264967.P17870604449315009584

/-! ## A264967.P2823113134564323570

`A263272(A264968(A263272(n)))`
-/

namespace A264967.P2823113134564323570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264968 (A263272 n).toNat).toNat

end

end A264967.P2823113134564323570

/-! ## A264967.P536955113442348317

`A263272(A266644(A266642(A263272(A264966(n)))))`
-/

namespace A264967.P536955113442348317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266644 (A266642 (A263272 (A264966 n).toNat).toNat).toNat).toNat

end

end A264967.P536955113442348317

/-! ## A264967.P11473579318376782202

`A263272(A266644(A264965(A263272(A266641(n)))))`
-/

namespace A264967.P11473579318376782202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266644 (A264965 (A263272 (A266641 n).toNat).toNat).toNat).toNat

end

end A264967.P11473579318376782202

/-! ## A264967.P8947176056376036526

`A246200(A264968(A246200(A057889(A057889(n)))))`
-/

namespace A264967.P8947176056376036526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264968 (A246200 (A057889 (A057889 n).toNat).toNat).toNat).toNat

end

end A264967.P8947176056376036526

/-! ## A264967.P15246263496374251958

`A057889(A266642(A264968(A057889(A266642(n)))))`
-/

namespace A264967.P15246263496374251958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266642 (A264968 (A057889 (A266642 n).toNat).toNat).toNat).toNat

end

end A264967.P15246263496374251958

/-! ## A264967.P10552253091051890563

`A246200(A264968(A264968(A246200(A264968(n)))))`
-/

namespace A264967.P10552253091051890563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264968 (A264968 (A246200 (A264968 n).toNat).toNat).toNat).toNat

end

end A264967.P10552253091051890563

/-! ## A264967.P14694371775049816129

`A265351(A266643(n))`
-/

namespace A264967.P14694371775049816129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A266643 n).toNat

end

end A264967.P14694371775049816129

/-! ## A264967.P7429277429391876747

`A266641(3*n)/3`
-/

namespace A264967.P7429277429391876747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266641 (3 * n) : ℚ) / 3

end

end A264967.P7429277429391876747

/-! ## A264967.P6681854178588841135

`A266643(2*n)/2`
-/

namespace A264967.P6681854178588841135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266643 (2 * n) : ℚ) / 2

end

end A264967.P6681854178588841135

/-! ## A264967.P2677764737047432685

`A263272(A266644(A265329(A264965(n))))`
-/

namespace A264967.P2677764737047432685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266644 (A265329 (A264965 n).toNat).toNat).toNat

end

end A264967.P2677764737047432685

/-! ## A264967.P3332171748124305737

`A263273(A246200(2*n))/2`
-/

namespace A264967.P3332171748124305737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (A246200 (2 * n)).toNat : ℚ) / 2

end

end A264967.P3332171748124305737

/-! ## A264967.P12532881077731641349

`A263273(A265339(A266644(A263273(2*n))))`
-/

namespace A264967.P12532881077731641349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265339 (A266644 (A263273 (2 * n)).toNat).toNat).toNat

end

end A264967.P12532881077731641349

/-! ## A264967.P13756193591626217756

`A264974(A264975(A264968(A264974(A264975(n)))))`
-/

namespace A264967.P13756193591626217756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264975 (A264968 (A264974 (A264975 n).toNat).toNat).toNat).toNat

end

end A264967.P13756193591626217756

/-! ## A264967.P3710479128112368891

`A263272(A266644(A264966(A265329(n))))`
-/

namespace A264967.P3710479128112368891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266644 (A264966 (A265329 n).toNat).toNat).toNat

end

end A264967.P3710479128112368891

/-!
# A264968: Permutation of nonnegative integers: a(n) = A246200(A263272(n)).

The programs for A264968, there is no canonical definition to state claims against.
-/

/-! ## A264968.P13891011835580440462

`A246200(A263272(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264968.P13891011835580440462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A263272 n).toNat

end

end A264968.P13891011835580440462

/-! ## A264968.P7295517396928965289

`A266644(A265352(n))`
-/

namespace A264968.P7295517396928965289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A265352 n).toNat

end

end A264968.P7295517396928965289

/-! ## A264968.P11523934940878975652

`A246200(A266641(A057889(n)))`
-/

namespace A264968.P11523934940878975652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266641 (A057889 n).toNat).toNat

end

end A264968.P11523934940878975652

/-! ## A264968.P7012785667962204466

`A266644(2*n)/2`
-/

namespace A264968.P7012785667962204466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266644 (2 * n) : ℚ) / 2

end

end A264968.P7012785667962204466

/-! ## A264968.P10651073434968358275

`floor(A266644(Δ[n²]-1)/2)`
-/

namespace A264968.P10651073434968358275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266644 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / 2⌋

end

end A264968.P10651073434968358275

/-! ## A264968.P12636693110426011890

`floor((A266644(A005843(n))+1)/2)`
-/

namespace A264968.P12636693110426011890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266644 (A005843 n).toNat + 1 : ℚ) / 2⌋

end

end A264968.P12636693110426011890

/-! ## A264968.P3031219725797473612

`A266644(A265339(2*n))`
-/

namespace A264968.P3031219725797473612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A265339 (2 * n)).toNat

end

end A264968.P3031219725797473612

/-! ## A264968.P2464737750160985706

`A266644(A263273(A266641(A264966(A263273(n)))))`
-/

namespace A264968.P2464737750160985706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A263273 (A266641 (A264966 (A263273 n).toNat).toNat).toNat).toNat

end

end A264968.P2464737750160985706

/-! ## A264968.P7173449106948680312

`A246200(A264967(A246200(n)))`
-/

namespace A264968.P7173449106948680312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264967 (A246200 n).toNat).toNat

end

end A264968.P7173449106948680312

/-! ## A264968.P17086770159254651281

`A246200(A263273(2*n)/2)`
-/

namespace A264968.P17086770159254651281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A264968.P17086770159254651281

/-! ## A264968.P1180537660835758579

`A246200(A266641(A263273(A264965(n))))`
-/

namespace A264968.P1180537660835758579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A266641 (A263273 (A264965 n).toNat).toNat).toNat

end

end A264968.P1180537660835758579

/-! ## A264968.P6473507006141084187

`A266642(3*n)/3`
-/

namespace A264968.P6473507006141084187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266642 (3 * n) : ℚ) / 3

end

end A264968.P6473507006141084187

/-! ## A264968.P16937351317261444091

`A266644(A264965(A266642(n)))`
-/

namespace A264968.P16937351317261444091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A264965 (A266642 n).toNat).toNat

end

end A264968.P16937351317261444091

/-! ## A264968.P6923506532231275236

`A263272(A264967(A263272(A264965(A264966(n)))))`
-/

namespace A264968.P6923506532231275236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264967 (A263272 (A264965 (A264966 n).toNat).toNat).toNat).toNat

end

end A264968.P6923506532231275236

/-! ## A264968.P3454846138329667098

`A263272(A264967(A264967(A263272(A264967(n)))))`
-/

namespace A264968.P3454846138329667098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264967 (A264967 (A263272 (A264967 n).toNat).toNat).toNat).toNat

end

end A264968.P3454846138329667098

/-! ## A264968.P3171474849221473305

`A263273(A266643(A264967(A263273(A266643(n)))))`
-/

namespace A264968.P3171474849221473305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 (A264967 (A263273 (A266643 n).toNat).toNat).toNat).toNat

end

end A264968.P3171474849221473305

/-! ## A264968.P15160333181789298234

`A263273(A266643(A266641(A264965(A265369(n)))))`
-/

namespace A264968.P15160333181789298234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266643 (A266641 (A264965 (A265369 n).toNat).toNat).toNat).toNat

end

end A264968.P15160333181789298234

/-! ## A264968.P15138042362664832449

`A266644(A266641(A057889(A265904(n))))`
-/

namespace A264968.P15138042362664832449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266644 (A266641 (A057889 (A265904 n).toNat).toNat).toNat

end

end A264968.P15138042362664832449

/-! ## A264968.P4486086458516603721

`A264974(A264975(A264967(A264974(A264975(n)))))`
-/

namespace A264968.P4486086458516603721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264975 (A264967 (A264974 (A264975 n).toNat).toNat).toNat).toNat

end

end A264968.P4486086458516603721

/-!
# A264969: Cycle length of n under bijection A264965 / A264966.

The programs for A264969, there is no canonical definition to state claims against.
-/

/-! ## A264969.P15092673303976118378

`gcd(A007947(A329332(3*n+1)), A217122(3*n+5))`
-/

namespace A264969.P15092673303976118378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (A329332 (3 * n + 1)).toNat) (A217122 (3 * n + 5))

end

end A264969.P15092673303976118378

/-! ## A264969.P11457446192525314516

`A227481(A161078(n+1)^3)`
-/

namespace A264969.P11457446192525314516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A161078 (n + 1) ^ 3).toNat

end

end A264969.P11457446192525314516

/-! ## A264969.P12458650360199362360

`A227481(A161294(n+1)^3)`
-/

namespace A264969.P12458650360199362360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A161294 (n + 1) ^ 3).toNat

end

end A264969.P12458650360199362360

/-! ## A264969.P12353134174564127626

`A096198(A213621(A030102(n)))+1`
-/

namespace A264969.P12353134174564127626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096198 (A213621 (A030102 n).toNat).toNat + 1

end

end A264969.P12353134174564127626

/-! ## A264969.P1736359295949356844

`gcd(A045778(A008930(n)), A095149(n))`
-/

namespace A264969.P1736359295949356844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045778 (A008930 n).toNat) (A095149 n)

end

end A264969.P1736359295949356844

/-!
# A264970: If A262686(n) = 0, a(n) = 0, otherwise a(n) = 1 + a(A262686(n)), where A262686(n) = largest number k such that k - d(k) = n, or 0 if no such number exists, and d(n) = the number of divisors of n (A000005).

The programs for A264970, there is no canonical definition to state claims against.
-/

/-! ## A264970.P10860843094347981871

`A264971(n)-1`
-/

namespace A264970.P10860843094347981871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264971 n - 1

end

end A264970.P10860843094347981871

/-! ## A264970.P12210697984663671443

`A023443(A264971(n))`
-/

namespace A264970.P12210697984663671443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A264971 n).toNat

end

end A264970.P12210697984663671443

/-! ## A264970.P11974060333314060300

`A003056(C(A264971(n), 2))`
-/

namespace A264970.P11974060333314060300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A264971 n).toNat 2)

end

end A264970.P11974060333314060300

/-! ## A264970.P3000496655713573700

`A264971(A262686(n))%A264971(n)`
-/

namespace A264970.P3000496655713573700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264971 (A262686 n).toNat) (A264971 n)

end

end A264970.P3000496655713573700

/-! ## A264970.P7923489907020787422

`A023645(2^A264971(n))`
-/

namespace A264970.P7923489907020787422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A264971 n : ℤ))).toNat

end

end A264970.P7923489907020787422

/-! ## A264970.P8779973581884182534

`A046660(2^A264971(n))`
-/

namespace A264970.P8779973581884182534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A264971 n : ℤ))).toNat

end

end A264970.P8779973581884182534

/-! ## A264970.P11170012981158351381

`A070824(2^A264971(n))`
-/

namespace A264970.P11170012981158351381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A264971 n : ℤ))).toNat

end

end A264970.P11170012981158351381

/-! ## A264970.P6331061495804089528

`A339010(2^A264971(n))`
-/

namespace A264970.P6331061495804089528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A264971 n : ℤ))).toNat

end

end A264970.P6331061495804089528

/-!
# A264971: If A262686(n) = 0, a(n) = 1, otherwise a(n) = 1 + a(A262686(n)), where A262686(n) = largest number k such that k - d(k) = n, or 0 if no such number exists, and d(n) = the number of divisors of n (A000005).

The programs for A264971, there is no canonical definition to state claims against.
-/

/-! ## A264971.P5617988392008691392

`1+A264970(n)`
-/

namespace A264971.P5617988392008691392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A264970 n

end

end A264971.P5617988392008691392

/-! ## A264971.P12844092177067680728

`A008619(2*A264970(n))`
-/

namespace A264971.P12844092177067680728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A264970 n).toNat

end

end A264971.P12844092177067680728

/-! ## A264971.P11227144219482511172

`A028242(2*A264970(n))`
-/

namespace A264971.P11227144219482511172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A264970 n).toNat

end

end A264971.P11227144219482511172

/-! ## A264971.P8295558405547615800

`A008619(n)-(A004526(n)-A264970(n))`
-/

namespace A264971.P8295558405547615800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A264970 n)

end

end A264971.P8295558405547615800

/-! ## A264971.P8793226573954898355

`A000005(2^A264970(n))`
-/

namespace A264971.P8793226573954898355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A264970 n : ℤ))).toNat

end

end A264971.P8793226573954898355

/-! ## A264971.P8833249768883121614

`A001511(2^A264970(n))`
-/

namespace A264971.P8833249768883121614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A264970 n : ℤ))).toNat

end

end A264971.P8833249768883121614

/-!
# A264972: Trajectory of 262 under repeated application of the permutation A264965: a(0) = 262; for n >= 1, a(n) = A264965(a(n-1)).

The programs for A264972, there is no canonical definition to state claims against.
-/

/-! ## A264972.P13381105982235560331

`A264965(a(n-1))` with `a(0)=262`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264972.P13381105982235560331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [262] fun n a =>
  A264965 (a (n - 1)).toNat

end

end A264972.P13381105982235560331

/-!
# A264973: Trajectory of 262 under permutation A264966: a(0) = 262; for n >= 1, a(n) = A264966(a(n-1)).

The programs for A264973, there is no canonical definition to state claims against.
-/

/-! ## A264973.P324637959670318120

`A264966(a(n-1))` with `a(0)=262`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264973.P324637959670318120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [262] fun n a =>
  A264966 (a (n - 1)).toNat

end

end A264973.P324637959670318120

/-!
# A264974: Self-inverse permutation of natural numbers: a(n) = A263273(4*n) / 4.

The programs for A264974, there is no canonical definition to state claims against.
-/

/-! ## A264974.P15960722804984549659

`A264986(n)/2`
-/

namespace A264974.P15960722804984549659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264986 n : ℚ) / 2

end

end A264974.P15960722804984549659

/-! ## A264974.P6134818025131339988

`A264975(A263272(n))`
-/

namespace A264974.P6134818025131339988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 n).toNat

end

end A264974.P6134818025131339988

/-! ## A264974.P2759909618715111994

`A263272(2*n)/2`
-/

namespace A264974.P2759909618715111994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 (2 * n) : ℚ) / 2

end

end A264974.P2759909618715111994

/-! ## A264974.P5738543541497053948

`A263272(A264976(n))`
-/

namespace A264974.P5738543541497053948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264976 n).toNat

end

end A264974.P5738543541497053948

/-! ## A264974.P9759781018703220240

`A263273(4*n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264974.P9759781018703220240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (4 * n) : ℚ) / 4

end

end A264974.P9759781018703220240

/-! ## A264974.P17223035625692734919

`A264975(A264984(n)/2)`
-/

namespace A264974.P17223035625692734919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A264974.P17223035625692734919

/-! ## A264974.P16517309960467636197

`A264975(A265355(A264985(n)))`
-/

namespace A264974.P16517309960467636197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A265355 (A264985 n).toNat).toNat

end

end A264974.P16517309960467636197

/-! ## A264974.P16051910659564970264

`A264975(A264985(A265356(n)))`
-/

namespace A264974.P16051910659564970264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A264985 (A265356 n).toNat).toNat

end

end A264974.P16051910659564970264

/-! ## A264974.P3140900973150628294

`A266641(A057889(2*n))/2`
-/

namespace A264974.P3140900973150628294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266641 (A057889 (2 * n)).toNat : ℚ) / 2

end

end A264974.P3140900973150628294

/-! ## A264974.P17745748364039464645

`A265363(A263273(n))`
-/

namespace A264974.P17745748364039464645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265363 (A263273 n).toNat

end

end A264974.P17745748364039464645

/-! ## A264974.P9513862623537844498

`A265363(A264978(A265365(n)))`
-/

namespace A264974.P9513862623537844498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265363 (A264978 (A265365 n).toNat).toNat

end

end A264974.P9513862623537844498

/-! ## A264974.P5258515915372674403

`A264984(2*n)/4`
-/

namespace A264974.P5258515915372674403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264984 (2 * n) : ℚ) / 4

end

end A264974.P5258515915372674403

/-! ## A264974.P5242696353652710038

`A057889(A266642(2*n)/2)`
-/

namespace A264974.P5242696353652710038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A266642 (2 * n) : ℚ) / 2)).toNat

end

end A264974.P5242696353652710038

/-! ## A264974.P14365148587425288129

`A265361(A264989(n))`
-/

namespace A264974.P14365148587425288129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265361 (A264989 n).toNat

end

end A264974.P14365148587425288129

/-! ## A264974.P15687856721356713729

`A264989(A265362(n))`
-/

namespace A264974.P15687856721356713729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265362 n).toNat

end

end A264974.P15687856721356713729

/-! ## A264974.P7605670246797610028

`A001281(A264986(n))`
-/

namespace A264974.P7605670246797610028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A264986 n).toNat

end

end A264974.P7605670246797610028

/-! ## A264974.P4203533700022972876

`A263273(A265364(n))`
-/

namespace A264974.P4203533700022972876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265364 n).toNat

end

end A264974.P4203533700022972876

/-! ## A264974.P7572080255770106271

`A246200(A264968(2*n)/2)`
-/

namespace A264974.P7572080255770106271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (SequenceMachineLib.roundAway ((A264968 (2 * n) : ℚ) / 2)).toNat

end

end A264974.P7572080255770106271

/-! ## A264974.P7660914302967567957

`A264978(A264975(2*n)/2)`
-/

namespace A264974.P7660914302967567957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (SequenceMachineLib.roundAway ((A264975 (2 * n) : ℚ) / 2)).toNat

end

end A264974.P7660914302967567957

/-! ## A264974.P5972167160071421520

`A265355(A264985(2*n))/2`
-/

namespace A264974.P5972167160071421520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265355 (A264985 (2 * n)).toNat : ℚ) / 2

end

end A264974.P5972167160071421520

/-!
# A264975: Permutation of nonnegative integers: a(n) = A264974(A263272(n)).

The programs for A264975, there is no canonical definition to state claims against.
-/

/-! ## A264975.P641375060129446703

`A264974(A263272(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264975.P641375060129446703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 n).toNat

end

end A264975.P641375060129446703

/-! ## A264975.P10337030094467596815

`A263272(A264984(n))/2`
-/

namespace A264975.P10337030094467596815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 (A264984 n).toNat : ℚ) / 2

end

end A264975.P10337030094467596815

/-! ## A264975.P2881767306803852315

`1/4*A263273(2*A263273(2*n))`
-/

namespace A264975.P2881767306803852315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A263273 (2 * A263273 (2 * n)).toNat : ℚ)

end

end A264975.P2881767306803852315

/-! ## A264975.P11409361796898866631

`A264974(A264984(n)/2)`
-/

namespace A264975.P11409361796898866631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A264975.P11409361796898866631

/-! ## A264975.P8460865339815846637

`A264974(A265344(A264978(n)))`
-/

namespace A264975.P8460865339815846637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265344 (A264978 n).toNat).toNat

end

end A264975.P8460865339815846637

/-! ## A264975.P9682120684398790044

`A265367(A263273(n))`
-/

namespace A264975.P9682120684398790044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 (A263273 n).toNat

end

end A264975.P9682120684398790044

/-! ## A264975.P3765300820249818244

`A265367(A263272(A265351(n)))`
-/

namespace A264975.P3765300820249818244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 (A263272 (A265351 n).toNat).toNat

end

end A264975.P3765300820249818244

/-! ## A264975.P6725700830608385675

`A264974(A265351(A265354(A264985(n))))`
-/

namespace A264975.P6725700830608385675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265351 (A265354 (A264985 n).toNat).toNat).toNat

end

end A264975.P6725700830608385675

/-! ## A264975.P2458457236339540411

`A264974(A265351(A264985(A265353(n))))`
-/

namespace A264975.P2458457236339540411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265351 (A264985 (A265353 n).toNat).toNat).toNat

end

end A264975.P2458457236339540411

/-! ## A264975.P18196431699451255869

`A265351(2*n)/2`
-/

namespace A264975.P18196431699451255869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265351 (2 * n) : ℚ) / 2

end

end A264975.P18196431699451255869

/-! ## A264975.P6768386444585857332

`A265342(2*n)/4`
-/

namespace A264975.P6768386444585857332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265342 (2 * n) : ℚ) / 4

end

end A264975.P6768386444585857332

/-! ## A264975.P12956444446584297489

`A264974(A263273(2*n)/2)`
-/

namespace A264975.P12956444446584297489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A264975.P12956444446584297489

/-! ## A264975.P13761433391907646834

`A264974(A265358(A264989(n)))`
-/

namespace A264975.P13761433391907646834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265358 (A264989 n).toNat).toNat

end

end A264975.P13761433391907646834

/-! ## A264975.P4669334954152249991

`A265904(A264986(n))/2`
-/

namespace A264975.P4669334954152249991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265904 (A264986 n).toNat : ℚ) / 2

end

end A264975.P4669334954152249991

/-! ## A264975.P10734563520256363653

`A265904(A263272(2*n))/2`
-/

namespace A264975.P10734563520256363653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265904 (A263272 (2 * n)).toNat : ℚ) / 2

end

end A264975.P10734563520256363653

/-! ## A264975.P16756724258530859437

`A264974(A264976(A264974(n)))`
-/

namespace A264975.P16756724258530859437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264976 (A264974 n).toNat).toNat

end

end A264975.P16756724258530859437

/-! ## A264975.P11437644785162859456

`A264974(A264978(A265343(n)))`
-/

namespace A264975.P11437644785162859456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264978 (A265343 n).toNat).toNat

end

end A264975.P11437644785162859456

/-! ## A264975.P6842553664363162078

`A266641(A264966(2*n))/2`
-/

namespace A264975.P6842553664363162078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266641 (A264966 (2 * n)).toNat : ℚ) / 2

end

end A264975.P6842553664363162078

/-! ## A264975.P3104549371994754366

`A266641(2*A266642(n))/2`
-/

namespace A264975.P3104549371994754366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266641 (2 * A266642 n).toNat : ℚ) / 2

end

end A264975.P3104549371994754366

/-! ## A264975.P1522813325543254572

`A265361(A265357(n))`
-/

namespace A264975.P1522813325543254572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265361 (A265357 n).toNat

end

end A264975.P1522813325543254572

/-!
# A264976: Permutation of nonnegative integers: a(n) = A263272(A264974(n)).

The programs for A264976, there is no canonical definition to state claims against.
-/

/-! ## A264976.P16383118183550370321

`A263272(A264974(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264976.P16383118183550370321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264974 n).toNat

end

end A264976.P16383118183550370321

/-! ## A264976.P12377642624477549986

`1/2*A263273(A263273(4*n)/2)`
-/

namespace A264976.P12377642624477549986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A263273 (SequenceMachineLib.roundAway ((A263273 (4 * n) : ℚ) / 2)).toNat : ℚ)

end

end A264976.P12377642624477549986

/-! ## A264976.P9790882437107941579

`A265352(2*n)/2`
-/

namespace A264976.P9790882437107941579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265352 (2 * n) : ℚ) / 2

end

end A264976.P9790882437107941579

/-! ## A264976.P4031276905741674384

`A266641(A266642(2*n)/2)`
-/

namespace A264976.P4031276905741674384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (SequenceMachineLib.roundAway ((A266642 (2 * n) : ℚ) / 2)).toNat

end

end A264976.P4031276905741674384

/-! ## A264976.P811771867275376931

`A265358(A265362(n))`
-/

namespace A264976.P811771867275376931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265358 (A265362 n).toNat

end

end A264976.P811771867275376931

/-! ## A264976.P887306612391897287

`A265351(A265364(n))`
-/

namespace A264976.P887306612391897287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265364 n).toNat

end

end A264976.P887306612391897287

/-! ## A264976.P12566431310933037377

`A263272(A264986(n)/2)`
-/

namespace A264976.P12566431310933037377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A264986 n : ℚ) / 2)).toNat

end

end A264976.P12566431310933037377

/-! ## A264976.P10266361417931712437

`A263272(A263272(2*n)/2)`
-/

namespace A264976.P10266361417931712437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A263272 (2 * n) : ℚ) / 2)).toNat

end

end A264976.P10266361417931712437

/-! ## A264976.P3929973929132428410

`A264967(A264968(2*n)/2)`
-/

namespace A264976.P3929973929132428410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264967 (SequenceMachineLib.roundAway ((A264968 (2 * n) : ℚ) / 2)).toNat

end

end A264976.P3929973929132428410

/-! ## A264976.P11793928684593596164

`A263272(A264975(A263272(n)))`
-/

namespace A264976.P11793928684593596164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264975 (A263272 n).toNat).toNat

end

end A264976.P11793928684593596164

/-! ## A264976.P15368912309629685652

`A263272(A265363(A263273(n)))`
-/

namespace A264976.P15368912309629685652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265363 (A263273 n).toNat).toNat

end

end A264976.P15368912309629685652

/-! ## A264976.P7524268626537325086

`A263272(A265361(A264989(n)))`
-/

namespace A264976.P7524268626537325086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265361 (A264989 n).toNat).toNat

end

end A264976.P7524268626537325086

/-! ## A264976.P3158675839181850015

`A263272(A265363(A263272(A265351(n))))`
-/

namespace A264976.P3158675839181850015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265363 (A263272 (A265351 n).toNat).toNat).toNat

end

end A264976.P3158675839181850015

/-! ## A264976.P10699030076748382844

`A263272(A265361(A263272(A265358(n))))`
-/

namespace A264976.P10699030076748382844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265361 (A263272 (A265358 n).toNat).toNat).toNat

end

end A264976.P10699030076748382844

/-! ## A264976.P6001033592471784318

`A263272(A265363(A264978(A265365(n))))`
-/

namespace A264976.P6001033592471784318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265363 (A264978 (A265365 n).toNat).toNat).toNat

end

end A264976.P6001033592471784318

/-! ## A264976.P11868331836773931877

`A265344(A264978(A264974(A264978(A264978(n)))))`
-/

namespace A264976.P11868331836773931877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A264978 (A264974 (A264978 (A264978 n).toNat).toNat).toNat).toNat

end

end A264976.P11868331836773931877

/-! ## A264976.P17271737351351593012

`A265358(A264989(A264974(A264985(A264985(n)))))`
-/

namespace A264976.P17271737351351593012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265358 (A264989 (A264974 (A264985 (A264985 n).toNat).toNat).toNat).toNat

end

end A264976.P17271737351351593012

/-! ## A264976.P3658248427046353702

`A265354(A265356(2*n))/2`
-/

namespace A264976.P3658248427046353702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265354 (A265356 (2 * n)).toNat : ℚ) / 2

end

end A264976.P3658248427046353702

/-! ## A264976.P6913854840149215905

`A265339(4*n)/2`
-/

namespace A264976.P6913854840149215905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265339 (4 * n) : ℚ) / 2

end

end A264976.P6913854840149215905

/-! ## A264976.P862689045574716365

`A265902(A263273(2*n))/2`
-/

namespace A264976.P862689045574716365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265902 (A263273 (2 * n)).toNat : ℚ) / 2

end

end A264976.P862689045574716365

/-!
# A264977: a(0) = 0, a(1) = 1, a(2*n) = 2*a(n), a(2*n+1) = a(n) XOR a(n+1).

The programs for A264977, there is no canonical definition to state claims against.
-/

/-! ## A264977.P5126828586333842375

`n-A265397(n)`
-/

namespace A264977.P5126828586333842375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265397 n

end

end A264977.P5126828586333842375

/-! ## A264977.P3490067606033938361

`A048675(A277330(n))`
-/

namespace A264977.P3490067606033938361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A277330 n).toNat

end

end A264977.P3490067606033938361

/-! ## A264977.P5883598550706328447

`xor(n, A008586(A283979(n)))`
-/

namespace A264977.P5883598550706328447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008586 (A283979 n).toNat)

end

end A264977.P5883598550706328447

/-! ## A264977.P8127755725495781030

`-(A265397(n)+A001489(n))`
-/

namespace A264977.P8127755725495781030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A265397 n + A001489 n)

end

end A264977.P8127755725495781030

/-! ## A264977.P3110396453288807302

`xor(n, 2*A283979(2*n))`
-/

namespace A264977.P3110396453288807302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A283979 (2 * n))

end

end A264977.P3110396453288807302

/-! ## A264977.P2146872998906482676

`A110654(xor(A283975(2*n), A283975(n)))`
-/

namespace A264977.P2146872998906482676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor (A283975 (2 * n)) (A283975 n)).toNat

end

end A264977.P2146872998906482676

/-! ## A264977.P18108253585840893107

`xor(n, A283979(4*n))`
-/

namespace A264977.P18108253585840893107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A283979 (4 * n))

end

end A264977.P18108253585840893107

/-! ## A264977.P7962288224980875034

`∑{p}[A277330(n), A156552(#)]`
-/

namespace A264977.P7962288224980875034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A264977.P7962288224980875034

/-! ## A264977.P15120163767104697064

`∑{p}[A277330(n), A297108(#)]`
-/

namespace A264977.P15120163767104697064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A264977.P15120163767104697064

/-! ## A264977.P17390213876826969323

`A025581(A265397(n)+∑[n])`
-/

namespace A264977.P17390213876826969323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A265397 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A264977.P17390213876826969323

/-!
# A264978: Self-inverse permutation of nonnegative integers: a(n) = A263273(8*n)/8.

The programs for A264978, there is no canonical definition to state claims against.
-/

/-! ## A264978.P7219141048944803457

`A264974(2*n)/2`
-/

namespace A264978.P7219141048944803457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264974 (2 * n) : ℚ) / 2

end

end A264978.P7219141048944803457

/-! ## A264978.P1801459481447800273

`A263272(4*n)/4`
-/

namespace A264978.P1801459481447800273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 (4 * n) : ℚ) / 4

end

end A264978.P1801459481447800273

/-! ## A264978.P10757786461398204662

`A263273(8*n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264978.P10757786461398204662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (8 * n) : ℚ) / 8

end

end A264978.P10757786461398204662

/-! ## A264978.P11672849275183694737

`A263272(A265344(n))`
-/

namespace A264978.P11672849275183694737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265344 n).toNat

end

end A264978.P11672849275183694737

/-! ## A264978.P17748163291146614955

`A265365(A263273(n))`
-/

namespace A264978.P17748163291146614955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A263273 n).toNat

end

end A264978.P17748163291146614955

/-! ## A264978.P4428152796963617572

`A264986(2*n)/4`
-/

namespace A264978.P4428152796963617572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264986 (2 * n) : ℚ) / 4

end

end A264978.P4428152796963617572

/-! ## A264978.P15729603903536185388

`A264975(A264986(n))/2`
-/

namespace A264978.P15729603903536185388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264975 (A264986 n).toNat : ℚ) / 2

end

end A264978.P15729603903536185388

/-! ## A264978.P8827077147799071634

`A265365(A265364(A264974(n)))`
-/

namespace A264978.P8827077147799071634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A265364 (A264974 n).toNat).toNat

end

end A264978.P8827077147799071634

/-! ## A264978.P8270655701280135075

`A265365(A264974(A265363(n)))`
-/

namespace A264978.P8270655701280135075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A264974 (A265363 n).toNat).toNat

end

end A264978.P8270655701280135075

/-! ## A264978.P13981257276724061715

`A265343(A263272(n))`
-/

namespace A264978.P13981257276724061715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265343 (A263272 n).toNat

end

end A264978.P13981257276724061715

/-! ## A264978.P4256930148140424645

`A265343(A263273(A265352(n)))`
-/

namespace A264978.P4256930148140424645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265343 (A263273 (A265352 n).toNat).toNat

end

end A264978.P4256930148140424645

/-! ## A264978.P11775960688444571157

`A265343(A265364(A264974(A265366(A265343(n)))))`
-/

namespace A264978.P11775960688444571157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265343 (A265364 (A264974 (A265366 (A265343 n).toNat).toNat).toNat).toNat

end

end A264978.P11775960688444571157

/-! ## A264978.P911049341860078891

`A263273(A265366(n))`
-/

namespace A264978.P911049341860078891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265366 n).toNat

end

end A264978.P911049341860078891

/-! ## A264978.P7828787181612978518

`A264989(A265362(2*n))/2`
-/

namespace A264978.P7828787181612978518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264989 (A265362 (2 * n)).toNat : ℚ) / 2

end

end A264978.P7828787181612978518

/-! ## A264978.P2279651239305837688

`A265361(A264989(2*n))/2`
-/

namespace A264978.P2279651239305837688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265361 (A264989 (2 * n)).toNat : ℚ) / 2

end

end A264978.P2279651239305837688

/-! ## A264978.P476851845997384296

`A004526(A264974(2*n))`
-/

namespace A264978.P476851845997384296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A264974 (2 * n)).toNat

end

end A264978.P476851845997384296

/-! ## A264978.P2430434385232840802

`A264975(A265368(2*n)/2)`
-/

namespace A264978.P2430434385232840802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (SequenceMachineLib.roundAway ((A265368 (2 * n) : ℚ) / 2)).toNat

end

end A264978.P2430434385232840802

/-! ## A264978.P727011185509521520

`A265364(A264974(A265366(A265363(A265364(n)))))`
-/

namespace A264978.P727011185509521520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (A264974 (A265366 (A265363 (A265364 n).toNat).toNat).toNat).toNat

end

end A264978.P727011185509521520

/-! ## A264978.P7312168001624351089

`A265367(A265352(2*n))/2`
-/

namespace A264978.P7312168001624351089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265367 (A265352 (2 * n)).toNat : ℚ) / 2

end

end A264978.P7312168001624351089

/-!
# A264979: Bijective base-9 reverse: a(0) = 0; for n >= 1, a(n) = A030108(n/A264981(n)) * A264981(n).

The programs for A264979, there is no canonical definition to state claims against.
-/

/-! ## A264979.P16302971459017682832

`A055959(A265523(n)+A265556(n)-n)+n`
-/

namespace A264979.P16302971459017682832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 (A265523 n + (A265556 n - (n : ℤ))).toNat + (n : ℤ)

end

end A264979.P16302971459017682832

/-! ## A264979.P404858727681471043

`A265556(n)+A265523(n)-A030108(A030108(n))`
-/

namespace A264979.P404858727681471043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n + A265523 n - A030108 (A030108 n).toNat

end

end A264979.P404858727681471043

/-!
# A264980: Base-3 reversal of 2^n: a(n) = A030102(A000079(n)).

The programs for A264980, there is no canonical definition to state claims against.
-/

/-! ## A264980.P6013928476964545394

`A265342(a(n-1))` with `a(0)=1`
-/

namespace A264980.P6013928476964545394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265342 (a (n - 1)).toNat

end

end A264980.P6013928476964545394

/-! ## A264980.P11787451924021278193

`A030102(A000079(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264980.P11787451924021278193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A000079 n).toNat

end

end A264980.P11787451924021278193

/-! ## A264980.P5096408977634082063

`A265345(∑[n+1])`
-/

namespace A264980.P5096408977634082063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264980.P5096408977634082063

/-! ## A264980.P18253608282001823945

`A033999(n)²*A265345(Δ[A000292(n)])`
-/

namespace A264980.P18253608282001823945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A265345 (f1 (n + 1) - f1 n).toNat

end

end A264980.P18253608282001823945

/-! ## A264980.P3129075845841210518

`A265345(Δ[A000292(n)])+A000007(n+1)`
-/

namespace A264980.P3129075845841210518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A264980.P3129075845841210518

/-! ## A264980.P17124697061077744315

`A265345(Δ[A000292(n)])+A000035(2*n)`
-/

namespace A264980.P17124697061077744315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A264980.P17124697061077744315

/-! ## A264980.P2430596306368766275

`(A004247(n)%2)!*A265345(Δ[A000292(n)])`
-/

namespace A264980.P2430596306368766275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A004247 n) 2).toNat : ℤ) * A265345 (f1 (n + 1) - f1 n).toNat

end

end A264980.P2430596306368766275

/-! ## A264980.P14661987000601944420

`A265347(∑[n]+1)`
-/

namespace A264980.P14661987000601944420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264980.P14661987000601944420

/-! ## A264980.P3291742981341008945

`A265347(A000124(n))%A115098(n)`
-/

namespace A264980.P3291742981341008945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265347 (A000124 n).toNat) (A115098 n)

end

end A264980.P3291742981341008945

/-!
# A264981: Highest power of 9 dividing n.

The programs for A264981, the canonical program `A264981.P16186755701617293099` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264981 has offset 1).

The definition of A264981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264981.P16186755701617293099

`9^val(n+1, 9)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264981

/-- `9^val(n+1, 9)` -/
def P16186755701617293099.Spec : Prop :=
  ∀ n, (P16186755701617293099.a n : ℤ) = A264981 (n + 1)

theorem P16186755701617293099.correct : P16186755701617293099.Spec := by
  intro n
  simp only [A264981, Nat.add_sub_cancel]

end A264981

/-! ## A264981.P1410954120238933582

`9^Δ[A054898(n)]`
-/

namespace A264981.P1410954120238933582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A264981.P1410954120238933582

namespace A264981

/-- `9^Δ[A054898(n)]` -/
def P1410954120238933582.Spec : Prop :=
  ∀ n, P1410954120238933582.a n = (A264981 (n + 1) : ℚ)

end A264981

/-! ## A264981.P17778946798948097186

`A001019(val(n+1, 9))`
-/

namespace A264981.P17778946798948097186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (SequenceMachineLib.valuation (n + 1) 9)

end

end A264981.P17778946798948097186

namespace A264981

/-- `A001019(val(n+1, 9))` -/
def P17778946798948097186.Spec : Prop :=
  ∀ n, P17778946798948097186.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P2193398673107326808

`A000244(and(val(n+1, 3), -2))`
-/

namespace A264981.P2193398673107326808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (Int.land (SequenceMachineLib.valuation (n + 1) 3 : ℤ) (-2)).toNat

end

end A264981.P2193398673107326808

namespace A264981

/-- `A000244(and(val(n+1, 3), -2))` -/
def P2193398673107326808.Spec : Prop :=
  ∀ n, P2193398673107326808.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P11857780042857495268

`A038500(A008833(n+1))`
-/

namespace A264981.P11857780042857495268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A008833 (n + 1)).toNat

end

end A264981.P11857780042857495268

namespace A264981

/-- `A038500(A008833(n+1))` -/
def P11857780042857495268.Spec : Prop :=
  ∀ n, P11857780042857495268.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P13232775060944919554

`gcd(A008833(n+1), A016772(n))`
-/

namespace A264981.P13232775060944919554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 1)) (A016772 n)

end

end A264981.P13232775060944919554

namespace A264981

/-- `gcd(A008833(n+1), A016772(n))` -/
def P13232775060944919554.Spec : Prop :=
  ∀ n, (P13232775060944919554.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P13773248685842594546

`A008833(gcd(n+1, A017286(n)))`
-/

namespace A264981.P13773248685842594546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (Int.gcd (n + 1 : ℤ) (A017286 n))

end

end A264981.P13773248685842594546

namespace A264981

/-- `A008833(gcd(n+1, A017286(n)))` -/
def P13773248685842594546.Spec : Prop :=
  ∀ n, P13773248685842594546.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P4886513340762779936

`gcd(A017562(n), A235872(n+1))`
-/

namespace A264981.P4886513340762779936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017562 n) (A235872 (n + 1))

end

end A264981.P4886513340762779936

namespace A264981

/-- `gcd(A017562(n), A235872(n+1))` -/
def P4886513340762779936.Spec : Prop :=
  ∀ n, (P4886513340762779936.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P9729508015107776956

`A038500((n+1)/A007913(n+1))`
-/

namespace A264981.P9729508015107776956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A264981.P9729508015107776956

namespace A264981

/-- `A038500((n+1)/A007913(n+1))` -/
def P9729508015107776956.Spec : Prop :=
  ∀ n, P9729508015107776956.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P4864548153547200893

`A038500(n+1)/and(3, A038500(n+1))`
-/

namespace A264981.P4864548153547200893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038500 (n + 1) : ℚ) / (Int.land 3 (A038500 (n + 1)) : ℚ)

end

end A264981.P4864548153547200893

namespace A264981

/-- `A038500(n+1)/and(3, A038500(n+1))` -/
def P4864548153547200893.Spec : Prop :=
  ∀ n, P4864548153547200893.a n = (A264981 (n + 1) : ℚ)

end A264981

/-! ## A264981.P16034535412101026031

`A008833(abs(Δ[A244042(n)]))`
-/

namespace A264981.P16034535412101026031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 |f1 (n + 1) - f1 n|.toNat

end

end A264981.P16034535412101026031

namespace A264981

/-- `A008833(abs(Δ[A244042(n)]))` -/
def P16034535412101026031.Spec : Prop :=
  ∀ n, P16034535412101026031.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P15777953103544815671

`A003959(A018937(Δ[A007095(n)]))`
-/

namespace A264981.P15777953103544815671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A018937 (f1 (n + 1) - f1 n).toNat).toNat

end

end A264981.P15777953103544815671

namespace A264981

/-- `A003959(A018937(Δ[A007095(n)]))` -/
def P15777953103544815671.Spec : Prop :=
  ∀ n, P15777953103544815671.a n = A264981 (n + 1)

end A264981

/-! ## A264981.P17846728574457560707

`A038500(n+1)/A122002(A038500(n+1))`
-/

namespace A264981.P17846728574457560707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038500 (n + 1) : ℚ) / (A122002 (A038500 (n + 1)).toNat : ℚ)

end

end A264981.P17846728574457560707

namespace A264981

/-- `A038500(n+1)/A122002(A038500(n+1))` -/
def P17846728574457560707.Spec : Prop :=
  ∀ n, P17846728574457560707.a n = (A264981 (n + 1) : ℚ)

end A264981

/-! ## A264981.P11708194179892257747

`gcd(2*A235872(n+1), A305650(n+1))`
-/

namespace A264981.P11708194179892257747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A235872 (n + 1)) (A305650 (n + 1))

end

end A264981.P11708194179892257747

namespace A264981

/-- `gcd(2*A235872(n+1), A305650(n+1))` -/
def P11708194179892257747.Spec : Prop :=
  ∀ n, (P11708194179892257747.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P18044872850884190556

`gcd(A358272(n+1), A376478(n+1))`
-/

namespace A264981.P18044872850884190556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A358272 (n + 1)) (A376478 (n + 1))

end

end A264981.P18044872850884190556

namespace A264981

/-- `gcd(A358272(n+1), A376478(n+1))` -/
def P18044872850884190556.Spec : Prop :=
  ∀ n, (P18044872850884190556.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P15118010368923462762

`gcd(2*A235872(n+1), A155734(n))`
-/

namespace A264981.P15118010368923462762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A235872 (n + 1)) (A155734 n)

end

end A264981.P15118010368923462762

namespace A264981

/-- `gcd(2*A235872(n+1), A155734(n))` -/
def P15118010368923462762.Spec : Prop :=
  ∀ n, (P15118010368923462762.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P9918285932360941880

`gcd(A155734(n), A235872(A235872(n+1)))`
-/

namespace A264981.P9918285932360941880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155734 n) (A235872 (A235872 (n + 1)).toNat)

end

end A264981.P9918285932360941880

namespace A264981

/-- `gcd(A155734(n), A235872(A235872(n+1)))` -/
def P9918285932360941880.Spec : Prop :=
  ∀ n, (P9918285932360941880.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P3910136137101641078

`gcd(A235872(n+1)+A140429(n), A140429(n))`
-/

namespace A264981.P3910136137101641078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235872 (n + 1) + A140429 n) (A140429 n)

end

end A264981.P3910136137101641078

namespace A264981

/-- `gcd(A235872(n+1)+A140429(n), A140429(n))` -/
def P3910136137101641078.Spec : Prop :=
  ∀ n, (P3910136137101641078.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P5131193735398163143

`gcd(A133647(n), A358272(n+1))`
-/

namespace A264981.P5131193735398163143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133647 n) (A358272 (n + 1))

end

end A264981.P5131193735398163143

namespace A264981

/-- `gcd(A133647(n), A358272(n+1))` -/
def P5131193735398163143.Spec : Prop :=
  ∀ n, (P5131193735398163143.a n : ℤ) = A264981 (n + 1)

end A264981

/-! ## A264981.P12522039810266020293

`gcd(2*A358272(n+1), A173391(n+1))`
-/

namespace A264981.P12522039810266020293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A358272 (n + 1)) (A173391 (n + 1))

end

end A264981.P12522039810266020293

namespace A264981

/-- `gcd(2*A358272(n+1), A173391(n+1))` -/
def P12522039810266020293.Spec : Prop :=
  ∀ n, (P12522039810266020293.a n : ℤ) = A264981 (n + 1)

end A264981

/-!
# A264982: Binary width of terms produced by match-making permutation: a(n) = A070939(A266195(n)).

The programs for A264982, there is no canonical definition to state claims against.
-/

/-! ## A264982.P1575012733292193279

`A070939(A266195(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264982.P1575012733292193279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A266195 (n + 1)).toNat

end

end A264982.P1575012733292193279

/-! ## A264982.P18421661433605611280

`A348553(floor(log2(A266195(n+1))))`
-/

namespace A264982.P18421661433605611280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (Nat.log 2 (A266195 (n + 1)).toNat)

end

end A264982.P18421661433605611280

/-! ## A264982.P5444963873520976933

`A269393(floor(log2(A266195(n+1)))+1)`
-/

namespace A264982.P5444963873520976933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269393 (Nat.log 2 (A266195 (n + 1)).toNat + 1)

end

end A264982.P5444963873520976933

/-! ## A264982.P2132954202020130634

`A029837(A266195(n+1)+1)`
-/

namespace A264982.P2132954202020130634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A266195 (n + 1) + 1).toNat

end

end A264982.P2132954202020130634

/-! ## A264982.P2870008455489536833

`A070940(or(1, A266195(n+1)))`
-/

namespace A264982.P2870008455489536833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (Int.lor 1 (A266195 (n + 1))).toNat

end

end A264982.P2870008455489536833

/-! ## A264982.P12943703349575869783

`A001511(2^A000523(A266195(n+1)))`
-/

namespace A264982.P12943703349575869783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000523 (A266195 (n + 1)).toNat : ℤ))).toNat

end

end A264982.P12943703349575869783

/-! ## A264982.P14754873620371789166

`A000523(A266195(n+1))+A007318(C(2, n²))`
-/

namespace A264982.P14754873620371789166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A266195 (n + 1)).toNat + A007318 (Nat.choose 2 (n ^ 2))

end

end A264982.P14754873620371789166

/-! ## A264982.P11565514651373409364

`A001511(2*n+1)+A000523(A266195(n+1))`
-/

namespace A264982.P11565514651373409364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) + A000523 (A266195 (n + 1)).toNat

end

end A264982.P11565514651373409364

/-! ## A264982.P10340730587963455601

`A000523(A266195(n+1))+A007318(C(3, n+1)!)`
-/

namespace A264982.P10340730587963455601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A266195 (n + 1)).toNat + A007318 (Nat.factorial (Nat.choose 3 (n + 1)))

end

end A264982.P10340730587963455601

/-! ## A264982.P9546508160907401129

`A000523(A266195(n+1))%record[A020639(n+2)-1]+1`
-/

namespace A264982.P9546508160907401129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (A266195 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A264982.P9546508160907401129

/-! ## A264982.P17419205494862635495

`A000523(2*A266195(n+1))`
-/

namespace A264982.P17419205494862635495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A266195 (n + 1)).toNat

end

end A264982.P17419205494862635495

/-! ## A264982.P18102727180007869892

`A000523(A266195(n+1)+A266195(n+1))`
-/

namespace A264982.P18102727180007869892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A266195 (n + 1) + A266195 (n + 1)).toNat

end

end A264982.P18102727180007869892

/-!
# A264983: Odd bisection of A263273.

The programs for A264983, there is no canonical definition to state claims against.
-/

/-! ## A264983.P8022018727206634480

`A263273(2*n+1)`
-/

namespace A264983.P8022018727206634480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (2 * n + 1)

end

end A264983.P8022018727206634480

/-! ## A264983.P1036761880563698829

`2*A264985(n)+1`
-/

namespace A264983.P1036761880563698829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264985 n + 1

end

end A264983.P1036761880563698829

/-! ## A264983.P15278981087669116873

`2*A264996(n+1)-1`
-/

namespace A264983.P15278981087669116873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264996 (n + 1) - 1

end

end A264983.P15278981087669116873

/-! ## A264983.P9914008865137318164

`A264996(n+1)+A264985(n)`
-/

namespace A264983.P9914008865137318164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (n + 1) + A264985 n

end

end A264983.P9914008865137318164

/-! ## A264983.P15563519542426336288

`A016825(A264985(n))/2`
-/

namespace A264983.P15563519542426336288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A264985 n).toNat : ℚ) / 2

end

end A264983.P15563519542426336288

/-! ## A264983.P7624063177912632834

`2*A265356(A263272(n))+1`
-/

namespace A264983.P7624063177912632834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265356 (A263272 n).toNat + 1

end

end A264983.P7624063177912632834

/-! ## A264983.P1211798119135957307

`A004273(A264996(n+1))`
-/

namespace A264983.P1211798119135957307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A264996 (n + 1)).toNat

end

end A264983.P1211798119135957307

/-! ## A264983.P11212644067651457473

`A264984(A265355(n))+1`
-/

namespace A264983.P11212644067651457473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264984 (A265355 n).toNat + 1

end

end A264983.P11212644067651457473

/-! ## A264983.P10009761120905083191

`A265341(A263273(n))`
-/

namespace A264983.P10009761120905083191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265341 (A263273 n).toNat

end

end A264983.P10009761120905083191

/-! ## A264983.P8191863771016162134

`A265341(A265352(A263272(n)))`
-/

namespace A264983.P8191863771016162134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265341 (A265352 (A263272 n).toNat).toNat

end

end A264983.P8191863771016162134

/-! ## A264983.P12358438083368370881

`A265341(A263272(A265351(n)))`
-/

namespace A264983.P12358438083368370881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265341 (A263272 (A265351 n).toNat).toNat

end

end A264983.P12358438083368370881

/-! ## A264983.P17691258731285642609

`A265341(A265354(A264985(n)))`
-/

namespace A264983.P17691258731285642609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265341 (A265354 (A264985 n).toNat).toNat

end

end A264983.P17691258731285642609

/-! ## A264983.P11132432283138228930

`A265341(A264985(A265353(n)))`
-/

namespace A264983.P11132432283138228930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265341 (A264985 (A265353 n).toNat).toNat

end

end A264983.P11132432283138228930

/-! ## A264983.P10343930770917146806

`A266643(A246200(2*n+1))`
-/

namespace A264983.P10343930770917146806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 (2 * n + 1)).toNat

end

end A264983.P10343930770917146806

/-! ## A264983.P3165369734253376674

`A030102(2*n+1)*A038500(2*n+1)`
-/

namespace A264983.P3165369734253376674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (2 * n + 1) * A038500 (2 * n + 1)

end

end A264983.P3165369734253376674

/-! ## A264983.P4689557148380110271

`2*A264992(A264989(n))+1`
-/

namespace A264983.P4689557148380110271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264992 (A264989 n).toNat + 1

end

end A264983.P4689557148380110271

/-! ## A264983.P4312990611792772516

`A265352(A264987(n))`
-/

namespace A264983.P4312990611792772516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A264987 n).toNat

end

end A264983.P4312990611792772516

/-! ## A264983.P6290212024944089610

`A265352(A263272(2*n+1))`
-/

namespace A264983.P6290212024944089610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A263272 (2 * n + 1)).toNat

end

end A264983.P6290212024944089610

/-! ## A264983.P7346532550032700609

`A265352(2*A264989(n)+1)`
-/

namespace A264983.P7346532550032700609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (2 * A264989 n + 1).toNat

end

end A264983.P7346532550032700609

/-! ## A264983.P3320000539894661713

`A264965(A145341(n+1))`
-/

namespace A264983.P3320000539894661713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A145341 (n + 1)).toNat

end

end A264983.P3320000539894661713

/-!
# A264984: Even bisection of A263273; terms of A263262 doubled.

The programs for A264984, there is no canonical definition to state claims against.
-/

/-! ## A264984.P11405739222316159513

`2*A263272(n)`
-/

namespace A264984.P11405739222316159513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263272 n

end

end A264984.P11405739222316159513

/-! ## A264984.P7646706117265643276

`A263273(2*n)`
-/

namespace A264984.P7646706117265643276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (2 * n)

end

end A264984.P7646706117265643276

/-! ## A264984.P7943222521903632471

`2*A266641(A057889(n))`
-/

namespace A264984.P7943222521903632471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266641 (A057889 n).toNat

end

end A264984.P7943222521903632471

/-! ## A264984.P8030164410441620721

`A005843(A263272(n))`
-/

namespace A264984.P8030164410441620721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A263272 n).toNat

end

end A264984.P8030164410441620721

/-! ## A264984.P11691722530626320475

`2*A057889(A266642(n))`
-/

namespace A264984.P11691722530626320475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057889 (A266642 n).toNat

end

end A264984.P11691722530626320475

/-! ## A264984.P8074687032495720400

`2*A246200(A264968(n))`
-/

namespace A264984.P8074687032495720400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246200 (A264968 n).toNat

end

end A264984.P8074687032495720400

/-! ## A264984.P5606551506281623262

`A264983(A265356(n))-1`
-/

namespace A264984.P5606551506281623262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265356 n).toNat - 1

end

end A264984.P5606551506281623262

/-! ## A264984.P7179038460541739568

`2*A265344(A264978(n))`
-/

namespace A264984.P7179038460541739568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265344 (A264978 n).toNat

end

end A264984.P7179038460541739568

/-! ## A264984.P10882330296959399125

`A265342(A263273(n))`
-/

namespace A264984.P10882330296959399125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265342 (A263273 n).toNat

end

end A264984.P10882330296959399125

/-! ## A264984.P18406720563062650716

`2*A264967(A246200(n))`
-/

namespace A264984.P18406720563062650716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264967 (A246200 n).toNat

end

end A264984.P18406720563062650716

/-! ## A264984.P16388164473998210342

`A266643(A246200(2*n))`
-/

namespace A264984.P16388164473998210342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 (2 * n)).toNat

end

end A264984.P16388164473998210342

/-! ## A264984.P8149347244284137724

`A265352(A264986(n))`
-/

namespace A264984.P8149347244284137724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A264986 n).toNat

end

end A264984.P8149347244284137724

/-! ## A264984.P7819435188543161673

`2*A264976(A264974(n))`
-/

namespace A264984.P7819435188543161673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264976 (A264974 n).toNat

end

end A264984.P7819435188543161673

/-! ## A264984.P1691666248608335672

`A265352(2*A264974(n))`
-/

namespace A264984.P1691666248608335672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (2 * A264974 n).toNat

end

end A264984.P1691666248608335672

/-! ## A264984.P6012028685022426442

`A265354(A264985(2*n))`
-/

namespace A264984.P6012028685022426442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A264985 (2 * n)).toNat

end

end A264984.P6012028685022426442

/-! ## A264984.P8638424457352202383

`A264965(A057889(2*n))`
-/

namespace A264984.P8638424457352202383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A057889 (2 * n)).toNat

end

end A264984.P8638424457352202383

/-! ## A264984.P3870179160788354975

`A265366(A264978(2*n))`
-/

namespace A264984.P3870179160788354975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265366 (A264978 (2 * n)).toNat

end

end A264984.P3870179160788354975

/-! ## A264984.P5804426134265871269

`A264986(A264975(n))`
-/

namespace A264984.P5804426134265871269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264986 (A264975 n).toNat

end

end A264984.P5804426134265871269

/-!
# A264985: Self-inverse permutation of nonnegative integers: a(n) = (A264983(n)-1) / 2.

The programs for A264985, there is no canonical definition to state claims against.
-/

/-! ## A264985.P5180077419699277799

`(A264983(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264985.P5180077419699277799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264983 n - 1 : ℚ) / 2

end

end A264985.P5180077419699277799

/-! ## A264985.P17831317863398065399

`(A263273(2*n+1)-1)/2`
-/

namespace A264985.P17831317863398065399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (2 * n + 1) - 1 : ℚ) / 2

end

end A264985.P17831317863398065399

/-! ## A264985.P14995800806334552018

`floor(A264983(n)/2)`
-/

namespace A264985.P14995800806334552018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264983 n : ℚ) / 2⌋

end

end A264985.P14995800806334552018

/-! ## A264985.P15580326651092897098

`A264996(n+1)-1`
-/

namespace A264985.P15580326651092897098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (n + 1) - 1

end

end A264985.P15580326651092897098

/-! ## A264985.P4037390871105249227

`A264983(n)%A264996(n+1)`
-/

namespace A264985.P4037390871105249227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264983 n) (A264996 (n + 1))

end

end A264985.P4037390871105249227

/-! ## A264985.P17655251322954401339

`A265356(A263272(n))`
-/

namespace A264985.P17655251322954401339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A263272 n).toNat

end

end A264985.P17655251322954401339

/-! ## A264985.P16054680699779924867

`A265356(A264984(n)/2)`
-/

namespace A264985.P16054680699779924867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A264985.P16054680699779924867

/-! ## A264985.P9581508926458061137

`A263272(A265355(n))`
-/

namespace A264985.P9581508926458061137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265355 n).toNat

end

end A264985.P9581508926458061137

/-! ## A264985.P3165056930690568807

`A023443(A264996(n+1))`
-/

namespace A264985.P3165056930690568807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A264996 (n + 1)).toNat

end

end A264985.P3165056930690568807

/-! ## A264985.P6171555227550900053

`A266190(A265353(n))`
-/

namespace A264985.P6171555227550900053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A265353 n).toNat

end

end A264985.P6171555227550900053

/-! ## A264985.P8869216700062150600

`A265353(A263273(n))`
-/

namespace A264985.P8869216700062150600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A263273 n).toNat

end

end A264985.P8869216700062150600

/-! ## A264985.P7898745561698449780

`A265353(A263272(A265351(n)))`
-/

namespace A264985.P7898745561698449780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A263272 (A265351 n).toNat).toNat

end

end A264985.P7898745561698449780

/-! ## A264985.P12251543966740863322

`A266408(A064216(n+1))-1`
-/

namespace A264985.P12251543966740863322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266408 (A064216 (n + 1)).toNat - 1

end

end A264985.P12251543966740863322

/-! ## A264985.P9317775284449016494

`floor(A263273(2*n+1)/2)`
-/

namespace A264985.P9317775284449016494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263273 (2 * n + 1) : ℚ) / 2⌋

end

end A264985.P9317775284449016494

/-! ## A264985.P12376120190029237405

`A265356(A263273(2*n)/2)`
-/

namespace A264985.P12376120190029237405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A264985.P12376120190029237405

/-! ## A264985.P620531793559763809

`A266408(A064989(2*n+1))-1`
-/

namespace A264985.P620531793559763809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266408 (A064989 (2 * n + 1)).toNat - 1

end

end A264985.P620531793559763809

/-! ## A264985.P14384333875129433452

`A264992(A264989(n))`
-/

namespace A264985.P14384333875129433452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A264989 n).toNat

end

end A264985.P14384333875129433452

/-! ## A264985.P5003405737270735365

`A264992(A263272(A265358(n)))`
-/

namespace A264985.P5003405737270735365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A263272 (A265358 n).toNat).toNat

end

end A264985.P5003405737270735365

/-! ## A264985.P13509420746128246580

`A266190(A263273(A266189(n)))`
-/

namespace A264985.P13509420746128246580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A263273 (A266189 n).toNat).toNat

end

end A264985.P13509420746128246580

/-! ## A264985.P14219973127833004393

`(A264965(A145341(n+1))-1)/2`
-/

namespace A264985.P14219973127833004393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264965 (A145341 (n + 1)).toNat - 1 : ℚ) / 2

end

end A264985.P14219973127833004393

/-!
# A264986: Even bisection of A263272; terms of A264974 doubled.

The programs for A264986, there is no canonical definition to state claims against.
-/

/-! ## A264986.P3849356977174799196

`2*A264974(n)`
-/

namespace A264986.P3849356977174799196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264974 n

end

end A264986.P3849356977174799196

/-! ## A264986.P13039110510368907034

`A263272(2*n)`
-/

namespace A264986.P13039110510368907034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (2 * n)

end

end A264986.P13039110510368907034

/-! ## A264986.P11654302871793151154

`A263273(4*n)/2`
-/

namespace A264986.P11654302871793151154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (4 * n) : ℚ) / 2

end

end A264986.P11654302871793151154

/-! ## A264986.P17113171374053161011

`A266641(A057889(2*n))`
-/

namespace A264986.P17113171374053161011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A057889 (2 * n)).toNat

end

end A264986.P17113171374053161011

/-! ## A264986.P942329454538338495

`2*A265363(A263273(n))`
-/

namespace A264986.P942329454538338495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265363 (A263273 n).toNat

end

end A264986.P942329454538338495

/-! ## A264986.P14666809447493675910

`A264984(2*n)/2`
-/

namespace A264986.P14666809447493675910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264984 (2 * n) : ℚ) / 2

end

end A264986.P14666809447493675910

/-! ## A264986.P8510809543115807868

`A264987(A265362(n))-1`
-/

namespace A264986.P8510809543115807868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264987 (A265362 n).toNat - 1

end

end A264986.P8510809543115807868

/-! ## A264986.P7958028747785327092

`2*A265361(A264989(n))`
-/

namespace A264986.P7958028747785327092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265361 (A264989 n).toNat

end

end A264986.P7958028747785327092

/-! ## A264986.P4637370863141355183

`A005843(A264974(n))`
-/

namespace A264986.P4637370863141355183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A264974 n).toNat

end

end A264986.P4637370863141355183

/-! ## A264986.P11040209136728471836

`A264984(A264976(n))`
-/

namespace A264986.P11040209136728471836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264984 (A264976 n).toNat

end

end A264986.P11040209136728471836

/-! ## A264986.P15443988587247879361

`A057889(A266642(2*n))`
-/

namespace A264986.P15443988587247879361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266642 (2 * n)).toNat

end

end A264986.P15443988587247879361

/-! ## A264986.P3705379059976553313

`A246200(A264968(2*n))`
-/

namespace A264986.P3705379059976553313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264968 (2 * n)).toNat

end

end A264986.P3705379059976553313

/-! ## A264986.P7699971810559702599

`2*A263273(A265364(n))`
-/

namespace A264986.P7699971810559702599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263273 (A265364 n).toNat

end

end A264986.P7699971810559702599

/-! ## A264986.P12225353547672100373

`filter[A263272(n), A059841(#)]`
-/

namespace A264986.P12225353547672100373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A264986.P12225353547672100373

/-! ## A264986.P3693497774060174494

`A265355(A264985(2*n))`
-/

namespace A264986.P3693497774060174494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264985 (2 * n)).toNat

end

end A264986.P3693497774060174494

/-! ## A264986.P12466052464371744641

`A264985(A265356(2*n))`
-/

namespace A264986.P12466052464371744641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265356 (2 * n)).toNat

end

end A264986.P12466052464371744641

/-! ## A264986.P14804136448858675743

`A265344(A264978(2*n))`
-/

namespace A264986.P14804136448858675743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A264978 (2 * n)).toNat

end

end A264986.P14804136448858675743

/-! ## A264986.P17734648416664503959

`A265351(A264984(n))`
-/

namespace A264986.P17734648416664503959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264984 n).toNat

end

end A264986.P17734648416664503959

/-! ## A264986.P12361952195808614604

`A265351(A263273(2*n))`
-/

namespace A264986.P12361952195808614604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A263273 (2 * n)).toNat

end

end A264986.P12361952195808614604

/-! ## A264986.P7279465919696160206

`2*A265367(A265352(n))`
-/

namespace A264986.P7279465919696160206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265367 (A265352 n).toNat

end

end A264986.P7279465919696160206

/-!
# A264987: Odd bisection of A263272.

The programs for A264987, there is no canonical definition to state claims against.
-/

/-! ## A264987.P10326551278158934818

`A263272(2*n+1)`
-/

namespace A264987.P10326551278158934818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (2 * n + 1)

end

end A264987.P10326551278158934818

/-! ## A264987.P14743799475782923610

`A263273(2*(2*n+1))/2`
-/

namespace A264987.P14743799475782923610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (2 * (2 * n + 1)) : ℚ) / 2

end

end A264987.P14743799475782923610

/-! ## A264987.P17335006727503948723

`2*A264989(n)+1`
-/

namespace A264987.P17335006727503948723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264989 n + 1

end

end A264987.P17335006727503948723

/-! ## A264987.P12934078602113631514

`A016825(A264989(n))/2`
-/

namespace A264987.P12934078602113631514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A264989 n).toNat : ℚ) / 2

end

end A264987.P12934078602113631514

/-! ## A264987.P17608748622925245569

`A266641(A145341(n+1))`
-/

namespace A264987.P17608748622925245569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A145341 (n + 1)).toNat

end

end A264987.P17608748622925245569

/-! ## A264987.P1888800033259864052

`A266641(A057889(2*n+1))`
-/

namespace A264987.P1888800033259864052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A057889 (2 * n + 1)).toNat

end

end A264987.P1888800033259864052

/-! ## A264987.P18354576940875098721

`A264984(Δ[n²])/2`
-/

namespace A264987.P18354576940875098721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A264987.P18354576940875098721

/-! ## A264987.P2917067999290240059

`A005408(A264989(n))`
-/

namespace A264987.P2917067999290240059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A264989 n).toNat

end

end A264987.P2917067999290240059

/-! ## A264987.P6606681204042218029

`A264983(A264992(n))`
-/

namespace A264987.P6606681204042218029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A264992 n).toNat

end

end A264987.P6606681204042218029

/-! ## A264987.P8672122612842892744

`A264986(A265361(n))+1`
-/

namespace A264987.P8672122612842892744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264986 (A265361 n).toNat + 1

end

end A264987.P8672122612842892744

/-! ## A264987.P8820740035484809480

`filter[A263272(n), A000035(#)]`
-/

namespace A264987.P8820740035484809480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A264987.P8820740035484809480

/-! ## A264987.P13911915907707387084

`A057889(A266642(2*n+1))`
-/

namespace A264987.P13911915907707387084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A266642 (2 * n + 1)).toNat

end

end A264987.P13911915907707387084

/-! ## A264987.P53269858956536728

`A246200(A264968(2*n+1))`
-/

namespace A264987.P53269858956536728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A264968 (2 * n + 1)).toNat

end

end A264987.P53269858956536728

/-! ## A264987.P779018174134101323

`A265355(A264985(2*n+1))`
-/

namespace A264987.P779018174134101323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264985 (2 * n + 1)).toNat

end

end A264987.P779018174134101323

/-! ## A264987.P14475254764386820996

`A264985(A265356(2*n+1))`
-/

namespace A264987.P14475254764386820996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265356 (2 * n + 1)).toNat

end

end A264987.P14475254764386820996

/-! ## A264987.P206790084620067566

`A265344(A264978(2*n+1))`
-/

namespace A264987.P206790084620067566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A264978 (2 * n + 1)).toNat

end

end A264987.P206790084620067566

/-! ## A264987.P2993361813555607042

`A265351(A264983(n))`
-/

namespace A264987.P2993361813555607042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264983 n).toNat

end

end A264987.P2993361813555607042

/-! ## A264987.P326022118182437729

`A265351(A263273(2*n+1))`
-/

namespace A264987.P326022118182437729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A263273 (2 * n + 1)).toNat

end

end A264987.P326022118182437729

/-! ## A264987.P14293111954042991075

`A265904(A265351(2*n+1))`
-/

namespace A264987.P14293111954042991075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265904 (A265351 (2 * n + 1)).toNat

end

end A264987.P14293111954042991075

/-! ## A264987.P8746259047251454547

`A265351(A265341(A263273(n)))`
-/

namespace A264987.P8746259047251454547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265341 (A263273 n).toNat).toNat

end

end A264987.P8746259047251454547

/-!
# A264988: The left edge of A263267.

The programs for A264988, there is no canonical definition to state claims against.
-/

/-! ## A264988.P3622016353951807210

`A263267(A263266(A261089(n)))`
-/

namespace A264988.P3622016353951807210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A263266 (A261089 n).toNat).toNat

end

end A264988.P3622016353951807210

/-! ## A264988.P15935939755314028153

`A263267(A263266(eq[1, A263259(n)]))`
-/

namespace A264988.P15935939755314028153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A263266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A264988.P15935939755314028153

/-! ## A264988.P8629296957713537061

`A263267(A263260(n)-A262507(n))`
-/

namespace A264988.P8629296957713537061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A263260 n - A262507 n).toNat

end

end A264988.P8629296957713537061

/-! ## A264988.P6003048056008177434

`A263267(∑[A262507(n)]-A262507(n))`
-/

namespace A264988.P6003048056008177434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (∑ j ∈ Finset.range (n + 1), f1 j - A262507 n).toNat

end

end A264988.P6003048056008177434

/-! ## A264988.P15385466058431958099

`A263267(A263266(record[n/A263259(n)]))`
-/

namespace A264988.P15385466058431958099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A263259 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A263266 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A264988.P15385466058431958099

/-!
# A264989: Self-inverse permutation of nonnegative integers: a(n) = (A264987(n)-1) / 2.

The programs for A264989, there is no canonical definition to state claims against.
-/

/-! ## A264989.P6872238493463600343

`(A264987(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264989.P6872238493463600343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264987 n - 1 : ℚ) / 2

end

end A264989.P6872238493463600343

/-! ## A264989.P7928523038377048138

`1/2*(A263272(2*n+1)-1)`
-/

namespace A264989.P7928523038377048138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A263272 (2 * n + 1) - 1 : ℚ)

end

end A264989.P7928523038377048138

/-! ## A264989.P14722455890588016306

`1/4*(A263273(4*n+2)-2)`
-/

namespace A264989.P14722455890588016306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A263273 (4 * n + 2) - 2 : ℚ)

end

end A264989.P14722455890588016306

/-! ## A264989.P16826520922701015093

`A265357(A263272(n))`
-/

namespace A264989.P16826520922701015093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A263272 n).toNat

end

end A264989.P16826520922701015093

/-! ## A264989.P11491379076334082209

`A264991(A264985(n))`
-/

namespace A264989.P11491379076334082209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A264985 n).toNat

end

end A264989.P11491379076334082209

/-! ## A264989.P5004294831600936428

`A264991(A264996(n+1)-1)`
-/

namespace A264989.P5004294831600936428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A264996 (n + 1) - 1).toNat

end

end A264989.P5004294831600936428

/-! ## A264989.P13105074197995206301

`A264991((A264983(n)-1)/2)`
-/

namespace A264989.P13105074197995206301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A264989.P13105074197995206301

/-! ## A264989.P12337117485151398740

`A265357(A264985(A265356(n)))`
-/

namespace A264989.P12337117485151398740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A264985 (A265356 n).toNat).toNat

end

end A264989.P12337117485151398740

/-! ## A264989.P715235163659754107

`(A266641(A145341(n+1))-1)/2`
-/

namespace A264989.P715235163659754107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266641 (A145341 (n + 1)).toNat - 1 : ℚ) / 2

end

end A264989.P715235163659754107

/-! ## A264989.P861221356205216385

`A264991(A266190(A265353(n)))`
-/

namespace A264989.P861221356205216385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A266190 (A265353 n).toNat).toNat

end

end A264989.P861221356205216385

/-! ## A264989.P16247092915818492478

`A264991(A265353(A263273(n)))`
-/

namespace A264989.P16247092915818492478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A265353 (A263273 n).toNat).toNat

end

end A264989.P16247092915818492478

/-! ## A264989.P17491468865326792346

`(A263272(Δ[n²])-1)/2`
-/

namespace A264989.P17491468865326792346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 : ℚ) / 2

end

end A264989.P17491468865326792346

/-! ## A264989.P9242806011058152387

`floor(A263272(2*n+1)/2)`
-/

namespace A264989.P9242806011058152387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263272 (2 * n + 1) : ℚ) / 2⌋

end

end A264989.P9242806011058152387

/-! ## A264989.P306387842960181756

`A265357(A263273(2*n)/2)`
-/

namespace A264989.P306387842960181756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A264989.P306387842960181756

/-! ## A264989.P12396303842588192932

`A263272(A265358(n))`
-/

namespace A264989.P12396303842588192932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265358 n).toNat

end

end A264989.P12396303842588192932

/-! ## A264989.P12792542618552702057

`A264985(A264992(n))`
-/

namespace A264989.P12792542618552702057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 n).toNat

end

end A264989.P12792542618552702057

/-! ## A264989.P505051582240986365

`A004524(A264987(n))`
-/

namespace A264989.P505051582240986365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A264987 n).toNat

end

end A264989.P505051582240986365

/-! ## A264989.P1551671493590310882

`A265362(A264974(n))`
-/

namespace A264989.P1551671493590310882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (A264974 n).toNat

end

end A264989.P1551671493590310882

/-! ## A264989.P54383624043902112

`A264974(A265361(n))`
-/

namespace A264989.P54383624043902112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265361 n).toNat

end

end A264989.P54383624043902112

/-! ## A264989.P16424121660112511648

`A265362(A264986(n)/2)`
-/

namespace A264989.P16424121660112511648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (SequenceMachineLib.roundAway ((A264986 n : ℚ) / 2)).toNat

end

end A264989.P16424121660112511648

/-!
# A264990: a(n) = number of occurrences of a most frequent nonzero digit in factorial base representation (A007623) of n.

The programs for A264990, there is no canonical definition to state claims against.
-/

/-! ## A264990.P1429467265908998077

`A051903(A275735(n))`
-/

namespace A264990.P1429467265908998077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A275735 n).toNat

end

end A264990.P1429467265908998077

/-! ## A264990.P14894559959700912914

`A275811(A225901(n))`
-/

namespace A264990.P14894559959700912914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A225901 n).toNat

end

end A264990.P14894559959700912914

/-! ## A264990.P3814115084480634868

`val(A278235(n), 2)`
-/

namespace A264990.P3814115084480634868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278235 n).toNat 2

end

end A264990.P3814115084480634868

/-! ## A264990.P15562218076782096751

`A051903(A278235(n))`
-/

namespace A264990.P15562218076782096751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278235 n).toNat

end

end A264990.P15562218076782096751

/-! ## A264990.P4708208909316106681

`A246359(A348138(n))`
-/

namespace A264990.P4708208909316106681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A348138 n).toNat

end

end A264990.P4708208909316106681

/-! ## A264990.P7000655298799194345

`A275811(A275957(A060125(n)))`
-/

namespace A264990.P7000655298799194345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A275957 (A060125 n).toNat).toNat

end

end A264990.P7000655298799194345

/-! ## A264990.P3529341514546331934

`A275811(A060125(A275958(n)))`
-/

namespace A264990.P3529341514546331934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A060125 (A275958 n).toNat).toNat

end

end A264990.P3529341514546331934

/-! ## A264990.P10671380196089127927

`A007814(2*A278235(n))-1`
-/

namespace A264990.P10671380196089127927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A278235 n).toNat - 1

end

end A264990.P10671380196089127927

/-! ## A264990.P10600510171614757924

`A007814(2*n+1)+A007814(A278235(n))`
-/

namespace A264990.P10600510171614757924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + A007814 (A278235 n).toNat

end

end A264990.P10600510171614757924

/-! ## A264990.P6542339675985097628

`A007814(A278235(n)+2*A278235(n))`
-/

namespace A264990.P6542339675985097628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278235 n + 2 * A278235 n).toNat

end

end A264990.P6542339675985097628

/-! ## A264990.P14225795358100551091

`A007814(A278235(n)²)/2`
-/

namespace A264990.P14225795358100551091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A278235 n ^ 2).toNat : ℚ) / 2

end

end A264990.P14225795358100551091

/-!
# A264991: Permutation of nonnegative integers: a(n) = A264989(A264985(n)).

The programs for A264991, there is no canonical definition to state claims against.
-/

/-! ## A264991.P14456027585458490788

`A264989(A264985(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264991.P14456027585458490788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264985 n).toNat

end

end A264991.P14456027585458490788

/-! ## A264991.P17737908859627479149

`A265357(A265355(n))`
-/

namespace A264991.P17737908859627479149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A265355 n).toNat

end

end A264991.P17737908859627479149

/-! ## A264991.P16386751571054821151

`A264989(A264996(n+1)-1)`
-/

namespace A264991.P16386751571054821151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264996 (n + 1) - 1).toNat

end

end A264991.P16386751571054821151

/-! ## A264991.P12325026750379320858

`A264989((A264983(n)-1)/2)`
-/

namespace A264991.P12325026750379320858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A264991.P12325026750379320858

/-! ## A264991.P3894067147571545180

`A264989(A265356(A263272(n)))`
-/

namespace A264991.P3894067147571545180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265356 (A263272 n).toNat).toNat

end

end A264991.P3894067147571545180

/-! ## A264991.P4911680128119463296

`A264989(A264983(n)%A264996(n+1))`
-/

namespace A264991.P4911680128119463296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (Int.tmod (A264983 n) (A264996 (n + 1))).toNat

end

end A264991.P4911680128119463296

/-! ## A264991.P7373529464759662368

`A264989(A266190(A265353(n)))`
-/

namespace A264991.P7373529464759662368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A266190 (A265353 n).toNat).toNat

end

end A264991.P7373529464759662368

/-! ## A264991.P8884253947927573651

`A264989(A265353(A263273(n)))`
-/

namespace A264991.P8884253947927573651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265353 (A263273 n).toNat).toNat

end

end A264991.P8884253947927573651

/-! ## A264991.P13781327569653875782

`A264989(A265353(A263272(A265351(n))))`
-/

namespace A264991.P13781327569653875782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265353 (A263272 (A265351 n).toNat).toNat).toNat

end

end A264991.P13781327569653875782

/-! ## A264991.P17245969918165995606

`floor(A265351(2*n+1)/2)`
-/

namespace A264991.P17245969918165995606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265351 (2 * n + 1) : ℚ) / 2⌋

end

end A264991.P17245969918165995606

/-! ## A264991.P13590781349631794862

`A264989(A264992(A264989(n)))`
-/

namespace A264991.P13590781349631794862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264992 (A264989 n).toNat).toNat

end

end A264991.P13590781349631794862

/-! ## A264991.P17401379452404698780

`A265357(A263272(A264992(A263272(A265358(n)))))`
-/

namespace A264991.P17401379452404698780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A263272 (A264992 (A263272 (A265358 n).toNat).toNat).toNat).toNat

end

end A264991.P17401379452404698780

/-! ## A264991.P908369079867091402

`A265357(A263272(A265354(A266190(n))))`
-/

namespace A264991.P908369079867091402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A263272 (A265354 (A266190 n).toNat).toNat).toNat

end

end A264991.P908369079867091402

/-! ## A264991.P14401056921884230419

`A264989(A265356(A264989(A265357(n))))`
-/

namespace A264991.P14401056921884230419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265356 (A264989 (A265357 n).toNat).toNat).toNat

end

end A264991.P14401056921884230419

/-! ## A264991.P15241023055666400535

`A265357(A265351(A265354(n)))`
-/

namespace A264991.P15241023055666400535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A265351 (A265354 n).toNat).toNat

end

end A264991.P15241023055666400535

/-! ## A264991.P2605401210855744722

`A264985(A264992(A264985(A264974(A264974(n)))))`
-/

namespace A264991.P2605401210855744722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 (A264985 (A264974 (A264974 n).toNat).toNat).toNat).toNat

end

end A264991.P2605401210855744722

/-! ## A264991.P14178707352303253646

`A264985(A264992(A264985(A264976(A264975(n)))))`
-/

namespace A264991.P14178707352303253646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 (A264985 (A264976 (A264975 n).toNat).toNat).toNat).toNat

end

end A264991.P14178707352303253646

/-! ## A264991.P7279837608866381595

`A264985(A264992(A264992(A264985(A264992(n)))))`
-/

namespace A264991.P7279837608866381595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 (A264992 (A264985 (A264992 n).toNat).toNat).toNat).toNat

end

end A264991.P7279837608866381595

/-! ## A264991.P3331861551263952332

`A004526(A004526(A264984(A263273(2*n+1))))`
-/

namespace A264991.P3331861551263952332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A264984 (A263273 (2 * n + 1)).toNat).toNat).toNat

end

end A264991.P3331861551263952332

/-! ## A264991.P11876219546269429729

`A263273(A265910(A263273(A265342(2*n+1))))`
-/

namespace A264991.P11876219546269429729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265910 (A263273 (A265342 (2 * n + 1)).toNat).toNat).toNat

end

end A264991.P11876219546269429729

/-!
# A264992: Permutation of nonnegative integers: a(n) = A264985(A264989(n)).

The programs for A264992, there is no canonical definition to state claims against.
-/

/-! ## A264992.P11595687407962464495

`A264985(A264989(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264992.P11595687407962464495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264989 n).toNat

end

end A264992.P11595687407962464495

/-! ## A264992.P5106357255796898059

`floor(A265352(2*n+1)/2)`
-/

namespace A264992.P5106357255796898059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265352 (2 * n + 1) : ℚ) / 2⌋

end

end A264992.P5106357255796898059

/-! ## A264992.P5272436189753900887

`A265356(A265358(n))`
-/

namespace A264992.P5272436189753900887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A265358 n).toNat

end

end A264992.P5272436189753900887

/-! ## A264992.P13625163816018299383

`A264996(A264989(n)+1)-1`
-/

namespace A264992.P13625163816018299383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A264989 n + 1).toNat - 1

end

end A264992.P13625163816018299383

/-! ## A264992.P8721359362709556452

`A264985(A265357(A263272(n)))`
-/

namespace A264992.P8721359362709556452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265357 (A263272 n).toNat).toNat

end

end A264992.P8721359362709556452

/-! ## A264992.P13328286991016571289

`A264985(A264991(A264985(n)))`
-/

namespace A264992.P13328286991016571289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264991 (A264985 n).toNat).toNat

end

end A264992.P13328286991016571289

/-! ## A264992.P14967676349924914587

`A264985(A265357(A265351(A263273(n))))`
-/

namespace A264992.P14967676349924914587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265357 (A265351 (A263273 n).toNat).toNat).toNat

end

end A264992.P14967676349924914587

/-! ## A264992.P17198293266885525557

`A264985(A265357(A264985(A265356(n))))`
-/

namespace A264992.P17198293266885525557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265357 (A264985 (A265356 n).toNat).toNat).toNat

end

end A264992.P17198293266885525557

/-! ## A264992.P15160514869878716954

`A264985(A265357(A265351(A264985(A265353(n)))))`
-/

namespace A264992.P15160514869878716954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265357 (A265351 (A264985 (A265353 n).toNat).toNat).toNat).toNat

end

end A264992.P15160514869878716954

/-! ## A264992.P2953580837554340589

`A264985(A265362(A264974(n)))`
-/

namespace A264992.P2953580837554340589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265362 (A264974 n).toNat).toNat

end

end A264992.P2953580837554340589

/-! ## A264992.P6086830547600278877

`A265356(A263272(A265362(A263272(A264976(n)))))`
-/

namespace A264992.P6086830547600278877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A263272 (A265362 (A263272 (A264976 n).toNat).toNat).toNat).toNat

end

end A264992.P6086830547600278877

/-! ## A264992.P1808581755537084360

`A265353(A265352(A265358(A265352(A265351(n)))))`
-/

namespace A264992.P1808581755537084360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265352 (A265358 (A265352 (A265351 n).toNat).toNat).toNat).toNat

end

end A264992.P1808581755537084360

/-! ## A264992.P11916355509288854275

`A266190(A265353(A264989(A266190(A266190(n)))))`
-/

namespace A264992.P11916355509288854275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A265353 (A264989 (A266190 (A266190 n).toNat).toNat).toNat).toNat

end

end A264992.P11916355509288854275

/-! ## A264992.P8520006690502818491

`A265353(A265352(A265358(A265358(A265357(n)))))`
-/

namespace A264992.P8520006690502818491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265352 (A265358 (A265358 (A265357 n).toNat).toNat).toNat).toNat

end

end A264992.P8520006690502818491

/-! ## A264992.P1451984648864307136

`A265353(A265352(A265358(A265353(A265354(n)))))`
-/

namespace A264992.P1451984648864307136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265352 (A265358 (A265353 (A265354 n).toNat).toNat).toNat).toNat

end

end A264992.P1451984648864307136

/-! ## A264992.P15092290556221911990

`A264985(A265357(A263273(A265352(n))))`
-/

namespace A264992.P15092290556221911990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265357 (A263273 (A265352 n).toNat).toNat).toNat

end

end A264992.P15092290556221911990

/-! ## A264992.P4715496860322594533

`A004526(A265339(4*n+2))`
-/

namespace A264992.P4715496860322594533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A265339 (4 * n + 2)).toNat

end

end A264992.P4715496860322594533

/-! ## A264992.P11737649815729272277

`A263273(A265910(A263272(2*n+1)))`
-/

namespace A264992.P11737649815729272277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265910 (A263272 (2 * n + 1)).toNat).toNat

end

end A264992.P11737649815729272277

/-! ## A264992.P59394474680451739

`A264989(A264991(A264974(A265361(n))))`
-/

namespace A264992.P59394474680451739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264991 (A264974 (A265361 n).toNat).toNat).toNat

end

end A264992.P59394474680451739

/-! ## A264992.P9558782660791365713

`A004526(A263273(A004526(A264984(2*n+1))))`
-/

namespace A264992.P9558782660791365713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A263273 (A004526 (A264984 (2 * n + 1)).toNat).toNat).toNat

end

end A264992.P9558782660791365713

/-!
# A264993: Self-inverse permutation of nonnegative integers: a(n) = A264994(3*n)/3.

The programs for A264993, there is no canonical definition to state claims against.
-/

/-! ## A264993.P8483892023921319130

`A264994(3*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264993.P8483892023921319130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264994 (3 * n) : ℚ) / 3

end

end A264993.P8483892023921319130

/-! ## A264993.P12080873019919788614

`A002264(A264994(3*n))`
-/

namespace A264993.P12080873019919788614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A264994 (3 * n)).toNat

end

end A264993.P12080873019919788614

/-! ## A264993.P6325444285810223270

`A051176(lcm(3, A264994(3*n)))`
-/

namespace A264993.P6325444285810223270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.lcm 3 (A264994 (3 * n)))

end

end A264993.P6325444285810223270

/-! ## A264993.P3507477854986104406

`A051176(A264994(2*n+n))`
-/

namespace A264993.P3507477854986104406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A264994 (2 * n + n)).toNat

end

end A264993.P3507477854986104406

/-! ## A264993.P17068153197306366511

`A051176(A264994(3*n)%A045651(n))`
-/

namespace A264993.P17068153197306366511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.tmod (A264994 (3 * n)) (A045651 n)).toNat

end

end A264993.P17068153197306366511

/-!
# A264994: Bijective base-4 reverse: a(0) = 0; for n >= 1, a(n) = A030103(A065883(n)) * A234957(n).

The programs for A264994, there is no canonical definition to state claims against.
-/

/-! ## A264994.P2154737157883733860

`A030103(n)*A234957(A028310(n))`
-/

namespace A264994.P2154737157883733860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n * A234957 (A028310 n).toNat

end

end A264994.P2154737157883733860

/-! ## A264994.P6253341872627937053

`A030103(n)*A234957(A008486(n))`
-/

namespace A264994.P6253341872627937053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n * A234957 (A008486 n).toNat

end

end A264994.P6253341872627937053

/-! ## A264994.P11221163373666147963

`A030103(n)*A234957(A008706(n))`
-/

namespace A264994.P11221163373666147963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n * A234957 (A008706 n).toNat

end

end A264994.P11221163373666147963

/-! ## A264994.P5207736533485024128

`A030103(n)*A234957(A315067(n))`
-/

namespace A264994.P5207736533485024128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n * A234957 (A315067 n).toNat

end

end A264994.P5207736533485024128

/-! ## A264994.P14796702319046061495

`A030103(n)*A234957(A298026(n))`
-/

namespace A264994.P14796702319046061495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n * A234957 (A298026 n).toNat

end

end A264994.P14796702319046061495

/-! ## A264994.P15183307058524318142

`A030103(n)*A234957(A233583(n+1))`
-/

namespace A264994.P15183307058524318142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n * A234957 (A233583 (n + 1)).toNat

end

end A264994.P15183307058524318142

/-!
# A264995: Bijective base-5 reverse: a(0) = 0; for n >= 1, a(n) = A030104(A132739(n)) * A060904(n).

The programs for A264995, there is no canonical definition to state claims against.
-/

/-! ## A264995.P10357083157274355450

`A030104(n)*A060904(A028310(n))`
-/

namespace A264995.P10357083157274355450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A028310 n).toNat

end

end A264995.P10357083157274355450

/-! ## A264995.P7510163032256298661

`A030104(n)*A060904(A257088(n))`
-/

namespace A264995.P7510163032256298661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A257088 n).toNat

end

end A264995.P7510163032256298661

/-! ## A264995.P5491021587780146454

`A030104(n)*A060904(A008486(n))`
-/

namespace A264995.P5491021587780146454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A008486 n).toNat

end

end A264995.P5491021587780146454

/-! ## A264995.P6751049473422267798

`A030104(n)*A060904(A066393(n))`
-/

namespace A264995.P6751049473422267798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A066393 n).toNat

end

end A264995.P6751049473422267798

/-! ## A264995.P15731509362764586252

`A030104(n)*A060904(A008574(n))`
-/

namespace A264995.P15731509362764586252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A008574 n).toNat

end

end A264995.P15731509362764586252

/-! ## A264995.P7776601284873008544

`A030104(n)*A060904(A008458(n))`
-/

namespace A264995.P7776601284873008544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A008458 n).toNat

end

end A264995.P7776601284873008544

/-! ## A264995.P10452401455014901218

`A030104(n)*A060904(A022144(n))`
-/

namespace A264995.P10452401455014901218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A022144 n).toNat

end

end A264995.P10452401455014901218

/-! ## A264995.P83613109093172538

`A030104(n)*A060904(A233583(n+1))`
-/

namespace A264995.P83613109093172538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A060904 (A233583 (n + 1)).toNat

end

end A264995.P83613109093172538

/-!
# A264996: Self-inverse permutation of natural numbers: a(n) = (1/2) * (1+A263273(2n -1)) = 1 + A264985(n-1).

The programs for A264996, there is no canonical definition to state claims against.
-/

/-! ## A264996.P11901608279095395686

`1+A264985(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264996.P11901608279095395686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A264985 n

end

end A264996.P11901608279095395686

/-! ## A264996.P14234651629771640496

`1/2*(1+A263273(2*(n+1)-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264996.P14234651629771640496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A263273 (2 * (n + 1) - 1) : ℚ)

end

end A264996.P14234651629771640496

/-! ## A264996.P7609253582068961470

`ceil(A264983(n)/2)`
-/

namespace A264996.P7609253582068961470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264983 n : ℚ) / 2⌉

end

end A264996.P7609253582068961470

/-! ## A264996.P3218336509903908434

`A265356(A263272(n))+1`
-/

namespace A264996.P3218336509903908434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A263272 n).toNat + 1

end

end A264996.P3218336509903908434

/-! ## A264996.P10832001249315142881

`A264983(n)-A265356(A263272(n))`
-/

namespace A264996.P10832001249315142881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 n - A265356 (A263272 n).toNat

end

end A264996.P10832001249315142881

/-! ## A264996.P17453139680598888357

`A263272(A265355(n))+1`
-/

namespace A264996.P17453139680598888357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265355 n).toNat + 1

end

end A264996.P17453139680598888357

/-! ## A264996.P770043514953063301

`A264983(n)-A263272(A265355(n))`
-/

namespace A264996.P770043514953063301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 n - A263272 (A265355 n).toNat

end

end A264996.P770043514953063301

/-! ## A264996.P14262417380890803066

`A266190(A265353(n))+1`
-/

namespace A264996.P14262417380890803066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A265353 n).toNat + 1

end

end A264996.P14262417380890803066

/-! ## A264996.P14932412949261046618

`A265353(A263273(n))+1`
-/

namespace A264996.P14932412949261046618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A263273 n).toNat + 1

end

end A264996.P14932412949261046618

/-! ## A264996.P10628307904961950955

`A264983(n)-A265353(A263273(n))`
-/

namespace A264996.P10628307904961950955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 n - A265353 (A263273 n).toNat

end

end A264996.P10628307904961950955

/-! ## A264996.P9080379945207224200

`A266408(A064216(n+1))`
-/

namespace A264996.P9080379945207224200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266408 (A064216 (n + 1)).toNat

end

end A264996.P9080379945207224200

/-! ## A264996.P75198925321082099

`ceil(A263273(2*n+1)/2)`
-/

namespace A264996.P75198925321082099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A263273 (2 * n + 1) : ℚ) / 2⌉

end

end A264996.P75198925321082099

/-! ## A264996.P10930814805353319177

`A266408(A064989(2*n+1))`
-/

namespace A264996.P10930814805353319177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266408 (A064989 (2 * n + 1)).toNat

end

end A264996.P10930814805353319177

/-! ## A264996.P16647865595343203337

`A264992(A264989(n))+1`
-/

namespace A264996.P16647865595343203337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A264989 n).toNat + 1

end

end A264996.P16647865595343203337

/-! ## A264996.P17803153032158350955

`A264983(n)-A264992(A264989(n))`
-/

namespace A264996.P17803153032158350955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 n - A264992 (A264989 n).toNat

end

end A264996.P17803153032158350955

/-! ## A264996.P4583520655828667750

`(A264965(A145341(n+1))+1)/2`
-/

namespace A264996.P4583520655828667750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264965 (A145341 (n + 1)).toNat + 1 : ℚ) / 2

end

end A264996.P4583520655828667750

/-! ## A264996.P16552825431830236264

`A264989(A264991(n))+1`
-/

namespace A264996.P16552825431830236264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264991 n).toNat + 1

end

end A264996.P16552825431830236264

/-! ## A264996.P3363328484813013422

`A264983(n)-A264989(A264991(n))`
-/

namespace A264996.P3363328484813013422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 n - A264989 (A264991 n).toNat

end

end A264996.P3363328484813013422

/-! ## A264996.P1787025002819404155

`A265354(A266190(n))+1`
-/

namespace A264996.P1787025002819404155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A266190 n).toNat + 1

end

end A264996.P1787025002819404155

/-! ## A264996.P2344398888796249722

`A264983(n)-A265354(A266190(n))`
-/

namespace A264996.P2344398888796249722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 n - A265354 (A266190 n).toNat

end

end A264996.P2344398888796249722

/-!
# A264997: Number of partitions of n into distinct parts of the form 3^a*5^b.

The programs for A264997, there is no canonical definition to state claims against.
-/

/-! ## A264997.P3869596088499446849

`A264998(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A264997.P3869596088499446849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A264998 n - a (n - 2)

end

end A264997.P3869596088499446849

/-! ## A264997.P8885656142009351676

`A230632(A054634(n)+A000045(n))`
-/

namespace A264997.P8885656142009351676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 (A054634 n + A000045 n).toNat

end

end A264997.P8885656142009351676

/-! ## A264997.P74348949197137687

`A329336(3*n+4)%p?[A329325(n+1)]`
-/

namespace A264997.P74348949197137687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329336 (3 * n + 4)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A264997.P74348949197137687

/-! ## A264997.P1304550657855087731

`A093578(A093572(n+1)+A035044(n))`
-/

namespace A264997.P1304550657855087731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 (A093572 (n + 1) + A035044 n).toNat

end

end A264997.P1304550657855087731

/-! ## A264997.P18241705677870175431

`A193048(A270339(2*n+1)%A027750(n+1))`
-/

namespace A264997.P18241705677870175431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193048 (Int.tmod (A270339 (2 * n + 1)) (A027750 (n + 1))).toNat

end

end A264997.P18241705677870175431

/-!
# A264998: Number of partitions of n into distinct parts of the form 3^a*5^b or 2.

The programs for A264998, there is no canonical definition to state claims against.
-/

/-! ## A264998.P16648032563635608393

`A055640(gcd(A000257(n), A237249(n+1)))`
-/

namespace A264998.P16648032563635608393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.gcd (A000257 n) (A237249 (n + 1)))

end

end A264998.P16648032563635608393

/-! ## A264998.P11529575642133039786

`A097295(or(A097294(n+1), A219529(n)))`
-/

namespace A264998.P11529575642133039786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097295 (Int.lor (A097294 (n + 1)) (A219529 n)).toNat

end

end A264998.P11529575642133039786

/-! ## A264998.P13789555381119382753

`A093320(n+3+A005836(n+1))`
-/

namespace A264998.P13789555381119382753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 ((n + 3 : ℤ) + A005836 (n + 1)).toNat

end

end A264998.P13789555381119382753

/-! ## A264998.P15854334595063142623

`A001221(A029084(n)+A002531(n))`
-/

namespace A264998.P15854334595063142623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A029084 n + A002531 n).toNat

end

end A264998.P15854334595063142623

/-! ## A264998.P1623839679590826997

`A124766(∑[A307720(n+1)+A003056(n)])`
-/

namespace A264998.P1623839679590826997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1) + A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264998.P1623839679590826997

/-!
# A264999: Number of n X n arrays containing n copies of 0..n-1 with rows and columns nondecreasing.

The programs for A264999, there is no canonical definition to state claims against.
-/

/-! ## A264999.P7262483942734316197

`A265005(∑[4*n]+1)`
-/

namespace A264999.P7262483942734316197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264999.P7262483942734316197

/-! ## A264999.P10330307615740036682

`record[A265005(A152271(n²))]`
-/

namespace A264999.P10330307615740036682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264999.P10330307615740036682

/-! ## A264999.P3086833252107584071

`record[A265005(∑[A113072(n)])]`
-/

namespace A264999.P3086833252107584071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264999.P3086833252107584071

/-! ## A264999.P3353765576644097000

`record[A265005(∑[A266981(n)])]`
-/

namespace A264999.P3353765576644097000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264999.P3353765576644097000

