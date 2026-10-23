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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A147500: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147500, there is no canonical definition to state claims against.
-/

/-! ## A147500.P8733236918914047862

`A147502(2*(n+2))`
-/

namespace A147500.P8733236918914047862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147502 (2 * (n + 2))

end

end A147500.P8733236918914047862

/-! ## A147500.P9983493867368146847

`or(1, A147502(A144396(n+1)))`
-/

namespace A147500.P9983493867368146847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147502 (A144396 (n + 1)).toNat)

end

end A147500.P9983493867368146847

/-! ## A147500.P16380436478962312338

`or(1, A147502(A325038(n+1)))`
-/

namespace A147500.P16380436478962312338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147502 (A325038 (n + 1)).toNat)

end

end A147500.P16380436478962312338

/-! ## A147500.P2408733713280222767

`or(1, A147502(A336066(n+1)))`
-/

namespace A147500.P2408733713280222767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147502 (A336066 (n + 1)).toNat)

end

end A147500.P2408733713280222767

/-! ## A147500.P1966259362462006604

`∏{d}[A144396(n+1), A147502(#)]`
-/

namespace A147500.P1966259362462006604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147502 d

end

end A147500.P1966259362462006604

/-!
# A147501: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147501, there is no canonical definition to state claims against.
-/

/-! ## A147501.P1025077709202986562

`A147335(A077168(n)+1)`
-/

namespace A147501.P1025077709202986562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147335 (A077168 n + 1).toNat

end

end A147501.P1025077709202986562

/-! ## A147501.P12352194117213489097

`A147335(A248502(n+1))`
-/

namespace A147501.P12352194117213489097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147335 (A248502 (n + 1)).toNat

end

end A147501.P12352194117213489097

/-! ## A147501.P2891010762243875446

`A147335(A250039(n+1))`
-/

namespace A147501.P2891010762243875446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147335 (A250039 (n + 1)).toNat

end

end A147501.P2891010762243875446

/-! ## A147501.P6767504140554415720

`A147335(A032950(n+2))`
-/

namespace A147501.P6767504140554415720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147335 (A032950 (n + 2)).toNat

end

end A147501.P6767504140554415720

/-! ## A147501.P1511799805549288575

`A147335(A043320(n+2))`
-/

namespace A147501.P1511799805549288575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147335 (A043320 (n + 2)).toNat

end

end A147501.P1511799805549288575

/-!
# A147502: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147502, there is no canonical definition to state claims against.
-/

/-! ## A147502.P6611329566159842819

`A147500(∑[char[2*(char[1]+n)]])`
-/

namespace A147502.P6611329566159842819
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f3 j = n then 1 else 0) + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147500 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147502.P6611329566159842819

/-! ## A147502.P761063932687868924

`A117923(A147433(n+1))`
-/

namespace A147502.P761063932687868924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (A147433 (n + 1)).toNat

end

end A147502.P761063932687868924

/-! ## A147502.P7412760827445053570

`A012265(5*A147252(n+1))`
-/

namespace A147502.P7412760827445053570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (5 * A147252 (n + 1)).toNat

end

end A147502.P7412760827445053570

/-!
# A147503: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147503, there is no canonical definition to state claims against.
-/

/-! ## A147503.P18370150882009072961

`A028310(A147479(n+1)%A147523(n+1)-A055277(n+1))`
-/

namespace A147503.P18370150882009072961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A147479 (n + 1)) (A147523 (n + 1)) - A055277 (n + 1)).toNat

end

end A147503.P18370150882009072961

/-!
# A147504: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147504, there is no canonical definition to state claims against.
-/

/-! ## A147504.P15148107413146412185

`A233764(A351707(n))`
-/

namespace A147504.P15148107413146412185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A351707 n).toNat

end

end A147504.P15148107413146412185

/-! ## A147504.P3411359800555064886

`A054900(A283842(n))+1`
-/

namespace A147504.P3411359800555064886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A283842 n).toNat + 1

end

end A147504.P3411359800555064886

/-! ## A147504.P15176593850066398264

`A233764(A351754(n+1))`
-/

namespace A147504.P15176593850066398264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A351754 (n + 1)).toNat

end

end A147504.P15176593850066398264

/-! ## A147504.P10312175134092393085

`or(1, A059995(A242781(n)))`
-/

namespace A147504.P10312175134092393085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059995 (A242781 n).toNat)

end

end A147504.P10312175134092393085

/-!
# A147505: Number of n X n binary arrays with all ones connected only in a 11110-01111 pattern in any orientation.

The programs for A147505, there is no canonical definition to state claims against.
-/

/-! ## A147505.P90657985971061171

`A147507(2*(n+2))`
-/

namespace A147505.P90657985971061171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147507 (2 * (n + 2))

end

end A147505.P90657985971061171

/-! ## A147505.P11207086903635467994

`or(1, A147507(A144396(n+1)))`
-/

namespace A147505.P11207086903635467994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147507 (A144396 (n + 1)).toNat)

end

end A147505.P11207086903635467994

/-! ## A147505.P13649318900769021748

`or(1, A147507(A207188(n+1)))`
-/

namespace A147505.P13649318900769021748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147507 (A207188 (n + 1)).toNat)

end

end A147505.P13649318900769021748

/-! ## A147505.P2759232375181545618

`∏{d}[A144396(n+1), A147507(#)]`
-/

namespace A147505.P2759232375181545618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147507 d

end

end A147505.P2759232375181545618

/-! ## A147505.P13489817499666215960

`A147507(A144396(n+1))/A016068(n)`
-/

namespace A147505.P13489817499666215960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147507 (A144396 (n + 1)).toNat : ℚ) / (A016068 n : ℚ)

end

end A147505.P13489817499666215960

/-!
# A147506: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 11110-01111 pattern in any orientation.

The programs for A147506, there is no canonical definition to state claims against.
-/

/-! ## A147506.P11896511899103856111

`or(A117535(A159773(n+1)), A146576(n+1))`
-/

namespace A147506.P11896511899103856111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117535 (A159773 (n + 1)).toNat) (A146576 (n + 1))

end

end A147506.P11896511899103856111

/-! ## A147506.P2213475283429587249

`A029931(A336023(n)²)`
-/

namespace A147506.P2213475283429587249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A336023 n ^ 2).toNat

end

end A147506.P2213475283429587249

/-! ## A147506.P16022075858081411871

`A133831(A216958(n+1))`
-/

namespace A147506.P16022075858081411871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133831 (A216958 (n + 1)).toNat

end

end A147506.P16022075858081411871

/-! ## A147506.P11743002835230736004

`A320313(A034066(n))+1`
-/

namespace A147506.P11743002835230736004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (A034066 n).toNat + 1

end

end A147506.P11743002835230736004

/-! ## A147506.P1348600447824453181

`A029931(A336023(n)^2)`
-/

namespace A147506.P1348600447824453181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A336023 n ^ 2).toNat

end

end A147506.P1348600447824453181

/-!
# A147507: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 11110-01111 pattern in any orientation.

The programs for A147507, there is no canonical definition to state claims against.
-/

/-! ## A147507.P14670511006214706689

`A145101(A146043(n+1))`
-/

namespace A147507.P14670511006214706689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145101 (A146043 (n + 1)).toNat

end

end A147507.P14670511006214706689

/-! ## A147507.P8941390147027496358

`A166087(A147249(n+1))`
-/

namespace A147507.P8941390147027496358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166087 (A147249 (n + 1)).toNat

end

end A147507.P8941390147027496358

/-! ## A147507.P10909814293822573298

`A316265(A147378(n+1))`
-/

namespace A147507.P10909814293822573298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (A147378 (n + 1)).toNat

end

end A147507.P10909814293822573298

/-! ## A147507.P87048026359765301

`A320055(A147187(n+1))`
-/

namespace A147507.P87048026359765301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A147187 (n + 1)).toNat

end

end A147507.P87048026359765301

/-!
# A147508: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11110-01111 pattern in any orientation.

The programs for A147508, there is no canonical definition to state claims against.
-/

/-! ## A147508.P1824980110243234032

`A147510(2*(n+2))`
-/

namespace A147508.P1824980110243234032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147510 (2 * (n + 2))

end

end A147508.P1824980110243234032

/-! ## A147508.P5549354255922921352

`or(1, A147510(A144396(n+1)))`
-/

namespace A147508.P5549354255922921352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147510 (A144396 (n + 1)).toNat)

end

end A147508.P5549354255922921352

/-! ## A147508.P1358502409312855141

`∏{d}[A144396(n+1), A147510(#)]`
-/

namespace A147508.P1358502409312855141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147510 d

end

end A147508.P1358502409312855141

/-! ## A147508.P8102982264249478775

`A147510(A144396(n+1))^A007318(∑[n])`
-/

namespace A147508.P8102982264249478775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147510 (A144396 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A147508.P8102982264249478775

/-! ## A147508.P8999366232894557

`A147510(A144396(n+1))^A147510(n+1)`
-/

namespace A147508.P8999366232894557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147510 (A144396 (n + 1)).toNat : ℚ) ^ (A147510 (n + 1) : ℤ)

end

end A147508.P8999366232894557

/-!
# A147511: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11110-01111 pattern in any orientation.

The programs for A147511, there is no canonical definition to state claims against.
-/

/-! ## A147511.P7200732729077399892

`A115511(A123526(n+2))`
-/

namespace A147511.P7200732729077399892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115511 (A123526 (n + 2)).toNat

end

end A147511.P7200732729077399892

/-! ## A147511.P7925146969004716876

`or(A097325(A000108(n)), A123526(n+2))`
-/

namespace A147511.P7925146969004716876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097325 (A000108 n).toNat) (A123526 (n + 2))

end

end A147511.P7925146969004716876

/-! ## A147511.P706869554029299162

`or(A080843(A181153(n)), A123526(n+2))`
-/

namespace A147511.P706869554029299162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080843 (A181153 n).toNat) (A123526 (n + 2))

end

end A147511.P706869554029299162

/-! ## A147511.P5044415794650459347

`A210717(A008304(n+1))+A123526(n+2)`
-/

namespace A147511.P5044415794650459347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (A008304 (n + 1)).toNat + A123526 (n + 2)

end

end A147511.P5044415794650459347

/-! ## A147511.P3903733336594898737

`or(A097325(A007443(n+1)), A123526(n+2))`
-/

namespace A147511.P3903733336594898737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097325 (A007443 (n + 1)).toNat) (A123526 (n + 2))

end

end A147511.P3903733336594898737

/-!
# A147513: Numbers such that the n-th and (n+1)st terms are the successors of prime numbers and primes themselves and n+1 > n.

The programs for A147513, there is no canonical definition to state claims against.
-/

/-! ## A147513.P7025425032715071611

`record[p?[xor(n, ceil(n/6))]]`
-/

namespace A147513.P7025425032715071611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(n : ℚ) / 6⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147513.P7025425032715071611

/-! ## A147513.P5375594310360062156

`or(1, ∑[gcd(n, ∑[n])+1]+1)`
-/

namespace A147513.P5375594310360062156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A147513.P5375594310360062156

/-! ## A147513.P2114363665578449276

`∑[a(n-2)+2]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=4, a(4)=2`
-/

namespace A147513.P2114363665578449276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 4, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147513.P2114363665578449276

/-! ## A147513.P5455832093560199629

`A362527(n+2)`
-/

namespace A147513.P5455832093560199629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362527 (n + 2)

end

end A147513.P5455832093560199629

/-! ## A147513.P1668070707546088006

`A323529(n+11)`
-/

namespace A147513.P1668070707546088006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323529 (n + 11)

end

end A147513.P1668070707546088006

/-!
# A147515: Numbers n with property that (2n)^4+3 is prime.

The programs for A147515, there is no canonical definition to state claims against.
-/

/-! ## A147515.P18427230117335942543

`A125259(n+1)/2`
-/

namespace A147515.P18427230117335942543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125259 (n + 1) : ℚ) / 2

end

end A147515.P18427230117335942543

/-! ## A147515.P11892157710684324655

`floor(sqrt(sqrt(A182344(n+1)))/2)`
-/

namespace A147515.P11892157710684324655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A182344 (n + 1) : ℝ)) / 2⌋

end

end A147515.P11892157710684324655

/-! ## A147515.P11402123155240486571

`A001281(A125259(n+1))`
-/

namespace A147515.P11402123155240486571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A125259 (n + 1)).toNat

end

end A147515.P11402123155240486571

/-! ## A147515.P3647372779331897374

`A004524(A125259(n+1)+1)`
-/

namespace A147515.P3647372779331897374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A125259 (n + 1) + 1).toNat

end

end A147515.P3647372779331897374

/-! ## A147515.P5262372179809279630

`A025480(lcm(2, A125259(n+1)))`
-/

namespace A147515.P5262372179809279630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (A125259 (n + 1)))

end

end A147515.P5262372179809279630

/-! ## A147515.P10616886506066473616

`A026741(A125259(n+1)+2)-1`
-/

namespace A147515.P10616886506066473616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A125259 (n + 1) + 2).toNat - 1

end

end A147515.P10616886506066473616

/-! ## A147515.P17928204534783081722

`A025480(A125259(n+1))%A160373(n)`
-/

namespace A147515.P17928204534783081722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025480 (A125259 (n + 1)).toNat) (A160373 n)

end

end A147515.P17928204534783081722

/-! ## A147515.P8189051465609977785

`A026741(A125259(n+1))%A001043(n+1)`
-/

namespace A147515.P8189051465609977785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A125259 (n + 1)).toNat) (A001043 (n + 1))

end

end A147515.P8189051465609977785

/-! ## A147515.P4916126962346897840

`A026741(A125259(n+1)%A145202(n+1))`
-/

namespace A147515.P4916126962346897840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A125259 (n + 1)) (A145202 (n + 1))).toNat

end

end A147515.P4916126962346897840

/-! ## A147515.P4962580937355270937

`A188134(2*A125259(n+1))`
-/

namespace A147515.P4962580937355270937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * A125259 (n + 1)).toNat

end

end A147515.P4962580937355270937

/-! ## A147515.P9490968796903121364

`A076309(5*A125259(n+1))`
-/

namespace A147515.P9490968796903121364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (5 * A125259 (n + 1)).toNat

end

end A147515.P9490968796903121364

/-!
# A147516: List giving least odd integer of each prime signature.

The programs for A147516, the canonical program `A147516.P2443452940603004648` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147516 has offset 1).

The definition of A147516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147516.P2443452940603004648

