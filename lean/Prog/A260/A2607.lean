import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A260700: Number of distinct parabolic double cosets of the symmetric group S_n.

The programs for A260700, there is no canonical definition to state claims against.
-/

/-! ## A260700.P16573927996803298222

`A063212(A102687(n+1))`
-/

namespace A260700.P16573927996803298222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (A102687 (n + 1)).toNat

end

end A260700.P16573927996803298222

/-!
# A260701: a(n) = (-3*(-1)^n + Sum_{k>=0} A000108(k)*k^n/6^k)/sqrt(3), where A000108 are Catalan numbers.

The programs for A260701, there is no canonical definition to state claims against.
-/

/-! ## A260701.P11049225186206995

`A097065(A373872(n)+A294579(3*n+1))`
-/

namespace A260701.P11049225186206995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A373872 n + A294579 (3 * n + 1)).toNat

end

end A260701.P11049225186206995

/-!
# A260702: Numbers n such that 3*n and n^2 have the same digit sum.

The programs for A260702, the canonical program `A260702.P6442144829760721272` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260702 has offset 1).

The definition of A260702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260702.P6442144829760721272

`eq[3*∑{digits}[3*n, #/3], ∑{digits}[n², #]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260702

/-- `eq[3*∑{digits}[3*n, #/3], ∑{digits}[n², #]]` -/
def P6442144829760721272.Spec : Prop :=
  ∀ n, (P6442144829760721272.a n : ℤ) = A260702 (n + 1)

theorem P6442144829760721272.correct : P6442144829760721272.Spec := by
  intro n
  simp only [A260702, Nat.add_sub_cancel]

end A260702

/-! ## A260702.P4405990605422699842

`eq[A004159(n), A007953(3*n)]`
-/

namespace A260702.P4405990605422699842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260702.P4405990605422699842

namespace A260702

/-- `eq[A004159(n), A007953(3*n)]` -/
def P4405990605422699842.Spec : Prop :=
  ∀ n, (P4405990605422699842.a n : ℤ) = A260702 (n + 1)

end A260702

/-! ## A260702.P13686105672200431256

`eq[A004159(n)², A118881(3*n)]`
-/

namespace A260702.P13686105672200431256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260702.P13686105672200431256

namespace A260702

/-- `eq[A004159(n)², A118881(3*n)]` -/
def P13686105672200431256.Spec : Prop :=
  ∀ n, (P13686105672200431256.a n : ℤ) = A260702 (n + 1)

end A260702

/-! ## A260702.P9610741417459514624

`eq[n²-A224977(n), A007953(3*n)]`
-/

namespace A260702.P9610741417459514624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260702.P9610741417459514624

namespace A260702

/-- `eq[n²-A224977(n), A007953(3*n)]` -/
def P9610741417459514624.Spec : Prop :=
  ∀ n, (P9610741417459514624.a n : ℤ) = A260702 (n + 1)

end A260702

/-! ## A260702.P15036843341989990028

`eq[A118881(n)-A067552(n), A007953(3*n)]`
-/

namespace A260702.P15036843341989990028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260702.P15036843341989990028

namespace A260702

/-- `eq[A118881(n)-A067552(n), A007953(3*n)]` -/
def P15036843341989990028.Spec : Prop :=
  ∀ n, (P15036843341989990028.a n : ℤ) = A260702 (n + 1)

end A260702

/-! ## A260702.P14946614194061127823

`eq[A007953(n)²-A067552(n), A007953(3*n)]`
-/

namespace A260702.P14946614194061127823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260702.P14946614194061127823

namespace A260702

/-- `eq[A007953(n)²-A067552(n), A007953(3*n)]` -/
def P14946614194061127823.Spec : Prop :=
  ∀ n, (P14946614194061127823.a n : ℤ) = A260702 (n + 1)

end A260702

/-!
# A260703: Numbers having at least two distinct divisors with the property that the reversal of one is equal to the other.

The programs for A260703, there is no canonical definition to state claims against.
-/

/-! ## A260703.P15780068944224383724

`A364537(A137428(2*n+1)-A362981(2*(n+1)))`
-/

namespace A260703.P15780068944224383724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (A137428 (2 * n + 1) - A362981 (2 * (n + 1))).toNat

end

end A260703.P15780068944224383724

/-!
# A260704: Number of pairs of distinct divisors of A260703(n) having the property that the reversal of one is equal to the other.

The programs for A260704, there is no canonical definition to state claims against.
-/

/-! ## A260704.P14188443581482891672

`A237983((∑[n+1]+5)*A001227(3*n+5))`
-/

namespace A260704.P14188443581482891672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237983 (((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ) * A001227 (3 * n + 5)).toNat

end

end A260704.P14188443581482891672

/-! ## A260704.P10658524973307467980

`gcd(A117105(n+2), A117115(A008280(n)))`
-/

namespace A260704.P10658524973307467980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117105 (n + 2)) (A117115 (A008280 n).toNat)

end

end A260704.P10658524973307467980

/-! ## A260704.P7976807717255019331

`gcd(A006530(A076232(n+1)), A026676(n+1))`
-/

namespace A260704.P7976807717255019331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A076232 (n + 1)).toNat) (A026676 (n + 1))

end

end A260704.P7976807717255019331

/-! ## A260704.P14302681588643121387

`A354747(5*A354753(2*n+1))`
-/

namespace A260704.P14302681588643121387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354747 (5 * A354753 (2 * n + 1)).toNat

end

end A260704.P14302681588643121387

/-! ## A260704.P999207268357817444

`A278538(A289081(n+1))`
-/

namespace A260704.P999207268357817444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (A289081 (n + 1)).toNat

end

end A260704.P999207268357817444

/-!
# A260705: Least integer k such that the set of the divisors of k contains exactly n pairs of numbers having the following property: for each pair of two distinct divisors, the reversal of one is equal to the other.

The programs for A260705, there is no canonical definition to state claims against.
-/

/-! ## A260705.P4588834432067417387

`84*A062068(A260332(n))`
-/

namespace A260705.P4588834432067417387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  84 * A062068 (A260332 n).toNat

end

end A260705.P4588834432067417387

/-!
# A260706: Row sums of A260672.

The programs for A260706, the canonical program `A260706.P10237371612471039830` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260706 has offset 0).

The definition of A260706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260706.P9859261916586354374

`∑[∑[char[A319390(n)]]]`
-/

namespace A260706.P9859261916586354374
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P9859261916586354374

namespace A260706

/-- `∑[∑[char[A319390(n)]]]` -/
def P9859261916586354374.Spec : Prop :=
  ∀ n, (P9859261916586354374.a n : ℤ) = A260706 n

end A260706

/-! ## A260706.P12775997116945030787

`∑[∑[char[A001318(n)+1]]]`
-/

namespace A260706.P12775997116945030787
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P12775997116945030787

namespace A260706

/-- `∑[∑[char[A001318(n)+1]]]` -/
def P12775997116945030787.Spec : Prop :=
  ∀ n, (P12775997116945030787.a n : ℤ) = A260706 n

end A260706

/-! ## A260706.P10237371612471039830

`A193832(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A260706

/-- `A193832(n)+a(n-1)` -/
def P10237371612471039830.Spec : Prop :=
  ∀ n, P10237371612471039830.a n = A260706 n

theorem P10237371612471039830.correct : P10237371612471039830.Spec := by
  intro n
  simp only [A260706]

end A260706

/-! ## A260706.P12904767974119861589

`∑[comp[A211538(n+4)]-n]`
-/

namespace A260706.P12904767974119861589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 4)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P12904767974119861589

namespace A260706

/-- `∑[comp[A211538(n+4)]-n]` -/
def P12904767974119861589.Spec : Prop :=
  ∀ n, P12904767974119861589.a n = A260706 n

end A260706

/-! ## A260706.P8308171103366206738

`∑[comp[∑[A026741(n)+1]]-n]`
-/

namespace A260706.P8308171103366206738
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P8308171103366206738

namespace A260706

/-- `∑[comp[∑[A026741(n)+1]]-n]` -/
def P8308171103366206738.Spec : Prop :=
  ∀ n, P8308171103366206738.a n = A260706 n

end A260706

/-! ## A260706.P7725467410099638878

`∑[∑[A080995(n)]-A080995(n)]`
-/

namespace A260706.P7725467410099638878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A080995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P7725467410099638878

namespace A260706

/-- `∑[∑[A080995(n)]-A080995(n)]` -/
def P7725467410099638878.Spec : Prop :=
  ∀ n, P7725467410099638878.a n = A260706 n

end A260706

/-! ## A260706.P959423876590118441

`∑[A235963(n)]+n-A235963(n)`
-/

namespace A260706.P959423876590118441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A235963 n)

end

end A260706.P959423876590118441

namespace A260706

/-- `∑[A235963(n)]+n-A235963(n)` -/
def P959423876590118441.Spec : Prop :=
  ∀ n, P959423876590118441.a n = A260706 n

end A260706

/-! ## A260706.P10092087759139144155

`∑[A193832(n+1)]-A193832(n+1)`
-/

namespace A260706.P10092087759139144155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193832 (n + 1)

end

end A260706.P10092087759139144155

namespace A260706

/-- `∑[A193832(n+1)]-A193832(n+1)` -/
def P10092087759139144155.Spec : Prop :=
  ∀ n, P10092087759139144155.a n = A260706 n

end A260706

/-! ## A260706.P8966084985402956066

`∑[∑[A089806(2*n)]-A089806(2*n)]`
-/

namespace A260706.P8966084985402956066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A089806 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P8966084985402956066

namespace A260706

/-- `∑[∑[A089806(2*n)]-A089806(2*n)]` -/
def P8966084985402956066.Spec : Prop :=
  ∀ n, P8966084985402956066.a n = A260706 n

end A260706

/-! ## A260706.P2894251031286382822

`∑[∑[A010054(3*n)]-A010054(3*n)]`
-/

namespace A260706.P2894251031286382822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A010054 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P2894251031286382822

namespace A260706

/-- `∑[∑[A010054(3*n)]-A010054(3*n)]` -/
def P2894251031286382822.Spec : Prop :=
  ∀ n, P2894251031286382822.a n = A260706 n

end A260706

/-! ## A260706.P2683038484016509902

`∑[∑[A089812(3*n)]-A089812(3*n)]`
-/

namespace A260706.P2683038484016509902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A089812 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260706.P2683038484016509902

namespace A260706

/-- `∑[∑[A089812(3*n)]-A089812(3*n)]` -/
def P2683038484016509902.Spec : Prop :=
  ∀ n, P2683038484016509902.a n = A260706 n

end A260706

/-! ## A260706.P7568668973251748774

`record[A260672(n)+n]-n`
-/

namespace A260706.P7568668973251748774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A260706.P7568668973251748774

namespace A260706

/-- `record[A260672(n)+n]-n` -/
def P7568668973251748774.Spec : Prop :=
  ∀ n, P7568668973251748774.a n = A260706 n

end A260706

/-!
# A260708: a(2n) = n*(2*n+1), a(2n+7) = a(2n+1) + 12*n + 28, with a(1)=1, a(3)=6, a(5)=16.

The programs for A260708, the canonical program `A260708.P2260276375845813105` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260708 has offset 0).

The definition of A260708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260708.P2260276375845813105

`n*(n+1)/2+(1-(-1)^n)*floor(n/6+1/3)/2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260708

/-- `n*(n+1)/2+(1-(-1)^n)*floor(n/6+1/3)/2` -/
def P2260276375845813105.Spec : Prop :=
  ∀ n, P2260276375845813105.a n = (A260708 n : ℚ)

end A260708

/-! ## A260708.P1224174362882315237

`(A265228(n)+n²)/2`
-/

namespace A260708.P1224174362882315237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265228 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A260708.P1224174362882315237

namespace A260708

/-- `(A265228(n)+n²)/2` -/
def P1224174362882315237.Spec : Prop :=
  ∀ n, P1224174362882315237.a n = (A260708 n : ℚ)

end A260708

/-! ## A260708.P13478398612730917627

`floor((n+1)/3*A007494(n))`
-/

namespace A260708.P13478398612730917627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 3 * (A007494 n : ℚ)⌋

end

end A260708.P13478398612730917627

namespace A260708

/-- `floor((n+1)/3*A007494(n))` -/
def P13478398612730917627.Spec : Prop :=
  ∀ n, P13478398612730917627.a n = A260708 n

end A260708

/-! ## A260708.P3362688840187597184

`∪[A014105(n), A264938(n)]`
-/

namespace A260708.P3362688840187597184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260708.P3362688840187597184

namespace A260708

/-- `∪[A014105(n), A264938(n)]` -/
def P3362688840187597184.Spec : Prop :=
  ∀ n, (P3362688840187597184.a n : ℤ) = A260708 n

end A260708

/-! ## A260708.P5153925910537309452

`∪[A264041(n+1), A014105(n)]`
-/

namespace A260708.P5153925910537309452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260708.P5153925910537309452

namespace A260708

/-- `∪[A264041(n+1), A014105(n)]` -/
def P5153925910537309452.Spec : Prop :=
  ∀ n, (P5153925910537309452.a n : ℤ) = A260708 n

end A260708

/-! ## A260708.P13130047335052800210

`∪[A264938(n), A264041(n+1)]`
-/

namespace A260708.P13130047335052800210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260708.P13130047335052800210

namespace A260708

/-- `∪[A264938(n), A264041(n+1)]` -/
def P13130047335052800210.Spec : Prop :=
  ∀ n, (P13130047335052800210.a n : ℤ) = A260708 n

end A260708

/-! ## A260708.P17127199803301730471

`floor((n+1)*Δ[A267529(n)]/3)`
-/

namespace A260708.P17127199803301730471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 3⌋

end

end A260708.P17127199803301730471

namespace A260708

/-- `floor((n+1)*Δ[A267529(n)]/3)` -/
def P17127199803301730471.Spec : Prop :=
  ∀ n, P17127199803301730471.a n = A260708 n

end A260708

/-! ## A260708.P5416315480069313491

`A002264((n+1)*A057353(2*n+1))`
-/

namespace A260708.P5416315480069313491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n + 1 : ℤ) * A057353 (2 * n + 1)).toNat

end

end A260708.P5416315480069313491

namespace A260708

/-- `A002264((n+1)*A057353(2*n+1))` -/
def P5416315480069313491.Spec : Prop :=
  ∀ n, P5416315480069313491.a n = A260708 n

end A260708

/-!
# A260709: Smallest nonsquare congruent to a square (mod k^2) for all k = 1..n.

The programs for A260709, there is no canonical definition to state claims against.
-/

/-! ## A260709.P148795986771167824

`A330404(∏[((n+1)/∏{p}[n+1, (n+1)/#])²])`
-/

namespace A260709.P148795986771167824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A260709.P148795986771167824

/-! ## A260709.P15759306987425153806

`A330404(A058312(n+1)²)`
-/

namespace A260709.P15759306987425153806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (A058312 (n + 1) ^ 2).toNat

end

end A260709.P15759306987425153806

/-!
# A260710: Expansion of 1/(1 - x - x^2 - x^4 + x^5 + x^7).

The programs for A260710, the canonical program `A260710.P15253992086922656555` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260710 has offset 0).

