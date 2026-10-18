import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A379500: Square array A(n, k) = A249670(A246278(n, k)), read by falling antidiagonals; A249670(n) = A017665(n)*A017666(n), applied to the prime shift array.

The programs for A379500, there is no canonical definition to state claims against.
-/

/-! ## A379500.P11041264522545977806

`A341605(n+1)*A341606(n+1)`
-/

namespace A379500.P11041264522545977806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341605 (n + 1) * A341606 (n + 1)

end

end A379500.P11041264522545977806

/-! ## A379500.P4422416108137478102

`A379499(n+1)/A355925(n+1)²`
-/

namespace A379500.P4422416108137478102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379499 (n + 1) : ℚ) / (A355925 (n + 1) ^ 2 : ℚ)

end

end A379500.P4422416108137478102

/-! ## A379500.P3408857694162888195

`A341606(n+1)/A355925(n+1)*A355927(n+1)`
-/

namespace A379500.P3408857694162888195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ) * (A355927 (n + 1) : ℚ)

end

end A379500.P3408857694162888195

/-! ## A379500.P14790446390612157726

`(A246275(n+1)+1)/A355925(n+1)*A341605(n+1)`
-/

namespace A379500.P14790446390612157726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246275 (n + 1) + 1 : ℚ) / (A355925 (n + 1) : ℚ) * (A341605 (n + 1) : ℚ)

end

end A379500.P14790446390612157726

/-! ## A379500.P2684254537392622718

`A341605(n+1)/A355925(n+1)*A246278(n+2)`
-/

namespace A379500.P2684254537392622718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341605 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A379500.P2684254537392622718

/-! ## A379500.P13261515878693392498

`A249670(A246278(n+2))`
-/

namespace A379500.P13261515878693392498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A246278 (n + 2)).toNat

end

end A379500.P13261515878693392498

/-! ## A379500.P12542420961011115594

`A249670(A341606(n+1)*A355925(n+1))`
-/

namespace A379500.P12542420961011115594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A379500.P12542420961011115594

/-!
# A379501: a(n) = (3/2)*A019565((2n-1)^2) - A019565(A001065((2n-1)^2)), where A019565 is the base-2 exp-function, and A001065 is the sum of proper divisors of n.

The programs for A379501, there is no canonical definition to state claims against.
-/

/-! ## A379501.P14707543506770910426

`A379496(A016754(n))`
-/

namespace A379501.P14707543506770910426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379496 (A016754 n).toNat

end

end A379501.P14707543506770910426

/-! ## A379501.P11712772599850290342

`3/2*A019565((2*(n+1)-1)²)-A019565(A001065((2*(n+1)-1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379501.P11712772599850290342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A019565 (((2 * (n + 1) : ℤ) - 1) ^ 2).toNat : ℚ) - (A019565 (A001065 (((2 * (n + 1) : ℤ) - 1) ^ 2).toNat).toNat : ℚ)

end

end A379501.P11712772599850290342

/-! ## A379501.P7279276371447473500

`A019565(1+A016754(n))-A379495(A016754(n))`
-/

namespace A379501.P7279276371447473500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (1 + A016754 n).toNat - A379495 (A016754 n).toNat

end

end A379501.P7279276371447473500

/-! ## A379501.P1571371752041851419

`A379496(Δ[n²]²)`
-/

namespace A379501.P1571371752041851419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379496 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A379501.P1571371752041851419

/-!
# A379502: Characteristic function of almost Zumkeller numbers: a(n) = 1 if Zumkeller-deficiency of n (A103977) is 1, otherwise 0.

The programs for A379502, there is no canonical definition to state claims against.
-/

/-! ## A379502.P15538478445493393466

`floor(1/A082729(n+1))`
-/

namespace A379502.P15538478445493393466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A082729 (n + 1) : ℚ)⌋

end

end A379502.P15538478445493393466

/-! ## A379502.P13484201123306080792

`A000007(A082729(n+1)-1)`
-/

namespace A379502.P13484201123306080792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A082729 (n + 1) - 1).toNat

end

end A379502.P13484201123306080792

/-! ## A379502.P2875582400195874570

`∑{d}[A103977(n+1), A008683(#)]`
-/

namespace A379502.P2875582400195874570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A379502.P2875582400195874570

/-! ## A379502.P6796345064477710200

`A057427(A379505(n+1))`
-/

namespace A379502.P6796345064477710200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A379505 (n + 1)).toNat

end

end A379502.P6796345064477710200

/-! ## A379502.P13315865160141697622

`A359196(A379504(n+1)+1)`
-/

namespace A379502.P13315865160141697622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359196 (A379504 (n + 1) + 1).toNat

end

end A379502.P13315865160141697622

/-! ## A379502.P8503609267964023479

`A002828(A379505(n+1)^A302242(n+1))`
-/

namespace A379502.P8503609267964023479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway ((A379505 (n + 1) : ℚ) ^ (A302242 (n + 1) : ℤ))).toNat

end

end A379502.P8503609267964023479

/-! ## A379502.P15257305983418411669

`A000007((1-A103977(n+1))²)`
-/

namespace A379502.P15257305983418411669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A103977 (n + 1)) ^ 2).toNat

end

end A379502.P15257305983418411669

/-! ## A379502.P16109914634320929505

`A359196(A000079(A379504(n+1)))`
-/

namespace A379502.P16109914634320929505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359196 (A000079 (A379504 (n + 1)).toNat).toNat

end

end A379502.P16109914634320929505

/-! ## A379502.P3642915839648614259

`∑{d}[A379504(n+1), A379504(A122746(#))]`
-/

namespace A379502.P3642915839648614259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A379504 (A122746 d).toNat

end

end A379502.P3642915839648614259

/-! ## A379502.P17079998346307559621

`A354199(A212747(n))`
-/

namespace A379502.P17079998346307559621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354199 (A212747 n).toNat

end

end A379502.P17079998346307559621

/-!
# A379503: Almost Zumkeller numbers: Numbers whose Zumkeller-deficiency (A103977) is 1.

The programs for A379503, there is no canonical definition to state claims against.
-/

/-! ## A379503.P6275355026081861673

`record[A125733(n+1)]`
-/

namespace A379503.P6275355026081861673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379503.P6275355026081861673

/-! ## A379503.P85528848254246289

`eq[1, A103977(n+1)]+1`
-/

namespace A379503.P85528848254246289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379503.P85528848254246289

/-! ## A379503.P1535681456743712430

`filter[A003485(n), A379502(#)]`
-/

namespace A379503.P1535681456743712430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379502 (f1 j).toNat = 1) n)

end

end A379503.P1535681456743712430

/-! ## A379503.P4033351078135856575

`filter[A004277(n), A379502(#)]`
-/

namespace A379503.P4033351078135856575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379502 (f1 j).toNat = 1) n)

end

end A379503.P4033351078135856575

/-! ## A379503.P2492656390458880615

`filter[A004279(n), A379502(#)]`
-/

namespace A379503.P2492656390458880615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379502 (f1 j).toNat = 1) n)

end

end A379503.P2492656390458880615

/-! ## A379503.P8957299330650777015

`filter[A103288(n+1), A053866(#)]`
-/

namespace A379503.P8957299330650777015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A379503.P8957299330650777015

/-! ## A379503.P106618626948760164

`filter[A125225(n+1), A053866(#)]`
-/

namespace A379503.P106618626948760164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A379503.P106618626948760164

/-! ## A379503.P1378130788376949576

`filter[A125732(n+1), A053866(#)]`
-/

namespace A379503.P1378130788376949576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A379503.P1378130788376949576

/-! ## A379503.P4890409037836335877

`filter[A125733(n+1), A053866(#)]`
-/

namespace A379503.P4890409037836335877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A379503.P4890409037836335877

/-! ## A379503.P12777738638990254479

`filter[A103288(n+1), A093709(#)]`
-/

namespace A379503.P12777738638990254479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093709 (f1 j).toNat = 1) n)

end

end A379503.P12777738638990254479

