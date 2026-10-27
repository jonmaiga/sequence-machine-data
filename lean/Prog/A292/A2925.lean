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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A292500: G.f.: exp( Sum_{n>=1} [ Sum_{k>=1} (2*k-1)^n * x^k ]^n / n ).

The programs for A292500, there is no canonical definition to state claims against.
-/

/-! ## A292500.P15336827113381322675

`A103889(∏{p}[A110501(n+1), #-1]+1)`
-/

namespace A292500.P15336827113381322675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1) + 1).toNat

end

end A292500.P15336827113381322675

/-! ## A292500.P16913244682975921292

`A090168(A073918(n))-A133316(n)`
-/

namespace A292500.P16913244682975921292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 (A073918 n).toNat - A133316 n

end

end A292500.P16913244682975921292

/-!
# A292501: G.f.: exp( Sum_{n>=1} [ Sum_{k>=1} (2*k-1)^n * x^k ]^n * (1-x)^n / n ).

The programs for A292501, there is no canonical definition to state claims against.
-/

/-! ## A292501.P4013258161008386205

`A072154(A211348(n))-2`
-/

namespace A292501.P4013258161008386205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A211348 n).toNat - 2

end

end A292501.P4013258161008386205

/-! ## A292501.P3158670557701497163

`A049093(A093641(4*a(n-1)-2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A292501.P3158670557701497163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A049093 (A093641 (4 * a (n - 1) - 2 * a (n - 2)).toNat).toNat

end

end A292501.P3158670557701497163

/-!
# A292502: L.g.f.: Sum_{n>=1} [ Sum_{k>=1} (2*k-1)^n * x^k ]^n / n.

The programs for A292502, there is no canonical definition to state claims against.
-/

/-! ## A292502.P158489328647071502

`A001175(A018022(2*n+1))-A000040(3*n+4)`
-/

namespace A292502.P158489328647071502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A018022 (2 * n + 1)).toNat - A000040 (3 * n + 4)

end

end A292502.P158489328647071502

/-!
# A292503: Number of partitions of n with n sorts of part 1 which are introduced in ascending order.

The programs for A292503, there is no canonical definition to state claims against.
-/

/-! ## A292503.P4172547790019801521

`A292745(∑[4*n])`
-/

namespace A292503.P4172547790019801521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292503.P4172547790019801521

/-! ## A292503.P11263253064311195131

`A292745(A008586(∑[n]))%(n+9)!`
-/

namespace A292503.P11263253064311195131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (Nat.factorial (n + 9) : ℤ)

end

end A292503.P11263253064311195131

/-! ## A292503.P1529030421014387989

`or(A000007(n), A292745(A046092(n)))`
-/

namespace A292503.P1529030421014387989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292745 (A046092 n).toNat)

end

end A292503.P1529030421014387989

/-! ## A292503.P2533728551612522736

`A292745(∑[A008586(n)])/A033999(n)²`
-/

namespace A292503.P2533728551612522736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A292503.P2533728551612522736

/-! ## A292503.P12058913270483139103

`A292745(A008586(∑[n]))%A176812(n)²`
-/

namespace A292503.P12058913270483139103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292745 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A176812 n ^ 2)

end

end A292503.P12058913270483139103

/-! ## A292503.P2415095707578616590

`A292745(∑[A008586(n)])+A000007(n+1)`
-/

namespace A292503.P2415095707578616590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A292503.P2415095707578616590

/-! ## A292503.P8715789267853684515

`gcd(A000038(n), A292745(A001844(n)+2*n))`
-/

namespace A292503.P8715789267853684515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292745 (A001844 n + (2 * n : ℤ)).toNat)

end

end A292503.P8715789267853684515

/-! ## A292503.P14918511078683963089

`lcm(A087960(n), A292745(A001844(n)+2*n))`
-/

namespace A292503.P14918511078683963089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A292745 (A001844 n + (2 * n : ℤ)).toNat)

end

end A292503.P14918511078683963089

/-! ## A292503.P2073527455709832035

`A032742(A014963(n+1))*A292745(A001844(n)+n+n)`
-/

namespace A292503.P2073527455709832035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A014963 (n + 1)).toNat * A292745 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A292503.P2073527455709832035

/-!
# A292504: Number of orderless tree-factorizations of n.

The programs for A292504, there is no canonical definition to state claims against.
-/

/-! ## A292504.P2394271651017987772

`A318849(A181819(n+1))`
-/

namespace A292504.P2394271651017987772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318849 (A181819 (n + 1)).toNat

end

end A292504.P2394271651017987772

/-! ## A292504.P3841567642408636000

`A318849(∏{e}[n+1, A000040(#)])`
-/

namespace A292504.P3841567642408636000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318849 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A292504.P3841567642408636000

/-! ## A292504.P15836357187584840271

`A318849(∏{e}[n+1, A216883(#)])`
-/

namespace A292504.P15836357187584840271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318849 (∏ p ∈ Nat.primeFactors (f1 n), A216883 (Nat.factorization (f1 n) p)).toNat

end

end A292504.P15836357187584840271

/-! ## A292504.P1180417509025463247

`A318849(∏{p}[n+1, A000040(val(n+1, #))])`
-/

namespace A292504.P1180417509025463247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318849 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.valuation (n + 1) p)).toNat

end

end A292504.P1180417509025463247

/-! ## A292504.P4918612472438810098

`A318849(A329601(n+1)*A351944(n+1))`
-/

namespace A292504.P4918612472438810098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318849 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A292504.P4918612472438810098

/-!
# A292505: Number of complete orderless tree-factorizations of n >= 2.

The programs for A292505, there is no canonical definition to state claims against.
-/

/-! ## A292505.P9368235082739577243

`A316655(A181819(n+2))`
-/

namespace A292505.P9368235082739577243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (A181819 (n + 2)).toNat

end

end A292505.P9368235082739577243

/-! ## A292505.P17592666334973381959

`A195083(A195083(A281119(n+2)))`
-/

namespace A292505.P17592666334973381959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (A195083 (A281119 (n + 2)).toNat).toNat

end

end A292505.P17592666334973381959

/-! ## A292505.P14564330782547020569

`A281119(n+2)%A326836(n+1)`
-/

namespace A292505.P14564330782547020569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281119 (n + 2)) (A326836 (n + 1))

end

end A292505.P14564330782547020569

/-! ## A292505.P871059617395341603

`A281119(n+2)+A023533(A105448(n+1))`
-/

namespace A292505.P871059617395341603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2) + A023533 (A105448 (n + 1)).toNat

end

end A292505.P871059617395341603

/-! ## A292505.P11439545019441659342

`A281119(n+2)+A000007(A136061(n+1))`
-/

namespace A292505.P11439545019441659342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2) + A000007 (A136061 (n + 1)).toNat

end

end A292505.P11439545019441659342

/-! ## A292505.P15077893209067466428

`A281119(n+2)+A010052(A353284(n+1))`
-/

namespace A292505.P15077893209067466428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2) + A010052 (A353284 (n + 1)).toNat

end

end A292505.P15077893209067466428

/-! ## A292505.P1354762683361077329

`A284600(A000040(n+1)*A281119(n+2))`
-/

namespace A292505.P1354762683361077329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (A000040 (n + 1) * A281119 (n + 2)).toNat

end

end A292505.P1354762683361077329

/-! ## A292505.P194030212732022344

`A281119(n+2)*A321648(A025475(n+1))`
-/

namespace A292505.P194030212732022344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2) * A321648 (A025475 (n + 1)).toNat

end

end A292505.P194030212732022344

/-! ## A292505.P18112682667661428927

`A281119(n+2)+A019590(A329990(n+5))`
-/

namespace A292505.P18112682667661428927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2) + A019590 (A329990 (n + 5)).toNat

end

end A292505.P18112682667661428927

/-! ## A292505.P14740761064270382405

`and(A141311(n+1), A281119(n+2))`
-/

namespace A292505.P14740761064270382405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A281119 (n + 2))

end

end A292505.P14740761064270382405

/-!
# A292506: Number T(n,k) of multisets of exactly k nonempty binary words with a total of n letters such that no word has a majority of 0's; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A292506, there is no canonical definition to state claims against.
-/

/-! ## A292506.P3665924802797928370

`A290222(n)+A102673(A293881(n)²)`
-/

namespace A292506.P3665924802797928370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 n + A102673 (A293881 n ^ 2).toNat

end

end A292506.P3665924802797928370

/-! ## A292506.P13869484686194105079

`A165655(A135898(n))+A130481(A293808(n))`
-/

namespace A292506.P13869484686194105079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 (A135898 n).toNat + A130481 (A293808 n).toNat

end

end A292506.P13869484686194105079

/-! ## A292506.P17947421284537444650

`A049828(n+1)+A122922(A109971(n))+A120060(n)`
-/

namespace A292506.P17947421284537444650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (n + 1) + (A122922 (A109971 n).toNat + A120060 n)

end

end A292506.P17947421284537444650

/-! ## A292506.P16247651963639122956

`A049828(n+1)+A290222(n)+A081221(A290235(n))`
-/

namespace A292506.P16247651963639122956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (n + 1) + (A290222 n + A081221 (A290235 n).toNat)

end

end A292506.P16247651963639122956

/-! ## A292506.P16094758544872073411

`A049828(n+1)+A096653(n)-A001221(A111820(n))`
-/

namespace A292506.P16094758544872073411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (n + 1) + (A096653 n - A001221 (A111820 n).toNat)

end

end A292506.P16094758544872073411

/-!
# A292507: Number of partitions of n with up to n distinct kinds of 1.

The programs for A292507, there is no canonical definition to state claims against.
-/

/-! ## A292507.P11168579728906204506

`2*A218481(n)-∑[A218481(n)]`
-/

namespace A292507.P11168579728906204506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218481 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292507.P11168579728906204506

/-! ## A292507.P5159618656997251647

`A292622(∑[4*n])`
-/

namespace A292507.P5159618656997251647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292507.P5159618656997251647

/-! ## A292507.P17440373925630928511

`∑[A292622(n²+n²)]`
-/

namespace A292507.P17440373925630928511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (n ^ 2 + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292507.P17440373925630928511

/-! ## A292507.P12067982765428996617

`A292622((n+1)*2*n)^(2*n-A004273(n))`
-/

namespace A292507.P12067982765428996617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292622 ((n + 1) * (2 * n)) : ℚ) ^ ((2 * n : ℤ) - A004273 n : ℤ)

end

end A292507.P12067982765428996617

/-! ## A292507.P9924960153851344652

`gcd(A000038(n), A292622(A046092(n)))`
-/

namespace A292507.P9924960153851344652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292622 (A046092 n).toNat)

end

end A292507.P9924960153851344652

/-! ## A292507.P16556914619253905909

`A292622(A046092(n))^cos(A000007(n))`
-/

namespace A292507.P16556914619253905909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A292622 (A046092 n).toNat : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A292507.P16556914619253905909

/-! ## A292507.P15798157955319905402

`A292622(A046092(n))+A000007(n+1)`
-/

namespace A292507.P15798157955319905402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A046092 n).toNat + A000007 (n + 1)

end

end A292507.P15798157955319905402

/-! ## A292507.P3293945362080902950

`A292622(A046092(n))^A014963(4*n+2)`
-/

namespace A292507.P3293945362080902950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292622 (A046092 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A292507.P3293945362080902950

/-! ## A292507.P11620626960563513223

`A000688(A000040(n+1))*A292622(A046092(n))`
-/

namespace A292507.P11620626960563513223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000040 (n + 1)).toNat * A292622 (A046092 n).toNat

end

end A292507.P11620626960563513223

/-! ## A292507.P3635117349315484997

`A014963(A000217(n+4))*A292622(A046092(n))`
-/

namespace A292507.P3635117349315484997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A292622 (A046092 n).toNat

end

end A292507.P3635117349315484997

/-!
# A292508: Number A(n,k) of partitions of n with k kinds of 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292508, there is no canonical definition to state claims against.
-/

/-! ## A292508.P982839307433841945

`A347697(A347699(n+1))+A220062(n)`
-/

namespace A292508.P982839307433841945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1)).toNat + A220062 n

end

end A292508.P982839307433841945

/-! ## A292508.P13742315006203903816

`A347697(A347699(n+1))+A271751(A350529(n))`
-/

namespace A292508.P13742315006203903816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1)).toNat + A271751 (A350529 n).toNat

end

end A292508.P13742315006203903816

/-! ## A292508.P2982950990595507920

`A347697(A347699(n+1))+A271751(A353434(n))`
-/

namespace A292508.P2982950990595507920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1)).toNat + A271751 (A353434 n).toNat

end

end A292508.P2982950990595507920

/-! ## A292508.P6226209249779296319

`A347697(A347699(n+1))+A070000(11*A350529(n))`
-/

namespace A292508.P6226209249779296319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1)).toNat + A070000 (11 * A350529 n).toNat

end

end A292508.P6226209249779296319

/-! ## A292508.P6655851147750611013

`A347697(A347699(n+1))+A070000(11*A353434(n))`
-/

namespace A292508.P6655851147750611013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1)).toNat + A070000 (11 * A353434 n).toNat

end

end A292508.P6655851147750611013

/-!
# A292509: Primes of the form k^2 + 23*k + 23.

The programs for A292509, the canonical program `A292509.P11294046245130525337` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292509 has offset 1).

The definition of A292509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292509.P11294046245130525337

`A132763(A300473(n+1))+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A292509

/-- `A132763(A300473(n+1))+1` -/
def P11294046245130525337.Spec : Prop :=
  ∀ n, P11294046245130525337.a n = A292509 (n + 1)

theorem P11294046245130525337.correct : P11294046245130525337.Spec := by
  intro n
  simp only [A292509, Nat.add_sub_cancel]

end A292509

/-! ## A292509.P4296227328549944769

`p?[n*(n+21)+1]`
-/

namespace A292509.P4296227328549944769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 21) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A292509.P4296227328549944769

namespace A292509

/-- `p?[n*(n+21)+1]` -/
def P4296227328549944769.Spec : Prop :=
  ∀ n, (P4296227328549944769.a n : ℤ) = A292509 (n + 1)

end A292509

/-! ## A292509.P3071362919558722392

`or(1, p?[-A332884(n+1)])`
-/

namespace A292509.P3071362919558722392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A292509.P3071362919558722392

namespace A292509

/-- `or(1, p?[-A332884(n+1)])` -/
def P3071362919558722392.Spec : Prop :=
  ∀ n, P3071362919558722392.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P16743174559829872259

`A174738(A261029(n))+p?[-A332884(n+1)]`
-/

namespace A292509.P16743174559829872259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (A261029 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292509.P16743174559829872259

namespace A292509

/-- `A174738(A261029(n))+p?[-A332884(n+1)]` -/
def P16743174559829872259.Spec : Prop :=
  ∀ n, P16743174559829872259.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P11899977477859283404

`A000027(p?[-A332884(n+1)])`
-/

namespace A292509.P11899977477859283404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A292509.P11899977477859283404

namespace A292509

/-- `A000027(p?[-A332884(n+1)])` -/
def P11899977477859283404.Spec : Prop :=
  ∀ n, P11899977477859283404.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P7212112233199270118

`record[A020639(∑[2*(n+11)]+1)]`
-/

namespace A292509.P7212112233199270118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292509.P7212112233199270118

namespace A292509

/-- `record[A020639(∑[2*(n+11)]+1)]` -/
def P7212112233199270118.Spec : Prop :=
  ∀ n, P7212112233199270118.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P12651044487497971681

`record[A006530(n²+23*(n+1))]`
-/

namespace A292509.P12651044487497971681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 23 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292509.P12651044487497971681

namespace A292509

/-- `record[A006530(n²+23*(n+1))]` -/
def P12651044487497971681.Spec : Prop :=
  ∀ n, P12651044487497971681.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P11698926902420712866

`A332881(p?[-A332884(n+1)])`
-/

namespace A292509.P11698926902420712866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A292509.P11698926902420712866

namespace A292509

/-- `A332881(p?[-A332884(n+1)])` -/
def P11698926902420712866.Spec : Prop :=
  ∀ n, P11698926902420712866.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P1813754376861388293

`A332883(p?[-A332884(n+1)])`
-/

namespace A292509.P1813754376861388293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A292509.P1813754376861388293

namespace A292509

/-- `A332883(p?[-A332884(n+1)])` -/
def P1813754376861388293.Spec : Prop :=
  ∀ n, P1813754376861388293.a n = A292509 (n + 1)

end A292509

/-! ## A292509.P10235505553983855525

`record[A014963(∑[2*(n+11)]+1)]`
-/

namespace A292509.P10235505553983855525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292509.P10235505553983855525

namespace A292509

/-- `record[A014963(∑[2*(n+11)]+1)]` -/
def P10235505553983855525.Spec : Prop :=
  ∀ n, P10235505553983855525.a n = A292509 (n + 1)

end A292509

/-!
# A292510: a(n) = smallest k >= 1 such that {1, p(n,2), p(n,3), ..., p(n,k)} can be partitioned into two sets with equal sums, where p(n,m) is m-th n-gonal number.

The programs for A292510, there is no canonical definition to state claims against.
-/

/-! ## A292510.P7168775768837302438

`a(ceil(acot(n)))` with `a(0)=4, a(1)=7, a(2)=6`
-/

namespace A292510.P7168775768837302438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 6] fun n a =>
  a ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A292510.P7168775768837302438

/-!
# A292511: Expansion of a q-series used by Ramanujan in his Lost Notebook.

The programs for A292511, there is no canonical definition to state claims against.
-/

/-! ## A292511.P5932877447809292640

`(2-A010684(n))*A238872(n+1)`
-/

namespace A292511.P5932877447809292640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A238872 (n + 1)

end

end A292511.P5932877447809292640

/-! ## A292511.P14595685041184012966

`A209615(2*n+1)*A238872(n+1)`
-/

namespace A292511.P14595685041184012966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) * A238872 (n + 1)

end

end A292511.P14595685041184012966

/-! ## A292511.P8202552476370107631

`(3-2*A000034(n))*A238872(n+1)`
-/

namespace A292511.P8202552476370107631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000034 n) * A238872 (n + 1)

end

end A292511.P8202552476370107631

/-! ## A292511.P4020889951539706726

`A132380(4*n+2)*A238872(n+1)`
-/

namespace A292511.P4020889951539706726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (4 * n + 2) * A238872 (n + 1)

end

end A292511.P4020889951539706726

/-! ## A292511.P9352440388897554806

`-(A132380(Δ[A140811(n)])*A238872(n+1))`
-/

namespace A292511.P9352440388897554806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A132380 (f1 (n + 1) - f1 n).toNat * A238872 (n + 1))

end

end A292511.P9352440388897554806

/-! ## A292511.P8652437533558349860

`A238872(n+1)/A132380(Δ[A140811(n+1)])`
-/

namespace A292511.P8652437533558349860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238872 (n + 1) : ℚ) / (A132380 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A292511.P8652437533558349860

/-! ## A292511.P8163958008902679123

`A238872(n+1)+A238872(n+1)-A130695(n+1)`
-/

namespace A292511.P8163958008902679123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (n + 1) + (A238872 (n + 1) - A130695 (n + 1))

end

end A292511.P8163958008902679123

/-! ## A292511.P10998297970395123709

`A260195(n+1)+A260195(n+1)-A130695(n+1)`
-/

namespace A292511.P10998297970395123709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (n + 1) + (A260195 (n + 1) - A130695 (n + 1))

end

end A292511.P10998297970395123709

/-!
# A292512: Sequence A: Start with n, add the sum of digits of n (A062028) and repeat. Sequence B: Start with n, add the sum of base-100 digits of n and repeat. a(n) is the smallest common number > n.

The programs for A292512, there is no canonical definition to state claims against.
-/

/-! ## A292512.P17027473788938694419

`eq[A249009(n), A328580(n)]`
-/

namespace A292512.P17027473788938694419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292512.P17027473788938694419

/-! ## A292512.P5947482014159181264

`A362184(A219326(n+1))+1+n`
-/

namespace A292512.P5947482014159181264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362184 (A219326 (n + 1)).toNat + 1 + (n : ℤ)

end

end A292512.P5947482014159181264

/-! ## A292512.P1339473071730995409

`A129947(A276086(n))+2*(n+1)`
-/

namespace A292512.P1339473071730995409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129947 (A276086 n).toNat + (2 * (n + 1) : ℤ)

end

end A292512.P1339473071730995409

/-! ## A292512.P9375211618220259795

`∩[A072427(n+1), A343185(n+1)]`
-/

namespace A292512.P9375211618220259795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292512.P9375211618220259795

/-!
# A292513: A number N is called "docile" if there are two integers a and b such that N = a + b with a > b > 0 and S(a) = S(b) where S(n) is the sum of the digits of the number n.

The programs for A292513, there is no canonical definition to state claims against.
-/

/-! ## A292513.P3615745226551818636

`comp[A292514(n+1)-1]+1`
-/

namespace A292513.P3615745226551818636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292513.P3615745226551818636

/-! ## A292513.P404696969528699727

`lt[A000177(n), A208059(A029578(n))]`
-/

namespace A292513.P404696969528699727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208059 (A029578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292513.P404696969528699727

/-! ## A292513.P4799745039719689965

`lt[A335800(n+1), A335800(A353866(n+1))]`
-/

namespace A292513.P4799745039719689965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335800 (A353866 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292513.P4799745039719689965

/-! ## A292513.P12600189376108968406

`lt[A169941(A169945(n)), A169975(2*n+1)]`
-/

namespace A292513.P12600189376108968406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 (A169945 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292513.P12600189376108968406

/-!
# A292514: A number N is called a "rebel" number if there do not exist two integers a and b such that N = a + b with a > b > 0 and S(a) = S(b) where S(n) is the sum of the digits of the number n.

The programs for A292514, there is no canonical definition to state claims against.
-/

/-! ## A292514.P7130693075893837552

`eq[char[A292513(n+1)], A151909(n)]`
-/

namespace A292514.P7130693075893837552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A292514.P7130693075893837552

/-! ## A292514.P7504270814614915498

`eq[char[A292513(n+1)], A151933(n)]`
-/

namespace A292514.P7504270814614915498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A292514.P7504270814614915498

/-! ## A292514.P15476374997169904547

`eq[char[A292513(n+1)], A010893(n)]`
-/

namespace A292514.P15476374997169904547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A292514.P15476374997169904547

/-! ## A292514.P15481016679141722450

`∑[A000005(∏{d}[A026814(n), #])]`
-/

namespace A292514.P15481016679141722450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292514.P15481016679141722450

/-! ## A292514.P4176306369888090980

`∑[A000005(∏{d}[A218025(n), #])]`
-/

namespace A292514.P4176306369888090980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292514.P4176306369888090980

/-!
# A292518: Expansion of Product_{k>=1} (1 - x^(k*(k+1)/2)).

The programs for A292518, there is no canonical definition to state claims against.
-/

/-! ## A292518.P11456404696162744487

`2*A339375(n)-A024940(n)`
-/

namespace A292518.P11456404696162744487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339375 n - A024940 n

end

end A292518.P11456404696162744487

/-! ## A292518.P10378474337829135876

`A005843(A339375(n))-A024940(n)`
-/

namespace A292518.P10378474337829135876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339375 n).toNat - A024940 n

end

end A292518.P10378474337829135876

/-! ## A292518.P4126831328410330255

`A339375(n)-A339376(n)`
-/

namespace A292518.P4126831328410330255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339375 n - A339376 n

end

end A292518.P4126831328410330255

/-! ## A292518.P6527794730628763771

`A024940(n)-2*A339376(n)`
-/

namespace A292518.P6527794730628763771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n - 2 * A339376 n

end

end A292518.P6527794730628763771

/-! ## A292518.P14724077798611573088

`A024940(n)-A005843(A339376(n))`
-/

namespace A292518.P14724077798611573088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n - A005843 (A339376 n).toNat

end

end A292518.P14724077798611573088

/-!
# A292519: Expansion of Product_{k>=1} 1/(1 + x^(k*(k+1)/2)).

The programs for A292519, there is no canonical definition to state claims against.
-/

/-! ## A292519.P8767958444435935754

`A007294(n)-2*A339374(n)`
-/

namespace A292519.P8767958444435935754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n - 2 * A339374 n

end

end A292519.P8767958444435935754

/-! ## A292519.P14438288869360768139

`∑[A303906(n)]-2*A339374(n)`
-/

namespace A292519.P14438288869360768139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339374 n

end

end A292519.P14438288869360768139

/-! ## A292519.P14160071963004615611

`A339373(n)-A339374(n)`
-/

namespace A292519.P14160071963004615611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339373 n - A339374 n

end

end A292519.P14160071963004615611

/-! ## A292519.P14389273294412196722

`2*A339373(n)-A007294(n)`
-/

namespace A292519.P14389273294412196722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339373 n - A007294 n

end

end A292519.P14389273294412196722

/-! ## A292519.P11634401163765168186

`2*A339373(n)-∑[A303906(n)]`
-/

namespace A292519.P11634401163765168186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339373 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292519.P11634401163765168186

/-! ## A292519.P9264915785186052634

`A007294(n)-A005843(A339374(n))`
-/

namespace A292519.P9264915785186052634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n - A005843 (A339374 n).toNat

end

end A292519.P9264915785186052634

/-! ## A292519.P7706669795198221556

`A005843(A339373(n))-A007294(n)`
-/

namespace A292519.P7706669795198221556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339373 n).toNat - A007294 n

end

end A292519.P7706669795198221556

/-! ## A292519.P6342257393418818493

`∑[A303906(n)]-A005843(A339374(n))`
-/

namespace A292519.P6342257393418818493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005843 (A339374 n).toNat

end

end A292519.P6342257393418818493

/-! ## A292519.P13050296738009296320

`A005843(A339373(n))-∑[A303906(n)]`
-/

namespace A292519.P13050296738009296320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339373 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292519.P13050296738009296320

/-!
# A292520: Expansion of Product_{k>=1} 1/(1 + x^(k^2)).

The programs for A292520, there is no canonical definition to state claims against.
-/

/-! ## A292520.P16365236594471876681

`A298600(n)-a(n-1)` with `a(0)=1`
-/

namespace A292520.P16365236594471876681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298600 n - a (n - 1)

end

end A292520.P16365236594471876681

/-! ## A292520.P6372413857885573170

`A339364(n)-A339365(n)`
-/

namespace A292520.P6372413857885573170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n - A339365 n

end

end A292520.P6372413857885573170

/-! ## A292520.P13772398985035330158

`2*A339364(n)-A001156(n)`
-/

namespace A292520.P13772398985035330158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339364 n - A001156 n

end

end A292520.P13772398985035330158

/-! ## A292520.P7028235371843262627

`A001156(n)-2*A339365(n)`
-/

namespace A292520.P7028235371843262627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - 2 * A339365 n

end

end A292520.P7028235371843262627

/-! ## A292520.P3054176986030476036

`A339364(n)+A057428(n)*A339365(n)`
-/

namespace A292520.P3054176986030476036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n + A057428 n * A339365 n

end

end A292520.P3054176986030476036

/-! ## A292520.P506721052760642321

`2*A339364(n)-A265260(A008586(n))`
-/

namespace A292520.P506721052760642321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339364 n - A265260 (A008586 n).toNat

end

end A292520.P506721052760642321

/-! ## A292520.P15737616876320022885

`A265260(A008586(n))-2*A339365(n)`
-/

namespace A292520.P15737616876320022885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A008586 n).toNat - 2 * A339365 n