The definition of A260710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^4+x^5+x^7))` (program `A260710.P15253992086922656555`, by `A260710.P15253992086922656555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260710.P15253992086922656555

`ogf(1/(1-x-x^2-x^4+x^5+x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260710

/-- `ogf(1/(1-x-x^2-x^4+x^5+x^7))` -/
def P15253992086922656555.Spec : Prop :=
  ∀ n, P15253992086922656555.a n = A260710 n

theorem P15253992086922656555.correct : P15253992086922656555.Spec := by
  intro n
  simp only [A260710]

end A260710

/-! ## A260710.P6711273505627132993

`a(n-1)+a(n-2)+a(n-4)-a(n-5)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=9, a(6)=16`
-/

namespace A260710.P6711273505627132993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6, 9, 16] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4) - a (n - 5) - a (n - 7)

end

end A260710.P6711273505627132993

namespace A260710

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-5)-a(n-7)` -/
def P6711273505627132993.Spec : Prop :=
  ∀ n, P6711273505627132993.a n = A260710 n

end A260710

/-! ## A260710.P3253100761194931194

`A000006(A090375(n+1)+A026530(n))`
-/

namespace A260710.P3253100761194931194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A090375 (n + 1) + A026530 n).toNat

end

end A260710.P3253100761194931194

namespace A260710

/-- `A000006(A090375(n+1)+A026530(n))` -/
def P3253100761194931194.Spec : Prop :=
  ∀ n, P3253100761194931194.a n = A260710 n

end A260710

/-! ## A260710.P10551120129017832964

`A166718(A319642(n))`
-/

namespace A260710.P10551120129017832964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (A319642 n).toNat

end

end A260710.P10551120129017832964

namespace A260710

/-- `A166718(A319642(n))` -/
def P10551120129017832964.Spec : Prop :=
  ∀ n, P10551120129017832964.a n = A260710 n

end A260710

/-! ## A260710.P14484511132708640274

`A235963(A362145(n))`
-/

namespace A260710.P14484511132708640274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A362145 n).toNat

end

end A260710.P14484511132708640274

namespace A260710

/-- `A235963(A362145(n))` -/
def P14484511132708640274.Spec : Prop :=
  ∀ n, P14484511132708640274.a n = A260710 n

end A260710

/-!
# A260711: Numbers of the form x^2 - y^2 with x >= y; x and y are odd, x + y is a power of 2.

The programs for A260711, there is no canonical definition to state claims against.
-/

/-! ## A260711.P1244860213570583079

`lt[n, (xor(n, n-1)/4)²]`
-/

namespace A260711.P1244860213570583079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A260711.P1244860213570583079

/-! ## A260711.P10716443421523682691

`∑[2*a(floor(n/2))]` with `a(0)=0, a(1)=8, a(2)=8`
-/

namespace A260711.P10716443421523682691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 8] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260711.P10716443421523682691

/-! ## A260711.P18307629566828676035

`4*(∑[round(n/a(n-1))*a(n-1)]-1)` with `a(0)=1, a(1)=2`
-/

namespace A260711.P18307629566828676035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((n : ℚ) / (f1 (n - 1) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A260711.P18307629566828676035

/-! ## A260711.P3731767577721588108

`and(-3, A116882(2*(n+1)))`
-/

namespace A260711.P3731767577721588108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A116882 (2 * (n + 1)))

end

end A260711.P3731767577721588108

/-! ## A260711.P17724244583853512192

`and(-4, A080075(2*n+1))`
-/

namespace A260711.P17724244583853512192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A080075 (2 * n + 1))

end

end A260711.P17724244583853512192

/-! ## A260711.P8576788403858822082

`∑[A053644(8*round(2*n/3))]`
-/

namespace A260711.P8576788403858822082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (8 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260711.P8576788403858822082

/-! ## A260711.P9013511180642048132

`8*(∑[A003817(floor(n/3))]+n)`
-/

namespace A260711.P9013511180642048132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A260711.P9013511180642048132

/-! ## A260711.P5626826556405602334

`record[and((-1)^n, A116882(n+3))]`
-/

namespace A260711.P5626826556405602334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A116882 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260711.P5626826556405602334

/-! ## A260711.P5851418475679715778

`4*A116882(n+1)%∑[n+1]`
-/

namespace A260711.P5851418475679715778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A116882 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A260711.P5851418475679715778

/-! ## A260711.P7005020572710482535

`record[(n+1)²-A080079(n+1)²]`
-/

namespace A260711.P7005020572710482535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A080079 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260711.P7005020572710482535

/-!
# A260713: Number of iterations of A234742 needed when starting from A236844(n) before a fixed point is reached.

The programs for A260713, there is no canonical definition to state claims against.
-/

/-! ## A260713.P14240247400693406847

`A260712(A236844(n+1))`
-/

namespace A260713.P14240247400693406847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (A236844 (n + 1)).toNat

end

end A260713.P14240247400693406847

/-! ## A260713.P4272391279022333310

`A260712(comp[A234742(n)])`
-/

namespace A260713.P4272391279022333310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260713.P4272391279022333310

/-! ## A260713.P2953944463579799332

`A260712(eq[0, A236853(n)])`
-/

namespace A260713.P2953944463579799332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260713.P2953944463579799332

/-! ## A260713.P18279244094869654673

`A260712(eq[0, A236862(n)])`
-/

namespace A260713.P18279244094869654673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260713.P18279244094869654673

/-! ## A260713.P17692967689206075984

`A260712(lt[A236853(n), 1])`
-/

namespace A260713.P17692967689206075984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A260713.P17692967689206075984

/-! ## A260713.P12588912355677771644

`A260712(comp[A236842(n+1)])`
-/

namespace A260713.P12588912355677771644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260713.P12588912355677771644

/-! ## A260713.P2761660590265991391

`A260712(eq[A000007(n), A236846(n)])`
-/

namespace A260713.P2761660590265991391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260713.P2761660590265991391

/-! ## A260713.P1847631774656083332

`A260712(eq[A000007(n), A236847(n)])`
-/

namespace A260713.P1847631774656083332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260713.P1847631774656083332

/-! ## A260713.P639928148136115880

`A260712(eq[A000038(n), A236846(n)])`
-/

namespace A260713.P639928148136115880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260713.P639928148136115880

/-! ## A260713.P10060503075773983992

`A260712(eq[A000038(n), A236847(n)])`
-/

namespace A260713.P10060503075773983992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260713.P10060503075773983992

/-!
# A260714: Row 4 of A260717.

The programs for A260714, the canonical program `A260714.P9030840720155153277` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260714 has offset 1).

The definition of A260714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260714.P9030840720155153277

`or(1, 3*(comp[5*n]+1)+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260714

/-- `or(1, 3*(comp[5*n]+1)+1)` -/
def P9030840720155153277.Spec : Prop :=
  ∀ n, (P9030840720155153277.a n : ℤ) = A260714 (n + 1)

theorem P9030840720155153277.correct : P9030840720155153277.Spec := by
  intro n
  simp only [A260714, Nat.add_sub_cancel]

end A260714

/-! ## A260714.P16879566123220215471

`∪[A255414(n+1), A260715(n+1)]`
-/

namespace A260714.P16879566123220215471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260714.P16879566123220215471

namespace A260714

/-- `∪[A255414(n+1), A260715(n+1)]` -/
def P16879566123220215471.Spec : Prop :=
  ∀ n, (P16879566123220215471.a n : ℤ) = A260714 (n + 1)

end A260714

/-! ## A260714.P5885238896879507866

`A007310(comp[5*n]+2)`
-/

namespace A260714.P5885238896879507866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A260714.P5885238896879507866

namespace A260714

/-- `A007310(comp[5*n]+2)` -/
def P5885238896879507866.Spec : Prop :=
  ∀ n, P5885238896879507866.a n = A260714 (n + 1)

end A260714

/-! ## A260714.P602960583273400895

`A038179(comp[5*n]+3)`
-/

namespace A260714.P602960583273400895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A260714.P602960583273400895

namespace A260714

/-- `A038179(comp[5*n]+3)` -/
def P602960583273400895.Spec : Prop :=
  ∀ n, P602960583273400895.a n = A260714 (n + 1)

end A260714

/-! ## A260714.P2669626767900320188

`A047255(2*comp[5*n]+5)-2`
-/

namespace A260714.P2669626767900320188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 5) - 2

end

end A260714.P2669626767900320188

namespace A260714

/-- `A047255(2*comp[5*n]+5)-2` -/
def P2669626767900320188.Spec : Prop :=
  ∀ n, P2669626767900320188.a n = A260714 (n + 1)

end A260714

/-! ## A260714.P14007603318755554494

`1+lt[3, A260738(n+1)]`
-/

namespace A260714.P14007603318755554494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260714.P14007603318755554494

namespace A260714

/-- `1+lt[3, A260738(n+1)]` -/
def P14007603318755554494.Spec : Prop :=
  ∀ n, (P14007603318755554494.a n : ℤ) = A260714 (n + 1)

end A260714

/-! ## A260714.P16536541311497357524

`lt[3, A260738(n^(n%2))]`
-/

namespace A260714.P16536541311497357524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260714.P16536541311497357524

namespace A260714

/-- `lt[3, A260738(n^(n%2))]` -/
def P16536541311497357524.Spec : Prop :=
  ∀ n, (P16536541311497357524.a n : ℤ) = A260714 (n + 1)

end A260714

/-! ## A260714.P1787923994416402101

`lt[5, A272565(n+1)]+1`
-/

namespace A260714.P1787923994416402101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260714.P1787923994416402101

namespace A260714

/-- `lt[5, A272565(n+1)]+1` -/
def P1787923994416402101.Spec : Prop :=
  ∀ n, (P1787923994416402101.a n : ℤ) = A260714 (n + 1)

end A260714

/-! ## A260714.P17368981221012108087

`A063279(A301628(n+2))`
-/

namespace A260714.P17368981221012108087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063279 (A301628 (n + 2)).toNat

end

end A260714.P17368981221012108087

namespace A260714

/-- `A063279(A301628(n+2))` -/
def P17368981221012108087.Spec : Prop :=
  ∀ n, P17368981221012108087.a n = A260714 (n + 1)

end A260714

/-! ## A260714.P16550569550457760195

`A260644(A255414(n+2))`
-/

namespace A260714.P16550569550457760195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A255414 (n + 2)).toNat

end

end A260714.P16550569550457760195

namespace A260714

/-- `A260644(A255414(n+2))` -/
def P16550569550457760195.Spec : Prop :=
  ∀ n, P16550569550457760195.a n = A260714 (n + 1)

end A260714

/-! ## A260714.P6353000906064058798

`A260717(∑[n+3]+7)`
-/

namespace A260714.P6353000906064058798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260714.P6353000906064058798

namespace A260714

/-- `A260717(∑[n+3]+7)` -/
def P6353000906064058798.Spec : Prop :=
  ∀ n, P6353000906064058798.a n = A260714 (n + 1)

end A260714

/-!
# A260715: Row 5 of A260717.

The programs for A260715, the canonical program `A260715.P15318488099808226296` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260715 has offset 1).

The definition of A260715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260715.P15318488099808226296

`A260714(A047306(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A260715

/-- `A260714(A047306(n+2))` -/
def P15318488099808226296.Spec : Prop :=
  ∀ n, P15318488099808226296.a n = A260715 (n + 1)

theorem P15318488099808226296.correct : P15318488099808226296.Spec := by
  intro n
  simp only [A260715, Nat.add_sub_cancel]

end A260715

/-! ## A260715.P17471485176245387028

`lt[4, A260738(n+1)]+1`
-/

namespace A260715.P17471485176245387028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260715.P17471485176245387028

namespace A260715

/-- `lt[4, A260738(n+1)]+1` -/
def P17471485176245387028.Spec : Prop :=
  ∀ n, (P17471485176245387028.a n : ℤ) = A260715 (n + 1)

end A260715

/-! ## A260715.P2815028676568677072

`lt[4, A260738(A093178(n))]`
-/

namespace A260715.P2815028676568677072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260715.P2815028676568677072

namespace A260715

/-- `lt[4, A260738(A093178(n))]` -/
def P2815028676568677072.Spec : Prop :=
  ∀ n, (P2815028676568677072.a n : ℤ) = A260715 (n + 1)

end A260715

/-! ## A260715.P6214636830008871517

`A004442(lt[4, A260738(n+1)])`
-/

namespace A260715.P6214636830008871517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260715.P6214636830008871517

namespace A260715

/-- `A004442(lt[4, A260738(n+1)])` -/
def P6214636830008871517.Spec : Prop :=
  ∀ n, P6214636830008871517.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P183941216173224644

`A020725(lt[4, A260738(n+1)])`
-/

namespace A260715.P183941216173224644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260715.P183941216173224644

namespace A260715

/-- `A020725(lt[4, A260738(n+1)])` -/
def P183941216173224644.Spec : Prop :=
  ∀ n, P183941216173224644.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P9285468449463932455

`A109613(lt[4, A260738(n+1)])`
-/

namespace A260715.P9285468449463932455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260715.P9285468449463932455

namespace A260715

/-- `A109613(lt[4, A260738(n+1)])` -/
def P9285468449463932455.Spec : Prop :=
  ∀ n, P9285468449463932455.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P7334317207779134013

`lt[9, A272565(abs(1-n)+1)]`
-/

namespace A260715.P7334317207779134013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260715.P7334317207779134013

namespace A260715

/-- `lt[9, A272565(abs(1-n)+1)]` -/
def P7334317207779134013.Spec : Prop :=
  ∀ n, (P7334317207779134013.a n : ℤ) = A260715 (n + 1)

end A260715

/-! ## A260715.P10992135447122273604

`lt[4, A260738(A028310(n))]`
-/

namespace A260715.P10992135447122273604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260715.P10992135447122273604

namespace A260715

/-- `lt[4, A260738(A028310(n))]` -/
def P10992135447122273604.Spec : Prop :=
  ∀ n, (P10992135447122273604.a n : ℤ) = A260715 (n + 1)

end A260715

/-! ## A260715.P5980195905167165349

`A109613(lt[7, A272565(n+1)])`
-/

namespace A260715.P5980195905167165349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260715.P5980195905167165349

namespace A260715

/-- `A109613(lt[7, A272565(n+1)])` -/
def P5980195905167165349.Spec : Prop :=
  ∀ n, P5980195905167165349.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P13654596987072764234

`A260717(A167499(n+3))`
-/

namespace A260715.P13654596987072764234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A167499 (n + 3)).toNat

end

end A260715.P13654596987072764234

namespace A260715

/-- `A260717(A167499(n+3))` -/
def P13654596987072764234.Spec : Prop :=
  ∀ n, P13654596987072764234.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P3457868920876639439

`A260717(A155212(n)+13)`
-/

namespace A260715.P3457868920876639439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A155212 n + 13).toNat

end

end A260715.P3457868920876639439

namespace A260715

/-- `A260717(A155212(n)+13)` -/
def P3457868920876639439.Spec : Prop :=
  ∀ n, P3457868920876639439.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P14000598569296125065

`A260717(A056000(n)+15)`
-/

namespace A260715.P14000598569296125065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A056000 n + 15).toNat