/-!
# A379504: a(n) is the number of ways of partitioning the divisors of n into two disjoint sets with equal sum, when an extra 1-divisor is added to the divisor set, and the two 1-divisors are considered distinct from each other.

The programs for A379504, there is no canonical definition to state claims against.
-/

/-! ## A379504.P8590285796008751081

`A082313(A379505(n+1)^A034460(2*n+3))`
-/

namespace A379504.P8590285796008751081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (SequenceMachineLib.roundAway ((A379505 (n + 1) : ℚ) ^ (A034460 (2 * n + 3) : ℤ))).toNat

end

end A379504.P8590285796008751081

/-! ## A379504.P13946197738913632492

`and(∏{p}[n+1, 1-#], A330098(∑{d}[n+1, #]))`
-/

namespace A379504.P13946197738913632492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A330098 (∑ d ∈ Nat.divisors (f2 n), d))

end

end A379504.P13946197738913632492

/-! ## A379504.P15834188951889613242

`and(∏{p}[n+1, 1-#], A375873(∑{d}[n+1, #]))`
-/

namespace A379504.P15834188951889613242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A375873 (∑ d ∈ Nat.divisors (f2 n), d))

end

end A379504.P15834188951889613242

/-! ## A379504.P1444153839757835870

`A335446(∑{d}[n+1, #]+1)+char[2^n-1]`
-/

namespace A379504.P1444153839757835870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (∑ d ∈ Nat.divisors (f1 n), d + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A379504.P1444153839757835870

/-! ## A379504.P4245965426280511858

`A170976(A062173(n+1))`
-/

namespace A379504.P4245965426280511858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170976 (A062173 (n + 1)).toNat

end

end A379504.P4245965426280511858

/-!
# A379505: a(n) is the number of ways of partitioning the divisors of n into two disjoint sets with equal sum, when an extra 1-divisor is added to the divisor set, and the two 1-divisors are considered indistinguishable.

The programs for A379505, there is no canonical definition to state claims against.
-/

/-! ## A379505.P4264682436514372759

`A191372(A379504(n+1)^2)`
-/

namespace A379505.P4264682436514372759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191372 (A379504 (n + 1) ^ 2).toNat

end

end A379505.P4264682436514372759

/-! ## A379505.P10507160556556267002

`A341593(2^A379504(n+1))`
-/

namespace A379505.P10507160556556267002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341593 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A379504 (n + 1) : ℤ))).toNat

end

end A379505.P10507160556556267002

/-! ## A379505.P15403383838261335506

`A124748(A379504(n+1)^A124770(n+1))`
-/

namespace A379505.P15403383838261335506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (SequenceMachineLib.roundAway ((A379504 (n + 1) : ℚ) ^ (A124770 (n + 1) : ℤ))).toNat

end

end A379505.P15403383838261335506

/-! ## A379505.P13657704184714956706

`A261029(A379504(n+1)^A091799(n+1))`
-/

namespace A379505.P13657704184714956706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (SequenceMachineLib.roundAway ((A379504 (n + 1) : ℚ) ^ (A091799 (n + 1) : ℤ))).toNat

end

end A379505.P13657704184714956706

/-! ## A379505.P13595838402291131143

`A274641(A379504(n+1)^A379488(2*n+3))`
-/

namespace A379505.P13595838402291131143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (SequenceMachineLib.roundAway ((A379504 (n + 1) : ℚ) ^ (A379488 (2 * n + 3) : ℤ))).toNat

end

end A379505.P13595838402291131143

/-! ## A379505.P6771677522105417941

`A029908(3*n+5)%A104185(A379504(n+1))`
-/

namespace A379505.P6771677522105417941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029908 (3 * n + 5)) (A104185 (A379504 (n + 1)).toNat)

end

end A379505.P6771677522105417941

/-! ## A379505.P5029543720035949788

`C(A340654(n+1), A319877(A082729(n+1)))`
-/

namespace A379505.P5029543720035949788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340654 (n + 1)).toNat (A319877 (A082729 (n + 1)).toNat).toNat

end

end A379505.P5029543720035949788

/-! ## A379505.P1022232606350521174

`A329559(n+4)%A276086(A379504(n+1))`
-/

namespace A379505.P1022232606350521174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329559 (n + 4)) (A276086 (A379504 (n + 1)).toNat)

end

end A379505.P1022232606350521174

/-!
# A379507: For n >= 1, a(n) = GCD((2*n)! / (n!)^2, 105).

The programs for A379507, there is no canonical definition to state claims against.
-/

/-! ## A379507.P18258772961215527992

`gcd(A001700(n), A186915(A087230(2*n+1)))`
-/

namespace A379507.P18258772961215527992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001700 n) (A186915 (A087230 (2 * n + 1)).toNat)

end

end A379507.P18258772961215527992

/-!
# A379508: Sum of the legs of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A379508, the canonical program `A379508.P17211813283351291404` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379508 has offset 0).

The definition of A379508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379508.P17211813283351291404

`A362545(n)+A377726(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A379508

/-- `A362545(n)+A377726(n)` -/
def P17211813283351291404.Spec : Prop :=
  ∀ n, P17211813283351291404.a n = A379508 n

theorem P17211813283351291404.correct : P17211813283351291404.Spec := by
  intro n
  simp only [A379508]

end A379508

/-! ## A379508.P17941610675467637775

`A114696(4*n)`
-/

namespace A379508.P17941610675467637775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114696 (4 * n)

end

end A379508.P17941610675467637775

namespace A379508

/-- `A114696(4*n)` -/
def P17941610675467637775.Spec : Prop :=
  ∀ n, P17941610675467637775.a n = A379508 n

end A379508

/-! ## A379508.P14695859689654471868

`A184327(Δ[n²])`
-/

namespace A379508.P14695859689654471868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379508.P14695859689654471868

namespace A379508

/-- `A184327(Δ[n²])` -/
def P14695859689654471868.Spec : Prop :=
  ∀ n, P14695859689654471868.a n = A379508 n

end A379508

/-! ## A379508.P6351432961231362417

`A383734(n+1)-1`
-/

namespace A379508.P6351432961231362417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383734 (n + 1) - 1

end

end A379508.P6351432961231362417

namespace A379508

/-- `A383734(n+1)-1` -/
def P6351432961231362417.Spec : Prop :=
  ∀ n, P6351432961231362417.a n = A379508 n

end A379508

/-! ## A379508.P1557539658057396827

`2*A008845(n)+1`
-/

namespace A379508.P1557539658057396827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008845 n + 1

end

end A379508.P1557539658057396827

namespace A379508

/-- `2*A008845(n)+1` -/
def P1557539658057396827.Spec : Prop :=
  ∀ n, P1557539658057396827.a n = A379508 n

end A379508

/-! ## A379508.P3722989173605021711

`A165518(n+1)-3`
-/

namespace A379508.P3722989173605021711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165518 (n + 1) - 3

end

end A379508.P3722989173605021711

namespace A379508

/-- `A165518(n+1)-3` -/
def P3722989173605021711.Spec : Prop :=
  ∀ n, P3722989173605021711.a n = A379508 n

end A379508

/-! ## A379508.P12547603483349932368

`2*A008843(n)-1`
-/

namespace A379508.P12547603483349932368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008843 n - 1

end

end A379508.P12547603483349932368

namespace A379508

/-- `2*A008843(n)-1` -/
def P12547603483349932368.Spec : Prop :=
  ∀ n, P12547603483349932368.a n = A379508 n

end A379508

/-! ## A379508.P4658844854831125084

`3*A077420(n)-2`
-/

namespace A379508.P4658844854831125084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077420 n - 2

end

end A379508.P4658844854831125084

namespace A379508

/-- `3*A077420(n)-2` -/
def P4658844854831125084.Spec : Prop :=
  ∀ n, P4658844854831125084.a n = A379508 n

end A379508

/-! ## A379508.P13555927456464244281

`4*A008844(n)-3`
-/

namespace A379508.P13555927456464244281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008844 n - 3

end

end A379508.P13555927456464244281

namespace A379508

/-- `4*A008844(n)-3` -/
def P13555927456464244281.Spec : Prop :=
  ∀ n, P13555927456464244281.a n = A379508 n

end A379508

/-! ## A379508.P14518686739740543292

`A082639(2*(n+1))-1`
-/

namespace A379508.P14518686739740543292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (2 * (n + 1)) - 1

end

end A379508.P14518686739740543292

namespace A379508

/-- `A082639(2*(n+1))-1` -/
def P14518686739740543292.Spec : Prop :=
  ∀ n, P14518686739740543292.a n = A379508 n

end A379508

/-!
# A379509: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A379509, the canonical program `A379509.P8727841292093369161` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379509 has offset 0).

The definition of A379509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379509.P8727841292093369161

`A377725(n)+A385977(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A379509

/-- `A377725(n)+A385977(n)` -/
def P8727841292093369161.Spec : Prop :=
  ∀ n, P8727841292093369161.a n = A379509 n

theorem P8727841292093369161.correct : P8727841292093369161.Spec := by
  intro n
  simp only [A379509]

end A379509

/-! ## A379509.P15197743844281725585

`A378380(n)+A002315(n)`
-/

namespace A379509.P15197743844281725585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378380 n + A002315 n

end

end A379509.P15197743844281725585

namespace A379509

/-- `A378380(n)+A002315(n)` -/
def P15197743844281725585.Spec : Prop :=
  ∀ n, P15197743844281725585.a n = A379509 n

end A379509

/-! ## A379509.P4859186794074682238

`A078057(2*n)+∑[A002203(2*n)]*A124696(2*n+1)`
-/

namespace A379509.P4859186794074682238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j) * A124696 (2 * n + 1)