end

end A292520.P15737616876320022885

/-! ## A292520.P9955887413191992756

`A001156(n)-A005843(A339365(n))`
-/

namespace A292520.P9955887413191992756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - A005843 (A339365 n).toNat

end

end A292520.P9955887413191992756

/-! ## A292520.P855673425039392883

`A005843(A339364(n))-A001156(n)`
-/

namespace A292520.P855673425039392883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339364 n).toNat - A001156 n

end

end A292520.P855673425039392883

/-! ## A292520.P5863796177330912001

`A265260(A008586(n))-A005843(A339365(n))`
-/

namespace A292520.P5863796177330912001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A008586 n).toNat - A005843 (A339365 n).toNat

end

end A292520.P5863796177330912001

/-! ## A292520.P17886711685207639224

`A005843(A339364(n))-A265260(A008586(n))`
-/

namespace A292520.P17886711685207639224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339364 n).toNat - A265260 (A008586 n).toNat

end

end A292520.P17886711685207639224

/-!
# A292521: a(n) = a(n-2) - 2a(n-3) + a(n-4) for n>3, with a(0)=2, a(1)=0, a(2)=1, a(3)=-1, a sequence related to Pellian numbers.

The programs for A292521, the canonical program `A292521.P17560249533653740863` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292521 has offset 0).

The definition of A292521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)-2*a(n-3)+a(n-4)` (program `A292521.P17560249533653740863`, by `A292521.P17560249533653740863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292521.P17560249533653740863

`a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=0, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292521

/-- `a(n-2)-2*a(n-3)+a(n-4)` -/
def P17560249533653740863.Spec : Prop :=
  ∀ n, P17560249533653740863.a n = A292521 n

theorem P17560249533653740863.correct : P17560249533653740863.Spec := by
  intro n
  simp only [A292521]

end A292521

/-! ## A292521.P2617617160481868715

`ogf((2-x^2+3x^3)/(1-x^2+2x^3-x^4))`
-/

namespace A292521.P2617617160481868715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, 3] [1, 0, -1, 2, -1] n

end

end A292521.P2617617160481868715

namespace A292521

/-- `ogf((2-x^2+3x^3)/(1-x^2+2x^3-x^4))` -/
def P2617617160481868715.Spec : Prop :=
  ∀ n, P2617617160481868715.a n = A292521 n

end A292521

/-! ## A292521.P12330032727179957165

`a(n-2)-xor(n²%3, a(n-1))` with `a(0)=2, a(1)=0`
-/

namespace A292521.P12330032727179957165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 2) - Int.xor ((n ^ 2 % 3 : ℕ) : ℤ) (a (n - 1))

end

end A292521.P12330032727179957165

namespace A292521

/-- `a(n-2)-xor(n²%3, a(n-1))` -/
def P12330032727179957165.Spec : Prop :=
  ∀ n, P12330032727179957165.a n = A292521 n

end A292521

/-! ## A292521.P2246381592805454293

`A292616(n)-A291660(n)`
-/

namespace A292521.P2246381592805454293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292616 n - A291660 n

end

end A292521.P2246381592805454293

namespace A292521

/-- `A292616(n)-A291660(n)` -/
def P2246381592805454293.Spec : Prop :=
  ∀ n, P2246381592805454293.a n = A292521 n

end A292521

/-! ## A292521.P1434716420310103943

`A286390(n)+2*A226447(n)`
-/

namespace A292521.P1434716420310103943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286390 n + 2 * A226447 n

end

end A292521.P1434716420310103943

namespace A292521

/-- `A286390(n)+2*A226447(n)` -/
def P1434716420310103943.Spec : Prop :=
  ∀ n, P1434716420310103943.a n = A292521 n

end A292521

/-! ## A292521.P18139187097064308396

`A292616(n)-(A286350(n)+A000032(n))`
-/

namespace A292521.P18139187097064308396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292616 n - (A286350 n + A000032 n)

end

end A292521.P18139187097064308396

namespace A292521

/-- `A292616(n)-(A286350(n)+A000032(n))` -/
def P18139187097064308396.Spec : Prop :=
  ∀ n, P18139187097064308396.a n = A292521 n

end A292521

/-!
# A292523: Decimal encoding T(n,k) of the k-th non-averaging permutation of [n]; triangle T(n,k), n >= 0, k = 1..A003407(n), read by rows.

The programs for A292523, there is no canonical definition to state claims against.
-/

/-! ## A292523.P17456006916732522305

`eq[A113581(n), A278162(A277711(n))]`
-/

namespace A292523.P17456006916732522305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (A277711 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292523.P17456006916732522305

/-!
# A292524: Interpret the values of the Moebius function mu(k) for k = 1 to n as a balanced ternary number.

The programs for A292524, the canonical program `A292524.P12952027970514968140` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292524 has offset 0).

The definition of A292524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292524.P12952027970514968140

`3*a(n-1)+A008683(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292524

/-- `3*a(n-1)+A008683(n)` -/
def P12952027970514968140.Spec : Prop :=
  ∀ n, P12952027970514968140.a n = A292524 n

theorem P12952027970514968140.correct : P12952027970514968140.Spec := by
  intro n
  simp only [A292524]

end A292524

/-! ## A292524.P9295925993762549996

`A162512(n)%2+3*a(n-1)` with `a(0)=0`
-/

namespace A292524.P9295925993762549996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A162512 n) 2 + 3 * a (n - 1)

end

end A292524.P9295925993762549996

namespace A292524

/-- `A162512(n)%2+3*a(n-1)` -/
def P9295925993762549996.Spec : Prop :=
  ∀ n, P9295925993762549996.a n = A292524 n

end A292524

/-! ## A292524.P8687925462154546537

`A289122(A004523(n)+A000244(n))`
-/

namespace A292524.P8687925462154546537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A004523 n + A000244 n).toNat

end

end A292524.P8687925462154546537

namespace A292524

/-- `A289122(A004523(n)+A000244(n))` -/
def P8687925462154546537.Spec : Prop :=
  ∀ n, P8687925462154546537.a n = A292524 n

end A292524

/-! ## A292524.P15206864079967562274

`A289122(A008624(n)+A000244(n))`
-/

namespace A292524.P15206864079967562274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A008624 n + A000244 n).toNat

end

end A292524.P15206864079967562274

namespace A292524

/-- `A289122(A008624(n)+A000244(n))` -/
def P15206864079967562274.Spec : Prop :=
  ∀ n, P15206864079967562274.a n = A292524 n

end A292524

/-! ## A292524.P5465732409192588527

`A289122(A011371(n)+A000244(n))`
-/

namespace A292524.P5465732409192588527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A011371 n + A000244 n).toNat

end

end A292524.P5465732409192588527

namespace A292524

/-- `A289122(A011371(n)+A000244(n))` -/
def P5465732409192588527.Spec : Prop :=
  ∀ n, P5465732409192588527.a n = A292524 n

end A292524

/-!
# A292530: Primes prime(k) such that neither prime(k) + prime(k-1) nor prime(k) + prime(k+1) is divisible by 3.

The programs for A292530, there is no canonical definition to state claims against.
-/

/-! ## A292530.P16749889471300174604

`A045319(A075541(n+1))`
-/

namespace A292530.P16749889471300174604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A075541 (n + 1)).toNat

end

end A292530.P16749889471300174604

/-! ## A292530.P4086283979988897199

`A051697(A298073(n+1))`
-/

namespace A292530.P4086283979988897199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A298073 (n + 1)).toNat

end

end A292530.P4086283979988897199

/-! ## A292530.P4028742567176332840

`A004139(A075541(n+1)-1)`
-/

namespace A292530.P4028742567176332840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A075541 (n + 1) - 1).toNat

end

end A292530.P4028742567176332840

/-! ## A292530.P4736923909563463911

`A051697(A075540(n+1)-1)`
-/

namespace A292530.P4736923909563463911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A075540 (n + 1) - 1).toNat

end

end A292530.P4736923909563463911

/-! ## A292530.P7835056368765385779

`A051698(A075540(n+1)-1)`
-/

namespace A292530.P7835056368765385779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A075540 (n + 1) - 1).toNat

end

end A292530.P7835056368765385779

/-! ## A292530.P6451476468104284402

`A101300(A054643(n+1)-2)`
-/

namespace A292530.P6451476468104284402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A054643 (n + 1) - 2).toNat

end

end A292530.P6451476468104284402

/-! ## A292530.P297385893629729949

`A000040(A075541(n+1)+ceil(sin(n)²))`
-/

namespace A292530.P297385893629729949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075541 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A292530.P297385893629729949

/-! ## A292530.P12764096165902478722

`A000040(A075541(n+1)+floor(atan(n+1)))`
-/

namespace A292530.P12764096165902478722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075541 (n + 1) + ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

end

end A292530.P12764096165902478722

/-! ## A292530.P4449170363927915912

`A000040(A075541(n+1)-floor(acot(n))+1)`
-/

namespace A292530.P4449170363927915912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075541 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1).toNat

end

end A292530.P4449170363927915912

/-! ## A292530.P4700439638497069938

`A000040(A075541(n+1)-(C(2, n+2)-1))`
-/

namespace A292530.P4700439638497069938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075541 (n + 1) - ((Nat.choose 2 (n + 2) : ℤ) - 1)).toNat

end

end A292530.P4700439638497069938

/-!
# A292531: a(n) = 0 if n is a power of 2. Otherwise, product of 2 numbers nearest n that have more 2's in their prime factorization than n.

The programs for A292531, there is no canonical definition to state claims against.
-/

/-! ## A292531.P7903316684653718063

`and(n*(n+2), (n+1)²)`
-/

namespace A292531.P7903316684653718063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n * (n + 2)) ((n + 1) ^ 2)

end

end A292531.P7903316684653718063

/-! ## A292531.P7154187903390614332

`(n+1)²-gcd(32, n+1)²`
-/

namespace A292531.P7154187903390614332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.gcd 32 (n + 1) ^ 2 : ℤ)

end

end A292531.P7154187903390614332

/-! ## A292531.P14922705011835595820

`(n+1)²-4^val(n+1, 2)`
-/

namespace A292531.P14922705011835595820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (4 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A292531.P14922705011835595820

/-! ## A292531.P3606743012653159898

`xor((n+1)², 4^val(n+1, 2))`
-/

namespace A292531.P3606743012653159898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 1) ^ 2) (4 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A292531.P3606743012653159898

/-! ## A292531.P12304690825307602622

`lcm(2, and((n+1)²-1, (n+1)²))`
-/

namespace A292531.P12304690825307602622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (((n + 1) ^ 2 : ℤ) - 1) ((n + 1) ^ 2 : ℤ))

end

end A292531.P12304690825307602622

/-! ## A292531.P11579141087470386102

`(n+1)²-and(n+1, -(n+1))²`
-/

namespace A292531.P11579141087470386102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 2

end

end A292531.P11579141087470386102

/-! ## A292531.P15245791995770874592

`(n+1)²-or(n+1, -(n+1))²`
-/

namespace A292531.P15245791995770874592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 2

end

end A292531.P15245791995770874592

/-! ## A292531.P11523791033749975934

`xor(and(n+1, -(n+1))², (n+1)²)`
-/

namespace A292531.P11523791033749975934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A292531.P11523791033749975934

/-! ## A292531.P17368218363167414588

`xor(or(n+1, -(n+1))², (n+1)²)`
-/

namespace A292531.P17368218363167414588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A292531.P17368218363167414588

/-! ## A292531.P8291644967009384830

`(n+1)²-(n+1-and(n, n+1))²`
-/

namespace A292531.P8291644967009384830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) ^ 2

end

end A292531.P8291644967009384830

/-!
# A292532: p-INVERT of the squares (A000290), where p(S) = 1 - S^3.

The programs for A292532, there is no canonical definition to state claims against.
-/

/-! ## A292532.P10802359883972166226

`∑[A289831(A318944(2*n))]`
-/

namespace A292532.P10802359883972166226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A318944 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292532.P10802359883972166226

/-! ## A292532.P17907788400651629495

`A027870(A208537(n+1)+27)`
-/

namespace A292532.P17907788400651629495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A208537 (n + 1) + 27).toNat

end

end A292532.P17907788400651629495

/-!
# A292533: p-INVERT of the squares (A000290), where p(S) = (1 - S)^2.

The programs for A292533, there is no canonical definition to state claims against.
-/

/-! ## A292533.P10826885739774666897

`A154447(A037653(n+1))`
-/

namespace A292533.P10826885739774666897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A037653 (n + 1)).toNat

end

end A292533.P10826885739774666897

/-!
# A292535: p-INVERT of the squares (A000290), where p(S) = 1 + S - 2 S^2.

The programs for A292535, there is no canonical definition to state claims against.
-/

/-! ## A292535.P4841666333858137454

`A248608(∑[A292759(n)-n])`
-/

namespace A292535.P4841666333858137454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292759 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292535.P4841666333858137454

/-!
# A292536: p-INVERT of the squares (A000290), where p(S) = 1 + S - 3 S^2.

The programs for A292536, there is no canonical definition to state claims against.
-/

/-! ## A292536.P10859381130012543675

`A110655(floor(sqrt(A162008(n+1))))`
-/

namespace A292536.P10859381130012543675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.sqrt (A162008 (n + 1))).toNat

end

end A292536.P10859381130012543675

/-!
# A292537: Number of cliques in the n-Sierpinski tetrahedron graph.

The programs for A292537, the canonical program `A292537.P4561215941280904564` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292537 has offset 1).

The definition of A292537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292537.P4561215941280904564

`5*a(n-1)-4*a(n-2)` with `a(0)=16, a(1)=59, a(2)=227`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292537

/-- `5*a(n-1)-4*a(n-2)` -/
def P4561215941280904564.Spec : Prop :=
  ∀ n, P4561215941280904564.a n = A292537 (n + 1)

theorem P4561215941280904564.correct : P4561215941280904564.Spec := by
  intro n
  simp only [A292537, Nat.add_sub_cancel]

end A292537

/-! ## A292537.P3468505968302472077

`4*or(1, a(n-1))-9` with `a(0)=16`
-/

namespace A292537.P3468505968302472077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  4 * Int.lor 1 (a (n - 1)) - 9

end

end A292537.P3468505968302472077

namespace A292537

/-- `4*or(1, a(n-1))-9` -/
def P3468505968302472077.Spec : Prop :=
  ∀ n, P3468505968302472077.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P17814883772973621761

`A280608(2*n+3)+2`
-/

namespace A292537.P17814883772973621761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280608 (2 * n + 3) + 2

end

end A292537.P17814883772973621761

namespace A292537

/-- `A280608(2*n+3)+2` -/
def P17814883772973621761.Spec : Prop :=
  ∀ n, P17814883772973621761.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P5571152721982373928

`xor(14*4^n+3, A000007(n))`
-/

namespace A292537.P5571152721982373928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (14 * 4 ^ n + 3 : ℤ) (A000007 n)

end

end A292537.P5571152721982373928

namespace A292537

/-- `xor(14*4^n+3, A000007(n))` -/
def P5571152721982373928.Spec : Prop :=
  ∀ n, P5571152721982373928.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P7942732591177190941

`A255176(n)+A206372(n)`
-/

namespace A292537.P7942732591177190941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n + A206372 n

end

end A292537.P7942732591177190941

namespace A292537

/-- `A255176(n)+A206372(n)` -/
def P7942732591177190941.Spec : Prop :=
  ∀ n, P7942732591177190941.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P407551368844794448

`A164285(2*n+1)-A000007(n)`
-/

namespace A292537.P407551368844794448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 (2 * n + 1) - A000007 n

end

end A292537.P407551368844794448

namespace A292537

/-- `A164285(2*n+1)-A000007(n)` -/
def P407551368844794448.Spec : Prop :=
  ∀ n, P407551368844794448.a n = A292537 (n + 1)

theorem P407551368844794448.correct : P407551368844794448.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A292537, Nat.add_sub_cancel, A292537.P407551368844794448.a, A292537.P4561215941280904564.a, A000007, A000007.P6599383543502402472.a, A164285, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      simp only [A292537, Nat.add_sub_cancel, A292537.P407551368844794448.a, A292537.P4561215941280904564.a, A000007, A000007.P6599383543502402472.a, A164285, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A292537

/-! ## A292537.P6872922852198692884

`A000302(n+2)-A091270(2*n)`
-/

namespace A292537.P6872922852198692884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 2) - A091270 (2 * n)

end

end A292537.P6872922852198692884

namespace A292537

/-- `A000302(n+2)-A091270(2*n)` -/
def P6872922852198692884.Spec : Prop :=
  ∀ n, P6872922852198692884.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P2910110908936972217

`A164285(2*n+1)-A243148(∑[n])`
-/

namespace A292537.P2910110908936972217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 (2 * n + 1) - A243148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292537.P2910110908936972217

namespace A292537

/-- `A164285(2*n+1)-A243148(∑[n])` -/
def P2910110908936972217.Spec : Prop :=
  ∀ n, P2910110908936972217.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P1592947880532033811

`A083686(2*n+1)+A036453(n+1)`
-/

namespace A292537.P1592947880532033811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 (2 * n + 1) + A036453 (n + 1)

end

end A292537.P1592947880532033811

namespace A292537

/-- `A083686(2*n+1)+A036453(n+1)` -/
def P1592947880532033811.Spec : Prop :=
  ∀ n, P1592947880532033811.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P17074701325995521764

`7*A004171(n)-A131575(2*n)+3`
-/

namespace A292537.P17074701325995521764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004171 n - A131575 (2 * n) + 3

end

end A292537.P17074701325995521764

namespace A292537

/-- `7*A004171(n)-A131575(2*n)+3` -/
def P17074701325995521764.Spec : Prop :=
  ∀ n, P17074701325995521764.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P6749805127976520880

`A086224(2*n+1)+A157532(n+1)+1`
-/

namespace A292537.P6749805127976520880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 (2 * n + 1) + (A157532 (n + 1) + 1)

end

end A292537.P6749805127976520880

namespace A292537

/-- `A086224(2*n+1)+A157532(n+1)+1` -/
def P6749805127976520880.Spec : Prop :=
  ∀ n, P6749805127976520880.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P7197743948618431909

`A005009(2*n+1)+A040001(2*n)+1`
-/

namespace A292537.P7197743948618431909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 (2 * n + 1) + (A040001 (2 * n) + 1)

end

end A292537.P7197743948618431909

namespace A292537

/-- `A005009(2*n+1)+A040001(2*n)+1` -/
def P7197743948618431909.Spec : Prop :=
  ∀ n, P7197743948618431909.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P3521602358584330796

`A111286(2*(n+1))+A083683(2*n)+2`
-/

namespace A292537.P3521602358584330796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (2 * (n + 1)) + (A083683 (2 * n) + 2)

end

end A292537.P3521602358584330796

namespace A292537

/-- `A111286(2*(n+1))+A083683(2*n)+2` -/
def P3521602358584330796.Spec : Prop :=
  ∀ n, P3521602358584330796.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P7890579120755572817

`8*n+4+A321483(2*n+1)-A008574(2*n)`
-/

namespace A292537.P7890579120755572817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) + (A321483 (2 * n + 1) - A008574 (2 * n))

end

end A292537.P7890579120755572817

namespace A292537

/-- `8*n+4+A321483(2*n+1)-A008574(2*n)` -/
def P7890579120755572817.Spec : Prop :=
  ∀ n, P7890579120755572817.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P13608214083438627015

`A006530(A001316(n))+A206372(n)+2`
-/

namespace A292537.P13608214083438627015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat + (A206372 n + 2)

end

end A292537.P13608214083438627015

namespace A292537

/-- `A006530(A001316(n))+A206372(n)+2` -/
def P13608214083438627015.Spec : Prop :=
  ∀ n, P13608214083438627015.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P12206380472669580845

`A083686(2*n+1)+A020639(A000010(n+2))`
-/

namespace A292537.P12206380472669580845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 (2 * n + 1) + A020639 (A000010 (n + 2)).toNat

end

end A292537.P12206380472669580845

namespace A292537