`∩[A097273(n+1), A364561(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A147516

/-- `∩[A097273(n+1), A364561(n+1)]` -/
def P2443452940603004648.Spec : Prop :=
  ∀ n, (P2443452940603004648.a n : ℤ) = A147516 (n + 1)

theorem P2443452940603004648.correct : P2443452940603004648.Spec := by
  intro n
  simp only [A147516, Nat.add_sub_cancel]

end A147516

/-! ## A147516.P15296048060234637341

`∩[A097273(n+1), A305409(n+1)]`
-/

namespace A147516.P15296048060234637341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147516.P15296048060234637341

namespace A147516

/-- `∩[A097273(n+1), A305409(n+1)]` -/
def P15296048060234637341.Spec : Prop :=
  ∀ n, (P15296048060234637341.a n : ℤ) = A147516 (n + 1)

end A147516

/-! ## A147516.P5751928713806310580

`record[A000265(A097273(n+1))]`
-/

namespace A147516.P5751928713806310580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A097273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147516.P5751928713806310580

namespace A147516

/-- `record[A000265(A097273(n+1))]` -/
def P5751928713806310580.Spec : Prop :=
  ∀ n, P5751928713806310580.a n = A147516 (n + 1)

end A147516

/-! ## A147516.P17628947425952005650

`∩[A097273(n+1), A356845(n+1)]`
-/

namespace A147516.P17628947425952005650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147516.P17628947425952005650

namespace A147516

/-- `∩[A097273(n+1), A356845(n+1)]` -/
def P17628947425952005650.Spec : Prop :=
  ∀ n, (P17628947425952005650.a n : ℤ) = A147516 (n + 1)

end A147516

/-! ## A147516.P15402326522542134930

`record[A097272(2*n+1)]`
-/

namespace A147516.P15402326522542134930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147516.P15402326522542134930

namespace A147516

/-- `record[A097272(2*n+1)]` -/
def P15402326522542134930.Spec : Prop :=
  ∀ n, P15402326522542134930.a n = A147516 (n + 1)

end A147516

/-! ## A147516.P13425028706947676631

`record[A003961(A278223(n+1))]`
-/

namespace A147516.P13425028706947676631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A278223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147516.P13425028706947676631

namespace A147516

/-- `record[A003961(A278223(n+1))]` -/
def P13425028706947676631.Spec : Prop :=
  ∀ n, P13425028706947676631.a n = A147516 (n + 1)

end A147516

/-! ## A147516.P14821451849273607848

`record[A003961(A336158(n+1))]`
-/

namespace A147516.P14821451849273607848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A336158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147516.P14821451849273607848

namespace A147516

/-- `record[A003961(A336158(n+1))]` -/
def P14821451849273607848.Spec : Prop :=
  ∀ n, P14821451849273607848.a n = A147516 (n + 1)

end A147516

/-!
# A147517: Number of pairs of primes p < q such that (p+q)/2 = A002110(n), the n-th primorial.

The programs for A147517, there is no canonical definition to state claims against.
-/

/-! ## A147517.P5188286717803758743

`A002375(A002110(n+1))`
-/

namespace A147517.P5188286717803758743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A002110 (n + 1)).toNat

end

end A147517.P5188286717803758743

/-! ## A147517.P4106574154710072816

`A061357(∏[p?[xor(1, n)]])`
-/

namespace A147517.P4106574154710072816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A147517.P4106574154710072816

/-!
# A147518: Expansion of (1-x)/(1-4*x-6*x^2).

The programs for A147518, the canonical program `A147518.P8316269908322094976` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147518 has offset 0).

The definition of A147518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x-6x^2))` (program `A147518.P8316269908322094976`, by `A147518.P8316269908322094976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147518.P8316269908322094976

`ogf((1-x)/(1-4x-6x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147518

/-- `ogf((1-x)/(1-4x-6x^2))` -/
def P8316269908322094976.Spec : Prop :=
  ∀ n, P8316269908322094976.a n = A147518 n

theorem P8316269908322094976.correct : P8316269908322094976.Spec := by
  intro n
  simp only [A147518]

end A147518

/-! ## A147518.P13081835650995658098

`4*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A147518.P13081835650995658098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) + 6 * a (n - 2)

end

end A147518.P13081835650995658098

namespace A147518

/-- `4*a(n-1)+6*a(n-2)` -/
def P13081835650995658098.Spec : Prop :=
  ∀ n, (P13081835650995658098.a n : ℤ) = A147518 n

end A147518

/-! ## A147518.P12756803690650441989

`Δ[A085939(n)]`
-/

namespace A147518.P12756803690650441989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147518.P12756803690650441989

namespace A147518

/-- `Δ[A085939(n)]` -/
def P12756803690650441989.Spec : Prop :=
  ∀ n, P12756803690650441989.a n = A147518 n

end A147518

/-! ## A147518.P16172759901773551418

`A085939(n+1)-A085939(n)`
-/

namespace A147518.P16172759901773551418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085939 (n + 1) - A085939 n

end

end A147518.P16172759901773551418

namespace A147518

/-- `A085939(n+1)-A085939(n)` -/
def P16172759901773551418.Spec : Prop :=
  ∀ n, P16172759901773551418.a n = A147518 n

end A147518

/-! ## A147518.P9007101419916417137

`(10+sqrt(10))*(2+sqrt(10))^n/20+(10-sqrt(10))*(2-sqrt(10))^n/20`
-/

namespace A147518.P9007101419916417137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 + Real.sqrt (10 : ℝ)) * (2 + Real.sqrt (10 : ℝ)) ^ n / 20 + (10 - Real.sqrt (10 : ℝ)) * (2 - Real.sqrt (10 : ℝ)) ^ n / 20

end

end A147518.P9007101419916417137

namespace A147518

/-- `(10+sqrt(10))*(2+sqrt(10))^n/20+(10-sqrt(10))*(2-sqrt(10))^n/20` -/
def P9007101419916417137.Spec : Prop :=
  ∀ n, P9007101419916417137.a n = (A147518 n : ℝ)

end A147518

/-!
# A147520: a(n) = Smallest number x such that Euler Polynomial x^2 + x + 41 is divisible by 41^n.

The programs for A147520, there is no canonical definition to state claims against.
-/

/-! ## A147520.P3217074126573381663

`floor(sqrt(A147521(n+1)-A202018(n)))`
-/

namespace A147520.P3217074126573381663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A147521 (n + 1) - A202018 n)

end

end A147520.P3217074126573381663

/-! ## A147520.P3518288110209619758

`floor(sqrt(A147521(n+1)-A005846(n+1)))`
-/

namespace A147520.P3518288110209619758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A147521 (n + 1) - A005846 (n + 1))

end

end A147520.P3518288110209619758

/-! ## A147520.P844700642715926541

`floor(sqrt(A147521(n+1)-A284043(n+1)))`
-/

namespace A147520.P844700642715926541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A147521 (n + 1) - A284043 (n + 1))

end

end A147520.P844700642715926541

/-!
# A147523: a(n) = number of n-digit terms in A058369.

The programs for A147523, there is no canonical definition to state claims against.
-/

/-! ## A147523.P7560196324242208192

`A284589(n+1)+A227298(A008486(n))`
-/

namespace A147523.P7560196324242208192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1) + A227298 (A008486 n).toNat

end

end A147523.P7560196324242208192

/-!
# A147532: Shifted Pascal sequence: p(x,n)=(1 + x)^(n + 1) + If[n < 2, 0, x*((1 - x)^(n + 1)*PolyLog[ -n, x]/x + (1 + x)^(n - 1))/2].

The programs for A147532, there is no canonical definition to state claims against.
-/

/-! ## A147532.P8353330597682135156

`A201512(A053534(n))-4`
-/

namespace A147532.P8353330597682135156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201512 (A053534 n).toNat - 4

end

end A147532.P8353330597682135156

/-! ## A147532.P10281406280357532918

`A286045(A053534(n)%A372436(2*n+5))`
-/

namespace A147532.P10281406280357532918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286045 (Int.tmod (A053534 n) (A372436 (2 * n + 5))).toNat

end

end A147532.P10281406280357532918

/-! ## A147532.P6849321392030739751

`A350029(A081577(n))`
-/

namespace A147532.P6849321392030739751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A081577 n).toNat

end

end A147532.P6849321392030739751

/-! ## A147532.P11860873015077733225

`A121701(2*A008288(n))`
-/

namespace A147532.P11860873015077733225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (2 * A008288 n).toNat

end

end A147532.P11860873015077733225

/-! ## A147532.P859872228990695638

`A157684(2*A008288(n))`
-/

namespace A147532.P859872228990695638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (2 * A008288 n).toNat

end

end A147532.P859872228990695638

/-!
# A147534: a(n) is congruent to (1,1,2) mod 3.

The programs for A147534, the canonical program `A147534.P17739865435016096986` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147534 has offset 1).

The definition of A147534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147534.P17739865435016096986

`a(n-3)+3` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147534

/-- `a(n-3)+3` -/
def P17739865435016096986.Spec : Prop :=
  ∀ n, (P17739865435016096986.a n : ℤ) = A147534 (n + 1)

theorem P17739865435016096986.correct : P17739865435016096986.Spec := by
  intro n
  simp only [A147534, Nat.add_sub_cancel]

end A147534

/-! ## A147534.P11632647332108244236

`1+floor(n/3)+floor(2*n/3)`
-/

namespace A147534.P11632647332108244236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 3⌋ + ⌊(2 * n : ℚ) / 3⌋

end

end A147534.P11632647332108244236

namespace A147534

/-- `1+floor(n/3)+floor(2*n/3)` -/
def P11632647332108244236.Spec : Prop :=
  ∀ n, P11632647332108244236.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P4768433853169222832

`(3*(n+1)-2-cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/3`
-/

namespace A147534.P4768433853169222832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((3 * (n + 1) : ℤ) - 2 : ℝ) - Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 3

end

end A147534.P4768433853169222832

namespace A147534

/-- `(3*(n+1)-2-cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/3` -/
def P4768433853169222832.Spec : Prop :=
  ∀ n, P4768433853169222832.a n = (A147534 (n + 1) : ℝ)

end A147534

/-! ## A147534.P6836888823025661793

`∑[abs((1-n)%3)]`
-/

namespace A147534.P6836888823025661793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - (n : ℤ)) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P6836888823025661793

namespace A147534

/-- `∑[abs((1-n)%3)]` -/
def P6836888823025661793.Spec : Prop :=
  ∀ n, P6836888823025661793.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P16021642247690940987

`∑[dr(1-n)%3]`
-/

namespace A147534.P16021642247690940987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (n : ℤ)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P16021642247690940987

namespace A147534

/-- `∑[dr(1-n)%3]` -/
def P16021642247690940987.Spec : Prop :=
  ∀ n, (P16021642247690940987.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P5814502461149599277

`floor(log2(gcd(3, n))+n)`
-/

namespace A147534.P5814502461149599277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Nat.gcd 3 n : ℝ) + (n : ℝ)⌋

end

end A147534.P5814502461149599277

namespace A147534

/-- `floor(log2(gcd(3, n))+n)` -/
def P5814502461149599277.Spec : Prop :=
  ∀ n, P5814502461149599277.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P7572871714451978240

`floor(acot(n%3)+n)`
-/

namespace A147534.P7572871714451978240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((n % 3 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A147534.P7572871714451978240

namespace A147534

/-- `floor(acot(n%3)+n)` -/
def P7572871714451978240.Spec : Prop :=
  ∀ n, P7572871714451978240.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P10476383070900456351

`∑[lcm(7, 1-n)%3]`
-/

namespace A147534.P10476383070900456351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (1 - (n : ℤ)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P10476383070900456351

namespace A147534

/-- `∑[lcm(7, 1-n)%3]` -/
def P10476383070900456351.Spec : Prop :=
  ∀ n, (P10476383070900456351.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P7386217932394768753

`∑[∑{digits}[1-n, #]%3]`
-/

namespace A147534.P7386217932394768753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P7386217932394768753

namespace A147534

/-- `∑[∑{digits}[1-n, #]%3]` -/
def P7386217932394768753.Spec : Prop :=
  ∀ n, (P7386217932394768753.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P14205387322211445317

`abs(n+1-n²%3)`
-/

namespace A147534.P14205387322211445317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)|

end

end A147534.P14205387322211445317

namespace A147534

/-- `abs(n+1-n²%3)` -/
def P14205387322211445317.Spec : Prop :=
  ∀ n, P14205387322211445317.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P15868513163453028543

`floor(atan((n+2)%3)+n)`
-/

namespace A147534.P15868513163453028543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (((n + 2) % 3 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A147534.P15868513163453028543

namespace A147534

/-- `floor(atan((n+2)%3)+n)` -/
def P15868513163453028543.Spec : Prop :=
  ∀ n, P15868513163453028543.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P10132001953533677207

`ceil(cos((2*n)%6)+n)`
-/

namespace A147534.P10132001953533677207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((2 * n % 6 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A147534.P10132001953533677207

namespace A147534

/-- `ceil(cos((2*n)%6)+n)` -/
def P10132001953533677207.Spec : Prop :=
  ∀ n, P10132001953533677207.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P11697989532163853831

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A147534.P11697989532163853831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P11697989532163853831

namespace A147534

/-- `∑[abs(a(n-3))]` -/
def P11697989532163853831.Spec : Prop :=
  ∀ n, (P11697989532163853831.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P4230927764750118427

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A147534.P4230927764750118427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P4230927764750118427

namespace A147534

/-- `∑[dr(a(n-3))]` -/
def P4230927764750118427.Spec : Prop :=
  ∀ n, (P4230927764750118427.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P8485864514657226246

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A147534.P8485864514657226246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P8485864514657226246

namespace A147534

/-- `∑[floor(a(n-3))]` -/
def P8485864514657226246.Spec : Prop :=
  ∀ n, (P8485864514657226246.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P2290664268774740033

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A147534.P2290664268774740033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P2290664268774740033

namespace A147534

/-- `∑[ceil(a(n-3))]` -/
def P2290664268774740033.Spec : Prop :=
  ∀ n, (P2290664268774740033.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P4421954199556557313

`∑[round(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A147534.P4421954199556557313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P4421954199556557313

namespace A147534

/-- `∑[round(a(n-3))]` -/
def P4421954199556557313.Spec : Prop :=
  ∀ n, (P4421954199556557313.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P3436523293097261581

`∑[C(2, a(n-1)²)]` with `a(0)=1, a(1)=0`
-/

namespace A147534.P3436523293097261581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.choose 2 (f1 (n - 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147534.P3436523293097261581

namespace A147534

/-- `∑[C(2, a(n-1)²)]` -/
def P3436523293097261581.Spec : Prop :=
  ∀ n, (P3436523293097261581.a n : ℤ) = A147534 (n + 1)

end A147534

/-! ## A147534.P9776733100463349005

`floor(1/dr(∑[n+1])+n)`
-/

namespace A147534.P9776733100463349005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) + (n : ℚ)⌋

end

end A147534.P9776733100463349005

namespace A147534

/-- `floor(1/dr(∑[n+1])+n)` -/
def P9776733100463349005.Spec : Prop :=
  ∀ n, P9776733100463349005.a n = A147534 (n + 1)

end A147534

/-! ## A147534.P9446368112891788239

`round(1/dr(∑[n+1])+n)`
-/

namespace A147534.P9446368112891788239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) + (n : ℚ))

end

end A147534.P9446368112891788239

namespace A147534

/-- `round(1/dr(∑[n+1])+n)` -/
def P9446368112891788239.Spec : Prop :=
  ∀ n, P9446368112891788239.a n = A147534 (n + 1)

end A147534

/-!
# A147535: a(n) = 2*4^n+4*3^n-2^n.

The programs for A147535, the canonical program `A147535.P18348654175607518958` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147535 has offset 0).

The definition of A147535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n+4*3^n-2^n` (program `A147535.P18348654175607518958`, by `A147535.P18348654175607518958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147535.P18348654175607518958

`2*4^n+4*3^n-2^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147535

/-- `2*4^n+4*3^n-2^n` -/
def P18348654175607518958.Spec : Prop :=
  ∀ n, P18348654175607518958.a n = A147535 n

theorem P18348654175607518958.correct : P18348654175607518958.Spec := by
  intro n
  simp only [A147535]

end A147535

/-! ## A147535.P1182781316398477252

`Δ[record[∑[(-2)^n]]+Δ[3^n-2^n]]`
-/

namespace A147535.P1182781316398477252
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (f4 (n + 1) - f4 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147535.P1182781316398477252

namespace A147535

/-- `Δ[record[∑[(-2)^n]]+Δ[3^n-2^n]]` -/
def P1182781316398477252.Spec : Prop :=
  ∀ n, P1182781316398477252.a n = A147535 n

end A147535

/-! ## A147535.P9622389637990310735

`Δ[A027649(n)+∑[4^n/2]]`
-/

namespace A147535.P9622389637990310735
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147535.P9622389637990310735

namespace A147535

/-- `Δ[A027649(n)+∑[4^n/2]]` -/
def P9622389637990310735.Spec : Prop :=
  ∀ n, P9622389637990310735.a n = (A147535 n : ℚ)

end A147535

/-! ## A147535.P3007401284435243104

`Δ[A321358(n)+A027649(n)]`
-/

namespace A147535.P3007401284435243104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321358 n + A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147535.P3007401284435243104

namespace A147535

/-- `Δ[A321358(n)+A027649(n)]` -/
def P3007401284435243104.Spec : Prop :=
  ∀ n, P3007401284435243104.a n = A147535 n

end A147535

/-! ## A147535.P10419183379400871040

`Δ[A087433(n+1)+Δ[A000392(n+1)]]`
-/

namespace A147535.P10419183379400871040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147535.P10419183379400871040

namespace A147535

/-- `Δ[A087433(n+1)+Δ[A000392(n+1)]]` -/
def P10419183379400871040.Spec : Prop :=
  ∀ n, P10419183379400871040.a n = A147535 n

end A147535

/-!
# A147536: a(n) = 4*3^n+4^n.

The programs for A147536, the canonical program `A147536.P13867557462301412205` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147536 has offset 0).

The definition of A147536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^n+4^n` (program `A147536.P13867557462301412205`, by `A147536.P13867557462301412205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147536.P13867557462301412205

`4*3^n+4^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147536

/-- `4*3^n+4^n` -/
def P13867557462301412205.Spec : Prop :=
  ∀ n, (P13867557462301412205.a n : ℤ) = A147536 n

theorem P13867557462301412205.correct : P13867557462301412205.Spec := by
  intro n
  simp only [A147536]

end A147536

/-! ## A147536.P4933746708144526961

`ogf((5-19x)/(1-7x+12x^2))`
-/

namespace A147536.P4933746708144526961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -19] [1, -7, 12] n

end

end A147536.P4933746708144526961

namespace A147536

/-- `ogf((5-19x)/(1-7x+12x^2))` -/
def P4933746708144526961.Spec : Prop :=
  ∀ n, P4933746708144526961.a n = A147536 n

end A147536

/-! ## A147536.P3205694290448929413

`4*(a(n-1)-3^(n-1))` with `a(0)=5`
-/

namespace A147536.P3205694290448929413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A147536.P3205694290448929413

namespace A147536

/-- `4*(a(n-1)-3^(n-1))` -/
def P3205694290448929413.Spec : Prop :=
  ∀ n, P3205694290448929413.a n = (A147536 n : ℚ)

end A147536

/-! ## A147536.P18365645445164853150

`Δ[Δ[3^n]+∑[4^((n-1)%(n+1))]]`
-/

namespace A147536.P18365645445164853150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147536.P18365645445164853150

namespace A147536

/-- `Δ[Δ[3^n]+∑[4^((n-1)%(n+1))]]` -/
def P18365645445164853150.Spec : Prop :=
  ∀ n, P18365645445164853150.a n = (A147536 n : ℚ)

end A147536

/-! ## A147536.P1998166389853801653

`Δ[3^n-1-record[∑[(-2)^n]]+3^n+4^n]`
-/

namespace A147536.P1998166389853801653
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (3 ^ n + 4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147536.P1998166389853801653

namespace A147536

/-- `Δ[3^n-1-record[∑[(-2)^n]]+3^n+4^n]` -/
def P1998166389853801653.Spec : Prop :=
  ∀ n, P1998166389853801653.a n = A147536 n

end A147536

/-! ## A147536.P4491576077527558092

`Δ[A025192(n+1)+A001045(2*n)]`
-/

namespace A147536.P4491576077527558092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (n + 1) + A001045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147536.P4491576077527558092

namespace A147536

/-- `Δ[A025192(n+1)+A001045(2*n)]` -/
def P4491576077527558092.Spec : Prop :=
  ∀ n, P4491576077527558092.a n = A147536 n

end A147536

/-!
# A147537: Numbers whose binary representation is the concatenation of 2n-1 digits 1 and n digits 0.

The programs for A147537, the canonical program `A147537.P4208647685951691406` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147537 has offset 1).

The definition of A147537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147537.P6395389551336461840

`2^n*(4^(n+1)-2)`
-/

namespace A147537.P6395389551336461840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((4 ^ (n + 1) : ℤ) - 2)

end

end A147537.P6395389551336461840

namespace A147537

/-- `2^n*(4^(n+1)-2)` -/
def P6395389551336461840.Spec : Prop :=
  ∀ n, P6395389551336461840.a n = A147537 (n + 1)

theorem P6395389551336461840.correct : P6395389551336461840.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147537, Nat.add_sub_cancel, A147537.P6395389551336461840.a, A147537.P4208647685951691406.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147537, Nat.add_sub_cancel, A147537.P6395389551336461840.a, A147537.P4208647685951691406.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A147537

/-! ## A147537.P4208647685951691406

`10*a(n-1)-16*a(n-2)` with `a(0)=2, a(1)=28`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147537

/-- `10*a(n-1)-16*a(n-2)` -/
def P4208647685951691406.Spec : Prop :=
  ∀ n, P4208647685951691406.a n = A147537 (n + 1)

theorem P4208647685951691406.correct : P4208647685951691406.Spec := by
  intro n
  simp only [A147537, Nat.add_sub_cancel]

end A147537

/-! ## A147537.P15644696683452892521

`ogf((2+8x)/(1-10x+16x^2))`
-/

namespace A147537.P15644696683452892521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8] [1, -10, 16] n

end

end A147537.P15644696683452892521

namespace A147537

/-- `ogf((2+8x)/(1-10x+16x^2))` -/
def P15644696683452892521.Spec : Prop :=
  ∀ n, P15644696683452892521.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P15926115846670892986

`lcm(4^(n+1)-2, 2^(n+1))`
-/

namespace A147537.P15926115846670892986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 ^ (n + 1) : ℤ) - 2) (2 ^ (n + 1) : ℤ)

end

end A147537.P15926115846670892986

namespace A147537

/-- `lcm(4^(n+1)-2, 2^(n+1))` -/
def P15926115846670892986.Spec : Prop :=
  ∀ n, (P15926115846670892986.a n : ℤ) = A147537 (n + 1)

end A147537

/-! ## A147537.P1282259982270853267

`A060549(6*n+3)`
-/

namespace A147537.P1282259982270853267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (6 * n + 3)

end

end A147537.P1282259982270853267

namespace A147537

/-- `A060549(6*n+3)` -/
def P1282259982270853267.Spec : Prop :=
  ∀ n, P1282259982270853267.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P13470136674480873446

`A020537(n)+2^n`
-/

namespace A147537.P13470136674480873446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020537 n + (2 ^ n : ℤ)

end

end A147537.P13470136674480873446

namespace A147537

/-- `A020537(n)+2^n` -/
def P13470136674480873446.Spec : Prop :=
  ∀ n, P13470136674480873446.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P4578965078330028155

`A013731(n)-2^(n+1)`
-/

namespace A147537.P4578965078330028155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 n - (2 ^ (n + 1) : ℤ)

end

end A147537.P4578965078330028155

namespace A147537

/-- `A013731(n)-2^(n+1)` -/
def P4578965078330028155.Spec : Prop :=
  ∀ n, P4578965078330028155.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P13064912382305209595

`2^n+2^n*A141725(n)`
-/

namespace A147537.P13064912382305209595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (2 ^ n : ℤ) * A141725 n

end

end A147537.P13064912382305209595

namespace A147537

/-- `2^n+2^n*A141725(n)` -/
def P13064912382305209595.Spec : Prop :=
  ∀ n, P13064912382305209595.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P5405364632512442375

`or(2*a(n-1), A147538(n+1))` with `a(0)=2`
-/

namespace A147537.P5405364632512442375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (2 * a (n - 1)) (A147538 (n + 1))

end

end A147537.P5405364632512442375

namespace A147537

/-- `or(2*a(n-1), A147538(n+1))` -/
def P5405364632512442375.Spec : Prop :=
  ∀ n, P5405364632512442375.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P13258316698484460563

`A198852(n)-A126646(n)`
-/

namespace A147537.P13258316698484460563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198852 n - A126646 n

end

end A147537.P13258316698484460563

namespace A147537

/-- `A198852(n)-A126646(n)` -/
def P13258316698484460563.Spec : Prop :=
  ∀ n, P13258316698484460563.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P10914184512195881930

`A199552(n)-(A126646(n)+2)`
-/

namespace A147537.P10914184512195881930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199552 n - (A126646 n + 2)

end

end A147537.P10914184512195881930

namespace A147537

/-- `A199552(n)-(A126646(n)+2)` -/
def P10914184512195881930.Spec : Prop :=
  ∀ n, P10914184512195881930.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P9568318381908802192

`A199552(n)-(∑[A000079(n)]+2)`
-/

namespace A147537.P9568318381908802192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199552 n - (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A147537.P9568318381908802192

namespace A147537

/-- `A199552(n)-(∑[A000079(n)]+2)` -/
def P9568318381908802192.Spec : Prop :=
  ∀ n, P9568318381908802192.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P4134883142391587026

`A199552(n)-record[A077896(n)+2]`
-/

namespace A147537.P4134883142391587026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199552 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147537.P4134883142391587026

namespace A147537

/-- `A199552(n)-record[A077896(n)+2]` -/
def P4134883142391587026.Spec : Prop :=
  ∀ n, P4134883142391587026.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P8559581942512688247

`record[2*A077957(n)*A126646(n)]`
-/

namespace A147537.P8559581942512688247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077957 n * A126646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147537.P8559581942512688247

namespace A147537

/-- `record[2*A077957(n)*A126646(n)]` -/
def P8559581942512688247.Spec : Prop :=
  ∀ n, P8559581942512688247.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P7170364238197090872

`A092811(n+1)-A011782(n+2)`
-/

namespace A147537.P7170364238197090872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 (n + 1) - A011782 (n + 2)

end

end A147537.P7170364238197090872

namespace A147537

/-- `A092811(n+1)-A011782(n+2)` -/
def P7170364238197090872.Spec : Prop :=
  ∀ n, P7170364238197090872.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P11250175576631138760

`A147590(n+1)+A083332(2*n)`
-/

namespace A147537.P11250175576631138760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147590 (n + 1) + A083332 (2 * n)

end

end A147537.P11250175576631138760

namespace A147537

/-- `A147590(n+1)+A083332(2*n)` -/
def P11250175576631138760.Spec : Prop :=
  ∀ n, P11250175576631138760.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P11144343676586501951

`A120689(n+1)-A016116(2*n)`
-/

namespace A147537.P11144343676586501951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120689 (n + 1) - A016116 (2 * n)

end

end A147537.P11144343676586501951

namespace A147537

/-- `A120689(n+1)-A016116(2*n)` -/
def P11144343676586501951.Spec : Prop :=
  ∀ n, P11144343676586501951.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P4061681772267630478

`A092811(n+1)-(A000225(n+1)+1)`
-/

namespace A147537.P4061681772267630478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 (n + 1) - (A000225 (n + 1) + 1)

end

end A147537.P4061681772267630478

namespace A147537

/-- `A092811(n+1)-(A000225(n+1)+1)` -/
def P4061681772267630478.Spec : Prop :=
  ∀ n, P4061681772267630478.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P3741417659238518207

`A094015(2*n+1)-A000079(n+1)`
-/

namespace A147537.P3741417659238518207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 (2 * n + 1) - A000079 (n + 1)

end

end A147537.P3741417659238518207

namespace A147537

/-- `A094015(2*n+1)-A000079(n+1)` -/
def P3741417659238518207.Spec : Prop :=
  ∀ n, P3741417659238518207.a n = A147537 (n + 1)

end A147537

/-! ## A147537.P12435291951578918497

`A000079(A016789(n))-A000079(n+1)`
-/

namespace A147537.P12435291951578918497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016789 n).toNat - A000079 (n + 1)

end

end A147537.P12435291951578918497

namespace A147537

/-- `A000079(A016789(n))-A000079(n+1)` -/
def P12435291951578918497.Spec : Prop :=
  ∀ n, P12435291951578918497.a n = A147537 (n + 1)

end A147537

/-!
# A147538: Numbers whose binary representation is the concatenation of n 1's and 2n-1 digits 0.

The programs for A147538, the canonical program `A147538.P3948891018729714867` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147538 has offset 1).

The definition of A147538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147538.P5690672895339788998

`2^(2*(n+1)-1)*(2^(n+1)-1)`
-/

namespace A147538.P5690672895339788998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A147538.P5690672895339788998

namespace A147538

/-- `2^(2*(n+1)-1)*(2^(n+1)-1)` -/
def P5690672895339788998.Spec : Prop :=
  ∀ n, P5690672895339788998.a n = (A147538 (n + 1) : ℚ)

end A147538

/-! ## A147538.P3948891018729714867

`12*a(n-1)-32*a(n-2)` with `a(0)=2, a(1)=24`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147538

/-- `12*a(n-1)-32*a(n-2)` -/
def P3948891018729714867.Spec : Prop :=
  ∀ n, P3948891018729714867.a n = A147538 (n + 1)

theorem P3948891018729714867.correct : P3948891018729714867.Spec := by
  intro n
  simp only [A147538, Nat.add_sub_cancel]

end A147538

/-! ## A147538.P13510187815151833433

`A059409(n+1)/2`
-/

namespace A147538.P13510187815151833433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059409 (n + 1) : ℚ) / 2

end

end A147538.P13510187815151833433

namespace A147538

/-- `A059409(n+1)/2` -/
def P13510187815151833433.Spec : Prop :=
  ∀ n, P13510187815151833433.a n = (A147538 (n + 1) : ℚ)

end A147538

/-! ## A147538.P1415152089917702502

`ogf(2/(1-12x+32x^2))`
-/

namespace A147538.P1415152089917702502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -12, 32] n

end

end A147538.P1415152089917702502

namespace A147538

/-- `ogf(2/(1-12x+32x^2))` -/
def P1415152089917702502.Spec : Prop :=
  ∀ n, P1415152089917702502.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P12098570557645665572

`lcm(2*4^n, ∑[2^n])`
-/

namespace A147538.P12098570557645665572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147538.P12098570557645665572

namespace A147538

/-- `lcm(2*4^n, ∑[2^n])` -/
def P12098570557645665572.Spec : Prop :=
  ∀ n, (P12098570557645665572.a n : ℤ) = A147538 (n + 1)

end A147538

/-! ## A147538.P17474611691053413176

`floor(4^n*∑[2*a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A147538.P17474611691053413176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147538.P17474611691053413176

namespace A147538

/-- `floor(4^n*∑[2*a(n-1)])` -/
def P17474611691053413176.Spec : Prop :=
  ∀ n, (P17474611691053413176.a n : ℤ) = A147538 (n + 1)

end A147538

/-! ## A147538.P11846737409540432474

`ceil(4^n*∑[2*a(n-1)])` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A147538.P11846737409540432474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147538.P11846737409540432474

namespace A147538

/-- `ceil(4^n*∑[2*a(n-1)])` -/
def P11846737409540432474.Spec : Prop :=
  ∀ n, (P11846737409540432474.a n : ℤ) = A147538 (n + 1)

end A147538

/-! ## A147538.P10188425427720767227

`or(4*a(n-1), 8*a(n-1))` with `a(0)=2`
-/

namespace A147538.P10188425427720767227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (4 * a (n - 1)) (8 * a (n - 1))

end

end A147538.P10188425427720767227

namespace A147538

/-- `or(4*a(n-1), 8*a(n-1))` -/
def P10188425427720767227.Spec : Prop :=
  ∀ n, (P10188425427720767227.a n : ℤ) = A147538 (n + 1)

end A147538

/-! ## A147538.P10851897815960388348

`A270822(Δ[n²])`
-/

namespace A147538.P10851897815960388348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270822 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A147538.P10851897815960388348

namespace A147538

/-- `A270822(Δ[n²])` -/
def P10851897815960388348.Spec : Prop :=
  ∀ n, P10851897815960388348.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P14850381520157649104

`A291779(3*n+2)`
-/

namespace A147538.P14850381520157649104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291779 (3 * n + 2)

end

end A147538.P14850381520157649104

namespace A147538

/-- `A291779(3*n+2)` -/
def P14850381520157649104.Spec : Prop :=
  ∀ n, P14850381520157649104.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P16450240929763636704

`A004171(n)+8*a(n-1)` with `a(0)=2`
-/

namespace A147538.P16450240929763636704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004171 n + 8 * a (n - 1)

end

end A147538.P16450240929763636704

namespace A147538

/-- `A004171(n)+8*a(n-1)` -/
def P16450240929763636704.Spec : Prop :=
  ∀ n, P16450240929763636704.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P16849953205911403978

`Δ[A046636(n)-record[∑[(-2)^n]]]`
-/

namespace A147538.P16849953205911403978
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046636 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147538.P16849953205911403978

namespace A147538

/-- `Δ[A046636(n)-record[∑[(-2)^n]]]` -/
def P16849953205911403978.Spec : Prop :=
  ∀ n, P16849953205911403978.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P12790328046110951385

`A016170(n)+A016149(n)`
-/

namespace A147538.P12790328046110951385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016170 n + A016149 n

end

end A147538.P12790328046110951385

namespace A147538

/-- `A016170(n)+A016149(n)` -/
def P12790328046110951385.Spec : Prop :=
  ∀ n, P12790328046110951385.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P3932908491299913857

`A013731(n)-A004171(n)`
-/

namespace A147538.P3932908491299913857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 n - A004171 n

end

end A147538.P3932908491299913857

namespace A147538

/-- `A013731(n)-A004171(n)` -/
def P3932908491299913857.Spec : Prop :=
  ∀ n, P3932908491299913857.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P915944843700878005

`A199552(n)-A087289(n)`
-/

namespace A147538.P915944843700878005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199552 n - A087289 n

end

end A147538.P915944843700878005

namespace A147538

/-- `A199552(n)-A087289(n)` -/
def P915944843700878005.Spec : Prop :=
  ∀ n, P915944843700878005.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P7433875046758518709

`Δ[A046636(n)-A007583(n)]`
-/

namespace A147538.P7433875046758518709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046636 n - A007583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147538.P7433875046758518709

namespace A147538

/-- `Δ[A046636(n)-A007583(n)]` -/
def P7433875046758518709.Spec : Prop :=
  ∀ n, P7433875046758518709.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P11236709978681700855

`A081201(n+1)+A016149(n)`
-/

namespace A147538.P11236709978681700855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081201 (n + 1) + A016149 n

end

end A147538.P11236709978681700855

namespace A147538

/-- `A081201(n+1)+A016149(n)` -/
def P11236709978681700855.Spec : Prop :=
  ∀ n, P11236709978681700855.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P8355950604876386506

`A081199(n+1)+A016170(n)`
-/

namespace A147538.P8355950604876386506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 (n + 1) + A016170 n

end

end A147538.P8355950604876386506

namespace A147538

/-- `A081199(n+1)+A016170(n)` -/
def P8355950604876386506.Spec : Prop :=
  ∀ n, P8355950604876386506.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P1672809169626268534

`A092811(n+1)-A004171(n)`
-/

namespace A147538.P1672809169626268534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 (n + 1) - A004171 n

end

end A147538.P1672809169626268534

namespace A147538

/-- `A092811(n+1)-A004171(n)` -/
def P1672809169626268534.Spec : Prop :=
  ∀ n, P1672809169626268534.a n = A147538 (n + 1)

end A147538

/-! ## A147538.P1069525202822027985

`A199552(n)-(A004171(n)+1)`
-/

namespace A147538.P1069525202822027985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199552 n - (A004171 n + 1)

end

end A147538.P1069525202822027985

namespace A147538

/-- `A199552(n)-(A004171(n)+1)` -/
def P1069525202822027985.Spec : Prop :=
  ∀ n, P1069525202822027985.a n = A147538 (n + 1)

end A147538

/-!
# A147539: Numbers whose binary representation is the concatenation of n 1's, 2n-1 digits 0 and n 1's.

The programs for A147539, the canonical program `A147539.P775937595406362137` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147539 has offset 1).

The definition of A147539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147539.P775937595406362137

`2^(4*(n+1)-1)-2^(3*(n+1)-1)+2^(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147539

/-- `2^(4*(n+1)-1)-2^(3*(n+1)-1)+2^(n+1)-1` -/
def P775937595406362137.Spec : Prop :=
  ∀ n, P775937595406362137.a n = (A147539 (n + 1) : ℚ)

end A147539

/-! ## A147539.P15446577767253063500

`∑[2^n]*A020737(3*n)`
-/

namespace A147539.P15446577767253063500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A020737 (3 * n)

end

end A147539.P15446577767253063500

namespace A147539

/-- `∑[2^n]*A020737(3*n)` -/
def P15446577767253063500.Spec : Prop :=
  ∀ n, P15446577767253063500.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P10743645925781692649

`A126646(n)*A199552(n)`
-/

namespace A147539.P10743645925781692649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n * A199552 n

end

end A147539.P10743645925781692649

namespace A147539

/-- `A126646(n)*A199552(n)` -/
def P10743645925781692649.Spec : Prop :=
  ∀ n, P10743645925781692649.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P10912417564264633681

`∑[A000079(n)]*A199552(n)`
-/

namespace A147539.P10912417564264633681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A199552 n

end

end A147539.P10912417564264633681

namespace A147539

/-- `∑[A000079(n)]*A199552(n)` -/
def P10912417564264633681.Spec : Prop :=
  ∀ n, P10912417564264633681.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P6725302056439453791

`record[A077896(n)]*A199552(n)`
-/

namespace A147539.P6725302056439453791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A199552 n

end

end A147539.P6725302056439453791

namespace A147539

/-- `record[A077896(n)]*A199552(n)` -/
def P6725302056439453791.Spec : Prop :=
  ∀ n, P6725302056439453791.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P15582181529829589840

`(A013731(n)+1)*A126646(n)`
-/

namespace A147539.P15582181529829589840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013731 n + 1) * A126646 n

end

end A147539.P15582181529829589840

namespace A147539

/-- `(A013731(n)+1)*A126646(n)` -/
def P15582181529829589840.Spec : Prop :=
  ∀ n, P15582181529829589840.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P12483987914075334942

`A000225(n+1)*A199552(n)`
-/

namespace A147539.P12483987914075334942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A199552 n

end

end A147539.P12483987914075334942

namespace A147539

/-- `A000225(n+1)*A199552(n)` -/
def P12483987914075334942.Spec : Prop :=
  ∀ n, P12483987914075334942.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P3043446359106353727

`(A198852(n)+2)*A126646(n)`
-/

namespace A147539.P3043446359106353727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198852 n + 2) * A126646 n

end

end A147539.P3043446359106353727

namespace A147539

/-- `(A198852(n)+2)*A126646(n)` -/
def P3043446359106353727.Spec : Prop :=
  ∀ n, P3043446359106353727.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P1967798827915864815

`A077896(2*n)*A199552(n)`
-/

namespace A147539.P1967798827915864815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (2 * n) * A199552 n

end

end A147539.P1967798827915864815

namespace A147539

/-- `A077896(2*n)*A199552(n)` -/
def P1967798827915864815.Spec : Prop :=
  ∀ n, P1967798827915864815.a n = A147539 (n + 1)

end A147539

/-! ## A147539.P5736894274409731162

`∑[A000079(n)]*A000051(3*n+2)`
-/

namespace A147539.P5736894274409731162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000051 (3 * n + 2)

end

end A147539.P5736894274409731162

namespace A147539

/-- `∑[A000079(n)]*A000051(3*n+2)` -/
def P5736894274409731162.Spec : Prop :=
  ∀ n, P5736894274409731162.a n = A147539 (n + 1)

end A147539

/-!
# A147540: Numbers whose binary representation is the concatenation of 2n-1 digits 1, n digits 0 and 2n-1 digits 1.

The programs for A147540, the canonical program `A147540.P3574019296201291641` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147540 has offset 1).

The definition of A147540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147540.P3574019296201291641

`2^(5*(n+1)-2)-2^(3*(n+1)-1)+2^(2*(n+1)-1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147540

/-- `2^(5*(n+1)-2)-2^(3*(n+1)-1)+2^(2*(n+1)-1)-1` -/
def P3574019296201291641.Spec : Prop :=
  ∀ n, P3574019296201291641.a n = (A147540 (n + 1) : ℚ)

end A147540

/-! ## A147540.P6306578880354851184

`A083420(n)*A199552(n)`
-/

namespace A147540.P6306578880354851184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A199552 n

end

end A147540.P6306578880354851184

namespace A147540

/-- `A083420(n)*A199552(n)` -/
def P6306578880354851184.Spec : Prop :=
  ∀ n, P6306578880354851184.a n = A147540 (n + 1)

end A147540

/-! ## A147540.P12275386142156350166

`(A004171(n)-1)*A199552(n)`
-/

namespace A147540.P12275386142156350166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004171 n - 1) * A199552 n

end

end A147540.P12275386142156350166

namespace A147540

/-- `(A004171(n)-1)*A199552(n)` -/
def P12275386142156350166.Spec : Prop :=
  ∀ n, P12275386142156350166.a n = A147540 (n + 1)

end A147540

/-! ## A147540.P3483028349139601252

`(A087289(n)-2)*A199552(n)`
-/

namespace A147540.P3483028349139601252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087289 n - 2) * A199552 n

end

end A147540.P3483028349139601252

namespace A147540

/-- `(A087289(n)-2)*A199552(n)` -/
def P3483028349139601252.Spec : Prop :=
  ∀ n, P3483028349139601252.a n = A147540 (n + 1)

end A147540

/-! ## A147540.P3256875906689046013

`A126646(2*n)*A199552(n)`
-/

namespace A147540.P3256875906689046013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 * n) * A199552 n

end

end A147540.P3256875906689046013

namespace A147540

/-- `A126646(2*n)*A199552(n)` -/
def P3256875906689046013.Spec : Prop :=
  ∀ n, P3256875906689046013.a n = A147540 (n + 1)

end A147540

/-! ## A147540.P7574573637949609191

`A000225(2*n+1)*A199552(n)`
-/

namespace A147540.P7574573637949609191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) * A199552 n

end

end A147540.P7574573637949609191

namespace A147540

/-- `A000225(2*n+1)*A199552(n)` -/
def P7574573637949609191.Spec : Prop :=
  ∀ n, P7574573637949609191.a n = A147540 (n + 1)

end A147540

/-! ## A147540.P17791771944849975307

`(A092811(n+1)+1)*A000225(2*n+1)`
-/

namespace A147540.P17791771944849975307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092811 (n + 1) + 1) * A000225 (2 * n + 1)

end

end A147540.P17791771944849975307

namespace A147540

/-- `(A092811(n+1)+1)*A000225(2*n+1)` -/
def P17791771944849975307.Spec : Prop :=
  ∀ n, P17791771944849975307.a n = A147540 (n + 1)

end A147540

/-! ## A147540.P11141404207726819729

`A048578(A016777(n))*A083420(n)`
-/

namespace A147540.P11141404207726819729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A016777 n).toNat * A083420 n

end

end A147540.P11141404207726819729

namespace A147540

/-- `A048578(A016777(n))*A083420(n)` -/
def P11141404207726819729.Spec : Prop :=
  ∀ n, P11141404207726819729.a n = A147540 (n + 1)

end A147540

/-!
# A147543: a(n) = (8*5^n + 5*3^(n+1) - 5*2^n)/3.

The programs for A147543, the canonical program `A147543.P3994392883561060296` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147543 has offset 0).

The definition of A147543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147543.P3994392883561060296

`(8*5^n-5*2^n)/3+5*3^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147543

/-- `(8*5^n-5*2^n)/3+5*3^n` -/
def P3994392883561060296.Spec : Prop :=
  ∀ n, P3994392883561060296.a n = (A147543 n : ℚ)

end A147543

/-! ## A147543.P14790007949284968643

`(8*5^n+5*3^(n+1)-5*2^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147543.P14790007949284968643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 5 ^ n + 5 * 3 ^ (n + 1) : ℤ) - (5 * 2 ^ n : ℤ) : ℚ) / 3

end

end A147543.P14790007949284968643

namespace A147543

/-- `(8*5^n+5*3^(n+1)-5*2^n)/3` -/
def P14790007949284968643.Spec : Prop :=
  ∀ n, P14790007949284968643.a n = (A147543 n : ℚ)

end A147543

/-! ## A147543.P17072387142238320252

`5*(a(n-1)-(A025192(n)-A011782(n)))` with `a(0)=6`
-/

namespace A147543.P17072387142238320252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  5 * (a (n - 1) - (A025192 n - A011782 n))

end

end A147543.P17072387142238320252

namespace A147543

/-- `5*(a(n-1)-(A025192(n)-A011782(n)))` -/
def P17072387142238320252.Spec : Prop :=
  ∀ n, P17072387142238320252.a n = A147543 n

end A147543

/-!
# A147544: Coefficient of x^n in product (1+x)*Product_{j>=1} (1 + prime(j)*x^j).

The programs for A147544, there is no canonical definition to state claims against.
-/

/-! ## A147544.P13940297180949768586

`A147655(n+1)+A147655(n)`
-/

namespace A147544.P13940297180949768586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147655 (n + 1) + A147655 n

end

end A147544.P13940297180949768586

/-! ## A147544.P12366431093615323303

`A059174(n+2)-A007376(A111546(n))`
-/

namespace A147544.P12366431093615323303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 (n + 2) - A007376 (A111546 n).toNat

end

end A147544.P12366431093615323303

/-!
# A147545: Primes of the form p*2^k+1 with k>0 and p=1 or p in this sequence.

The programs for A147545, there is no canonical definition to state claims against.
-/

/-! ## A147545.P17205231648954721996

`p?[(n+1)*(n+1)%A014963(A292597(n+1))]`
-/

namespace A147545.P17205231648954721996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (n + 1 : ℤ) (A014963 (A292597 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147545.P17205231648954721996

/-! ## A147545.P6321638646412861874

`p?[A074781(n+1)^A174793(n+1)!]`
-/

namespace A147545.P6321638646412861874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1) ^ Nat.factorial (A174793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147545.P6321638646412861874

/-! ## A147545.P2433561228539836827

`A074781(∑[A185044(n)!])`
-/

namespace A147545.P2433561228539836827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147545.P2433561228539836827

/-!
# A147546: Expansion of (7-41*x+42*x^2)/((1-6*x)*(1-3*x)*(1-2*x)).

The programs for A147546, the canonical program `A147546.P2460124782715602771` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147546 has offset 0).

The definition of A147546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((7-41x+42x^2)/(1-11x+36x^2-36x^3))` (program `A147546.P2460124782715602771`, by `A147546.P2460124782715602771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147546.P2460124782715602771

`ogf((7-41x+42x^2)/(1-11x+36x^2-36x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147546

/-- `ogf((7-41x+42x^2)/(1-11x+36x^2-36x^3))` -/
def P2460124782715602771.Spec : Prop :=
  ∀ n, P2460124782715602771.a n = A147546 n

theorem P2460124782715602771.correct : P2460124782715602771.Spec := by
  intro n
  simp only [A147546]

end A147546

/-! ## A147546.P6662434146314382622

`6*3^n-3*2^n+4*6^n`
-/

namespace A147546.P6662434146314382622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 3 ^ n : ℤ) - (3 * 2 ^ n : ℤ) + (4 * 6 ^ n : ℤ)

end

end A147546.P6662434146314382622

namespace A147546

/-- `6*3^n-3*2^n+4*6^n` -/
def P6662434146314382622.Spec : Prop :=
  ∀ n, P6662434146314382622.a n = A147546 n

end A147546

/-! ## A147546.P6882183830339181191

`6*(a(n-1)-(3^n-2^n))` with `a(0)=7`
-/

namespace A147546.P6882183830339181191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  6 * (a (n - 1) - ((3 ^ n : ℤ) - (2 ^ n : ℤ)))

end

end A147546.P6882183830339181191

namespace A147546

/-- `6*(a(n-1)-(3^n-2^n))` -/
def P6882183830339181191.Spec : Prop :=
  ∀ n, P6882183830339181191.a n = A147546 n

end A147546

/-! ## A147546.P2200799582254354500

`3*(2*a(n-1)-A056182(n))` with `a(0)=7`
-/

namespace A147546.P2200799582254354500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  3 * (2 * a (n - 1) - A056182 n)

end

end A147546.P2200799582254354500

namespace A147546

/-- `3*(2*a(n-1)-A056182(n))` -/
def P2200799582254354500.Spec : Prop :=
  ∀ n, P2200799582254354500.a n = A147546 n

end A147546

/-! ## A147546.P13633028183417053132

`Δ[6*a(n-1)-(A094729(n+1)+2)]` with `a(0)=2`
-/

namespace A147546.P13633028183417053132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  6 * f1 (n - 1) - (A094729 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147546.P13633028183417053132

namespace A147546

/-- `Δ[6*a(n-1)-(A094729(n+1)+2)]` -/
def P13633028183417053132.Spec : Prop :=
  ∀ n, P13633028183417053132.a n = A147546 n

end A147546

/-!
# A147551: Minimum of A000010(m) where m is an n-digit number.

The programs for A147551, there is no canonical definition to state claims against.
-/

/-! ## A147551.P7403592308466762898

`A000010(A147550(n+1))`
-/

namespace A147551.P7403592308466762898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A147550 (n + 1)).toNat

end

end A147551.P7403592308466762898

/-! ## A147551.P16061557126659900097

`A000010(A094969(n)*A154638(n))`
-/

namespace A147551.P16061557126659900097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A094969 n * A154638 n).toNat

end

end A147551.P16061557126659900097

/-!
# A147552: Consider the cellular automaton based on the f.c.c. lattice described in A151776; sequence gives number of ON cells in generation n that lie in the (x,y) plane.

The programs for A147552, there is no canonical definition to state claims against.
-/

/-! ## A147552.P7467592847792655705

`A151836(n)+a(n-1)` with `a(0)=0`
-/

namespace A147552.P7467592847792655705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151836 n + a (n - 1)

end

end A147552.P7467592847792655705

/-! ## A147552.P17906821135352640637

`∑[A151836(round(sqrt(n²+1)))]-1`
-/

namespace A147552.P17906821135352640637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151836 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A147552.P17906821135352640637

/-! ## A147552.P3684379439442868178

`abs(1-∑[A151836(A028310(n))])`
-/

namespace A147552.P3684379439442868178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A147552.P3684379439442868178

/-! ## A147552.P908047855296735755

`∑[A151836(n)-a(A102683(n-1)!-1)]` with `a(0)=0`
-/

namespace A147552.P908047855296735755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A151836 n - f1 (Nat.factorial (A102683 (n - 1)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147552.P908047855296735755

/-! ## A147552.P18323571595445927167

`∑[A057427(n)*A151836(A028310(n))]`
-/

namespace A147552.P18323571595445927167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A151836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147552.P18323571595445927167

/-! ## A147552.P17679285716871536460

`∑[A151836(A028310(n))%A000603(n)]`
-/

namespace A147552.P17679285716871536460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151836 (A028310 n).toNat) (A000603 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147552.P17679285716871536460

/-! ## A147552.P11817548004862641408

`∑[A159075(n+1)+A151836(A028310(n))]`
-/

namespace A147552.P11817548004862641408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) + A151836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147552.P11817548004862641408

/-! ## A147552.P7040049971874697842

`A260196(n+2)+∑[A151836(A028310(n))]`
-/

namespace A147552.P7040049971874697842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147552.P7040049971874697842

/-!
# A147554: Primes p such that p^2 divides p.p.p where dot "." means concatenation.

The programs for A147554, there is no canonical definition to state claims against.
-/

/-! ## A147554.P11914584013049356991

`∩[A181086(n+1), A243162(n+1)]`
-/

namespace A147554.P11914584013049356991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147554.P11914584013049356991

/-!
# A147555: Smallest prime factor of prime(n)-th repunit number.

The programs for A147555, there is no canonical definition to state claims against.
-/

/-! ## A147555.P10945721788699062634

`A067063(A000040(n+1))`
-/

namespace A147555.P10945721788699062634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (A000040 (n + 1)).toNat

end

end A147555.P10945721788699062634

/-! ## A147555.P16343515619594216436

`A067063(eq[1, A003415(n)])`
-/

namespace A147555.P16343515619594216436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A147555.P16343515619594216436

/-! ## A147555.P325820195241339237

`A067063(record[A006530(n+2)])`
-/

namespace A147555.P325820195241339237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147555.P325820195241339237

/-! ## A147555.P11505731045112556766

`A067063(record[A014963(n+2)])`
-/

namespace A147555.P11505731045112556766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147555.P11505731045112556766

/-! ## A147555.P17673814086309478727

`A067063(record[A020639(n+2)])`
-/

namespace A147555.P17673814086309478727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147555.P17673814086309478727

/-! ## A147555.P12268934522954434995

`A067063(record[A300518(n+2)])`
-/

namespace A147555.P12268934522954434995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147555.P12268934522954434995

/-! ## A147555.P10943754085472091648

`A067063(A040976(n+1)+2)`
-/

namespace A147555.P10943754085472091648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067063 (A040976 (n + 1) + 2).toNat

end

end A147555.P10943754085472091648

/-!
# A147556: Largest prime factor of prime(n)-th repunit number.

The programs for A147556, the canonical program `A147556.P8024516643723424636` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147556 has offset 1).

The definition of A147556 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147556.P8024516643723424636

`A003020(A000040(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A147556

/-- `A003020(A000040(n+1))` -/
def P8024516643723424636.Spec : Prop :=
  ∀ n, P8024516643723424636.a n = A147556 (n + 1)

theorem P8024516643723424636.correct : P8024516643723424636.Spec := by
  intro n
  simp only [A147556, Nat.add_sub_cancel]

end A147556

/-! ## A147556.P13989373985293657200

`A003020(p?[comp[n²]])`
-/

namespace A147556.P13989373985293657200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003020 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A147556.P13989373985293657200

namespace A147556

/-- `A003020(p?[comp[n²]])` -/
def P13989373985293657200.Spec : Prop :=
  ∀ n, P13989373985293657200.a n = A147556 (n + 1)

end A147556

/-! ## A147556.P5133415953319063924

`A061075(p?[xor(1, n)+1])`
-/

namespace A147556.P5133415953319063924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061075 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A147556.P5133415953319063924

namespace A147556

/-- `A061075(p?[xor(1, n)+1])` -/
def P5133415953319063924.Spec : Prop :=
  ∀ n, P5133415953319063924.a n = A147556 (n + 1)

end A147556

/-! ## A147556.P13095325307345630163

`or(1, A003020(p?[xor(1, n)+1]))`
-/

namespace A147556.P13095325307345630163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003020 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A147556.P13095325307345630163

namespace A147556

/-- `or(1, A003020(p?[xor(1, n)+1]))` -/
def P13095325307345630163.Spec : Prop :=
  ∀ n, P13095325307345630163.a n = A147556 (n + 1)

end A147556

/-! ## A147556.P15462133090623538798

`A003020(and(p?[xor(1, n)+1], -1))`
-/

namespace A147556.P15462133090623538798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003020 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)).toNat

end

end A147556.P15462133090623538798

namespace A147556

/-- `A003020(and(p?[xor(1, n)+1], -1))` -/
def P15462133090623538798.Spec : Prop :=
  ∀ n, P15462133090623538798.a n = A147556 (n + 1)

end A147556

/-!
# A147560: a(n) = 4*A046162(n+1).

The programs for A147560, the canonical program `A147560.P7607383619755191846` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147560 has offset 0).

The definition of A147560 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046162, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147560.P7607383619755191846

`4*A046162(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147560

/-- `4*A046162(n+1)` -/
def P7607383619755191846.Spec : Prop :=
  ∀ n, P7607383619755191846.a n = A147560 n

theorem P7607383619755191846.correct : P7607383619755191846.Spec := by
  intro n
  simp only [A147560]

end A147560

/-! ## A147560.P9986072487642673

`lcm(3, (2*n)²)/3`
-/

namespace A147560.P9986072487642673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((2 * n) ^ 2) : ℚ) / 3

end

end A147560.P9986072487642673

namespace A147560

/-- `lcm(3, (2*n)²)/3` -/
def P9986072487642673.Spec : Prop :=
  ∀ n, P9986072487642673.a n = (A147560 n : ℚ)

end A147560

/-! ## A147560.P112707787678331670

`(2*n)²/gcd(3, n)`
-/

namespace A147560.P112707787678331670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A147560.P112707787678331670

namespace A147560

/-- `(2*n)²/gcd(3, n)` -/
def P112707787678331670.Spec : Prop :=
  ∀ n, P112707787678331670.a n = (A147560 n : ℚ)

end A147560

/-! ## A147560.P4622826124895697506

`n/3*lcm(6, 4*n)`
-/

namespace A147560.P4622826124895697506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (Nat.lcm 6 (4 * n) : ℚ)

end

end A147560.P4622826124895697506

namespace A147560

/-- `n/3*lcm(6, 4*n)` -/
def P4622826124895697506.Spec : Prop :=
  ∀ n, P4622826124895697506.a n = (A147560 n : ℚ)

end A147560

/-! ## A147560.P15703519714717819658

`4*gcd(n², C(n², 3))`
-/

namespace A147560.P15703519714717819658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd (n ^ 2) (Nat.choose (n ^ 2) 3)

end

end A147560.P15703519714717819658

namespace A147560

/-- `4*gcd(n², C(n², 3))` -/
def P15703519714717819658.Spec : Prop :=
  ∀ n, (P15703519714717819658.a n : ℤ) = A147560 n

end A147560

/-! ## A147560.P5371496242630355257

`2*n*gcd(2*n, ∑[(2*n)²])`
-/

namespace A147560.P5371496242630355257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147560.P5371496242630355257

namespace A147560

/-- `2*n*gcd(2*n, ∑[(2*n)²])` -/
def P5371496242630355257.Spec : Prop :=
  ∀ n, (P5371496242630355257.a n : ℤ) = A147560 n

end A147560

/-! ## A147560.P14085656898625781407

`2*n*2*n/gcd(n+3, 2*n+3)`
-/

namespace A147560.P14085656898625781407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((2 * n : ℚ) / (Nat.gcd (n + 3) (2 * n + 3) : ℚ))

end

end A147560.P14085656898625781407

namespace A147560

/-- `2*n*2*n/gcd(n+3, 2*n+3)` -/
def P14085656898625781407.Spec : Prop :=
  ∀ n, P14085656898625781407.a n = (A147560 n : ℚ)

end A147560

/-! ## A147560.P15233020543452199912

`4*n*A051176(n)`
-/

namespace A147560.P15233020543452199912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A051176 n

end

end A147560.P15233020543452199912

namespace A147560

/-- `4*n*A051176(n)` -/
def P15233020543452199912.Spec : Prop :=
  ∀ n, P15233020543452199912.a n = A147560 n

end A147560

/-! ## A147560.P4043842882983534786

`n*(A130724(n)+n)`
-/

namespace A147560.P4043842882983534786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A130724 n + (n : ℤ))

end

end A147560.P4043842882983534786

namespace A147560

/-- `n*(A130724(n)+n)` -/
def P4043842882983534786.Spec : Prop :=
  ∀ n, P4043842882983534786.a n = A147560 n

end A147560

/-! ## A147560.P2919076217573312749

`(2*n)²/A109007(n)`
-/

namespace A147560.P2919076217573312749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℚ) / (A109007 n : ℚ)

end

end A147560.P2919076217573312749

namespace A147560

/-- `(2*n)²/A109007(n)` -/
def P2919076217573312749.Spec : Prop :=
  ∀ n, P2919076217573312749.a n = (A147560 n : ℚ)

end A147560

/-! ## A147560.P533082772574451950

`gcd((2*n)², A265021(n))`
-/

namespace A147560.P533082772574451950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n) ^ 2 : ℤ) (A265021 n)

end

end A147560.P533082772574451950

namespace A147560

/-- `gcd((2*n)², A265021(n))` -/
def P533082772574451950.Spec : Prop :=
  ∀ n, (P533082772574451950.a n : ℤ) = A147560 n

end A147560

/-! ## A147560.P9497425955206446194

`A046162(Δ[n²])`
-/

namespace A147560.P9497425955206446194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A147560.P9497425955206446194

namespace A147560

/-- `A046162(Δ[n²])` -/
def P9497425955206446194.Spec : Prop :=
  ∀ n, P9497425955206446194.a n = A147560 n

end A147560

/-! ## A147560.P1758143287596845298

`n*(A283443(2*n)+n)`
-/

namespace A147560.P1758143287596845298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A283443 (2 * n) + (n : ℤ))

end

end A147560.P1758143287596845298

namespace A147560

/-- `n*(A283443(2*n)+n)` -/
def P1758143287596845298.Spec : Prop :=
  ∀ n, P1758143287596845298.a n = A147560 n

end A147560

/-! ## A147560.P13043108937061076583

`2*n*A186101(A109044(n))`
-/

namespace A147560.P13043108937061076583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A186101 (A109044 n).toNat

end

end A147560.P13043108937061076583

namespace A147560

/-- `2*n*A186101(A109044(n))` -/
def P13043108937061076583.Spec : Prop :=
  ∀ n, P13043108937061076583.a n = A147560 n

end A147560

/-! ## A147560.P16903538290206290795

`2*n*A186101(A187601(2*n))`
-/

namespace A147560.P16903538290206290795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A186101 (A187601 (2 * n)).toNat

end

end A147560.P16903538290206290795

namespace A147560

/-- `2*n*A186101(A187601(2*n))` -/
def P16903538290206290795.Spec : Prop :=
  ∀ n, P16903538290206290795.a n = A147560 n

end A147560

/-! ## A147560.P13199698030388101154

`2*n*A130724(A109047(2*n))`
-/

namespace A147560.P13199698030388101154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A130724 (A109047 (2 * n)).toNat

end

end A147560.P13199698030388101154

namespace A147560

/-- `2*n*A130724(A109047(2*n))` -/
def P13199698030388101154.Spec : Prop :=
  ∀ n, P13199698030388101154.a n = A147560 n

end A147560

/-! ## A147560.P3970378523666525996

`n*A186101(A066393(A109044(n)))`
-/

namespace A147560.P3970378523666525996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186101 (A066393 (A109044 n).toNat).toNat

end

end A147560.P3970378523666525996

namespace A147560

/-- `n*A186101(A066393(A109044(n)))` -/
def P3970378523666525996.Spec : Prop :=
  ∀ n, P3970378523666525996.a n = A147560 n

end A147560

/-! ## A147560.P5813834761972870313

`2*n*A146306(A016825(2*n+1))`
-/

namespace A147560.P5813834761972870313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A146306 (A016825 (2 * n + 1)).toNat

end

end A147560.P5813834761972870313

namespace A147560

/-- `2*n*A146306(A016825(2*n+1))` -/
def P5813834761972870313.Spec : Prop :=
  ∀ n, P5813834761972870313.a n = A147560 n

end A147560

/-! ## A147560.P5655269028677371280

`n*A051724(A317316(2*n))`
-/

namespace A147560.P5655269028677371280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051724 (A317316 (2 * n)).toNat

end

end A147560.P5655269028677371280

namespace A147560

/-- `n*A051724(A317316(2*n))` -/
def P5655269028677371280.Spec : Prop :=
  ∀ n, P5655269028677371280.a n = A147560 n

end A147560

/-! ## A147560.P7674584681890205655

`gcd(A016742(n), A351632(n+1))`
-/

namespace A147560.P7674584681890205655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016742 n) (A351632 (n + 1))

end

end A147560.P7674584681890205655

namespace A147560

/-- `gcd(A016742(n), A351632(n+1))` -/
def P7674584681890205655.Spec : Prop :=
  ∀ n, (P7674584681890205655.a n : ℤ) = A147560 n

end A147560

/-!
# A147561: Number of representations of n in the Fibonacci-squared base system. The columns are ..., 64, 25, 9, 4, 1, 1 = ..., 8^2, 5^2, 3^2, 2^2, 1^2, 1^2, i.e., the Fibonacci numbers A000045 squared. The 'digits' are 0, 1 or 2.

The programs for A147561, there is no canonical definition to state claims against.
-/

/-! ## A147561.P4963018609559530247

`p?[∑[A143621(A303667(n))]]`
-/

namespace A147561.P4963018609559530247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143621 (A303667 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147561.P4963018609559530247

/-! ## A147561.P8159939055721315857

`p?[A284559(n)%A091325(n+1)]`
-/

namespace A147561.P8159939055721315857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284559 n) (A091325 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147561.P8159939055721315857

/-! ## A147561.P12214167713345499387

`A053669(A274651(n+1)^A323224(n+3))`
-/

namespace A147561.P12214167713345499387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (SequenceMachineLib.roundAway ((A274651 (n + 1) : ℚ) ^ (A323224 (n + 3) : ℤ))).toNat

end

end A147561.P12214167713345499387

/-!
# A147562: Number of "ON" cells at n-th stage in the "Ulam-Warburton" two-dimensional cellular automaton.

The programs for A147562, the canonical program `A147562.P880216132473412622` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147562 has offset 0).

The definition of A147562 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323650, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147562.P880216132473412622

`A323650(2*n)/3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A147562

/-- `A323650(2*n)/3` -/
def P880216132473412622.Spec : Prop :=
  ∀ n, P880216132473412622.a n = (A147562 n : ℚ)

end A147562

/-! ## A147562.P3494046025191388373

`floor(A160410(n)/3)`
-/

namespace A147562.P3494046025191388373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160410 n : ℚ) / 3⌋

end

end A147562.P3494046025191388373

namespace A147562

/-- `floor(A160410(n)/3)` -/
def P3494046025191388373.Spec : Prop :=
  ∀ n, P3494046025191388373.a n = A147562 n

end A147562

/-! ## A147562.P10275344230221543547

`∑[A147582(round(sqrt(n²+1)))]-1`
-/

namespace A147562.P10275344230221543547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A147562.P10275344230221543547

namespace A147562

/-- `∑[A147582(round(sqrt(n²+1)))]-1` -/
def P10275344230221543547.Spec : Prop :=
  ∀ n, P10275344230221543547.a n = A147562 n

end A147562

/-! ## A147562.P14435698547082209924

`A160410(n)/2-A151917(n)`
-/

namespace A147562.P14435698547082209924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 n : ℚ) / 2 - (A151917 n : ℚ)

end

end A147562.P14435698547082209924

namespace A147562

/-- `A160410(n)/2-A151917(n)` -/
def P14435698547082209924.Spec : Prop :=
  ∀ n, P14435698547082209924.a n = (A147562 n : ℚ)

end A147562

/-! ## A147562.P3317095944491921606

`A390468(n)+A390468(n)-A139250(n)`
-/

namespace A147562.P3317095944491921606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390468 n + (A390468 n - A139250 n)

end

end A147562.P3317095944491921606

namespace A147562

/-- `A390468(n)+A390468(n)-A139250(n)` -/
def P3317095944491921606.Spec : Prop :=
  ∀ n, P3317095944491921606.a n = A147562 n

end A147562

/-! ## A147562.P14797878620530040182

`record[A151920(C(n, a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A147562.P14797878620530040182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A151920 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147562.P14797878620530040182

namespace A147562

/-- `record[A151920(C(n, a(n-1)))]` -/
def P14797878620530040182.Spec : Prop :=
  ∀ n, P14797878620530040182.a n = A147562 n

end A147562

/-! ## A147562.P6423995523096885993

`floor(A151917(2*n)/2)`
-/

namespace A147562.P6423995523096885993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151917 (2 * n) : ℚ) / 2⌋

end

end A147562.P6423995523096885993

namespace A147562

/-- `floor(A151917(2*n)/2)` -/
def P6423995523096885993.Spec : Prop :=
  ∀ n, P6423995523096885993.a n = A147562 n

end A147562

/-! ## A147562.P12478148678587257949

`A160410(n)-A151917(2*n)`
-/

namespace A147562.P12478148678587257949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n - A151917 (2 * n)

end

end A147562.P12478148678587257949

namespace A147562

/-- `A160410(n)-A151917(2*n)` -/
def P12478148678587257949.Spec : Prop :=
  ∀ n, P12478148678587257949.a n = A147562 n

end A147562

/-! ## A147562.P7462262920378416857

`A151920(2*n)-A147582(n+1)`
-/

namespace A147562.P7462262920378416857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (2 * n) - A147582 (n + 1)

end

end A147562.P7462262920378416857

namespace A147562

/-- `A151920(2*n)-A147582(n+1)` -/
def P7462262920378416857.Spec : Prop :=
  ∀ n, P7462262920378416857.a n = A147562 n

end A147562

/-! ## A147562.P13128284111896568464

`A151917(A005843(n))-2*A151917(n)`
-/

namespace A147562.P13128284111896568464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (A005843 n).toNat - 2 * A151917 n

end

end A147562.P13128284111896568464

namespace A147562

/-- `A151917(A005843(n))-2*A151917(n)` -/
def P13128284111896568464.Spec : Prop :=
  ∀ n, P13128284111896568464.a n = A147562 n

end A147562

/-! ## A147562.P18280518715307498725

`record[A151920(n)-A147582(n+1)]`
-/

namespace A147562.P18280518715307498725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 n - A147582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147562.P18280518715307498725

namespace A147562

/-- `record[A151920(n)-A147582(n+1)]` -/
def P18280518715307498725.Spec : Prop :=
  ∀ n, P18280518715307498725.a n = A147562 n

end A147562

/-! ## A147562.P2453810671396501056

`A160164(n)-A255166(n)`
-/

namespace A147562.P2453810671396501056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n - A255166 n

end

end A147562.P2453810671396501056

namespace A147562

/-- `A160164(n)-A255166(n)` -/
def P2453810671396501056.Spec : Prop :=
  ∀ n, P2453810671396501056.a n = A147562 n

end A147562

/-! ## A147562.P10797336319250460888

`A139250(n)+A139250(n)-A255166(n)`
-/

namespace A147562.P10797336319250460888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A139250 n - A255166 n)

end

end A147562.P10797336319250460888

namespace A147562

/-- `A139250(n)+A139250(n)-A255166(n)` -/
def P10797336319250460888.Spec : Prop :=
  ∀ n, P10797336319250460888.a n = A147562 n

end A147562

/-! ## A147562.P10643824885939362997

`A187223(n)+A187220(n)`
-/

namespace A147562.P10643824885939362997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187223 n + A187220 n

end

end A147562.P10643824885939362997

namespace A147562

/-- `A187223(n)+A187220(n)` -/
def P10643824885939362997.Spec : Prop :=
  ∀ n, P10643824885939362997.a n = A147562 n

end A147562

/-! ## A147562.P384557588460622924

`A151920(2*n)-A079315(2*n+1)`
-/

namespace A147562.P384557588460622924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (2 * n) - A079315 (2 * n + 1)

end

end A147562.P384557588460622924

namespace A147562

/-- `A151920(2*n)-A079315(2*n+1)` -/
def P384557588460622924.Spec : Prop :=
  ∀ n, P384557588460622924.a n = A147562 n

end A147562

/-! ## A147562.P12165073290283921590

`A151917(n)+A183060(n)-n`
-/

namespace A147562.P12165073290283921590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 n + (A183060 n - (n : ℤ))

end

end A147562.P12165073290283921590

namespace A147562

/-- `A151917(n)+A183060(n)-n` -/
def P12165073290283921590.Spec : Prop :=
  ∀ n, P12165073290283921590.a n = A147562 n

end A147562

/-! ## A147562.P5397267741784286496

`A130665(4*n)-(A151917(4*n)+A130665(2*n))`
-/

namespace A147562.P5397267741784286496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 (4 * n) - (A151917 (4 * n) + A130665 (2 * n))

end

end A147562.P5397267741784286496

namespace A147562

/-- `A130665(4*n)-(A151917(4*n)+A130665(2*n))` -/
def P5397267741784286496.Spec : Prop :=
  ∀ n, P5397267741784286496.a n = A147562 n

end A147562

/-! ## A147562.P4151118442381475205

`A079317(2*n)-A147582(n+1)`
-/

namespace A147562.P4151118442381475205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 (2 * n) - A147582 (n + 1)

end

end A147562.P4151118442381475205

namespace A147562

/-- `A079317(2*n)-A147582(n+1)` -/
def P4151118442381475205.Spec : Prop :=
  ∀ n, P4151118442381475205.a n = A147562 n

end A147562

/-! ## A147562.P17875597544409586413

`A079317(2*n)-A079315(2*n+1)`
-/

namespace A147562.P17875597544409586413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 (2 * n) - A079315 (2 * n + 1)

end

end A147562.P17875597544409586413

namespace A147562

/-- `A079317(2*n)-A079315(2*n+1)` -/
def P17875597544409586413.Spec : Prop :=
  ∀ n, P17875597544409586413.a n = A147562 n

end A147562

/-! ## A147562.P12555337329912154903

`A183060(2*n)/2-n`
-/

namespace A147562.P12555337329912154903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183060 (2 * n) : ℚ) / 2 - (n : ℚ)

end

end A147562.P12555337329912154903

namespace A147562

/-- `A183060(2*n)/2-n` -/
def P12555337329912154903.Spec : Prop :=
  ∀ n, P12555337329912154903.a n = (A147562 n : ℚ)

end A147562

/-!
# A147565: Triangle, T(n, k) = coefficients [x^k]( p(x, n) ), where p(x, n) = (1/2)*( (1+x)^n + 2^n*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), read by rows.

The programs for A147565, there is no canonical definition to state claims against.
-/

/-! ## A147565.P5558066993149349712

`(A060187(n+1)+A007318(n))/2`
-/

namespace A147565.P5558066993149349712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A007318 n : ℚ) / 2

end

end A147565.P5558066993149349712

/-! ## A147565.P16518522030183857379

`(A168551(n)+A141689(n+1))/2`
-/

namespace A147565.P16518522030183857379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168551 n + A141689 (n + 1) : ℚ) / 2

end

end A147565.P16518522030183857379

/-! ## A147565.P10815227630039574214

`(A060187(n+1)+sqrt(A008459(n)))/2`
-/

namespace A147565.P10815227630039574214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A060187 (n + 1) : ℝ) + Real.sqrt (A008459 n : ℝ)) / 2

end

end A147565.P10815227630039574214

/-! ## A147565.P3689844432367833599

`(A060187(n+1)+A028326(n)/2)/2`
-/

namespace A147565.P3689844432367833599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A060187 (n + 1) : ℚ) + (A028326 n : ℚ) / 2) / 2

end

end A147565.P3689844432367833599

/-! ## A147565.P9269983831993796863

`A154334(n)-A290448(n)`
-/

namespace A147565.P9269983831993796863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n - A290448 n

end

end A147565.P9269983831993796863

/-! ## A147565.P11633579838177230

`A007318(n)+A154337(n)-A168551(n)`
-/

namespace A147565.P11633579838177230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A154337 n - A168551 n)

end

end A147565.P11633579838177230

/-! ## A147565.P9173312023141707988

`A007318(n)+A154334(n)-A141689(n+1)`
-/

namespace A147565.P9173312023141707988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A154334 n - A141689 (n + 1))

end

end A147565.P9173312023141707988

/-! ## A147565.P1149050455521746166

`(A060187(n+1)+A014682(A028326(n)))/2`
-/

namespace A147565.P1149050455521746166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A014682 (A028326 n).toNat : ℚ) / 2

end

end A147565.P1149050455521746166

/-! ## A147565.P11993884914470078572

`A262226(A061579(n))+A162590(n)`
-/

namespace A147565.P11993884914470078572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262226 (A061579 n).toNat + A162590 n

end

end A147565.P11993884914470078572

/-! ## A147565.P4871496630863894404

`A262227(n)+abs(A141665(n))`
-/

namespace A147565.P4871496630863894404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262227 n + |A141665 n|

end

end A147565.P4871496630863894404

/-!
# A147566: Triangle, T(n, k) = coefficients [x^k]( p(x,n) ), where p(x, n) = (x+1)^n for n < 2, otherwise (x+1)^n + x*((1+x)^(n-2) + 2^(n-2)*(1-x)^(n-1)*LerchPhi(x, 2-n, 1/2)), read by rows.

The programs for A147566, there is no canonical definition to state claims against.
-/

/-! ## A147566.P12977022924548115566

`A014473(n)+A000005(A156045(n)²)`
-/

namespace A147566.P12977022924548115566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A000005 (A156045 n ^ 2).toNat

end

end A147566.P12977022924548115566

/-! ## A147566.P4550234621387687764

`A000005(A156045(n)²)-(1-A007318(n))`
-/

namespace A147566.P4550234621387687764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156045 n ^ 2).toNat - (1 - A007318 n)

end

end A147566.P4550234621387687764

/-! ## A147566.P6646892286315922234

`A004861(A007318(n))+A000005(A156045(n)²)`
-/

namespace A147566.P6646892286315922234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (A007318 n).toNat + A000005 (A156045 n ^ 2).toNat

end

end A147566.P6646892286315922234

/-! ## A147566.P4828342305300369196

`A130067(A143087(n))`
-/

namespace A147566.P4828342305300369196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130067 (A143087 n).toNat

end

end A147566.P4828342305300369196

/-! ## A147566.P1581526550923657848

`A120677(A180959(n))`
-/

namespace A147566.P1581526550923657848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120677 (A180959 n).toNat

end

end A147566.P1581526550923657848

/-!
# A147567: a(n) = a(n-4) - a(n-8).

The programs for A147567, the canonical program `A147567.P2452866127648055267` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147567 has offset 0).

The definition of A147567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)-a(n-8)` (program `A147567.P2452866127648055267`, by `A147567.P2452866127648055267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147567.P2452866127648055267

`a(n-4)-a(n-8)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=4, a(4)=1, a(5)=2, a(6)=-1, a(7)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147567

/-- `a(n-4)-a(n-8)` -/
def P2452866127648055267.Spec : Prop :=
  ∀ n, P2452866127648055267.a n = A147567 n

theorem P2452866127648055267.correct : P2452866127648055267.Spec := by
  intro n
  simp only [A147567]

end A147567

/-!
# A147568: a(n) = 2*A000695(n)+3.

The programs for A147568, the canonical program `A147568.P4088074706858455040` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147568 has offset 0).

The definition of A147568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147568.P4088074706858455040

`2*A000695(n)+3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147568

/-- `2*A000695(n)+3` -/
def P4088074706858455040.Spec : Prop :=
  ∀ n, P4088074706858455040.a n = A147568 n

theorem P4088074706858455040.correct : P4088074706858455040.Spec := by
  intro n
  simp only [A147568]

end A147568

/-! ## A147568.P16131861852992744117

`a(n-1)+(xor(n, -n)²+2)/3` with `a(0)=3`
-/

namespace A147568.P16131861852992744117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 + 2 : ℚ) / 3

end

end A147568.P16131861852992744117

namespace A147568

/-- `a(n-1)+(xor(n, -n)²+2)/3` -/
def P16131861852992744117.Spec : Prop :=
  ∀ n, P16131861852992744117.a n = (A147568 n : ℚ)

end A147568

/-! ## A147568.P17622625500121323914

`2*(2*∑[and(n, -n)²]+n)/3+3`
-/

namespace A147568.P17622625500121323914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3) + 3

end

end A147568.P17622625500121323914

namespace A147568

/-- `2*(2*∑[and(n, -n)²]+n)/3+3` -/
def P17622625500121323914.Spec : Prop :=
  ∀ n, P17622625500121323914.a n = (A147568 n : ℚ)

end A147568

/-! ## A147568.P1740786956378432200

`round((4*∑[ceil(xor(n, -n)²/3)]+1)/4)+3`
-/

namespace A147568.P1740786956378432200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ) : ℚ) / 4) + 3

end

end A147568.P1740786956378432200

namespace A147568

/-- `round((4*∑[ceil(xor(n, -n)²/3)]+1)/4)+3` -/
def P1740786956378432200.Spec : Prop :=
  ∀ n, P1740786956378432200.a n = A147568 n

end A147568

/-! ## A147568.P8853994964973334955

`or(1, 3*a(n-1)+1-2*a(and(n, n-1)))` with `a(0)=3`
-/

namespace A147568.P8853994964973334955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 1 (3 * a (n - 1) + 1 - 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A147568.P8853994964973334955

namespace A147568

/-- `or(1, 3*a(n-1)+1-2*a(and(n, n-1)))` -/
def P8853994964973334955.Spec : Prop :=
  ∀ n, P8853994964973334955.a n = A147568 n

end A147568

/-! ## A147568.P16197182981478675937

`xor(1, 3*a(n-1)+1-2*a(and(n, n-1)))` with `a(0)=3`
-/

namespace A147568.P16197182981478675937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 1 (3 * a (n - 1) + 1 - 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A147568.P16197182981478675937

namespace A147568

/-- `xor(1, 3*a(n-1)+1-2*a(and(n, n-1)))` -/
def P16197182981478675937.Spec : Prop :=
  ∀ n, P16197182981478675937.a n = A147568 n

end A147568

/-! ## A147568.P7613326457700896648

`1-(a(n-1)+xor(3*(1-a(n-1)), a(n-1)))` with `a(0)=3`
-/

namespace A147568.P7613326457700896648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  1 - (a (n - 1) + Int.xor (3 * (1 - a (n - 1))) (a (n - 1)))

end

end A147568.P7613326457700896648

namespace A147568

/-- `1-(a(n-1)+xor(3*(1-a(n-1)), a(n-1)))` -/
def P7613326457700896648.Spec : Prop :=
  ∀ n, P7613326457700896648.a n = A147568 n

end A147568

/-! ## A147568.P6685622630934962032

`1-xor(3*(1-a(n-1)), a(n-1))-a(n-1)` with `a(0)=3`
-/

namespace A147568.P6685622630934962032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  1 - Int.xor (3 * (1 - a (n - 1))) (a (n - 1)) - a (n - 1)

end

end A147568.P6685622630934962032

namespace A147568

/-- `1-xor(3*(1-a(n-1)), a(n-1))-a(n-1)` -/
def P6685622630934962032.Spec : Prop :=
  ∀ n, P6685622630934962032.a n = A147568 n

end A147568

/-! ## A147568.P13605929759018244409

`A062880(n)+3`
-/

namespace A147568.P13605929759018244409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n + 3

end

end A147568.P13605929759018244409

namespace A147568

/-- `A062880(n)+3` -/
def P13605929759018244409.Spec : Prop :=
  ∀ n, P13605929759018244409.a n = A147568 n

end A147568

/-! ## A147568.P10106591982657815292

`A145812(n+1)+2`
-/

namespace A147568.P10106591982657815292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (n + 1) + 2

end

end A147568.P10106591982657815292

namespace A147568

/-- `A145812(n+1)+2` -/
def P10106591982657815292.Spec : Prop :=
  ∀ n, P10106591982657815292.a n = A147568 n

end A147568

/-! ## A147568.P751776357393806725

`2*A098871(n)+1`
-/

namespace A147568.P751776357393806725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098871 n + 1

end

end A147568.P751776357393806725

namespace A147568

/-- `2*A098871(n)+1` -/
def P751776357393806725.Spec : Prop :=
  ∀ n, P751776357393806725.a n = A147568 n

end A147568

/-! ## A147568.P6546254202865495441

`A127988(n)/4+3`
-/

namespace A147568.P6546254202865495441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127988 n : ℚ) / 4 + 3

end

end A147568.P6546254202865495441

namespace A147568

/-- `A127988(n)/4+3` -/
def P6546254202865495441.Spec : Prop :=
  ∀ n, P6546254202865495441.a n = (A147568 n : ℚ)

end A147568

/-! ## A147568.P12348663164900543218

`(A145818(n+1)+5)/2`
-/

namespace A147568.P12348663164900543218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145818 (n + 1) + 5 : ℚ) / 2

end

end A147568.P12348663164900543218

namespace A147568

/-- `(A145818(n+1)+5)/2` -/
def P12348663164900543218.Spec : Prop :=
  ∀ n, P12348663164900543218.a n = (A147568 n : ℚ)

end A147568

/-! ## A147568.P7617456511238750498

`2/3*A001196(n)+3`
-/

namespace A147568.P7617456511238750498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A001196 n : ℚ) + 3

end

end A147568.P7617456511238750498

namespace A147568

/-- `2/3*A001196(n)+3` -/
def P7617456511238750498.Spec : Prop :=
  ∀ n, P7617456511238750498.a n = (A147568 n : ℚ)

end A147568

/-! ## A147568.P16566168744583098177

`xor(A010705(n), A062880(n))`
-/

namespace A147568.P16566168744583098177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010705 n) (A062880 n)

end

end A147568.P16566168744583098177

namespace A147568

/-- `xor(A010705(n), A062880(n))` -/
def P16566168744583098177.Spec : Prop :=
  ∀ n, P16566168744583098177.a n = A147568 n

end A147568

/-! ## A147568.P15974318501052031542

`A000695(n)+A098871(n)+2`
-/

namespace A147568.P15974318501052031542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + (A098871 n + 2)

end

end A147568.P15974318501052031542

namespace A147568

/-- `A000695(n)+A098871(n)+2` -/
def P15974318501052031542.Spec : Prop :=
  ∀ n, P15974318501052031542.a n = A147568 n

end A147568

/-! ## A147568.P11754735587513805480

`A212591(Δ[n²])+3`
-/

namespace A147568.P11754735587513805480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A147568.P11754735587513805480

namespace A147568

/-- `A212591(Δ[n²])+3` -/
def P11754735587513805480.Spec : Prop :=
  ∀ n, P11754735587513805480.a n = A147568 n

end A147568

/-! ## A147568.P12829322753690940716

`A001511(2*n+1)+A212591(2*n+1)+2`
-/

namespace A147568.P12829322753690940716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) + (A212591 (2 * n + 1) + 2)

end

end A147568.P12829322753690940716

namespace A147568

/-- `A001511(2*n+1)+A212591(2*n+1)+2` -/
def P12829322753690940716.Spec : Prop :=
  ∀ n, P12829322753690940716.a n = A147568 n

end A147568

/-! ## A147568.P6946580210108874374

`2*A023717(A003278(n+1))+1`
-/

namespace A147568.P6946580210108874374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023717 (A003278 (n + 1)).toNat + 1

end

end A147568.P6946580210108874374

namespace A147568

/-- `2*A023717(A003278(n+1))+1` -/
def P6946580210108874374.Spec : Prop :=
  ∀ n, P6946580210108874374.a n = A147568 n

end A147568

/-! ## A147568.P17032279260876987533

`A346453(∑[n])+3`
-/

namespace A147568.P17032279260876987533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346453 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A147568.P17032279260876987533

namespace A147568

/-- `A346453(∑[n])+3` -/
def P17032279260876987533.Spec : Prop :=
  ∀ n, P17032279260876987533.a n = A147568 n

end A147568

/-!
# A147569: a(n) = sigma(A020492(n)).

The programs for A147569, there is no canonical definition to state claims against.
-/

/-! ## A147569.P7005587802767091709

`A023897(n+1)*A147570(n+1)`
-/

namespace A147569.P7005587802767091709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023897 (n + 1) * A147570 (n + 1)

end

end A147569.P7005587802767091709

/-! ## A147569.P10450170121599631715

`∑{d}[A020492(n+1), #]`
-/

namespace A147569.P10450170121599631715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A147569.P10450170121599631715

/-! ## A147569.P433119548658898407

`∑{d}[∩[A015765(n+1), A015769(n+1)], #]`
-/

namespace A147569.P433119548658898407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A147569.P433119548658898407

/-! ## A147569.P9465056722356364281

`∑{d}[∩[A015769(n+1), A015771(n+1)], #]`
-/

namespace A147569.P9465056722356364281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A147569.P9465056722356364281

/-! ## A147569.P7703644605005571294

`∑{d}[∪[A076375(n+1), A076484(n+1)], #]`
-/

namespace A147569.P7703644605005571294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A147569.P7703644605005571294

/-! ## A147569.P15157275152938257476

`A000203(A020492(n+1))`
-/

namespace A147569.P15157275152938257476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A020492 (n + 1)).toNat

end

end A147569.P15157275152938257476

/-! ## A147569.P733758618198800270

`A000010(A020492(n+1))*A023897(n+1)`
-/

namespace A147569.P733758618198800270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020492 (n + 1)).toNat * A023897 (n + 1)

end

end A147569.P733758618198800270

/-! ## A147569.P430147840119558051

`A000203(∩[A015763(n+1), A015765(n+1)])`
-/

namespace A147569.P430147840119558051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147569.P430147840119558051

/-! ## A147569.P11226781546884126091

`A000203(∩[A015765(n+1), A015769(n+1)])`
-/

namespace A147569.P11226781546884126091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147569.P11226781546884126091

/-! ## A147569.P8053985908278204894

`A000203(∩[A015769(n+1), A015771(n+1)])`
-/

namespace A147569.P8053985908278204894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147569.P8053985908278204894

/-! ## A147569.P807543148218405026

`A000203(∪[A076375(n+1), A076484(n+1)])`
-/

namespace A147569.P807543148218405026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076484 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A147569.P807543148218405026

/-!
# A147570: a(n) = phi(A020492(n)).

The programs for A147570, there is no canonical definition to state claims against.
-/

/-! ## A147570.P9091752952927417526

`A147569(n+1)/A023897(n+1)`
-/

namespace A147570.P9091752952927417526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147569 (n + 1) : ℚ) / (A023897 (n + 1) : ℚ)

end

end A147570.P9091752952927417526

/-! ## A147570.P6725427237837038132

`∑{d}[A020492(n+1), #/A023897(n+1)]`
-/

namespace A147570.P6725427237837038132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A023897 (n + 1) : ℚ)

end

end A147570.P6725427237837038132

/-! ## A147570.P14900966119717212866

`A000010(A020492(n+1))`
-/

namespace A147570.P14900966119717212866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020492 (n + 1)).toNat

end

end A147570.P14900966119717212866

/-! ## A147570.P15443537477139674430

`A000203(A020492(n+1))/A023897(n+1)`
-/

namespace A147570.P15443537477139674430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A020492 (n + 1)).toNat : ℚ) / (A023897 (n + 1) : ℚ)

end

end A147570.P15443537477139674430

/-! ## A147570.P3479912611762387989

`A000010(∩[A015763(n+1), A015765(n+1)])`
-/

namespace A147570.P3479912611762387989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147570.P3479912611762387989

/-! ## A147570.P14221647652916507758

`A000010(∩[A015765(n+1), A015769(n+1)])`
-/

namespace A147570.P14221647652916507758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147570.P14221647652916507758

/-! ## A147570.P16332701438996037662

`A000010(∩[A015765(n+1), A015771(n+1)])`
-/

namespace A147570.P16332701438996037662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147570.P16332701438996037662

/-! ## A147570.P8205005220014136336

`A132952(lcm(2, A020492(n+1)))`
-/

namespace A147570.P8205005220014136336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (Int.lcm 2 (A020492 (n + 1)))

end

end A147570.P8205005220014136336

/-! ## A147570.P4526283784221814197

`A009223(A020492(2*n-(n-1)))`
-/

namespace A147570.P4526283784221814197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A020492 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A147570.P4526283784221814197

/-! ## A147570.P14787535329658854827

`A001222(A063535(n))*A009223(A020492(n+1))`
-/

namespace A147570.P14787535329658854827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063535 n).toNat * A009223 (A020492 (n + 1)).toNat

end

end A147570.P14787535329658854827

/-!
# A147571: Numbers with exactly 4 distinct prime divisors {2,3,5,7}.

The programs for A147571, there is no canonical definition to state claims against.
-/

/-! ## A147571.P13279293426598020350

`210*A002473(n+1)`
-/

namespace A147571.P13279293426598020350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A002473 (n + 1)

end

end A147571.P13279293426598020350

/-! ## A147571.P9444003006953291255

`30*A080194(n+1)`
-/

namespace A147571.P9444003006953291255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A080194 (n + 1)

end

end A147571.P9444003006953291255

/-! ## A147571.P13672039089865283971

`∩[A055932(n+1), A080194(n+1)]`
-/

namespace A147571.P13672039089865283971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P13672039089865283971

/-! ## A147571.P2887083883877649928

`∩[A063996(n+1), A080194(n+1)]`
-/

namespace A147571.P2887083883877649928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P2887083883877649928

/-! ## A147571.P15745211483787823788

`∩[A063996(n+1), A085128(n+1)]`
-/

namespace A147571.P15745211483787823788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P15745211483787823788

/-! ## A147571.P12334442118012738276

`lcm(A080194(n+1), A249674(A002473(n+1)))`
-/

namespace A147571.P12334442118012738276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080194 (n + 1)) (A249674 (A002473 (n + 1)).toNat)