end

end A379509.P4859186794074682238

namespace A379509

/-- `A078057(2*n)+∑[A002203(2*n)]*A124696(2*n+1)` -/
def P4859186794074682238.Spec : Prop :=
  ∀ n, P4859186794074682238.a n = A379509 n

end A379509

/-! ## A379509.P18385826491837363393

`A100828(2*n)+∑[A002203(2*n)]*A124696(2*n+1)`
-/

namespace A379509.P18385826491837363393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j) * A124696 (2 * n + 1)

end

end A379509.P18385826491837363393

namespace A379509

/-- `A100828(2*n)+∑[A002203(2*n)]*A124696(2*n+1)` -/
def P18385826491837363393.Spec : Prop :=
  ∀ n, P18385826491837363393.a n = A379509 n

end A379509

/-! ## A379509.P4703403937184642299

`A084068(2*n+1)+∑[A002203(2*n)]*A124696(2*n+1)`
-/

namespace A379509.P4703403937184642299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A124696 (2 * n + 1)

end

end A379509.P4703403937184642299

namespace A379509

/-- `A084068(2*n+1)+∑[A002203(2*n)]*A124696(2*n+1)` -/
def P4703403937184642299.Spec : Prop :=
  ∀ n, P4703403937184642299.a n = A379509 n

end A379509

/-! ## A379509.P5493314074269646689

`A078057(2*n)+C(A077444(n+1)+2, 2)`
-/

namespace A379509.P5493314074269646689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (2 * n) + (Nat.choose (A077444 (n + 1) + 2).toNat 2 : ℤ)

end

end A379509.P5493314074269646689

namespace A379509

/-- `A078057(2*n)+C(A077444(n+1)+2, 2)` -/
def P5493314074269646689.Spec : Prop :=
  ∀ n, P5493314074269646689.a n = A379509 n

end A379509

/-!
# A379510: a(n) = n + floor(n*r/t) + floor(n*s/t), where r=2^(1/4), s=2^(1/2), t=2^(3/4).

The programs for A379510, there is no canonical definition to state claims against.
-/

/-! ## A379510.P4671273409168133354

`A383709(A288709(n+1))`
-/

namespace A379510.P4671273409168133354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383709 (A288709 (n + 1)).toNat

end

end A379510.P4671273409168133354

/-! ## A379510.P16309252061244460422

`A383709(A288713(n+1))`
-/

namespace A379510.P16309252061244460422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383709 (A288713 (n + 1)).toNat

end

end A379510.P16309252061244460422

/-! ## A379510.P14314057801496267727

`A079726(2*n+1)+A062157(A107246(n+2))`
-/

namespace A379510.P14314057801496267727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079726 (2 * n + 1) + A062157 (A107246 (n + 2)).toNat

end

end A379510.P14314057801496267727

/-!
# A379511: a(n) = floor(n*(2^(1/4) + 2^(-1/4))); Beatty sequence for 2^(1/4) + 2^(-1/4).

The programs for A379511, there is no canonical definition to state claims against.
-/

/-! ## A379511.P10623265376946263568

`comp[∑[A351588(A165129(2*n+1))]]+n`
-/

namespace A379511.P10623265376946263568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351588 (A165129 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A379511.P10623265376946263568

/-! ## A379511.P15815182914523907576

`∑[A140807(A154591(2*n+3)+2)+2]`
-/

namespace A379511.P15815182914523907576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140807 (A154591 (2 * n + 3) + 2).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P15815182914523907576

/-! ## A379511.P11246514586304449677

`comp[A232234(A102413(2*n+1))]-(n-Δ[n²])`
-/

namespace A379511.P11246514586304449677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232234 (A102413 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ((n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A379511.P11246514586304449677

/-! ## A379511.P8759891147076394874

`comp[A322792(n+4)+A103591(2*(n+1))]+n+2`
-/

namespace A379511.P8759891147076394874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322792 (n + 4) + A103591 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + 2

end

end A379511.P8759891147076394874

/-! ## A379511.P7670180037353670534

`∑[A010553(A233281(2*n+3))]`
-/

namespace A379511.P7670180037353670534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A233281 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P7670180037353670534

/-! ## A379511.P4693189171884504053

`∑[A299090(Δ[A000123(2*n+1)])]`
-/

namespace A379511.P4693189171884504053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P4693189171884504053

/-! ## A379511.P12182830053440224051

`∑[A000010(∏{e}[A378707(n+2), #])+1]`
-/

namespace A379511.P12182830053440224051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378707 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P12182830053440224051

/-! ## A379511.P7454570537746862470

`∑[A000045(∏{e}[A378707(n+2), #])+1]`
-/

namespace A379511.P7454570537746862470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378707 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P7454570537746862470

/-! ## A379511.P2408031890939138470

`∑[A212623(∏{e}[A378707(n+2), #]+1)+1]`
-/

namespace A379511.P2408031890939138470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378707 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212623 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P2408031890939138470

/-! ## A379511.P14160500397843238074

`∑[val(A114994(2*n+1), A329568(n+5))+2]`
-/

namespace A379511.P14160500397843238074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114994 (2 * n + 1)).toNat (A329568 (n + 5)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379511.P14160500397843238074

/-!
# A379513: Numerators of the partial sums of the reciprocals of the sum of unitary divisors function (A034448).

The programs for A379513, there is no canonical definition to state claims against.
-/

/-! ## A379513.P11568777647897449107

`A379615(A004902(n+2))`
-/

namespace A379513.P11568777647897449107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379615 (A004902 (n + 2)).toNat

end

end A379513.P11568777647897449107

/-! ## A379513.P18046971057953554530

`A379615(A004913(n+2))`
-/

namespace A379513.P18046971057953554530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379615 (A004913 (n + 2)).toNat

end

end A379513.P18046971057953554530

/-! ## A379513.P12853494970828586695

`A379615(A032551(n+2))`
-/

namespace A379513.P12853494970828586695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379615 (A032551 (n + 2)).toNat

end

end A379513.P12853494970828586695

/-!
# A379514: Denominators of the partial sums of the reciprocals of the sum of unitary divisors function (A034448).

The programs for A379514, there is no canonical definition to state claims against.
-/

/-! ## A379514.P10305458383036813968

`A001492(A184945(3*n+1))*A379616(n+1)`
-/

namespace A379514.P10305458383036813968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A184945 (3 * n + 1)).toNat * A379616 (n + 1)

end

end A379514.P10305458383036813968

/-! ## A379514.P16253544949327807815

`A379616(A004902(n+2))`
-/

namespace A379514.P16253544949327807815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379616 (A004902 (n + 2)).toNat

end

end A379514.P16253544949327807815

/-! ## A379514.P7989105825503474449

`A379616(A004913(n+2))`
-/

namespace A379514.P7989105825503474449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379616 (A004913 (n + 2)).toNat

end

end A379514.P7989105825503474449

/-!
# A379516: Denominators of the partial alternating sums of the reciprocals of the sum of unitary divisors function (A034448).

The programs for A379516, there is no canonical definition to state claims against.
-/

/-! ## A379516.P11239393067435284172

`filter[A379618(n+1), A276793(#)]`
-/

namespace A379516.P11239393067435284172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276793 (f1 j).toNat = 1) n)

end

end A379516.P11239393067435284172

/-! ## A379516.P880124552055015896

`A220482(A001591(n+4))*A379618(n+1)`
-/

namespace A379516.P880124552055015896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220482 (A001591 (n + 4)).toNat * A379618 (n + 1)

end

end A379516.P880124552055015896

/-!
# A379518: Denominators of the partial sums of the reciprocals of the unitary totient function (A047994).

The programs for A379518, there is no canonical definition to state claims against.
-/

/-! ## A379518.P11980565837272629544

`A162344(A130503(∏{digits}[n, gcd(#, #!²)]))`
-/

namespace A379518.P11980565837272629544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A130503 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod).toNat