/-- `A083686(2*n+1)+A020639(A000010(n+2))` -/
def P12206380472669580845.Spec : Prop :=
  ∀ n, P12206380472669580845.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P15204472836225388937

`14*A000079(n)²+A001221(A303809(n+1))+2`
-/

namespace A292537.P15204472836225388937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A000079 n ^ 2 + (A001221 (A303809 (n + 1)).toNat + 2)

end

end A292537.P15204472836225388937

namespace A292537

/-- `14*A000079(n)²+A001221(A303809(n+1))+2` -/
def P15204472836225388937.Spec : Prop :=
  ∀ n, P15204472836225388937.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P1104760831722727222

`A020737(2*n+1)+A088039(2*n+1)+A020737(2*n)`
-/

namespace A292537.P1104760831722727222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 (2 * n + 1) + (A088039 (2 * n + 1) + A020737 (2 * n))

end

end A292537.P1104760831722727222

namespace A292537

/-- `A020737(2*n+1)+A088039(2*n+1)+A020737(2*n)` -/
def P1104760831722727222.Spec : Prop :=
  ∀ n, P1104760831722727222.a n = A292537 (n + 1)

end A292537

/-! ## A292537.P16666932519896929096

`Δ[A206373(n)+A008486(n)]`
-/

namespace A292537.P16666932519896929096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206373 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292537.P16666932519896929096

namespace A292537

/-- `Δ[A206373(n)+A008486(n)]` -/
def P16666932519896929096.Spec : Prop :=
  ∀ n, P16666932519896929096.a n = A292537 (n + 1)

end A292537

/-!
# A292538: Lucas-Carmichael numbers of the form k^2 - 1.

The programs for A292538, there is no canonical definition to state claims against.
-/

/-! ## A292538.P624274229376675113

`∩[A006972(n+1), A000466(n)]`
-/

namespace A292538.P624274229376675113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292538.P624274229376675113

/-! ## A292538.P2133596098730960052

`∩[A006972(n+1), A071311(n+1)]`
-/

namespace A292538.P2133596098730960052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292538.P2133596098730960052

/-! ## A292538.P7901438893486947977

`∩[A006972(n+1), A367335(n+1)]`
-/

namespace A292538.P7901438893486947977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292538.P7901438893486947977

/-! ## A292538.P8868193245447751867

`∩[A006972(n+1), A255602(n+1)*A255602(n+2)]`
-/

namespace A292538.P8868193245447751867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255602 (n + 1) * A255602 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292538.P8868193245447751867

/-! ## A292538.P1884315437322708112

`∩[A142717(A000040(n+1)), A006972(n+1)]`
-/

namespace A292538.P1884315437322708112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142717 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292538.P1884315437322708112

/-!
# A292539: Primes p1 such that p2 = 2p1 + 1 and p3 = p1*p2 - 2 are also primes, so p1*p2*p3 is a Lucas-Carmichael number of the form k^2 - 1.

The programs for A292539, there is no canonical definition to state claims against.
-/

/-! ## A292539.P1208241119074373061

`A348744(A235394(n+1)-A214263(n))`
-/

namespace A292539.P1208241119074373061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348744 (A235394 (n + 1) - A214263 n).toNat

end

end A292539.P1208241119074373061

/-! ## A292539.P14037271860944497865

`A101595(A345137(n+1)+A002182(n+1))`
-/

namespace A292539.P14037271860944497865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A345137 (n + 1) + A002182 (n + 1)).toNat

end

end A292539.P14037271860944497865

/-! ## A292539.P16080096206723584211

`A005384(lt[A027446(2*(n+1)), A278586(3*n+2)])`
-/

namespace A292539.P16080096206723584211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278586 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292539.P16080096206723584211

/-!
# A292540: Number of 3-cycles in the n-Sierpinski tetrahedron graph.

The programs for A292540, the canonical program `A292540.P6601651786785761081` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292540 has offset 1).

The definition of A292540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292540.P6601651786785761081

`4*a(n-1)` with `a(0)=4, a(1)=20`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292540

/-- `4*a(n-1)` -/
def P6601651786785761081.Spec : Prop :=
  ∀ n, (P6601651786785761081.a n : ℤ) = A292540 (n + 1)

theorem P6601651786785761081.correct : P6601651786785761081.Spec := by
  intro n
  simp only [A292540, Nat.add_sub_cancel]

end A292540

/-! ## A292540.P727793374660867880

`4*A003947(n)`
-/

namespace A292540.P727793374660867880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003947 n

end

end A292540.P727793374660867880

namespace A292540

/-- `4*A003947(n)` -/
def P727793374660867880.Spec : Prop :=
  ∀ n, P727793374660867880.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P16225294297726213371

`ogf((4+4x)/(1-4x))`
-/

namespace A292540.P16225294297726213371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, -4] n

end

end A292540.P16225294297726213371

namespace A292540

/-- `ogf((4+4x)/(1-4x))` -/
def P16225294297726213371.Spec : Prop :=
  ∀ n, P16225294297726213371.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P12390363442946122631

`and(5*4^n, -2)`
-/

namespace A292540.P12390363442946122631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * 4 ^ n : ℤ) (-2)

end

end A292540.P12390363442946122631

namespace A292540

/-- `and(5*4^n, -2)` -/
def P12390363442946122631.Spec : Prop :=
  ∀ n, P12390363442946122631.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P13014032679089213713

`abs(Δ[or(1, (-4)^n)])`
-/

namespace A292540.P13014032679089213713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-4) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A292540.P13014032679089213713

namespace A292540

/-- `abs(Δ[or(1, (-4)^n)])` -/
def P13014032679089213713.Spec : Prop :=
  ∀ n, P13014032679089213713.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P17784322840791765806

`or(1, 5*4^n)-1`
-/

namespace A292540.P17784322840791765806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * 4 ^ n) : ℤ) - 1

end

end A292540.P17784322840791765806

namespace A292540

/-- `or(1, 5*4^n)-1` -/
def P17784322840791765806.Spec : Prop :=
  ∀ n, P17784322840791765806.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P9195925232791604897

`xor(1, or(1, 5*4^n))`
-/

namespace A292540.P9195925232791604897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (5 * 4 ^ n))

end

end A292540.P9195925232791604897

namespace A292540

/-- `xor(1, or(1, 5*4^n))` -/
def P9195925232791604897.Spec : Prop :=
  ∀ n, (P9195925232791604897.a n : ℤ) = A292540 (n + 1)

end A292540

/-! ## A292540.P3712376788206471722

`4*floor(5*4^(n-1))`
-/

namespace A292540.P3712376788206471722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A292540.P3712376788206471722

namespace A292540

/-- `4*floor(5*4^(n-1))` -/
def P3712376788206471722.Spec : Prop :=
  ∀ n, P3712376788206471722.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P7070083881486547641

`a(n-1)/(1/2)²` with `a(0)=4, a(1)=20`
-/

namespace A292540.P7070083881486547641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 20] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A292540.P7070083881486547641

namespace A292540

/-- `a(n-1)/(1/2)²` -/
def P7070083881486547641.Spec : Prop :=
  ∀ n, P7070083881486547641.a n = (A292540 (n + 1) : ℚ)

end A292540

/-! ## A292540.P2250516636633602972

`Δ[A151794(Δ[n²])]`
-/

namespace A292540.P2250516636633602972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151794 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292540.P2250516636633602972

namespace A292540

/-- `Δ[A151794(Δ[n²])]` -/
def P2250516636633602972.Spec : Prop :=
  ∀ n, P2250516636633602972.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P7967420525803922878

`A051916(8*n+2)`
-/

namespace A292540.P7967420525803922878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051916 (8 * n + 2)

end

end A292540.P7967420525803922878

namespace A292540

/-- `A051916(8*n+2)` -/
def P7967420525803922878.Spec : Prop :=
  ∀ n, P7967420525803922878.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P4120943584289359413

`record[Δ[A290074(n+1)]]`
-/

namespace A292540.P4120943584289359413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292540.P4120943584289359413

namespace A292540

/-- `record[Δ[A290074(n+1)]]` -/
def P4120943584289359413.Spec : Prop :=
  ∀ n, P4120943584289359413.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P10973449047496453719

`record[Δ[A284354(n+2)]]`
-/

namespace A292540.P10973449047496453719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292540.P10973449047496453719

namespace A292540

/-- `record[Δ[A284354(n+2)]]` -/
def P10973449047496453719.Spec : Prop :=
  ∀ n, P10973449047496453719.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P9752935790510570907

`record[Δ[A134683(n+3)]]`
-/

namespace A292540.P9752935790510570907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292540.P9752935790510570907

namespace A292540

/-- `record[Δ[A134683(n+3)]]` -/
def P9752935790510570907.Spec : Prop :=
  ∀ n, P9752935790510570907.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P3160137000519192133

`A114743(A008458(n))`
-/

namespace A292540.P3160137000519192133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114743 (A008458 n).toNat

end

end A292540.P3160137000519192133

namespace A292540

/-- `A114743(A008458(n))` -/
def P3160137000519192133.Spec : Prop :=
  ∀ n, P3160137000519192133.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P416658682461102796

`A246074(A017569(n))`
-/

namespace A292540.P416658682461102796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (A017569 n).toNat

end

end A292540.P416658682461102796

namespace A292540

/-- `A246074(A017569(n))` -/
def P416658682461102796.Spec : Prop :=
  ∀ n, P416658682461102796.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P11566566786115613533

`A320674(A016933(n))`
-/

namespace A292540.P11566566786115613533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320674 (A016933 n).toNat

end

end A292540.P11566566786115613533

namespace A292540

/-- `A320674(A016933(n))` -/
def P11566566786115613533.Spec : Prop :=
  ∀ n, P11566566786115613533.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P11718500053289153299

`A164143(A130773(n+1))`
-/

namespace A292540.P11718500053289153299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164143 (A130773 (n + 1)).toNat

end

end A292540.P11718500053289153299

namespace A292540

/-- `A164143(A130773(n+1))` -/
def P11718500053289153299.Spec : Prop :=
  ∀ n, P11718500053289153299.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P10650009859717881900

`A114745(A270545(n+1))`
-/

namespace A292540.P10650009859717881900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114745 (A270545 (n + 1)).toNat

end

end A292540.P10650009859717881900

namespace A292540

/-- `A114745(A270545(n+1))` -/
def P10650009859717881900.Spec : Prop :=
  ∀ n, P10650009859717881900.a n = A292540 (n + 1)

end A292540

/-! ## A292540.P16461901946100259176

`A164143(A140139(n+2))`
-/

namespace A292540.P16461901946100259176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164143 (A140139 (n + 2)).toNat

end

end A292540.P16461901946100259176

namespace A292540

/-- `A164143(A140139(n+2))` -/
def P16461901946100259176.Spec : Prop :=
  ∀ n, P16461901946100259176.a n = A292540 (n + 1)

end A292540

/-!
# A292541: a(n) is n-th term of the Euler transform of -n,1,1,1,... .

The programs for A292541, there is no canonical definition to state claims against.
-/

/-! ## A292541.P13662798089107231218

`A281425(n)-a(n-1)` with `a(0)=1`
-/

namespace A292541.P13662798089107231218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281425 n - a (n - 1)

end

end A292541.P13662798089107231218

/-! ## A292541.P16253599215174613102

`∑[abs(A281425(n))]*A033999(n)`
-/

namespace A292541.P16253599215174613102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281425 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A292541.P16253599215174613102

/-! ## A292541.P1222699256992142919

`∑[abs(A281425(n))]*A034947(2*n+1)`
-/

namespace A292541.P1222699256992142919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281425 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034947 (2 * n + 1)

end

end A292541.P1222699256992142919

/-! ## A292541.P13792422609190124508