end

end A147571.P12334442118012738276

/-! ## A147571.P4913977300535644512

`∩[2*A212665(n+1), A085129(n+1)]`
-/

namespace A147571.P4913977300535644512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P4913977300535644512

/-! ## A147571.P4480085852194049179

`70*A057353(A085127(n+1))`
-/

namespace A147571.P4480085852194049179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  70 * A057353 (A085127 (n + 1)).toNat

end

end A147571.P4480085852194049179

/-! ## A147571.P11849324794696703035

`∩[A085125(n+1), A212665(n+1)]`
-/

namespace A147571.P11849324794696703035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P11849324794696703035

/-! ## A147571.P3076735121104161177

`∩[A085129(n+1), A212665(n+1)]`
-/

namespace A147571.P3076735121104161177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P3076735121104161177

/-! ## A147571.P15655730722549671919

`A249674(A080194(n+1))`
-/

namespace A147571.P15655730722549671919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (A080194 (n + 1)).toNat

end

end A147571.P15655730722549671919

/-! ## A147571.P16969262372775082886

`∩[A080194(n+1), A226944(n+1)]`
-/

namespace A147571.P16969262372775082886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147571.P16969262372775082886

/-!
# A147572: Numbers with exactly 5 distinct prime divisors {2,3,5,7,11}.