end

end A379518.P11980565837272629544

/-!
# A379520: Denominators of the partial alternating sums of the reciprocals of the unitary totient function (A047994).

The programs for A379520, there is no canonical definition to state claims against.
-/

/-! ## A379520.P13454084032742211631

`A345044(A284650(n+1))`
-/

namespace A379520.P13454084032742211631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (A284650 (n + 1)).toNat

end

end A379520.P13454084032742211631

/-! ## A379520.P477490307983644425

`gcd(A003418(n), A333557(A284650(n+1)))`
-/

namespace A379520.P477490307983644425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A333557 (A284650 (n + 1)).toNat)

end

end A379520.P477490307983644425

/-! ## A379520.P17924656898210138306

`gcd(A139550(2*n), A345938(A284650(n+1)))`
-/

namespace A379520.P17924656898210138306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139550 (2 * n)) (A345938 (A284650 (n + 1)).toNat)

end

end A379520.P17924656898210138306

/-! ## A379520.P10925850565234594801

`A345044(A002805(n+1))`
-/

namespace A379520.P10925850565234594801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (A002805 (n + 1)).toNat

end

end A379520.P10925850565234594801

/-! ## A379520.P18295537670474273354

`A345044(A003418(n+1))`
-/

namespace A379520.P18295537670474273354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (A003418 (n + 1)).toNat

end

end A379520.P18295537670474273354

/-!
# A379521: Expansion of (1/x) * Series_Reversion( x / ( (1+x)^3 * (1+2*x)^2 ) ).

The programs for A379521, there is no canonical definition to state claims against.
-/

/-! ## A379521.P13205335515157267171

`abs(A213252(2*n+3))`
-/

namespace A379521.P13205335515157267171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213252 (2 * n + 3)|

end

end A379521.P13205335515157267171

/-! ## A379521.P9566573107002024980

`abs(A243863(Δ[A002378(n)]))`
-/

namespace A379521.P9566573107002024980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A243863 (f1 (n + 1) - f1 n).toNat|

end

end A379521.P9566573107002024980

/-! ## A379521.P11039219258321555155

`gcd(A000038(n), A213252(2*n+3))`
-/

namespace A379521.P11039219258321555155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213252 (2 * n + 3))

end

end A379521.P11039219258321555155

/-! ## A379521.P4536977163110893660

`lcm(A081579(∑[n]), A213252(2*n+3))`
-/

namespace A379521.P4536977163110893660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081579 (∑ j ∈ Finset.range (n + 1), f1 j)) (A213252 (2 * n + 3))

end

end A379521.P4536977163110893660

/-!
# A379530: a(n) = (A135318(3*n) + A135318(3*n+1) + A135318(3*n+2))/3.

The programs for A379530, the canonical program `A379530.P17922024253956413813` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379530 has offset 0).

The definition of A379530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379530.P17922024253956413813

`7*a(n-2)+8*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=23`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A379530

/-- `7*a(n-2)+8*a(n-4)` -/
def P17922024253956413813.Spec : Prop :=
  ∀ n, (P17922024253956413813.a n : ℤ) = A379530 n

theorem P17922024253956413813.correct : P17922024253956413813.Spec := by
  intro n
  simp only [A379530]

end A379530

/-! ## A379530.P3758275360689881889

`(A135318(3*n)+A135318(3*n+1)+A135318(3*n+2))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379530.P3758275360689881889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135318 (3 * n) + A135318 (3 * n + 1) + A135318 (3 * n + 2) : ℚ) / 3

end

end A379530.P3758275360689881889

namespace A379530

/-- `(A135318(3*n)+A135318(3*n+1)+A135318(3*n+2))/3` -/
def P3758275360689881889.Spec : Prop :=
  ∀ n, P3758275360689881889.a n = (A379530 n : ℚ)

end A379530

/-! ## A379530.P8218576113352604001

`A128115(A288594(n))+A017928(n)`
-/

namespace A379530.P8218576113352604001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (A288594 n).toNat + A017928 n

end

end A379530.P8218576113352604001

namespace A379530

/-- `A128115(A288594(n))+A017928(n)` -/
def P8218576113352604001.Spec : Prop :=
  ∀ n, P8218576113352604001.a n = A379530 n

end A379530

/-!
# A379532: Ulam numbers that are products of exactly four distinct primes (or tetraprimes).

The programs for A379532, there is no canonical definition to state claims against.
-/

/-! ## A379532.P15118655495467991648

`∩[A002858(n+1), A046386(n+1)]`
-/

namespace A379532.P15118655495467991648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379532.P15118655495467991648

/-!
# A379535: a(n) is the least number that has n prime factors, counted by multiplicity, and n runs in its decimal representation.

The programs for A379535, there is no canonical definition to state claims against.
-/

/-! ## A379535.P542398901750655670

`A033999(n)+A006530(A068166(n+1))`
-/

namespace A379535.P542398901750655670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A006530 (A068166 (n + 1)).toNat

end

end A379535.P542398901750655670

/-!
# A379537: Frugal numbers in base 2: numbers k such that A377369(k) < A070939(k).

The programs for A379537, there is no canonical definition to state claims against.
-/

/-! ## A379537.P8400755169014314662

`A379538(∑[n+1]+1)`
-/

namespace A379537.P8400755169014314662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379538 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A379537.P8400755169014314662

/-! ## A379537.P1546450081315675532

`record[A379538(n+2)/A039599(n)]`
-/

namespace A379537.P1546450081315675532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379538 (n + 2) : ℚ) / (A039599 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379537.P1546450081315675532

/-! ## A379537.P16932715003400855273

`record[A379538(n+2)/A055587(n)]`
-/

namespace A379537.P16932715003400855273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379538 (n + 2) : ℚ) / (A055587 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379537.P16932715003400855273

/-! ## A379537.P11388394174020377837

`record[A379538(n+2)-A230526(n+1)]`
-/

namespace A379537.P11388394174020377837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379538 (n + 2) - A230526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379537.P11388394174020377837

/-! ## A379537.P4748431645873859630

`record[A379538(n+2)/A004736(n+1)]`
-/

namespace A379537.P4748431645873859630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379538 (n + 2) : ℚ) / (A004736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379537.P4748431645873859630

/-!
# A379539: a(n) is the (n-1)-st frugal number in base n.

The programs for A379539, there is no canonical definition to state claims against.
-/

/-! ## A379539.P9650474414007743399

`A379538(∑[4*n]+2)`
-/

namespace A379539.P9650474414007743399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379538 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A379539.P9650474414007743399

/-!
# A379540: Row sums of A376832.

The programs for A379540, the canonical program `A379540.P5088240098878821863` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379540 has offset 0).

The definition of A379540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379540.P5088240098878821863

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=16, a(4)=60, a(5)=168`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A379540

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5088240098878821863.Spec : Prop :=
  ∀ n, P5088240098878821863.a n = A379540 n