`A175804(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A292541.P13792422609190124508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175804 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A292541.P13792422609190124508

/-!
# A292542: Number of 4-cycles in the n-Sierpinski tetrahedron graph.

The programs for A292542, the canonical program `A292542.P2450089216566934147` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292542 has offset 1).

The definition of A292542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292542.P2450089216566934147

`4*a(n-1)` with `a(0)=3, a(1)=39`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292542

/-- `4*a(n-1)` -/
def P2450089216566934147.Spec : Prop :=
  ∀ n, (P2450089216566934147.a n : ℤ) = A292542 (n + 1)

theorem P2450089216566934147.correct : P2450089216566934147.Spec := by
  intro n
  simp only [A292542, Nat.add_sub_cancel]

end A292542

/-! ## A292542.P1388819304818227955

`ogf((3+27x)/(1-4x))`
-/

namespace A292542.P1388819304818227955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 27] [1, -4] n

end

end A292542.P1388819304818227955

namespace A292542

/-- `ogf((3+27x)/(1-4x))` -/
def P1388819304818227955.Spec : Prop :=
  ∀ n, P1388819304818227955.a n = A292542 (n + 1)

end A292542

/-! ## A292542.P4006081248462711875

`abs(∏[-a(n-1)])` with `a(0)=3, a(1)=13, a(2)=4`
-/

namespace A292542.P4006081248462711875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A292542.P4006081248462711875

namespace A292542

/-- `abs(∏[-a(n-1)])` -/
def P4006081248462711875.Spec : Prop :=
  ∀ n, P4006081248462711875.a n = A292542 (n + 1)

end A292542

/-! ## A292542.P1846101034041453373

`a(n-1)/(1/2)²` with `a(0)=3, a(1)=39`
-/

namespace A292542.P1846101034041453373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 39] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A292542.P1846101034041453373

namespace A292542

/-- `a(n-1)/(1/2)²` -/
def P1846101034041453373.Spec : Prop :=
  ∀ n, P1846101034041453373.a n = (A292542 (n + 1) : ℚ)

end A292542

/-! ## A292542.P13776296876979318401

`lcm(3, Δ[A267045(2*n)])`
-/

namespace A292542.P13776296876979318401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (n + 1) - f1 n)

end

end A292542.P13776296876979318401

namespace A292542

/-- `lcm(3, Δ[A267045(2*n)])` -/
def P13776296876979318401.Spec : Prop :=
  ∀ n, (P13776296876979318401.a n : ℤ) = A292542 (n + 1)

end A292542

/-! ## A292542.P7914823621178009014

`3*A160825(A008574(n))`
-/

namespace A292542.P7914823621178009014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160825 (A008574 n).toNat

end

end A292542.P7914823621178009014

namespace A292542

/-- `3*A160825(A008574(n))` -/
def P7914823621178009014.Spec : Prop :=
  ∀ n, P7914823621178009014.a n = A292542 (n + 1)

end A292542

/-! ## A292542.P16917797975717819002

`Δ[xor(2, A100206(A004273(n)))]`
-/

namespace A292542.P16917797975717819002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A100206 (A004273 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292542.P16917797975717819002

namespace A292542

/-- `Δ[xor(2, A100206(A004273(n)))]` -/
def P16917797975717819002.Spec : Prop :=
  ∀ n, P16917797975717819002.a n = A292542 (n + 1)

end A292542

/-! ## A292542.P53373973922809218

`A029746(2*n+1)²-A146523(2*n)`
-/

namespace A292542.P53373973922809218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * n + 1) ^ 2 - A146523 (2 * n)

end

end A292542.P53373973922809218

namespace A292542

/-- `A029746(2*n+1)²-A146523(2*n)` -/
def P53373973922809218.Spec : Prop :=
  ∀ n, P53373973922809218.a n = A292542 (n + 1)

end A292542

/-! ## A292542.P7547114625841017373

`(A029745(2*n+1)+A029745(2*(n+1)))*A029744(2*n+1)`
-/

namespace A292542.P7547114625841017373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029745 (2 * n + 1) + A029745 (2 * (n + 1))) * A029744 (2 * n + 1)

end

end A292542.P7547114625841017373

namespace A292542

/-- `(A029745(2*n+1)+A029745(2*(n+1)))*A029744(2*n+1)` -/
def P7547114625841017373.Spec : Prop :=
  ∀ n, P7547114625841017373.a n = A292542 (n + 1)

end A292542

/-!
# A292543: Number of 5-cycles in the n-Sierpinski tetrahedron graph.

The programs for A292543, the canonical program `A292543.P11035026203262550788` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292543 has offset 1).

The definition of A292543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292543.P11035026203262550788

`4*a(n-1)` with `a(0)=0, a(1)=96`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292543

/-- `4*a(n-1)` -/
def P11035026203262550788.Spec : Prop :=
  ∀ n, (P11035026203262550788.a n : ℤ) = A292543 (n + 1)

theorem P11035026203262550788.correct : P11035026203262550788.Spec := by
  intro n
  simp only [A292543, Nat.add_sub_cancel]

end A292543

/-! ## A292543.P7923382707606926435

`24*and(-2, 4^n)`
-/

namespace A292543.P7923382707606926435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * Int.land (-2) (4 ^ n : ℤ)

end

end A292543.P7923382707606926435

namespace A292543

/-- `24*and(-2, 4^n)` -/
def P7923382707606926435.Spec : Prop :=
  ∀ n, P7923382707606926435.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P2804557745365001555

`Δ[lcm(8, 3-4^n)]`
-/

namespace A292543.P2804557745365001555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (3 - (4 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A292543.P2804557745365001555

namespace A292543

/-- `Δ[lcm(8, 3-4^n)]` -/
def P2804557745365001555.Spec : Prop :=
  ∀ n, P2804557745365001555.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P667136057283665667

`48*floor(4^n/2)`
-/

namespace A292543.P667136057283665667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * ⌊(4 ^ n : ℚ) / 2⌋

end

end A292543.P667136057283665667

namespace A292543

/-- `48*floor(4^n/2)` -/
def P667136057283665667.Spec : Prop :=
  ∀ n, P667136057283665667.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P18356966825738705219

`a(n-1)/(1/2)²` with `a(0)=0, a(1)=96`
-/

namespace A292543.P18356966825738705219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 96] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A292543.P18356966825738705219

namespace A292543

/-- `a(n-1)/(1/2)²` -/
def P18356966825738705219.Spec : Prop :=
  ∀ n, P18356966825738705219.a n = (A292543 (n + 1) : ℚ)

end A292543

/-! ## A292543.P3446418839253749031

`Δ[or(24, A000225(2*n+3))]`
-/

namespace A292543.P3446418839253749031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 24 (A000225 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292543.P3446418839253749031

namespace A292543

/-- `Δ[or(24, A000225(2*n+3))]` -/
def P3446418839253749031.Spec : Prop :=
  ∀ n, P3446418839253749031.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P3504135393890480819

`A082505(lt[n², A110164(n)])`
-/

namespace A292543.P3504135393890480819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A292543.P3504135393890480819

namespace A292543

/-- `A082505(lt[n², A110164(n)])` -/
def P3504135393890480819.Spec : Prop :=
  ∀ n, P3504135393890480819.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P3174759550214159337

`Δ[A081294(gcd(n, A255177(n))+2)]`
-/

namespace A292543.P3174759550214159337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (Int.gcd (n : ℤ) (A255177 n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292543.P3174759550214159337

namespace A292543

/-- `Δ[A081294(gcd(n, A255177(n))+2)]` -/
def P3174759550214159337.Spec : Prop :=
  ∀ n, P3174759550214159337.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P18437364221449567491

`and(1-A289940(n+1), A002023(n+1))`
-/

namespace A292543.P18437364221449567491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A289940 (n + 1)) (A002023 (n + 1))

end

end A292543.P18437364221449567491

namespace A292543

/-- `and(1-A289940(n+1), A002023(n+1))` -/
def P18437364221449567491.Spec : Prop :=
  ∀ n, P18437364221449567491.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P12712048321495998514

`and(2-A095121(n+1), A002023(n+1))`
-/

namespace A292543.P12712048321495998514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A095121 (n + 1)) (A002023 (n + 1))

end

end A292543.P12712048321495998514

namespace A292543

/-- `and(2-A095121(n+1), A002023(n+1))` -/
def P12712048321495998514.Spec : Prop :=
  ∀ n, P12712048321495998514.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P6485910653242222804

`A002023(n+1)-A000007(n)*A002023(n+1)`
-/

namespace A292543.P6485910653242222804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 (n + 1) - A000007 n * A002023 (n + 1)

end

end A292543.P6485910653242222804

namespace A292543

/-- `A002023(n+1)-A000007(n)*A002023(n+1)` -/
def P6485910653242222804.Spec : Prop :=
  ∀ n, P6485910653242222804.a n = A292543 (n + 1)

theorem P6485910653242222804.correct : P6485910653242222804.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A292543, Nat.add_sub_cancel, A292543.P6485910653242222804.a, A292543.P11035026203262550788.a, A000007, A000007.P6599383543502402472.a, A002023, A002023.P733771793984427241.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A292543, Nat.add_sub_cancel, A292543.P6485910653242222804.a, A292543.P11035026203262550788.a, A000007, A000007.P6599383543502402472.a, A002023, A002023.P733771793984427241.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A292543

/-! ## A292543.P13596643963955375072

`Δ[A000225(2*n+3)]%A024049(n+2)`
-/

namespace A292543.P13596643963955375072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A024049 (n + 2))

end

end A292543.P13596643963955375072

namespace A292543

/-- `Δ[A000225(2*n+3)]%A024049(n+2)` -/
def P13596643963955375072.Spec : Prop :=
  ∀ n, P13596643963955375072.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P17701058847178775665

`Δ[2*A140513(A000124(n))²]`
-/

namespace A292543.P17701058847178775665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 (A000124 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292543.P17701058847178775665

namespace A292543

/-- `Δ[2*A140513(A000124(n))²]` -/
def P17701058847178775665.Spec : Prop :=
  ∀ n, P17701058847178775665.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P1106550795122069346

`and(A095121(2*n+1)*A289940(n+1), A002023(n+1))`
-/

namespace A292543.P1106550795122069346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 (2 * n + 1) * A289940 (n + 1)) (A002023 (n + 1))

end

end A292543.P1106550795122069346

namespace A292543

/-- `and(A095121(2*n+1)*A289940(n+1), A002023(n+1))` -/
def P1106550795122069346.Spec : Prop :=
  ∀ n, P1106550795122069346.a n = A292543 (n + 1)

end A292543

/-! ## A292543.P10175679966319429612

`A133572(2*n+5)%A133572(A151800(3*n+4))`
-/

namespace A292543.P10175679966319429612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133572 (2 * n + 5)) (A133572 (A151800 (3 * n + 4)).toNat)

end

end A292543.P10175679966319429612

namespace A292543

/-- `A133572(2*n+5)%A133572(A151800(3*n+4))` -/
def P10175679966319429612.Spec : Prop :=
  ∀ n, P10175679966319429612.a n = A292543 (n + 1)

end A292543

/-!
# A292544: Numbers h such that 2^phi(h) == phi(h) (mod h).

The programs for A292544, there is no canonical definition to state claims against.
-/

/-! ## A292544.P11192122919342474052

`A326417(A115392(n+1)*A178578(n))`
-/

namespace A292544.P11192122919342474052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (A115392 (n + 1) * A178578 n).toNat

end

end A292544.P11192122919342474052

/-!
# A292545: Number of 6-cycles in the n-Sierpinski tetrahedron graph.

The programs for A292545, the canonical program `A292545.P9833939973071535079` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292545 has offset 1).

The definition of A292545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292545.P9833939973071535079

`4*a(n-1)` with `a(0)=0, a(1)=218, a(2)=876`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292545

/-- `4*a(n-1)` -/
def P9833939973071535079.Spec : Prop :=
  ∀ n, (P9833939973071535079.a n : ℤ) = A292545 (n + 1)

theorem P9833939973071535079.correct : P9833939973071535079.Spec := by
  intro n
  simp only [A292545, Nat.add_sub_cancel]

end A292545

/-!
# A292547: Number of partitions of n into distinct odd cubes.

The programs for A292547, there is no canonical definition to state claims against.
-/

/-! ## A292547.P4328040689992548034

`A036987(A000118(n))+char[A290276(n+1)]`
-/

namespace A292547.P4328040689992548034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A000118 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292547.P4328040689992548034

/-! ## A292547.P3745804195503299952

`A036987(A151574(n))+char[A290276(n+1)]`
-/

namespace A292547.P3745804195503299952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A151574 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292547.P3745804195503299952

/-! ## A292547.P8164300904802326329

`A036987(A063320(n+2)+1)+char[A290276(n+1)]`
-/

namespace A292547.P8164300904802326329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A063320 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292547.P8164300904802326329

/-! ## A292547.P9270270933515298437

`A036987(A132758(n))+char[A290276(n+1)]`
-/

namespace A292547.P9270270933515298437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A132758 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292547.P9270270933515298437

/-! ## A292547.P5168453266565768181

`char[A290276(n+1)]+A008683((n+1)²)`
-/

namespace A292547.P5168453266565768181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A008683 ((n + 1) ^ 2)

end

end A292547.P5168453266565768181

/-! ## A292547.P18211699315499450505

`A036987(A309731(n+1))+char[A290276(n+1)]`
-/

namespace A292547.P18211699315499450505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A309731 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292547.P18211699315499450505

/-! ## A292547.P16454211038048548346

`A010057(n-A299908(n+1))`
-/

namespace A292547.P16454211038048548346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n : ℤ) - A299908 (n + 1)).toNat

end

end A292547.P16454211038048548346

/-! ## A292547.P10910863751098123279

`A010051(lcm(A163501(n+1), A323185(n+2)))`
-/

namespace A292547.P10910863751098123279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.lcm (A163501 (n + 1)) (A323185 (n + 2)))

end

end A292547.P10910863751098123279

/-! ## A292547.P14426187333300806334

`A010057(A278226(A004523(n)))`
-/

namespace A292547.P14426187333300806334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A278226 (A004523 n).toNat).toNat

end

end A292547.P14426187333300806334

/-! ## A292547.P4989707010184514675

`A010054(A330559(A016825(n))²)`
-/

namespace A292547.P4989707010184514675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A330559 (A016825 n).toNat ^ 2).toNat

end

end A292547.P4989707010184514675

/-! ## A292547.P13283629190172232303

`A010054(∑[A051162(n)*A103919(n)])`
-/

namespace A292547.P13283629190172232303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n * A103919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292547.P13283629190172232303

/-! ## A292547.P863394618226153430

`val(A028982(n+6), A002180(A291791(n+2)))`
-/

namespace A292547.P863394618226153430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028982 (n + 6)).toNat (A002180 (A291791 (n + 2)).toNat).toNat

end

end A292547.P863394618226153430

/-! ## A292547.P17031796594332670553

`val(A070265(A001597(n+2)), A093771(n+6))`
-/

namespace A292547.P17031796594332670553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A070265 (A001597 (n + 2)).toNat).toNat (A093771 (n + 6)).toNat

end

end A292547.P17031796594332670553

/-! ## A292547.P5933193559085566575

`A010052(xor(A000433(n+2), A053610(n+2)))`
-/

namespace A292547.P5933193559085566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.xor (A000433 (n + 2)) (A053610 (n + 2))).toNat

end

end A292547.P5933193559085566575

/-! ## A292547.P16908871188505934145

`A025446(A140267(n))`
-/

namespace A292547.P16908871188505934145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (A140267 n).toNat

end

end A292547.P16908871188505934145

/-! ## A292547.P14611986678580425318

`val(A343045(2*(n+1)), A087052(A343045(n+3)))`
-/

namespace A292547.P14611986678580425318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343045 (2 * (n + 1))).toNat (A087052 (A343045 (n + 3)).toNat).toNat

end

end A292547.P14611986678580425318

/-!
# A292548: Number of multisets of nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A292548, there is no canonical definition to state claims against.
-/

/-! ## A292548.P1682644852600048974

`A292712(∑[n+3])`
-/

namespace A292548.P1682644852600048974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292548.P1682644852600048974

/-! ## A292548.P1611532788812869445

`A292712(A055998(n+1))^ceil(sin(n)²)`
-/

namespace A292548.P1611532788812869445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292712 (A055998 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A292548.P1611532788812869445

/-! ## A292548.P10062997650678429817

`A292712(A055998(n+1))%A042172(n)`
-/

namespace A292548.P10062997650678429817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292712 (A055998 (n + 1)).toNat) (A042172 n)

end

end A292548.P10062997650678429817

/-! ## A292548.P17664572794337905579

`A292712(A055998(n+1))+A000038(n+1)`
-/

namespace A292548.P17664572794337905579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A292548.P17664572794337905579

/-! ## A292548.P5233227681741076991

`A292712(A027379(n+1))%A247721(n+1)`
-/

namespace A292548.P5233227681741076991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292712 (A027379 (n + 1)).toNat) (A247721 (n + 1))

end

end A292548.P5233227681741076991

/-! ## A292548.P9778238929242273134

`A292712(A055998(n+1))+C(n, A060926(n))`
-/

namespace A292548.P9778238929242273134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A055998 (n + 1)).toNat + (Nat.choose n (A060926 n).toNat : ℤ)

end

end A292548.P9778238929242273134

/-! ## A292548.P9115510082095761895

`A292712(A055998(n+1))+C(n, A060930(n))`
-/

namespace A292548.P9115510082095761895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A055998 (n + 1)).toNat + (Nat.choose n (A060930 n).toNat : ℤ)

end

end A292548.P9115510082095761895

/-! ## A292548.P2416158431687760125

`A014963(A000217(n+10))*A292712(A055998(n+1))`
-/

namespace A292548.P2416158431687760125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 10)).toNat * A292712 (A055998 (n + 1)).toNat

end

end A292548.P2416158431687760125

/-! ## A292548.P9208063252129959560

`A001222(A232237(n+1))*A292712(A055998(n+1))`
-/

namespace A292548.P9208063252129959560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A232237 (n + 1)).toNat * A292712 (A055998 (n + 1)).toNat

end

end A292548.P9208063252129959560

/-! ## A292548.P1026681999052747458

`A292712(A000217(2*n))*A292712(A055998(n+1))`
-/

namespace A292548.P1026681999052747458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (2 * n)).toNat * A292712 (A055998 (n + 1)).toNat

end

end A292548.P1026681999052747458

/-!
# A292549: Number of multisets of exactly n nonempty binary words with a total of 2n letters such that no word has a majority of 0's.

The programs for A292549, there is no canonical definition to state claims against.
-/

/-! ## A292549.P17983860711807314239

`A292506(∑[4*n])`
-/

namespace A292549.P17983860711807314239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292549.P17983860711807314239

/-! ## A292549.P1043597379811116963

`record[A292506(n*A028242(n))]`
-/

namespace A292549.P1043597379811116963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292549.P1043597379811116963

/-! ## A292549.P10428376461472275794

`A292506(A014105(n)+n)%A042662(n)`
-/

namespace A292549.P10428376461472275794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292506 (A014105 n + (n : ℤ)).toNat) (A042662 n)

end

end A292549.P10428376461472275794

/-! ## A292549.P6854731972911040873

`A292506(A106232(n+1))%A240888(n+1)`
-/

namespace A292549.P6854731972911040873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292506 (A106232 (n + 1)).toNat) (A240888 (n + 1))

end

end A292549.P6854731972911040873

/-! ## A292549.P402716035509228773

`A228147(A000217(n))*A292506(A014105(n)+n)`
-/

namespace A292549.P402716035509228773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228147 (A000217 n).toNat * A292506 (A014105 n + (n : ℤ)).toNat

end

end A292549.P402716035509228773

/-! ## A292549.P17267455770187475667

`record[A292506(A000982(n))]`
-/

namespace A292549.P17267455770187475667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292549.P17267455770187475667

/-! ## A292549.P12395383489362388828

`record[A292506(A001971(n))]`
-/

namespace A292549.P12395383489362388828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292549.P12395383489362388828

/-! ## A292549.P4277344591731610729

`record[A292506(n*A000122(n))]`
-/

namespace A292549.P4277344591731610729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 ((n : ℤ) * A000122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292549.P4277344591731610729

/-! ## A292549.P4621653701942007882

`record[A292506(A014105(n)+2+n)]`
-/

namespace A292549.P4621653701942007882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A014105 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292549.P4621653701942007882

/-! ## A292549.P1906104994315391382

`record[A292506(A058331(n)+Δ[n²])]`
-/

namespace A292549.P1906104994315391382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A058331 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292549.P1906104994315391382

/-!
# A292551: Expansion of x*(1 - 2*x + x^2 + 7*x^3 - x^4)/((1 - x)^4*(1 + x)^3).

The programs for A292551, the canonical program `A292551.P8875257464476525026` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292551 has offset 0).

The definition of A292551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3+7x^4-x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` (program `A292551.P8875257464476525026`, by `A292551.P8875257464476525026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292551.P8875257464476525026

`ogf((x-2x^2+x^3+7x^4-x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292551

/-- `ogf((x-2x^2+x^3+7x^4-x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P8875257464476525026.Spec : Prop :=
  ∀ n, P8875257464476525026.a n = A292551 n

theorem P8875257464476525026.correct : P8875257464476525026.Spec := by
  intro n
  simp only [A292551]

end A292551

/-! ## A292551.P4073534425780061308

`A317300(n)+A290168(n)`
-/

namespace A292551.P4073534425780061308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A290168 n

end

end A292551.P4073534425780061308

namespace A292551

/-- `A317300(n)+A290168(n)` -/
def P4073534425780061308.Spec : Prop :=
  ∀ n, P4073534425780061308.a n = A292551 n

end A292551

/-! ## A292551.P14301876242598475645

`A001057(n)+(3*n)%(n+1)*∑[A142150(n)]`
-/

namespace A292551.P14301876242598475645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + ((3 * n % (n + 1) : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292551.P14301876242598475645

namespace A292551

/-- `A001057(n)+(3*n)%(n+1)*∑[A142150(n)]` -/
def P14301876242598475645.Spec : Prop :=
  ∀ n, P14301876242598475645.a n = A292551 n

end A292551

/-! ## A292551.P18126805236290162136

`A131475(n)+A317300(n)-A111384(n)`
-/

namespace A292551.P18126805236290162136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131475 n + (A317300 n - A111384 n)

end

end A292551.P18126805236290162136

namespace A292551

/-- `A131475(n)+A317300(n)-A111384(n)` -/
def P18126805236290162136.Spec : Prop :=
  ∀ n, P18126805236290162136.a n = A292551 n

end A292551

/-! ## A292551.P9925133274508752742

`A317300(n)+A029579(n)*A123596(n)`
-/

namespace A292551.P9925133274508752742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A029579 n * A123596 n

end

end A292551.P9925133274508752742

namespace A292551

/-- `A317300(n)+A029579(n)*A123596(n)` -/
def P9925133274508752742.Spec : Prop :=
  ∀ n, P9925133274508752742.a n = A292551 n

end A292551

/-! ## A292551.P3546395917243619006

`A290168(n)-A174474(n+1)`
-/

namespace A292551.P3546395917243619006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290168 n - A174474 (n + 1)

end

end A292551.P3546395917243619006

namespace A292551

/-- `A290168(n)-A174474(n+1)` -/
def P3546395917243619006.Spec : Prop :=
  ∀ n, P3546395917243619006.a n = A292551 n

end A292551

/-! ## A292551.P17364650338446145411

`A317300(n)+A060423(n+1)+A080838(n+2)-A080838(n+1)`
-/

namespace A292551.P17364650338446145411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + (A060423 (n + 1) + (A080838 (n + 2) - A080838 (n + 1)))

end

end A292551.P17364650338446145411

namespace A292551

/-- `A317300(n)+A060423(n+1)+A080838(n+2)-A080838(n+1)` -/
def P17364650338446145411.Spec : Prop :=
  ∀ n, P17364650338446145411.a n = A292551 n

end A292551

/-! ## A292551.P8329919551598904819

`A303301(∑[4*n])`
-/

namespace A292551.P8329919551598904819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292551.P8329919551598904819

namespace A292551

/-- `A303301(∑[4*n])` -/
def P8329919551598904819.Spec : Prop :=
  ∀ n, P8329919551598904819.a n = A292551 n

end A292551

/-! ## A292551.P11669808095337483537

`or(char[1], A303301(A046092(n)))`
-/

namespace A292551.P11669808095337483537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303301 (A046092 n).toNat)

end

end A292551.P11669808095337483537

namespace A292551

/-- `or(char[1], A303301(A046092(n)))` -/
def P11669808095337483537.Spec : Prop :=
  ∀ n, P11669808095337483537.a n = A292551 n

end A292551

/-! ## A292551.P17780286622610897334

`A303301(A046092(n))%A001288(n)`
-/

namespace A292551.P17780286622610897334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303301 (A046092 n).toNat) (A001288 (n + 11))

end

end A292551.P17780286622610897334

namespace A292551

/-- `A303301(A046092(n))%A001288(n)` -/
def P17780286622610897334.Spec : Prop :=
  ∀ n, P17780286622610897334.a n = A292551 n

end A292551

/-! ## A292551.P3806949430046308803

`A303301(A046092(n))+A035363(2*n+1)`
-/

namespace A292551.P3806949430046308803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (A046092 n).toNat + A035363 (2 * n + 1)

end

end A292551.P3806949430046308803

namespace A292551

/-- `A303301(A046092(n))+A035363(2*n+1)` -/
def P3806949430046308803.Spec : Prop :=
  ∀ n, P3806949430046308803.a n = A292551 n

end A292551

/-!
# A292552: Nontotients of the form 10^k - 2.

The programs for A292552, there is no canonical definition to state claims against.
-/

/-! ## A292552.P3108902079744242445

`10^(n+2)-2`
-/

namespace A292552.P3108902079744242445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 2) : ℤ) - 2

end

end A292552.P3108902079744242445

/-! ## A292552.P12967407505897294974

`abs(or(2, -10^(n+2)))`
-/

namespace A292552.P12967407505897294974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-(10 ^ (n + 2) : ℤ))|

end

end A292552.P12967407505897294974

/-! ## A292552.P6384855587503065379

`-or(2, -10^(n+2))`
-/

namespace A292552.P6384855587503065379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(10 ^ (n + 2) : ℤ))

end

end A292552.P6384855587503065379

/-! ## A292552.P12935287274816526611

`abs(xor(2, -10^(n+2)))`
-/

namespace A292552.P12935287274816526611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (-(10 ^ (n + 2) : ℤ))|

end

end A292552.P12935287274816526611

/-! ## A292552.P4433880846295322957

`-xor(2, -10^(n+2))`
-/

namespace A292552.P4433880846295322957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-(10 ^ (n + 2) : ℤ))

end

end A292552.P4433880846295322957

/-!
# A292553: Number of rooted unlabeled trees on n nodes where each node has at most 8 children.

The programs for A292553, there is no canonical definition to state claims against.
-/

/-! ## A292553.P8178354256345526168

`A299038(A000217(n+9)-9)`
-/

namespace A292553.P8178354256345526168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000217 (n + 9) - 9).toNat

end

end A292553.P8178354256345526168

/-! ## A292553.P3604746743181311097

`A299038(2*n+9+A000096(n+6))`
-/

namespace A292553.P3604746743181311097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 ((2 * n + 9 : ℤ) + A000096 (n + 6)).toNat

end

end A292553.P3604746743181311097

/-! ## A292553.P8514011681104481868

`A299038(A167499(n+5)+3*n+10)`
-/

namespace A292553.P8514011681104481868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A167499 (n + 5) + (3 * n + 10 : ℤ)).toNat

end

end A292553.P8514011681104481868

/-! ## A292553.P13572834028824466686

`A299038(A055998(n+5)+A020735(n+4))`
-/

namespace A292553.P13572834028824466686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 (n + 5) + A020735 (n + 4)).toNat

end

end A292553.P13572834028824466686

/-! ## A292553.P9489955335184932339

`A299038(A008586(n+5)+A000124(n+5))`
-/

namespace A292553.P9489955335184932339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A008586 (n + 5) + A000124 (n + 5)).toNat

end

end A292553.P9489955335184932339

/-!
# A292554: Number of rooted unlabeled trees on n nodes where each node has at most 9 children.

The programs for A292554, there is no canonical definition to state claims against.
-/

/-! ## A292554.P15234336229551420552

`A299038(A056000(n+6))`
-/

namespace A292554.P15234336229551420552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A056000 (n + 6)).toNat

end

end A292554.P15234336229551420552

/-! ## A292554.P17388367604170792237

`A299038(A034856(n+9)-8)`
-/

namespace A292554.P17388367604170792237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A034856 (n + 9) - 8).toNat

end

end A292554.P17388367604170792237

/-! ## A292554.P5709746151505536509

`A299038(A000217(n+10)-10)`
-/

namespace A292554.P5709746151505536509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000217 (n + 10) - 10).toNat

end

end A292554.P5709746151505536509

/-! ## A292554.P3810773846690762453

`A299038(A167499(n+6)+3*(n+4))`
-/

namespace A292554.P3810773846690762453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A167499 (n + 6) + (3 * (n + 4) : ℤ)).toNat

end

end A292554.P3810773846690762453

/-! ## A292554.P15966093472011808918

`A299038(A016777(n+5)+A000124(n+7))`
-/

namespace A292554.P15966093472011808918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A016777 (n + 5) + A000124 (n + 7)).toNat

end

end A292554.P15966093472011808918

/-! ## A292554.P5321329024669534430

`A299038(eq[9, A025581(n)])`
-/

namespace A292554.P5321329024669534430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292554.P5321329024669534430

/-!
# A292555: Number of rooted unlabeled trees on n nodes where each node has at most 10 children.

The programs for A292555, there is no canonical definition to state claims against.
-/

/-! ## A292555.P15489967478584015392

`A299038(A056000(n+7)-1)`
-/

namespace A292555.P15489967478584015392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A056000 (n + 7) - 1).toNat

end

end A292555.P15489967478584015392

/-! ## A292555.P10804622325724717481

`A299038(A155212(n+7)-3)`
-/

namespace A292555.P10804622325724717481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A155212 (n + 7) - 3).toNat

end

end A292555.P10804622325724717481

/-! ## A292555.P628478351661728322

`A299038(A055998(n+7)+A020735(n+5))`
-/

namespace A292555.P628478351661728322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 (n + 7) + A020735 (n + 5)).toNat

end

end A292555.P628478351661728322

/-! ## A292555.P10032980355171766250

`A299038(A055998(n+7)+A005408(n+6))`
-/

namespace A292555.P10032980355171766250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 (n + 7) + A005408 (n + 6)).toNat

end

end A292555.P10032980355171766250

/-! ## A292555.P7655781713181689684

`A299038(A016777(n+6)+A000217(n+8))`
-/

namespace A292555.P7655781713181689684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A016777 (n + 6) + A000217 (n + 8)).toNat

end

end A292555.P7655781713181689684

/-!
# A292556: Number of rooted unlabeled trees on n nodes where each node has at most 11 children.

The programs for A292556, there is no canonical definition to state claims against.
-/

/-! ## A292556.P9016550522152393662

`A299038(eq[11, A025581(n)])`
-/

namespace A292556.P9016550522152393662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292556.P9016550522152393662

/-! ## A292556.P2649683862245961320

`A299038(A046691(n+10)-8)`
-/

namespace A292556.P2649683862245961320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A046691 (n + 10) - 8).toNat

end

end A292556.P2649683862245961320

/-! ## A292556.P11810925952870553098

`A299038(A034856(n+11)-10)`
-/

namespace A292556.P11810925952870553098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A034856 (n + 11) - 10).toNat

end

end A292556.P11810925952870553098

/-! ## A292556.P3433313539592508879

`A299038(A000217(n+12)-12)`
-/

namespace A292556.P3433313539592508879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000217 (n + 12) - 12).toNat

end

end A292556.P3433313539592508879

/-! ## A292556.P18289650565117677945

`A299038(eq[12, A004736(n+1)])`
-/

namespace A292556.P18289650565117677945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292556.P18289650565117677945

/-! ## A292556.P3551970171197464429

`A299038(A167499(n+8)+A016777(n+5))`
-/

namespace A292556.P3551970171197464429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A167499 (n + 8) + A016777 (n + 5)).toNat

end

end A292556.P3551970171197464429

/-!
# A292557: a(n) is the smallest number k such that 2k - sigma(k) = 2^n.

The programs for A292557, there is no canonical definition to state claims against.
-/

/-! ## A292557.P11954141071189071534

`A217769(2^n)`
-/

namespace A292557.P11954141071189071534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217769 (2 ^ n)

end

end A292557.P11954141071189071534

/-! ## A292557.P5409174421778184466

`A217769(A000079(n))+char[10]`
-/

namespace A292557.P5409174421778184466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217769 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292557.P5409174421778184466

/-! ## A292557.P3240830868026395518

`A217769(A051535(n))+char[12]`
-/

namespace A292557.P3240830868026395518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217769 (A051535 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292557.P3240830868026395518

/-! ## A292557.P3493495380040693933

`A280508(n)+A217769(A000079(n))`
-/

namespace A292557.P3493495380040693933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n + A217769 (A000079 n).toNat

end

end A292557.P3493495380040693933

/-! ## A292557.P13998124775725154149

`A067059(n)*A217769(A000079(n))`
-/

namespace A292557.P13998124775725154149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A217769 (A000079 n).toNat

end

end A292557.P13998124775725154149

/-!
# A292558: a(n) is the smallest number k such that sigma(k) - 2k = 2^n.

The programs for A292558, there is no canonical definition to state claims against.
-/

/-! ## A292558.P9887276553546850524

`A087998(2^n)`
-/

namespace A292558.P9887276553546850524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087998 (2 ^ n)

end

end A292558.P9887276553546850524

/-! ## A292558.P8167163727922627889

`A082731(2^(n+1))`
-/

namespace A292558.P8167163727922627889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 ^ (n + 1))

end

end A292558.P8167163727922627889

/-! ## A292558.P1101224488308400337

`lcm(2, A087998(A000079(n)))`
-/

namespace A292558.P1101224488308400337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087998 (A000079 n).toNat)

end

end A292558.P1101224488308400337

/-! ## A292558.P14662450502111882168

`∑{digits}[n, A087998(A000079(#))]`
-/

namespace A292558.P14662450502111882168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A087998 (A000079 x).toNat).sum

end

end A292558.P14662450502111882168

/-!
# A292559: Composite numbers m such that lpf(2^m - 1) == 1 (mod m).

The programs for A292559, there is no canonical definition to state claims against.
-/

/-! ## A292559.P15696644512975336439

`A322568(n+1)-A051584(A000083(n))`
-/

namespace A292559.P15696644512975336439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (n + 1) - A051584 (A000083 n).toNat

end

end A292559.P15696644512975336439

/-! ## A292559.P222836436889854507

`A350381(C(∏{p}[n+1, #]^∏{e}[n+1, #], n))`
-/

namespace A292559.P222836436889854507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (Nat.choose ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) n)

end

end A292559.P222836436889854507

/-! ## A292559.P11520191708219906868

`A350381(A185095(∑[n]))`
-/

namespace A292559.P11520191708219906868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350381 (A185095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A292559.P11520191708219906868

/-! ## A292559.P15611155291678318156

`A322568(A043316(n+1))`
-/

namespace A292559.P15611155291678318156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (A043316 (n + 1)).toNat

end

end A292559.P15611155291678318156

/-! ## A292559.P17324313119302572431

`A322568(A044913(n+1))`
-/

namespace A292559.P17324313119302572431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322568 (A044913 (n + 1)).toNat

end

end A292559.P17324313119302572431

/-!
# A292560: Expansion of Product_{k>=1} 1/(1 + x^(k^3)).

The programs for A292560, there is no canonical definition to state claims against.
-/

/-! ## A292560.P17080541325359140324

`A003108(n)-2*A339369(n)`
-/

namespace A292560.P17080541325359140324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n - 2 * A339369 n

end

end A292560.P17080541325359140324

/-! ## A292560.P17849785558805751784

`A339368(n)-A339369(n)`
-/

namespace A292560.P17849785558805751784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339368 n - A339369 n

end

end A292560.P17849785558805751784

/-! ## A292560.P3136631511377144305

`2*A339368(n)-A003108(n)`
-/

namespace A292560.P3136631511377144305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339368 n - A003108 n

end

end A292560.P3136631511377144305

/-! ## A292560.P10256826682110726003

`A339368(n)+A057428(n)*A339369(n)`
-/

namespace A292560.P10256826682110726003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339368 n + A057428 n * A339369 n

end

end A292560.P10256826682110726003

/-! ## A292560.P18211649072174323063

`A005843(A339368(n))-A003108(n)`
-/

namespace A292560.P18211649072174323063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339368 n).toNat - A003108 n

end

end A292560.P18211649072174323063

/-! ## A292560.P4392076086405096394

`A003108(n)-A005843(A339369(n))`
-/

namespace A292560.P4392076086405096394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n - A005843 (A339369 n).toNat

end

end A292560.P4392076086405096394

/-!
# A292561: Expansion of Product_{k>=1} (1 - mu(k)^2*x^k), where mu() is the Moebius function (A008683).

The programs for A292561, there is no canonical definition to state claims against.
-/

/-! ## A292561.P13877988967317334178

`A213266(∑[A152846(n)^n])`
-/

namespace A292561.P13877988967317334178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152846 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292561.P13877988967317334178

/-! ## A292561.P15747138985742483516

`A182038(n+1)+A000007(A075427(n))`
-/

namespace A292561.P15747138985742483516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (n + 1) + A000007 (A075427 n).toNat

end

end A292561.P15747138985742483516

/-! ## A292561.P770403178303810368

`A185203(A185203(n))+A182038(n+1)`
-/

namespace A292561.P770403178303810368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 (A185203 n).toNat + A182038 (n + 1)

end

end A292561.P770403178303810368

/-! ## A292561.P10258369679569046397

`A182038(n+1)%A123288(A070914(n))`
-/

namespace A292561.P10258369679569046397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182038 (n + 1)) (A123288 ((A070914 n).toNat + 62))

end

end A292561.P10258369679569046397

/-! ## A292561.P4446989408661763679

`A182038(n+1)+A000007(A003373(n+1))`
-/

namespace A292561.P4446989408661763679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (n + 1) + A000007 (A003373 (n + 1)).toNat

end

end A292561.P4446989408661763679

/-!
# A292563: Expansion of Product_{k>=1} (1 + x^((2*k-1)^3)) / (1 - x^((2*k-1)^3)).

The programs for A292563, there is no canonical definition to state claims against.
-/

/-! ## A292563.P15677970461969295935

`∑[A087780(A101278(n))]`
-/

namespace A292563.P15677970461969295935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A101278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292563.P15677970461969295935

/-! ## A292563.P11416987540801264161

`A087780(A101278(n%(n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A292563.P11416987540801264161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087780 (A101278 (n % (n + 1))).toNat + a (n - 1)

end

end A292563.P11416987540801264161

/-! ## A292563.P7191292296877742293

`A087780(A101278(n))+a(A023443(n))` with `a(0)=1`
-/

namespace A292563.P7191292296877742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087780 (A101278 n).toNat + a (A023443 n).toNat

end

end A292563.P7191292296877742293

/-! ## A292563.P6356311360769845486

`A087780(A101278(n))+A028310(a(n-1))` with `a(0)=1`
-/

namespace A292563.P6356311360769845486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087780 (A101278 n).toNat + A028310 (a (n - 1)).toNat

end

end A292563.P6356311360769845486

/-! ## A292563.P7789657080233181222

`A328273(a(n-1))+A087780(A101278(n))` with `a(0)=1`
-/

namespace A292563.P7789657080233181222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328273 (a (n - 1)).toNat + A087780 (A101278 n).toNat

end

end A292563.P7789657080233181222

/-! ## A292563.P13118967104465076172

`A087780(A101278(n))+A004918(a(n-1)+1)` with `a(0)=1`
-/

namespace A292563.P13118967104465076172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087780 (A101278 n).toNat + A004918 (a (n - 1) + 1).toNat

end

end A292563.P13118967104465076172

/-! ## A292563.P1610783772146989145

`A087780(A101278(n))+a(n-1)-A000007(n)` with `a(0)=1`
-/

namespace A292563.P1610783772146989145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087780 (A101278 n).toNat + a (n - 1) - A000007 n

end

end A292563.P1610783772146989145

/-! ## A292563.P11006477718305048705

`a(n-1)+A087780(A101278(n))/A178489(n)` with `a(0)=1`
-/

namespace A292563.P11006477718305048705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A087780 (A101278 n).toNat : ℚ) / (A178489 n : ℚ)

end

end A292563.P11006477718305048705

/-! ## A292563.P6114122211267660509

`A000010(a(n-1)+A048766(n)%A177763(n+2))` with `a(0)=1, a(1)=2`
-/

namespace A292563.P6114122211267660509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (a (n - 1) + Int.tmod (A048766 n) (A177763 (n + 2))).toNat

end

end A292563.P6114122211267660509

/-! ## A292563.P1305570419923515577

`∑[A167964(2*(n+1))*A292547(n)]`
-/

namespace A292563.P1305570419923515577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (2 * (n + 1)) * A292547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292563.P1305570419923515577

/-!
# A292564: Take 1, skip 3 * 1 - 1, take 2, skip 3 * 2 - 1, take 3, skip 3 * 3 - 1, ...

The programs for A292564, the canonical program `A292564.P2893045278951774881` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292564 has offset 0).

The definition of A292564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292564.P2893045278951774881

`n+floor((sqrt(8*n+1)-1)/2)*(3*floor((sqrt(8*n+1)-1)/2)+1)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292564

/-- `n+floor((sqrt(8*n+1)-1)/2)*(3*floor((sqrt(8*n+1)-1)/2)+1)/2` -/
def P2893045278951774881.Spec : Prop :=
  ∀ n, P2893045278951774881.a n = (A292564 n : ℚ)

end A292564

/-! ## A292564.P11363304676356094662

`A061887(A061885(n))`
-/

namespace A292564.P11363304676356094662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 (A061885 n).toNat

end

end A292564.P11363304676356094662

namespace A292564

/-- `A061887(A061885(n))` -/
def P11363304676356094662.Spec : Prop :=
  ∀ n, P11363304676356094662.a n = A292564 n

end A292564

/-! ## A292564.P8686027477898223746

`A161983(A063656(n))`
-/

namespace A292564.P8686027477898223746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (A063656 n).toNat

end

end A292564.P8686027477898223746

namespace A292564

/-- `A161983(A063656(n))` -/
def P8686027477898223746.Spec : Prop :=
  ∀ n, P8686027477898223746.a n = A292564 n

end A292564

/-! ## A292564.P17324647059490042152

`A061887(A057944(n)+n)`
-/

namespace A292564.P17324647059490042152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 (A057944 n + (n : ℤ)).toNat

end

end A292564.P17324647059490042152

namespace A292564

/-- `A061887(A057944(n)+n)` -/
def P17324647059490042152.Spec : Prop :=
  ∀ n, P17324647059490042152.a n = A292564 n

end A292564

/-! ## A292564.P8006945807310700463

`∩[A061887(n), A161983(n)]`
-/

namespace A292564.P8006945807310700463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292564.P8006945807310700463

namespace A292564

/-- `∩[A061887(n), A161983(n)]` -/
def P8006945807310700463.Spec : Prop :=
  ∀ n, (P8006945807310700463.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P12043955275024325

`A061887(A004201(n+1)-1)`
-/

namespace A292564.P12043955275024325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 (A004201 (n + 1) - 1).toNat

end

end A292564.P12043955275024325

namespace A292564

/-- `A061887(A004201(n+1)-1)` -/
def P12043955275024325.Spec : Prop :=
  ∀ n, P12043955275024325.a n = A292564 n

end A292564

/-! ## A292564.P7776329425497801055

`A061887(2*n-A002262(n))`
-/

namespace A292564.P7776329425497801055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 ((2 * n : ℤ) - A002262 n).toNat

end

end A292564.P7776329425497801055

namespace A292564

/-- `A061887(2*n-A002262(n))` -/
def P7776329425497801055.Spec : Prop :=
  ∀ n, P7776329425497801055.a n = A292564 n

end A292564

/-! ## A292564.P7784889936805390386

`eq[A060097(n), A079409(n)]`
-/

namespace A292564.P7784889936805390386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P7784889936805390386

namespace A292564

/-- `eq[A060097(n), A079409(n)]` -/
def P7784889936805390386.Spec : Prop :=
  ∀ n, (P7784889936805390386.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P12543554533308848929

`eq[A068344(n), A072786(n)]`
-/

namespace A292564.P12543554533308848929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P12543554533308848929

namespace A292564

/-- `eq[A068344(n), A072786(n)]` -/
def P12543554533308848929.Spec : Prop :=
  ∀ n, (P12543554533308848929.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P11838594531715555182

`eq[A062105(n), A122761(n)]`
-/

namespace A292564.P11838594531715555182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P11838594531715555182

namespace A292564

/-- `eq[A062105(n), A122761(n)]` -/
def P11838594531715555182.Spec : Prop :=
  ∀ n, (P11838594531715555182.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P17356662869563180682

`eq[A110291(n), A122761(n)]`
-/

namespace A292564.P17356662869563180682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P17356662869563180682

namespace A292564

/-- `eq[A110291(n), A122761(n)]` -/
def P17356662869563180682.Spec : Prop :=
  ∀ n, (P17356662869563180682.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P4748360746182267819

`eq[A051341(n), A214247(n)]`
-/

namespace A292564.P4748360746182267819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P4748360746182267819

namespace A292564

/-- `eq[A051341(n), A214247(n)]` -/
def P4748360746182267819.Spec : Prop :=
  ∀ n, (P4748360746182267819.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P17971753812031349723

`eq[A122761(n), A152714(n)]`
-/

namespace A292564.P17971753812031349723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P17971753812031349723

namespace A292564

/-- `eq[A122761(n), A152714(n)]` -/
def P17971753812031349723.Spec : Prop :=
  ∀ n, (P17971753812031349723.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P5743471573209151855

`eq[A010783(n+1), A051341(n)]`
-/

namespace A292564.P5743471573209151855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P5743471573209151855

namespace A292564

/-- `eq[A010783(n+1), A051341(n)]` -/
def P5743471573209151855.Spec : Prop :=
  ∀ n, (P5743471573209151855.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P16034661838426360657

`eq[A057212(n+1), A072785(n)]`
-/

namespace A292564.P16034661838426360657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P16034661838426360657

namespace A292564

/-- `eq[A057212(n+1), A072785(n)]` -/
def P16034661838426360657.Spec : Prop :=
  ∀ n, (P16034661838426360657.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P12747365800994062427

`eq[A057094(n), A122760(n+1)]`
-/

namespace A292564.P12747365800994062427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P12747365800994062427

namespace A292564

/-- `eq[A057094(n), A122760(n+1)]` -/
def P12747365800994062427.Spec : Prop :=
  ∀ n, (P12747365800994062427.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P8073514016648133967

`A309945(A341706(n+1))`
-/

namespace A292564.P8073514016648133967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309945 (A341706 (n + 1)).toNat

end

end A292564.P8073514016648133967

namespace A292564

/-- `A309945(A341706(n+1))` -/
def P8073514016648133967.Spec : Prop :=
  ∀ n, P8073514016648133967.a n = A292564 n

end A292564

/-! ## A292564.P9491633445994095238

`eq[A051341(n), A306680(n)]`
-/

namespace A292564.P9491633445994095238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P9491633445994095238

namespace A292564

/-- `eq[A051341(n), A306680(n)]` -/
def P9491633445994095238.Spec : Prop :=
  ∀ n, (P9491633445994095238.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P17598135837793259753

`eq[A051341(n), A306846(n)]`
-/

namespace A292564.P17598135837793259753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P17598135837793259753

namespace A292564

/-- `eq[A051341(n), A306846(n)]` -/
def P17598135837793259753.Spec : Prop :=
  ∀ n, (P17598135837793259753.a n : ℤ) = A292564 n

end A292564

/-! ## A292564.P15281430376024450128

`eq[A128807(n), A306914(n)]`
-/

namespace A292564.P15281430376024450128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128807 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292564.P15281430376024450128

namespace A292564

/-- `eq[A128807(n), A306914(n)]` -/
def P15281430376024450128.Spec : Prop :=
  ∀ n, (P15281430376024450128.a n : ℤ) = A292564 n

end A292564

/-!
# A292565: Take 0, skip 3 * 1 + 1, take 1, skip 3 * 2 + 1, take 2, skip 3 * 3 + 1, ...

The programs for A292565, the canonical program `A292565.P3431656874800799507` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292565 has offset 1).

The definition of A292565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292565.P3431656874800799507

`eq[2, and(3, floor(sqrt(8*n+1)))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292565

/-- `eq[2, and(3, floor(sqrt(8*n+1)))]` -/
def P3431656874800799507.Spec : Prop :=
  ∀ n, (P3431656874800799507.a n : ℤ) = A292565 (n + 1)

theorem P3431656874800799507.correct : P3431656874800799507.Spec := by
  intro n
  simp only [A292565, Nat.add_sub_cancel]

end A292565

/-! ## A292565.P12272028955591772878

`eq[1, (floor(sqrt(8*n+1))+3)%4]`
-/

namespace A292565.P12272028955591772878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (8 * n + 1) + 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292565.P12272028955591772878

namespace A292565

/-- `eq[1, (floor(sqrt(8*n+1))+3)%4]` -/
def P12272028955591772878.Spec : Prop :=
  ∀ n, (P12272028955591772878.a n : ℤ) = A292565 (n + 1)

end A292565

/-! ## A292565.P6765147303816113553

`C(3*(comp[∑[n]]-n), 2)/3+n`
-/

namespace A292565.P6765147303816113553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat 2 : ℚ) / 3 + (n : ℚ)

end

end A292565.P6765147303816113553

namespace A292565

/-- `C(3*(comp[∑[n]]-n), 2)/3+n` -/
def P6765147303816113553.Spec : Prop :=
  ∀ n, P6765147303816113553.a n = (A292565 (n + 1) : ℚ)

end A292565

/-! ## A292565.P1174871886616125105

`(n-comp[∑[n]])²+C(comp[∑[n]]-n, 2)+n`
-/

namespace A292565.P1174871886616125105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n : ℤ)

end

end A292565.P1174871886616125105

namespace A292565

/-- `(n-comp[∑[n]])²+C(comp[∑[n]]-n, 2)+n` -/
def P1174871886616125105.Spec : Prop :=
  ∀ n, P1174871886616125105.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P17307045287275900604

`2*(row(n)+1)²+2*(row(n)+1)+col(n)+1`
-/

namespace A292565.P17307045287275900604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.triRow n + 1) ^ 2 + 2 * (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triCol n + 1)

end

end A292565.P17307045287275900604

namespace A292565

/-- `2*(row(n)+1)²+2*(row(n)+1)+col(n)+1` -/
def P17307045287275900604.Spec : Prop :=
  ∀ n, (P17307045287275900604.a n : ℤ) = A292565 (n + 1)

end A292565

/-! ## A292565.P3752784750649767683

`(round(sqrt(2*(n+1)))+1)²+2*n+1-∑[1-round(sqrt(2*(n+1)))*char[∑[n]]]`
-/

namespace A292565.P3752784750649767683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292565.P3752784750649767683

namespace A292565

/-- `(round(sqrt(2*(n+1)))+1)²+2*n+1-∑[1-round(sqrt(2*(n+1)))*char[∑[n]]]` -/
def P3752784750649767683.Spec : Prop :=
  ∀ n, P3752784750649767683.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P1636096093862385632

`lt[A159864(n), 0]`
-/

namespace A292565.P1636096093862385632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A292565.P1636096093862385632

namespace A292565

/-- `lt[A159864(n), 0]` -/
def P1636096093862385632.Spec : Prop :=
  ∀ n, (P1636096093862385632.a n : ℤ) = A292565 (n + 1)

end A292565

/-! ## A292565.P14258504433053413073

`A007606(A063657(n+1))`
-/

namespace A292565.P14258504433053413073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A063657 (n + 1)).toNat

end

end A292565.P14258504433053413073

namespace A292565

/-- `A007606(A063657(n+1))` -/
def P14258504433053413073.Spec : Prop :=
  ∀ n, P14258504433053413073.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P2096755567439791796

`A165776(A064801(n+1))`
-/

namespace A292565.P2096755567439791796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 (A064801 (n + 1)).toNat

end

end A292565.P2096755567439791796

namespace A292565

/-- `A165776(A064801(n+1))` -/
def P2096755567439791796.Spec : Prop :=
  ∀ n, P2096755567439791796.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P4799402028999077962

`A007606(lt[0, A196199(n)])`
-/

namespace A292565.P4799402028999077962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A292565.P4799402028999077962

namespace A292565

/-- `A007606(lt[0, A196199(n)])` -/
def P4799402028999077962.Spec : Prop :=
  ∀ n, P4799402028999077962.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P9325189376712240069

`filter[A161983(n), A340507(#)]`
-/

namespace A292565.P9325189376712240069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340507 (f1 j).toNat = 1) n)

end

end A292565.P9325189376712240069

namespace A292565

/-- `filter[A161983(n), A340507(#)]` -/
def P9325189376712240069.Spec : Prop :=
  ∀ n, P9325189376712240069.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P2161540689567336387

`filter[A165776(n), A340507(#)]`
-/

namespace A292565.P2161540689567336387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340507 (f1 j).toNat = 1) n)

end

end A292565.P2161540689567336387

namespace A292565

/-- `filter[A165776(n), A340507(#)]` -/
def P2161540689567336387.Spec : Prop :=
  ∀ n, P2161540689567336387.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P693784219932251907

`∩[A161983(n), A165776(n)]`
-/

namespace A292565.P693784219932251907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292565.P693784219932251907

namespace A292565

/-- `∩[A161983(n), A165776(n)]` -/
def P693784219932251907.Spec : Prop :=
  ∀ n, (P693784219932251907.a n : ℤ) = A292565 (n + 1)

end A292565

/-! ## A292565.P15600441895061852232

`∩[A165776(n), A174803(n)]`
-/

namespace A292565.P15600441895061852232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174803 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292565.P15600441895061852232

namespace A292565

/-- `∩[A165776(n), A174803(n)]` -/
def P15600441895061852232.Spec : Prop :=
  ∀ n, (P15600441895061852232.a n : ℤ) = A292565 (n + 1)

end A292565

/-! ## A292565.P8194546387266177652

`filter[A007606(n+1), A340507(#)]`
-/

namespace A292565.P8194546387266177652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340507 (f1 j).toNat = 1) n)

end

end A292565.P8194546387266177652

namespace A292565

/-- `filter[A007606(n+1), A340507(#)]` -/
def P8194546387266177652.Spec : Prop :=
  ∀ n, P8194546387266177652.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P3520318144123383057

`A007606(A004201(A014132(n+1)))`
-/

namespace A292565.P3520318144123383057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A004201 (A014132 (n + 1)).toNat).toNat

end

end A292565.P3520318144123383057

namespace A292565

/-- `A007606(A004201(A014132(n+1)))` -/
def P3520318144123383057.Spec : Prop :=
  ∀ n, P3520318144123383057.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P16388279610389644140

`A165776(A005843(n)+A004736(n+1))`
-/

namespace A292565.P16388279610389644140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 (A005843 n + A004736 (n + 1)).toNat

end

end A292565.P16388279610389644140

namespace A292565

/-- `A165776(A005843(n)+A004736(n+1))` -/
def P16388279610389644140.Spec : Prop :=
  ∀ n, P16388279610389644140.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P13183835509762144228

`A007606(A004201(A256188(A004202(n+1))))`
-/

namespace A292565.P13183835509762144228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A004201 (A256188 (A004202 (n + 1)).toNat).toNat).toNat

end

end A292565.P13183835509762144228

namespace A292565

/-- `A007606(A004201(A256188(A004202(n+1))))` -/
def P13183835509762144228.Spec : Prop :=
  ∀ n, P13183835509762144228.a n = A292565 (n + 1)

end A292565

/-! ## A292565.P10129735265990835262

`eq[2, A106599(n)]`
-/

namespace A292565.P10129735265990835262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292565.P10129735265990835262

namespace A292565

/-- `eq[2, A106599(n)]` -/
def P10129735265990835262.Spec : Prop :=
  ∀ n, (P10129735265990835262.a n : ℤ) = A292565 (n + 1)

end A292565

/-! ## A292565.P16141606075379236115

`eq[A132742(n), A340507(n)]`
-/

namespace A292565.P16141606075379236115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292565.P16141606075379236115

namespace A292565

/-- `eq[A132742(n), A340507(n)]` -/
def P16141606075379236115.Spec : Prop :=
  ∀ n, (P16141606075379236115.a n : ℤ) = A292565 (n + 1)

end A292565

/-!
# A292566: Primes that can be reached with their prime-index, if you start with the prime-index and use iterations of A062028.

The programs for A292566, there is no canonical definition to state claims against.
-/

/-! ## A292566.P11075889823054525691

`p?[∏{e}[n+1, #^#]*A331952(n)]`
-/

namespace A292566.P11075889823054525691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ Nat.factorization (f2 n) p : ℕ) : ℤ) * A331952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292566.P11075889823054525691

/-!
# A292567: a(n) = [x^n] 1/(1+n*x) * Product_{j=2..n} 1/(1-x^j).

The programs for A292567, there is no canonical definition to state claims against.
-/

/-! ## A292567.P11211463230532316537

`A053222(A008784(n+1)+A002065(n)+1)`
-/

namespace A292567.P11211463230532316537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A008784 (n + 1) + A002065 n + 1).toNat

end

end A292567.P11211463230532316537

/-!
# A292569: Least pandigital number which sums up with the n-th pandigital number A171102(n) to another pandigital number.

The programs for A292569, there is no canonical definition to state claims against.
-/

/-! ## A292569.P3074707610758003178

`A050278(A292570(n+1))`
-/

namespace A292569.P3074707610758003178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (A292570 (n + 1)).toNat

end

end A292569.P3074707610758003178

/-! ## A292569.P15283420529806958620

`dr(A257914(n+1))*A171571(A292570(n+1))`
-/

namespace A292569.P15283420529806958620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A257914 (n + 1)) : ℤ) * A171571 (A292570 (n + 1)).toNat

end

end A292569.P15283420529806958620

/-! ## A292569.P414646779709939189

`A116667(A194296(n+1))*A171571(A292570(n+1))`
-/

namespace A292569.P414646779709939189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116667 (A194296 (n + 1)).toNat * A171571 (A292570 (n + 1)).toNat

end

end A292569.P414646779709939189

/-! ## A292569.P16087981424032186818

`dr(A292546(n+1))*A171571(A292570(n+1))`
-/

namespace A292569.P16087981424032186818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A292546 (n + 1)) : ℤ) * A171571 (A292570 (n + 1)).toNat