end

end A260715.P14000598569296125065

namespace A260715

/-- `A260717(A056000(n)+15)` -/
def P14000598569296125065.Spec : Prop :=
  ∀ n, P14000598569296125065.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P15728771244141687947

`A260717(A000124(n+4)+4)`
-/

namespace A260715.P15728771244141687947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A000124 (n + 4) + 4).toNat

end

end A260715.P15728771244141687947

namespace A260715

/-- `A260717(A000124(n+4)+4)` -/
def P15728771244141687947.Spec : Prop :=
  ∀ n, P15728771244141687947.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P5468475282202627694

`A260717(A000217(n+4)+5)`
-/

namespace A260715.P5468475282202627694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A000217 (n + 4) + 5).toNat

end

end A260715.P5468475282202627694

namespace A260715

/-- `A260717(A000217(n+4)+5)` -/
def P5468475282202627694.Spec : Prop :=
  ∀ n, P5468475282202627694.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P14285007536673680546

`A260717(A027379(n+2)+8)`
-/

namespace A260715.P14285007536673680546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A027379 (n + 2) + 8).toNat

end

end A260715.P14285007536673680546

namespace A260715

/-- `A260717(A027379(n+2)+8)` -/
def P14285007536673680546.Spec : Prop :=
  ∀ n, P14285007536673680546.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P11555036632302112367

`A260717(A034856(n+3)+7)`
-/

namespace A260715.P11555036632302112367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A034856 (n + 3) + 7).toNat

end

end A260715.P11555036632302112367

namespace A260715

/-- `A260717(A034856(n+3)+7)` -/
def P11555036632302112367.Spec : Prop :=
  ∀ n, P11555036632302112367.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P13534802926338782013

`A260717(A161680(n+5)+5)`
-/

namespace A260715.P13534802926338782013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A161680 (n + 5) + 5).toNat

end

end A260715.P13534802926338782013

namespace A260715

/-- `A260717(A161680(n+5)+5)` -/
def P13534802926338782013.Spec : Prop :=
  ∀ n, P13534802926338782013.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P13039231644982074868

`A260717(A046691(n+2)+9)`
-/

namespace A260715.P13039231644982074868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A046691 (n + 2) + 9).toNat

end

end A260715.P13039231644982074868

namespace A260715

/-- `A260717(A046691(n+2)+9)` -/
def P13039231644982074868.Spec : Prop :=
  ∀ n, P13039231644982074868.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P8308511110788889267

`A260717(A000096(n+4)-(n-1))`
-/

namespace A260715.P8308511110788889267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A260715.P8308511110788889267

namespace A260715

/-- `A260717(A000096(n+4)-(n-1))` -/
def P8308511110788889267.Spec : Prop :=
  ∀ n, P8308511110788889267.a n = A260715 (n + 1)

end A260715

/-! ## A260715.P4736952136442841439

`A260717(Δ[A023545(n+1)]-(n-4))`
-/

namespace A260715.P4736952136442841439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (f1 (n + 1) - f1 n - ((n : ℤ) - 4)).toNat

end

end A260715.P4736952136442841439

namespace A260715

/-- `A260717(Δ[A023545(n+1)]-(n-4))` -/
def P4736952136442841439.Spec : Prop :=
  ∀ n, P4736952136442841439.a n = A260715 (n + 1)

end A260715

/-!
# A260716: a(n) = number of iterations of A234742 needed when starting from A091209(n) before a fixed point is reached.

The programs for A260716, there is no canonical definition to state claims against.
-/

/-! ## A260716.P15866999964481836128

`A260712(A091209(n+1))`
-/

namespace A260716.P15866999964481836128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (A091209 (n + 1)).toNat

end

end A260716.P15866999964481836128

/-! ## A260716.P770905620283935932

`A260712(p?[A091242(n+1)])`
-/

namespace A260716.P770905620283935932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260716.P770905620283935932

/-! ## A260716.P6360172991445892379

`A260712(p?[A235033(n+1)])`
-/

namespace A260716.P6360172991445892379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260716.P6360172991445892379

/-! ## A260716.P14278154356028782596

`A260712(p?[A236844(n+1)])`
-/

namespace A260716.P14278154356028782596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260716.P14278154356028782596

/-! ## A260716.P11544277530880723264

`A260712(p?[n*A235046(n)])`
-/

namespace A260716.P11544277530880723264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A235046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260716.P11544277530880723264

/-! ## A260716.P2162816760183871812

`A260712(A000040(A091210(n+1)))`
-/

namespace A260716.P2162816760183871812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (A000040 (A091210 (n + 1)).toNat).toNat

end

end A260716.P2162816760183871812

/-! ## A260716.P5967334853676045201

`A260712(record[A014963(A236844(n+1))])`
-/

namespace A260716.P5967334853676045201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A236844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260716.P5967334853676045201

/-!
# A260717: Square array: row n gives the numbers remaining before the stage n of Ludic sieve.

The programs for A260717, there is no canonical definition to state claims against.
-/

/-! ## A260717.P8966328240379969979

`A260718(∑[char[∑[n]]]²-n)`
-/

namespace A260717.P8966328240379969979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260718 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A260717.P8966328240379969979

/-! ## A260717.P1417875889501797820

`A260718(A038722(n+1))%47`
-/

namespace A260717.P1417875889501797820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260718 (A038722 (n + 1)).toNat) 47

end

end A260717.P1417875889501797820

/-! ## A260717.P9365210460645309004

`A260718(∑[A010054(n)]²-n)%(n+3)`
-/

namespace A260717.P9365210460645309004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260718 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat) (n + 3 : ℤ)

end

end A260717.P9365210460645309004

/-! ## A260717.P6036295073936744325

`gcd(A000038(n), A260718(A038722(n+1)))`
-/

namespace A260717.P6036295073936744325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260718 (A038722 (n + 1)).toNat)

end

end A260717.P6036295073936744325

/-! ## A260717.P1274656570823152673

`A007318(∑[n])*A260718(A038722(n+1))`
-/

namespace A260717.P1274656570823152673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A260718 (A038722 (n + 1)).toNat

end

end A260717.P1274656570823152673

/-! ## A260717.P5530355127776992668

`A260718(A038722(n+1))+A008683(8*(n+1))`
-/

namespace A260717.P5530355127776992668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260718 (A038722 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A260717.P5530355127776992668

/-! ## A260717.P9368992424663951350

`A260718(A038722(n+1))/A007318(C(2, n)+1)`
-/

namespace A260717.P9368992424663951350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260718 (A038722 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A260717.P9368992424663951350

/-! ## A260717.P15868327571992722077

`A014963(90*(n+1))*A260718(A038722(n+1))`
-/

namespace A260717.P15868327571992722077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (90 * (n + 1)) * A260718 (A038722 (n + 1)).toNat

end

end A260717.P15868327571992722077

/-!
# A260718: Square array A260717 transposed.

The programs for A260718, there is no canonical definition to state claims against.
-/

/-! ## A260718.P2734231756854630974

`A260717(∑[char[∑[n]]]²-n)`
-/

namespace A260718.P2734231756854630974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A260718.P2734231756854630974

/-! ## A260718.P7579751484050424218

`A260717(A038722(n+1))%44`
-/

namespace A260718.P7579751484050424218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260717 (A038722 (n + 1)).toNat) 44

end

end A260718.P7579751484050424218

/-! ## A260718.P4837734812400757901

`A260717(A061579(n)+1)%44`
-/

namespace A260718.P4837734812400757901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260717 (A061579 n + 1).toNat) 44

end

end A260718.P4837734812400757901

/-! ## A260718.P6478846564895124070

`A260717(A093995(n+1)-n)%60`
-/

namespace A260718.P6478846564895124070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260717 (A093995 (n + 1) - (n : ℤ)).toNat) 60

end

end A260718.P6478846564895124070

/-! ## A260718.P6256193906921964123

`A260717(∑[A010054(n)]²-n)%45`
-/

namespace A260718.P6256193906921964123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260717 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat) 45

end

end A260718.P6256193906921964123

/-! ## A260718.P11434258963860777941

`A020985(n)²*A260717(∑[A010054(n)]²-n)`
-/

namespace A260718.P11434258963860777941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A260717 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A260718.P11434258963860777941

/-! ## A260718.P16648328617957488101

`A260717(∑[A010054(n)]²-n)+A000038(n+1)`
-/

namespace A260718.P16648328617957488101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat + A000038 (n + 1)

end

end A260718.P16648328617957488101

/-! ## A260718.P13049479061214817920

`A260717(∑[A010054(n)]²-n)+A008683(60*(n+1))`
-/

namespace A260718.P13049479061214817920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat + A008683 (60 * (n + 1))

end

end A260718.P13049479061214817920

/-!
# A260721: Half the difference between n-th odd Ludic and n-th Lucky number: a(1) = 0; a(n) = (A003309(n+1) - A000959(n))/2.

The programs for A260721, there is no canonical definition to state claims against.
-/

/-! ## A260721.P11998408621377429657

`A260722(n+1)/2`
-/

namespace A260721.P11998408621377429657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260722 (n + 1) : ℚ) / 2

end

end A260721.P11998408621377429657

/-! ## A260721.P13365459000297556681

`floor((A003309(n+2)-A000959(n+1))/2)`
-/

namespace A260721.P13365459000297556681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003309 (n + 2) - A000959 (n + 1) : ℚ) / 2⌋

end

end A260721.P13365459000297556681

/-! ## A260721.P5915193880671436298

`A004526(A260722(n+1)+n)-A004526(n)`
-/

namespace A260721.P5915193880671436298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A260722 (n + 1) + (n : ℤ)).toNat - A004526 n

end

end A260721.P5915193880671436298

/-! ## A260721.P1866871094494588648

`(A255407(A006005(n+1))-A000959(n+1))/2`
-/

namespace A260721.P1866871094494588648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255407 (A006005 (n + 1)).toNat - A000959 (n + 1) : ℚ) / 2

end

end A260721.P1866871094494588648

/-! ## A260721.P4840034126198493023

`A110654(A003309(n+2))-A049781(n+1)`
-/

namespace A260721.P4840034126198493023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003309 (n + 2)).toNat - A049781 (n + 1)

end

end A260721.P4840034126198493023

/-! ## A260721.P13119726035395964381

`A065033(A003309(n+2))-A008619(A000959(n+1))`
-/

namespace A260721.P13119726035395964381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003309 (n + 2)).toNat - A008619 (A000959 (n + 1)).toNat

end

end A260721.P13119726035395964381

/-!
# A260722: Difference between n-th odd Ludic and n-th Lucky number: a(1) = 0; for n > 1: a(n) = A003309(n+1) - A000959(n).

The programs for A260722, there is no canonical definition to state claims against.
-/

/-! ## A260722.P17243021182373854926

`2*A260721(n+1)`
-/

namespace A260722.P17243021182373854926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260721 (n + 1)

end

end A260722.P17243021182373854926

/-! ## A260722.P18299572609886903746

`A003309(n+2)-A000959(n+1)*A054977(n)`
-/

namespace A260722.P18299572609886903746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 2) - A000959 (n + 1) * A054977 n

end

end A260722.P18299572609886903746

/-! ## A260722.P15348489020848665762

`A260721(n+1)+A260721(n+1)%A317331(n+1)`
-/

namespace A260722.P15348489020848665762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260721 (n + 1) + Int.tmod (A260721 (n + 1)) (A317331 (n + 1))

end

end A260722.P15348489020848665762

/-! ## A260722.P8835340206837093149

`A256486(n+1)+Δ[A003309(n+1)]%(n+1)`
-/

namespace A260722.P8835340206837093149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256486 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A260722.P8835340206837093149

/-! ## A260722.P5403126480068311075

`A260435(A000959(n+1))-A000959(n+1)`
-/

namespace A260722.P5403126480068311075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260435 (A000959 (n + 1)).toNat - A000959 (n + 1)

end

end A260722.P5403126480068311075

/-! ## A260722.P13094395688507204310

`A255407(A006005(n+1))-A000959(n+1)`
-/

namespace A260722.P13094395688507204310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A006005 (n + 1)).toNat - A000959 (n + 1)

end

end A260722.P13094395688507204310

/-! ## A260722.P16271502589947437995

`A003309(n+2)-A260436(A003309(n+2))`
-/

namespace A260722.P16271502589947437995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 2) - A260436 (A003309 (n + 2)).toNat

end

end A260722.P16271502589947437995

/-!
# A260723: First differences of Ludic numbers: a(n) = A003309(n+1) - A003309(n).

The programs for A260723, there is no canonical definition to state claims against.
-/

/-! ## A260723.P3894013565026338341

`A003309(n+2)-A003309(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260723.P3894013565026338341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 2) - A003309 (n + 1)

end

end A260723.P3894013565026338341

/-! ## A260723.P17915041036085558119

`Δ[A003309(n+1)]`
-/

namespace A260723.P17915041036085558119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P17915041036085558119

/-! ## A260723.P14065600571965734600

`Δ[A237056(Δ[n²])]`
-/

namespace A260723.P14065600571965734600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P14065600571965734600

/-! ## A260723.P1272442446903967880

`Δ[A237056(2*n+1)%A001043(n+1)]`
-/

namespace A260723.P1272442446903967880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237056 (2 * n + 1)) (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P1272442446903967880

/-! ## A260723.P3348912036719158875

`A237056(2*n+3)-A237056(2*n+1)`
-/

namespace A260723.P3348912036719158875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 3) - A237056 (2 * n + 1)

end

end A260723.P3348912036719158875

/-! ## A260723.P9279538757901603128

`Δ[A269379(a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A260723.P9279538757901603128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A269379 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P9279538757901603128

/-! ## A260723.P13460748870115375289

`Δ[record[A269380(n+1)]]`
-/

namespace A260723.P13460748870115375289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P13460748870115375289

/-! ## A260723.P15929723064124021410

`Δ[eq[1, A302032(n+1)]]`
-/

namespace A260723.P15929723064124021410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260723.P15929723064124021410

/-! ## A260723.P7206194557030295374

`Δ[lt[A302037(n+1), 2]]`
-/

namespace A260723.P7206194557030295374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260723.P7206194557030295374

/-! ## A260723.P2587551153005353225

`Δ[A256486(n+1)+A000959(n+1)]`
-/

namespace A260723.P2587551153005353225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256486 (n + 1) + A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P2587551153005353225

/-! ## A260723.P8238691303874657704

`Δ[A255407(A008578(n+1))]`
-/

namespace A260723.P8238691303874657704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P8238691303874657704

/-! ## A260723.P3280499991496862186

`Δ[A255407(record[A064989(n+1)])]`
-/

namespace A260723.P3280499991496862186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P3280499991496862186

/-! ## A260723.P15545403631369966327

`Δ[eq[1, A260739(n+1)]]`
-/

namespace A260723.P15545403631369966327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260723.P15545403631369966327

/-! ## A260723.P6583054971469657278

`Δ[record[A272565(n+1)]]`
-/

namespace A260723.P6583054971469657278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P6583054971469657278

/-! ## A260723.P18219589377051076102

`Δ[record[A276440(n+1)]]`
-/

namespace A260723.P18219589377051076102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276440 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260723.P18219589377051076102

/-! ## A260723.P1315221120207947125

`Δ[lt[A026741(n), A272565(n+1)]]`
-/

namespace A260723.P1315221120207947125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260723.P1315221120207947125

/-!
# A260725: a(1)=a(2)=a(3)=a(4)=a(5)=2; thereafter, a(n) = gpf(1 + Product_{k=1..5} a(n-k)), where gpf is greatest prime factor.

The programs for A260725, there is no canonical definition to state claims against.
-/

/-! ## A260725.P1041118880969133681

`A151800(A306046(∑[floor(n/4)]))`
-/

namespace A260725.P1041118880969133681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A306046 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A260725.P1041118880969133681

/-! ## A260725.P18150075283933758947

`A007918(A006925(n)*A056363(n))`
-/

namespace A260725.P18150075283933758947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A006925 n * A056363 n).toNat

end

end A260725.P18150075283933758947

/-! ## A260725.P12991989046199011851

`A057922(A338585(n)^A338585(n))`
-/

namespace A260725.P12991989046199011851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 (SequenceMachineLib.roundAway ((A338585 n : ℚ) ^ (A338585 n : ℤ))).toNat

end

end A260725.P12991989046199011851

/-! ## A260725.P9536702423891164253

`A194638(A093337(n)+A056330(n+1))`
-/

namespace A260725.P9536702423891164253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194638 (A093337 (n + 11) + A056330 (n + 1)).toNat

end

end A260725.P9536702423891164253

/-!
# A260727: Number of ways to place 3n rooks on an n X n board, with 3 rooks in each row and each column, multiple rooks in a cell allowed, and exactly 3 rooks below the main diagonal.

The programs for A260727, there is no canonical definition to state claims against.
-/

/-! ## A260727.P1771869389771988956

`A269743(A059845(n)+2)`
-/

namespace A260727.P1771869389771988956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A059845 n + 2).toNat