theorem P5088240098878821863.correct : P5088240098878821863.Spec := by
  intro n
  simp only [A379540]

end A379540

/-! ## A379540.P6593777139431149714

`record[A359893(n+1)]*A363607(n+1)`
-/

namespace A379540.P6593777139431149714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A363607 (n + 1)

end

end A379540.P6593777139431149714

namespace A379540

/-- `record[A359893(n+1)]*A363607(n+1)` -/
def P6593777139431149714.Spec : Prop :=
  ∀ n, P6593777139431149714.a n = A379540 n

end A379540

/-! ## A379540.P14054811682230840664

`A252736(A257113(2*n+1))+A019582(n)`
-/

namespace A379540.P14054811682230840664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A257113 (2 * n + 1)).toNat + A019582 n

end

end A379540.P14054811682230840664

namespace A379540

/-- `A252736(A257113(2*n+1))+A019582(n)` -/
def P14054811682230840664.Spec : Prop :=
  ∀ n, P14054811682230840664.a n = A379540 n

end A379540

/-!
# A379541: Prime numbers such that the next greatest prime power is also prime.

The programs for A379541, there is no canonical definition to state claims against.
-/

/-! ## A379541.P6227860937656980788

`A246655(A379158(n+1))`
-/

namespace A379541.P6227860937656980788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A379158 (n + 1)).toNat

end

end A379541.P6227860937656980788

/-! ## A379541.P17958867847898526507

`p?[A065514(n+1)]`
-/

namespace A379541.P17958867847898526507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A379541.P17958867847898526507

/-! ## A379541.P4190698895797274838

`p?[A120636(p?[2*n+1])]`
-/

namespace A379541.P4190698895797274838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A379541.P4190698895797274838

/-! ## A379541.P6833882763871093171

`p?[A136623(p?[2*n+1])]`
-/

namespace A379541.P6833882763871093171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A379541.P6833882763871093171

/-! ## A379541.P8566943697844947168

`p?[A322990(p?[2*n+1])]`
-/

namespace A379541.P8566943697844947168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A379541.P8566943697844947168

/-! ## A379541.P16271330288566135210

`A000040(A377286(n+1))`
-/

namespace A379541.P16271330288566135210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377286 (n + 1)).toNat

end

end A379541.P16271330288566135210

/-! ## A379541.P17374402090031496977

`A000961(A379158(n+1)+1)`
-/

namespace A379541.P17374402090031496977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A379158 (n + 1) + 1).toNat

end

end A379541.P17374402090031496977

/-! ## A379541.P8419143851644151304

`A008578(A377286(n+1)+1)`
-/

namespace A379541.P8419143851644151304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A377286 (n + 1) + 1).toNat

end

end A379541.P8419143851644151304

/-! ## A379541.P12428925550149010704

`A065514(A377286(n+1)+1)`
-/

namespace A379541.P12428925550149010704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (A377286 (n + 1) + 1).toNat

end

end A379541.P12428925550149010704

/-! ## A379541.P2898388310646362762

`filter[A065514(n+1), A010051(#)]`
-/

namespace A379541.P2898388310646362762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A379541.P2898388310646362762

/-!
# A379542: Second term of the n-th differences of the prime numbers.

The programs for A379542, there is no canonical definition to state claims against.
-/

/-! ## A379542.P12232875885115731158

`A095195(∑[n+2])`
-/

namespace A379542.P12232875885115731158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095195 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379542.P12232875885115731158

/-! ## A379542.P16486754361551865679

`A007442(n+1)+A007442(n+2)`
-/

namespace A379542.P16486754361551865679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1) + A007442 (n + 2)

end

end A379542.P16486754361551865679

/-! ## A379542.P2392385156734338827

`A095195(A000096(n+1))%A041076(n)`
-/

namespace A379542.P2392385156734338827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095195 (A000096 (n + 1)).toNat) (A041076 n)

end

end A379542.P2392385156734338827

/-! ## A379542.P9046342608321140997

`A376682(∑[n+3])`
-/

namespace A379542.P9046342608321140997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379542.P9046342608321140997

/-!
# A379544: a(n) = ((p-1)^n + (p+1)^n) mod p^2, where p is the n-th prime.

The programs for A379544, there is no canonical definition to state claims against.
-/

/-! ## A379544.P17039573558622424905

`A284300(a(n-1))` with `a(0)=0, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A379544.P17039573558622424905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 2] fun n a =>
  A284300 (a (n - 1)).toNat

end

end A379544.P17039573558622424905

/-!
# A379545: Triangle read by rows where row n lists powerful divisors d | n (i.e., d in A001694).

The programs for A379545, there is no canonical definition to state claims against.
-/

/-! ## A379545.P3280951911794157755

`filter[A027750(n+1), A112526(#)]`
-/

namespace A379545.P3280951911794157755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A379545.P3280951911794157755

/-! ## A379545.P14851146985488857184

`filter[A319847(n+1), A075802(#)]`
-/

namespace A379545.P14851146985488857184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A379545.P14851146985488857184

/-! ## A379545.P11682342814610126595

`filter[A319847(n+1), A112526(#)]`
-/

namespace A379545.P11682342814610126595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A379545.P11682342814610126595

/-! ## A379545.P15723394853913922380

`filter[A319847(n+1), A380440(#)]`
-/

namespace A379545.P15723394853913922380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A379545.P15723394853913922380

/-!
# A379546: Expansion of (1/x) * Series_Reversion( x / ( (1+x)^2 * (1+2*x)^3 ) ).

The programs for A379546, there is no canonical definition to state claims against.
-/

/-! ## A379546.P13970589828708841951

`A371669(n+1)/2`
-/

namespace A379546.P13970589828708841951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371669 (n + 1) : ℚ) / 2

end

end A379546.P13970589828708841951

/-!
# A379550: Number of minimal edge covers in the n-trapezohedral graph.

The programs for A379550, there is no canonical definition to state claims against.
-/

/-! ## A379550.P3459923436038510433

`A363634(A007462(n+1))`
-/

namespace A379550.P3459923436038510433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363634 (A007462 (n + 1)).toNat

end

end A379550.P3459923436038510433

/-!
# A379551: Number of partitions of prime(n) into squares.

The programs for A379551, there is no canonical definition to state claims against.
-/

/-! ## A379551.P9405181729643976589

`A001156(A000040(n+1))`
-/

namespace A379551.P9405181729643976589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A000040 (n + 1)).toNat

end

end A379551.P9405181729643976589

/-! ## A379551.P6690181211378017022

`A001156(A006005(n+1))`
-/

namespace A379551.P6690181211378017022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A006005 (n + 1)).toNat

end

end A379551.P6690181211378017022

/-! ## A379551.P7180219544673857827

`A001156(A171577(n+1))`
-/

namespace A379551.P7180219544673857827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A171577 (n + 1)).toNat

end

end A379551.P7180219544673857827

/-! ## A379551.P15836899428263423203

`A001156(A008578(n+2))`
-/

namespace A379551.P15836899428263423203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A008578 (n + 2)).toNat

end

end A379551.P15836899428263423203

/-! ## A379551.P5404003440268483274

`A001156(A075643(n+2))`
-/

namespace A379551.P5404003440268483274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A075643 (n + 2)).toNat

end

end A379551.P5404003440268483274

/-! ## A379551.P11083662050238652451

`A001156(A171525(n+2))`
-/

namespace A379551.P11083662050238652451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A171525 (n + 2)).toNat

end

end A379551.P11083662050238652451

/-! ## A379551.P13537311000483743392

`A001156(A182986(n+2))`
-/

namespace A379551.P13537311000483743392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A182986 (n + 2)).toNat

end

end A379551.P13537311000483743392

/-! ## A379551.P12645284502870928105

`A219610(A175787(n+2))`
-/

namespace A379551.P12645284502870928105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (A175787 (n + 2)).toNat

end

end A379551.P12645284502870928105

/-! ## A379551.P7013238829000381536