end

end A292569.P16087981424032186818

/-! ## A292569.P9080137809538927523

`dr(A180618(n+1))*A171571(A292570(n+1))`
-/

namespace A292569.P9080137809538927523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A180618 (n + 1)) : ℤ) * A171571 (A292570 (n + 1)).toNat

end

end A292569.P9080137809538927523

/-!
# A292576: Permutation of the natural numbers partitioned into quadruples [4k-1, 4k-3, 4k-2, 4k], k > 0.

The programs for A292576, the canonical program `A292576.P1146477353362380900` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292576 has offset 1).

The definition of A292576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292576.P1146477353362380900

`4+a(n-4)` with `a(0)=3, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292576

/-- `4+a(n-4)` -/
def P1146477353362380900.Spec : Prop :=
  ∀ n, (P1146477353362380900.a n : ℤ) = A292576 (n + 1)

theorem P1146477353362380900.correct : P1146477353362380900.Spec := by
  intro n
  simp only [A292576, Nat.add_sub_cancel]

end A292576

/-! ## A292576.P9564247015039981511

`n+1+(n+1)%2+ceil((n+1)/2)%2-2*floor((n+1)/2)%2`
-/

namespace A292576.P9564247015039981511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 + (n + 1) % 2 : ℕ) : ℤ) + Int.tmod ⌈(n + 1 : ℚ) / 2⌉ 2 - 2 * Int.tmod ⌊(n + 1 : ℚ) / 2⌋ 2

end

end A292576.P9564247015039981511

namespace A292576

/-- `n+1+(n+1)%2+ceil((n+1)/2)%2-2*floor((n+1)/2)%2` -/
def P9564247015039981511.Spec : Prop :=
  ∀ n, P9564247015039981511.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P11360392065456162857

`n+1+((-1)^((n+1)*n/2)*(2-(-1)^(n+1))-(-1)^(n+1))/2`
-/

namespace A292576.P11360392065456162857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + ((-1 : ℝ) ^ (((n + 1) * n : ℚ) / 2 : ℝ) * (2 - (-1) ^ (n + 1) : ℝ) - ((-1) ^ (n + 1) : ℝ)) / 2

end

end A292576.P11360392065456162857

namespace A292576

/-- `n+1+((-1)^((n+1)*n/2)*(2-(-1)^(n+1))-(-1)^(n+1))/2` -/
def P11360392065456162857.Spec : Prop :=
  ∀ n, P11360392065456162857.a n = (A292576 (n + 1) : ℝ)

end A292576

/-! ## A292576.P2631614374694605046

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=-2, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A292576.P2631614374694605046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292576.P2631614374694605046

namespace A292576

/-- `∑[floor(a(n-4))]` -/
def P2631614374694605046.Spec : Prop :=
  ∀ n, P2631614374694605046.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P6697138470886520142

`floor(ϕ^and(3, n-1)+n-1)`
-/

namespace A292576.P6697138470886520142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (Int.land 3 ((n : ℤ) - 1) : ℤ) + ((n : ℤ) - 1 : ℝ)⌋

end

end A292576.P6697138470886520142

namespace A292576

/-- `floor(ϕ^and(3, n-1)+n-1)` -/
def P6697138470886520142.Spec : Prop :=
  ∀ n, P6697138470886520142.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P2369368391139075312

`∑[(1/a(n-4))^(-1)]` with `a(0)=3, a(1)=-2, a(2)=1, a(3)=2`
-/

namespace A292576.P2369368391139075312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -2, 1, 2] fun n f1 =>
  (1 / f1 (n - 4)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292576.P2369368391139075312

namespace A292576

/-- `∑[(1/a(n-4))^(-1)]` -/
def P2369368391139075312.Spec : Prop :=
  ∀ n, P2369368391139075312.a n = (A292576 (n + 1) : ℚ)

end A292576

/-! ## A292576.P7666839452379554608

`∑[(a(n-4)^(-1))^(-1)]` with `a(0)=3, a(1)=-2, a(2)=1, a(3)=2`
-/

namespace A292576.P7666839452379554608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -2, 1, 2] fun n f1 =>
  (f1 (n - 4) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292576.P7666839452379554608

namespace A292576

/-- `∑[(a(n-4)^(-1))^(-1)]` -/
def P7666839452379554608.Spec : Prop :=
  ∀ n, P7666839452379554608.a n = (A292576 (n + 1) : ℚ)

end A292576

/-! ## A292576.P1837882614737976040

`∑[2*a(n-4)-a(n-4)]` with `a(0)=3, a(1)=-2, a(2)=1, a(3)=2`
-/

namespace A292576.P1837882614737976040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 1, 2] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292576.P1837882614737976040

namespace A292576

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P1837882614737976040.Spec : Prop :=
  ∀ n, P1837882614737976040.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P3532357591933741248

`A056699(xor(1, n)+1)`
-/

namespace A292576.P3532357591933741248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (Nat.xor 1 n + 1)

end

end A292576.P3532357591933741248

namespace A292576

/-- `A056699(xor(1, n)+1)` -/
def P3532357591933741248.Spec : Prop :=
  ∀ n, P3532357591933741248.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P4079515186309138238

`A092486(A080412(n))`
-/

namespace A292576.P4079515186309138238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A080412 n).toNat

end

end A292576.P4079515186309138238

namespace A292576

/-- `A092486(A080412(n))` -/
def P4079515186309138238.Spec : Prop :=
  ∀ n, P4079515186309138238.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P8950965474718679661

`A159966(A116966(n))`
-/

namespace A292576.P8950965474718679661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A116966 n).toNat

end

end A292576.P8950965474718679661

namespace A292576

/-- `A159966(A116966(n))` -/
def P8950965474718679661.Spec : Prop :=
  ∀ n, P8950965474718679661.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P5914946889252972691

`A056699(A004442(n)+1)`
-/

namespace A292576.P5914946889252972691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A004442 n + 1).toNat

end

end A292576.P5914946889252972691

namespace A292576

/-- `A056699(A004442(n)+1)` -/
def P5914946889252972691.Spec : Prop :=
  ∀ n, P5914946889252972691.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P11336658881320596979

`A056699(A014681(n+1))`
-/

namespace A292576.P11336658881320596979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A014681 (n + 1)).toNat

end

end A292576.P11336658881320596979

namespace A292576

/-- `A056699(A014681(n+1))` -/
def P11336658881320596979.Spec : Prop :=
  ∀ n, P11336658881320596979.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P16431306689377539481

`A056699(A103889(n+1))`
-/

namespace A292576.P16431306689377539481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A103889 (n + 1)).toNat

end

end A292576.P16431306689377539481

namespace A292576

/-- `A056699(A103889(n+1))` -/
def P16431306689377539481.Spec : Prop :=
  ∀ n, P16431306689377539481.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P5391526372324155193

`A067060(A133256(n+1))`
-/

namespace A292576.P5391526372324155193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A133256 (n + 1)).toNat

end

end A292576.P5391526372324155193

namespace A292576

/-- `A067060(A133256(n+1))` -/
def P5391526372324155193.Spec : Prop :=
  ∀ n, P5391526372324155193.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P15824444938214564712

`A256008(A056699(n+1))`
-/

namespace A292576.P15824444938214564712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A056699 (n + 1)).toNat

end

end A292576.P15824444938214564712

namespace A292576

/-- `A256008(A056699(n+1))` -/
def P15824444938214564712.Spec : Prop :=
  ∀ n, P15824444938214564712.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P9129617841420739926

`A298364(A298364(n+1))`
-/

namespace A292576.P9129617841420739926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A298364 (n + 1)).toNat

end

end A292576.P9129617841420739926

namespace A292576

/-- `A298364(A298364(n+1))` -/
def P9129617841420739926.Spec : Prop :=
  ∀ n, P9129617841420739926.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P12345910807784786442

`A263449(A067060(n+1)-1)`
-/

namespace A292576.P12345910807784786442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (A067060 (n + 1) - 1).toNat

end

end A292576.P12345910807784786442

namespace A292576

/-- `A263449(A067060(n+1)-1)` -/
def P12345910807784786442.Spec : Prop :=
  ∀ n, P12345910807784786442.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P8634289448016630437

`A080412(A159966(n+1))`
-/

namespace A292576.P8634289448016630437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A159966 (n + 1)).toNat

end

end A292576.P8634289448016630437

namespace A292576

/-- `A080412(A159966(n+1))` -/
def P8634289448016630437.Spec : Prop :=
  ∀ n, P8634289448016630437.a n = A292576 (n + 1)

end A292576

/-! ## A292576.P4288387824464961970

`A080412(A263426(n)+1)`
-/

namespace A292576.P4288387824464961970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A263426 n + 1).toNat

end

end A292576.P4288387824464961970

namespace A292576

/-- `A080412(A263426(n)+1)` -/
def P4288387824464961970.Spec : Prop :=
  ∀ n, P4288387824464961970.a n = A292576 (n + 1)

end A292576

/-!
# A292577: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(1 + Sum_{j=1..k} (-1)^j*j*x^(j*i))^2.

The programs for A292577, there is no canonical definition to state claims against.
-/

/-! ## A292577.P3799610157591426789

`and(A017913(A060854(n+1)), A203647(n+1))`
-/

namespace A292577.P3799610157591426789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017913 (A060854 (n + 1)).toNat) (A203647 (n + 1))

end

end A292577.P3799610157591426789

/-! ## A292577.P5311520394322711434

`and(A203647(n+1), A307487(A001263(n+1)))`
-/

namespace A292577.P5311520394322711434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203647 (n + 1)) (A307487 (A001263 (n + 1)).toNat)

end

end A292577.P5311520394322711434

/-! ## A292577.P7097057062502485916

`and(A203647(n+1), A232807(A300966(n+1)))`
-/

namespace A292577.P7097057062502485916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203647 (n + 1)) (A232807 (A300966 (n + 1)).toNat)

end

end A292577.P7097057062502485916

/-! ## A292577.P1791639656402646561

`and(A173815(A193845(n)), A203647(n+1))`
-/

namespace A292577.P1791639656402646561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173815 (A193845 n).toNat) (A203647 (n + 1))

end

end A292577.P1791639656402646561

/-! ## A292577.P2668508845889921022

`and(A004006(A075500(n+1)), A203647(n+1))`
-/

namespace A292577.P2668508845889921022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004006 (A075500 (n + 1)).toNat) (A203647 (n + 1))

end

end A292577.P2668508845889921022

/-!
# A292578: Primes of the form 11*n^2 + 55*n + 43.

The programs for A292578, the canonical program `A292578.P17520324892768075694` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292578 has offset 1).

The definition of A292578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292578.P17520324892768075694

`p?[∑[22*n]-23]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292578