end

end A260727.P1771869389771988956

/-! ## A260727.P3663425668467549640

`A269743(A090288(n)-∑[n])`
-/

namespace A260727.P3663425668467549640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A090288 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A260727.P3663425668467549640

/-! ## A260727.P16146942568065242414

`A269743(A140229(n+2)-1)`
-/

namespace A260727.P16146942568065242414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A140229 (n + 2) - 1).toNat

end

end A260727.P16146942568065242414

/-! ## A260727.P15582934312119715138

`A269743(A045943(n+2)-(5*n+4))`
-/

namespace A260727.P15582934312119715138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A045943 (n + 2) - (5 * n + 4 : ℤ)).toNat

end

end A260727.P15582934312119715138

/-! ## A260727.P14462752187764700505

`A269743(A002061(n)+A141214(n)+1)`
-/

namespace A260727.P14462752187764700505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A002061 n + (A141214 n + 1)).toNat

end

end A260727.P14462752187764700505

/-!
# A260728: Bitwise-OR of the exponents of all 4k+3 primes in the prime factorization of n.

The programs for A260728, the canonical program `A260728.P10288930713321800382` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260728 has offset 0).

The definition of A260728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260728.P10288930713321800382

`A267116(A097706(round(sqrt(n²+1))))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A260728

/-- `A267116(A097706(round(sqrt(n²+1))))` -/
def P10288930713321800382.Spec : Prop :=
  ∀ n, P10288930713321800382.a n = A260728 n

theorem P10288930713321800382.correct : P10288930713321800382.Spec := by
  intro n
  simp only [A260728]

end A260728

/-! ## A260728.P11564086146541340177

`A267113(A267099(round(acot(n)+n)))`
-/

namespace A260728.P11564086146541340177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A267099 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A260728.P11564086146541340177

namespace A260728

/-- `A267113(A267099(round(acot(n)+n)))` -/
def P11564086146541340177.Spec : Prop :=
  ∀ n, P11564086146541340177.a n = A260728 n

end A260728

/-! ## A260728.P10987630599507291707

`A267113(A267099(A000007(n)+n))`
-/

namespace A260728.P10987630599507291707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A267099 (A000007 n + (n : ℤ)).toNat).toNat

end

end A260728.P10987630599507291707

namespace A260728

/-- `A267113(A267099(A000007(n)+n))` -/
def P10987630599507291707.Spec : Prop :=
  ∀ n, P10987630599507291707.a n = A260728 n

end A260728

/-! ## A260728.P3362068357936593800

`A267113(A267099(or(n, A000007(n))))`
-/

namespace A260728.P3362068357936593800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A267099 (Int.lor (n : ℤ) (A000007 n)).toNat).toNat

end

end A260728.P3362068357936593800

namespace A260728

/-- `A267113(A267099(or(n, A000007(n))))` -/
def P3362068357936593800.Spec : Prop :=
  ∀ n, P3362068357936593800.a n = A260728 n

end A260728

/-! ## A260728.P13762687458154655096

`A267113(A267099(xor(n, A000007(n))))`
-/

namespace A260728.P13762687458154655096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A267099 (Int.xor (n : ℤ) (A000007 n)).toNat).toNat

end

end A260728.P13762687458154655096

namespace A260728

/-- `A267113(A267099(xor(n, A000007(n))))` -/
def P13762687458154655096.Spec : Prop :=
  ∀ n, P13762687458154655096.a n = A260728 n

end A260728

/-!
# A260729: Iterates of A234742, starting from value a(0) = 29, with a(1) = A234742(a(0)), a(2) = A234742(a(1)), etc.

The programs for A260729, there is no canonical definition to state claims against.
-/

/-! ## A260729.P14874720831851098650

`A234742(a(n-1))` with `a(0)=29`
-/

namespace A260729.P14874720831851098650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A234742 (a (n - 1)).toNat

end

end A260729.P14874720831851098650

/-!
# A260730: Numbers n for which A065339(n) > A260728(n).

The programs for A260730, the canonical program `A260730.P1041538561138783380` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260730 has offset 1).

The definition of A260730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260730.P1041538561138783380

`lt[A260728(n+1), A065339(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A260730

/-- `lt[A260728(n+1), A065339(n+1)]+1` -/
def P1041538561138783380.Spec : Prop :=
  ∀ n, (P1041538561138783380.a n : ℤ) = A260730 (n + 1)

theorem P1041538561138783380.correct : P1041538561138783380.Spec := by
  intro n
  simp only [A260730, Nat.add_sub_cancel]

end A260730

/-! ## A260730.P9140541659371973092

`lt[A260728(n), A065339(A028310(n))]`
-/

namespace A260730.P9140541659371973092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260730.P9140541659371973092

namespace A260730

/-- `lt[A260728(n), A065339(A028310(n))]` -/
def P9140541659371973092.Spec : Prop :=
  ∀ n, (P9140541659371973092.a n : ℤ) = A260730 (n + 1)

end A260730

/-! ## A260730.P12509212098990525226

`lt[A260728(n), A065339(A004277(n)-n)]`
-/

namespace A260730.P12509212098990525226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260730.P12509212098990525226

namespace A260730

/-- `lt[A260728(n), A065339(A004277(n)-n)]` -/
def P12509212098990525226.Spec : Prop :=
  ∀ n, (P12509212098990525226.a n : ℤ) = A260730 (n + 1)

end A260730

/-! ## A260730.P8552329190318972691

`lt[A260728(n), A065339(A004277(n))]`
-/

namespace A260730.P8552329190318972691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260730.P8552329190318972691

namespace A260730

/-- `lt[A260728(n), A065339(A004277(n))]` -/
def P8552329190318972691.Spec : Prop :=
  ∀ n, (P8552329190318972691.a n : ℤ) = A260730 (n + 1)

end A260730

/-! ## A260730.P1560748144954404120

`lt[A260728(n), A065339(A233583(n+1))]`
-/

namespace A260730.P1560748144954404120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260730.P1560748144954404120

namespace A260730

/-- `lt[A260728(n), A065339(A233583(n+1))]` -/
def P1560748144954404120.Spec : Prop :=
  ∀ n, (P1560748144954404120.a n : ℤ) = A260730 (n + 1)

end A260730

/-!
# A260731: a(n) = Number of steps to reach 0 starting from x=n and using the iterated process: x -> x - A002828(x), where A002828(x) = the least number of squares that add up to x.

The programs for A260731, there is no canonical definition to state claims against.
-/

/-! ## A260731.P4327242348008387797

`1+a(n-A002828(n))` with `a(0)=0`
-/

namespace A260731.P4327242348008387797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A002828 n).toNat

end

end A260731.P4327242348008387797

/-! ## A260731.P9942518841607255344

`∑[char[∑[A278518(n)]]]`
-/

namespace A260731.P9942518841607255344
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260731.P9942518841607255344

/-! ## A260731.P4125859433549968121

`a(A255131(n))+1` with `a(0)=0`
-/

namespace A260731.P4125859433549968121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A255131 n).toNat + 1

end

end A260731.P4125859433549968121

/-! ## A260731.P12146637623538110684

`∑[char[A278517(n+1)]]`
-/

namespace A260731.P12146637623538110684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260731.P12146637623538110684

/-! ## A260731.P1463328993187043903

`∑[char[A278517(n)]]-1`
-/

namespace A260731.P1463328993187043903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A260731.P1463328993187043903

/-!
# A260732: a(n) = number of steps needed to reach zero when starting from k = n^2 and repeatedly applying the map that replaces k with k - {the least number of squares (A002828) that add up to k}.

The programs for A260732, there is no canonical definition to state claims against.
-/

/-! ## A260732.P5284196279921356270

`A260731(n²)`
-/

namespace A260732.P5284196279921356270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (n ^ 2)

end

end A260732.P5284196279921356270

/-! ## A260732.P17802988744530214864

`record[A260733(A065033(n))+A000035(n)]`
-/

namespace A260732.P17802988744530214864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (A065033 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260732.P17802988744530214864

/-! ## A260732.P3749891536709136057

`record[A260733(A344180(n))+A057427(n)]`
-/

namespace A260732.P3749891536709136057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (A344180 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260732.P3749891536709136057

/-! ## A260732.P17412538867433591876

`A260733(A000007(n)+n)+A057427(n)`
-/

namespace A260732.P17412538867433591876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (A000007 n + (n : ℤ)).toNat + A057427 n

end

end A260732.P17412538867433591876

/-! ## A260732.P15055769123790486226

`record[A260733(A344180(n))+A165476(n)²]`
-/

namespace A260732.P15055769123790486226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (A344180 n).toNat + A165476 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260732.P15055769123790486226

/-! ## A260732.P16126492529194827933

`record[A260733(A344180(n))+A019429(2*n)]`
-/

namespace A260732.P16126492529194827933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (A344180 n).toNat + A019429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260732.P16126492529194827933

/-! ## A260732.P17754241131079272381

`A276572(a(n-1))+1` with `a(0)=0`
-/

namespace A260732.P17754241131079272381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276572 (a (n - 1)).toNat + 1

end

end A260732.P17754241131079272381

/-! ## A260732.P11121399855444791898

`A276572(record[A276572(n)])`
-/

namespace A260732.P11121399855444791898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260732.P11121399855444791898

/-! ## A260732.P254376596780202040

`A276572(A260733(n+1))`
-/

namespace A260732.P254376596780202040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A260733 (n + 1)).toNat

end

end A260732.P254376596780202040

/-! ## A260732.P14345066908866057751

`A276572(∑[A260734(n+1)]-A260734(n+1))`
-/

namespace A260732.P14345066908866057751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (∑ j ∈ Finset.range (n + 1), f1 j - A260734 (n + 1)).toNat

end

end A260732.P14345066908866057751

/-! ## A260732.P3196605965193657635

`A276572(lt[0, Δ[A276572(n)]])`
-/

namespace A260732.P3196605965193657635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260732.P3196605965193657635

/-! ## A260732.P7873803459537841364

`lt[n, A276572(A276572(n)+1)]`
-/

namespace A260732.P7873803459537841364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A276572 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260732.P7873803459537841364

/-! ## A260732.P9194215145741068172

`or(char[1], A260731(n^2))`
-/

namespace A260732.P9194215145741068172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260731 (n ^ 2))

end

end A260732.P9194215145741068172

/-! ## A260732.P9757504396857873839

`record[A260731(A123596(n))]`
-/

namespace A260732.P9757504396857873839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260732.P9757504396857873839

/-! ## A260732.P4445377769573085939

`record[A260731(A260644(n)^2)]`
-/

namespace A260732.P4445377769573085939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A260644 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260732.P4445377769573085939

/-! ## A260732.P6884107864728875539

`A110654(2*A260731(n*n))`
-/

namespace A260732.P6884107864728875539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A260731 (n * n)).toNat

end

end A260732.P6884107864728875539

/-! ## A260732.P1980352609229714461

`A276572(A276572(A260731(n*n)))`
-/

namespace A260732.P1980352609229714461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A276572 (A260731 (n * n)).toNat).toNat

end

end A260732.P1980352609229714461

/-!
# A260733: a(n) = number of steps needed to reach zero when starting from k = (n^2)-1 and repeatedly applying the map that replaces k with k - A002828(k), where A002828(k) = the least number of squares that add up to k.

The programs for A260733, there is no canonical definition to state claims against.
-/

/-! ## A260733.P11122800016611610209

`A260732(n+1)-1`
-/

namespace A260733.P11122800016611610209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 1) - 1

end

end A260733.P11122800016611610209

/-! ## A260733.P14541679669153187857

`A260731((n+1)²-1)`
-/

namespace A260733.P14541679669153187857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 ((n + 1) ^ 2 - 1)

end

end A260733.P14541679669153187857

/-! ## A260733.P1952057167479039975

`Δ[∑[A260732(n)]-n]`
-/

namespace A260733.P1952057167479039975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260733.P1952057167479039975

/-! ## A260733.P18391422973191655837

`A260734(n)+a(n-1)` with `a(0)=0`
-/

namespace A260733.P18391422973191655837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A260734 n + a (n - 1)

end

end A260733.P18391422973191655837

/-! ## A260733.P18366339771032472662

`∑[Δ[A260732(n)]%A260732(n+1)]`
-/

namespace A260733.P18366339771032472662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A260732 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260733.P18366339771032472662

/-! ## A260733.P2827539282732973813

`∑[A260734(n+1)]-A260734(n+1)`
-/

namespace A260733.P2827539282732973813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A260734 (n + 1)

end

end A260733.P2827539282732973813

/-! ## A260733.P11259246888784166193

`record[A276572(n)]`
-/

namespace A260733.P11259246888784166193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260733.P11259246888784166193

/-! ## A260733.P1592439135854396464

`A276572(a(n-1)+1)` with `a(0)=0`
-/

namespace A260733.P1592439135854396464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276572 (a (n - 1) + 1).toNat

end

end A260733.P1592439135854396464

/-! ## A260733.P191246763244865283

`A276572(A260732(n))`
-/

namespace A260733.P191246763244865283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A260732 n).toNat

end

end A260733.P191246763244865283

/-! ## A260733.P10457994942570318299

`lt[0, Δ[A276571(n)]]`
-/

namespace A260733.P10457994942570318299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260733.P10457994942570318299

/-! ## A260733.P7820294066997559902

`lt[0, Δ[A276574(n)]]`
-/