The programs for A147572, there is no canonical definition to state claims against.
-/

/-! ## A147572.P10446986599057810077

`210*A080195(n+1)`
-/

namespace A147572.P10446986599057810077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A080195 (n + 1)

end

end A147572.P10446986599057810077

/-! ## A147572.P16172785015357608894

`A051038(n+1)/A080196(n+1)*A147573(n+1)`
-/

namespace A147572.P16172785015357608894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051038 (n + 1) : ℚ) / (A080196 (n + 1) : ℚ) * (A147573 (n + 1) : ℚ)

end

end A147572.P16172785015357608894

/-! ## A147572.P14420104836319142338

`A051038(n+1)*A155809(A060445(2*(n+2)))`
-/

namespace A147572.P14420104836319142338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1) * A155809 (A060445 (2 * (n + 2))).toNat

end

end A147572.P14420104836319142338

/-! ## A147572.P10364658456129861416

`A051038(n+1)*A051270(A230773(2*(n+2)))`
-/

namespace A147572.P10364658456129861416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1) * A051270 (A230773 (2 * (n + 2))).toNat

end

end A147572.P10364658456129861416

/-! ## A147572.P5131570746448006216

`11*A051038(n+1)*A007947(A147571(n+1))`
-/

namespace A147572.P5131570746448006216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A051038 (n + 1) * A007947 (A147571 (n + 1)).toNat