/-- `p?[∑[22*n]-23]` -/
def P17520324892768075694.Spec : Prop :=
  ∀ n, P17520324892768075694.a n = A292578 (n + 1)

theorem P17520324892768075694.correct : P17520324892768075694.Spec := by
  intro n
  simp only [A292578, Nat.add_sub_cancel]

end A292578

/-! ## A292578.P192218613914873379

`22*lt[A327366(n), 1]-1`
-/

namespace A292578.P192218613914873379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327366 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (22 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A292578.P192218613914873379

namespace A292578

/-- `22*lt[A327366(n), 1]-1` -/
def P192218613914873379.Spec : Prop :=
  ∀ n, P192218613914873379.a n = A292578 (n + 1)

end A292578

/-! ## A292578.P2381013165225151379

`∑[A008593(2*n+4)]-A178226(A117855(n+1))`
-/

namespace A292578.P2381013165225151379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (2 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178226 (A117855 (n + 1)).toNat

end

end A292578.P2381013165225151379

namespace A292578

/-- `∑[A008593(2*n+4)]-A178226(A117855(n+1))` -/
def P2381013165225151379.Spec : Prop :=
  ∀ n, P2381013165225151379.a n = A292578 (n + 1)

end A292578

/-! ## A292578.P16879996787795969849

`A136548(∑[22*(n+2)]+1)`
-/

namespace A292578.P16879996787795969849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A292578.P16879996787795969849

namespace A292578

/-- `A136548(∑[22*(n+2)]+1)` -/
def P16879996787795969849.Spec : Prop :=
  ∀ n, P16879996787795969849.a n = A292578 (n + 1)

end A292578

/-! ## A292578.P11923188142640791931

`A046667(44*record[A061579(n+1)])`
-/

namespace A292578.P11923188142640791931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (44 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292578.P11923188142640791931

namespace A292578

/-- `A046667(44*record[A061579(n+1)])` -/
def P11923188142640791931.Spec : Prop :=
  ∀ n, P11923188142640791931.a n = A292578 (n + 1)

end A292578

/-!
# A292582: Restricted growth sequence transform of A292589(n); filter based on the prime signature of {n divided by largest squarefree divisor of n}.

The programs for A292582, there is no canonical definition to state claims against.
-/

/-! ## A292582.P4591114488643068336

`A004736(A292587(n+1)+A000007(n))`
-/

namespace A292582.P4591114488643068336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A292587 (n + 1) + A000007 n).toNat

end

end A292582.P4591114488643068336

/-! ## A292582.P16493645767741453552

`A002260(A292588(n+1))`
-/

namespace A292582.P16493645767741453552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A292588 (n + 1)).toNat

end

end A292582.P16493645767741453552

/-! ## A292582.P16658661337135307823

`A002262(A292588(n+1)-1)+1`
-/

namespace A292582.P16658661337135307823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A292588 (n + 1) - 1).toNat + 1

end

end A292582.P16658661337135307823

/-! ## A292582.P15282286329383347513

`A131818(A292588(n+1)+1)-1`
-/

namespace A292582.P15282286329383347513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A292588 (n + 1) + 1).toNat - 1

end

end A292582.P15282286329383347513

/-! ## A292582.P16307116382557066722

`A003991(A292588(n+1))/A292583(n+1)`
-/

namespace A292582.P16307116382557066722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A292588 (n + 1)).toNat : ℚ) / (A292583 (n + 1) : ℚ)

end

end A292582.P16307116382557066722

/-! ## A292582.P11984563342084464087

`A285481(12*A212173(n+1))`
-/

namespace A292582.P11984563342084464087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (12 * A212173 (n + 1)).toNat

end

end A292582.P11984563342084464087

/-! ## A292582.P2932897779327764514

`A003056(A123580(A212173(n+1)))`
-/

namespace A292582.P2932897779327764514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A123580 (A212173 (n + 1)).toNat).toNat

end

end A292582.P2932897779327764514

/-! ## A292582.P15626317019671649660

`A048766(A005145(A212173(n+1)²))`
-/

namespace A292582.P15626317019671649660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005145 (A212173 (n + 1) ^ 2).toNat).toNat

end

end A292582.P15626317019671649660

/-! ## A292582.P6714101030804567606

`A000005(A001221(A000188(n+1)!+1)*A003557(n+1))`
-/

namespace A292582.P6714101030804567606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001221 (Nat.factorial (A000188 (n + 1)).toNat + 1) * A003557 (n + 1)).toNat

end

end A292582.P6714101030804567606

/-! ## A292582.P1054580515992199548

`C(A005361(n+1), A255231(A256688(n+1)))`
-/

namespace A292582.P1054580515992199548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005361 (n + 1)).toNat (A255231 (A256688 (n + 1)).toNat).toNat

end

end A292582.P1054580515992199548

/-!
# A292583: Restricted growth sequence transform of A278222(A292383(n)); a filter related to runs of numbers of the form 4k+3 encountered on trajectories of A005940-tree.

The programs for A292583, there is no canonical definition to state claims against.
-/

/-! ## A292583.P6975351010303149875

`A004736(A292588(n+1))`
-/

namespace A292583.P6975351010303149875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A292588 (n + 1)).toNat

end

end A292583.P6975351010303149875

/-! ## A292583.P13213634370132488727

`A003991(A292588(n+1))/A292582(n+1)`
-/

namespace A292583.P13213634370132488727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A292588 (n + 1)).toNat : ℚ) / (A292582 (n + 1) : ℚ)

end

end A292583.P13213634370132488727

/-! ## A292583.P7975305774592467570

`A002260(A292584(n+1))`
-/

namespace A292583.P7975305774592467570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A292584 (n + 1)).toNat

end

end A292583.P7975305774592467570

/-! ## A292583.P9265513074247005062

`A144328(A292584(n+1)+1)`
-/

namespace A292583.P9265513074247005062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A292584 (n + 1) + 1).toNat

end

end A292583.P9265513074247005062

/-! ## A292583.P12527033104222445423

`A002262(A292584(n+1)-1)+1`
-/

namespace A292583.P12527033104222445423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A292584 (n + 1) - 1).toNat + 1

end

end A292583.P12527033104222445423

/-! ## A292583.P10602350690004000799

`A002262(A292584(n+1)+A000007(n))`
-/

namespace A292583.P10602350690004000799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A292584 (n + 1) + A000007 n).toNat

end

end A292583.P10602350690004000799

/-! ## A292583.P18239000096030232388

`A003991(A292584(n+1))/A292585(n+1)`
-/

namespace A292583.P18239000096030232388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A292584 (n + 1)).toNat : ℚ) / (A292585 (n + 1) : ℚ)

end

end A292583.P18239000096030232388

/-! ## A292583.P10278820384646344053

`A003991(A292585(n+1)+A292584(n+1))-A292585(n+1)`
-/

namespace A292583.P10278820384646344053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A292585 (n + 1) + A292584 (n + 1)).toNat - A292585 (n + 1)

end

end A292583.P10278820384646344053

/-! ## A292583.P2534360600503217748

`A057555(2*A292584(n+1)-1)`
-/

namespace A292583.P2534360600503217748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A292584 (n + 1) - 1).toNat

end

end A292583.P2534360600503217748

/-! ## A292583.P12006644324239519450

`A057555(A292584(n+1)+A292584(n+1)-1)`
-/

namespace A292583.P12006644324239519450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A292584 (n + 1) + (A292584 (n + 1) - 1)).toNat

end

end A292583.P12006644324239519450

/-!
# A292584: Compound filter: a(n) = P(A292583(n), A292585(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A292584, there is no canonical definition to state claims against.
-/

/-! ## A292584.P1946864337880687951

`1/2*(2+(A292583(n+1)+A292585(n+1))²-A292583(n+1)-3*A292585(n+1))`
-/

namespace A292584.P1946864337880687951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A292583 (n + 1) + A292585 (n + 1)) ^ 2 - A292583 (n + 1) - 3 * A292585 (n + 1) : ℚ)

end

end A292584.P1946864337880687951

/-!
# A292585: Restricted growth sequence transform of A278222(A292385(n)).

The programs for A292585, there is no canonical definition to state claims against.
-/

/-! ## A292585.P1598761890525061201

`A004736(A292584(n+1))`
-/

namespace A292585.P1598761890525061201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A292584 (n + 1)).toNat

end

end A292585.P1598761890525061201

/-! ## A292585.P6964875254267426838

`A003991(A292584(n+1))/A292583(n+1)`
-/

namespace A292585.P6964875254267426838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A292584 (n + 1)).toNat : ℚ) / (A292583 (n + 1) : ℚ)

end

end A292585.P6964875254267426838

/-! ## A292585.P6951223183424023813

`A003991(A292584(n+1))/(A002262(A292584(n+1)-1)+1)`
-/

namespace A292585.P6951223183424023813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A292584 (n + 1)).toNat : ℚ) / (A002262 (A292584 (n + 1) - 1).toNat + 1 : ℚ)

end

end A292585.P6951223183424023813

/-! ## A292585.P12616257133639811885

`A057555(2*A292584(n+1))`
-/

namespace A292585.P12616257133639811885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A292584 (n + 1)).toNat

end

end A292585.P12616257133639811885

/-! ## A292585.P17913339309912979791

`(A025581(A292584(n+1))+2)%(2*A000302(n))`
-/

namespace A292585.P17913339309912979791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 (A292584 (n + 1)).toNat + 2) (2 * A000302 n)

end

end A292585.P17913339309912979791

/-!
# A292586: a(n) = A002110(A001221(n)) = product of first omega(n) primes.

The programs for A292586, the canonical program `A292586.P8363659162595819801` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292586 has offset 1).

The definition of A292586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(A001221(n+1))` (program `A292586.P8363659162595819801`, by `A292586.P8363659162595819801.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292586.P8363659162595819801

`A002110(A001221(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A292586

/-- `A002110(A001221(n+1))` -/
def P8363659162595819801.Spec : Prop :=
  ∀ n, P8363659162595819801.a n = A292586 (n + 1)

theorem P8363659162595819801.correct : P8363659162595819801.Spec := by
  intro n
  simp only [A292586, Nat.add_sub_cancel]

end A292586

/-! ## A292586.P2226379329982195888

`A278222(A292382(n+1))`
-/

namespace A292586.P2226379329982195888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A292382 (n + 1)).toNat

end

end A292586.P2226379329982195888

namespace A292586

/-- `A278222(A292382(n+1))` -/
def P2226379329982195888.Spec : Prop :=
  ∀ n, P2226379329982195888.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P6594079216981430280

`A046523(∏{p}[n+1, #])`
-/

namespace A292586.P6594079216981430280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P6594079216981430280

namespace A292586

/-- `A046523(∏{p}[n+1, #])` -/
def P6594079216981430280.Spec : Prop :=
  ∀ n, P6594079216981430280.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P13696904891245863600

`A071364(∏{p}[n+1, #])`
-/

namespace A292586.P13696904891245863600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P13696904891245863600

namespace A292586

/-- `A071364(∏{p}[n+1, #])` -/
def P13696904891245863600.Spec : Prop :=
  ∀ n, P13696904891245863600.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P15295574919142612498

`A083260(∏{p}[n+1, #])`
-/

namespace A292586.P15295574919142612498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P15295574919142612498

namespace A292586

/-- `A083260(∏{p}[n+1, #])` -/
def P15295574919142612498.Spec : Prop :=
  ∀ n, P15295574919142612498.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P15777482774959562939

`A086568(∏{p}[n+1, #])`
-/

namespace A292586.P15777482774959562939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P15777482774959562939

namespace A292586

/-- `A086568(∏{p}[n+1, #])` -/
def P15777482774959562939.Spec : Prop :=
  ∀ n, P15777482774959562939.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P11949213207901677237

`A275468(∏{p}[n+1, #])`
-/

namespace A292586.P11949213207901677237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275468 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P11949213207901677237

namespace A292586

/-- `A275468(∏{p}[n+1, #])` -/
def P11949213207901677237.Spec : Prop :=
  ∀ n, P11949213207901677237.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P11570152815694235195

`A279690(∏{p}[n+1, #])`
-/

namespace A292586.P11570152815694235195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P11570152815694235195

namespace A292586

/-- `A279690(∏{p}[n+1, #])` -/
def P11570152815694235195.Spec : Prop :=
  ∀ n, P11570152815694235195.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P3373903300547075234

`A284476(∏{p}[n+1, #])`
-/

namespace A292586.P3373903300547075234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P3373903300547075234

namespace A292586

/-- `A284476(∏{p}[n+1, #])` -/
def P3373903300547075234.Spec : Prop :=
  ∀ n, P3373903300547075234.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P6521240607360773397

`A320389(∏{p}[n+1, #])`
-/

namespace A292586.P6521240607360773397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320389 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P6521240607360773397

namespace A292586

/-- `A320389(∏{p}[n+1, #])` -/
def P6521240607360773397.Spec : Prop :=
  ∀ n, P6521240607360773397.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P10237150140579630040

`A329607(∏{p}[n+1, #])`
-/

namespace A292586.P10237150140579630040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P10237150140579630040

namespace A292586

/-- `A329607(∏{p}[n+1, #])` -/
def P10237150140579630040.Spec : Prop :=
  ∀ n, P10237150140579630040.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P11048929474830707080

`A395619(∏{p}[n+1, #])`
-/

namespace A292586.P11048929474830707080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395619 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A292586.P11048929474830707080

namespace A292586

/-- `A395619(∏{p}[n+1, #])` -/
def P11048929474830707080.Spec : Prop :=
  ∀ n, P11048929474830707080.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P3002251037332910249

`A002110(∑{e}[∏{p}[n+1, #], #])`
-/

namespace A292586.P3002251037332910249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A292586.P3002251037332910249

namespace A292586

/-- `A002110(∑{e}[∏{p}[n+1, #], #])` -/
def P3002251037332910249.Spec : Prop :=
  ∀ n, P3002251037332910249.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P17929229498189140104

`A046523(A007947(n+1))`
-/

namespace A292586.P17929229498189140104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007947 (n + 1)).toNat

end

end A292586.P17929229498189140104

namespace A292586

/-- `A046523(A007947(n+1))` -/
def P17929229498189140104.Spec : Prop :=
  ∀ n, P17929229498189140104.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P1161737156061537130

`A037019(A034444(n+1))`
-/

namespace A292586.P1161737156061537130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (A034444 (n + 1)).toNat

end

end A292586.P1161737156061537130

namespace A292586

/-- `A037019(A034444(n+1))` -/
def P1161737156061537130.Spec : Prop :=
  ∀ n, P1161737156061537130.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P15593460197757661280

`A007947(A071364(n+1))`
-/

namespace A292586.P15593460197757661280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071364 (n + 1)).toNat