namespace A260733.P7820294066997559902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260733.P7820294066997559902

/-! ## A260733.P14002473073114652763

`A023443(A260732(n+1))`
-/

namespace A260733.P14002473073114652763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A260732 (n + 1)).toNat

end

end A260733.P14002473073114652763

/-! ## A260733.P6499686918045645022

`lt[A276581(n), Δ[A276572(n)]]`
-/

namespace A260733.P6499686918045645022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260733.P6499686918045645022

/-! ## A260733.P1821267376855089132

`lt[A276572(n), A276572(n+1)]`
-/

namespace A260733.P1821267376855089132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260733.P1821267376855089132

/-! ## A260733.P3241839159048634132

`lt[A276574(n), A276574(n+1)]`
-/

namespace A260733.P3241839159048634132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260733.P3241839159048634132

/-! ## A260733.P1099757021098147056

`A276572(∑[A260734(n+1)])-1`
-/

namespace A260733.P1099757021098147056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A260733.P1099757021098147056

/-! ## A260733.P6896843550933313364

`A276572(A260731(n²))`
-/

namespace A260733.P6896843550933313364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A260731 (n ^ 2)).toNat

end

end A260733.P6896843550933313364

/-!
# A260734: a(n) = number of steps needed to reach (n^2)-1 when starting from k = ((n+1)^2)-1 and repeatedly applying the map that replaces k with k - A002828(k), where A002828(k) = the least number of squares that add up to k.

The programs for A260734, there is no canonical definition to state claims against.
-/

/-! ## A260734.P1217922889255807682

`A260732(n+2)-A260732(n+1)`
-/

namespace A260734.P1217922889255807682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 2) - A260732 (n + 1)

end

end A260734.P1217922889255807682

/-! ## A260734.P7583345565417742150

`A260733(n+2)-A260733(n+1)`
-/

namespace A260734.P7583345565417742150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 2) - A260733 (n + 1)

end

end A260734.P7583345565417742150

/-! ## A260734.P10239034571137564485

`A260731((n+2)²)-A260731((n+1)²)`
-/

namespace A260734.P10239034571137564485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 ((n + 2) ^ 2) - A260731 ((n + 1) ^ 2)

end

end A260734.P10239034571137564485

/-! ## A260734.P13881134546990245917

`A277891(n+1)+A277890(n+1)`
-/

namespace A260734.P13881134546990245917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277891 (n + 1) + A277890 (n + 1)

end

end A260734.P13881134546990245917

/-! ## A260734.P2237275975575999707

`Δ[A260732(n+1)]`
-/

namespace A260734.P2237275975575999707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260734.P2237275975575999707

/-! ## A260734.P10095015209292632403

`Δ[A260733(n+1)]`
-/

namespace A260734.P10095015209292632403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260734.P10095015209292632403

/-! ## A260734.P10366946192128728567

`A260733(n+2)-A276572(A260732(n))`
-/

namespace A260734.P10366946192128728567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 2) - A276572 (A260732 n).toNat

end

end A260734.P10366946192128728567

/-! ## A260734.P9694627149800812014

`Δ[record[A276572(n)]]`
-/

namespace A260734.P9694627149800812014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260734.P9694627149800812014

/-! ## A260734.P15642456419044389847

`Δ[A276572(A260732(n))]`
-/

namespace A260734.P15642456419044389847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A260732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260734.P15642456419044389847

/-! ## A260734.P9088109557233566343

`Δ[lt[A276572(n), A276572(n+1)]]`
-/

namespace A260734.P9088109557233566343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260734.P9088109557233566343

/-! ## A260734.P10649768094536910865

`Δ[lt[A276574(n), A276574(n+1)]]`
-/

namespace A260734.P10649768094536910865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260734.P10649768094536910865

/-! ## A260734.P543512808155155248

`A278515(A277023(n+1))`
-/

namespace A260734.P543512808155155248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 (A277023 (n + 1)).toNat

end

end A260734.P543512808155155248

/-! ## A260734.P9119450890507504006

`A278515(A276573(A260731((n+1)²)))`
-/

namespace A260734.P9119450890507504006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 (A276573 (A260731 ((n + 1) ^ 2)).toNat).toNat

end

end A260734.P9119450890507504006

/-!
# A260736: a(0) = 0; for n >= 1, a(n) = A000035(n) + a(A257684(n)); in the factorial representation of n the number of digits with maximal possible value allowed in its location.

The programs for A260736, there is no canonical definition to state claims against.
-/

/-! ## A260736.P3554060189906531075

`n%2+a(A257684(n))` with `a(0)=0`
-/

namespace A260736.P3554060189906531075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + a (A257684 n).toNat

end

end A260736.P3554060189906531075

/-! ## A260736.P5200047501894433998

`A000035(n)+a(A257684(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260736.P5200047501894433998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000035 n + a (A257684 n).toNat

end

end A260736.P5200047501894433998

/-! ## A260736.P18436185205086496342

`val(A275734(n), 2)`
-/

namespace A260736.P18436185205086496342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275734 n).toNat 2

end

end A260736.P18436185205086496342

/-! ## A260736.P11239298506920399599

`A007814(A275734(n))`
-/

namespace A260736.P11239298506920399599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275734 n).toNat

end

end A260736.P11239298506920399599

/-! ## A260736.P5439175398515057040

`A257511(A225901(n))`
-/

namespace A260736.P5439175398515057040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A225901 n).toNat

end

end A260736.P5439175398515057040

/-! ## A260736.P6905021510294157158

`A235127(A275734(n)²)`
-/

namespace A260736.P6905021510294157158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A275734 n ^ 2).toNat

end

end A260736.P6905021510294157158

/-! ## A260736.P759737982929287126

`A244415(A275734(n)²)`
-/

namespace A260736.P759737982929287126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A275734 n ^ 2).toNat

end

end A260736.P759737982929287126

/-! ## A260736.P7813930336797103444

`A328616(record[A289234(n)])`
-/

namespace A260736.P7813930336797103444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260736.P7813930336797103444

/-! ## A260736.P5732617579036096278

`log2(gcd(A001316(n), A275734(n)))`
-/

namespace A260736.P5732617579036096278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A001316 n) (A275734 n) : ℝ)

end

end A260736.P5732617579036096278

/-! ## A260736.P13772273148252520697

`a(A257684(n))+2-A040001(n)` with `a(0)=0`
-/

namespace A260736.P13772273148252520697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A257684 n).toNat + (2 - A040001 n)

end

end A260736.P13772273148252520697

/-! ## A260736.P2057881557283183580

`a(A257684(n))+2-Δ[A007494(n)]` with `a(0)=0`
-/

namespace A260736.P2057881557283183580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A257684 n).toNat + (2 - (f1 (n + 1) - f1 n))

end

end A260736.P2057881557283183580

/-! ## A260736.P4186875580081316143

`A001221(A275732(A225901(n))²)`
-/

namespace A260736.P4186875580081316143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275732 (A225901 n).toNat ^ 2).toNat

end

end A260736.P4186875580081316143

/-!
# A260737: Sum of Hamming distances between binary representations of prime factors of n, summed over all nonordered pairs of primes present (with multiplicity) in the prime factorization of n.

The programs for A260737, there is no canonical definition to state claims against.
-/

/-! ## A260737.P2023922663644951485

`A197116((∑{d}[n+1, #]-(n+1))^A243055(n+1))`
-/

namespace A260737.P2023922663644951485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197116 (SequenceMachineLib.roundAway ((((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A243055 (n + 1) : ℤ))).toNat

end

end A260737.P2023922663644951485

/-! ## A260737.P15082333650654684036

`A261079(A354202(n+1)%A240522(2*(n+2)))`
-/

namespace A260737.P15082333650654684036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (Int.tmod (A354202 (n + 1)) (A240522 (2 * (n + 2)))).toNat

end

end A260737.P15082333650654684036

/-! ## A260737.P16507470831056894850

`lcm(A001221(A239819(n+4)), A281116(n+1))`
-/

namespace A260737.P16507470831056894850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A239819 (n + 4)).toNat) (A281116 (n + 1))

end

end A260737.P16507470831056894850

/-! ## A260737.P13144815701196174314

`A356444(A327778(n+1))`
-/

namespace A260737.P13144815701196174314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356444 (A327778 (n + 1)).toNat

end

end A260737.P13144815701196174314

/-! ## A260737.P14128179596153652790

`A322390(2*n+3)%A259936(n+1)²`
-/

namespace A260737.P14128179596153652790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322390 (2 * n + 3)) (A259936 (n + 1) ^ 2)

end

end A260737.P14128179596153652790

/-!
# A260738: Row index to A255127: a(1) = 0; for n > 1, a(n) = number of the stage where n is removed in the sieve which produces Ludic numbers.

The programs for A260738, there is no canonical definition to state claims against.
-/

/-! ## A260738.P17766228596063063048

`(A237058(A272565(n+1))-1)/2`
-/

namespace A260738.P17766228596063063048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237058 (A272565 (n + 1)).toNat - 1 : ℚ) / 2

end

end A260738.P17766228596063063048

/-! ## A260738.P10553005262488509317

`A260438(A260436(n+1))%(n+1)`
-/

namespace A260738.P10553005262488509317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260438 (A260436 (n + 1)).toNat) (n + 1 : ℤ)

end

end A260738.P10553005262488509317

/-! ## A260738.P1030324726619011952

`A055396(∏{p}[A269172(n+1), #])`
-/

namespace A260738.P1030324726619011952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A260738.P1030324726619011952

/-! ## A260738.P12373601193825076069

`A055396(∏{p}[A302026(n+1), #])`
-/

namespace A260738.P12373601193825076069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A260738.P12373601193825076069

/-! ## A260738.P3727535710549281804

`A260438(A260742(n+1))*A260439(A000959(n+1))`
-/

namespace A260738.P3727535710549281804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (A260742 (n + 1)).toNat * A260439 (A000959 (n + 1)).toNat

end

end A260738.P3727535710549281804

/-! ## A260738.P2933320996981549652

`A055396(A269172(n+1))`
-/

namespace A260738.P2933320996981549652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A269172 (n + 1)).toNat

end

end A260738.P2933320996981549652

/-! ## A260738.P15010811557259920777

`A055396(A255408(n+1))`
-/

namespace A260738.P15010811557259920777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A255408 (n + 1)).toNat

end

end A260738.P15010811557259920777

/-! ## A260738.P14889681328376541950

`A055396(A020639(A302026(n+1)))`
-/

namespace A260738.P14889681328376541950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A020639 (A302026 (n + 1)).toNat).toNat

end

end A260738.P14889681328376541950

/-! ## A260738.P16717880777112705545

`A055396(A302026(n+1))`
-/

namespace A260738.P16717880777112705545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A302026 (n + 1)).toNat

end

end A260738.P16717880777112705545

/-! ## A260738.P11062362482510812429

`A055396(A255554(A260436(n+1)))`
-/

namespace A260738.P11062362482510812429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A255554 (A260436 (n + 1)).toNat).toNat

end

end A260738.P11062362482510812429

/-!
# A260739: Column index to A255127: a(1) = 1; for n > 1, a(n) = the position at the stage where n is removed in the sieve which produces Ludic numbers.

The programs for A260739, there is no canonical definition to state claims against.
-/

/-! ## A260739.P4237425904752139696

`A260439(A260436(n+1)+A000007(n))`
-/

namespace A260739.P4237425904752139696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A260436 (n + 1) + A000007 n).toNat

end

end A260739.P4237425904752139696

/-! ## A260739.P5252889502991158268

`A260439(A260436(n+1)+A108069(or(1, n)))`
-/

namespace A260739.P5252889502991158268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A260436 (n + 1) + A108069 (Nat.lor 1 n)).toNat

end

end A260739.P5252889502991158268

/-! ## A260739.P3912192890650232946

`or(A192490(n+1), A260439(A260436(n+1)))`
-/

namespace A260739.P3912192890650232946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A192490 (n + 1)) (A260439 (A260436 (n + 1)).toNat)

end

end A260739.P3912192890650232946

/-! ## A260739.P6394573599872923060

`A260437(A260436(n+1))+A166698(n+1)²`
-/

namespace A260739.P6394573599872923060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A260436 (n + 1)).toNat + A166698 (n + 1) ^ 2

end

end A260739.P6394573599872923060

/-! ## A260739.P17733064514359134007

`A260437(A260436(n+1))+A260393(3*n+4)`
-/

namespace A260739.P17733064514359134007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A260436 (n + 1)).toNat + A260393 (3 * n + 4)

end

end A260739.P17733064514359134007

/-! ## A260739.P12639989263865417117

`A260439(A260436(n+1))^A260439(A000959(n+1))`
-/

namespace A260739.P12639989263865417117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260439 (A260436 (n + 1)).toNat : ℚ) ^ (A260439 (A000959 (n + 1)).toNat : ℤ)

end

end A260739.P12639989263865417117

/-! ## A260739.P7040827695460062043

`A269171(A078898(A269172(n+1)))`
-/

namespace A260739.P7040827695460062043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A078898 (A269172 (n + 1)).toNat).toNat

end

end A260739.P7040827695460062043

/-! ## A260739.P5167797310067627205

`A078898(A255408(n+1))`
-/

namespace A260739.P5167797310067627205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A255408 (n + 1)).toNat

end

end A260739.P5167797310067627205

/-! ## A260739.P14586105895277909012

`A004736(A255128(n+1)+A057428(n))`
-/

namespace A260739.P14586105895277909012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255128 (n + 1) + A057428 n).toNat

end

end A260739.P14586105895277909012

/-! ## A260739.P2573470610907005599

`A004736(A255128(n+1)-A057427(n))`
-/

namespace A260739.P2573470610907005599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255128 (n + 1) - A057427 n).toNat

end

end A260739.P2573470610907005599

/-!
# A260740: a(n) = n minus the number of positive squares needed to sum to n using the greedy algorithm: a(n) = n - A053610(n).

The programs for A260740, there is no canonical definition to state claims against.
-/

/-! ## A260740.P4557261197408158643

`a((n+1)%2)+n-A053610(n)` with `a(0)=0`
-/

namespace A260740.P4557261197408158643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ((n + 1) % 2) + ((n : ℤ) - A053610 n)

end

end A260740.P4557261197408158643

/-! ## A260740.P16298945469990865127

`A028310(n)-A053610(A028310(n))`
-/

namespace A260740.P16298945469990865127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A053610 (A028310 n).toNat

end

end A260740.P16298945469990865127

/-! ## A260740.P9642250479674287210

`A000038(n)+n-A053610(A000038(n)+n)`
-/

namespace A260740.P9642250479674287210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (n : ℤ) - A053610 (A000038 n + (n : ℤ)).toNat

end

end A260740.P9642250479674287210

/-! ## A260740.P9119486857264836793

`A065033(2*n)-A053610(A065033(2*n))`
-/

namespace A260740.P9119486857264836793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A053610 (A065033 (2 * n)).toNat

end

end A260740.P9119486857264836793

/-! ## A260740.P1038825521219620164

`A123108(2*n)-A053610(A123108(2*n))`
-/

namespace A260740.P1038825521219620164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) - A053610 (A123108 (2 * n)).toNat

end