end

end A147572.P5131570746448006216

/-! ## A147572.P6066408835580013130

`record[11*A052126(11*(n+1))]*A007947(A147571(n+1))`
-/

namespace A147572.P6066408835580013130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A052126 (11 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A007947 (A147571 (n + 1)).toNat

end

end A147572.P6066408835580013130

/-! ## A147572.P14561565687200086572

`A249674(∩[A080195(n+1), A008589(n)])`
-/

namespace A147572.P14561565687200086572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147572.P14561565687200086572

/-!
# A147573: Numbers with exactly 6 distinct prime divisors {2,3,5,7,11,13}.

The programs for A147573, there is no canonical definition to state claims against.
-/

/-! ## A147573.P16366610141208476207

`A080197(n+1)*A336671(A306286(A003643(n+1)))`
-/

namespace A147573.P16366610141208476207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1) * A336671 (A306286 (A003643 (n + 1)).toNat).toNat

end

end A147573.P16366610141208476207

/-! ## A147573.P9007818679599110619

`A046324(A001511(2*n+5))*A080197(n+1)`
-/

namespace A147573.P9007818679599110619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046324 (A001511 (2 * n + 5)).toNat * A080197 (n + 1)

end

end A147573.P9007818679599110619

/-! ## A147573.P8400487277495475364