end

end A292586.P15593460197757661280

namespace A292586

/-- `A007947(A071364(n+1))` -/
def P15593460197757661280.Spec : Prop :=
  ∀ n, P15593460197757661280.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P6994025682474253289

`A007947(A083260(n+1))`
-/

namespace A292586.P6994025682474253289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A083260 (n + 1)).toNat

end

end A292586.P6994025682474253289

namespace A292586

/-- `A007947(A083260(n+1))` -/
def P6994025682474253289.Spec : Prop :=
  ∀ n, P6994025682474253289.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P9860748789202360222

`A053589(A046523(n+1))`
-/

namespace A292586.P9860748789202360222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A046523 (n + 1)).toNat

end

end A292586.P9860748789202360222

namespace A292586

/-- `A053589(A046523(n+1))` -/
def P9860748789202360222.Spec : Prop :=
  ∀ n, P9860748789202360222.a n = A292586 (n + 1)

end A292586

/-! ## A292586.P8658441237247341103

`A086568(A061389(n+1))`
-/

namespace A292586.P8658441237247341103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (A061389 (n + 1)).toNat

end

end A292586.P8658441237247341103

namespace A292586

/-- `A086568(A061389(n+1))` -/
def P8658441237247341103.Spec : Prop :=
  ∀ n, P8658441237247341103.a n = A292586 (n + 1)

end A292586

/-!
# A292587: Compound filter: a(n) = P(A001221(n), A292582(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A292587, there is no canonical definition to state claims against.
-/

/-! ## A292587.P2928470244721109559

`1/2*(2+(A001221(n+1)+A292582(n+1))²-A001221(n+1)-3*A292582(n+1))`
-/

namespace A292587.P2928470244721109559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001221 (n + 1) + A292582 (n + 1)) ^ 2 - A001221 (n + 1) - 3 * A292582 (n + 1) : ℚ)

end

end A292587.P2928470244721109559

/-! ## A292587.P15229036185797532258

`A034463(∑{e}[n+1, #]!)+∑{p}[n+1, gcd(n, #)]`
-/

namespace A292587.P15229036185797532258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℤ)

end

end A292587.P15229036185797532258

/-! ## A292587.P3594270333474077993

`A327008(A130675(n+1))+floor(∑{e}[n+1, #/(n+1)+1])`
-/

namespace A292587.P3594270333474077993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327008 (A130675 (n + 1)).toNat + ⌊∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ) + 1)⌋

end

end A292587.P3594270333474077993

/-! ## A292587.P2645210379076596830

`A299757(A130675(n+1))+A001221(n+1)`
-/

namespace A292587.P2645210379076596830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (A130675 (n + 1)).toNat + A001221 (n + 1)

end

end A292587.P2645210379076596830

/-! ## A292587.P10913303237852251362

`A086971(A086568(n+1)*A122111(n+1))`
-/

namespace A292587.P10913303237852251362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A086568 (n + 1) * A122111 (n + 1)).toNat

end

end A292587.P10913303237852251362

/-!
# A292588: Compound filter: a(n) = P(A292582(n), A292583(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A292588, there is no canonical definition to state claims against.
-/

/-! ## A292588.P17253263295575191017

`1/2*(2+(A292582(n+1)+A292583(n+1))²-A292582(n+1)-3*A292583(n+1))`
-/

namespace A292588.P17253263295575191017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A292582 (n + 1) + A292583 (n + 1)) ^ 2 - A292582 (n + 1) - 3 * A292583 (n + 1) : ℚ)

end

end A292588.P17253263295575191017

/-!
# A292589: a(n) = A046523(A003557(n)) = A003557(A046523(n)); the least representative of the prime signature of {n divided by largest squarefree divisor of n}.

The programs for A292589, the canonical program `A292589.P517279146687819941` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292589 has offset 1).

The definition of A292589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292589.P517279146687819941

`A046523(A003557(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A292589

/-- `A046523(A003557(n+1))` -/
def P517279146687819941.Spec : Prop :=
  ∀ n, P517279146687819941.a n = A292589 (n + 1)

theorem P517279146687819941.correct : P517279146687819941.Spec := by
  intro n
  simp only [A292589, Nat.add_sub_cancel]

end A292589

/-! ## A292589.P2293981008316735722

`A003557(A046523(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292589.P2293981008316735722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A046523 (n + 1)).toNat

end

end A292589.P2293981008316735722

namespace A292589

/-- `A003557(A046523(n+1))` -/
def P2293981008316735722.Spec : Prop :=
  ∀ n, P2293981008316735722.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P18371625577166775147

`A046523((n+1)/∏{p}[n+1, #])`
-/

namespace A292589.P18371625577166775147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A292589.P18371625577166775147

namespace A292589

/-- `A046523((n+1)/∏{p}[n+1, #])` -/
def P18371625577166775147.Spec : Prop :=
  ∀ n, P18371625577166775147.a n = A292589 (n + 1)

theorem P18371625577166775147.correct : P18371625577166775147.Spec := by
  intro n
  simp only [A292589, Nat.add_sub_cancel, A292589.P18371625577166775147.f1, A292589.P18371625577166775147.a, A292589.P517279146687819941.a, A003557, A003557.P6364735403900941810.a, A046523, A046523.P3407874444772092792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292589

/-! ## A292589.P13829634846001280019

`A003557(A212173(n+1))`
-/

namespace A292589.P13829634846001280019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A212173 (n + 1)).toNat

end

end A292589.P13829634846001280019

namespace A292589

/-- `A003557(A212173(n+1))` -/
def P13829634846001280019.Spec : Prop :=
  ∀ n, P13829634846001280019.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P5620078101004890940

`A307107(A101296(n+1))`
-/

namespace A292589.P5620078101004890940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (A101296 (n + 1)).toNat

end

end A292589.P5620078101004890940

namespace A292589

/-- `A307107(A101296(n+1))` -/
def P5620078101004890940.Spec : Prop :=
  ∀ n, P5620078101004890940.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P7427637931790144652

`A046523(A396938(n+1))`
-/

namespace A292589.P7427637931790144652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A396938 (n + 1)).toNat

end

end A292589.P7427637931790144652

namespace A292589

/-- `A046523(A396938(n+1))` -/
def P7427637931790144652.Spec : Prop :=
  ∀ n, P7427637931790144652.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P4099400307392900535

`A181821(A295879(n+1))`
-/

namespace A292589.P4099400307392900535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A295879 (n + 1)).toNat

end

end A292589.P4099400307392900535

namespace A292589

/-- `A181821(A295879(n+1))` -/
def P4099400307392900535.Spec : Prop :=
  ∀ n, P4099400307392900535.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P14161696965817754032

`A396938(A089247(n+1))`
-/

namespace A292589.P14161696965817754032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396938 (A089247 (n + 1)).toNat

end

end A292589.P14161696965817754032

namespace A292589

/-- `A396938(A089247(n+1))` -/
def P14161696965817754032.Spec : Prop :=
  ∀ n, P14161696965817754032.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P16932825386893697479

`A212638(A292582(n+1))`
-/

namespace A292589.P16932825386893697479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (A292582 (n + 1)).toNat

end

end A292589.P16932825386893697479

namespace A292589

/-- `A212638(A292582(n+1))` -/
def P16932825386893697479.Spec : Prop :=
  ∀ n, P16932825386893697479.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P17084522584600183670

`A331188(A238745(n+1))`
-/

namespace A292589.P17084522584600183670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A238745 (n + 1)).toNat

end

end A292589.P17084522584600183670

namespace A292589

/-- `A331188(A238745(n+1))` -/
def P17084522584600183670.Spec : Prop :=
  ∀ n, P17084522584600183670.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P9018756303612901719

`A046523(A336551(n+1)+1)`
-/

namespace A292589.P9018756303612901719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A336551 (n + 1) + 1).toNat

end

end A292589.P9018756303612901719

namespace A292589

/-- `A046523(A336551(n+1)+1)` -/
def P9018756303612901719.Spec : Prop :=
  ∀ n, P9018756303612901719.a n = A292589 (n + 1)

theorem P9018756303612901719.correct : P9018756303612901719.Spec := by
  intro n
  simp only [A292589, Nat.add_sub_cancel, A292589.P9018756303612901719.a, A292589.P517279146687819941.a, A003557, A003557.P6364735403900941810.a, A046523, A046523.P3407874444772092792.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292589

/-! ## A292589.P17036112588864049056

`A046523((n+1)/A007947(n+1))`
-/

namespace A292589.P17036112588864049056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A292589.P17036112588864049056

namespace A292589

/-- `A046523((n+1)/A007947(n+1))` -/
def P17036112588864049056.Spec : Prop :=
  ∀ n, P17036112588864049056.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P10613240043776405839

`A046523(n+1)/A292586(n+1)`
-/

namespace A292589.P10613240043776405839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A292586 (n + 1) : ℚ)

end

end A292589.P10613240043776405839

namespace A292589

/-- `A046523(n+1)/A292586(n+1)` -/
def P10613240043776405839.Spec : Prop :=
  ∀ n, P10613240043776405839.a n = (A292589 (n + 1) : ℚ)

end A292589

/-! ## A292589.P5054980628798004565

`A025487(A101296((n+1)/∏{p}[n+1, #]))`
-/

namespace A292589.P5054980628798004565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A292589.P5054980628798004565

namespace A292589

/-- `A025487(A101296((n+1)/∏{p}[n+1, #]))` -/
def P5054980628798004565.Spec : Prop :=
  ∀ n, P5054980628798004565.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P9816340652491938379

`A181821(A181819((n+1)/∏{p}[n+1, #]))`
-/

namespace A292589.P9816340652491938379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A292589.P9816340652491938379

namespace A292589

/-- `A181821(A181819((n+1)/∏{p}[n+1, #]))` -/
def P9816340652491938379.Spec : Prop :=
  ∀ n, P9816340652491938379.a n = A292589 (n + 1)

theorem P9816340652491938379.correct : P9816340652491938379.Spec := by
  intro n
  simp only [A292589, Nat.add_sub_cancel, A292589.P9816340652491938379.f1, A292589.P9816340652491938379.a, A292589.P517279146687819941.a, A003557, A003557.P6364735403900941810.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292589

/-! ## A292589.P8509721186522218598

`A003557(A181821(A181819(n+1)))`
-/

namespace A292589.P8509721186522218598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A181821 (A181819 (n + 1)).toNat).toNat

end

end A292589.P8509721186522218598

namespace A292589

/-- `A003557(A181821(A181819(n+1)))` -/
def P8509721186522218598.Spec : Prop :=
  ∀ n, P8509721186522218598.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P15487520898260460617

`A046523(A001615(n+1)/A048250(n+1))`
-/

namespace A292589.P15487520898260460617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ))).toNat

end

end A292589.P15487520898260460617

namespace A292589

/-- `A046523(A001615(n+1)/A048250(n+1))` -/
def P15487520898260460617.Spec : Prop :=
  ∀ n, P15487520898260460617.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P7385413213774285079

`A046523(A000010(n+1)/A173557(n+1))`
-/

namespace A292589.P7385413213774285079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat

end

end A292589.P7385413213774285079

namespace A292589

/-- `A046523(A000010(n+1)/A173557(n+1))` -/
def P7385413213774285079.Spec : Prop :=
  ∀ n, P7385413213774285079.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P10148358116872441687

`A181821(A181819((n+1)/A007947(n+1)))`
-/

namespace A292589.P10148358116872441687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A292589.P10148358116872441687

namespace A292589

/-- `A181821(A181819((n+1)/A007947(n+1)))` -/
def P10148358116872441687.Spec : Prop :=
  ∀ n, P10148358116872441687.a n = A292589 (n + 1)

end A292589

/-! ## A292589.P16983466526705208930

`A046523(n+1)/A046523(A329607(n+1))`
-/

namespace A292589.P16983466526705208930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A046523 (A329607 (n + 1)).toNat : ℚ)

end

end A292589.P16983466526705208930

namespace A292589

/-- `A046523(n+1)/A046523(A329607(n+1))` -/
def P16983466526705208930.Spec : Prop :=
  ∀ n, P16983466526705208930.a n = (A292589 (n + 1) : ℚ)

end A292589

/-!
# A292590: a(1) = 0; and for n > 1, a(n) = 2*a(A285712(n)) + [0 == (n mod 3)].

The programs for A292590, the canonical program `A292590.P8653431818680257867` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292590 has offset 1).

The definition of A292590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292590.P8653431818680257867

`A079978(n+1)+2*a(A285712(n+1)-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292590

/-- `A079978(n+1)+2*a(A285712(n+1)-1)` -/
def P8653431818680257867.Spec : Prop :=
  ∀ n, P8653431818680257867.a n = A292590 (n + 1)

theorem P8653431818680257867.correct : P8653431818680257867.Spec := by
  intro n
  simp only [A292590, Nat.add_sub_cancel]

end A292590

/-! ## A292590.P9923718239290929670

`A245611(n+1)-A292591(n+1)`
-/

namespace A292590.P9923718239290929670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (n + 1) - A292591 (n + 1)

end

end A292590.P9923718239290929670

namespace A292590

/-- `A245611(n+1)-A292591(n+1)` -/
def P9923718239290929670.Spec : Prop :=
  ∀ n, P9923718239290929670.a n = A292590 (n + 1)

theorem P9923718239290929670.correct : P9923718239290929670.Spec := by
  intro n
  simp only [A292590, Nat.add_sub_cancel, A292590.P9923718239290929670.a, A292590.P8653431818680257867.a, A079978, A079978.P10382542118278163374.a, A245611, A245611.P15922686694877534878.a, A285712, A285712.P10989090546038180415.a, A292591, A292591.P7064288365944805705.a, A048673, A048673.P16342935298832955059.a, A064216, A064216.P5935432423843156478.a, A243071, A243071.P12484383641158862297.a, A252463, A252463.P9404790189412916411.a, A254049, A254049.P1269229269105982742.a, A045965, A045965.P3274931299755745232.a, A064989, A064989.P13349672914146769936.a, A122111, A122111.P18124015185857335041.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A253566, A253566.P9103107584596957047.a, A003961, A003961.P5996473960037614004.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A055010, A055010.P5809687151668349460.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A252464, A252464.P11274602121942962009.a, A253564, A253564.P2152431909121566970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292590

/-! ## A292590.P1660369088380462158

`A243071(A064216(n+1))-A292591(n+1)`
-/

namespace A292590.P1660369088380462158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A064216 (n + 1)).toNat - A292591 (n + 1)

end

end A292590.P1660369088380462158

namespace A292590

/-- `A243071(A064216(n+1))-A292591(n+1)` -/
def P1660369088380462158.Spec : Prop :=
  ∀ n, P1660369088380462158.a n = A292590 (n + 1)

theorem P1660369088380462158.correct : P1660369088380462158.Spec := by
  intro n
  simp only [A292590, Nat.add_sub_cancel, A292590.P1660369088380462158.a, A292590.P8653431818680257867.a, A064216, A064216.P5935432423843156478.a, A079978, A079978.P10382542118278163374.a, A243071, A243071.P12484383641158862297.a, A285712, A285712.P10989090546038180415.a, A292591, A292591.P7064288365944805705.a, A048673, A048673.P16342935298832955059.a, A064989, A064989.P13349672914146769936.a, A122111, A122111.P18124015185857335041.a, A245611, A245611.P15922686694877534878.a, A252463, A252463.P9404790189412916411.a, A253566, A253566.P9103107584596957047.a, A254049, A254049.P1269229269105982742.a, A008578, A008578.P3639467937083264764.a, A045965, A045965.P3274931299755745232.a, A052126, A052126.P1944428405920482243.a, A055010, A055010.P5809687151668349460.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A252464, A252464.P11274602121942962009.a, A253564, A253564.P2152431909121566970.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003961, A003961.P5996473960037614004.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A158611, A158611.P9275629407611603775.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292590

/-! ## A292590.P5145317470741140543

`xor(A245611(A000027(n+1)), A292591(n+1))`
-/

namespace A292590.P5145317470741140543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A245611 (A000027 (n + 1)).toNat) (A292591 (n + 1))

end

end A292590.P5145317470741140543

namespace A292590

/-- `xor(A245611(A000027(n+1)), A292591(n+1))` -/
def P5145317470741140543.Spec : Prop :=
  ∀ n, P5145317470741140543.a n = A292590 (n + 1)

end A292590

/-! ## A292590.P11993211941071437441

`xor(A245611(A052938(2*n)), A292591(n+1))`
-/

namespace A292590.P11993211941071437441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A245611 (A052938 (2 * n)).toNat) (A292591 (n + 1))

end

end A292590.P11993211941071437441

namespace A292590

/-- `xor(A245611(A052938(2*n)), A292591(n+1))` -/
def P11993211941071437441.Spec : Prop :=
  ∀ n, P11993211941071437441.a n = A292590 (n + 1)

end A292590

/-! ## A292590.P1583228301046762376

`A243071(A252463(2*n+1))-A292591(n+1)`
-/

namespace A292590.P1583228301046762376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A252463 (2 * n + 1)).toNat - A292591 (n + 1)

end

end A292590.P1583228301046762376

namespace A292590

/-- `A243071(A252463(2*n+1))-A292591(n+1)` -/
def P1583228301046762376.Spec : Prop :=
  ∀ n, P1583228301046762376.a n = A292590 (n + 1)

end A292590

/-! ## A292590.P12173852049572266950

`A245611(n+1)%or(A079978(n), A292591(n+1))`
-/

namespace A292590.P12173852049572266950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245611 (n + 1)) (Int.lor (A079978 n) (A292591 (n + 1)))

end

end A292590.P12173852049572266950

namespace A292590

/-- `A245611(n+1)%or(A079978(n), A292591(n+1))` -/
def P12173852049572266950.Spec : Prop :=
  ∀ n, P12173852049572266950.a n = A292590 (n + 1)

end A292590

/-! ## A292590.P7503318564793945266

`A275715(A249746(n+1))-A292591(n+1)`
-/

namespace A292590.P7503318564793945266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (A249746 (n + 1)).toNat - A292591 (n + 1)

end

end A292590.P7503318564793945266

namespace A292590

/-- `A275715(A249746(n+1))-A292591(n+1)` -/
def P7503318564793945266.Spec : Prop :=
  ∀ n, P7503318564793945266.a n = A292590 (n + 1)

end A292590

/-!
# A292591: a(1) = 0, a(2) = 1; and for n > 2, a(n) = 2*a(A285712(n)) + [1 == (n mod 3)].

The programs for A292591, the canonical program `A292591.P7064288365944805705` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292591 has offset 1).

The definition of A292591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292591.P7064288365944805705

`A245611(n+1)-A292590(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292591

/-- `A245611(n+1)-A292590(n+1)` -/
def P7064288365944805705.Spec : Prop :=
  ∀ n, P7064288365944805705.a n = A292591 (n + 1)

theorem P7064288365944805705.correct : P7064288365944805705.Spec := by
  intro n
  simp only [A292591, Nat.add_sub_cancel]

end A292591

/-! ## A292591.P7798160371079510692

`A243071(A064216(n+1))-A292590(n+1)`
-/

namespace A292591.P7798160371079510692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A064216 (n + 1)).toNat - A292590 (n + 1)

end

end A292591.P7798160371079510692

namespace A292591

/-- `A243071(A064216(n+1))-A292590(n+1)` -/
def P7798160371079510692.Spec : Prop :=
  ∀ n, P7798160371079510692.a n = A292591 (n + 1)

end A292591

/-! ## A292591.P18187033009367547300

`xor(A245611(A000027(n+1)), A292590(n+1))`
-/

namespace A292591.P18187033009367547300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A245611 (A000027 (n + 1)).toNat) (A292590 (n + 1))

end

end A292591.P18187033009367547300

namespace A292591

/-- `xor(A245611(A000027(n+1)), A292590(n+1))` -/
def P18187033009367547300.Spec : Prop :=
  ∀ n, P18187033009367547300.a n = A292591 (n + 1)

end A292591

/-! ## A292591.P3379585143054546145

`xor(A245611(A008619(2*n)), A292590(n+1))`
-/

namespace A292591.P3379585143054546145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A245611 (A008619 (2 * n)).toNat) (A292590 (n + 1))

end

end A292591.P3379585143054546145

namespace A292591

/-- `xor(A245611(A008619(2*n)), A292590(n+1))` -/
def P3379585143054546145.Spec : Prop :=
  ∀ n, P3379585143054546145.a n = A292591 (n + 1)

end A292591

/-! ## A292591.P7465990305053004268

`xor(A245611(A052938(2*n)), A292590(n+1))`
-/

namespace A292591.P7465990305053004268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A245611 (A052938 (2 * n)).toNat) (A292590 (n + 1))

end

end A292591.P7465990305053004268

namespace A292591

/-- `xor(A245611(A052938(2*n)), A292590(n+1))` -/
def P7465990305053004268.Spec : Prop :=
  ∀ n, P7465990305053004268.a n = A292591 (n + 1)

end A292591

/-! ## A292591.P4149139819744045145

`A245611(n+1)+A057428(n)*A292590(n+1)`
-/

namespace A292591.P4149139819744045145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (n + 1) + A057428 n * A292590 (n + 1)

end

end A292591.P4149139819744045145

namespace A292591

/-- `A245611(n+1)+A057428(n)*A292590(n+1)` -/
def P4149139819744045145.Spec : Prop :=
  ∀ n, P4149139819744045145.a n = A292591 (n + 1)

end A292591

/-! ## A292591.P2429640343832109447

`A275715(A249746(n+1))-A292590(n+1)`
-/

namespace A292591.P2429640343832109447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275715 (A249746 (n + 1)).toNat - A292590 (n + 1)

end

end A292591.P2429640343832109447

namespace A292591

/-- `A275715(A249746(n+1))-A292590(n+1)` -/
def P2429640343832109447.Spec : Prop :=
  ∀ n, P2429640343832109447.a n = A292591 (n + 1)

end A292591

/-!
# A292592: a(n) = A292590(A245612(n)).

The programs for A292592, there is no canonical definition to state claims against.
-/

/-! ## A292592.P10023202111004518143

`n-A292593(n)`
-/

namespace A292592.P10023202111004518143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292593 n

end

end A292592.P10023202111004518143

/-! ## A292592.P5642001604155984246

`xor(sqrt(A000290(n)), A292593(n))`
-/

namespace A292592.P5642001604155984246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))) (A292593 n)

end

end A292592.P5642001604155984246

/-! ## A292592.P10209577364564904345

`xor(A292593(n), A342102(A342102(n)))`
-/

namespace A292592.P10209577364564904345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292593 n) (A342102 (A342102 n).toNat)

end

end A292592.P10209577364564904345

/-! ## A292592.P17514649800766333363

`xor(A110654(A005843(n)), A292593(n))`
-/

namespace A292592.P17514649800766333363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110654 (A005843 n).toNat) (A292593 n)

end

end A292592.P17514649800766333363