`A001156(record[A014963(n+2)])`
-/

namespace A379551.P7013238829000381536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379551.P7013238829000381536

/-! ## A379551.P15838621966296339496

`A265260(A001749(n+1))`
-/

namespace A379551.P15838621966296339496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A001749 (n + 1)).toNat

end

end A379551.P15838621966296339496

/-! ## A379551.P10216151995619698192

`A265260(A062876(n+1))`
-/

namespace A379551.P10216151995619698192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A062876 (n + 1)).toNat

end

end A379551.P10216151995619698192

/-!
# A379552: Number of pairs (d, k/d), d < k/d, such that d|k, rad(d) = rad(k/d) = rad(k), but d|k/d, for k = A376936(n), where rad = A007947.

The programs for A379552, there is no canonical definition to state claims against.
-/

/-! ## A379552.P3676273871598214104

`A095691(A064214(3*n+2)-floor(n/(xor(n, n+1)+1)))`
-/

namespace A379552.P3676273871598214104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (A064214 (3 * n + 2) - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A379552.P3676273871598214104

/-! ## A379552.P16229318000202652514

`A074594(n+1)-A119981(A051027(n+1))`
-/

namespace A379552.P16229318000202652514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074594 (n + 1) - A119981 (A051027 (n + 1)).toNat

end

end A379552.P16229318000202652514

/-! ## A379552.P7659367059328663822

`gcd(A342330(A390307(n+8)), A363484(3*n+1))`
-/

namespace A379552.P7659367059328663822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342330 (A390307 (n + 8)).toNat) (A363484 (3 * n + 1))

end

end A379552.P7659367059328663822

/-! ## A379552.P3741996021304624066

`gcd(A046387(A063416(n+1)), A213408(n+1))`
-/

namespace A379552.P3741996021304624066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046387 (A063416 (n + 1)).toNat) (A213408 (n + 1))

end

end A379552.P3741996021304624066

/-! ## A379552.P1402839523225579504

`A279060(lt[A279033(n+1), A356988(n+1)])`
-/

namespace A379552.P1402839523225579504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379552.P1402839523225579504

/-!
# A379553: Numbers k in A376936 that set records in A379552.

The programs for A379553, there is no canonical definition to state claims against.
-/

/-! ## A379553.P16582433673288107949

`filter[A005934(n+1), A295309(#)]`
-/

namespace A379553.P16582433673288107949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A379553.P16582433673288107949

/-!
# A379554: Records in A379552.

The programs for A379554, there is no canonical definition to state claims against.
-/

/-! ## A379554.P17283008391057323423

`eq[A083893(n+1), A307424(A275565(n+1))]`
-/

namespace A379554.P17283008391057323423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307424 (A275565 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379554.P17283008391057323423

/-!
# A379558: Index where prime(n) appears as a term in A379442.

The programs for A379558, there is no canonical definition to state claims against.
-/

/-! ## A379558.P16181452056007365249

`A379559(A000040(n+1))`
-/

namespace A379558.P16181452056007365249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379559 (A000040 (n + 1)).toNat

end

end A379558.P16181452056007365249

/-! ## A379558.P8179349690014222462

`A379559(A008578(n+2))`
-/

namespace A379558.P8179349690014222462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379559 (A008578 (n + 2)).toNat

end

end A379558.P8179349690014222462

/-! ## A379558.P427127466887411191

`A379559(A182986(n+2))`
-/

namespace A379558.P427127466887411191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379559 (A182986 (n + 2)).toNat

end

end A379558.P427127466887411191

/-! ## A379558.P1001933150152703073

`A379559(sqrt(A001248(n+1)))`
-/

namespace A379558.P1001933150152703073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379559 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A379558.P1001933150152703073

/-! ## A379558.P2286178800454807358

`A379559(∩[A000961(n+1), A005117(n+2)])`
-/

namespace A379558.P2286178800454807358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379559 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A379558.P2286178800454807358

/-! ## A379558.P1348684107730345063

`A379559(A379248(A379290(n+1)))`
-/

namespace A379558.P1348684107730345063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379559 (A379248 (A379290 (n + 1)).toNat).toNat

end

end A379558.P1348684107730345063

/-!
# A379561: a(n) = A003418(n+1)*H(n), where H(n) = 1 + 1/2 + ... + 1/n is the n-th harmonic number.

The programs for A379561, the canonical program `A379561.P6001539951614561260` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379561 has offset 1).

The definition of A379561 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379561.P6001539951614561260