`A080197(n+1)*A336671(A306286(A130321(n)))`
-/

namespace A147573.P8400487277495475364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1) * A336671 (A306286 (A130321 n).toNat).toNat

end

end A147573.P8400487277495475364

/-! ## A147573.P12962309335240695255

`A007947(14*15*A080195(n+1))*A080196(n+1)`
-/

namespace A147573.P12962309335240695255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (14 * (15 * A080195 (n + 1))).toNat * A080196 (n + 1)

end

end A147573.P12962309335240695255

/-!
# A147576: Numbers with exactly 3 distinct odd prime divisors {3,5,7}.

The programs for A147576, there is no canonical definition to state claims against.
-/

/-! ## A147576.P10338282021224327923

`105*A108347(n+1)`
-/

namespace A147576.P10338282021224327923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  105 * A108347 (n + 1)

end

end A147576.P10338282021224327923

/-! ## A147576.P17986671260154951111

`∩[A085128(n+1), A361908(n+1)]`
-/

namespace A147576.P17986671260154951111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P17986671260154951111

/-! ## A147576.P18336591259660700448

`∩[A078327(n+1), A080194(n+1)]`
-/

namespace A147576.P18336591259660700448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P18336591259660700448

/-! ## A147576.P2153567635643665589

`∩[A002473(n+1), A088595(n+1)]`
-/

namespace A147576.P2153567635643665589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P2153567635643665589

/-! ## A147576.P1422892672094462757

`∩[A080194(n+1), A088595(n+1)]`
-/

namespace A147576.P1422892672094462757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P1422892672094462757

/-! ## A147576.P257269564436639947

`∩[A085126(n+1), A088595(n+1)]`
-/

namespace A147576.P257269564436639947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P257269564436639947

/-! ## A147576.P10663939527272879578

`∩[A085128(n+1), A088595(n+1)]`
-/

namespace A147576.P10663939527272879578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P10663939527272879578

/-! ## A147576.P10045347858251888507

`∩[A088595(n+1), A108347(n+1)]`
-/

namespace A147576.P10045347858251888507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P10045347858251888507

/-! ## A147576.P14078652359527487264

`∩[A088595(n+1), A342950(n+1)]`
-/

namespace A147576.P14078652359527487264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P14078652359527487264

/-! ## A147576.P8233775459408131145

`∩[A057254(n+1), A088595(n+1)]`
-/

namespace A147576.P8233775459408131145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P8233775459408131145

/-! ## A147576.P10520103649156455796

`∩[A045602(n+1), A244193(n+1)]`
-/

namespace A147576.P10520103649156455796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P10520103649156455796

/-! ## A147576.P16484661483908559779

`∩[A057254(n+1), A244193(n+1)]`
-/

namespace A147576.P16484661483908559779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P16484661483908559779

/-! ## A147576.P7015232647488188935

`∩[A080194(n+1), A244193(n+1)]`
-/

namespace A147576.P7015232647488188935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P7015232647488188935

/-! ## A147576.P14888175982010041793

`∩[A085128(n+1), A244193(n+1)]`
-/

namespace A147576.P14888175982010041793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P14888175982010041793

/-! ## A147576.P15323785393361867347

`∩[A108347(n+1), A244193(n+1)]`
-/

namespace A147576.P15323785393361867347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147576.P15323785393361867347

/-!
# A147577: Numbers with exactly 4 distinct odd prime divisors {3,5,7,11}.

The programs for A147577, there is no canonical definition to state claims against.
-/

/-! ## A147577.P14545191613744125292

`∩[A080195(n+1), A089632(n+1)]`
-/

namespace A147577.P14545191613744125292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147577.P14545191613744125292

/-! ## A147577.P7809024690796828396

`record[A000265(A147572(n+1)/2)]`
-/

namespace A147577.P7809024690796828396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A147572 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147577.P7809024690796828396

/-! ## A147577.P9080166838082413469

`record[A000265(A147572(n+1))]`
-/

namespace A147577.P9080166838082413469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A147572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147577.P9080166838082413469

/-! ## A147577.P12756341533794981629

`record[A000265(14*15*A080195(n+1))]`
-/

namespace A147577.P12756341533794981629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (14 * (15 * A080195 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147577.P12756341533794981629

/-! ## A147577.P4412545127313361662

`A008706(∩[A080195(n+1), A088595(n+1)])`
-/

namespace A147577.P4412545127313361662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A147577.P4412545127313361662

/-!
# A147582: First differences of A147562.

The programs for A147582, the canonical program `A147582.P8026772899085515765` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147582 has offset 1).

The definition of A147582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147582.P10608626068281668982

`Δ[A147562(n)]`
-/

namespace A147582.P10608626068281668982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147582.P10608626068281668982

namespace A147582

/-- `Δ[A147562(n)]` -/
def P10608626068281668982.Spec : Prop :=
  ∀ n, P10608626068281668982.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P6976660514168233046

`floor(A161411(n+1)/3)`
-/

namespace A147582.P6976660514168233046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161411 (n + 1) : ℚ) / 3⌋

end

end A147582.P6976660514168233046

namespace A147582

/-- `floor(A161411(n+1)/3)` -/
def P6976660514168233046.Spec : Prop :=
  ∀ n, P6976660514168233046.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P8026772899085515765