/-! ## A292592.P18250658687691567929

`xor(n, A026741(A292593(2*n)))`
-/

namespace A292592.P18250658687691567929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A026741 (A292593 (2 * n)).toNat)

end

end A292592.P18250658687691567929

/-!
# A292593: a(n) = A292591(A245612(n)).

The programs for A292593, there is no canonical definition to state claims against.
-/

/-! ## A292593.P15965331726853785494

`n-A292592(n)`
-/

namespace A292593.P15965331726853785494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292592 n

end

end A292593.P15965331726853785494

/-! ## A292593.P2586577657935214435

`xor(A279343(A279344(n)), A292592(n))`
-/

namespace A292593.P2586577657935214435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279343 (A279344 n).toNat) (A292592 n)

end

end A292593.P2586577657935214435

/-! ## A292593.P17096960416699759089

`xor(A292592(n), A352760(A352760(n)))`
-/

namespace A292593.P17096960416699759089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292592 n) (A352760 (A352760 n).toNat)

end

end A292593.P17096960416699759089

/-!
# A292594: a(n) = A000120(A292590(n)).

The programs for A292594, the canonical program `A292594.P8537391345759066760` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292594 has offset 1).

The definition of A292594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292594.P6129039419422083714

`A079978(n+1)+a(A285712(n+1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A292594.P6129039419422083714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A079978 (n + 1) + a (A285712 (n + 1) - 1).toNat

end

end A292594.P6129039419422083714

namespace A292594

/-- `A079978(n+1)+a(A285712(n+1)-1)` -/
def P6129039419422083714.Spec : Prop :=
  ∀ n, P6129039419422083714.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P8537391345759066760

`A000120(A292590(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292594

/-- `A000120(A292590(n+1))` -/
def P8537391345759066760.Spec : Prop :=
  ∀ n, P8537391345759066760.a n = A292594 (n + 1)

theorem P8537391345759066760.correct : P8537391345759066760.Spec := by
  intro n
  simp only [A292594, Nat.add_sub_cancel]

end A292594

/-! ## A292594.P6059958070280834748

`A285715(n+1)-A292595(n+1)`
-/

namespace A292594.P6059958070280834748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (n + 1) - A292595 (n + 1)

end

end A292594.P6059958070280834748

namespace A292594

/-- `A285715(n+1)-A292595(n+1)` -/
def P6059958070280834748.Spec : Prop :=
  ∀ n, P6059958070280834748.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P6406063413468990733

`A061395(A064216(n+1))-A292595(n+1)`
-/

namespace A292594.P6406063413468990733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064216 (n + 1)).toNat - A292595 (n + 1)

end

end A292594.P6406063413468990733

namespace A292594

/-- `A061395(A064216(n+1))-A292595(n+1)` -/
def P6406063413468990733.Spec : Prop :=
  ∀ n, P6406063413468990733.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P14140666620406734403

`A285714(n+1)-(A292595(n+1)+A285716(n+1))`
-/

namespace A292594.P14140666620406734403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285714 (n + 1) - (A292595 (n + 1) + A285716 (n + 1))

end

end A292594.P14140666620406734403

namespace A292594

/-- `A285714(n+1)-(A292595(n+1)+A285716(n+1))` -/
def P14140666620406734403.Spec : Prop :=
  ∀ n, P14140666620406734403.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P9693360296318894655

`A252735(A005408(n))-A292595(n+1)`
-/

namespace A292594.P9693360296318894655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A005408 n).toNat - A292595 (n + 1)

end

end A292594.P9693360296318894655

namespace A292594

/-- `A252735(A005408(n))-A292595(n+1)` -/
def P9693360296318894655.Spec : Prop :=
  ∀ n, P9693360296318894655.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P11771146036319519079

`A252735(A016825(n)/2)-A292595(n+1)`
-/

namespace A292594.P11771146036319519079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (SequenceMachineLib.roundAway ((A016825 n : ℚ) / 2)).toNat - A292595 (n + 1)

end

end A292594.P11771146036319519079

namespace A292594

/-- `A252735(A016825(n)/2)-A292595(n+1)` -/
def P11771146036319519079.Spec : Prop :=
  ∀ n, P11771146036319519079.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P7377990315990963069

`A252735(A016825(n))-A292595(n+1)`
-/

namespace A292594.P7377990315990963069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A016825 n).toNat - A292595 (n + 1)

end

end A292594.P7377990315990963069

namespace A292594

/-- `A252735(A016825(n))-A292595(n+1)` -/
def P7377990315990963069.Spec : Prop :=
  ∀ n, P7377990315990963069.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P7061236791191882112

`A285725(A017113(n)/2)-A292595(n+1)`
-/

namespace A292594.P7061236791191882112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285725 (SequenceMachineLib.roundAway ((A017113 n : ℚ) / 2)).toNat - A292595 (n + 1)

end

end A292594.P7061236791191882112

namespace A292594

/-- `A285725(A017113(n)/2)-A292595(n+1)` -/
def P7061236791191882112.Spec : Prop :=
  ∀ n, P7061236791191882112.a n = A292594 (n + 1)

end A292594

/-! ## A292594.P10570628364480658260

`A285725(A017113(n))-A292595(n+1)`
-/

namespace A292594.P10570628364480658260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285725 (A017113 n).toNat - A292595 (n + 1)

end

end A292594.P10570628364480658260

namespace A292594

/-- `A285725(A017113(n))-A292595(n+1)` -/
def P10570628364480658260.Spec : Prop :=
  ∀ n, P10570628364480658260.a n = A292594 (n + 1)

end A292594

/-!
# A292595: a(n) = A000120(A292591(n)).

The programs for A292595, the canonical program `A292595.P4451636547860676390` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292595 has offset 1).

The definition of A292595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292595.P4451636547860676390

`A000120(A292591(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292595

/-- `A000120(A292591(n+1))` -/
def P4451636547860676390.Spec : Prop :=
  ∀ n, P4451636547860676390.a n = A292595 (n + 1)

theorem P4451636547860676390.correct : P4451636547860676390.Spec := by
  intro n
  simp only [A292595, Nat.add_sub_cancel]

end A292595

/-! ## A292595.P13593782548252467189

`A285715(n+1)-A292594(n+1)`
-/

namespace A292595.P13593782548252467189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (n + 1) - A292594 (n + 1)

end

end A292595.P13593782548252467189

namespace A292595

/-- `A285715(n+1)-A292594(n+1)` -/
def P13593782548252467189.Spec : Prop :=
  ∀ n, P13593782548252467189.a n = A292595 (n + 1)

end A292595

/-! ## A292595.P17513950500885713009

`A061395(A064216(n+1))-A292594(n+1)`
-/

namespace A292595.P17513950500885713009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064216 (n + 1)).toNat - A292594 (n + 1)

end

end A292595.P17513950500885713009

namespace A292595

/-- `A061395(A064216(n+1))-A292594(n+1)` -/
def P17513950500885713009.Spec : Prop :=
  ∀ n, P17513950500885713009.a n = A292595 (n + 1)

end A292595

/-! ## A292595.P18079400577509145495

`A285714(n+1)-(A292594(n+1)+A285716(n+1))`
-/

namespace A292595.P18079400577509145495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285714 (n + 1) - (A292594 (n + 1) + A285716 (n + 1))

end

end A292595.P18079400577509145495

namespace A292595

/-- `A285714(n+1)-(A292594(n+1)+A285716(n+1))` -/
def P18079400577509145495.Spec : Prop :=
  ∀ n, P18079400577509145495.a n = A292595 (n + 1)

end A292595

/-! ## A292595.P17635567101604586615

`A252735(A005408(n))-A292594(n+1)`
-/

namespace A292595.P17635567101604586615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A005408 n).toNat - A292594 (n + 1)

end

end A292595.P17635567101604586615

namespace A292595

/-- `A252735(A005408(n))-A292594(n+1)` -/
def P17635567101604586615.Spec : Prop :=
  ∀ n, P17635567101604586615.a n = A292595 (n + 1)

end A292595

/-! ## A292595.P9538844234911393977

`A252735(A016825(n)/2)-A292594(n+1)`
-/

namespace A292595.P9538844234911393977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (SequenceMachineLib.roundAway ((A016825 n : ℚ) / 2)).toNat - A292594 (n + 1)

end

end A292595.P9538844234911393977

namespace A292595

/-- `A252735(A016825(n)/2)-A292594(n+1)` -/
def P9538844234911393977.Spec : Prop :=
  ∀ n, P9538844234911393977.a n = A292595 (n + 1)

end A292595

/-! ## A292595.P6878713475619354915

`A252735(A016825(n))-A292594(n+1)`
-/

namespace A292595.P6878713475619354915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A016825 n).toNat - A292594 (n + 1)

end

end A292595.P6878713475619354915

namespace A292595

/-- `A252735(A016825(n))-A292594(n+1)` -/
def P6878713475619354915.Spec : Prop :=
  ∀ n, P6878713475619354915.a n = A292595 (n + 1)

end A292595

/-! ## A292595.P17380423444869276246

`A252735(A016754(n))-A292594(n+1)`
-/

namespace A292595.P17380423444869276246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A016754 n).toNat - A292594 (n + 1)

end

end A292595.P17380423444869276246

namespace A292595

/-- `A252735(A016754(n))-A292594(n+1)` -/
def P17380423444869276246.Spec : Prop :=
  ∀ n, P17380423444869276246.a n = A292595 (n + 1)

end A292595

/-!
# A292596: a(1) = a(2) = 0; for n > 2, a(n) = A010051(n) + 2*a(floor(n/2)).

The programs for A292596, the canonical program `A292596.P449040721367529095` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292596 has offset 1).

The definition of A292596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010051(n+1)+2*a(floor((n+1)/2)-1)` (program `A292596.P449040721367529095`, by `A292596.P449040721367529095.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292596.P449040721367529095

`A010051(n+1)+2*a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292596

/-- `A010051(n+1)+2*a(floor((n+1)/2)-1)` -/
def P449040721367529095.Spec : Prop :=
  ∀ n, P449040721367529095.a n = A292596 (n + 1)

theorem P449040721367529095.correct : P449040721367529095.Spec := by
  intro n
  simp only [A292596, Nat.add_sub_cancel]

end A292596

/-! ## A292596.P9124956103338022198

`1-A292597(n+1)+n`
-/

namespace A292596.P9124956103338022198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292597 (n + 1) + (n : ℤ)

end

end A292596.P9124956103338022198

namespace A292596

/-- `1-A292597(n+1)+n` -/
def P9124956103338022198.Spec : Prop :=
  ∀ n, P9124956103338022198.a n = A292596 (n + 1)

end A292596

/-! ## A292596.P12727409472765616532

`and(n+1, A292599(n+1))`
-/

namespace A292596.P12727409472765616532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A292599 (n + 1))

end

end A292596.P12727409472765616532

namespace A292596

/-- `and(n+1, A292599(n+1))` -/
def P12727409472765616532.Spec : Prop :=
  ∀ n, P12727409472765616532.a n = A292596 (n + 1)

end A292596

/-! ## A292596.P1906899226453748480

`A000027(n+1)%A292597(n+1)`
-/

namespace A292596.P1906899226453748480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A292597 (n + 1))

end

end A292596.P1906899226453748480

namespace A292596

/-- `A000027(n+1)%A292597(n+1)` -/
def P1906899226453748480.Spec : Prop :=
  ∀ n, P1906899226453748480.a n = A292596 (n + 1)

end A292596

/-! ## A292596.P11994367559951024264

`A087156(n+1)%A292597(n+1)`
-/

namespace A292596.P11994367559951024264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A292597 (n + 1))

end

end A292596.P11994367559951024264

namespace A292596

/-- `A087156(n+1)%A292597(n+1)` -/
def P11994367559951024264.Spec : Prop :=
  ∀ n, P11994367559951024264.a n = A292596 (n + 1)

end A292596

/-! ## A292596.P10374291673281054461

`A115273(3*n+4)%A292597(n+1)`
-/

namespace A292596.P10374291673281054461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115273 (3 * n + 4)) (A292597 (n + 1))

end

end A292596.P10374291673281054461

namespace A292596

/-- `A115273(3*n+4)%A292597(n+1)` -/
def P10374291673281054461.Spec : Prop :=
  ∀ n, P10374291673281054461.a n = A292596 (n + 1)

end A292596

/-! ## A292596.P4202413627838121979

`A060401(n+1)%A292597(n+1)`
-/

namespace A292596.P4202413627838121979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A292597 (n + 1))

end

end A292596.P4202413627838121979

namespace A292596

/-- `A060401(n+1)%A292597(n+1)` -/
def P4202413627838121979.Spec : Prop :=
  ∀ n, P4202413627838121979.a n = A292596 (n + 1)

end A292596

/-! ## A292596.P1658925788284213894

`A275535(n+1)%A292597(n+1)`
-/

namespace A292596.P1658925788284213894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275535 (n + 1)) (A292597 (n + 1))

end

end A292596.P1658925788284213894

namespace A292596

/-- `A275535(n+1)%A292597(n+1)` -/
def P1658925788284213894.Spec : Prop :=
  ∀ n, P1658925788284213894.a n = A292596 (n + 1)

end A292596

/-!
# A292597: a(1) = 1; for n > 1, a(n) = c(n) + 2*a(floor(n/2)), where c(n) is the characteristic function of odd composites, A071904.

The programs for A292597, the canonical program `A292597.P12063042605645149982` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292597 has offset 1).

The definition of A292597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292597.P12063042605645149982

`A000035(n+1)*(1-A010051(n+1))+2*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292597

/-- `A000035(n+1)*(1-A010051(n+1))+2*a(floor((n+1)/2)-1)` -/
def P12063042605645149982.Spec : Prop :=
  ∀ n, P12063042605645149982.a n = A292597 (n + 1)

theorem P12063042605645149982.correct : P12063042605645149982.Spec := by
  intro n
  simp only [A292597, Nat.add_sub_cancel]

end A292597

/-! ## A292597.P2949684048453666895

`1-A292596(n+1)+n`
-/

namespace A292597.P2949684048453666895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292596 (n + 1) + (n : ℤ)

end

end A292597.P2949684048453666895

namespace A292597

/-- `1-A292596(n+1)+n` -/
def P2949684048453666895.Spec : Prop :=
  ∀ n, P2949684048453666895.a n = A292597 (n + 1)

end A292597

/-! ## A292597.P9041033539040426009

`xor(n+1, A292596(-xor(n, -1)))`
-/

namespace A292597.P9041033539040426009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292596 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A292597.P9041033539040426009

namespace A292597

/-- `xor(n+1, A292596(-xor(n, -1)))` -/
def P9041033539040426009.Spec : Prop :=
  ∀ n, P9041033539040426009.a n = A292597 (n + 1)

end A292597

/-! ## A292597.P13836777482456856792

`xor(n+1, A292596(xor(1, xor(1, n+1))))`
-/

namespace A292597.P13836777482456856792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292596 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A292597.P13836777482456856792

namespace A292597

/-- `xor(n+1, A292596(xor(1, xor(1, n+1))))` -/
def P13836777482456856792.Spec : Prop :=
  ∀ n, P13836777482456856792.a n = A292597 (n + 1)

end A292597

/-! ## A292597.P6371585351274941043

`1-and(n+1, A292599(n+1))+n`
-/

namespace A292597.P6371585351274941043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n + 1 : ℤ) (A292599 (n + 1)) + (n : ℤ)

end

end A292597.P6371585351274941043

namespace A292597

/-- `1-and(n+1, A292599(n+1))+n` -/
def P6371585351274941043.Spec : Prop :=
  ∀ n, P6371585351274941043.a n = A292597 (n + 1)

end A292597

/-! ## A292597.P1907429553414284363

`xor(n+1, A292596(A000027(n+1)))`
-/

namespace A292597.P1907429553414284363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292596 (A000027 (n + 1)).toNat)

end

end A292597.P1907429553414284363

namespace A292597

/-- `xor(n+1, A292596(A000027(n+1)))` -/
def P1907429553414284363.Spec : Prop :=
  ∀ n, P1907429553414284363.a n = A292597 (n + 1)

end A292597

/-! ## A292597.P2689383079561009075

`n+1+A001057(A292596(2*(n+1)))`
-/

namespace A292597.P2689383079561009075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001057 (A292596 (2 * (n + 1))).toNat

end

end A292597.P2689383079561009075

namespace A292597

/-- `n+1+A001057(A292596(2*(n+1)))` -/
def P2689383079561009075.Spec : Prop :=
  ∀ n, P2689383079561009075.a n = A292597 (n + 1)

end A292597

/-! ## A292597.P3399269410181537023

`A008683(A002145(n+1))*A292596(n+1)+n+1`
-/

namespace A292597.P3399269410181537023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002145 (n + 1)).toNat * A292596 (n + 1) + (n + 1 : ℤ)

end

end A292597.P3399269410181537023

namespace A292597

/-- `A008683(A002145(n+1))*A292596(n+1)+n+1` -/
def P3399269410181537023.Spec : Prop :=
  ∀ n, P3399269410181537023.a n = A292597 (n + 1)

end A292597

/-!
# A292598: a(n) is the number of odd primes in the sequence [n, floor(n/2), floor(n/4), ..., 1].

The programs for A292598, the canonical program `A292598.P10684525461602173111` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292598 has offset 1).

The definition of A292598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292598.P10684525461602173111

`A010051(n+1)+a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292598

/-- `A010051(n+1)+a(floor((n+1)/2)-1)` -/
def P10684525461602173111.Spec : Prop :=
  ∀ n, P10684525461602173111.a n = A292598 (n + 1)

theorem P10684525461602173111.correct : P10684525461602173111.Spec := by
  intro n
  simp only [A292598, Nat.add_sub_cancel]

end A292598

/-! ## A292598.P7985234333690986820

`A000120(A292596(n+1))`
-/

namespace A292598.P7985234333690986820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292596 (n + 1)).toNat

end

end A292598.P7985234333690986820

namespace A292598

/-- `A000120(A292596(n+1))` -/
def P7985234333690986820.Spec : Prop :=
  ∀ n, P7985234333690986820.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P6217672225641295595

`A000120(1-A292597(n+1)+n)`
-/

namespace A292598.P6217672225641295595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (1 - A292597 (n + 1) + (n : ℤ)).toNat

end

end A292598.P6217672225641295595

namespace A292598

/-- `A000120(1-A292597(n+1)+n)` -/
def P6217672225641295595.Spec : Prop :=
  ∀ n, P6217672225641295595.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P2460114209065033688

`A000120(and(n+1, A292599(n+1)))`
-/

namespace A292598.P2460114209065033688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n + 1 : ℤ) (A292599 (n + 1))).toNat

end

end A292598.P2460114209065033688

namespace A292598

/-- `A000120(and(n+1, A292599(n+1)))` -/
def P2460114209065033688.Spec : Prop :=
  ∀ n, P2460114209065033688.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P6226878431539964617

`A001222(A001316(n+1-A292597(n+1)))`
-/

namespace A292598.P6226878431539964617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 ((n + 1 : ℤ) - A292597 (n + 1)).toNat).toNat

end

end A292598.P6226878431539964617

namespace A292598

/-- `A001222(A001316(n+1-A292597(n+1)))` -/
def P6226878431539964617.Spec : Prop :=
  ∀ n, P6226878431539964617.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P16859185317998450353

`A001222(A001316(and(n+1, A292596(n+1))))`
-/

namespace A292598.P16859185317998450353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (Int.land (n + 1 : ℤ) (A292596 (n + 1))).toNat).toNat

end

end A292598.P16859185317998450353

namespace A292598

/-- `A001222(A001316(and(n+1, A292596(n+1))))` -/
def P16859185317998450353.Spec : Prop :=
  ∀ n, P16859185317998450353.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P11145935438269738543

`A000120(n+1)-A000120(n+1-A292599(n+1))`
-/

namespace A292598.P11145935438269738543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 ((n + 1 : ℤ) - A292599 (n + 1)).toNat

end

end A292598.P11145935438269738543

namespace A292598

/-- `A000120(n+1)-A000120(n+1-A292599(n+1))` -/
def P11145935438269738543.Spec : Prop :=
  ∀ n, P11145935438269738543.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P3911600640690496231

`A001222(A001316(A292596(2*(n+1))))`
-/

namespace A292598.P3911600640690496231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A292596 (2 * (n + 1))).toNat).toNat

end

end A292598.P3911600640690496231

namespace A292598

/-- `A001222(A001316(A292596(2*(n+1))))` -/
def P3911600640690496231.Spec : Prop :=
  ∀ n, P3911600640690496231.a n = A292598 (n + 1)

end A292598

/-! ## A292598.P5612828685696612433

`A001222(A001316(n+1)/A001316(A292597(2*(n+1))))`
-/

namespace A292598.P5612828685696612433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / (A001316 (A292597 (2 * (n + 1))).toNat : ℚ))).toNat

end

end A292598.P5612828685696612433

namespace A292598

/-- `A001222(A001316(n+1)/A001316(A292597(2*(n+1))))` -/
def P5612828685696612433.Spec : Prop :=
  ∀ n, P5612828685696612433.a n = A292598 (n + 1)

end A292598

/-!
# A292599: a(1) = 0; for n > 1, a(n) = A010051(n) + 2*a(floor(n/2)).

The programs for A292599, the canonical program `A292599.P8177924625487192254` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292599 has offset 1).

The definition of A292599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010051(n+1)+2*a(floor((n+1)/2)-1)` (program `A292599.P8177924625487192254`, by `A292599.P8177924625487192254.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292599.P8177924625487192254

`A010051(n+1)+2*a(floor((n+1)/2)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292599

/-- `A010051(n+1)+2*a(floor((n+1)/2)-1)` -/
def P8177924625487192254.Spec : Prop :=
  ∀ n, P8177924625487192254.a n = A292599 (n + 1)

theorem P8177924625487192254.correct : P8177924625487192254.Spec := by
  intro n
  simp only [A292599, Nat.add_sub_cancel]

end A292599

/-! ## A292599.P14502171061390556854

`A060973(or(A001316(n), A077168(n)))`
-/

namespace A292599.P14502171061390556854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (Int.lor (A001316 n) (A077168 n)).toNat

end

end A292599.P14502171061390556854

namespace A292599

/-- `A060973(or(A001316(n), A077168(n)))` -/
def P14502171061390556854.Spec : Prop :=
  ∀ n, P14502171061390556854.a n = A292599 (n + 1)

end A292599

/-! ## A292599.P11305019966657473308

`A109129(A196228(2*(n+1))+A152046(n+1))`
-/

namespace A292599.P11305019966657473308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A196228 (2 * (n + 1)) + A152046 (n + 1)).toNat

end

end A292599.P11305019966657473308

namespace A292599

/-- `A109129(A196228(2*(n+1))+A152046(n+1))` -/
def P11305019966657473308.Spec : Prop :=
  ∀ n, P11305019966657473308.a n = A292599 (n + 1)

end A292599

/-! ## A292599.P14832199638030743121

`A129600(lt[A193231(n), 13])`
-/

namespace A292599.P14832199638030743121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129600 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A292599.P14832199638030743121

namespace A292599

/-- `A129600(lt[A193231(n), 13])` -/
def P14832199638030743121.Spec : Prop :=
  ∀ n, P14832199638030743121.a n = A292599 (n + 1)

end A292599

/-! ## A292599.P12907181914903819412

`A001222(A077446(n+1))+floor(n/3)`
-/

namespace A292599.P12907181914903819412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077446 (n + 1)).toNat + ⌊(n : ℚ) / 3⌋

end

end A292599.P12907181914903819412

namespace A292599

/-- `A001222(A077446(n+1))+floor(n/3)` -/
def P12907181914903819412.Spec : Prop :=
  ∀ n, P12907181914903819412.a n = A292599 (n + 1)

end A292599