`A025558(n+1)+A027457(n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A379561

/-- `A025558(n+1)+A027457(n+2)` -/
def P6001539951614561260.Spec : Prop :=
  ∀ n, P6001539951614561260.a n = A379561 (n + 1)

theorem P6001539951614561260.correct : P6001539951614561260.Spec := by
  intro n
  simp only [A379561, Nat.add_sub_cancel]

end A379561

/-! ## A379561.P6855779742249489731

`A025529(n+2)-A002944(n+2)`
-/

namespace A379561.P6855779742249489731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 2) - A002944 (n + 2)

end

end A379561.P6855779742249489731

namespace A379561

/-- `A025529(n+2)-A002944(n+2)` -/
def P6855779742249489731.Spec : Prop :=
  ∀ n, P6855779742249489731.a n = A379561 (n + 1)

end A379561

/-! ## A379561.P2004867102510467871

`A014963(n+2)*A025529(n+1)`
-/

namespace A379561.P2004867102510467871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A025529 (n + 1)

end

end A379561.P2004867102510467871

namespace A379561

/-- `A014963(n+2)*A025529(n+1)` -/
def P2004867102510467871.Spec : Prop :=
  ∀ n, P2004867102510467871.a n = A379561 (n + 1)

end A379561

/-! ## A379561.P2958306709287407194

`lcm(A025529(n+1), A193758(n+2))`
-/

namespace A379561.P2958306709287407194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025529 (n + 1)) (A193758 (n + 2))

end

end A379561.P2958306709287407194

namespace A379561

/-- `lcm(A025529(n+1), A193758(n+2))` -/
def P2958306709287407194.Spec : Prop :=
  ∀ n, (P2958306709287407194.a n : ℤ) = A379561 (n + 1)

end A379561

/-! ## A379561.P9813346291232472850

`A025529(n+2)/A096617(n+2)*A193758(n+2)`
-/

namespace A379561.P9813346291232472850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 2) : ℚ) / (A096617 (n + 2) : ℚ) * (A193758 (n + 2) : ℚ)

end

end A379561.P9813346291232472850

namespace A379561

/-- `A025529(n+2)/A096617(n+2)*A193758(n+2)` -/
def P9813346291232472850.Spec : Prop :=
  ∀ n, P9813346291232472850.a n = (A379561 (n + 1) : ℚ)

end A379561

/-!
# A379562: Number of compositions (ordered partitions) of 1 into {1/1^3, 1/2^3, 1/3^3, ..., 1/n^3}.

The programs for A379562, there is no canonical definition to state claims against.
-/

/-! ## A379562.P8581928730823928613

`∑[A196975(A023890(n+1))]`
-/

namespace A379562.P8581928730823928613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196975 (A023890 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379562.P8581928730823928613

/-!
# A379563: Smallest degree of x with the largest coefficient in Product_{k=1..n} (1 + x^prime(k)).

The programs for A379563, there is no canonical definition to state claims against.
-/

/-! ## A379563.P15378016456700673799

`A007504(n)-A379564(n)`
-/

namespace A379563.P15378016456700673799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A379564 n

end

end A379563.P15378016456700673799

/-!
# A379564: Largest degree of x with the largest coefficient in Product_{k=1..n} (1 + x^prime(k)).

The programs for A379564, there is no canonical definition to state claims against.
-/

/-! ## A379564.P15739698709898763923

`A007504(n)-A379563(n)`
-/

namespace A379564.P15739698709898763923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A379563 n

end

end A379564.P15739698709898763923

/-!
# A379566: Number of n-digit numbers that have exactly 3 divisors.

The programs for A379566, there is no canonical definition to state claims against.
-/

/-! ## A379566.P14611106872135629610

`A122121(n+1)-A122121(n)`
-/

namespace A379566.P14611106872135629610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (n + 1) - A122121 n

end

end A379566.P14611106872135629610

/-! ## A379566.P8024489674775588723

`Δ[A122121(n)]`
-/

namespace A379566.P8024489674775588723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379566.P8024489674775588723

/-! ## A379566.P3504257508989006388

`Δ[A210518(2*n)]`
-/

namespace A379566.P3504257508989006388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379566.P3504257508989006388

/-! ## A379566.P16054854413944773169

`A210518(A014681(2*n+1))-A210518(2*n)`
-/

namespace A379566.P16054854413944773169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (A014681 (2 * n + 1)).toNat - A210518 (2 * n)

end

end A379566.P16054854413944773169

/-! ## A379566.P14319895222639981411

`A379568(2*n+1)+A379568(2*(n+1))`
-/

namespace A379566.P14319895222639981411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379568 (2 * n + 1) + A379568 (2 * (n + 1))

end

end A379566.P14319895222639981411

/-!
# A379568: Number of n-digit numbers that have exactly 5 divisors.

The programs for A379568, there is no canonical definition to state claims against.
-/

/-! ## A379568.P6745161904991546255

`Δ[A210518(n)]`
-/

namespace A379568.P6745161904991546255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379568.P6745161904991546255

/-! ## A379568.P6692327510638806011

`A210518(n+1)-A210518(n)`
-/

namespace A379568.P6692327510638806011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (n + 1) - A210518 n

end

end A379568.P6692327510638806011

/-! ## A379568.P12810501183884636714

`A210518(n+1)+A024000(A210518(n)+1)`
-/

namespace A379568.P12810501183884636714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (n + 1) + A024000 (A210518 n + 1).toNat

end

end A379568.P12810501183884636714

/-! ## A379568.P7883064072038159335

`Δ[A000720(A018072(n))]`
-/

namespace A379568.P7883064072038159335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018072 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379568.P7883064072038159335

/-!
# A379575: Total numbers of fundamentally distinct graceful labelings among all simple graphs on n vertices having no isolated points.

The programs for A379575, there is no canonical definition to state claims against.
-/

/-! ## A379575.P1315798611503959446

`A165190((n+1)^(n+1)+n)`
-/

namespace A379575.P1315798611503959446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 ((n + 1) ^ (n + 1) + n)

end

end A379575.P1315798611503959446

/-!
# A379576: Total numbers of fundamentally distinct graceful labelings of all simple graphs on n vertices.

The programs for A379576, there is no canonical definition to state claims against.
-/

/-! ## A379576.P3332665680945341790

`A381608(or(A047793(n), A381592(n)))`
-/

namespace A379576.P3332665680945341790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381608 (Int.lor (A047793 n) (A381592 n)).toNat

end

end A379576.P3332665680945341790

/-! ## A379576.P8327595494082576911

`A381608(or(A047793(n), A381594(n)))`
-/

namespace A379576.P8327595494082576911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381608 (Int.lor (A047793 n) (A381594 n)).toNat

end

end A379576.P8327595494082576911

/-!
# A379577: a(n) = (n!)^n + n^n.

The programs for A379577, the canonical program `A379577.P6538245130008192012` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379577 has offset 0).

The definition of A379577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n+n^n` (program `A379577.P6538245130008192012`, by `A379577.P6538245130008192012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379577.P6538245130008192012

`n!^n+n^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A379577

/-- `n!^n+n^n` -/
def P6538245130008192012.Spec : Prop :=
  ∀ n, (P6538245130008192012.a n : ℤ) = A379577 n

theorem P6538245130008192012.correct : P6538245130008192012.Spec := by
  intro n
  simp only [A379577]

end A379577

/-! ## A379577.P1457473974008865070

`A036740(n)+A000312(n)`
-/

namespace A379577.P1457473974008865070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036740 n + A000312 n

end

end A379577.P1457473974008865070

namespace A379577

/-- `A036740(n)+A000312(n)` -/
def P1457473974008865070.Spec : Prop :=
  ∀ n, P1457473974008865070.a n = A379577 n

end A379577

/-!
# A379578: In the base-4 expansion of n map 0->1, 1->3, 2->0, 3->2.

The programs for A379578, there is no canonical definition to state claims against.
-/

/-! ## A379578.P8697210450489296135

`xor(A163241(n), A256294(n))`
-/

namespace A379578.P8697210450489296135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163241 n) (A256294 n)

end

end A379578.P8697210450489296135

/-! ## A379578.P16087714683998192002

`A256294(A006015(n))`
-/

namespace A379578.P16087714683998192002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256294 (A006015 n).toNat

end

end A379578.P16087714683998192002

/-! ## A379578.P9944122781435519468

`A256294(xor(n, A004468(n)))`
-/

namespace A379578.P9944122781435519468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256294 (Int.xor (n : ℤ) (A004468 n)).toNat

end

end A379578.P9944122781435519468

/-!
# A379584: Denominators of the partial sums of the reciprocals of the powerful part function (A057521).

The programs for A379584, the canonical program `A379584.P4296113022240431250` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379584 has offset 1).

The definition of A379584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379584.P4296113022240431250

`gcd(A034386(n), A045948(n+1))*A045948(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A379584

/-- `gcd(A034386(n), A045948(n+1))*A045948(n+1)` -/
def P4296113022240431250.Spec : Prop :=
  ∀ n, P4296113022240431250.a n = A379584 (n + 1)

theorem P4296113022240431250.correct : P4296113022240431250.Spec := by
  intro n
  simp only [A379584, Nat.add_sub_cancel]

end A379584

/-! ## A379584.P7087066989593022418

`∏{p}[A045948(n+1), #]*A045948(n+1)`
-/

namespace A379584.P7087066989593022418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A045948 (n + 1)

end

end A379584.P7087066989593022418

namespace A379584

/-- `∏{p}[A045948(n+1), #]*A045948(n+1)` -/
def P7087066989593022418.Spec : Prop :=
  ∀ n, P7087066989593022418.a n = A379584 (n + 1)

end A379584

/-! ## A379584.P11586284988278573189

`A007947(A045948(n+1))*A045948(n+1)`
-/

namespace A379584.P11586284988278573189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A045948 (n + 1)).toNat * A045948 (n + 1)

end

end A379584.P11586284988278573189

namespace A379584

/-- `A007947(A045948(n+1))*A045948(n+1)` -/
def P11586284988278573189.Spec : Prop :=
  ∀ n, P11586284988278573189.a n = A379584 (n + 1)

end A379584

/-! ## A379584.P4940655560219470693

`gcd(A100777(n+1)²², A058312(n+1))`
-/

namespace A379584.P4940655560219470693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A100777 (n + 1) ^ 2) ^ 2) (A058312 (n + 1))

end

end A379584.P4940655560219470693

namespace A379584

/-- `gcd(A100777(n+1)²², A058312(n+1))` -/
def P4940655560219470693.Spec : Prop :=
  ∀ n, (P4940655560219470693.a n : ℤ) = A379584 (n + 1)

end A379584

/-! ## A379584.P9139043210881280093

`A064549(A045948(n+1))`
-/

namespace A379584.P9139043210881280093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A045948 (n + 1)).toNat

end

end A379584.P9139043210881280093

namespace A379584

/-- `A064549(A045948(n+1))` -/
def P9139043210881280093.Spec : Prop :=
  ∀ n, P9139043210881280093.a n = A379584 (n + 1)

end A379584

/-! ## A379584.P1322885013263117089

`lcm(A379586(n+1), A384818(n+1))`
-/

namespace A379584.P1322885013263117089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A379586 (n + 1)) (A384818 (n + 1))

end

end A379584.P1322885013263117089

namespace A379584

/-- `lcm(A379586(n+1), A384818(n+1))` -/
def P1322885013263117089.Spec : Prop :=
  ∀ n, (P1322885013263117089.a n : ℤ) = A379584 (n + 1)

end A379584

/-!
# A379586: Denominators of the partial alternating sums of the reciprocals of the powerful part function (A057521).