end A260740.P1038825521219620164

/-! ## A260740.P15402914486358630202

`A008619(A004273(n))-A053610(A065033(2*n))`
-/

namespace A260740.P15402914486358630202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat - A053610 (A065033 (2 * n)).toNat

end

end A260740.P15402914486358630202

/-! ## A260740.P16608181272991001154

`A255131(n)-A062535(A233583(n+1))`
-/

namespace A260740.P16608181272991001154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n - A062535 (A233583 (n + 1)).toNat

end

end A260740.P16608181272991001154

/-! ## A260740.P15614640402839654815

`A134478(A000217(n))-A053610(A065033(2*n))`
-/

namespace A260740.P15614640402839654815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A000217 n).toNat - A053610 (A065033 (2 * n)).toNat

end

end A260740.P15614640402839654815

/-! ## A260740.P16171765608098405843

`A137735(n²)-A053610(A137735(n²))`
-/

namespace A260740.P16171765608098405843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2) - A053610 (A137735 (n ^ 2)).toNat

end

end A260740.P16171765608098405843

/-! ## A260740.P13652550664390185308

`n+1-A053610(A255131(n²)+1+n)`
-/

namespace A260740.P13652550664390185308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053610 (A255131 (n ^ 2) + 1 + (n : ℤ)).toNat

end

end A260740.P13652550664390185308

/-!
# A260741: Permutation of natural numbers: a(1) = 1, for n > 1: a(n) = A255127(A260438(n), a(A260439(n))).

The programs for A260741, there is no canonical definition to state claims against.
-/

/-! ## A260741.P13675533729186105027

`A269385(A269376(n+1))`
-/

namespace A260741.P13675533729186105027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269385 (A269376 (n + 1)).toNat

end

end A260741.P13675533729186105027

/-! ## A260741.P7240240739195292813

`A269387(A269378(n+1))`
-/

namespace A260741.P7240240739195292813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A269378 (n + 1)).toNat

end

end A260741.P7240240739195292813

/-! ## A260741.P5778959455914190831

`A252753(A269378(n+1)^A278657(n))`
-/

namespace A260741.P5778959455914190831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (SequenceMachineLib.roundAway ((A269378 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A260741.P5778959455914190831

/-! ## A260741.P9465270981224373613

`A252755(C(A269376(n+1), A278657(n)))`
-/

namespace A260741.P9465270981224373613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (Nat.choose (A269376 (n + 1)).toNat (A278657 n).toNat)

end

end A260741.P9465270981224373613

/-! ## A260741.P11205946668144666031

`A252753(A278657(n)²²*A269378(n+1))`
-/

namespace A260741.P11205946668144666031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 ((A278657 n ^ 2) ^ 2 * A269378 (n + 1)).toNat

end

end A260741.P11205946668144666031

/-!
# A260742: Permutation of natural numbers: a(1) = 1, for n > 1: a(n) = A255551(A260738(n), a(A260739(n))).

The programs for A260742, there is no canonical definition to state claims against.
-/

/-! ## A260742.P2630860332104327832

`A269375(A269386(n+1))`
-/

namespace A260742.P2630860332104327832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A269386 (n + 1)).toNat

end

end A260742.P2630860332104327832

/-! ## A260742.P8466556203748552911

`A269377(A269388(n+1))`
-/

namespace A260742.P8466556203748552911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (A269388 (n + 1)).toNat

end

end A260742.P8466556203748552911

/-! ## A260742.P5589004308661319581

`A269377(∑{d}[A302026(n+1), A297112(#)])`
-/

namespace A260742.P5589004308661319581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d).toNat

end

end A260742.P5589004308661319581

/-! ## A260742.P6776084624561837119

`A269375(∑{d}[A302026(n+1), A297171(#)])`
-/

namespace A260742.P6776084624561837119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d).toNat

end

end A260742.P6776084624561837119

/-! ## A260742.P3931635742939290828

`A269375(A243071(n+1)%A034316(n))`
-/

namespace A260742.P3931635742939290828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (Int.tmod (A243071 (n + 1)) (A034316 n)).toNat

end

end A260742.P3931635742939290828

/-!
# A260743: Sequence A261220 shown in factorial base: a(n) = A007623(A261220(n)).

The programs for A260743, there is no canonical definition to state claims against.
-/

/-! ## A260743.P2101197198972062077

`A007623(A261220(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260743.P2101197198972062077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A261220 n).toNat

end

end A260743.P2101197198972062077

/-! ## A260743.P16339824404235772116

`A007623(eq[0, A261219(n)])`
-/

namespace A260743.P16339824404235772116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260743.P16339824404235772116

/-! ## A260743.P15830841433482288221

`A007623(eq[n, A060125(n)])`
-/

namespace A260743.P15830841433482288221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260743.P15830841433482288221

/-! ## A260743.P11131098122814279830

`A007623(record[n-A261219(n)])`
-/

namespace A260743.P11131098122814279830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260743.P11131098122814279830

/-! ## A260743.P15641195630770027538

`A007623(record[gcd(n, A060125(n))])`
-/

namespace A260743.P15641195630770027538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A060125 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A260743.P15641195630770027538

/-! ## A260743.P24170008882445718

`record[gcd(A007623(n), A261219(n))]`
-/

namespace A260743.P24170008882445718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007623 n) (A261219 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260743.P24170008882445718

/-! ## A260743.P11087211857705827244

`A007623(eq[1, A000010(A060131(n))])`
-/

namespace A260743.P11087211857705827244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260743.P11087211857705827244

/-! ## A260743.P2156510419181829418

`A007623(eq[1, A000045(A060131(n))])`
-/

namespace A260743.P2156510419181829418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A060131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260743.P2156510419181829418

/-! ## A260743.P3658274186515558344

`A007623(eq[A060128(n), A060130(n)])`
-/

namespace A260743.P3658274186515558344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260743.P3658274186515558344

/-! ## A260743.P6205975243803503292

`A007623(eq[n, A225901(A275957(n))])`
-/

namespace A260743.P6205975243803503292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260743.P6205975243803503292

/-!
# A260744: Number of prime juggling patterns of period n using 2 balls.

The programs for A260744, there is no canonical definition to state claims against.
-/

/-! ## A260744.P7412925897544776987

`A087836(A216710(n)+A099376(n))`
-/

namespace A260744.P7412925897544776987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A216710 n + A099376 n).toNat

end

end A260744.P7412925897544776987

/-! ## A260744.P9732134869241099829

`A026622(n)-A342507(A210443(n))`
-/

namespace A260744.P9732134869241099829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 n - A342507 (A210443 n).toNat

end

end A260744.P9732134869241099829

/-! ## A260744.P15650998179351678038

`A026819(A260745(n+1)+A110110(n))`
-/

namespace A260744.P15650998179351678038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A260745 (n + 1) + A110110 n).toNat

end

end A260744.P15650998179351678038

/-! ## A260744.P4341859905780947306

`A266625(n)-A001222(A280075(n+1))`
-/

namespace A260744.P4341859905780947306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266625 n - A001222 (A280075 (n + 1)).toNat

end

end A260744.P4341859905780947306

/-!
# A260745: Number of prime juggling patterns of period n using 3 balls.

The programs for A260745, there is no canonical definition to state claims against.
-/

/-! ## A260745.P17057873796037087110

`A276034(A337552(n))+A007052(n)`
-/

namespace A260745.P17057873796037087110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276034 (A337552 n).toNat + A007052 n

end

end A260745.P17057873796037087110

/-! ## A260745.P6763242778638075001

`or(A003991(A001042(n)), A017937(n))`
-/

namespace A260745.P6763242778638075001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003991 (A001042 n).toNat) (A017937 n)

end

end A260745.P6763242778638075001

/-!
# A260746: Number of prime juggling patterns of period n using 4 balls.

The programs for A260746, there is no canonical definition to state claims against.
-/

/-! ## A260746.P5546968762473904544

`A327990(A002415(n))+A194460(n+1)`
-/

namespace A260746.P5546968762473904544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327990 (A002415 n).toNat + A194460 (n + 1)

end

end A260746.P5546968762473904544

/-!
# A260752: Number of prime juggling patterns of period n using 5 balls.

The programs for A260752, there is no canonical definition to state claims against.
-/

/-! ## A260752.P16515180528293670127

`∑[A263273(A226738(n))]`
-/

namespace A260752.P16515180528293670127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A226738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260752.P16515180528293670127

/-!
# A260754: a(n) = prime(n+1)! / prime(n).

The programs for A260754, the canonical program `A260754.P5965187776734892308` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260754 has offset 1).

The definition of A260754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260754.P5965187776734892308

`A039716(n+2)/A000040(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A260754

/-- `A039716(n+2)/A000040(n+1)` -/
def P5965187776734892308.Spec : Prop :=
  ∀ n, P5965187776734892308.a n = (A260754 (n + 1) : ℚ)

end A260754

/-! ## A260754.P1920789703415938017

`A000040(n+2)!/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260754.P1920789703415938017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 2)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A260754.P1920789703415938017

namespace A260754

/-- `A000040(n+2)!/A000040(n+1)` -/
def P1920789703415938017.Spec : Prop :=
  ∀ n, P1920789703415938017.a n = (A260754 (n + 1) : ℚ)

end A260754

/-! ## A260754.P2589005291291741723

`p?[2*n+1]!/p?[xor(1, n)+1]`
-/

namespace A260754.P2589005291291741723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ)

end

end A260754.P2589005291291741723

namespace A260754

/-- `p?[2*n+1]!/p?[xor(1, n)+1]` -/
def P2589005291291741723.Spec : Prop :=
  ∀ n, P2589005291291741723.a n = (A260754 (n + 1) : ℚ)

end A260754

/-! ## A260754.P12865219316029395995

`p?[2*n+1]!/sqrt(A001248(n+1))`
-/

namespace A260754.P12865219316029395995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A260754.P12865219316029395995

namespace A260754

/-- `p?[2*n+1]!/sqrt(A001248(n+1))` -/
def P12865219316029395995.Spec : Prop :=
  ∀ n, P12865219316029395995.a n = (A260754 (n + 1) : ℝ)

end A260754

/-! ## A260754.P12529375180532699309

`p?[2*n+1]!/A000194(p?[round(8*n/7)]²)`
-/

namespace A260754.P12529375180532699309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (A000194 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2).toNat : ℚ)

end

end A260754.P12529375180532699309

namespace A260754

/-- `p?[2*n+1]!/A000194(p?[round(8*n/7)]²)` -/
def P12529375180532699309.Spec : Prop :=
  ∀ n, P12529375180532699309.a n = (A260754 (n + 1) : ℚ)

end A260754

/-!
# A260755: Number of ways to relax the chip-configuration of Anderson et al. one chip at a time.

The programs for A260755, there is no canonical definition to state claims against.
-/

/-! ## A260755.P245410397168222187

`A274883(A274869(n+5)%A003418(n))`
-/

namespace A260755.P245410397168222187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274883 (Int.tmod (A274869 (n + 5)) (A003418 n)).toNat

end

end A260755.P245410397168222187

/-! ## A260755.P17968160790096782538

`4^a(n-1)-4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A260755.P17968160790096782538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  (4 : ℝ) ^ (a (n - 1)) - 4

end

end A260755.P17968160790096782538

/-!
# A260758: Least k > 0 such that M(n)^2 + 2k is prime, where M(n) = 2^n - 1 = A000225(n).

The programs for A260758, there is no canonical definition to state claims against.
-/

/-! ## A260758.P16163526751003222572

`ceil(sqrt(A053000(2^n-1)²+4)/2)-1`
-/

namespace A260758.P16163526751003222572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A053000 (2 ^ n - 1) ^ 2 + 4 : ℝ) / 2⌉ - 1

end

end A260758.P16163526751003222572

/-! ## A260758.P12214606445995500312

`A026741(A053000(2^n-1))`
-/

namespace A260758.P12214606445995500312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A053000 (2 ^ n - 1)).toNat

end

end A260758.P12214606445995500312

/-! ## A260758.P7312310184374008132

`floor((A053000(A000225(n))+1)/2)`
-/

namespace A260758.P7312310184374008132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053000 (A000225 n).toNat + 1 : ℚ) / 2⌋

end

end A260758.P7312310184374008132

/-! ## A260758.P6331276462928323503

`round(A053000(A000203(ceil(2^(n-1))))/2)`
-/

namespace A260758.P6331276462928323503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053000 (A000203 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat : ℚ) / 2)

end

end A260758.P6331276462928323503

/-! ## A260758.P16693511686515244353

`A164292(A007510(n+1))+A110654(A053000(2^n-1))`
-/

namespace A260758.P16693511686515244353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A007510 (n + 1)).toNat + A110654 (A053000 (2 ^ n - 1)).toNat

end

end A260758.P16693511686515244353

/-!
# A260759: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260759, there is no canonical definition to state claims against.
-/

/-! ## A260759.P1371343364513687373

`A260767(∑[4*n]+1)`
-/

namespace A260759.P1371343364513687373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260759.P1371343364513687373

/-! ## A260759.P2875148185946213692

`A260767(A001844(n))+char[17]`
-/

namespace A260759.P2875148185946213692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260759.P2875148185946213692

/-! ## A260759.P2026749332111353882

`record[A003982(n)*A260767(n+1)]`
-/

namespace A260759.P2026749332111353882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260759.P2026749332111353882

/-! ## A260759.P5818891813777838922

`A007318(∑[n])*A260767(A001844(n))`
-/

namespace A260759.P5818891813777838922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A260767 (A001844 n).toNat

end

end A260759.P5818891813777838922

/-! ## A260759.P1728091883370923531

`A260767(A001844(n))/A007318(C(n, 2))`
-/

namespace A260759.P1728091883370923531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260767 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A260759.P1728091883370923531

/-!
# A260760: Number of (n+2)X(1+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260760, there is no canonical definition to state claims against.
-/

/-! ## A260760.P11856743060715722205

`A260767(∑[n]+1)`
-/

namespace A260760.P11856743060715722205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260760.P11856743060715722205

/-! ## A260760.P14694035540144783017

`and(-1, A260767(A000124(n)))`
-/

namespace A260760.P14694035540144783017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A260767 (A000124 n).toNat)

end

end A260760.P14694035540144783017

/-! ## A260760.P3897412350642077185

`record[A260767(A166017(n+1))]`
-/

namespace A260760.P3897412350642077185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260760.P3897412350642077185

/-! ## A260760.P2764230686361826796

`record[A260767(A249725(n+1))]`
-/

namespace A260760.P2764230686361826796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A249725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260760.P2764230686361826796

/-! ## A260760.P9581831892264206477

`record[A260767(A249742(n+1))]`
-/

namespace A260760.P9581831892264206477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260760.P9581831892264206477

/-!
# A260761: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260761, there is no canonical definition to state claims against.
-/

/-! ## A260761.P14505107529159791724

`A260767(∑[n+1]+2)`
-/

namespace A260761.P14505107529159791724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260761.P14505107529159791724

/-! ## A260761.P11281386023155310892

`record[A010054(n)*A260767(n+2)]`
-/

namespace A260761.P11281386023155310892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260761.P11281386023155310892

/-! ## A260761.P9841589701017458462