`floor(12*A048883(n)/9)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147582

/-- `floor(12*A048883(n)/9)` -/
def P8026772899085515765.Spec : Prop :=
  ∀ n, P8026772899085515765.a n = A147582 (n + 1)

theorem P8026772899085515765.correct : P8026772899085515765.Spec := by
  intro n
  simp only [A147582, Nat.add_sub_cancel]

end A147582

/-! ## A147582.P1511475466256218043

`A003946(A000120(n))`
-/

namespace A147582.P1511475466256218043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (A000120 n).toNat

end

end A147582.P1511475466256218043

namespace A147582

/-- `A003946(A000120(n))` -/
def P1511475466256218043.Spec : Prop :=
  ∀ n, P1511475466256218043.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P5615712816399411263

`A003959(A151787(n+1))`
-/

namespace A147582.P5615712816399411263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A151787 (n + 1)).toNat

end

end A147582.P5615712816399411263

namespace A147582

/-- `A003959(A151787(n+1))` -/
def P5615712816399411263.Spec : Prop :=
  ∀ n, P5615712816399411263.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P14367327057505993531

`A266383(A001316(n)-1)`
-/

namespace A147582.P14367327057505993531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 (A001316 n - 1).toNat

end

end A147582.P14367327057505993531

namespace A147582

/-- `A266383(A001316(n)-1)` -/
def P14367327057505993531.Spec : Prop :=
  ∀ n, P14367327057505993531.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P7150377700352361008

`A068911(2*A000120(n))`
-/

namespace A147582.P7150377700352361008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (2 * A000120 n).toNat

end

end A147582.P7150377700352361008

namespace A147582

/-- `A068911(2*A000120(n))` -/
def P7150377700352361008.Spec : Prop :=
  ∀ n, P7150377700352361008.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P16952449883108366674

`A147562(n+1)-A147562(n)`
-/

namespace A147582.P16952449883108366674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (n + 1) - A147562 n

end

end A147582.P16952449883108366674

namespace A147582

/-- `A147562(n+1)-A147562(n)` -/
def P16952449883108366674.Spec : Prop :=
  ∀ n, P16952449883108366674.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P18376121222109377492

`A068911(A000120(n)+A000120(n))`
-/

namespace A147582.P18376121222109377492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A000120 n + A000120 n).toNat

end

end A147582.P18376121222109377492

namespace A147582

/-- `A068911(A000120(n)+A000120(n))` -/
def P18376121222109377492.Spec : Prop :=
  ∀ n, P18376121222109377492.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P14435529093461767068

`A048883(n)+A162784(n)-A079318(n)`
-/

namespace A147582.P14435529093461767068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + (A162784 n - A079318 n)

end

end A147582.P14435529093461767068

namespace A147582

/-- `A048883(n)+A162784(n)-A079318(n)` -/
def P14435529093461767068.Spec : Prop :=
  ∀ n, P14435529093461767068.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P12173894275151865063

`A194577(A117973(n))`
-/

namespace A147582.P12173894275151865063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A117973 n).toNat

end

end A147582.P12173894275151865063

namespace A147582

/-- `A194577(A117973(n))` -/
def P12173894275151865063.Spec : Prop :=
  ∀ n, P12173894275151865063.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P565900255054223368

`A005836(A151787(n+1)+1)`
-/

namespace A147582.P565900255054223368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A151787 (n + 1) + 1).toNat

end

end A147582.P565900255054223368

namespace A147582

/-- `A005836(A151787(n+1)+1)` -/
def P565900255054223368.Spec : Prop :=
  ∀ n, P565900255054223368.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P6119583687904235233

`A151566(2*A001316(n))-A151566(A001316(n))`
-/

namespace A147582.P6119583687904235233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * A001316 n).toNat - A151566 (A001316 n).toNat

end

end A147582.P6119583687904235233

namespace A147582

/-- `A151566(2*A001316(n))-A151566(A001316(n))` -/
def P6119583687904235233.Spec : Prop :=
  ∀ n, P6119583687904235233.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P15908839440295746594

`A266383(A048896(2*n)-1)`
-/

namespace A147582.P15908839440295746594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 (A048896 (2 * n) - 1).toNat

end

end A147582.P15908839440295746594

namespace A147582

/-- `A266383(A048896(2*n)-1)` -/
def P15908839440295746594.Spec : Prop :=
  ∀ n, P15908839440295746594.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P2808085404325269047

`A151920(2*n)-A147562(n)`
-/

namespace A147582.P2808085404325269047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (2 * n) - A147562 n

end

end A147582.P2808085404325269047

namespace A147582

/-- `A151920(2*n)-A147562(n)` -/
def P2808085404325269047.Spec : Prop :=
  ∀ n, P2808085404325269047.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P7086208891581180907

`A323651(Δ[n²])`
-/

namespace A147582.P7086208891581180907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323651 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A147582.P7086208891581180907

namespace A147582

/-- `A323651(Δ[n²])` -/
def P7086208891581180907.Spec : Prop :=
  ∀ n, P7086208891581180907.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P17398077680217856175

`Δ[A323650(2*n)/3]`
-/

namespace A147582.P17398077680217856175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323650 (2 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147582.P17398077680217856175

namespace A147582

/-- `Δ[A323650(2*n)/3]` -/
def P17398077680217856175.Spec : Prop :=
  ∀ n, P17398077680217856175.a n = (A147582 (n + 1) : ℚ)

end A147582

/-! ## A147582.P17138151115047292044

`A323651(2*(n+1))/2`
-/

namespace A147582.P17138151115047292044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323651 (2 * (n + 1)) : ℚ) / 2

end

end A147582.P17138151115047292044

namespace A147582

/-- `A323651(2*(n+1))/2` -/
def P17138151115047292044.Spec : Prop :=
  ∀ n, P17138151115047292044.a n = (A147582 (n + 1) : ℚ)

end A147582

/-! ## A147582.P9773597981628094096

`A266383(A071044(2*n)-1)`
-/

namespace A147582.P9773597981628094096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 (A071044 (2 * n) - 1).toNat

end

end A147582.P9773597981628094096

namespace A147582

/-- `A266383(A071044(2*n)-1)` -/
def P9773597981628094096.Spec : Prop :=
  ∀ n, P9773597981628094096.a n = A147582 (n + 1)

end A147582

/-! ## A147582.P8240959017479032500

`A162784(2*n+1)-A079318(n)`
-/

namespace A147582.P8240959017479032500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (2 * n + 1) - A079318 n

end

end A147582.P8240959017479032500

namespace A147582

/-- `A162784(2*n+1)-A079318(n)` -/
def P8240959017479032500.Spec : Prop :=
  ∀ n, P8240959017479032500.a n = A147582 (n + 1)

end A147582

/-!
# A147583: Number of partitions of n into distinct parts such that 5*u<=v for all pairs (u,v) of parts with u

The programs for A147583, there is no canonical definition to state claims against.
-/

/-! ## A147583.P14073142032265464824

`A046042(A115574(3*n+2)+A115566(n+1))`
-/

namespace A147583.P14073142032265464824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046042 (A115574 (3 * n + 2) + A115566 (n + 1)).toNat

end

end A147583.P14073142032265464824

/-!
# A147585: a(1) = 1; a(n) = (7*n-9)*a(n-1) for n > 1.

The programs for A147585, the canonical program `A147585.P17439088194210007631` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147585 has offset 1).

The definition of A147585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*(n+1)-9)*a(n-1)` (program `A147585.P17439088194210007631`, by `A147585.P17439088194210007631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147585.P17439088194210007631

`(7*(n+1)-9)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147585

/-- `(7*(n+1)-9)*a(n-1)` -/
def P17439088194210007631.Spec : Prop :=
  ∀ n, P17439088194210007631.a n = A147585 (n + 1)

theorem P17439088194210007631.correct : P17439088194210007631.Spec := by
  intro n
  simp only [A147585, Nat.add_sub_cancel]

end A147585

/-! ## A147585.P11463629114569426956

`∏[floor(abs(7*n-ϕ))]`
-/

namespace A147585.P11463629114569426956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(7 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147585.P11463629114569426956

namespace A147585

/-- `∏[floor(abs(7*n-ϕ))]` -/
def P11463629114569426956.Spec : Prop :=
  ∀ n, P11463629114569426956.a n = A147585 (n + 1)

end A147585

/-! ## A147585.P16711327427301702072

`a(n-1)*A017041(n-1)` with `a(0)=1`
-/

namespace A147585.P16711327427301702072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017041 (n - 1)

end

end A147585.P16711327427301702072

namespace A147585

/-- `a(n-1)*A017041(n-1)` -/
def P16711327427301702072.Spec : Prop :=
  ∀ n, P16711327427301702072.a n = A147585 (n + 1)

end A147585

/-! ## A147585.P16757439313237579156

`a(n-1)*A116728(n+2)` with `a(0)=1`
-/

namespace A147585.P16757439313237579156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A116728 (n + 2)

end

end A147585.P16757439313237579156

namespace A147585

/-- `a(n-1)*A116728(n+2)` -/
def P16757439313237579156.Spec : Prop :=
  ∀ n, P16757439313237579156.a n = A147585 (n + 1)

end A147585

/-! ## A147585.P12873871019505029759

`a(n-1)*A047391(3*n)` with `a(0)=1`
-/

namespace A147585.P12873871019505029759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047391 (3 * n)

end

end A147585.P12873871019505029759

namespace A147585

/-- `a(n-1)*A047391(3*n)` -/
def P12873871019505029759.Spec : Prop :=
  ∀ n, P12873871019505029759.a n = A147585 (n + 1)

end A147585

/-!
# A147586: a(n) = A142710(n)/2.

The programs for A147586, the canonical program `A147586.P18346588282080735820` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147586 has offset 0).

The definition of A147586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142710, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147586.P18346588282080735820

`A142710(n)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A147586

/-- `A142710(n)/2` -/
def P18346588282080735820.Spec : Prop :=
  ∀ n, P18346588282080735820.a n = (A147586 n : ℚ)

end A147586

/-! ## A147586.P3974041813713311982

`(A142586(n)+A142585(n))/2`
-/

namespace A147586.P3974041813713311982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142586 n + A142585 n : ℚ) / 2

end

end A147586.P3974041813713311982

namespace A147586

/-- `(A142586(n)+A142585(n))/2` -/
def P3974041813713311982.Spec : Prop :=
  ∀ n, P3974041813713311982.a n = (A147586 n : ℚ)

end A147586

/-! ## A147586.P7350741382982696406

`A014682(A142710(n))`
-/

namespace A147586.P7350741382982696406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A142710 n).toNat

end

end A147586.P7350741382982696406

namespace A147586

/-- `A014682(A142710(n))` -/
def P7350741382982696406.Spec : Prop :=
  ∀ n, P7350741382982696406.a n = A147586 n

end A147586

/-! ## A147586.P8177351843468209317

`A273943(lcm(2, A142710(n)))`
-/

namespace A147586.P8177351843468209317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A142710 n))

end

end A147586.P8177351843468209317

namespace A147586

/-- `A273943(lcm(2, A142710(n)))` -/
def P8177351843468209317.Spec : Prop :=
  ∀ n, P8177351843468209317.a n = A147586 n

end A147586

/-! ## A147586.P10050781712154812460

`A014682(A142585(n)+floor(A000032(2*n)-2^(n-1)))`
-/

namespace A147586.P10050781712154812460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A142585 n + ⌊(A000032 (2 * n) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A147586.P10050781712154812460

namespace A147586

/-- `A014682(A142585(n)+floor(A000032(2*n)-2^(n-1)))` -/
def P10050781712154812460.Spec : Prop :=
  ∀ n, P10050781712154812460.a n = A147586 n

end A147586

/-!
# A147587: a(n) = 14*n + 7.

The programs for A147587, the canonical program `A147587.P11285010749600289520` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147587 has offset 0).

The definition of A147587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n+7` (program `A147587.P11285010749600289520`, by `A147587.P11285010749600289520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147587.P11285010749600289520

`14*n+7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147587

/-- `14*n+7` -/
def P11285010749600289520.Spec : Prop :=
  ∀ n, (P11285010749600289520.a n : ℤ) = A147587 n

theorem P11285010749600289520.correct : P11285010749600289520.Spec := by
  intro n
  simp only [A147587]

end A147587

/-!
# A147589: Concatenation of 2n-1 digits 1 and n-1 digits 0.

The programs for A147589, the canonical program `A147589.P5856800224404884279` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147589 has offset 1).

The definition of A147589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147589.P5856800224404884279

`(10^(2*(n+1)-1)-1)*10^n/9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147589

/-- `(10^(2*(n+1)-1)-1)*10^n/9` -/
def P5856800224404884279.Spec : Prop :=
  ∀ n, P5856800224404884279.a n = (A147589 (n + 1) : ℚ)

end A147589

/-! ## A147589.P9908379644254531705

`lcm(10^n, A002275(Δ[n²]))`
-/

namespace A147589.P9908379644254531705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 ^ n : ℤ) (A002275 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A147589.P9908379644254531705

namespace A147589

/-- `lcm(10^n, A002275(Δ[n²]))` -/
def P9908379644254531705.Spec : Prop :=
  ∀ n, (P9908379644254531705.a n : ℤ) = A147589 (n + 1)

end A147589

/-! ## A147589.P13766525347820759311

`lcm(floor(10^(2*n+1)/9), A011557(n))`
-/

namespace A147589.P13766525347820759311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ (A011557 n)

end

end A147589.P13766525347820759311

namespace A147589

/-- `lcm(floor(10^(2*n+1)/9), A011557(n))` -/
def P13766525347820759311.Spec : Prop :=
  ∀ n, (P13766525347820759311.a n : ℤ) = A147589 (n + 1)

end A147589

/-! ## A147589.P2874490064032603861

`A002275(3*n+1)-∑[round(10^(n-1))]`
-/

namespace A147589.P2874490064032603861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (3 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147589.P2874490064032603861

namespace A147589

/-- `A002275(3*n+1)-∑[round(10^(n-1))]` -/
def P2874490064032603861.Spec : Prop :=
  ∀ n, P2874490064032603861.a n = A147589 (n + 1)

end A147589

/-! ## A147589.P17839358368050962693

`A309761(A081267(n))`
-/

namespace A147589.P17839358368050962693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A081267 n).toNat

end

end A147589.P17839358368050962693

namespace A147589

/-- `A309761(A081267(n))` -/
def P17839358368050962693.Spec : Prop :=
  ∀ n, P17839358368050962693.a n = A147589 (n + 1)

end A147589

/-!
# A147590: Numbers whose binary representation is the concatenation of 2n-1 digits 1 and n-1 digits 0.

The programs for A147590, the canonical program `A147590.P206251050893968105` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147590 has offset 1).

The definition of A147590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147590.P9486523941459454466

`2^(n-1)*(4^(n+1)-2)`
-/

namespace A147590.P9486523941459454466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((4 ^ (n + 1) : ℤ) - 2 : ℚ)

end

end A147590.P9486523941459454466

namespace A147590

/-- `2^(n-1)*(4^(n+1)-2)` -/
def P9486523941459454466.Spec : Prop :=
  ∀ n, P9486523941459454466.a n = (A147590 (n + 1) : ℚ)

end A147590

/-! ## A147590.P206251050893968105

`10*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147590

/-- `10*a(n-1)-16*a(n-2)` -/
def P206251050893968105.Spec : Prop :=
  ∀ n, P206251050893968105.a n = A147590 (n + 1)

theorem P206251050893968105.correct : P206251050893968105.Spec := by
  intro n
  simp only [A147590, Nat.add_sub_cancel]

end A147590

/-! ## A147590.P1861525701591571951

`A083332(2*n)`
-/

namespace A147590.P1861525701591571951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083332 (2 * n)

end

end A147590.P1861525701591571951

namespace A147590

/-- `A083332(2*n)` -/
def P1861525701591571951.Spec : Prop :=
  ∀ n, P1861525701591571951.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P17359315787005279145

`A147537(n+1)/2`
-/

namespace A147590.P17359315787005279145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147537 (n + 1) : ℚ) / 2

end

end A147590.P17359315787005279145

namespace A147590

/-- `A147537(n+1)/2` -/
def P17359315787005279145.Spec : Prop :=
  ∀ n, P17359315787005279145.a n = (A147590 (n + 1) : ℚ)

end A147590

/-! ## A147590.P9277374583371376122

`A020540(n)/4`
-/

namespace A147590.P9277374583371376122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020540 n : ℚ) / 4

end

end A147590.P9277374583371376122

namespace A147590

/-- `A020540(n)/4` -/
def P9277374583371376122.Spec : Prop :=
  ∀ n, P9277374583371376122.a n = (A147590 (n + 1) : ℚ)

end A147590

/-! ## A147590.P14288014550976023593

`ogf((1+4x)/(1-10x+16x^2))`
-/

namespace A147590.P14288014550976023593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -10, 16] n

end

end A147590.P14288014550976023593

namespace A147590

/-- `ogf((1+4x)/(1-10x+16x^2))` -/
def P14288014550976023593.Spec : Prop :=
  ∀ n, P14288014550976023593.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P17257763314510491192

`xor(8^n-2^n, 8^n)`
-/

namespace A147590.P17257763314510491192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((8 ^ n : ℤ) - (2 ^ n : ℤ)) (8 ^ n : ℤ)

end

end A147590.P17257763314510491192

namespace A147590

/-- `xor(8^n-2^n, 8^n)` -/
def P17257763314510491192.Spec : Prop :=
  ∀ n, P17257763314510491192.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P7066689868030444018

`lcm(2^n, record[gcd(2, n)^(n+1)-1])`
-/

namespace A147590.P7066689868030444018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A147590.P7066689868030444018

namespace A147590

/-- `lcm(2^n, record[gcd(2, n)^(n+1)-1])` -/
def P7066689868030444018.Spec : Prop :=
  ∀ n, (P7066689868030444018.a n : ℤ) = A147590 (n + 1)

end A147590

/-! ## A147590.P17738947920275510831

`A060549(A016933(n))`
-/

namespace A147590.P17738947920275510831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (A016933 n).toNat

end

end A147590.P17738947920275510831

namespace A147590

/-- `A060549(A016933(n))` -/
def P17738947920275510831.Spec : Prop :=
  ∀ n, P17738947920275510831.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P2421626623167696162

`A060549(A016921(n)+1)`
-/

namespace A147590.P2421626623167696162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (A016921 n + 1).toNat

end

end A147590.P2421626623167696162

namespace A147590

/-- `A060549(A016921(n)+1)` -/
def P2421626623167696162.Spec : Prop :=
  ∀ n, P2421626623167696162.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P10257933105386197520

`A248217(n)+A001018(n)`
-/

namespace A147590.P10257933105386197520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248217 n + A001018 n

end

end A147590.P10257933105386197520

namespace A147590

/-- `A248217(n)+A001018(n)` -/
def P10257933105386197520.Spec : Prop :=
  ∀ n, P10257933105386197520.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P16833164356194672420

`A199493(n)-A000051(n)`
-/

namespace A147590.P16833164356194672420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199493 n - A000051 n

end

end A147590.P16833164356194672420

namespace A147590

/-- `A199493(n)-A000051(n)` -/
def P16833164356194672420.Spec : Prop :=
  ∀ n, P16833164356194672420.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P13342506969143167285

`lcm(A000079(n), A083420(n))`
-/

namespace A147590.P13342506969143167285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A083420 n)

end

end A147590.P13342506969143167285

namespace A147590

/-- `lcm(A000079(n), A083420(n))` -/
def P13342506969143167285.Spec : Prop :=
  ∀ n, (P13342506969143167285.a n : ℤ) = A147590 (n + 1)

end A147590

/-! ## A147590.P9664136729318797162

`record[A077957(n)*A126646(n)]`
-/

namespace A147590.P9664136729318797162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147590.P9664136729318797162

namespace A147590

/-- `record[A077957(n)*A126646(n)]` -/
def P9664136729318797162.Spec : Prop :=
  ∀ n, P9664136729318797162.a n = A147590 (n + 1)

end A147590

/-! ## A147590.P12864702179757922329

`A013730(n)-A135318(2*n+1)`
-/

namespace A147590.P12864702179757922329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013730 n - A135318 (2 * n + 1)

end

end A147590.P12864702179757922329

namespace A147590

/-- `A013730(n)-A135318(2*n+1)` -/
def P12864702179757922329.Spec : Prop :=
  ∀ n, P12864702179757922329.a n = A147590 (n + 1)

end A147590

/-!
# A147591: RootMeanSquare(digits of n) is an integer.

The programs for A147591, there is no canonical definition to state claims against.
-/

/-! ## A147591.P12127560884264364667

`A130573(A385297(n+2))`
-/

namespace A147591.P12127560884264364667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A385297 (n + 2)).toNat

end

end A147591.P12127560884264364667

/-! ## A147591.P13559454273901919182

`eq[A072137(n), A360098(n+1)]`
-/

namespace A147591.P13559454273901919182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147591.P13559454273901919182

/-! ## A147591.P12999076383104894859

`eq[A151962(n), A360098(n+1)]`
-/

namespace A147591.P12999076383104894859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147591.P12999076383104894859

/-! ## A147591.P13875830567392584429

`eq[A343383(n), A360098(n+1)]`
-/

namespace A147591.P13875830567392584429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147591.P13875830567392584429

/-! ## A147591.P6214358234925693857

`eq[A014057(n), A072931(n)]`
-/

namespace A147591.P6214358234925693857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147591.P6214358234925693857

/-!
# A147592: Expansion of 1/(1 + x - x^2 - 3*x^3 - x^4 + x^5 + x^6).

The programs for A147592, the canonical program `A147592.P13440792499468915712` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147592 has offset 0).

The definition of A147592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-3x^3-x^4+x^5+x^6))` (program `A147592.P13440792499468915712`, by `A147592.P13440792499468915712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147592.P13440792499468915712