The programs for A379586, there is no canonical definition to state claims against.
-/

/-! ## A379586.P5401570465830634462

`gcd(A100777(n+1), A232090(n+1))`
-/

namespace A379586.P5401570465830634462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100777 (n + 1)) (A232090 (n + 1))

end

end A379586.P5401570465830634462

/-!
# A379587: Array read by ascending antidiagonals: A(n, k) = (k^n - 1)^2/(k - 1), with k >= 2.

The programs for A379587, there is no canonical definition to state claims against.
-/

/-! ## A379587.P16848409071296456272

`A361475(n)²*A002260(n+1)`
-/

namespace A379587.P16848409071296456272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361475 n ^ 2 * A002260 (n + 1)

end

end A379587.P16848409071296456272

/-!
# A379588: Antidiagonal sums of the array A379587.

The programs for A379588, there is no canonical definition to state claims against.
-/

/-! ## A379588.P13214485749866765146

`A008829(n+1)-record[A359893(3*n+5)]`
-/

namespace A379588.P13214485749866765146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008829 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379588.P13214485749866765146

/-!
# A379590: a(n) is the number of prime divisors d of n such that 2^d - 1 is prime.

The programs for A379590, there is no canonical definition to state claims against.
-/

/-! ## A379590.P15538976678021605459

`∑{d}[n+1, A332219(#)]`
-/

namespace A379590.P15538976678021605459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332219 d

end

end A379590.P15538976678021605459

/-! ## A379590.P11342980541901017095

`A000005(n+1)-A380288(n+1)`
-/

namespace A379590.P11342980541901017095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A380288 (n + 1)

end

end A379590.P11342980541901017095

/-! ## A379590.P10718185818365488820

`A179941(n+1)-A380288(n+1)`
-/

namespace A379590.P10718185818365488820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) - A380288 (n + 1)

end

end A379590.P10718185818365488820

/-! ## A379590.P17774705167472145247

`A001221(n+1)-A076142(A324922(n+1))`
-/

namespace A379590.P17774705167472145247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A076142 (A324922 (n + 1)).toNat

end

end A379590.P17774705167472145247

/-!
# A379593: Numbers that set records in A379592.

The programs for A379593, there is no canonical definition to state claims against.
-/

/-! ## A379593.P14124033735526416685

`A008586(2*A227843(2*n+1))`
-/

namespace A379593.P14124033735526416685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (2 * A227843 (2 * n + 1)).toNat

end

end A379593.P14124033735526416685

/-! ## A379593.P4985401006302455411

`∏{e}[Δ[9^n], 2^#]`
-/

namespace A379593.P4985401006302455411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p

end

end A379593.P4985401006302455411

/-!
# A379594: Records in A379592.

The programs for A379594, there is no canonical definition to state claims against.
-/

/-! ## A379594.P13562760817922637321

`lt[A171852(2*n+1), A007504(A339354(n+1))]`
-/

namespace A379594.P13562760817922637321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171852 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A339354 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379594.P13562760817922637321

/-!
# A379596: a(n) is the least positive integer k for which k^2 + (k + n)^2 is a square.

The programs for A379596, there is no canonical definition to state claims against.
-/

/-! ## A379596.P9579952213939419663

`(A289398(n+1)-(n+1))/2`
-/

namespace A379596.P9579952213939419663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289398 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A379596.P9579952213939419663

/-! ## A379596.P5860125134211919148

`A006370(A289398(n+1)-(n+1))`
-/

namespace A379596.P5860125134211919148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A289398 (n + 1) - (n + 1 : ℤ)).toNat

end

end A379596.P5860125134211919148

/-! ## A379596.P7189862000313362696

`A130472(A289398(n+1)+A130472(2*n+1))`
-/

namespace A379596.P7189862000313362696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A289398 (n + 1) + A130472 (2 * n + 1)).toNat

end

end A379596.P7189862000313362696

/-! ## A379596.P13849549977360549429

`and(A356877(A357987(3*n+5)), A357979(3*(n+1)))`
-/

namespace A379596.P13849549977360549429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A356877 (A357987 (3 * n + 5)).toNat) (A357979 (3 * (n + 1)))

end

end A379596.P13849549977360549429

/-! ## A379596.P13360996689820369489

`A008585(n+1)%A358889(A007090(n+3))`
-/

namespace A379596.P13360996689820369489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (n + 1)) (A358889 (A007090 (n + 3)).toNat)

end

end A379596.P13360996689820369489

/-!
# A379597: a(n) is the number of distinct solution sets to the quadratic equations u*x^2 + v*x + w = 0 with integer coefficients u, v, w, abs(u) + abs(v) + abs(w) <= n having a nonnegative discriminant.

The programs for A379597, there is no canonical definition to state claims against.
-/

/-! ## A379597.P11664488082333501419

`A381711(n+1)+A381710(n+1)`
-/

namespace A379597.P11664488082333501419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381711 (n + 1) + A381710 (n + 1)

end

end A379597.P11664488082333501419

/-! ## A379597.P1041400707835915311

`A310577(A277029(n)^A062378(n+1))`
-/

namespace A379597.P1041400707835915311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310577 (SequenceMachineLib.roundAway ((A277029 n : ℚ) ^ (A062378 (n + 1) : ℤ))).toNat

end

end A379597.P1041400707835915311

/-! ## A379597.P1040138622149911025

`xor(A067588(2*(n+1)), A360005(A137387(n+5)))`
-/

namespace A379597.P1040138622149911025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067588 (2 * (n + 1))) (A360005 (A137387 (n + 5)).toNat)

end

end A379597.P1040138622149911025

/-!
# A379598: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A110447.

The programs for A379598, there is no canonical definition to state claims against.
-/

/-! ## A379598.P5890560907201050923

`A001222(2^A378291(n))`
-/

namespace A379598.P5890560907201050923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378291 n : ℤ))).toNat

end

end A379598.P5890560907201050923

/-! ## A379598.P6424716052402545635

`A373362(2^A378291(n))`
-/

namespace A379598.P6424716052402545635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373362 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378291 n : ℤ))).toNat

end

end A379598.P6424716052402545635

/-! ## A379598.P2379060243285817603

`A378291(n)%A358019(n+1)`
-/

namespace A379598.P2379060243285817603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378291 n) (A358019 (n + 1))

end

end A379598.P2379060243285817603

/-! ## A379598.P12865699514799596463

`A378291(n%A107827(3*n+5))`
-/

namespace A379598.P12865699514799596463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 (Int.tmod (n : ℤ) (A107827 (3 * n + 5))).toNat

end

end A379598.P12865699514799596463

/-! ## A379598.P756517862300649938

`A378291(n)+A000007(A013655(n))`
-/

namespace A379598.P756517862300649938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 n + A000007 (A013655 n).toNat

end

end A379598.P756517862300649938

/-!
# A379599: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A088714.

The programs for A379599, there is no canonical definition to state claims against.
-/

/-! ## A379599.P9904092728507710180

`A297328(n)+A036593(A036601(n))`
-/

namespace A379599.P9904092728507710180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n + A036593 (A036601 n).toNat

end

end A379599.P9904092728507710180

/-! ## A379599.P5787032716381534971

`A378289(n)+A327622(A185213(n))`
-/

namespace A379599.P5787032716381534971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378289 n + A327622 (A185213 n).toNat

end

end A379599.P5787032716381534971

/-! ## A379599.P5900695452649341939

`A130020(n)-A316524(A245980(n))`
-/

namespace A379599.P5900695452649341939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 n - A316524 (A245980 n).toNat

end

end A379599.P5900695452649341939

/-! ## A379599.P12432732558132241569

`A007094(A378292(n)%A294429(n+3))`
-/

namespace A379599.P12432732558132241569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A378292 n) (A294429 (n + 3))).toNat

end

end A379599.P12432732558132241569

/-! ## A379599.P11838020336725702717

`A355427(n)-A035194(A326256(3*(n+1)))`
-/

namespace A379599.P11838020336725702717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 n - A035194 (A326256 (3 * (n + 1))).toNat

end

end A379599.P11838020336725702717