`record[gcd(A002262(n), A260767(n+2))]`
-/

namespace A260761.P9841589701017458462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260767 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260761.P9841589701017458462

/-! ## A260761.P15759935107208711120

`record[A260767(A259604(n+1)-1)]`
-/

namespace A260761.P15759935107208711120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A259604 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260761.P15759935107208711120

/-! ## A260761.P37229662756790027

`or(char[1], A260767(A117142(2*(n+1))))`
-/

namespace A260761.P37229662756790027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260767 (A117142 (2 * (n + 1))).toNat)

end

end A260761.P37229662756790027

/-!
# A260762: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260762, there is no canonical definition to state claims against.
-/

/-! ## A260762.P4164177088386225965

`A260767(∑[n+2]+4)`
-/

namespace A260762.P4164177088386225965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260762.P4164177088386225965

/-! ## A260762.P13126302985456843880

`record[A260767(A166017(n+2)+2)]`
-/

namespace A260762.P13126302985456843880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A166017 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260762.P13126302985456843880

/-! ## A260762.P15563205404222462907

`record[A260767(A257504(n+2)+2)]`
-/

namespace A260762.P15563205404222462907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A257504 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260762.P15563205404222462907

/-! ## A260762.P12862185851955311263

`or(char[1], A260767(A167614(n+1)))`
-/

namespace A260762.P12862185851955311263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260767 (A167614 (n + 1)).toNat)

end

end A260762.P12862185851955311263

/-! ## A260762.P3703307245761023217

`A260767(A167499(n)+n)+char[33]`
-/

namespace A260762.P3703307245761023217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260762.P3703307245761023217

/-!
# A260763: Number of (n+2) X (4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260763, there is no canonical definition to state claims against.
-/

/-! ## A260763.P8739020204225398208

`A260767(∑[n+3]+7)`
-/

namespace A260763.P8739020204225398208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260763.P8739020204225398208

/-! ## A260763.P10685568893041944143

`record[A260767(A259604(n+5)-3)]`
-/

namespace A260763.P10685568893041944143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A259604 (n + 5) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260763.P10685568893041944143

/-! ## A260763.P7776764952681681474

`A328959(n+5)+A260767(A055998(n+2))`
-/

namespace A260763.P7776764952681681474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (n + 5) + A260767 (A055998 (n + 2)).toNat

end

end A260763.P7776764952681681474

/-! ## A260763.P1131371761047863829

`A260767(A027379(n+2))%A260765(n+1)`
-/

namespace A260763.P1131371761047863829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260767 (A027379 (n + 2)).toNat) (A260765 (n + 1))

end

end A260763.P1131371761047863829

/-!
# A260764: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260764, there is no canonical definition to state claims against.
-/

/-! ## A260764.P12591972200124174645

`A260767(A374005(n+1))`
-/

namespace A260764.P12591972200124174645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A374005 (n + 1)).toNat

end

end A260764.P12591972200124174645

/-! ## A260764.P2211064650910426056

`A260767(A167499(n+3))`
-/

namespace A260764.P2211064650910426056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A167499 (n + 3)).toNat

end

end A260764.P2211064650910426056

/-! ## A260764.P12113500484432049150

`A260767(A155212(n)+13)`
-/

namespace A260764.P12113500484432049150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A155212 n + 13).toNat

end

end A260764.P12113500484432049150

/-! ## A260764.P13912353425585179243

`A260767(A056000(n)+15)`
-/

namespace A260764.P13912353425585179243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A056000 n + 15).toNat

end

end A260764.P13912353425585179243

/-! ## A260764.P15317247532014348205

`A260767(A145018(n+5)+1)`
-/

namespace A260764.P15317247532014348205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A145018 (n + 5) + 1).toNat

end

end A260764.P15317247532014348205

/-!
# A260765: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260765, there is no canonical definition to state claims against.
-/

/-! ## A260765.P14523850327111950862

`A260767(A374007(n+1))`
-/

namespace A260765.P14523850327111950862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A374007 (n + 1)).toNat

end

end A260765.P14523850327111950862

/-! ## A260765.P9876890481493442835

`A260767(A166136(n+4))`
-/

namespace A260765.P9876890481493442835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A166136 (n + 4)).toNat

end

end A260765.P9876890481493442835

/-! ## A260765.P17766838554780668506

`A260767(∑[A020710(n)]+16)`
-/

namespace A260765.P17766838554780668506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A260765.P17766838554780668506

/-! ## A260765.P6309957732633778437

`A260767(A167614(n+4)+3)`
-/

namespace A260765.P6309957732633778437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A167614 (n + 4) + 3).toNat

end

end A260765.P6309957732633778437

/-! ## A260765.P2000805334607227582

`A260767(A000124(n+5)+5)`
-/

namespace A260765.P2000805334607227582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A000124 (n + 5) + 5).toNat

end

end A260765.P2000805334607227582

/-!
# A260766: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010011.

The programs for A260766, there is no canonical definition to state claims against.
-/

/-! ## A260766.P2404231523363222215

`A260767(A374008(n+1))`
-/

namespace A260766.P2404231523363222215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A374008 (n + 1)).toNat

end

end A260766.P2404231523363222215

/-! ## A260766.P14545285978972314593

`A260767(A056119(n)+28)`
-/

namespace A260766.P14545285978972314593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A056119 n + 28).toNat

end

end A260766.P14545285978972314593

/-! ## A260766.P7119155830761752559

`A260767(A166136(n+5)+1)`
-/

namespace A260766.P7119155830761752559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A166136 (n + 5) + 1).toNat

end

end A260766.P7119155830761752559

/-! ## A260766.P17835911561023287595

`A260767(A167499(n+5)+2)`
-/

namespace A260766.P17835911561023287595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A167499 (n + 5) + 2).toNat

end

end A260766.P17835911561023287595

/-! ## A260766.P13640017178614165332

`A260767(A167614(n+5)+4)`
-/

namespace A260766.P13640017178614165332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260767 (A167614 (n + 5) + 4).toNat

end

end A260766.P13640017178614165332

/-!
# A260769: Certain directed lattice paths.

The programs for A260769, there is no canonical definition to state claims against.
-/

/-! ## A260769.P4690421341860721464

`A260770(n)-n*A260772(n)`
-/

namespace A260769.P4690421341860721464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260770 n - (n : ℤ) * A260772 n

end

end A260769.P4690421341860721464

/-! ## A260769.P3605911923957702601

`A103141(∑[4*n])`
-/

namespace A260769.P3605911923957702601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260769.P3605911923957702601

/-! ## A260769.P2926691348059045480

`record[A103141(n*A008619(n))]`
-/

namespace A260769.P2926691348059045480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260769.P2926691348059045480

/-! ## A260769.P11285146270107346116

`record[A103141((n+1)*A004524(n))]`
-/

namespace A260769.P11285146270107346116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 ((n + 1 : ℤ) * A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260769.P11285146270107346116

/-! ## A260769.P9935852976570267462

`A103141(A106232(n+1))%A221082(n+1)`
-/

namespace A260769.P9935852976570267462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103141 (A106232 (n + 1)).toNat) (A221082 (n + 1))

end

end A260769.P9935852976570267462

/-!
# A260770: Certain directed lattice paths.

The programs for A260770, there is no canonical definition to state claims against.
-/

/-! ## A260770.P4292874912255423928

`A260769(n)+n*A260772(n)`
-/

namespace A260770.P4292874912255423928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260769 n + (n : ℤ) * A260772 n

end

end A260770.P4292874912255423928

/-! ## A260770.P3108936852250526983

`A103141(2*n+(n+1)²+n²)`
-/

namespace A260770.P3108936852250526983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 (2 * n + ((n + 1) ^ 2 + n ^ 2))

end

end A260770.P3108936852250526983

/-! ## A260770.P8759058156167729613

`record[A103141(n*A115361(n))]`
-/

namespace A260770.P8759058156167729613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 ((n : ℤ) * A115361 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260770.P8759058156167729613

/-!
# A260771: Certain directed lattice paths.

The programs for A260771, there is no canonical definition to state claims against.
-/

/-! ## A260771.P9903933595909609945

`A260773(n+1)`
-/

namespace A260771.P9903933595909609945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260773 (n + 1)

end

end A260771.P9903933595909609945

/-! ## A260771.P12751678713543945753

`record[A260773(gcd(1-n, floor(n/2)))]`
-/

namespace A260771.P12751678713543945753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260773 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260771.P12751678713543945753

/-! ## A260771.P424626664239604308

`record[A260773(A008611(n))]`
-/

namespace A260771.P424626664239604308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260773 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260771.P424626664239604308

/-! ## A260771.P11227619682631233100

`record[A260773(A008624(n))]`
-/

namespace A260771.P11227619682631233100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260773 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260771.P11227619682631233100

/-! ## A260771.P1465694353302549556

`record[A260773(A025480(n))]`
-/

namespace A260771.P1465694353302549556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260773 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260771.P1465694353302549556

/-! ## A260771.P3223366656744213974

`record[A260773(A057979(n))]`
-/

namespace A260771.P3223366656744213974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260773 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260771.P3223366656744213974

/-!
# A260772: Certain directed lattice paths.

The programs for A260772, there is no canonical definition to state claims against.
-/

/-! ## A260772.P9143432401156680627

`A037458(A126331(∑[n]))`
-/

namespace A260772.P9143432401156680627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A126331 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A260772.P9143432401156680627

/-! ## A260772.P17212245556554170458

`∑[A057354(A104455(n)+2)]`
-/

namespace A260772.P17212245556554170458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A104455 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260772.P17212245556554170458

/-!
# A260773: Certain directed lattice paths.

The programs for A260773, there is no canonical definition to state claims against.
-/

/-! ## A260773.P732027155933502980

`A260771((n-1)%(n+1))`
-/

namespace A260773.P732027155933502980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260771 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A260773.P732027155933502980

/-! ## A260773.P3285629846502260414

`A260771(round(sqrt(n²+1))-1)`
-/

namespace A260773.P3285629846502260414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260771 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A260773.P3285629846502260414

/-! ## A260773.P3070707136493066482

`a(1-char[1])*A260771(n-1)` with `a(0)=1`
-/

namespace A260773.P3070707136493066482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (1 - (if ∃ j, f1 j = n then 1 else 0)) * A260771 (n - 1)

end

end A260773.P3070707136493066482

/-! ## A260773.P561433675862886547

`abs(A260771(A028310(n)-1)-1)+1`
-/

namespace A260773.P561433675862886547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260771 (A028310 n - 1).toNat - 1| + 1

end

end A260773.P561433675862886547

/-! ## A260773.P10511787680214117877

`∏{e}[ceil(2^(n-1)), A260771(#)]`
-/

namespace A260773.P10511787680214117877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A260771 (Nat.factorization (f1 n).natAbs p)

end

end A260773.P10511787680214117877

/-!
# A260774: Certain directed lattice paths.

The programs for A260774, there is no canonical definition to state claims against.
-/

/-! ## A260774.P1864445733643456348

`Δ[A122868(n)/2]`
-/

namespace A260774.P1864445733643456348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122868 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260774.P1864445733643456348

/-! ## A260774.P16313697541484766263

`A232973(A133263(n)-1)`
-/

namespace A260774.P16313697541484766263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (A133263 n - 1).toNat

end

end A260774.P16313697541484766263

/-! ## A260774.P537094282550428464

`A232973(A253145(n)-n)`
-/

namespace A260774.P537094282550428464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (A253145 n - (n : ℤ)).toNat

end

end A260774.P537094282550428464

/-! ## A260774.P1184647178879262262

`A232973(A000124(n)-A000007(n))`
-/

namespace A260774.P1184647178879262262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (A000124 n - A000007 n).toNat

end

end A260774.P1184647178879262262

/-! ## A260774.P8429107220431517733

`Δ[A232973(∑[n])/2]`
-/

namespace A260774.P8429107220431517733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232973 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260774.P8429107220431517733

/-! ## A260774.P10754562274303338509

`A102036(A056220(n+1))`
-/

namespace A260774.P10754562274303338509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102036 (A056220 (n + 1)).toNat

end

end A260774.P10754562274303338509

/-!
# A260775: Certain directed lattice paths.

The programs for A260775, there is no canonical definition to state claims against.
-/

/-! ## A260775.P14727834570545556624

`record[(3/n-1)*4*a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A260775.P14727834570545556624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (3 / (n : ℚ) - 1) * (4 * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260775.P14727834570545556624

/-! ## A260775.P6264019455967406964

`A068875(2*n)`
-/

namespace A260775.P6264019455967406964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (2 * n)

end

end A260775.P6264019455967406964

/-! ## A260775.P5209156463884337162

`A329688(6*n)`
-/

namespace A260775.P5209156463884337162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329688 (6 * n)

end

end A260775.P5209156463884337162

/-! ## A260775.P14247932426223806592

`A329686(8*n)`
-/

namespace A260775.P14247932426223806592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (8 * n)

end

end A260775.P14247932426223806592

/-! ## A260775.P1266933092014894061

`A131428(2*n)+ceil(abs(sin(n)))`
-/

namespace A260775.P1266933092014894061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (2 * n) + ⌈|Real.sin (n : ℝ)|⌉

end

end A260775.P1266933092014894061

/-! ## A260775.P15820210594108659095

`ceil(cosh(sin(n)))*A000108(2*n)`
-/

namespace A260775.P15820210594108659095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A000108 (2 * n)

end

end A260775.P15820210594108659095

/-! ## A260775.P9620183468047665635

`2*A000108(n*(and(2, a(n-1))²+2))` with `a(0)=1`
-/

namespace A260775.P9620183468047665635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000108 ((n : ℤ) * (Int.land 2 (a (n - 1)) ^ 2 + 2)).toNat

end

end A260775.P9620183468047665635

/-! ## A260775.P7005856723495504428

`A228403(A004277(n))`
-/

namespace A260775.P7005856723495504428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228403 (A004277 n).toNat

end

end A260775.P7005856723495504428

/-! ## A260775.P12487932203571526293

`A228403(A298637(n²))`
-/

namespace A260775.P12487932203571526293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228403 (A298637 (n ^ 2)).toNat

end

end A260775.P12487932203571526293

/-! ## A260775.P3547467256247888888

`A089408(A113127(n+1))`
-/

namespace A260775.P3547467256247888888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A113127 (n + 1)).toNat

end

end A260775.P3547467256247888888

/-!
# A260776: Certain directed lattice paths.

The programs for A260776, there is no canonical definition to state claims against.
-/

/-! ## A260776.P7125516375856509395

`C(5*n, comp[2*(n+1)])/round(1/acot(n))`
-/

namespace A260776.P7125516375856509395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A260776.P7125516375856509395

/-! ## A260776.P16859677447070459252

`A124819(A022266(n))/A028310(n)`
-/

namespace A260776.P16859677447070459252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124819 (A022266 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A260776.P16859677447070459252

/-! ## A260776.P3048280948634181482

`A124819(A022266(n))/(1-A057427(n)+n)`
-/

namespace A260776.P3048280948634181482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124819 (A022266 n).toNat : ℚ) / (1 - A057427 n + (n : ℤ) : ℚ)

end

end A260776.P3048280948634181482

/-!
# A260777: Sum of squares of end-to-end distances for self-avoiding walks on the Manhattan lattice.

The programs for A260777, there is no canonical definition to state claims against.
-/

/-! ## A260777.P5538584961080770230

`A210380(A266367(n))`
-/

namespace A260777.P5538584961080770230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A266367 n).toNat

end

end A260777.P5538584961080770230

/-! ## A260777.P12773988201886551636

`∑[∑[A345167(A000009(3*(n+1)))]]`
-/

namespace A260777.P12773988201886551636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A000009 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260777.P12773988201886551636

/-!
# A260778: Sum of squares of end-to-end distances for self-avoiding walks on the L lattice.

The programs for A260778, there is no canonical definition to state claims against.
-/

/-! ## A260778.P13815285102473566182

`filter[A118885(n), A316343(#)]`
-/

namespace A260778.P13815285102473566182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316343 (f1 j).toNat = 1) n)

end

end A260778.P13815285102473566182

/-! ## A260778.P16086916971145503489

`A118885(n+4)^A025452(n)^8`
-/

namespace A260778.P16086916971145503489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118885 (n + 4) : ℚ) ^ (A025452 n ^ 8 : ℤ)