`ogf(1/(1+x-x^2-3x^3-x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147592

/-- `ogf(1/(1+x-x^2-3x^3-x^4+x^5+x^6))` -/
def P13440792499468915712.Spec : Prop :=
  ∀ n, P13440792499468915712.a n = A147592 n

theorem P13440792499468915712.correct : P13440792499468915712.Spec := by
  intro n
  simp only [A147592]

end A147592

/-! ## A147592.P7422431244411942835

`A000931(n+2)-Δ[A104769(n)]`
-/

namespace A147592.P7422431244411942835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2) - (f1 (n + 1) - f1 n)

end

end A147592.P7422431244411942835

namespace A147592

/-- `A000931(n+2)-Δ[A104769(n)]` -/
def P7422431244411942835.Spec : Prop :=
  ∀ n, P7422431244411942835.a n = A147592 n

end A147592

/-! ## A147592.P2641400791698679470

`A078027(n+4)-Δ[A104769(n)]`
-/

namespace A147592.P2641400791698679470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 4) - (f1 (n + 1) - f1 n)

end

end A147592.P2641400791698679470

namespace A147592

/-- `A078027(n+4)-Δ[A104769(n)]` -/
def P2641400791698679470.Spec : Prop :=
  ∀ n, P2641400791698679470.a n = A147592 n

end A147592

/-! ## A147592.P2122485776789971514

`A104769(n+5)+A000931(n+2)`
-/

namespace A147592.P2122485776789971514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 5) + A000931 (n + 2)

end

end A147592.P2122485776789971514

namespace A147592

/-- `A104769(n+5)+A000931(n+2)` -/
def P2122485776789971514.Spec : Prop :=
  ∀ n, P2122485776789971514.a n = A147592 n

end A147592

/-! ## A147592.P4723420776222100502

`A000931(n+2)-A247917(n+4)`
-/

namespace A147592.P4723420776222100502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2) - A247917 (n + 4)

end

end A147592.P4723420776222100502

namespace A147592

/-- `A000931(n+2)-A247917(n+4)` -/
def P4723420776222100502.Spec : Prop :=
  ∀ n, P4723420776222100502.a n = A147592 n

end A147592

/-! ## A147592.P377126665383888409

`A000931(n+2)-A176971(n+7)`
-/

namespace A147592.P377126665383888409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2) - A176971 (n + 7)

end

end A147592.P377126665383888409

namespace A147592

/-- `A000931(n+2)-A176971(n+7)` -/
def P377126665383888409.Spec : Prop :=
  ∀ n, P377126665383888409.a n = A147592 n

end A147592

/-! ## A147592.P1870900479967797851

`Δ[A134816(n+2)-A104769(n)]`
-/

namespace A147592.P1870900479967797851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147592.P1870900479967797851

namespace A147592

/-- `Δ[A134816(n+2)-A104769(n)]` -/
def P1870900479967797851.Spec : Prop :=
  ∀ n, P1870900479967797851.a n = A147592 n

end A147592

/-! ## A147592.P7964937559006447830

`Δ[A052954(n+3)-A104769(n)]`
-/

namespace A147592.P7964937559006447830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 3) - A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147592.P7964937559006447830

namespace A147592

/-- `Δ[A052954(n+3)-A104769(n)]` -/
def P7964937559006447830.Spec : Prop :=
  ∀ n, P7964937559006447830.a n = A147592 n

end A147592

/-! ## A147592.P11646461370050132950

`Δ[A182097(n+3)-A104769(n)]`
-/

namespace A147592.P11646461370050132950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 3) - A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147592.P11646461370050132950

namespace A147592

/-- `Δ[A182097(n+3)-A104769(n)]` -/
def P11646461370050132950.Spec : Prop :=
  ∀ n, P11646461370050132950.a n = A147592 n

end A147592

/-! ## A147592.P3680561320559740334

`Δ[A000931(A020715(n))-A104769(n)]`
-/

namespace A147592.P3680561320559740334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A020715 n).toNat - A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147592.P3680561320559740334

namespace A147592

/-- `Δ[A000931(A020715(n))-A104769(n)]` -/
def P3680561320559740334.Spec : Prop :=
  ∀ n, P3680561320559740334.a n = A147592 n

end A147592

/-!
# A147593: Expansion of 1/(1 - x + x^3 - 3*x^4 + x^5 - x^7 + x^8).

The programs for A147593, the canonical program `A147593.P9742816203289185505` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147593 has offset 0).

The definition of A147593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^3-3x^4+x^5-x^7+x^8))` (program `A147593.P9742816203289185505`, by `A147593.P9742816203289185505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147593.P9742816203289185505

`ogf(1/(1-x+x^3-3x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147593

/-- `ogf(1/(1-x+x^3-3x^4+x^5-x^7+x^8))` -/
def P9742816203289185505.Spec : Prop :=
  ∀ n, P9742816203289185505.a n = A147593 n

theorem P9742816203289185505.correct : P9742816203289185505.Spec := by
  intro n
  simp only [A147593]

end A147593

/-!
# A147594: a(n) = sigma_0(n + a(n-1)), with a(1) = 1.

The programs for A147594, the canonical program `A147594.P14715063837161271747` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147594 has offset 1).

The definition of A147594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147594.P14715063837161271747

`A000005(n+1+a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147594

/-- `A000005(n+1+a(n-1))` -/
def P14715063837161271747.Spec : Prop :=
  ∀ n, P14715063837161271747.a n = A147594 (n + 1)

theorem P14715063837161271747.correct : P14715063837161271747.Spec := by
  intro n
  simp only [A147594, Nat.add_sub_cancel]

end A147594

/-! ## A147594.P9318117564992843090

`A000005(a(A023443(n))+n+1)` with `a(0)=1`
-/

namespace A147594.P9318117564992843090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (A023443 n).toNat + (n + 1 : ℤ)).toNat

end

end A147594.P9318117564992843090

namespace A147594

/-- `A000005(a(A023443(n))+n+1)` -/
def P9318117564992843090.Spec : Prop :=
  ∀ n, P9318117564992843090.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P1476912664398942268

`A325765(a(n-1)+n)+1` with `a(0)=1`
-/

namespace A147594.P1476912664398942268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325765 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A147594.P1476912664398942268

namespace A147594

/-- `A325765(a(n-1)+n)+1` -/
def P1476912664398942268.Spec : Prop :=
  ∀ n, P1476912664398942268.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P11154286509207387047

`A032741(a(n-1)+n+1)+1` with `a(0)=1`
-/

namespace A147594.P11154286509207387047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 (a (n - 1) + (n : ℤ) + 1).toNat + 1

end

end A147594.P11154286509207387047

namespace A147594

/-- `A032741(a(n-1)+n+1)+1` -/
def P11154286509207387047.Spec : Prop :=
  ∀ n, P11154286509207387047.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P11705504429257090337

`A000005(A321885(n+1))`
-/

namespace A147594.P11705504429257090337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A321885 (n + 1)).toNat

end

end A147594.P11705504429257090337

namespace A147594

/-- `A000005(A321885(n+1))` -/
def P11705504429257090337.Spec : Prop :=
  ∀ n, P11705504429257090337.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P4341785239565183584

`A321885(n+2)-(n+2)`
-/

namespace A147594.P4341785239565183584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321885 (n + 2) - (n + 2 : ℤ)

end

end A147594.P4341785239565183584

namespace A147594

/-- `A321885(n+2)-(n+2)` -/
def P4341785239565183584.Spec : Prop :=
  ∀ n, P4341785239565183584.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P12643043914496713244

`A096737(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A147594.P12643043914496713244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096737 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A147594.P12643043914496713244

namespace A147594

/-- `A096737(a(n-1)+n+1)` -/
def P12643043914496713244.Spec : Prop :=
  ∀ n, P12643043914496713244.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P6986144597216548722

`A046951((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A147594.P6986144597216548722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046951 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A147594.P6986144597216548722

namespace A147594

/-- `A046951((a(n-1)+n+1)²)` -/
def P6986144597216548722.Spec : Prop :=
  ∀ n, P6986144597216548722.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P16859273879338450524

`A322483((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A147594.P16859273879338450524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322483 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A147594.P16859273879338450524

namespace A147594

/-- `A322483((a(n-1)+n+1)²)` -/
def P16859273879338450524.Spec : Prop :=
  ∀ n, P16859273879338450524.a n = A147594 (n + 1)

end A147594

/-! ## A147594.P9587034305676595368

`A332712((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A147594.P9587034305676595368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332712 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A147594.P9587034305676595368

namespace A147594

/-- `A332712((a(n-1)+n+1)²)` -/
def P9587034305676595368.Spec : Prop :=
  ∀ n, P9587034305676595368.a n = A147594 (n + 1)

end A147594

/-!
# A147595: a(n) is the number whose binary representation is A138144(n).

The programs for A147595, the canonical program `A147595.P9533474071828458136` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147595 has offset 1).

The definition of A147595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147595.P9533474071828458136

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=27`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147595

/-- `3*a(n-1)-2*a(n-2)` -/
def P9533474071828458136.Spec : Prop :=
  ∀ n, P9533474071828458136.a n = A147595 (n + 1)

theorem P9533474071828458136.correct : P9533474071828458136.Spec := by
  intro n
  simp only [A147595, Nat.add_sub_cancel]

end A147595

/-! ## A147595.P17820458088138767616

`ogf((1-4x^4)/(1-3x+2x^2))`
-/

namespace A147595.P17820458088138767616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -4] [1, -3, 2] n

end

end A147595.P17820458088138767616

namespace A147595

/-- `ogf((1-4x^4)/(1-3x+2x^2))` -/
def P17820458088138767616.Spec : Prop :=
  ∀ n, P17820458088138767616.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P4530115120160773766

`2*A060013(n+2)-3`
-/

namespace A147595.P4530115120160773766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060013 (n + 2) - 3

end

end A147595.P4530115120160773766

namespace A147595

/-- `2*A060013(n+2)-3` -/
def P4530115120160773766.Spec : Prop :=
  ∀ n, P4530115120160773766.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P14068477581291970041

`or(abs(2*a(n-1)-3), A056469(n))` with `a(0)=1`
-/

namespace A147595.P14068477581291970041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor |2 * a (n - 1) - 3| (A056469 n)

end

end A147595.P14068477581291970041

namespace A147595

/-- `or(abs(2*a(n-1)-3), A056469(n))` -/
def P14068477581291970041.Spec : Prop :=
  ∀ n, P14068477581291970041.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P13190476886258462492

`∑[2*ceil(or(n+1, A266550(n+2))/4)]-1`
-/

namespace A147595.P13190476886258462492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(Int.lor (n + 1 : ℤ) (A266550 (n + 2)) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A147595.P13190476886258462492

namespace A147595

/-- `∑[2*ceil(or(n+1, A266550(n+2))/4)]-1` -/
def P13190476886258462492.Spec : Prop :=
  ∀ n, P13190476886258462492.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P4863243992337439644

`A003945(n)+3%A003188(n+1)`
-/

namespace A147595.P4863243992337439644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + Int.tmod 3 (A003188 (n + 1))

end

end A147595.P4863243992337439644

namespace A147595

/-- `A003945(n)+3%A003188(n+1)` -/
def P4863243992337439644.Spec : Prop :=
  ∀ n, P4863243992337439644.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P18390195154034393156

`or(A134451(2*n)+1, A029744(2*n+1))`
-/

namespace A147595.P18390195154034393156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (2 * n) + 1) (A029744 (2 * n + 1))

end

end A147595.P18390195154034393156

namespace A147595

/-- `or(A134451(2*n)+1, A029744(2*n+1))` -/
def P18390195154034393156.Spec : Prop :=
  ∀ n, P18390195154034393156.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P10675866980835066042

`or(A003945(n), A282369(A005811(2*n)))`
-/

namespace A147595.P10675866980835066042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n) (A282369 (A005811 (2 * n)).toNat)

end

end A147595.P10675866980835066042

namespace A147595

/-- `or(A003945(n), A282369(A005811(2*n)))` -/
def P10675866980835066042.Spec : Prop :=
  ∀ n, P10675866980835066042.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P8374211953004909344

`or(A003945(ceil(n/A003945(n))), A003945(n))`
-/

namespace A147595.P8374211953004909344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 ⌈(n : ℚ) / (A003945 n : ℚ)⌉.toNat) (A003945 n)

end

end A147595.P8374211953004909344

namespace A147595

/-- `or(A003945(ceil(n/A003945(n))), A003945(n))` -/
def P8374211953004909344.Spec : Prop :=
  ∀ n, P8374211953004909344.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P18418999630792510476

`∑[ceil(or(2*n+3, A033484(n))/4)]`
-/

namespace A147595.P18418999630792510476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (2 * n + 3 : ℤ) (A033484 n) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147595.P18418999630792510476

namespace A147595

/-- `∑[ceil(or(2*n+3, A033484(n))/4)]` -/
def P18418999630792510476.Spec : Prop :=
  ∀ n, P18418999630792510476.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P17632515728130702507

`A111286(n+2)-A147758(n+1)`
-/

namespace A147595.P17632515728130702507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 2) - A147758 (n + 1)

end

end A147595.P17632515728130702507

namespace A147595

/-- `A111286(n+2)-A147758(n+1)` -/
def P17632515728130702507.Spec : Prop :=
  ∀ n, P17632515728130702507.a n = A147595 (n + 1)

end A147595

/-! ## A147595.P10484844256752493146

`A068156(n+1)-(A147758(n+1)+A068156(n))`
-/

namespace A147595.P10484844256752493146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (n + 1) - (A147758 (n + 1) + A068156 n)

end

end A147595.P10484844256752493146

namespace A147595

/-- `A068156(n+1)-(A147758(n+1)+A068156(n))` -/
def P10484844256752493146.Spec : Prop :=
  ∀ n, P10484844256752493146.a n = A147595 (n + 1)

end A147595

/-!
# A147596: a(n) is the number whose binary representation is A138145(n).

The programs for A147596, the canonical program `A147596.P14586652274117471926` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147596 has offset 1).

The definition of A147596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147596.P14586652274117471926

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=31, a(5)=63, a(6)=119`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147596

/-- `3*a(n-1)-2*a(n-2)` -/
def P14586652274117471926.Spec : Prop :=
  ∀ n, P14586652274117471926.a n = A147596 (n + 1)

theorem P14586652274117471926.correct : P14586652274117471926.Spec := by
  intro n
  simp only [A147596, Nat.add_sub_cancel]

end A147596

/-! ## A147596.P1391652906947676840

`ogf((-1+8x^6)/(-1+3x-2x^2))`
-/

namespace A147596.P1391652906947676840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, -8] [1, -3, 2] n

end

end A147596.P1391652906947676840

namespace A147596

/-- `ogf((-1+8x^6)/(-1+3x-2x^2))` -/
def P1391652906947676840.Spec : Prop :=
  ∀ n, P1391652906947676840.a n = A147596 (n + 1)

end A147596

/-! ## A147596.P4306655175137472838

`or(A052996(n)%8, A125176(n+1))`
-/

namespace A147596.P4306655175137472838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A052996 n) 8) (A125176 (n + 1))

end

end A147596.P4306655175137472838

namespace A147596

/-- `or(A052996(n)%8, A125176(n+1))` -/
def P4306655175137472838.Spec : Prop :=
  ∀ n, P4306655175137472838.a n = A147596 (n + 1)

end A147596

/-! ## A147596.P13196758615605481915

`or(A055010(n)%8, A125176(n+1))`
-/

namespace A147596.P13196758615605481915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A055010 n) 8) (A125176 (n + 1))

end

end A147596.P13196758615605481915

namespace A147596

/-- `or(A055010(n)%8, A125176(n+1))` -/
def P13196758615605481915.Spec : Prop :=
  ∀ n, P13196758615605481915.a n = A147596 (n + 1)

end A147596

/-! ## A147596.P12597407749442661676

`or(A126646(n)%8, A125176(n+1))`
-/

namespace A147596.P12597407749442661676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A126646 n) 8) (A125176 (n + 1))

end

end A147596.P12597407749442661676

namespace A147596

/-- `or(A126646(n)%8, A125176(n+1))` -/
def P12597407749442661676.Spec : Prop :=
  ∀ n, P12597407749442661676.a n = A147596 (n + 1)

end A147596

/-! ## A147596.P10142736406878744210

`or(dr(A001998(n)), A125176(n+1))`
-/

namespace A147596.P10142736406878744210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A001998 n) : ℤ) (A125176 (n + 1))

end

end A147596.P10142736406878744210

namespace A147596

/-- `or(dr(A001998(n)), A125176(n+1))` -/
def P10142736406878744210.Spec : Prop :=
  ∀ n, P10142736406878744210.a n = A147596 (n + 1)

end A147596

/-! ## A147596.P16929994356865592288

`or(1, A175095(A133263(n)))`
-/

namespace A147596.P16929994356865592288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A175095 (A133263 n).toNat)

end

end A147596.P16929994356865592288

namespace A147596

/-- `or(1, A175095(A133263(n)))` -/
def P16929994356865592288.Spec : Prop :=
  ∀ n, P16929994356865592288.a n = A147596 (n + 1)

end A147596

/-!
# A147597: a(n) is the number whose binary representation is A138146(n).

The programs for A147597, the canonical program `A147597.P4826203442190431542` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147597 has offset 1).

The definition of A147597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147597.P4826203442190431542

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=7, a(2)=31, a(3)=119, a(4)=455`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147597

/-- `5*a(n-1)-4*a(n-2)` -/
def P4826203442190431542.Spec : Prop :=
  ∀ n, P4826203442190431542.a n = A147597 (n + 1)

theorem P4826203442190431542.correct : P4826203442190431542.Spec := by
  intro n
  simp only [A147597, Nat.add_sub_cancel]

end A147597

/-! ## A147597.P8011326193279972043

`A147596(Δ[n²])`
-/

namespace A147597.P8011326193279972043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A147597.P8011326193279972043

namespace A147597

/-- `A147596(Δ[n²])` -/
def P8011326193279972043.Spec : Prop :=
  ∀ n, P8011326193279972043.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P2672279565208500729

`record[A147596(lcm(64, n+1)/64)]`
-/

namespace A147597.P2672279565208500729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147596 (SequenceMachineLib.roundAway ((Nat.lcm 64 (n + 1) : ℚ) / 64)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147597.P2672279565208500729

namespace A147597

/-- `record[A147596(lcm(64, n+1)/64)]` -/
def P2672279565208500729.Spec : Prop :=
  ∀ n, P2672279565208500729.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P10323807654230733039

`lcm(2, A147596(2*n+1))/2`
-/

namespace A147597.P10323807654230733039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A147596 (2 * n + 1)) : ℚ) / 2

end

end A147597.P10323807654230733039

namespace A147597

/-- `lcm(2, A147596(2*n+1))/2` -/
def P10323807654230733039.Spec : Prop :=
  ∀ n, P10323807654230733039.a n = (A147597 (n + 1) : ℚ)

end A147597

/-! ## A147597.P2861802333885548222

`record[A147596(Δ[A001318(n)])]`
-/

namespace A147597.P2861802333885548222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147596 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147597.P2861802333885548222

namespace A147597

/-- `record[A147596(Δ[A001318(n)])]` -/
def P2861802333885548222.Spec : Prop :=
  ∀ n, P2861802333885548222.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P10703348071310890733

`record[A147596(A000265(n+1))]`
-/

namespace A147597.P10703348071310890733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147596 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147597.P10703348071310890733

namespace A147597

/-- `record[A147596(A000265(n+1))]` -/
def P10703348071310890733.Spec : Prop :=
  ∀ n, P10703348071310890733.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P6274184016275205801

`record[A147596(A014681(n)+1)]`
-/

namespace A147597.P6274184016275205801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147596 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147597.P6274184016275205801

namespace A147597

/-- `record[A147596(A014681(n)+1)]` -/
def P6274184016275205801.Spec : Prop :=
  ∀ n, P6274184016275205801.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P14419886794776320511

`and(1, A147596(2*(n+1)))*A147596(2*n+1)`
-/

namespace A147597.P14419886794776320511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A147596 (2 * (n + 1))) * A147596 (2 * n + 1)

end

end A147597.P14419886794776320511

namespace A147597

/-- `and(1, A147596(2*(n+1)))*A147596(2*n+1)` -/
def P14419886794776320511.Spec : Prop :=
  ∀ n, P14419886794776320511.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P16296117277319935774

`A147596(2*n+1)+A000007(n+1)*A147596(2*n+2)`
-/

namespace A147597.P16296117277319935774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147596 (2 * n + 1) + A000007 (n + 1) * A147596 (2 * n + 2)

end

end A147597.P16296117277319935774

namespace A147597

/-- `A147596(2*n+1)+A000007(n+1)*A147596(2*n+2)` -/
def P16296117277319935774.Spec : Prop :=
  ∀ n, P16296117277319935774.a n = A147597 (n + 1)

end A147597

/-! ## A147597.P8805120977573099

`or(dr(A001998(2*n)), A125176(2*n+1))`
-/

namespace A147597.P8805120977573099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A001998 (2 * n)) : ℤ) (A125176 (2 * n + 1))

end

end A147597.P8805120977573099

namespace A147597

/-- `or(dr(A001998(2*n)), A125176(2*n+1))` -/
def P8805120977573099.Spec : Prop :=
  ∀ n, P8805120977573099.a n = A147597 (n + 1)

end A147597

/-!
# A147598: Expansion of g.f. 1/((1-x^2+x^3+x^4-x^5)*(1-x-x^2+x^3-x^5)).

The programs for A147598, the canonical program `A147598.P11906197939817582265` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147598 has offset 0).

The definition of A147598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+3x^3+x^4-5x^5+x^6+3x^7-2x^8-x^9+x^10))` (program `A147598.P11906197939817582265`, by `A147598.P11906197939817582265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147598.P11906197939817582265

`ogf(1/(1-x-2x^2+3x^3+x^4-5x^5+x^6+3x^7-2x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147598

/-- `ogf(1/(1-x-2x^2+3x^3+x^4-5x^5+x^6+3x^7-2x^8-x^9+x^10))` -/
def P11906197939817582265.Spec : Prop :=
  ∀ n, P11906197939817582265.a n = A147598 n

theorem P11906197939817582265.correct : P11906197939817582265.Spec := by
  intro n
  simp only [A147598]

end A147598

/-!
# A147599: Expansion of Product_{i>=1} (1+x^(4*i-1)).

The programs for A147599, there is no canonical definition to state claims against.
-/

/-! ## A147599.P11987661513056451871

`abs(A284316(n))`
-/

namespace A147599.P11987661513056451871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284316 n|

end

end A147599.P11987661513056451871

/-! ## A147599.P16465921217891170846

`A033999(n)*A284316(n)`
-/

namespace A147599.P16465921217891170846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284316 n

end

end A147599.P16465921217891170846

/-! ## A147599.P18318364683422313099

`gcd(A000038(n), A284316(n))`
-/

namespace A147599.P18318364683422313099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284316 n)

end

end A147599.P18318364683422313099

/-! ## A147599.P6860485581934711931

`lcm(A020985(n), A284316(n))`
-/

namespace A147599.P6860485581934711931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A284316 n)

end

end A147599.P6860485581934711931

/-! ## A147599.P1268914192502891422

`A284316(n)/A033999(n+4)`
-/

namespace A147599.P1268914192502891422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284316 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A147599.P1268914192502891422

/-! ## A147599.P17651479169565484878

`A101455(2*n+1)*A284316(n)`
-/

namespace A147599.P17651479169565484878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (2 * n + 1) * A284316 n

end

end A147599.P17651479169565484878

/-! ## A147599.P1900257395872607794

`∑{d}[A284316(n), A000010(#)]`
-/

namespace A147599.P1900257395872607794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A147599.P1900257395872607794

/-! ## A147599.P9772008714537946232

`A018851(A284316(n)²)`
-/

namespace A147599.P9772008714537946232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284316 n ^ 2).toNat

end

end A147599.P9772008714537946232

/-! ## A147599.P15577993909536575563

`A000194(A284316(n)²)`
-/

namespace A147599.P15577993909536575563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284316 n ^ 2).toNat

end

end A147599.P15577993909536575563

/-! ## A147599.P13258243572104562265

`A000196(A284316(n)²)`
-/

namespace A147599.P13258243572104562265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284316 n ^ 2).toNat

end

end A147599.P13258243572104562265

/-! ## A147599.P373097460626658581

`A037213(A284316(n)²)`
-/

namespace A147599.P373097460626658581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284316 n ^ 2).toNat

end

end A147599.P373097460626658581

/-! ## A147599.P11236987905014045261

`A000196(A284316(n)^2)`
-/

namespace A147599.P11236987905014045261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284316 n ^ 2).toNat

end

end A147599.P11236987905014045261