end

end A260778.P16086916971145503489

/-! ## A260778.P6650519174545409582

`A118885(A233940(A118885(n))+n+3)`
-/

namespace A260778.P6650519174545409582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118885 (A233940 (A118885 n).toNat + (n + 3 : ℤ)).toNat

end

end A260778.P6650519174545409582

/-! ## A260778.P17390036366067313632

`A209229(A041442(n))+A118885(n+4)`
-/

namespace A260778.P17390036366067313632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A041442 n).toNat + A118885 (n + 4)

end

end A260778.P17390036366067313632

/-!
# A260779: Coefficients arising from expansion of 1/(2*P(u)) in powers of u, where P is the Weierstrass P-function.

The programs for A260779, there is no canonical definition to state claims against.
-/

/-! ## A260779.P10628374395868321799

`(-12)^n*A144849(n)`
-/

namespace A260779.P10628374395868321799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-12) ^ n * A144849 n

end

end A260779.P10628374395868321799

/-! ## A260779.P8388874497051464238

`A144849(n)/A144853(n)*A283831(n)`
-/

namespace A260779.P8388874497051464238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144849 n : ℚ) / (A144853 n : ℚ) * (A283831 n : ℚ)

end

end A260779.P8388874497051464238

/-!
# A260784: Coefficients in a certain low-temperature series expansion.

The programs for A260784, there is no canonical definition to state claims against.
-/

/-! ## A260784.P6675705893610889437

`A002674(n+1)*A209320(A096951(n))`
-/

namespace A260784.P6675705893610889437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002674 (n + 1) * A209320 (A096951 n).toNat

end

end A260784.P6675705893610889437

/-!
# A260785: Leading diagonal of triangle in A259689: a(n)= number of permutations without overlaps that generate exactly 2 permutations without overlaps in a(n+1).

The programs for A260785, there is no canonical definition to state claims against.
-/

/-! ## A260785.P12512411301956569682

`A259689(∑[a(n-2)+1])` with `a(0)=2, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A260785.P12512411301956569682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 2, 2] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260785.P12512411301956569682

/-! ## A260785.P10203738979513772591

`A259689(A290743(n+1))`
-/

namespace A260785.P10203738979513772591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (A290743 (n + 1)).toNat

end

end A260785.P10203738979513772591

/-! ## A260785.P5241975266035352538

`A259689(∑[A065033(n)]+1)`
-/

namespace A260785.P5241975266035352538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A260785.P5241975266035352538

/-! ## A260785.P10237106100269870411

`A259689(∑[A110654(n)]+2)`
-/

namespace A260785.P10237106100269870411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A260785.P10237106100269870411

/-! ## A260785.P14196452114913672403

`A259689(Δ[A002623(n)]-n)`
-/

namespace A260785.P14196452114913672403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259689 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A260785.P14196452114913672403

/-!
# A260786: Twice the Euler or up/down numbers A000111.

The programs for A260786, there is no canonical definition to state claims against.
-/

/-! ## A260786.P6449374402288140050

`2*A000111(n)`
-/

namespace A260786.P6449374402288140050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000111 n

end

end A260786.P6449374402288140050

/-! ## A260786.P14863152540417884722

`lcm(2, A001250(n))`
-/

namespace A260786.P14863152540417884722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001250 n)

end

end A260786.P14863152540417884722

/-! ## A260786.P15205487740671619277

`abs(2*A346838(n))`
-/

namespace A260786.P15205487740671619277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A346838 n|

end

end A260786.P15205487740671619277

/-! ## A260786.P4446923128450878193

`2*A104345(∑[n])`
-/

namespace A260786.P4446923128450878193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260786.P4446923128450878193

/-! ## A260786.P17503731320424323413

`2*A104346(∑[n])`
-/

namespace A260786.P17503731320424323413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260786.P17503731320424323413

/-! ## A260786.P12098794893990550233

`2*A109449(∑[n])`
-/

namespace A260786.P12098794893990550233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260786.P12098794893990550233

/-! ## A260786.P9663570964333728034

`2*A010094(∑[n+1])`
-/

namespace A260786.P9663570964333728034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260786.P9663570964333728034

/-! ## A260786.P4322361166834883958

`2*A008281(A000096(n))`
-/

namespace A260786.P4322361166834883958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008281 (A000096 n).toNat

end

end A260786.P4322361166834883958

/-! ## A260786.P17818505206012952074

`2*A008282(A000124(n))`
-/

namespace A260786.P17818505206012952074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008282 (A000124 n).toNat

end

end A260786.P17818505206012952074

/-! ## A260786.P15830121361139838442

`2*A108040(A266665(n))`
-/

namespace A260786.P15830121361139838442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108040 (A266665 n).toNat

end

end A260786.P15830121361139838442

/-!
# A260787: G.f.: Product_{k>=1} 1/(1-x^k)^Fibonacci(k+2).

The programs for A260787, there is no canonical definition to state claims against.
-/

/-! ## A260787.P10596929655748392324

`∑[A245326(A026671(n))]`
-/

namespace A260787.P10596929655748392324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A026671 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260787.P10596929655748392324

/-! ## A260787.P14758720649347897716

`A261104(A124647(n))-n`
-/

namespace A260787.P14758720649347897716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A124647 n).toNat - (n : ℤ)

end

end A260787.P14758720649347897716

/-! ## A260787.P13359511696511982497

`∑[A087836(∑[A072264(n)])]`
-/

namespace A260787.P13359511696511982497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260787.P13359511696511982497

/-!
# A260788: Normalized volume of Newton polytope P(n) for a flag space with second Betti number 1.

The programs for A260788, there is no canonical definition to state claims against.
-/

/-! ## A260788.P8339585845853047766

`2*A260789(n+2)`
-/

namespace A260788.P8339585845853047766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260789 (n + 2)

end

end A260788.P8339585845853047766

/-!
# A260789: A260788(n)/2.

The programs for A260789, there is no canonical definition to state claims against.
-/

/-! ## A260789.P1452243699373873541

`A260788(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260789.P1452243699373873541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260788 (n + 2) : ℚ) / 2

end

end A260789.P1452243699373873541

/-!
# A260791: Type II primes (conjectured).

The programs for A260791, there is no canonical definition to state claims against.
-/

/-! ## A260791.P15719566800813352463

`p?[gcd(A242164(n+2), A242169(n+1))]`
-/

namespace A260791.P15719566800813352463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242164 (n + 2)) (A242169 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A260791.P15719566800813352463

/-! ## A260791.P9533705253681971593

`A216746(lt[A216708(n+1), A216719(2*n+3)])`
-/

namespace A260791.P9533705253681971593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260791.P9533705253681971593

/-! ## A260791.P14414849949245997020

`record[A006530(or(4, A319828(n+1)))]`
-/

namespace A260791.P14414849949245997020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 4 (A319828 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260791.P14414849949245997020

/-! ## A260791.P2942254672399250750

`record[A014963(or(4, A319828(n+1)))]`
-/

namespace A260791.P2942254672399250750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 4 (A319828 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260791.P2942254672399250750

/-! ## A260791.P490183721636777388

`record[A020639(or(4, A319828(n+1)))]`
-/

namespace A260791.P490183721636777388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 4 (A319828 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260791.P490183721636777388

/-!
# A260794: Number of steps required by R. L. Graham's generalized binary merging algorithm.

The programs for A260794, there is no canonical definition to state claims against.
-/

/-! ## A260794.P15482675624481784411

`∑[2*a(floor(n/ϕ))]` with `a(0)=2, a(1)=1`
-/

namespace A260794.P15482675624481784411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260794.P15482675624481784411

/-! ## A260794.P17272557090868286033

`lcm(2, a(n-3))+5` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A260794.P17272557090868286033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  Nat.lcm 2 (a (n - 3)) + 5

end

end A260794.P17272557090868286033

/-! ## A260794.P30293560360233809

`2*a(n-3)+5` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A260794.P30293560360233809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  2 * a (n - 3) + 5

end

end A260794.P30293560360233809

/-! ## A260794.P13935774061990866361

`∑[2^(comp[∑[n+2]]-n)]+1`
-/

namespace A260794.P13935774061990866361
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A260794.P13935774061990866361

/-! ## A260794.P9539300733435881583

`∑[2/a(floor(n/ϕ))^-1]` with `a(0)=2, a(1)=1`
-/

namespace A260794.P9539300733435881583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 / f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260794.P9539300733435881583

/-!
# A260795: Number of steps required by the Hwang-Deutsch merging algorithm.

The programs for A260795, there is no canonical definition to state claims against.
-/

/-! ## A260795.P12046725135681435917

`round(∑[A004396(A354785(n+1))]/3)+1`
-/

namespace A260795.P12046725135681435917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A354785 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3) + 1

end

end A260795.P12046725135681435917

/-! ## A260795.P5454385594158095028

`A002264(A052551(n+3))+∏[gcd(2, n)]-1`
-/

namespace A260795.P5454385594158095028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A052551 (n + 3)).toNat + (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A260795.P5454385594158095028

/-! ## A260795.P11978196598800735311

`A052551(n)+A002264(A052551(n+3))`
-/

namespace A260795.P11978196598800735311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n + A002264 (A052551 (n + 3)).toNat

end

end A260795.P11978196598800735311

/-! ## A260795.P15928595894808478151

`A135318(n+1)+A110654(∑[A135318(n+2)])`
-/

namespace A260795.P15928595894808478151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) + A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260795.P15928595894808478151

/-! ## A260795.P5764079967220511257

`A008620(A136252(n))+A004396(A027383(n))`
-/

namespace A260795.P5764079967220511257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A136252 n).toNat + A004396 (A027383 n).toNat

end

end A260795.P5764079967220511257

/-!
# A260797: Number of partitions of n! into aliquant parts (i.e., parts that do not divide n!).

The programs for A260797, there is no canonical definition to state claims against.
-/

/-! ## A260797.P8504841887556813230

`A098743((n+1)!)`
-/

namespace A260797.P8504841887556813230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098743 (Nat.factorial (n + 1))

end

end A260797.P8504841887556813230

/-! ## A260797.P18427304945725409611

`A098743(∏[n+1])`
-/

namespace A260797.P18427304945725409611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098743 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A260797.P18427304945725409611

/-!
# A260798: Number of partitions of p=prime(n) into aliquant parts (i.e., parts that do not divide p, meaning any part except 1 and p).

The programs for A260798, there is no canonical definition to state claims against.
-/

/-! ## A260798.P11691190247464086489

`A083751(p?[comp[n²]])`
-/

namespace A260798.P11691190247464086489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A260798.P11691190247464086489

/-! ## A260798.P15354226687275241159

`A083751(A000040(n+1))`
-/

namespace A260798.P15354226687275241159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A000040 (n + 1)).toNat

end

end A260798.P15354226687275241159

/-! ## A260798.P18045635566479235661

`A083751(A006005(n+1))`
-/

namespace A260798.P18045635566479235661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A006005 (n + 1)).toNat

end

end A260798.P18045635566479235661

/-! ## A260798.P16718016180473762405

`A083751(A008578(n+2))`
-/

namespace A260798.P16718016180473762405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A008578 (n + 2)).toNat

end

end A260798.P16718016180473762405

/-! ## A260798.P13093721887305682514

`A083751(A075643(n+2))`
-/

namespace A260798.P13093721887305682514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A075643 (n + 2)).toNat

end

end A260798.P13093721887305682514

/-! ## A260798.P14787356586476679825

`A083751(A171525(n+2))`
-/

namespace A260798.P14787356586476679825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A171525 (n + 2)).toNat

end

end A260798.P14787356586476679825

/-! ## A260798.P15419950289490891696

`A083751(A182986(n+2))`
-/

namespace A260798.P15419950289490891696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A182986 (n + 2)).toNat

end

end A260798.P15419950289490891696

/-! ## A260798.P12014355694897433731

`A002865(Δ[A007504(n)])-1`
-/

namespace A260798.P12014355694897433731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (f1 (n + 1) - f1 n).toNat - 1

end

end A260798.P12014355694897433731

/-! ## A260798.P5195382564268149020

`A083751(record[A006530(n+2)])`
-/

namespace A260798.P5195382564268149020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P5195382564268149020

/-! ## A260798.P11508964349772322236

`A083751(record[A014963(n+2)])`
-/

namespace A260798.P11508964349772322236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P11508964349772322236

/-! ## A260798.P17611220646649276436

`A083751(record[A020639(n+2)])`
-/

namespace A260798.P17611220646649276436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P17611220646649276436

/-! ## A260798.P16892675854429253623

`A167928(record[A006530(n+2)])`
-/

namespace A260798.P16892675854429253623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P16892675854429253623

/-! ## A260798.P8761627386896466926

`A167928(record[A014963(n+2)])`
-/

namespace A260798.P8761627386896466926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P8761627386896466926

/-! ## A260798.P4704106820148329807

`A167928(record[A020639(n+2)])`
-/

namespace A260798.P4704106820148329807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P4704106820148329807

/-! ## A260798.P16874711671359038453

`A302698(record[A006530(n+2)])`
-/

namespace A260798.P16874711671359038453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P16874711671359038453

/-! ## A260798.P5742071685461015403

`A302698(record[A020639(n+2)])`
-/

namespace A260798.P5742071685461015403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260798.P5742071685461015403

/-! ## A260798.P4653017899945170911

`A002865(p?[A014681(n)])-1`
-/

namespace A260798.P4653017899945170911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A260798.P4653017899945170911

/-! ## A260798.P15518120527065948208

`A083751(A008864(n+1)-1)`
-/

namespace A260798.P15518120527065948208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A008864 (n + 1) - 1).toNat

end

end A260798.P15518120527065948208

/-! ## A260798.P15664876964309786829

`A083751(A175216(n+1)-1)`
-/

namespace A260798.P15664876964309786829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A175216 (n + 1) - 1).toNat

end

end A260798.P15664876964309786829

/-! ## A260798.P7330869426452667288

`A002865(eq[2, A005127(n)])-1`
-/

namespace A260798.P7330869426452667288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A260798.P7330869426452667288

