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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A194200: [sum{(k*e) : 1<=k<=n}], where [ ]=floor, ( )=fractional part.

The programs for A194200, there is no canonical definition to state claims against.
-/

/-! ## A194200.P3210060654363713673

`Δ[A194201(A028310(n))]`
-/

namespace A194200.P3210060654363713673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194200.P3210060654363713673

/-! ## A194200.P10180872962384541741

`Δ[A194201(A123108(2*n))]`
-/

namespace A194200.P10180872962384541741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194200.P10180872962384541741

/-! ## A194200.P15327098264610134944

`Δ[A194201(A000007(n)+n)]`
-/

namespace A194200.P15327098264610134944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194200.P15327098264610134944

/-! ## A194200.P557553289639820314

`A194201(n+1)-A194201(A028310(n))`
-/

namespace A194200.P557553289639820314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (n + 1) - A194201 (A028310 n).toNat

end

end A194200.P557553289639820314

/-! ## A194200.P2074560354620046851

`A194201(n+1)-A194201(A065033(2*n))`
-/

namespace A194200.P2074560354620046851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (n + 1) - A194201 (A065033 (2 * n)).toNat

end

end A194200.P2074560354620046851

/-! ## A194200.P7510009068954657745

`A194201(n+1)-A194201(A123108(2*n))`
-/

namespace A194200.P7510009068954657745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (n + 1) - A194201 (A123108 (2 * n)).toNat

end

end A194200.P7510009068954657745

/-! ## A194200.P6036514421325683391

`A194201(n+1)-A194201(A000007(n)+n)`
-/

namespace A194200.P6036514421325683391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (n + 1) - A194201 (A000007 n + (n : ℤ)).toNat

end

end A194200.P6036514421325683391

/-! ## A194200.P8896589217184675731

`A022843(∑[n+1])-∑[A022843(n+1)]`
-/

namespace A194200.P8896589217184675731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194200.P8896589217184675731

/-! ## A194200.P9257249471187079991

`Δ[A194201(A003056(A000124(n)))]`
-/

namespace A194200.P9257249471187079991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194201 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194200.P9257249471187079991

/-!
# A194201: Partial sums of A194200.

The programs for A194201, there is no canonical definition to state claims against.
-/

/-! ## A194201.P11133345918478994890

`∑[A194200(n+1)]`
-/

namespace A194201.P11133345918478994890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194201.P11133345918478994890

/-! ## A194201.P18077760138767799313

`A194200(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A194201.P18077760138767799313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194200 (n + 1) + a (A023443 n).toNat

end

end A194201.P18077760138767799313

/-! ## A194201.P764241318260701188

`A194200(n+1)+a(A000007(n)-1+n)` with `a(0)=0`
-/

namespace A194201.P764241318260701188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194200 (n + 1) + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A194201.P764241318260701188

/-! ## A194201.P1651072267179116511

`A000027(A194200(n+1)+a(n-1))` with `a(0)=0`
-/

namespace A194201.P1651072267179116511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A194200 (n + 1) + a (n - 1)).toNat

end

end A194201.P1651072267179116511

/-! ## A194201.P12027194512698426536

`A194200(n+1)-A001489(a(n-1))` with `a(0)=0`
-/

namespace A194201.P12027194512698426536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194200 (n + 1) - A001489 (a (n - 1)).toNat

end

end A194201.P12027194512698426536

/-! ## A194201.P12248669225769113797

`∑[A022843(∑[n+1])-∑[A022843(n+1)]]`
-/

namespace A194201.P12248669225769113797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194201.P12248669225769113797

/-!
# A194202: a(n) = [Sum_{k=1..n} (2k*e)], where [ ]=floor, ( )=fractional part.

The programs for A194202, there is no canonical definition to state claims against.
-/

/-! ## A194202.P17222232001604665223

`Δ[A194203(A065033(2*n))]`
-/

namespace A194202.P17222232001604665223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194202.P17222232001604665223

/-! ## A194202.P18379562284445648151

`Δ[A194203(A000007(n)+n)]`
-/

namespace A194202.P18379562284445648151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194202.P18379562284445648151

/-! ## A194202.P7501760913537128060

`Δ[A194203(A008619(A004273(n)))]`
-/

namespace A194202.P7501760913537128060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194202.P7501760913537128060

/-! ## A194202.P13668440156654667123

`Δ[A194203(A008619(A163985(n)))]`
-/

namespace A194202.P13668440156654667123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (A008619 (A163985 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194202.P13668440156654667123

/-! ## A194202.P15890309540235560750

`A194203(n+1)-A194203(A028310(n))`
-/

namespace A194202.P15890309540235560750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (n + 1) - A194203 (A028310 n).toNat

end

end A194202.P15890309540235560750

/-! ## A194202.P15579998797671839695

`A194203(n+1)-A194203(A065033(2*n))`
-/

namespace A194202.P15579998797671839695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (n + 1) - A194203 (A065033 (2 * n)).toNat

end

end A194202.P15579998797671839695

/-! ## A194202.P18273593500778982255

`A194203(n+1)-A194203(A123108(2*n))`
-/

namespace A194202.P18273593500778982255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (n + 1) - A194203 (A123108 (2 * n)).toNat

end

end A194202.P18273593500778982255

/-! ## A194202.P14210759628976831631

`A194203(n+1)-A194203(A000007(n)+n)`
-/

namespace A194202.P14210759628976831631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (n + 1) - A194203 (A000007 n + (n : ℤ)).toNat

end

end A194202.P14210759628976831631

/-! ## A194202.P338384227717881730

`Δ[A194203(A077028(A000124(n)))]`
-/

namespace A194202.P338384227717881730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (A077028 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194202.P338384227717881730

/-! ## A194202.P3906512711886747071

`∑[A195182(n+1)]-A195182(∑[n+1])`
-/

namespace A194202.P3906512711886747071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195182 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194202.P3906512711886747071

/-! ## A194202.P3897744018812059189

`A276853(∑[n+1])-∑[A276853(n+1)]`
-/

namespace A194202.P3897744018812059189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194202.P3897744018812059189

/-! ## A194202.P16223480421886743271

`Δ[A194203(A003056(A179865(n+1)))]`
-/

namespace A194202.P16223480421886743271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194203 (A003056 (A179865 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194202.P16223480421886743271

/-!
# A194203: Partial sums of A194202.

The programs for A194203, there is no canonical definition to state claims against.
-/

/-! ## A194203.P17073863353382316600

`∑[A194202(n+1)]`
-/

namespace A194203.P17073863353382316600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194203.P17073863353382316600

/-! ## A194203.P11764170316862940442

`∑[A276853(∑[n+1])-∑[A276853(n+1)]]`
-/

namespace A194203.P11764170316862940442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194203.P11764170316862940442

/-! ## A194203.P17184354684678956462

`∑[∑[A239972(n+1)%A060135(n)]]`
-/

namespace A194203.P17184354684678956462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239972 (n + 1)) (A060135 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194203.P17184354684678956462

/-! ## A194203.P6669316202062402931

`floor((A155212(n)-A345913(3*n+2))/2)`
-/

namespace A194203.P6669316202062402931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155212 n - A345913 (3 * n + 2) : ℚ) / 2⌋

end

end A194203.P6669316202062402931

/-! ## A194203.P16010458503160522960

`∑[∑[A286049(A269303(2*(n+1)))]]`
-/

namespace A194203.P16010458503160522960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (A269303 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194203.P16010458503160522960

/-!
# A194204: a(n) = [Sum_{k=1..n} (k*e/2)], where [ ]=floor, ( )=fractional part.

The programs for A194204, there is no canonical definition to state claims against.
-/

/-! ## A194204.P7877903609269382747

`Δ[A194205(n+1-n²%(n+1))]`
-/

namespace A194204.P7877903609269382747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (n + 1 - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P7877903609269382747

/-! ## A194204.P7979269510719846091

`Δ[A194205(A065033(2*n))]`
-/

namespace A194204.P7979269510719846091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P7979269510719846091

/-! ## A194204.P3976546218725754200

`Δ[A194205(A004275(n+1)-n)]`
-/

namespace A194204.P3976546218725754200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P3976546218725754200

/-! ## A194204.P4101002671310445683

`Δ[A194205(A008619(A004273(n)))]`
-/

namespace A194204.P4101002671310445683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P4101002671310445683

/-! ## A194204.P5507999580201959055

`Δ[A194205(A266285(A004275(n)))]`
-/

namespace A194204.P5507999580201959055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A266285 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P5507999580201959055

/-! ## A194204.P16390738933201465606

`Δ[A194205(A065033(n)+A004526(n))]`
-/

namespace A194204.P16390738933201465606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A065033 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P16390738933201465606

/-! ## A194204.P3819434010898052592

`A194205(n+1)-A194205(A065033(2*n))`
-/

namespace A194204.P3819434010898052592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (n + 1) - A194205 (A065033 (2 * n)).toNat

end

end A194204.P3819434010898052592

/-! ## A194204.P14692636200044149816

`A194205(n+1)-A194205(A065033(n)+A004526(n))`
-/

namespace A194204.P14692636200044149816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (n + 1) - A194205 (A065033 n + A004526 n).toNat

end

end A194204.P14692636200044149816

/-! ## A194204.P4378205302554650093

`Δ[A194205(A008621(A130824(n)))]`
-/

namespace A194204.P4378205302554650093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A008621 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P4378205302554650093

/-! ## A194204.P10263738337645231674

`Δ[A194205(A110655(A008574(n)))]`
-/

namespace A194204.P10263738337645231674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P10263738337645231674

/-! ## A194204.P6904550547128996100

`Δ[A194205(A003963(A008578(n+1)))]`
-/

namespace A194204.P6904550547128996100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A003963 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P6904550547128996100

/-! ## A194204.P4994161076118570284

`Δ[A194205(A336326(A161680(n)))]`
-/

namespace A194204.P4994161076118570284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A336326 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P4994161076118570284

/-! ## A194204.P8243731595068625563

`∑[A195124(n+1)]-A195124(∑[n+1])`
-/

namespace A194204.P8243731595068625563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195124 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195124 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194204.P8243731595068625563

/-! ## A194204.P3543122508981504342

`A279607(∑[n+1])-∑[A279607(n+1)]`
-/

namespace A194204.P3543122508981504342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194204.P3543122508981504342

/-! ## A194204.P4021340600633589200

`Δ[A194205(A003056(A000124(n)))]`
-/

namespace A194204.P4021340600633589200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194205 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194204.P4021340600633589200

/-!
# A194205: Partial sums of A194204.

The programs for A194205, there is no canonical definition to state claims against.
-/

/-! ## A194205.P15490165813796586311

`∑[A194204(n+1)]`
-/

namespace A194205.P15490165813796586311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194205.P15490165813796586311

/-! ## A194205.P9312796628139709973

`A235201(A235201(a(n-1)))+A194204(n+1)` with `a(0)=0`
-/

namespace A194205.P9312796628139709973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A235201 (A235201 (a (n - 1)).toNat).toNat + A194204 (n + 1)

end

end A194205.P9312796628139709973

/-! ## A194205.P7685447612524254231

`∑[∑[A164057(A099649(2*n+3))]]`
-/

namespace A194205.P7685447612524254231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164057 (A099649 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194205.P7685447612524254231

/-! ## A194205.P15027043063876231045

`∑[∑[A341346(A258435(n+2))]]`
-/

namespace A194205.P15027043063876231045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (A258435 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194205.P15027043063876231045

/-! ## A194205.P3165094940601539456

`A073719(A127419(n+1))`
-/

namespace A194205.P3165094940601539456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A127419 (n + 1)).toNat

end

end A194205.P3165094940601539456

/-!
# A194206: a(n) = [Sum_{k=1..n} (k*Pi)], where [ ]=floor, ( )=fractional part.

The programs for A194206, the canonical program `A194206.P16975159278172081792` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194206 has offset 1).

The definition of A194206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194206.P16975159278172081792

`floor(∑[π*(n+1)-floor(π*(n+1))])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194206

/-- `floor(∑[π*(n+1)-floor(π*(n+1))])` -/
def P16975159278172081792.Spec : Prop :=
  ∀ n, P16975159278172081792.a n = A194206 (n + 1)

theorem P16975159278172081792.correct : P16975159278172081792.Spec := by
  intro n
  simp only [A194206, Nat.add_sub_cancel]

end A194206

/-! ## A194206.P14729234937739000698

`Δ[A194207(A000007(n)+n)]`
-/

namespace A194206.P14729234937739000698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194206.P14729234937739000698

namespace A194206

/-- `Δ[A194207(A000007(n)+n)]` -/
def P14729234937739000698.Spec : Prop :=
  ∀ n, P14729234937739000698.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P9358993490983169189

`Δ[A194207(A004275(n+1)-n)]`
-/

namespace A194206.P9358993490983169189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194206.P9358993490983169189

namespace A194206

/-- `Δ[A194207(A004275(n+1)-n)]` -/
def P9358993490983169189.Spec : Prop :=
  ∀ n, P9358993490983169189.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P5475316920594479119

`Δ[A194207(A008619(A004275(n)))]`
-/

namespace A194206.P5475316920594479119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194206.P5475316920594479119

namespace A194206

/-- `Δ[A194207(A008619(A004275(n)))]` -/
def P5475316920594479119.Spec : Prop :=
  ∀ n, P5475316920594479119.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P13677796474774348202

`A194207(n+1)-A194207(A028310(n))`
-/

namespace A194206.P13677796474774348202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (n + 1) - A194207 (A028310 n).toNat

end

end A194206.P13677796474774348202

namespace A194206

/-- `A194207(n+1)-A194207(A028310(n))` -/
def P13677796474774348202.Spec : Prop :=
  ∀ n, P13677796474774348202.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P10908953529369287596

`A194207(n+1)-A194207(A065033(2*n))`
-/

namespace A194206.P10908953529369287596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (n + 1) - A194207 (A065033 (2 * n)).toNat

end

end A194206.P10908953529369287596

namespace A194206

/-- `A194207(n+1)-A194207(A065033(2*n))` -/
def P10908953529369287596.Spec : Prop :=
  ∀ n, P10908953529369287596.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P11504355617754487943

`A194207(n+1)-A194207(A000007(n)+n)`
-/

namespace A194206.P11504355617754487943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (n + 1) - A194207 (A000007 n + (n : ℤ)).toNat

end

end A194206.P11504355617754487943

namespace A194206

/-- `A194207(n+1)-A194207(A000007(n)+n)` -/
def P11504355617754487943.Spec : Prop :=
  ∀ n, P11504355617754487943.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P276575473734705850

`A194207(n+1)-A194207(A233583(n+1))`
-/

namespace A194206.P276575473734705850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (n + 1) - A194207 (A233583 (n + 1)).toNat

end

end A194206.P276575473734705850

namespace A194206

/-- `A194207(n+1)-A194207(A233583(n+1))` -/
def P276575473734705850.Spec : Prop :=
  ∀ n, P276575473734705850.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P5627824820413470942

`Δ[A194207(A233583(n+1))]`
-/

namespace A194206.P5627824820413470942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194206.P5627824820413470942

namespace A194206

/-- `Δ[A194207(A233583(n+1))]` -/
def P5627824820413470942.Spec : Prop :=
  ∀ n, P5627824820413470942.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P2569059313469725215

`A022844(∑[n+1])-∑[A022844(n+1)]`
-/

namespace A194206.P2569059313469725215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194206.P2569059313469725215

namespace A194206

/-- `A022844(∑[n+1])-∑[A022844(n+1)]` -/
def P2569059313469725215.Spec : Prop :=
  ∀ n, P2569059313469725215.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P11349028144416713467

`∑[A195125(n+1)]-A195125(∑[n+1])`
-/

namespace A194206.P11349028144416713467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195125 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195125 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194206.P11349028144416713467

namespace A194206

/-- `∑[A195125(n+1)]-A195125(∑[n+1])` -/
def P11349028144416713467.Spec : Prop :=
  ∀ n, P11349028144416713467.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P12761056198567079195

`A022844(∑[n]+n+1)%∑[A022844(n+1)]`
-/

namespace A194206.P12761056198567079195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022844 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194206.P12761056198567079195

namespace A194206

/-- `A022844(∑[n]+n+1)%∑[A022844(n+1)]` -/
def P12761056198567079195.Spec : Prop :=
  ∀ n, P12761056198567079195.a n = A194206 (n + 1)

end A194206

/-! ## A194206.P12504674295280046712

`Δ[A194207(A003056(A000124(n)))]`
-/

namespace A194206.P12504674295280046712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194207 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194206.P12504674295280046712

namespace A194206

/-- `Δ[A194207(A003056(A000124(n)))]` -/
def P12504674295280046712.Spec : Prop :=
  ∀ n, P12504674295280046712.a n = A194206 (n + 1)

end A194206

/-!
# A194207: Partial sums of A194206.

The programs for A194207, the canonical program `A194207.P1455496278063648179` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194207 has offset 1).

The definition of A194207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194207.P1455496278063648179

`∑[floor(∑[π*(n+1)-floor(π*(n+1))])]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194207

/-- `∑[floor(∑[π*(n+1)-floor(π*(n+1))])]` -/
def P1455496278063648179.Spec : Prop :=
  ∀ n, P1455496278063648179.a n = A194207 (n + 1)

theorem P1455496278063648179.correct : P1455496278063648179.Spec := by
  intro n
  simp only [A194207, Nat.add_sub_cancel]

end A194207

/-! ## A194207.P2401265287250723958

`2*∑[A194206(n+1)/2]`
-/

namespace A194207.P2401265287250723958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194206 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194207.P2401265287250723958

namespace A194207

/-- `2*∑[A194206(n+1)/2]` -/
def P2401265287250723958.Spec : Prop :=
  ∀ n, P2401265287250723958.a n = (A194207 (n + 1) : ℚ)

end A194207

/-! ## A194207.P17947314577114173867

`∑[A194206(n+1)]%A000124(n)`
-/

namespace A194207.P17947314577114173867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000124 n)

end

end A194207.P17947314577114173867

namespace A194207

/-- `∑[A194206(n+1)]%A000124(n)` -/
def P17947314577114173867.Spec : Prop :=
  ∀ n, P17947314577114173867.a n = A194207 (n + 1)

end A194207

/-! ## A194207.P12345062705827016336

`lcm(∑[A194206(n+1)], A033999(n))`
-/

namespace A194207.P12345062705827016336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A194207.P12345062705827016336

namespace A194207

/-- `lcm(∑[A194206(n+1)], A033999(n))` -/
def P12345062705827016336.Spec : Prop :=
  ∀ n, (P12345062705827016336.a n : ℤ) = A194207 (n + 1)

end A194207

/-! ## A194207.P4642551354018721916

`∑[A194206(n+2)]-A194206(n+2)`
-/

namespace A194207.P4642551354018721916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194206 (n + 2)

end

end A194207.P4642551354018721916

namespace A194207

/-- `∑[A194206(n+2)]-A194206(n+2)` -/
def P4642551354018721916.Spec : Prop :=
  ∀ n, P4642551354018721916.a n = A194207 (n + 1)

end A194207

/-! ## A194207.P14525407781782067044

`abs(A038608(∑[A194206(n+1)]))`
-/

namespace A194207.P14525407781782067044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A194207.P14525407781782067044

namespace A194207

/-- `abs(A038608(∑[A194206(n+1)]))` -/
def P14525407781782067044.Spec : Prop :=
  ∀ n, P14525407781782067044.a n = A194207 (n + 1)

end A194207

/-!
# A194208: a(n) = [Sum_{k=1..n} (k*Pi/2)], where [ ]=floor, ( )=fractional part.

The programs for A194208, there is no canonical definition to state claims against.
-/

/-! ## A194208.P4638848107961369154

`Δ[A194209(round(acot(n)+n))]`
-/

namespace A194208.P4638848107961369154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194209 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194208.P4638848107961369154

/-! ## A194208.P12163714266822885261

`Δ[A194209(round(sqrt(n²+1)))]`
-/

namespace A194208.P12163714266822885261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194209 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194208.P12163714266822885261

/-! ## A194208.P13990121527205521884

`abs(Δ[A194209(A028310(n))])`
-/

namespace A194208.P13990121527205521884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194209 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194208.P13990121527205521884

/-! ## A194208.P16647027175874072138

`A194209(n+1)-A194209(round(sqrt(n²+1)))`
-/

namespace A194208.P16647027175874072138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194209 (n + 1) - A194209 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A194208.P16647027175874072138

/-! ## A194208.P9035152876434187217

`Δ[A194209(A028310(n))]%A000032(n)`
-/

namespace A194208.P9035152876434187217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194209 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 n)

end

end A194208.P9035152876434187217

/-!
# A194209: Partial sums of A194208.

The programs for A194209, there is no canonical definition to state claims against.
-/

/-! ## A194209.P16924060591859697395

`∑[A194208(n+1)]`
-/

namespace A194209.P16924060591859697395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194209.P16924060591859697395

/-! ## A194209.P2795677392209588412

`∑[A057358(n)-A185284(n-∑[2^n]%(n+1))]`
-/

namespace A194209.P2795677392209588412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 n - A185284 (n - (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194209.P2795677392209588412

/-! ## A194209.P15717628640567425892

`∑[floor(4*n/7)%A275453(n)]`
-/

namespace A194209.P15717628640567425892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊4 * ((n : ℚ) / 7)⌋ (A275453 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194209.P15717628640567425892

/-! ## A194209.P6937395052877631677

`∑[A057358(n)%A004706(n)]`
-/

namespace A194209.P6937395052877631677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057358 n) (A004706 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194209.P6937395052877631677

/-! ## A194209.P1258823883715143952

`∑[A057358(n)]%A054352(2*(n+1))`
-/

namespace A194209.P1258823883715143952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A054352 (2 * (n + 1)))

end

end A194209.P1258823883715143952

/-!
# A194210: a(n) = floor(Sum_{k=1..n} <k*Pi/3>), where < > denotes fractional part.

The programs for A194210, there is no canonical definition to state claims against.
-/

/-! ## A194210.P11192282259391406138

`Δ[A194211(round(acot(n)+n))]`
-/

namespace A194210.P11192282259391406138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194210.P11192282259391406138

/-! ## A194210.P12618721906365660685

`Δ[A194211(abs(1-n)+1)]`
-/

namespace A194210.P12618721906365660685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194210.P12618721906365660685

/-! ## A194210.P8947876052585900150

`abs(Δ[A194211(A028310(n))])`
-/

namespace A194210.P8947876052585900150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194210.P8947876052585900150

/-! ## A194210.P17168971766020027537

`Δ[A194211(A065033(2*n))]%(n+1)`
-/

namespace A194210.P17168971766020027537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A194210.P17168971766020027537

/-! ## A194210.P4020617593405843216

`A194211(n+1)-A194211(A028310(n))`
-/

namespace A194210.P4020617593405843216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (n + 1) - A194211 (A028310 n).toNat

end

end A194210.P4020617593405843216

/-! ## A194210.P14323811583897618001

`A194211(n+1)-A194211(A065033(2*n))`
-/

namespace A194210.P14323811583897618001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (n + 1) - A194211 (A065033 (2 * n)).toNat

end

end A194210.P14323811583897618001

/-! ## A194210.P2593238112552163217

`Δ[A194211(A065033(2*n))%A100883(n)]`
-/

namespace A194210.P2593238112552163217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194211 (A065033 (2 * n)).toNat) (A100883 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194210.P2593238112552163217

/-! ## A194210.P16778189172043216351

`Δ[A194211(A028310(n))]%A000108(n)`
-/

namespace A194210.P16778189172043216351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194211 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000108 n)

end

end A194210.P16778189172043216351

/-!
# A194211: Partial sums of A194210.

The programs for A194211, there is no canonical definition to state claims against.
-/

/-! ## A194211.P4511731777434712508

`∑[A194210(n+1)]`
-/

namespace A194211.P4511731777434712508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194211.P4511731777434712508

/-! ## A194211.P5064175715038186665

`∑[∑[A189624(A025049(n))]]`
-/

namespace A194211.P5064175715038186665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A025049 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194211.P5064175715038186665

/-! ## A194211.P10670249055335177752

`∑[A301461(A356607(n))]`
-/

namespace A194211.P10670249055335177752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301461 (A356607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194211.P10670249055335177752

/-! ## A194211.P10074910533002854856

`∑[∑[A284878(A146269(n+1))]]`
-/

namespace A194211.P10074910533002854856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (A146269 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194211.P10074910533002854856

/-! ## A194211.P9768569244235785342

`∑[floor(A340603(3*n+4)/A057066(n+1))]`
-/

namespace A194211.P9768569244235785342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340603 (3 * n + 4) : ℚ) / (A057066 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194211.P9768569244235785342

/-!
# A194212: a(n) = floor(Sum_{k=1..n} <2*k*Pi>), where < > = fractional part.

The programs for A194212, there is no canonical definition to state claims against.
-/

/-! ## A194212.P13052630737428967540

`Δ[A194213(round(acot(n)+n))]`
-/

namespace A194212.P13052630737428967540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194213 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194212.P13052630737428967540

/-! ## A194212.P15667034852120901954

`Δ[A194213(abs(1-n)+1)]`
-/

namespace A194212.P15667034852120901954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194213 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194212.P15667034852120901954

/-! ## A194212.P17449710351356255094

`A194213(n+1)-A194213(round(sqrt(n²+1)))`
-/

namespace A194212.P17449710351356255094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194213 (n + 1) - A194213 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A194212.P17449710351356255094

/-! ## A194212.P14811023004514533557

`A108611(A090848(n)+A059169(n+3))`
-/

namespace A194212.P14811023004514533557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A090848 n + A059169 (n + 3)).toNat

end

end A194212.P14811023004514533557

/-! ## A194212.P1853446931499620146

`A108611(A329988(2*(n+1))-A329988(n+2))`
-/

namespace A194212.P1853446931499620146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A329988 (2 * (n + 1)) - A329988 (n + 2)).toNat

end

end A194212.P1853446931499620146

/-!
# A194213: Partial sums of A194212.

The programs for A194213, there is no canonical definition to state claims against.
-/

/-! ## A194213.P13466258234458592458

`∑[A194212(n+1)]`
-/

namespace A194213.P13466258234458592458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194213.P13466258234458592458

/-! ## A194213.P15523165647406476463

`A194212(C(n+1, n))+a(n-1)` with `a(0)=0`
-/

namespace A194213.P15523165647406476463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194212 (Nat.choose (n + 1) n) + a (n - 1)

end

end A194213.P15523165647406476463

/-! ## A194213.P8548921840210136839

`A194212(A002264(3*n+4))+a(n-1)` with `a(0)=0`
-/

namespace A194213.P8548921840210136839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194212 (A002264 (3 * n + 4)).toNat + a (n - 1)

end

end A194213.P8548921840210136839

/-! ## A194213.P11448102580731100197

`∑[A108611(A090848(n)+A059169(n+3))]`
-/

namespace A194213.P11448102580731100197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A090848 n + A059169 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194213.P11448102580731100197

/-! ## A194213.P13811479157250336723

`∑[A108611(A329988(2*(n+1))-A329988(n+2))]`
-/

namespace A194213.P13811479157250336723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A329988 (2 * (n + 1)) - A329988 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194213.P13811479157250336723

/-!
# A194214: a(n) = floor(Sum_{k=1..n} <2*k*Pi/3>), where < > = fractional part.

The programs for A194214, there is no canonical definition to state claims against.
-/

/-! ## A194214.P9234744343863644271

`Δ[A194215(round(acot(n)+n))]`
-/

namespace A194214.P9234744343863644271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P9234744343863644271

/-! ## A194214.P12040405497297372407

`Δ[A194215(A028310(n))]`
-/

namespace A194214.P12040405497297372407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P12040405497297372407

/-! ## A194214.P18412169068870674914

`Δ[A194215(A065033(2*n))]`
-/

namespace A194214.P18412169068870674914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P18412169068870674914

/-! ## A194214.P6710580329041371293

`Δ[A194215(A123108(2*n))]`
-/

namespace A194214.P6710580329041371293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P6710580329041371293

/-! ## A194214.P15405190700229006785

`Δ[A194215(A004277(n)-n)]`
-/

namespace A194214.P15405190700229006785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P15405190700229006785

/-! ## A194214.P15185657965053220474

`Δ[A194215(gcd(n, A008574(n)))]`
-/

namespace A194214.P15185657965053220474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P15185657965053220474

/-! ## A194214.P7723481076334780215

`Δ[A194215(A001281(A004277(n)))]`
-/

namespace A194214.P7723481076334780215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P7723481076334780215

/-! ## A194214.P18323219579914526769

`A194215(n+1)-A194215(A028310(n))`
-/

namespace A194214.P18323219579914526769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (n + 1) - A194215 (A028310 n).toNat

end

end A194214.P18323219579914526769

/-! ## A194214.P18433144866344550126

`A194215(n+1)-A194215(A233583(n+1))`
-/

namespace A194214.P18433144866344550126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (n + 1) - A194215 (A233583 (n + 1)).toNat

end

end A194214.P18433144866344550126

/-! ## A194214.P14368059005404552593

`Δ[A194215(A233583(n+1))]`
-/

namespace A194214.P14368059005404552593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P14368059005404552593

/-! ## A194214.P245516023306229979

`Δ[A194215(A137735(n²))]`
-/

namespace A194214.P245516023306229979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194215 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194214.P245516023306229979

/-!
# A194215: Partial sums of A194214.

The programs for A194215, there is no canonical definition to state claims against.
-/

/-! ## A194215.P10877603811027485778

`∑[A194214(n+1)]`
-/

namespace A194215.P10877603811027485778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194215.P10877603811027485778

/-! ## A194215.P3496811833050572341

`A194214(A002264(3*n+4))+a(n-1)` with `a(0)=0`
-/

namespace A194215.P3496811833050572341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194214 (A002264 (3 * n + 4)).toNat + a (n - 1)

end

end A194215.P3496811833050572341

/-! ## A194215.P8025832440860176159

`∑[∑[A189008(A001595(n))]]`
-/

namespace A194215.P8025832440860176159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A001595 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194215.P8025832440860176159

/-! ## A194215.P3817041720022519472

`∑[∑[A003849(A001371(n)+1)]]`
-/

namespace A194215.P3817041720022519472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A001371 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194215.P3817041720022519472

/-! ## A194215.P10377006883420696810

`∑[∑[A289112(A022095(n))]]`
-/

namespace A194215.P10377006883420696810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (A022095 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194215.P10377006883420696810

/-!
# A194217: a(n) = A104272(n)-A080359(n).

The programs for A194217, there is no canonical definition to state claims against.
-/

/-! ## A194217.P6432972532067812332

`A104272(n+1)-A080359(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194217.P6432972532067812332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A080359 (n + 1)

end

end A194217.P6432972532067812332

/-! ## A194217.P13599202674962029349

`A080361(n+1)+A104272(n+1)-A080360(n+1)`
-/

namespace A194217.P13599202674962029349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080361 (n + 1) + (A104272 (n + 1) - A080360 (n + 1))

end

end A194217.P13599202674962029349

/-! ## A194217.P7389405143439282268

`A000040(A179196(n+1))-A080359(n+1)`
-/

namespace A194217.P7389405143439282268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat - A080359 (n + 1)

end

end A194217.P7389405143439282268

/-! ## A194217.P16743918577944312872

`A047268(A084139(n)+1)-A080359(n+1)`
-/

namespace A194217.P16743918577944312872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A084139 n + 1).toNat - A080359 (n + 1)

end

end A194217.P16743918577944312872

/-! ## A194217.P17052355036044643389

`A194186(n+1)+A194184(n+1)`
-/

namespace A194217.P17052355036044643389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1) + A194184 (n + 1)

end

end A194217.P17052355036044643389

/-! ## A194217.P12042974603259026938

`A162996(n+1)-(A163160(n+1)+A080359(n+1))`
-/

namespace A194217.P12042974603259026938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - (A163160 (n + 1) + A080359 (n + 1))

end

end A194217.P12042974603259026938

/-! ## A194217.P7266642738767796271

`A194658(n+1)+A194659(n+1)-A080359(n+1)`
-/

namespace A194217.P7266642738767796271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194658 (n + 1) + (A194659 (n + 1) - A080359 (n + 1))

end

end A194217.P7266642738767796271

/-! ## A194217.P13697649879660564580

`A193507(n+1)+A194184(n+1)-A080359(n+1)`
-/

namespace A194217.P13697649879660564580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (n + 1) + (A194184 (n + 1) - A080359 (n + 1))

end

end A194217.P13697649879660564580

/-! ## A194217.P14279325334780878456

`A104272(n+1)+A194186(n+1)-A193507(n+1)`
-/

namespace A194217.P14279325334780878456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) + (A194186 (n + 1) - A193507 (n + 1))

end

end A194217.P14279325334780878456

/-!
# A194218: Left part of the square of the n-th Kaprekar number.

The programs for A194218, there is no canonical definition to state claims against.
-/

/-! ## A194218.P5614768249121719778

`A006886(n+1)-A194219(n+1)`
-/

namespace A194218.P5614768249121719778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1) - A194219 (n + 1)

end

end A194218.P5614768249121719778

/-! ## A194218.P17043816793538250420

`A006886(n+1)+A000007(n)-A316347(A006886(n+1))`
-/

namespace A194218.P17043816793538250420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1) + (A000007 n - A316347 (A006886 (n + 1)).toNat)

end

end A194218.P17043816793538250420

/-! ## A194218.P12071862569172888665

`A006886(n+1)-A316347(A006886(n+1)*A057427(n))`
-/

namespace A194218.P12071862569172888665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1) - A316347 (A006886 (n + 1) * A057427 n).toNat

end

end A194218.P12071862569172888665

/-! ## A194218.P17060833349001105957

`A006886(n+1)-A316347(A006886(n+1))%A026914(n)`
-/

namespace A194218.P17060833349001105957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1) - Int.tmod (A316347 (A006886 (n + 1)).toNat) (A026914 n)

end

end A194218.P17060833349001105957

/-! ## A194218.P2474896090620117031

`A006886(n+1)-A316347(A006886(n+1)%A108673(n))`
-/

namespace A194218.P2474896090620117031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1) - A316347 (Int.tmod (A006886 (n + 1)) (A108673 n)).toNat

end

end A194218.P2474896090620117031

/-!
# A194219: Right part of the square of the n-th Kaprekar number.

The programs for A194219, there is no canonical definition to state claims against.
-/

/-! ## A194219.P4437672100480044983

`A006886(n+1)-A194218(n+1)`
-/

namespace A194219.P4437672100480044983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1) - A194218 (n + 1)

end

end A194219.P4437672100480044983

/-! ## A194219.P17739100067012393

`A316347(ceil(sin(n)²)*A006886(n+1))`
-/

namespace A194219.P17739100067012393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (⌈Real.sin (n : ℝ) ^ 2⌉ * A006886 (n + 1)).toNat

end

end A194219.P17739100067012393

/-! ## A194219.P1646607447433625206

`A316347(A006886(n+1)-A000007(n))`
-/

namespace A194219.P1646607447433625206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (A006886 (n + 1) - A000007 n).toNat

end

end A194219.P1646607447433625206

/-! ## A194219.P16120884828464320667

`A316347(A006886(n+1)*A057427(n))`
-/

namespace A194219.P16120884828464320667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (A006886 (n + 1) * A057427 n).toNat

end

end A194219.P16120884828464320667

/-! ## A194219.P15685854191125908968

`A316347(A006886(n+1)%A008452(n))`
-/

namespace A194219.P15685854191125908968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (Int.tmod (A006886 (n + 1)) (A008452 n)).toNat

end

end A194219.P15685854191125908968

/-!
# A194220: a(n) = floor(Sum_{k=1..n} frac(k/4)).

The programs for A194220, the canonical program `A194220.P15120108526884439260` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194220 has offset 1).

The definition of A194220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194220.P15120108526884439260

`floor((n+2)/4)+floor((n+3)/4)-floor((n+7)/8)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194220

/-- `floor((n+2)/4)+floor((n+3)/4)-floor((n+7)/8)` -/
def P15120108526884439260.Spec : Prop :=
  ∀ n, P15120108526884439260.a n = A194220 (n + 1)

theorem P15120108526884439260.correct : P15120108526884439260.Spec := by
  intro n
  simp only [A194220, Nat.add_sub_cancel]

end A194220

/-! ## A194220.P5019041500627235463

`floor(∑[(n+1)%4/4])`
-/

namespace A194220.P5019041500627235463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 4 : ℕ) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194220.P5019041500627235463

namespace A194220

/-- `floor(∑[(n+1)%4/4])` -/
def P5019041500627235463.Spec : Prop :=
  ∀ n, P5019041500627235463.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P16074744917866756684

`floor(∑[and(3, n+1)]/4)`
-/

namespace A194220.P16074744917866756684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A194220.P16074744917866756684

namespace A194220

/-- `floor(∑[and(3, n+1)]/4)` -/
def P16074744917866756684.Spec : Prop :=
  ∀ n, P16074744917866756684.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P12037732779860717665

`∑[char[record[xor(n, and(6, n+3))]]]`
-/

namespace A194220.P12037732779860717665
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 6 (n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P12037732779860717665

namespace A194220

/-- `∑[char[record[xor(n, and(6, n+3))]]]` -/
def P12037732779860717665.Spec : Prop :=
  ∀ n, (P12037732779860717665.a n : ℤ) = A194220 (n + 1)

end A194220

/-! ## A194220.P15348375019485363111

`∑[char[a(n-3)+8]]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A194220.P15348375019485363111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6] fun n f2 =>
  f2 (n - 3) + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P15348375019485363111

namespace A194220

/-- `∑[char[a(n-3)+8]]` -/
def P15348375019485363111.Spec : Prop :=
  ∀ n, (P15348375019485363111.a n : ℤ) = A194220 (n + 1)

end A194220

/-! ## A194220.P11977100650381205373

`floor(∑[and(2, -n)^log2(3)]/4)`
-/

namespace A194220.P11977100650381205373
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 4⌋

end

end A194220.P11977100650381205373

namespace A194220

/-- `floor(∑[and(2, -n)^log2(3)]/4)` -/
def P11977100650381205373.Spec : Prop :=
  ∀ n, P11977100650381205373.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P4835926118269417457

`floor(∑[3-a(n-2)]/4)` with `a(0)=0, a(1)=3`
-/

namespace A194220.P4835926118269417457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A194220.P4835926118269417457

namespace A194220

/-- `floor(∑[3-a(n-2)]/4)` -/
def P4835926118269417457.Spec : Prop :=
  ∀ n, P4835926118269417457.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P14421392438567779700

`∑[char[comp[and(n, n-and(2, n+1))]]]`
-/

namespace A194220.P14421392438567779700
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - (Nat.land 2 (n + 1) : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P14421392438567779700

namespace A194220

/-- `∑[char[comp[and(n, n-and(2, n+1))]]]` -/
def P14421392438567779700.Spec : Prop :=
  ∀ n, (P14421392438567779700.a n : ℤ) = A194220 (n + 1)

end A194220

/-! ## A194220.P2151987507567091248

`floor(3*(n-a(n-2))/5)` with `a(0)=0, a(1)=0`
-/

namespace A194220.P2151987507567091248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊3 * (((n : ℤ) - a (n - 2) : ℚ) / 5)⌋

end

end A194220.P2151987507567091248

namespace A194220

/-- `floor(3*(n-a(n-2))/5)` -/
def P2151987507567091248.Spec : Prop :=
  ∀ n, P2151987507567091248.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P7949105756937879924

`∑[char[ogf((2+3x+x^2+2x^3)/(1-x-x^3+x^4))]]`
-/

namespace A194220.P7949105756937879924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1, 2] [1, -1, 0, -1, 1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P7949105756937879924

namespace A194220

/-- `∑[char[ogf((2+3x+x^2+2x^3)/(1-x-x^3+x^4))]]` -/
def P7949105756937879924.Spec : Prop :=
  ∀ n, (P7949105756937879924.a n : ℤ) = A194220 (n + 1)

end A194220

/-! ## A194220.P17645183019983096189

`∑[char[A047440(n+1)]]`
-/

namespace A194220.P17645183019983096189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P17645183019983096189

namespace A194220

/-- `∑[char[A047440(n+1)]]` -/
def P17645183019983096189.Spec : Prop :=
  ∀ n, (P17645183019983096189.a n : ℤ) = A194220 (n + 1)

end A194220

/-! ## A194220.P1438747146614221823

`A057353(∑[and(1, ∑[n])])`
-/

namespace A194220.P1438747146614221823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194220.P1438747146614221823

namespace A194220

/-- `A057353(∑[and(1, ∑[n])])` -/
def P1438747146614221823.Spec : Prop :=
  ∀ n, P1438747146614221823.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P2050716706576763850

`∑[∑[n]%A014709(n)]`
-/

namespace A194220.P2050716706576763850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A014709 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P2050716706576763850

namespace A194220

/-- `∑[∑[n]%A014709(n)]` -/
def P2050716706576763850.Spec : Prop :=
  ∀ n, P2050716706576763850.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P1243619462754956499

`∑[and(∑[n], A014707(n))]`
-/

namespace A194220.P1243619462754956499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A014707 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P1243619462754956499

namespace A194220

/-- `∑[and(∑[n], A014707(n))]` -/
def P1243619462754956499.Spec : Prop :=
  ∀ n, P1243619462754956499.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P9721577805237383837

`A057355(n-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A194220.P9721577805237383837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A057355 ((n : ℤ) - a (n - 2)).toNat

end

end A194220.P9721577805237383837

namespace A194220

/-- `A057355(n-a(n-2))` -/
def P9721577805237383837.Spec : Prop :=
  ∀ n, P9721577805237383837.a n = A194220 (n + 1)

end A194220

/-! ## A194220.P2881983952480131444

`∑[and(2, A214682(n+1))/2]`
-/

namespace A194220.P2881983952480131444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A214682 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P2881983952480131444

namespace A194220

/-- `∑[and(2, A214682(n+1))/2]` -/
def P2881983952480131444.Spec : Prop :=
  ∀ n, P2881983952480131444.a n = (A194220 (n + 1) : ℚ)

end A194220

/-! ## A194220.P15604887065857872064

`∑[and(∑[2*n], A099545(n+1))/2]`
-/

namespace A194220.P15604887065857872064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A099545 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P15604887065857872064

namespace A194220

/-- `∑[and(∑[2*n], A099545(n+1))/2]` -/
def P15604887065857872064.Spec : Prop :=
  ∀ n, P15604887065857872064.a n = (A194220 (n + 1) : ℚ)

end A194220

/-! ## A194220.P2603677996055733951

`∑[char[A047401(n+1)-and(2, n+2)-1]]`
-/

namespace A194220.P2603677996055733951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 1) - (Nat.land 2 (n + 2) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194220.P2603677996055733951

namespace A194220

/-- `∑[char[A047401(n+1)-and(2, n+2)-1]]` -/
def P2603677996055733951.Spec : Prop :=
  ∀ n, (P2603677996055733951.a n : ℤ) = A194220 (n + 1)

end A194220

/-! ## A194220.P7600112712937355799

`A057353(n-A004524(n))`
-/

namespace A194220.P7600112712937355799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) - A004524 n).toNat

end

end A194220.P7600112712937355799

namespace A194220

/-- `A057353(n-A004524(n))` -/
def P7600112712937355799.Spec : Prop :=
  ∀ n, P7600112712937355799.a n = A194220 (n + 1)

end A194220

/-!
# A194221: Partial sums of A194220.

The programs for A194221, the canonical program `A194221.P17463578553719629114` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194221 has offset 1).

The definition of A194221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194221.P17463578553719629114

`2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=11, a(8)=14, a(9)=17`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194221

/-- `2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` -/
def P17463578553719629114.Spec : Prop :=
  ∀ n, P17463578553719629114.a n = A194221 (n + 1)

theorem P17463578553719629114.correct : P17463578553719629114.Spec := by
  intro n
  simp only [A194221, Nat.add_sub_cancel]

end A194221

/-! ## A194221.P8267335868311739362

`∑[floor(∑[(n+1)%4/4])]`
-/

namespace A194221.P8267335868311739362
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 4 : ℕ) : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P8267335868311739362

namespace A194221

/-- `∑[floor(∑[(n+1)%4/4])]` -/
def P8267335868311739362.Spec : Prop :=
  ∀ n, P8267335868311739362.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P2466672754507690877

`∑[floor(∑[3-a(n-2)]/4)]` with `a(0)=0, a(1)=3`
-/

namespace A194221.P2466672754507690877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P2466672754507690877

namespace A194221

/-- `∑[floor(∑[3-a(n-2)]/4)]` -/
def P2466672754507690877.Spec : Prop :=
  ∀ n, P2466672754507690877.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P11541600608465936761

`∑[A194220(n+1)]`
-/

namespace A194221.P11541600608465936761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P11541600608465936761

namespace A194221

/-- `∑[A194220(n+1)]` -/
def P11541600608465936761.Spec : Prop :=
  ∀ n, P11541600608465936761.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P15686122345498721869

`∑[∑[char[A176895(n+2)+2*n]]]`
-/

namespace A194221.P15686122345498721869
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (n + 2) + (2 * n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P15686122345498721869

namespace A194221

/-- `∑[∑[char[A176895(n+2)+2*n]]]` -/
def P15686122345498721869.Spec : Prop :=
  ∀ n, (P15686122345498721869.a n : ℤ) = A194221 (n + 1)

end A194221

/-! ## A194221.P7200696448961681714

`∑[comp[A047359(2*(n+1))-n]-n]`
-/

namespace A194221.P7200696448961681714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047359 (2 * (n + 1)) - (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P7200696448961681714

namespace A194221

/-- `∑[comp[A047359(2*(n+1))-n]-n]` -/
def P7200696448961681714.Spec : Prop :=
  ∀ n, P7200696448961681714.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P10129251249550653557

`A033440(n)-A011848(n)`
-/

namespace A194221.P10129251249550653557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033440 n - A011848 n

end

end A194221.P10129251249550653557

namespace A194221

/-- `A033440(n)-A011848(n)` -/
def P10129251249550653557.Spec : Prop :=
  ∀ n, P10129251249550653557.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P13419805950582437205

`∑[A057353(n-A004524(n))]`
-/

namespace A194221.P13419805950582437205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) - A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P13419805950582437205

namespace A194221

/-- `∑[A057353(n-A004524(n))]` -/
def P13419805950582437205.Spec : Prop :=
  ∀ n, P13419805950582437205.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P3381220658968262612

`∑[∑[A014707(A078112(n+1))]]`
-/

namespace A194221.P3381220658968262612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A078112 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P3381220658968262612

namespace A194221

/-- `∑[∑[A014707(A078112(n+1))]]` -/
def P3381220658968262612.Spec : Prop :=
  ∀ n, P3381220658968262612.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P38224946692905809

`A039823(n+1)-A357745(n+1)`
-/

namespace A194221.P38224946692905809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1) - A357745 (n + 1)

end

end A194221.P38224946692905809

namespace A194221

/-- `A039823(n+1)-A357745(n+1)` -/
def P38224946692905809.Spec : Prop :=
  ∀ n, P38224946692905809.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P15843113471673809103

`A039823(n+1)-∪[A039823(n+1), A200975(n+1)]`
-/

namespace A194221.P15843113471673809103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A194221.P15843113471673809103

namespace A194221

/-- `A039823(n+1)-∪[A039823(n+1), A200975(n+1)]` -/
def P15843113471673809103.Spec : Prop :=
  ∀ n, P15843113471673809103.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P4049686131946547784

`∑[A057360(A140201(n+1))]`
-/

namespace A194221.P4049686131946547784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A140201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P4049686131946547784

namespace A194221

/-- `∑[A057360(A140201(n+1))]` -/
def P4049686131946547784.Spec : Prop :=
  ∀ n, P4049686131946547784.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P2043603674265658180

`∑[A057360(A201629(n+1))]`
-/

namespace A194221.P2043603674265658180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A201629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P2043603674265658180

namespace A194221

/-- `∑[A057360(A201629(n+1))]` -/
def P2043603674265658180.Spec : Prop :=
  ∀ n, P2043603674265658180.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P2842228236239759521

`∑[A300293(A071934(n+2))]`
-/

namespace A194221.P2842228236239759521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A071934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P2842228236239759521

namespace A194221

/-- `∑[A300293(A071934(n+2))]` -/
def P2842228236239759521.Spec : Prop :=
  ∀ n, P2842228236239759521.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P11302329855579434044

`∑[∑[A074590(A074590(n+2))]]`
-/

namespace A194221.P11302329855579434044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074590 (A074590 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P11302329855579434044

namespace A194221

/-- `∑[∑[A074590(A074590(n+2))]]` -/
def P11302329855579434044.Spec : Prop :=
  ∀ n, P11302329855579434044.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P1276082511388959480

`∑[A057353(A004523(A057353(n+2)))]`
-/

namespace A194221.P1276082511388959480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A004523 (A057353 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P1276082511388959480

namespace A194221

/-- `∑[A057353(A004523(A057353(n+2)))]` -/
def P1276082511388959480.Spec : Prop :=
  ∀ n, P1276082511388959480.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P1015927190666780053

`∑[A057353(A057353(n+1)-A002265(n+1))]`
-/

namespace A194221.P1015927190666780053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057353 (n + 1) - A002265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P1015927190666780053

namespace A194221

/-- `∑[A057353(A057353(n+1)-A002265(n+1))]` -/
def P1015927190666780053.Spec : Prop :=
  ∀ n, P1015927190666780053.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P1567212326656617483

`∑[A057353(A004524(n+2))]`
-/

namespace A194221.P1567212326656617483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A004524 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P1567212326656617483

namespace A194221

/-- `∑[A057353(A004524(n+2))]` -/
def P1567212326656617483.Spec : Prop :=
  ∀ n, P1567212326656617483.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P972765222292244308

`∑[A057355(A057361(n+2))]`
-/

namespace A194221.P972765222292244308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A057361 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P972765222292244308

namespace A194221

/-- `∑[A057355(A057361(n+2))]` -/
def P972765222292244308.Spec : Prop :=
  ∀ n, P972765222292244308.a n = A194221 (n + 1)

end A194221

/-! ## A194221.P3545428181999624564

`∑[∑[A131379(A322015(n)+1)]]`
-/

namespace A194221.P3545428181999624564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (A322015 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194221.P3545428181999624564

namespace A194221

/-- `∑[∑[A131379(A322015(n)+1)]]` -/
def P3545428181999624564.Spec : Prop :=
  ∀ n, P3545428181999624564.a n = A194221 (n + 1)

end A194221

/-!
# A194222: a(n) = floor(Sum_{k=1..n} frac(k/5)), where frac() = fractional part.

The programs for A194222, the canonical program `A194222.P2593178325038722984` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194222 has offset 1).

The definition of A194222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194222.P2593178325038722984

`floor((n+2)/5)+floor((n+3)/5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194222

/-- `floor((n+2)/5)+floor((n+3)/5)` -/
def P2593178325038722984.Spec : Prop :=
  ∀ n, P2593178325038722984.a n = A194222 (n + 1)

theorem P2593178325038722984.correct : P2593178325038722984.Spec := by
  intro n
  simp only [A194222, Nat.add_sub_cancel]

end A194222

/-! ## A194222.P6835279825095502849

`∑[C(n², 2)%5]`
-/

namespace A194222.P6835279825095502849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P6835279825095502849

namespace A194222

/-- `∑[C(n², 2)%5]` -/
def P6835279825095502849.Spec : Prop :=
  ∀ n, (P6835279825095502849.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P2898383785336595780

`∑[ceil(cos((n+3)%5))]`
-/

namespace A194222.P2898383785336595780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (((n + 3) % 5 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P2898383785336595780

namespace A194222

/-- `∑[ceil(cos((n+3)%5))]` -/
def P2898383785336595780.Spec : Prop :=
  ∀ n, P2898383785336595780.a n = A194222 (n + 1)

end A194222

/-! ## A194222.P15861474019757027223

`∑[((2*n)²%5)%2]`
-/

namespace A194222.P15861474019757027223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 % 5 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P15861474019757027223

namespace A194222

/-- `∑[((2*n)²%5)%2]` -/
def P15861474019757027223.Spec : Prop :=
  ∀ n, (P15861474019757027223.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P14393275592893157158

`∑[6%gcd(5, n²+1)]`
-/

namespace A194222.P14393275592893157158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 5 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P14393275592893157158

namespace A194222

/-- `∑[6%gcd(5, n²+1)]` -/
def P14393275592893157158.Spec : Prop :=
  ∀ n, (P14393275592893157158.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P17941195285777301767

`∑[floor((n+1)%5/3)]`
-/

namespace A194222.P17941195285777301767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) % 5 : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P17941195285777301767

namespace A194222

/-- `∑[floor((n+1)%5/3)]` -/
def P17941195285777301767.Spec : Prop :=
  ∀ n, P17941195285777301767.a n = A194222 (n + 1)

end A194222

/-! ## A194222.P12168440209534077556

`∑[round(2*n/5)%2]`
-/

namespace A194222.P12168440209534077556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P12168440209534077556

namespace A194222

/-- `∑[round(2*n/5)%2]` -/
def P12168440209534077556.Spec : Prop :=
  ∀ n, P12168440209534077556.a n = A194222 (n + 1)

end A194222

/-! ## A194222.P8003178410316400719

`∑[abs(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P8003178410316400719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P8003178410316400719

namespace A194222

/-- `∑[abs(a(n-5))]` -/
def P8003178410316400719.Spec : Prop :=
  ∀ n, (P8003178410316400719.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P18249760575419272642

`∑[a(n-5)²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P18249760575419272642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P18249760575419272642

namespace A194222

/-- `∑[a(n-5)²]` -/
def P18249760575419272642.Spec : Prop :=
  ∀ n, (P18249760575419272642.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P1026110275075683786

`∑[sqrt(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P1026110275075683786
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  Real.sqrt (f1 (n - 5))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P1026110275075683786

namespace A194222

/-- `∑[sqrt(a(n-5))]` -/
def P1026110275075683786.Spec : Prop :=
  ∀ n, P1026110275075683786.a n = (A194222 (n + 1) : ℝ)

end A194222

/-! ## A194222.P15313086092045132198

`∑[dr(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P15313086092045132198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 5) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P15313086092045132198

namespace A194222

/-- `∑[dr(a(n-5))]` -/
def P15313086092045132198.Spec : Prop :=
  ∀ n, (P15313086092045132198.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P9246226502329787476

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A194222.P9246226502329787476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P9246226502329787476

namespace A194222

/-- `∑[floor(a(n-5))]` -/
def P9246226502329787476.Spec : Prop :=
  ∀ n, (P9246226502329787476.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P3630059464037196038

`∑[ceil(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A194222.P3630059464037196038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P3630059464037196038

namespace A194222

/-- `∑[ceil(a(n-5))]` -/
def P3630059464037196038.Spec : Prop :=
  ∀ n, (P3630059464037196038.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P1426172950262738108

`∑[round(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`

`round` is left out, it is the identity on integers.
-/

namespace A194222.P1426172950262738108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P1426172950262738108

namespace A194222

/-- `∑[round(a(n-5))]` -/
def P1426172950262738108.Spec : Prop :=
  ∀ n, (P1426172950262738108.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P7586052767086264499

`∑[char[∑[∑[ogf((2+x+2x^2)/(1+x))]]]]`
-/

namespace A194222.P7586052767086264499
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P7586052767086264499

namespace A194222

/-- `∑[char[∑[∑[ogf((2+x+2x^2)/(1+x))]]]]` -/
def P7586052767086264499.Spec : Prop :=
  ∀ n, (P7586052767086264499.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P14283801338527376878

`∑[a(n-5)^3]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P14283801338527376878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P14283801338527376878

namespace A194222

/-- `∑[a(n-5)^3]` -/
def P14283801338527376878.Spec : Prop :=
  ∀ n, (P14283801338527376878.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P6147646998007988397

`∑[and(1, a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P6147646998007988397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  Nat.land 1 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P6147646998007988397

namespace A194222

/-- `∑[and(1, a(n-5))]` -/
def P6147646998007988397.Spec : Prop :=
  ∀ n, (P6147646998007988397.a n : ℤ) = A194222 (n + 1)

end A194222

/-! ## A194222.P4487591177051125299

`floor(2*(n-a(n-2))/3)` with `a(0)=0, a(1)=0`
-/

namespace A194222.P4487591177051125299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊2 * (((n : ℤ) - a (n - 2) : ℚ) / 3)⌋

end

end A194222.P4487591177051125299

namespace A194222

/-- `floor(2*(n-a(n-2))/3)` -/
def P4487591177051125299.Spec : Prop :=
  ∀ n, P4487591177051125299.a n = A194222 (n + 1)

end A194222

/-! ## A194222.P15178219646116697147

`floor(n-a(n-2)-n/5)` with `a(0)=0, a(1)=0`
-/

namespace A194222.P15178219646116697147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊((n : ℤ) - a (n - 2) : ℚ) - (n : ℚ) / 5⌋

end

end A194222.P15178219646116697147

namespace A194222

/-- `floor(n-a(n-2)-n/5)` -/
def P15178219646116697147.Spec : Prop :=
  ∀ n, P15178219646116697147.a n = A194222 (n + 1)

end A194222

/-! ## A194222.P10368558453088205552

`∑[a(n-5)-a(a(n-1))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A194222.P10368558453088205552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 5) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194222.P10368558453088205552

namespace A194222

/-- `∑[a(n-5)-a(a(n-1))]` -/
def P10368558453088205552.Spec : Prop :=
  ∀ n, P10368558453088205552.a n = A194222 (n + 1)

end A194222

/-!
# A194223: a(n) = [sum{(k/6) : 1<=k<=n}], where [ ]=floor, ( )=fractional part.

The programs for A194223, the canonical program `A194223.P18155221819998667682` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194223 has offset 1).

The definition of A194223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194223.P18155221819998667682

`floor(∑[(n+1)%6/6])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194223

/-- `floor(∑[(n+1)%6/6])` -/
def P18155221819998667682.Spec : Prop :=
  ∀ n, P18155221819998667682.a n = A194223 (n + 1)

theorem P18155221819998667682.correct : P18155221819998667682.Spec := by
  intro n
  simp only [A194223, Nat.add_sub_cancel]

end A194223

/-! ## A194223.P8606185227207134727

`A057361(A099479(n))`
-/

namespace A194223.P8606185227207134727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A099479 n).toNat

end

end A194223.P8606185227207134727

namespace A194223

/-- `A057361(A099479(n))` -/
def P8606185227207134727.Spec : Prop :=
  ∀ n, P8606185227207134727.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P6720480271323075374

`Δ[A194224(A123108(2*n))]`
-/

namespace A194223.P6720480271323075374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194224 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194223.P6720480271323075374

namespace A194223

/-- `Δ[A194224(A123108(2*n))]` -/
def P6720480271323075374.Spec : Prop :=
  ∀ n, P6720480271323075374.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P8679556670672947618

`A008615(gcd(2, n)+3*n-A137719(n+1))`
-/

namespace A194223.P8679556670672947618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((Nat.gcd 2 n + 3 * n : ℤ) - A137719 (n + 1)).toNat

end

end A194223.P8679556670672947618

namespace A194223

/-- `A008615(gcd(2, n)+3*n-A137719(n+1))` -/
def P8679556670672947618.Spec : Prop :=
  ∀ n, P8679556670672947618.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P14241547968106950027

`A008615(Δ[n²]+or(1, n)-A137719(n+1))`
-/

namespace A194223.P14241547968106950027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 1 n : ℤ) - A137719 (n + 1)).toNat

end

end A194223.P14241547968106950027

namespace A194223

/-- `A008615(Δ[n²]+or(1, n)-A137719(n+1))` -/
def P14241547968106950027.Spec : Prop :=
  ∀ n, P14241547968106950027.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P7174006238352868237

`A008615(comp[or(n, n²%3)]-A137719(n+1))`
-/

namespace A194223.P7174006238352868237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n ^ 2 % 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A137719 (n + 1)).toNat

end

end A194223.P7174006238352868237

namespace A194223

/-- `A008615(comp[or(n, n²%3)]-A137719(n+1))` -/
def P7174006238352868237.Spec : Prop :=
  ∀ n, P7174006238352868237.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P9968513097330455754

`A008615(and(3*n+2, -2)-A137719(n+1))`
-/

namespace A194223.P9968513097330455754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.land (3 * n + 2 : ℤ) (-2) - A137719 (n + 1)).toNat

end

end A194223.P9968513097330455754

namespace A194223

/-- `A008615(and(3*n+2, -2)-A137719(n+1))` -/
def P9968513097330455754.Spec : Prop :=
  ∀ n, P9968513097330455754.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P17427320934998572791

`A008615(ceil(or(3, 6*n)/2)-A137719(n+1))`
-/

namespace A194223.P17427320934998572791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (⌈(Nat.lor 3 (6 * n) : ℚ) / 2⌉ - A137719 (n + 1)).toNat

end

end A194223.P17427320934998572791

namespace A194223

/-- `A008615(ceil(or(3, 6*n)/2)-A137719(n+1))` -/
def P17427320934998572791.Spec : Prop :=
  ∀ n, P17427320934998572791.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P2676123360131342642

`A008615(comp[or(2, n)]+2+n-A137719(n+1))`
-/

namespace A194223.P2676123360131342642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n : ℤ) - A137719 (n + 1)).toNat

end

end A194223.P2676123360131342642

namespace A194223

/-- `A008615(comp[or(2, n)]+2+n-A137719(n+1))` -/
def P2676123360131342642.Spec : Prop :=
  ∀ n, P2676123360131342642.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P15648079972705082787

`A004526(A002264(∑[A010875(n+1)]))`
-/

namespace A194223.P15648079972705082787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A194223.P15648079972705082787

namespace A194223

/-- `A004526(A002264(∑[A010875(n+1)]))` -/
def P15648079972705082787.Spec : Prop :=
  ∀ n, P15648079972705082787.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P12754182026644839027

`A008615(A008615(n)+A131452(n)+n)`
-/

namespace A194223.P12754182026644839027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008615 n + (A131452 n + (n : ℤ))).toNat

end

end A194223.P12754182026644839027

namespace A194223

/-- `A008615(A008615(n)+A131452(n)+n)` -/
def P12754182026644839027.Spec : Prop :=
  ∀ n, P12754182026644839027.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P16161063990074604351

`A008615(A004772(n+1)+A008615(n)+n)`
-/

namespace A194223.P16161063990074604351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004772 (n + 1) + (A008615 n + (n : ℤ))).toNat

end

end A194223.P16161063990074604351

namespace A194223

/-- `A008615(A004772(n+1)+A008615(n)+n)` -/
def P16161063990074604351.Spec : Prop :=
  ∀ n, P16161063990074604351.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P11591169210706673981

`A008615(A063200(2*n+1)-A008615(n+1))`
-/

namespace A194223.P11591169210706673981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A063200 (2 * n + 1) - A008615 (n + 1)).toNat

end

end A194223.P11591169210706673981

namespace A194223

/-- `A008615(A063200(2*n+1)-A008615(n+1))` -/
def P11591169210706673981.Spec : Prop :=
  ∀ n, P11591169210706673981.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P5898537274485090008

`A152467(A130484(n+1))`
-/

namespace A194223.P5898537274485090008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A130484 (n + 1)).toNat

end

end A194223.P5898537274485090008

namespace A194223

/-- `A152467(A130484(n+1))` -/
def P5898537274485090008.Spec : Prop :=
  ∀ n, P5898537274485090008.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P10085830065859949022

`n-A008615(A136290(n)-A008619(n))`
-/

namespace A194223.P10085830065859949022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008615 (A136290 n - A008619 n).toNat

end

end A194223.P10085830065859949022

namespace A194223

/-- `n-A008615(A136290(n)-A008619(n))` -/
def P10085830065859949022.Spec : Prop :=
  ∀ n, P10085830065859949022.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P11713550431427260944

`A008615(A018838(4*n)-A008615(n+1))`
-/

namespace A194223.P11713550431427260944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A018838 (4 * n) - A008615 (n + 1)).toNat

end

end A194223.P11713550431427260944

namespace A194223

/-- `A008615(A018838(4*n)-A008615(n+1))` -/
def P11713550431427260944.Spec : Prop :=
  ∀ n, P11713550431427260944.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P18308654490188408977

`A008615(A285872(4*n)-A008615(n+1))`
-/

namespace A194223.P18308654490188408977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A285872 (4 * n) - A008615 (n + 1)).toNat

end

end A194223.P18308654490188408977

namespace A194223

/-- `A008615(A285872(4*n)-A008615(n+1))` -/
def P18308654490188408977.Spec : Prop :=
  ∀ n, P18308654490188408977.a n = A194223 (n + 1)

end A194223

/-! ## A194223.P8128911748992145838

`∑[A022003(A313611(2*n+1)+A313611(n+1))]`
-/

namespace A194223.P8128911748992145838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A313611 (2 * n + 1) + A313611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194223.P8128911748992145838

namespace A194223

/-- `∑[A022003(A313611(2*n+1)+A313611(n+1))]` -/
def P8128911748992145838.Spec : Prop :=
  ∀ n, P8128911748992145838.a n = A194223 (n + 1)

end A194223

/-!
# A194224: Partial sums of A194223.

The programs for A194224, the canonical program `A194224.P17918951864996603725` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194224 has offset 1).

The definition of A194224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194224.P17918951864996603725

`∑[floor(∑[(n+1)%6/6])]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194224

/-- `∑[floor(∑[(n+1)%6/6])]` -/
def P17918951864996603725.Spec : Prop :=
  ∀ n, P17918951864996603725.a n = A194224 (n + 1)

theorem P17918951864996603725.correct : P17918951864996603725.Spec := by
  intro n
  simp only [A194224, Nat.add_sub_cancel]

end A194224

/-! ## A194224.P2782138398009682153

`∑[A194223(n+1)]`
-/

namespace A194224.P2782138398009682153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194224.P2782138398009682153

namespace A194224

/-- `∑[A194223(n+1)]` -/
def P2782138398009682153.Spec : Prop :=
  ∀ n, P2782138398009682153.a n = A194224 (n + 1)

end A194224

/-! ## A194224.P10650776694460766376

`∑[A057361(A099479(n))]`
-/

namespace A194224.P10650776694460766376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A099479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194224.P10650776694460766376

namespace A194224

/-- `∑[A057361(A099479(n))]` -/
def P10650776694460766376.Spec : Prop :=
  ∀ n, P10650776694460766376.a n = A194224 (n + 1)

end A194224

/-! ## A194224.P2874826702340862116

`∑[A004526(A002264(∑[(n+1)%6]))]`
-/

namespace A194224.P2874826702340862116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002264 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194224.P2874826702340862116

namespace A194224

/-- `∑[A004526(A002264(∑[(n+1)%6]))]` -/
def P2874826702340862116.Spec : Prop :=
  ∀ n, P2874826702340862116.a n = A194224 (n + 1)

end A194224

/-! ## A194224.P10707983143814546854

`∑[n-A008615(A136290(n)-A008619(n))]`
-/

namespace A194224.P10707983143814546854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008615 (A136290 n - A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194224.P10707983143814546854

namespace A194224

/-- `∑[n-A008615(A136290(n)-A008619(n))]` -/
def P10707983143814546854.Spec : Prop :=
  ∀ n, P10707983143814546854.a n = A194224 (n + 1)

end A194224

/-!
# A194225: [sum{(k/7) : 1<=k<=n}], where [ ]=floor, ( )=fractional part.

The programs for A194225, the canonical program `A194225.P669404029356839290` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194225 has offset 1).

The definition of A194225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194225.P327393373926677081

`∑[ceil(cos(n%7+2))]`
-/

namespace A194225.P327393373926677081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((n % 7 + 2 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P327393373926677081

namespace A194225

/-- `∑[ceil(cos(n%7+2))]` -/
def P327393373926677081.Spec : Prop :=
  ∀ n, P327393373926677081.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P13506450456892871578

`∑[ceil(sin((n-2)%7))]`
-/

namespace A194225.P13506450456892871578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.tmod ((n : ℤ) - 2) 7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P13506450456892871578

namespace A194225

/-- `∑[ceil(sin((n-2)%7))]` -/
def P13506450456892871578.Spec : Prop :=
  ∀ n, P13506450456892871578.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P4260332177346068770

`∑[floor(atan(C(n, 2)%7))]`
-/

namespace A194225.P4260332177346068770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((Nat.choose n 2 % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P4260332177346068770

namespace A194225

/-- `∑[floor(atan(C(n, 2)%7))]` -/
def P4260332177346068770.Spec : Prop :=
  ∀ n, P4260332177346068770.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P669404029356839290

`∑[floor((n+1)%7/4)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194225

/-- `∑[floor((n+1)%7/4)]` -/
def P669404029356839290.Spec : Prop :=
  ∀ n, P669404029356839290.a n = A194225 (n + 1)

theorem P669404029356839290.correct : P669404029356839290.Spec := by
  intro n
  simp only [A194225, Nat.add_sub_cancel]

end A194225

/-! ## A194225.P22018740732812174

`∑[ceil(sin((n+5)%7))²]`
-/

namespace A194225.P22018740732812174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 5) % 7 : ℕ) : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P22018740732812174

namespace A194225

/-- `∑[ceil(sin((n+5)%7))²]` -/
def P22018740732812174.Spec : Prop :=
  ∀ n, P22018740732812174.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P4222999579774640756

`∑[floor(atan((∑[n]-n)%7))]`
-/

namespace A194225.P4222999579774640756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)) 7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P4222999579774640756

namespace A194225

/-- `∑[floor(atan((∑[n]-n)%7))]` -/
def P4222999579774640756.Spec : Prop :=
  ∀ n, P4222999579774640756.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P15753104783976697549

`∑[((2*(n+1))%7)%2]`
-/

namespace A194225.P15753104783976697549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 7 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P15753104783976697549

namespace A194225

/-- `∑[((2*(n+1))%7)%2]` -/
def P15753104783976697549.Spec : Prop :=
  ∀ n, (P15753104783976697549.a n : ℤ) = A194225 (n + 1)

end A194225

/-! ## A194225.P13927308127382731907

`∑[char[or(3, comp[4*n])+n]]`
-/

namespace A194225.P13927308127382731907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P13927308127382731907

namespace A194225

/-- `∑[char[or(3, comp[4*n])+n]]` -/
def P13927308127382731907.Spec : Prop :=
  ∀ n, (P13927308127382731907.a n : ℤ) = A194225 (n + 1)

end A194225

/-! ## A194225.P6169030188589574693

`∑[char[a(n-3)+7]]` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A194225.P6169030188589574693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5] fun n f2 =>
  f2 (n - 3) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P6169030188589574693

namespace A194225

/-- `∑[char[a(n-3)+7]]` -/
def P6169030188589574693.Spec : Prop :=
  ∀ n, (P6169030188589574693.a n : ℤ) = A194225 (n + 1)

end A194225

/-! ## A194225.P5748881542388547878

`∑[a(n-3)^a(n-4)-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A194225.P5748881542388547878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3) ^ (f1 (n - 4)) - f1 (n - 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P5748881542388547878

namespace A194225

/-- `∑[a(n-3)^a(n-4)-a(n-3)]` -/
def P5748881542388547878.Spec : Prop :=
  ∀ n, P5748881542388547878.a n = (A194225 (n + 1) : ℝ)

end A194225

/-! ## A194225.P13416518488417903261

`∑[char[A047364(n+1)]]`
-/

namespace A194225.P13416518488417903261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047364 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P13416518488417903261

namespace A194225

/-- `∑[char[A047364(n+1)]]` -/
def P13416518488417903261.Spec : Prop :=
  ∀ n, (P13416518488417903261.a n : ℤ) = A194225 (n + 1)

end A194225

/-! ## A194225.P10956389341842181684

`∑[1-A130657(n+1)]`
-/

namespace A194225.P10956389341842181684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A130657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P10956389341842181684

namespace A194225

/-- `∑[1-A130657(n+1)]` -/
def P10956389341842181684.Spec : Prop :=
  ∀ n, P10956389341842181684.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P1130858554889342250

`∑[char[A047360(n+1)+2]]`
-/

namespace A194225.P1130858554889342250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047360 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P1130858554889342250

namespace A194225

/-- `∑[char[A047360(n+1)+2]]` -/
def P1130858554889342250.Spec : Prop :=
  ∀ n, (P1130858554889342250.a n : ℤ) = A194225 (n + 1)

end A194225

/-! ## A194225.P2281050200277618417

`∑[A188512(2*(n+1))-1]`
-/

namespace A194225.P2281050200277618417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188512 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P2281050200277618417

namespace A194225

/-- `∑[A188512(2*(n+1))-1]` -/
def P2281050200277618417.Spec : Prop :=
  ∀ n, P2281050200277618417.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P16319617296626419339

`A093390(A074232(n+2))`
-/

namespace A194225.P16319617296626419339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A074232 (n + 2)).toNat

end

end A194225.P16319617296626419339

namespace A194225

/-- `A093390(A074232(n+2))` -/
def P16319617296626419339.Spec : Prop :=
  ∀ n, P16319617296626419339.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P10322444568815541508

`∑[∑[A238470(n)]-A238470(n)]`
-/

namespace A194225.P10322444568815541508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A238470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194225.P10322444568815541508

namespace A194225

/-- `∑[∑[A238470(n)]-A238470(n)]` -/
def P10322444568815541508.Spec : Prop :=
  ∀ n, P10322444568815541508.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P13062735554745789471

`A011867(n+2)-A174738(n+1)`
-/

namespace A194225.P13062735554745789471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (n + 2) - A174738 (n + 1)

end

end A194225.P13062735554745789471

namespace A194225

/-- `A011867(n+2)-A174738(n+1)` -/
def P13062735554745789471.Spec : Prop :=
  ∀ n, P13062735554745789471.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P3997659637497278123

`A242062(3*n)`
-/

namespace A194225.P3997659637497278123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (3 * n)

end

end A194225.P3997659637497278123

namespace A194225

/-- `A242062(3*n)` -/
def P3997659637497278123.Spec : Prop :=
  ∀ n, P3997659637497278123.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P10044244810917108740

`A008706(n)-A313487(n)`
-/

namespace A194225.P10044244810917108740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A313487 n

end

end A194225.P10044244810917108740

namespace A194225

/-- `A008706(n)-A313487(n)` -/
def P10044244810917108740.Spec : Prop :=
  ∀ n, P10044244810917108740.a n = A194225 (n + 1)

end A194225

/-! ## A194225.P8724688678177470514

`A008587(n)%A313487(n)`
-/

namespace A194225.P8724688678177470514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008587 n) (A313487 n)

end

end A194225.P8724688678177470514

namespace A194225

/-- `A008587(n)%A313487(n)` -/
def P8724688678177470514.Spec : Prop :=
  ∀ n, P8724688678177470514.a n = A194225 (n + 1)

end A194225

/-!
# A194226: Partial sums of A194225.

The programs for A194226, the canonical program `A194226.P9336418318356726811` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194226 has offset 1).

The definition of A194226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194226.P9689086130536021168

`∑[∑[ceil(cos(n%7+2))]]`
-/

namespace A194226.P9689086130536021168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((n % 7 + 2 : ℕ) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P9689086130536021168

namespace A194226

/-- `∑[∑[ceil(cos(n%7+2))]]` -/
def P9689086130536021168.Spec : Prop :=
  ∀ n, P9689086130536021168.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P8211959348467903669

`∑[∑[ceil(sin((n-2)%7))]]`
-/

namespace A194226.P8211959348467903669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.tmod ((n : ℤ) - 2) 7 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P8211959348467903669

namespace A194226

/-- `∑[∑[ceil(sin((n-2)%7))]]` -/
def P8211959348467903669.Spec : Prop :=
  ∀ n, P8211959348467903669.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P9336418318356726811

`∑[∑[floor((n+1)%7/4)]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194226

/-- `∑[∑[floor((n+1)%7/4)]]` -/
def P9336418318356726811.Spec : Prop :=
  ∀ n, P9336418318356726811.a n = A194226 (n + 1)

theorem P9336418318356726811.correct : P9336418318356726811.Spec := by
  intro n
  simp only [A194226, Nat.add_sub_cancel]

end A194226

/-! ## A194226.P15288434203576378342

`∑[∑[(∑[C(n, 3)]%7)%2]]`
-/

namespace A194226.P15288434203576378342
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 7 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P15288434203576378342

namespace A194226

/-- `∑[∑[(∑[C(n, 3)]%7)%2]]` -/
def P15288434203576378342.Spec : Prop :=
  ∀ n, (P15288434203576378342.a n : ℤ) = A194226 (n + 1)

end A194226

/-! ## A194226.P4288418664534246760

`∑[∑[ceil(sin((n+5)%7))²]]`
-/

namespace A194226.P4288418664534246760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 5) % 7 : ℕ) : ℝ)⌉ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P4288418664534246760

namespace A194226

/-- `∑[∑[ceil(sin((n+5)%7))²]]` -/
def P4288418664534246760.Spec : Prop :=
  ∀ n, P4288418664534246760.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P14489815753982614738

`∑[∑[((2*(n+1))%7)%2]]`
-/

namespace A194226.P14489815753982614738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 7 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P14489815753982614738

namespace A194226

/-- `∑[∑[((2*(n+1))%7)%2]]` -/
def P14489815753982614738.Spec : Prop :=
  ∀ n, (P14489815753982614738.a n : ℤ) = A194226 (n + 1)

end A194226

/-! ## A194226.P11646993375172730413

`∑[comp[∑[2*gcd(3, n)]-3]-n]`
-/

namespace A194226.P11646993375172730413
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P11646993375172730413

namespace A194226

/-- `∑[comp[∑[2*gcd(3, n)]-3]-n]` -/
def P11646993375172730413.Spec : Prop :=
  ∀ n, P11646993375172730413.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P3975423962333901487

`∑[∑[a(n-3)^a(n-4)-a(n-3)]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A194226.P3975423962333901487
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  f2 (n - 3) ^ (f2 (n - 4)) - f2 (n - 3)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P3975423962333901487

namespace A194226

/-- `∑[∑[a(n-3)^a(n-4)-a(n-3)]]` -/
def P3975423962333901487.Spec : Prop :=
  ∀ n, P3975423962333901487.a n = (A194226 (n + 1) : ℝ)

end A194226

/-! ## A194226.P6713795053284738931

`∑[A194225(n+1)]`
-/

namespace A194226.P6713795053284738931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P6713795053284738931

namespace A194226

/-- `∑[A194225(n+1)]` -/
def P6713795053284738931.Spec : Prop :=
  ∀ n, P6713795053284738931.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P14034999379773671155

`∑[A242062(3*n)]`
-/

namespace A194226.P14034999379773671155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194226.P14034999379773671155

namespace A194226

/-- `∑[A242062(3*n)]` -/
def P14034999379773671155.Spec : Prop :=
  ∀ n, P14034999379773671155.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P9742497356792506041

`A032766(A011860(n+1))`
-/

namespace A194226.P9742497356792506041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A011860 (n + 1)).toNat

end

end A194226.P9742497356792506041

namespace A194226

/-- `A032766(A011860(n+1))` -/
def P9742497356792506041.Spec : Prop :=
  ∀ n, P9742497356792506041.a n = A194226 (n + 1)

end A194226

/-! ## A194226.P14541654899726995837

`A057355(A187322(A057356(n²+n)))`
-/

namespace A194226.P14541654899726995837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A187322 (A057356 (n ^ 2 + n)).toNat).toNat

end

end A194226.P14541654899726995837

namespace A194226

/-- `A057355(A187322(A057356(n²+n)))` -/
def P14541654899726995837.Spec : Prop :=
  ∀ n, P14541654899726995837.a n = A194226 (n + 1)

end A194226

/-!
# A194227: [sum{(2k/7) : 1<=k<=n}], where [ ]=floor, ( )=fractional part.

The programs for A194227, the canonical program `A194227.P2758008193139708394` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194227 has offset 1).

The definition of A194227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3946 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194227.P13994908703972272042

`∑[floor(atan(∑[n²]%7))]`
-/

namespace A194227.P13994908703972272042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (((∑ j ∈ Finset.range (n + 1), f2 j) % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P13994908703972272042

namespace A194227

/-- `∑[floor(atan(∑[n²]%7))]` -/
def P13994908703972272042.Spec : Prop :=
  ∀ n, P13994908703972272042.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P2758008193139708394

`round(∑[(n+1)%7/7])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194227

/-- `round(∑[(n+1)%7/7])` -/
def P2758008193139708394.Spec : Prop :=
  ∀ n, P2758008193139708394.a n = A194227 (n + 1)

theorem P2758008193139708394.correct : P2758008193139708394.Spec := by
  intro n
  simp only [A194227, Nat.add_sub_cancel]

end A194227

/-! ## A194227.P9528405868881737846

`floor(∑[(n%7)%3/2])`
-/

namespace A194227.P9528405868881737846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 7 % 3 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194227.P9528405868881737846

namespace A194227

/-- `floor(∑[(n%7)%3/2])` -/
def P9528405868881737846.Spec : Prop :=
  ∀ n, P9528405868881737846.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P1716997193112801286

`∑[ceil(cos(((n+3)%7)²))]`
-/

namespace A194227.P1716997193112801286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((((n + 3) % 7) ^ 2 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P1716997193112801286

namespace A194227

/-- `∑[ceil(cos(((n+3)%7)²))]` -/
def P1716997193112801286.Spec : Prop :=
  ∀ n, P1716997193112801286.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P1389537101575731749

`∑[C((n+1)^3, 2)%7]`
-/

namespace A194227.P1389537101575731749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 3) 2 % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P1389537101575731749

namespace A194227

/-- `∑[C((n+1)^3, 2)%7]` -/
def P1389537101575731749.Spec : Prop :=
  ∀ n, (P1389537101575731749.a n : ℤ) = A194227 (n + 1)

end A194227

/-! ## A194227.P793209704051995821

`∑[(∑[∑[n]+6]%7)%2]`
-/

namespace A194227.P793209704051995821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 7 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P793209704051995821

namespace A194227

/-- `∑[(∑[∑[n]+6]%7)%2]` -/
def P793209704051995821.Spec : Prop :=
  ∀ n, (P793209704051995821.a n : ℤ) = A194227 (n + 1)

end A194227

/-! ## A194227.P12705269583736507002

`∑[char[a(n-3)+7]]` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A194227.P12705269583736507002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5] fun n f2 =>
  f2 (n - 3) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P12705269583736507002

namespace A194227

/-- `∑[char[a(n-3)+7]]` -/
def P12705269583736507002.Spec : Prop :=
  ∀ n, (P12705269583736507002.a n : ℤ) = A194227 (n + 1)

end A194227

/-! ## A194227.P738118251485748429

`∑[char[∑[ceil(a(n-3))]]]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A194227.P738118251485748429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 4] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P738118251485748429

namespace A194227

/-- `∑[char[∑[ceil(a(n-3))]]]` -/
def P738118251485748429.Spec : Prop :=
  ∀ n, (P738118251485748429.a n : ℤ) = A194227 (n + 1)

end A194227

/-! ## A194227.P16407189126119511640

`∑[char[ogf((2+2x+x^2+2x^3)/(1-x-x^3+x^4))]]`
-/

namespace A194227.P16407189126119511640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1, 2] [1, -1, 0, -1, 1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P16407189126119511640

namespace A194227

/-- `∑[char[ogf((2+2x+x^2+2x^3)/(1-x-x^3+x^4))]]` -/
def P16407189126119511640.Spec : Prop :=
  ∀ n, (P16407189126119511640.a n : ℤ) = A194227 (n + 1)

end A194227

/-! ## A194227.P4985710401764456652

`∑[1-xor(a(n-1), a(n-3))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A194227.P4985710401764456652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  1 - Int.xor (f1 (n - 1)) (f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P4985710401764456652

namespace A194227

/-- `∑[1-xor(a(n-1), a(n-3))]` -/
def P4985710401764456652.Spec : Prop :=
  ∀ n, P4985710401764456652.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P10764001565484958829

`∑[(1-(a(n-1)+a(n-3)))²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A194227.P10764001565484958829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (1 - (f1 (n - 1) + f1 (n - 3))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P10764001565484958829

namespace A194227

/-- `∑[(1-(a(n-1)+a(n-3)))²]` -/
def P10764001565484958829.Spec : Prop :=
  ∀ n, P10764001565484958829.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P11444434445535698644

`∑[1-(a(n-1)-a(n-3))²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A194227.P11444434445535698644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  1 - (f1 (n - 1) - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P11444434445535698644

namespace A194227

/-- `∑[1-(a(n-1)-a(n-3))²]` -/
def P11444434445535698644.Spec : Prop :=
  ∀ n, P11444434445535698644.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P17481618818560342753

`∑[char[A047378(n+1)]]`
-/

namespace A194227.P17481618818560342753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194227.P17481618818560342753

namespace A194227

/-- `∑[char[A047378(n+1)]]` -/
def P17481618818560342753.Spec : Prop :=
  ∀ n, (P17481618818560342753.a n : ℤ) = A194227 (n + 1)

end A194227

/-! ## A194227.P4361367768231911942

`A057353(A302255(n))`
-/

namespace A194227.P4361367768231911942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A302255 n).toNat

end

end A194227.P4361367768231911942

namespace A194227

/-- `A057353(A302255(n))` -/
def P4361367768231911942.Spec : Prop :=
  ∀ n, P4361367768231911942.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P16645799099568437056

`A026922(A083034(n+2))`
-/

namespace A194227.P16645799099568437056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A083034 (n + 2)).toNat

end

end A194227.P16645799099568437056

namespace A194227

/-- `A026922(A083034(n+2))` -/
def P16645799099568437056.Spec : Prop :=
  ∀ n, P16645799099568437056.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P3694977459319867740

`A057353(A057358(n+2))`
-/

namespace A194227.P3694977459319867740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057358 (n + 2)).toNat

end

end A194227.P3694977459319867740

namespace A194227

/-- `A057353(A057358(n+2))` -/
def P3694977459319867740.Spec : Prop :=
  ∀ n, P3694977459319867740.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P14503209880563351128

`A194220(A004776(n+2))`
-/

namespace A194227.P14503209880563351128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (A004776 (n + 2)).toNat

end

end A194227.P14503209880563351128

namespace A194227

/-- `A194220(A004776(n+2))` -/
def P14503209880563351128.Spec : Prop :=
  ∀ n, P14503209880563351128.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P7450819085210626279

`A194220(A047573(n+2))`
-/

namespace A194227.P7450819085210626279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (A047573 (n + 2)).toNat

end

end A194227.P7450819085210626279

namespace A194227

/-- `A194220(A047573(n+2))` -/
def P7450819085210626279.Spec : Prop :=
  ∀ n, P7450819085210626279.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P9166900718918133120

`A194220(A047588(n+2))`
-/

namespace A194227.P9166900718918133120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (A047588 (n + 2)).toNat

end

end A194227.P9166900718918133120

namespace A194227

/-- `A194220(A047588(n+2))` -/
def P9166900718918133120.Spec : Prop :=
  ∀ n, P9166900718918133120.a n = A194227 (n + 1)

end A194227

/-! ## A194227.P2990079838643776376

`A057357(n)+A011656(n)`
-/

namespace A194227.P2990079838643776376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n + A011656 n

end

end A194227.P2990079838643776376

namespace A194227

/-- `A057357(n)+A011656(n)` -/
def P2990079838643776376.Spec : Prop :=
  ∀ n, P2990079838643776376.a n = A194227 (n + 1)

end A194227

/-!
# A194228: Partial sums of A194227.

The programs for A194228, the canonical program `A194228.P7628926583409882594` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194228 has offset 1).

The definition of A194228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194228.P9028947511952219843

`∑[∑[floor(atan(∑[n²]%7))]]`
-/

namespace A194228.P9028947511952219843
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (((∑ j ∈ Finset.range (n + 1), f3 j) % 7 : ℕ) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P9028947511952219843

namespace A194228

/-- `∑[∑[floor(atan(∑[n²]%7))]]` -/
def P9028947511952219843.Spec : Prop :=
  ∀ n, P9028947511952219843.a n = A194228 (n + 1)

end A194228

/-! ## A194228.P7628926583409882594

`∑[round(∑[(n+1)%7/7])]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194228

/-- `∑[round(∑[(n+1)%7/7])]` -/
def P7628926583409882594.Spec : Prop :=
  ∀ n, P7628926583409882594.a n = A194228 (n + 1)

theorem P7628926583409882594.correct : P7628926583409882594.Spec := by
  intro n
  simp only [A194228, Nat.add_sub_cancel]

end A194228

/-! ## A194228.P18053130840992845153

`∑[floor(∑[(n%7)%3/2])]`
-/

namespace A194228.P18053130840992845153
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 7 % 3 : ℕ) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P18053130840992845153

namespace A194228

/-- `∑[floor(∑[(n%7)%3/2])]` -/
def P18053130840992845153.Spec : Prop :=
  ∀ n, P18053130840992845153.a n = A194228 (n + 1)

end A194228

/-! ## A194228.P5886323034207494449

`∑[∑[ceil(cos(((n+3)%7)²))]]`
-/

namespace A194228.P5886323034207494449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((((n + 3) % 7) ^ 2 : ℕ) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P5886323034207494449

namespace A194228

/-- `∑[∑[ceil(cos(((n+3)%7)²))]]` -/
def P5886323034207494449.Spec : Prop :=
  ∀ n, P5886323034207494449.a n = A194228 (n + 1)

end A194228

/-! ## A194228.P14770310218248890146

`∑[∑[C((n+1)^3, 2)%7]]`
-/

namespace A194228.P14770310218248890146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 3) 2 % 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P14770310218248890146

namespace A194228

/-- `∑[∑[C((n+1)^3, 2)%7]]` -/
def P14770310218248890146.Spec : Prop :=
  ∀ n, (P14770310218248890146.a n : ℤ) = A194228 (n + 1)

end A194228

/-! ## A194228.P5916727694662180660

`∑[∑[(∑[∑[n]+6]%7)%2]]`
-/

namespace A194228.P5916727694662180660
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 7 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P5916727694662180660

namespace A194228

/-- `∑[∑[(∑[∑[n]+6]%7)%2]]` -/
def P5916727694662180660.Spec : Prop :=
  ∀ n, (P5916727694662180660.a n : ℤ) = A194228 (n + 1)

end A194228

/-! ## A194228.P13571287199096253433

`∑[∑[1-xor(a(n-1), a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A194228.P13571287199096253433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  1 - Int.xor (f2 (n - 1)) (f2 (n - 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P13571287199096253433

namespace A194228

/-- `∑[∑[1-xor(a(n-1), a(n-3))]]` -/
def P13571287199096253433.Spec : Prop :=
  ∀ n, P13571287199096253433.a n = A194228 (n + 1)

end A194228

/-! ## A194228.P15173550709171101577

`∑[∑[(1-(a(n-1)+a(n-3)))²]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A194228.P15173550709171101577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  (1 - (f2 (n - 1) + f2 (n - 3))) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P15173550709171101577

namespace A194228

/-- `∑[∑[(1-(a(n-1)+a(n-3)))²]]` -/
def P15173550709171101577.Spec : Prop :=
  ∀ n, P15173550709171101577.a n = A194228 (n + 1)

end A194228

/-! ## A194228.P7428126552346170668

`∑[A194227(n+1)]`
-/

namespace A194228.P7428126552346170668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194228.P7428126552346170668

namespace A194228

/-- `∑[A194227(n+1)]` -/
def P7428126552346170668.Spec : Prop :=
  ∀ n, P7428126552346170668.a n = A194228 (n + 1)

end A194228

/-!
# A194229: Partial sums of A057357.

The programs for A194229, the canonical program `A194229.P9434295507857033286` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194229 has offset 1).

The definition of A194229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194229.P9434295507857033286

`floor(((n+1)²+n+1)*3/14)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194229

/-- `floor(((n+1)²+n+1)*3/14)` -/
def P9434295507857033286.Spec : Prop :=
  ∀ n, P9434295507857033286.a n = A194229 (n + 1)

theorem P9434295507857033286.correct : P9434295507857033286.Spec := by
  intro n
  simp only [A194229, Nat.add_sub_cancel]

end A194229

/-! ## A194229.P14524404998643218816

`∑[∑[(n%7)%2]]%(n²+1)`
-/

namespace A194229.P14524404998643218816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n ^ 2 + 1)

end

end A194229.P14524404998643218816

namespace A194229

/-- `∑[∑[(n%7)%2]]%(n²+1)` -/
def P14524404998643218816.Spec : Prop :=
  ∀ n, (P14524404998643218816.a n : ℤ) = A194229 (n + 1)

end A194229

/-! ## A194229.P16731586963494751552

`a(n-1)-floor(n/(2/3-3))` with `a(0)=0`
-/

namespace A194229.P16731586963494751552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(n : ℚ) / ((2 : ℚ) / 3 - 3)⌋

end

end A194229.P16731586963494751552

namespace A194229

/-- `a(n-1)-floor(n/(2/3-3))` -/
def P16731586963494751552.Spec : Prop :=
  ∀ n, P16731586963494751552.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P773478148720740748

`round(A140091(n)/7)`
-/

namespace A194229.P773478148720740748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140091 n : ℚ) / 7)

end

end A194229.P773478148720740748

namespace A194229

/-- `round(A140091(n)/7)` -/
def P773478148720740748.Spec : Prop :=
  ∀ n, P773478148720740748.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P9827201054974929836

`∑[n-A057358(n)]`
-/

namespace A194229.P9827201054974929836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194229.P9827201054974929836

namespace A194229

/-- `∑[n-A057358(n)]` -/
def P9827201054974929836.Spec : Prop :=
  ∀ n, P9827201054974929836.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P14495060257881850700

`round(A133694(n+1)/7)`
-/

namespace A194229.P14495060257881850700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133694 (n + 1) : ℚ) / 7)

end

end A194229.P14495060257881850700

namespace A194229

/-- `round(A133694(n+1)/7)` -/
def P14495060257881850700.Spec : Prop :=
  ∀ n, P14495060257881850700.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P1627900313110114722

`A145569(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A194229.P1627900313110114722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A145569 n + a (n - 2)

end

end A194229.P1627900313110114722

namespace A194229

/-- `A145569(n)+a(n-2)` -/
def P1627900313110114722.Spec : Prop :=
  ∀ n, P1627900313110114722.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P2125409945749711928

`A008619(n)²-A008800(n)`
-/

namespace A194229.P2125409945749711928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A008800 n

end

end A194229.P2125409945749711928

namespace A194229

/-- `A008619(n)²-A008800(n)` -/
def P2125409945749711928.Spec : Prop :=
  ∀ n, P2125409945749711928.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P5692209715344230599

`A087811(n+1)-A025764(n)`
-/

namespace A194229.P5692209715344230599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A025764 n

end

end A194229.P5692209715344230599

namespace A194229

/-- `A087811(n+1)-A025764(n)` -/
def P5692209715344230599.Spec : Prop :=
  ∀ n, P5692209715344230599.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P18213760715670522549

`A033439(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A194229.P18213760715670522549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033439 (n + 1) - a (n - 1)

end

end A194229.P18213760715670522549

namespace A194229

/-- `A033439(n+1)-a(n-1)` -/
def P18213760715670522549.Spec : Prop :=
  ∀ n, P18213760715670522549.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P12648199273898939097

`∑[A004526(A145569(n+1))]%∑[2*(n+1)]`
-/

namespace A194229.P12648199273898939097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A145569 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194229.P12648199273898939097

namespace A194229

/-- `∑[A004526(A145569(n+1))]%∑[2*(n+1)]` -/
def P12648199273898939097.Spec : Prop :=
  ∀ n, P12648199273898939097.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P6416834642228702406

`∑[A057357(n+2)]`
-/

namespace A194229.P6416834642228702406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194229.P6416834642228702406

namespace A194229

/-- `∑[A057357(n+2)]` -/
def P6416834642228702406.Spec : Prop :=
  ∀ n, P6416834642228702406.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P6446247284826921057

`∑[n]-∑[A057356(A005843(n))]`
-/

namespace A194229.P6446247284826921057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194229.P6446247284826921057

namespace A194229

/-- `∑[n]-∑[A057356(A005843(n))]` -/
def P6446247284826921057.Spec : Prop :=
  ∀ n, P6446247284826921057.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P10844275993099907027

`A194226(n+1)+A194225(n+3)`
-/

namespace A194229.P10844275993099907027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194226 (n + 1) + A194225 (n + 3)

end

end A194229.P10844275993099907027

namespace A194229

/-- `A194226(n+1)+A194225(n+3)` -/
def P10844275993099907027.Spec : Prop :=
  ∀ n, P10844275993099907027.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P17783903501178626688

`A008625(3*(n+1))-1`
-/

namespace A194229.P17783903501178626688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 (3 * (n + 1)) - 1

end

end A194229.P17783903501178626688

namespace A194229

/-- `A008625(3*(n+1))-1` -/
def P17783903501178626688.Spec : Prop :=
  ∀ n, P17783903501178626688.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P14941520837699356260

`A025768(3*(n+2))-(n+3)`
-/

namespace A194229.P14941520837699356260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025768 (3 * (n + 2)) - (n + 3 : ℤ)

end

end A194229.P14941520837699356260

namespace A194229

/-- `A025768(3*(n+2))-(n+3)` -/
def P14941520837699356260.Spec : Prop :=
  ∀ n, P14941520837699356260.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P13206092941902241716

`A025813(A016969(n))`
-/

namespace A194229.P13206092941902241716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025813 (A016969 n).toNat

end

end A194229.P13206092941902241716

namespace A194229

/-- `A025813(A016969(n))` -/
def P13206092941902241716.Spec : Prop :=
  ∀ n, P13206092941902241716.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P7130296963677162056

`A025813(A101328(n+3))`
-/

namespace A194229.P7130296963677162056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025813 (A101328 (n + 3)).toNat

end

end A194229.P7130296963677162056

namespace A194229

/-- `A025813(A101328(n+3))` -/
def P7130296963677162056.Spec : Prop :=
  ∀ n, P7130296963677162056.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P11074799404092092052

`A025846(A122709(n))`
-/

namespace A194229.P11074799404092092052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025846 (A122709 n).toNat

end

end A194229.P11074799404092092052

namespace A194229

/-- `A025846(A122709(n))` -/
def P11074799404092092052.Spec : Prop :=
  ∀ n, P11074799404092092052.a n = A194229 (n + 1)

end A194229

/-! ## A194229.P2584084704535598265

`A025846(A017209(n))`
-/

namespace A194229.P2584084704535598265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025846 (A017209 n).toNat

end

end A194229.P2584084704535598265

namespace A194229

/-- `A025846(A017209(n))` -/
def P2584084704535598265.Spec : Prop :=
  ∀ n, P2584084704535598265.a n = A194229 (n + 1)

end A194229

/-!
# A194230: Least k such that the sum of the distinct prime divisors of k equals m^n for some m > 1.

The programs for A194230, there is no canonical definition to state claims against.
-/

/-! ## A194230.P16520894641309492962

`A056240(A031217(n+1)^(n+1))`
-/

namespace A194230.P16520894641309492962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A031217 (n + 1) ^ (n + 1)).toNat

end

end A194230.P16520894641309492962

/-! ## A194230.P972862544872284498

`A056240(A056608(3*n+1)^(n+1))`
-/

namespace A194230.P972862544872284498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A056608 (3 * n + 1) ^ (n + 1)).toNat

end

end A194230.P972862544872284498

/-! ## A194230.P14234010759637047460

`A056240(A194330(2*n+3)^(n+1))`
-/

namespace A194230.P14234010759637047460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A194330 (2 * n + 3) ^ (n + 1)).toNat

end

end A194230.P14234010759637047460

/-! ## A194230.P1273860595348336288

`A056240(p?[A008441(3*(n+1))]^(n+1))`
-/

namespace A194230.P1273860595348336288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ (n + 1)).toNat

end

end A194230.P1273860595348336288

/-!
# A194231: Numbers k such that at least one of k and k+2 is composite, while for every b coprime to k*(k+2), b^(k-1) == 1 (mod k) and b^(k+1) == 1 (mod k+2).

The programs for A194231, there is no canonical definition to state claims against.
-/

/-! ## A194231.P3160120701494314386

`∪[A272754(n+1), A290692(n+1)]`
-/

namespace A194231.P3160120701494314386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194231.P3160120701494314386

/-! ## A194231.P2133757822931944993

`A135437(n+1)-A000122(A135491(n))`
-/

namespace A194231.P2133757822931944993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1) - A000122 (A135491 n).toNat

end

end A194231.P2133757822931944993

/-! ## A194231.P3068582631429771046

`A135437(n+1)-A000122(A061978(n+1))`
-/

namespace A194231.P3068582631429771046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1) - A000122 (A061978 (n + 1)).toNat

end

end A194231.P3068582631429771046

/-! ## A194231.P12048331250034747630

`A135437(n+1)-A000122(A076264(n))`
-/

namespace A194231.P12048331250034747630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1) - A000122 (A076264 n).toNat

end

end A194231.P12048331250034747630

/-!
# A194232: Number of n-digit Kaprekar numbers (A006886).

The programs for A194232, there is no canonical definition to state claims against.
-/

/-! ## A194232.P16844921234053426471

`Δ[A193992(A028310(n))%A006886(n+1)]`
-/

namespace A194232.P16844921234053426471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193992 (A028310 n).toNat) (A006886 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194232.P16844921234053426471

/-!
# A194233: Smallest number greater than n with exactly the same digits as n in decimal representation, a(n)=10*n if no such number exists.

The programs for A194233, there is no canonical definition to state claims against.
-/

/-! ## A194233.P3554474538556593622

`A004186(A360443(n+1))`
-/

namespace A194233.P3554474538556593622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A360443 (n + 1)).toNat

end

end A194233.P3554474538556593622

/-! ## A194233.P17937163014797381708

`A267759(A337919(n+1))`
-/

namespace A194233.P17937163014797381708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267759 (A337919 (n + 1)).toNat

end

end A194233.P17937163014797381708

/-! ## A194233.P6404868037170056518

`A056964(A132141(n+6))-A000005(A000079(n))`
-/

namespace A194233.P6404868037170056518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A132141 (n + 6)).toNat - A000005 (A000079 n).toNat

end

end A194233.P6404868037170056518

/-!
# A194234: Elements of A196736 which are not prime powers (A000961).

The programs for A194234, there is no canonical definition to state claims against.
-/

/-! ## A194234.P13686943119674220852

`∪[A053343(n+1), A194284(n+1)]`
-/

namespace A194234.P13686943119674220852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194234.P13686943119674220852

/-! ## A194234.P13589399278863844139

`filter[A196736(n+1), A143731(#)]`
-/

namespace A194234.P13589399278863844139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A194234.P13589399278863844139

/-! ## A194234.P14715780283867902979

`filter[A196736(n+1), A215480(#)]`
-/

namespace A194234.P14715780283867902979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A194234.P14715780283867902979

/-! ## A194234.P17152792119149341624

`∩[A007774(n+1), A196736(n+1)]`
-/

namespace A194234.P17152792119149341624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194234.P17152792119149341624

/-! ## A194234.P7824223190784178119

`∩[A024619(n+1), A196736(n+1)]`
-/

namespace A194234.P7824223190784178119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194234.P7824223190784178119

/-!
# A194235: a(n) = [Sum_{k=1..n} (k/8)], where [ ]=floor, ( )=fractional part.

The programs for A194235, the canonical program `A194235.P4876408128971099583` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194235 has offset 1).

The definition of A194235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194235.P4876408128971099583

`floor(∑[(n+1)%8/8])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194235

/-- `floor(∑[(n+1)%8/8])` -/
def P4876408128971099583.Spec : Prop :=
  ∀ n, P4876408128971099583.a n = A194235 (n + 1)

theorem P4876408128971099583.correct : P4876408128971099583.Spec := by
  intro n
  simp only [A194235, Nat.add_sub_cancel]

end A194235

/-! ## A194235.P5123890969990933017

`floor(∑[and(7, n+1)/8])`
-/

namespace A194235.P5123890969990933017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 7 (n + 1) : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A194235.P5123890969990933017

namespace A194235

/-- `floor(∑[and(7, n+1)/8])` -/
def P5123890969990933017.Spec : Prop :=
  ∀ n, P5123890969990933017.a n = A194235 (n + 1)

end A194235

/-! ## A194235.P13311296585793154092

`Δ[A194236(n-n²%(n+1)+1)]`
-/

namespace A194235.P13311296585793154092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194236 ((n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194235.P13311296585793154092

namespace A194235

/-- `Δ[A194236(n-n²%(n+1)+1)]` -/
def P13311296585793154092.Spec : Prop :=
  ∀ n, P13311296585793154092.a n = A194235 (n + 1)

end A194235

/-! ## A194235.P4049918768563971601

`A194236(n+1)-A194236(abs(1-n)+1)`
-/

namespace A194235.P4049918768563971601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194236 (n + 1) - A194236 (|1 - (n : ℤ)| + 1).toNat

end

end A194235.P4049918768563971601

namespace A194235

/-- `A194236(n+1)-A194236(abs(1-n)+1)` -/
def P4049918768563971601.Spec : Prop :=
  ∀ n, P4049918768563971601.a n = A194235 (n + 1)

end A194235

/-! ## A194235.P11154477742090645449

`A002265(2*A002265(∑[and(7, n+1)]))`
-/

namespace A194235.P11154477742090645449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A002265 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194235.P11154477742090645449

namespace A194235

/-- `A002265(2*A002265(∑[and(7, n+1)]))` -/
def P11154477742090645449.Spec : Prop :=
  ∀ n, P11154477742090645449.a n = A194235 (n + 1)

end A194235

/-! ## A194235.P7663836793038422859

`A004526(A002265(A130486(n+1)))`
-/

namespace A194235.P7663836793038422859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (A130486 (n + 1)).toNat).toNat

end

end A194235.P7663836793038422859

namespace A194235

/-- `A004526(A002265(A130486(n+1)))` -/
def P7663836793038422859.Spec : Prop :=
  ∀ n, P7663836793038422859.a n = A194235 (n + 1)

end A194235

/-! ## A194235.P160224871917157908

`A004526(A002265(∑[A010877(n+1)]))`
-/

namespace A194235.P160224871917157908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A194235.P160224871917157908

namespace A194235

/-- `A004526(A002265(∑[A010877(n+1)]))` -/
def P160224871917157908.Spec : Prop :=
  ∀ n, P160224871917157908.a n = A194235 (n + 1)

end A194235

/-! ## A194235.P15944248059074599731

`A002265(A002265(∑[(2*(n+1))%16]))`
-/

namespace A194235.P15944248059074599731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194235.P15944248059074599731

namespace A194235

/-- `A002265(A002265(∑[(2*(n+1))%16]))` -/
def P15944248059074599731.Spec : Prop :=
  ∀ n, P15944248059074599731.a n = A194235 (n + 1)

end A194235

/-!
# A194236: Partial sums of A194235.

The programs for A194236, the canonical program `A194236.P240505348694691527` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194236 has offset 1).

The definition of A194236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194236.P240505348694691527

`∑[floor(∑[(n+1)%8/8])]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194236

/-- `∑[floor(∑[(n+1)%8/8])]` -/
def P240505348694691527.Spec : Prop :=
  ∀ n, P240505348694691527.a n = A194236 (n + 1)

theorem P240505348694691527.correct : P240505348694691527.Spec := by
  intro n
  simp only [A194236, Nat.add_sub_cancel]

end A194236

/-! ## A194236.P5710879788023962864

`∑[floor(∑[and(7, n+1)/8])]`
-/

namespace A194236.P5710879788023962864
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 7 (n + 1) : ℚ) / 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194236.P5710879788023962864

namespace A194236

/-- `∑[floor(∑[and(7, n+1)/8])]` -/
def P5710879788023962864.Spec : Prop :=
  ∀ n, P5710879788023962864.a n = A194236 (n + 1)

end A194236

/-! ## A194236.P5176274324264250441

`∑[A194235(n+1)]`
-/

namespace A194236.P5176274324264250441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194236.P5176274324264250441

namespace A194236

/-- `∑[A194235(n+1)]` -/
def P5176274324264250441.Spec : Prop :=
  ∀ n, P5176274324264250441.a n = A194236 (n + 1)

end A194236

/-! ## A194236.P10894685017250895704

`∑[A004526(A002265(A130486(n+1)))]`
-/

namespace A194236.P10894685017250895704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 (A130486 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194236.P10894685017250895704

namespace A194236

/-- `∑[A004526(A002265(A130486(n+1)))]` -/
def P10894685017250895704.Spec : Prop :=
  ∀ n, P10894685017250895704.a n = A194236 (n + 1)

end A194236

/-! ## A194236.P18151131241350963344

`∑[A002265(A002265(∑[(2*(n+1))%16]))]`
-/

namespace A194236.P18151131241350963344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194236.P18151131241350963344

namespace A194236

/-- `∑[A002265(A002265(∑[(2*(n+1))%16]))]` -/
def P18151131241350963344.Spec : Prop :=
  ∀ n, P18151131241350963344.a n = A194236 (n + 1)

end A194236

/-!
# A194237: a(n) = [Sum_{k=1..n} (3k/8)], where [ ]=floor, ( )=fractional part.

The programs for A194237, the canonical program `A194237.P9083077701294337056` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194237 has offset 1).

The definition of A194237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194237.P9083077701294337056

`floor(∑[(A053742(n+1)+n)%8/8])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194237

/-- `floor(∑[(A053742(n+1)+n)%8/8])` -/
def P9083077701294337056.Spec : Prop :=
  ∀ n, P9083077701294337056.a n = A194237 (n + 1)

theorem P9083077701294337056.correct : P9083077701294337056.Spec := by
  intro n
  simp only [A194237, Nat.add_sub_cancel]

end A194237

/-! ## A194237.P4357180836704573856

`Δ[A194238(A028310(n))]`
-/

namespace A194237.P4357180836704573856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194238 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194237.P4357180836704573856

namespace A194237

/-- `Δ[A194238(A028310(n))]` -/
def P4357180836704573856.Spec : Prop :=
  ∀ n, P4357180836704573856.a n = A194237 (n + 1)

end A194237

/-! ## A194237.P15661467823326723996

`A194238(n+1)-A194238(A028310(n))`
-/

namespace A194237.P15661467823326723996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194238 (n + 1) - A194238 (A028310 n).toNat

end

end A194237.P15661467823326723996

namespace A194237

/-- `A194238(n+1)-A194238(A028310(n))` -/
def P15661467823326723996.Spec : Prop :=
  ∀ n, P15661467823326723996.a n = A194237 (n + 1)

end A194237

/-! ## A194237.P16422191878145700135

`∑[A089013(∑[A266956(n+1)])]`
-/

namespace A194237.P16422191878145700135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194237.P16422191878145700135

namespace A194237

/-- `∑[A089013(∑[A266956(n+1)])]` -/
def P16422191878145700135.Spec : Prop :=
  ∀ n, P16422191878145700135.a n = A194237 (n + 1)

end A194237

/-! ## A194237.P12911965087945957977

`∑[A096268(∑[A002965(n)])]`
-/

namespace A194237.P12911965087945957977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194237.P12911965087945957977

namespace A194237

/-- `∑[A096268(∑[A002965(n)])]` -/
def P12911965087945957977.Spec : Prop :=
  ∀ n, P12911965087945957977.a n = A194237 (n + 1)

end A194237

/-!
# A194238: Partial sums of A194237.

The programs for A194238, the canonical program `A194238.P3948435337945888088` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194238 has offset 1).

The definition of A194238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194238.P3948435337945888088

`∑[A194237(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194238

/-- `∑[A194237(n+1)]` -/
def P3948435337945888088.Spec : Prop :=
  ∀ n, P3948435337945888088.a n = A194238 (n + 1)

theorem P3948435337945888088.correct : P3948435337945888088.Spec := by
  intro n
  simp only [A194238, Nat.add_sub_cancel]

end A194238

/-! ## A194238.P12727520472970265250

`A194237(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A194238.P12727520472970265250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194237 (n + 1) + a (A023443 n).toNat

end

end A194238.P12727520472970265250

namespace A194238

/-- `A194237(n+1)+a(A023443(n))` -/
def P12727520472970265250.Spec : Prop :=
  ∀ n, P12727520472970265250.a n = A194238 (n + 1)

end A194238

/-! ## A194238.P11371136493431672359

`A194237(n+1)+a(n-1)%A003594(n+1)` with `a(0)=0`
-/

namespace A194238.P11371136493431672359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194237 (n + 1) + Int.tmod (a (n - 1)) (A003594 (n + 1))

end

end A194238.P11371136493431672359

namespace A194238

/-- `A194237(n+1)+a(n-1)%A003594(n+1)` -/
def P11371136493431672359.Spec : Prop :=
  ∀ n, P11371136493431672359.a n = A194238 (n + 1)

end A194238

/-! ## A194238.P16979172663279647275

`A194237(n+1)-(n%A044102(n)-a(n-1))+n` with `a(0)=0`
-/

namespace A194238.P16979172663279647275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194237 (n + 1) - (Int.tmod (n : ℤ) (A044102 n) - a (n - 1)) + (n : ℤ)

end

end A194238.P16979172663279647275

namespace A194238

/-- `A194237(n+1)-(n%A044102(n)-a(n-1))+n` -/
def P16979172663279647275.Spec : Prop :=
  ∀ n, P16979172663279647275.a n = A194238 (n + 1)

end A194238

/-! ## A194238.P17814517906069008965

`A000027(A194237(n+1)+a(n-1))` with `a(0)=0`
-/

namespace A194238.P17814517906069008965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A194237 (n + 1) + a (n - 1)).toNat

end

end A194238.P17814517906069008965

namespace A194238

/-- `A000027(A194237(n+1)+a(n-1))` -/
def P17814517906069008965.Spec : Prop :=
  ∀ n, P17814517906069008965.a n = A194238 (n + 1)

end A194238

/-! ## A194238.P5258762973871558807

`A194237(n+1)+a(A259361(n²))` with `a(0)=0`
-/

namespace A194238.P5258762973871558807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194237 (n + 1) + a (A259361 (n ^ 2)).toNat

end

end A194238.P5258762973871558807

namespace A194238

/-- `A194237(n+1)+a(A259361(n²))` -/
def P5258762973871558807.Spec : Prop :=
  ∀ n, P5258762973871558807.a n = A194238 (n + 1)

end A194238

/-!
# A194239: a(n) = [Sum_{k=1..n} (r*k)], where [ ]=floor, ( )=fractional part, and r=(1+sqrt(2))/2.

The programs for A194239, there is no canonical definition to state claims against.
-/

/-! ## A194239.P3549997387304757928

`Δ[A194240(round(1/(n+1)+n))]`
-/

namespace A194239.P3549997387304757928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194240 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194239.P3549997387304757928

/-! ## A194239.P6087086415708763784

`abs(Δ[A194240(A028310(n))])`
-/

namespace A194239.P6087086415708763784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194240 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194239.P6087086415708763784

/-! ## A194239.P1064199514247347629

`A194240(n+1)-A194240(A028310(n))`
-/

namespace A194239.P1064199514247347629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194240 (n + 1) - A194240 (A028310 n).toNat

end

end A194239.P1064199514247347629

/-! ## A194239.P14575873839343067151

`A194240(n+1)-A194240(sqrt(A253909(n)))`
-/

namespace A194239.P14575873839343067151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194240 (n + 1) - A194240 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

end

end A194239.P14575873839343067151

/-! ## A194239.P150568774700687291

`A194240(n+1)-A194240(gcd(n, A045665(n)))`
-/

namespace A194239.P150568774700687291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194240 (n + 1) - A194240 (Int.gcd (n : ℤ) (A045665 n))

end

end A194239.P150568774700687291

/-!
# A194240: Partial sums of A194239.

The programs for A194240, there is no canonical definition to state claims against.
-/

/-! ## A194240.P1007515179451171497

`∑[A194239(n+1)]`
-/

namespace A194240.P1007515179451171497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194240.P1007515179451171497

/-! ## A194240.P13609078113888835161

`∑[∑[A296210(A094021(2*n+3))]]`
-/

namespace A194240.P13609078113888835161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (A094021 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194240.P13609078113888835161

/-! ## A194240.P56969870743594328

`∑[∑[A268643(A048584(n))]]`
-/

namespace A194240.P56969870743594328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A048584 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194240.P56969870743594328

/-! ## A194240.P2282854654677411603

`∑[∑[A189706(A238423(n))]]`
-/

namespace A194240.P2282854654677411603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A238423 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194240.P2282854654677411603

/-! ## A194240.P14664627799378142179

`∑[∑[A269247(A125666(n+1))]]`
-/

namespace A194240.P14664627799378142179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A125666 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194240.P14664627799378142179

/-!
# A194241: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=(1+sqrt(3))/2.

The programs for A194241, there is no canonical definition to state claims against.
-/

/-! ## A194241.P17167455351430797927

`Δ[A194242(A028310(n))]`
-/

namespace A194241.P17167455351430797927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194242 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194241.P17167455351430797927

/-! ## A194241.P5947258290524569275

`Δ[A194242(A123108(2*n))]`
-/

namespace A194241.P5947258290524569275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194242 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194241.P5947258290524569275

/-! ## A194241.P10749148124226083041

`A194242(n+1)-A194242(A028310(n))`
-/

namespace A194241.P10749148124226083041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194242 (n + 1) - A194242 (A028310 n).toNat

end

end A194241.P10749148124226083041

/-! ## A194241.P8312785128855929974

`A003511(∑[n+1])-A194117(n+1)`
-/

namespace A194241.P8312785128855929974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (∑ j ∈ Finset.range (n + 1), f1 j) - A194117 (n + 1)

end

end A194241.P8312785128855929974

/-! ## A194241.P17501203895584884412

`A054406(∑[n+1])-A194143(n+1)`
-/

namespace A194241.P17501203895584884412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (∑ j ∈ Finset.range (n + 1), f1 j) - A194143 (n + 1)

end

end A194241.P17501203895584884412

/-! ## A194241.P7295788894470520361

`A003511(C(n+2, 2))%A194117(n+1)`
-/

namespace A194241.P7295788894470520361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003511 (Nat.choose (n + 2) 2)) (A194117 (n + 1))

end

end A194241.P7295788894470520361

/-! ## A194241.P11313919444861910419

`A054406(C(n+2, 2))%A194143(n+1)`
-/

namespace A194241.P11313919444861910419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054406 (Nat.choose (n + 2) 2)) (A194143 (n + 1))

end

end A194241.P11313919444861910419

/-! ## A194241.P9102191332837962927

`A003511(∑[n+1])-∑[A003511(n+1)]`
-/

namespace A194241.P9102191332837962927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194241.P9102191332837962927

/-! ## A194241.P8290143853863581094

`A054406(∑[n+1])-∑[A054406(n+1)]`
-/

namespace A194241.P8290143853863581094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194241.P8290143853863581094

/-! ## A194241.P7592101741864649828

`A054406(∑[n]+n+1)%∑[A054406(n+1)]`
-/

namespace A194241.P7592101741864649828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054406 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194241.P7592101741864649828

/-!
# A194242: Partial sums of A194241.

The programs for A194242, there is no canonical definition to state claims against.
-/

/-! ## A194242.P9254283976647213861

`∑[A194241(n+1)]`
-/

namespace A194242.P9254283976647213861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P9254283976647213861

/-! ## A194242.P1993560474760442274

`∑[A003511(∑[n+1])-A194117(n+1)]`
-/

namespace A194242.P1993560474760442274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (∑ j ∈ Finset.range (n + 1), f2 j) - A194117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P1993560474760442274

/-! ## A194242.P17038332341027358583

`∑[A054406(∑[n+1])-A194143(n+1)]`
-/

namespace A194242.P17038332341027358583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (∑ j ∈ Finset.range (n + 1), f2 j) - A194143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P17038332341027358583

/-! ## A194242.P12507956402269894255

`∑[A003511(C(n+2, 2))%A194117(n+1)]`
-/

namespace A194242.P12507956402269894255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003511 (Nat.choose (n + 2) 2)) (A194117 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P12507956402269894255

/-! ## A194242.P16387980781046157113

`∑[A054406(C(n+2, 2))%A194143(n+1)]`
-/

namespace A194242.P16387980781046157113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054406 (Nat.choose (n + 2) 2)) (A194143 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P16387980781046157113

/-! ## A194242.P16139284460111188856

`∑[A003511(∑[n+1])-∑[A003511(n+1)]]`
-/

namespace A194242.P16139284460111188856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P16139284460111188856

/-! ## A194242.P801280266280039677

`∑[A054406(∑[n+1])-∑[A054406(n+1)]]`
-/

namespace A194242.P801280266280039677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (∑ j ∈ Finset.range (n + 1), f2 j) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P801280266280039677

/-! ## A194242.P16285492215421737013

`∑[A054406(∑[n]+n+1)%∑[A054406(n+1)]]`
-/

namespace A194242.P16285492215421737013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054406 (∑ j ∈ Finset.range (n + 1), f2 j + (n + 1))) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194242.P16285492215421737013

/-!
# A194243: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=2-sqrt(2).

The programs for A194243, there is no canonical definition to state claims against.
-/

/-! ## A194243.P12470754000623199822

`n-A194161(n+1)`
-/

namespace A194243.P12470754000623199822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194161 (n + 1)

end

end A194243.P12470754000623199822

/-! ## A194243.P2228986650564639085

`abs(A194161(n+1)+A001489(n))`
-/

namespace A194243.P2228986650564639085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194161 (n + 1) + A001489 n|

end

end A194243.P2228986650564639085

/-! ## A194243.P4582432522146117609

`n-Δ[A194162(1-(1-n)%(n+1))]`
-/

namespace A194243.P4582432522146117609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194243.P4582432522146117609

/-! ## A194243.P374487213363715890

`n-Δ[A194162(A065033(2*n))]`
-/

namespace A194243.P374487213363715890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194243.P374487213363715890

/-! ## A194243.P10088602872792941723

`n-Δ[A194162(A000007(n)+n)]`
-/

namespace A194243.P10088602872792941723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194243.P10088602872792941723

/-! ## A194243.P1975728900453107272

`n-Δ[A194162(xor(n, A000007(n)))]`
-/

namespace A194243.P1975728900453107272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194162 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194243.P1975728900453107272

/-! ## A194243.P7992757867450948428

`A194244(n+1)-A194244(A233583(n+1))`
-/

namespace A194243.P7992757867450948428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194244 (n + 1) - A194244 (A233583 (n + 1)).toNat

end

end A194243.P7992757867450948428

/-! ## A194243.P2624176401571216182

`A025581(A194161(n+1)+∑[n])`
-/

namespace A194243.P2624176401571216182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194161 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194243.P2624176401571216182

/-! ## A194243.P14729645102399784145

`A074840(∑[n+1])-∑[A074840(n+1)]`
-/

namespace A194243.P14729645102399784145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194243.P14729645102399784145

/-!
# A194244: Partial sums of A194243.

The programs for A194244, there is no canonical definition to state claims against.
-/

/-! ## A194244.P6922268478806772642

`∑[A194243(n+1)]`
-/

namespace A194244.P6922268478806772642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194244.P6922268478806772642

/-! ## A194244.P15299483963140270468

`∑[n-A194161(n+1)]`
-/

namespace A194244.P15299483963140270468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194244.P15299483963140270468

/-! ## A194244.P6447619892745666667

`∑[n]-A194162(n+1)`
-/

namespace A194244.P6447619892745666667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194162 (n + 1)

end

end A194244.P6447619892745666667

/-! ## A194244.P17312767450258615194

`abs(A194162(n+1)-A000217(n))`
-/

namespace A194244.P17312767450258615194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194162 (n + 1) - A000217 n|

end

end A194244.P17312767450258615194

/-! ## A194244.P2142993861794959748

`A000124(n)-(A194162(n+1)+1)`
-/

namespace A194244.P2142993861794959748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A194162 (n + 1) + 1)

end

end A194244.P2142993861794959748

/-! ## A194244.P881474479702244681

`∑[A025581(A194161(n+1)+∑[n])]`
-/

namespace A194244.P881474479702244681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194161 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194244.P881474479702244681

/-!
# A194245: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=2-sqrt(3).

The programs for A194245, there is no canonical definition to state claims against.
-/

/-! ## A194245.P14766668678690278861

`n-A194163(n+1)`
-/

namespace A194245.P14766668678690278861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194163 (n + 1)

end

end A194245.P14766668678690278861

/-! ## A194245.P3113119202255736099

`n-Δ[A194164(floor(acot(n)+n))]`
-/

namespace A194245.P3113119202255736099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194245.P3113119202255736099

/-! ## A194245.P4636898222776596905

`n-Δ[A194164(n^floor(atan(n)))]`
-/

namespace A194245.P4636898222776596905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194245.P4636898222776596905

/-! ## A194245.P1329578251371913634

`n-Δ[A194164(round(sqrt(n²+1)))]`
-/

namespace A194245.P1329578251371913634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194245.P1329578251371913634

/-! ## A194245.P14323785941165486942

`abs(Δ[A194164(C(2, n+2)+n)]-n)`
-/

namespace A194245.P14323785941165486942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℤ)|

end

end A194245.P14323785941165486942

/-! ## A194245.P485906627521272724

`n-abs(Δ[A194164(A028310(n))])`
-/

namespace A194245.P485906627521272724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |f1 (n + 1) - f1 n|

end

end A194245.P485906627521272724

/-! ## A194245.P15152572138679984157

`abs(A194163(n+1)+A001489(n))`
-/

namespace A194245.P15152572138679984157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194163 (n + 1) + A001489 n|

end

end A194245.P15152572138679984157

/-! ## A194245.P2904299746093185450

`A024000(A194163(n+1)+1)+n`
-/

namespace A194245.P2904299746093185450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194163 (n + 1) + 1).toNat + (n : ℤ)

end

end A194245.P2904299746093185450

/-! ## A194245.P3869647878964781027

`A024000(A194163(n+1))+A023443(n)`
-/

namespace A194245.P3869647878964781027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194163 (n + 1)).toNat + A023443 n

end

end A194245.P3869647878964781027

/-! ## A194245.P8693497274870134766

`A053616(A194163(n+1)+A167614(n+1))`
-/

namespace A194245.P8693497274870134766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A194163 (n + 1) + A167614 (n + 1)).toNat

end

end A194245.P8693497274870134766

/-!
# A194246: Partial sums of A194245.

The programs for A194246, there is no canonical definition to state claims against.
-/

/-! ## A194246.P3277020378582231095

`∑[n-A194163(n+1)]`
-/

namespace A194246.P3277020378582231095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194246.P3277020378582231095

/-! ## A194246.P14492377104251897623

`∑[abs(A194163(-xor(n, -1))-n)]`
-/

namespace A194246.P14492377104251897623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194163 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194246.P14492377104251897623

/-! ## A194246.P9153562418383599808

`∑[abs(A194163(n+1)+A001489(n))]`
-/

namespace A194246.P9153562418383599808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194163 (n + 1) + A001489 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194246.P9153562418383599808

/-! ## A194246.P12333335554890128605

`∑[A194245(n+1)]`
-/

namespace A194246.P12333335554890128605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194246.P12333335554890128605

/-! ## A194246.P8961049285027514800

`∑[n]-A194164(n+1)`
-/

namespace A194246.P8961049285027514800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194164 (n + 1)

end

end A194246.P8961049285027514800

/-! ## A194246.P391722790291109388

`∑[n-Δ[A194164(n^floor(atan(n)))]]`
-/

namespace A194246.P391722790291109388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194246.P391722790291109388

/-! ## A194246.P3689968683950277647

`∑[n-Δ[A194164(A028310(n))]]`
-/

namespace A194246.P3689968683950277647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194164 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194246.P3689968683950277647

/-! ## A194246.P2957768342453753999

`abs(A194164(n+1)-A000217(n))`
-/

namespace A194246.P2957768342453753999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194164 (n + 1) - A000217 n|

end

end A194246.P2957768342453753999

/-! ## A194246.P17191507461955883994

`A000124(n)-(A194164(n+1)+1)`
-/

namespace A194246.P17191507461955883994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A194164 (n + 1) + 1)

end

end A194246.P17191507461955883994

/-! ## A194246.P2862250278245494525

`A000096(n)-(A194164(n+1)+n)`
-/

namespace A194246.P2862250278245494525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A194164 (n + 1) + (n : ℤ))

end

end A194246.P2862250278245494525

/-!
# A194247: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=3-sqrt(5).

The programs for A194247, there is no canonical definition to state claims against.
-/

/-! ## A194247.P11337110286894363853

`n-A194169(n+1)`
-/

namespace A194247.P11337110286894363853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194169 (n + 1)

end

end A194247.P11337110286894363853

/-! ## A194247.P5817135249226052873

`abs(A194169(n+1)+A001489(n))`
-/

namespace A194247.P5817135249226052873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194169 (n + 1) + A001489 n|

end

end A194247.P5817135249226052873

/-! ## A194247.P4689883562534746888

`∑{d}[A194169(n+1)+A001489(n), A000010(#)]`
-/

namespace A194247.P4689883562534746888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194169 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194247.P4689883562534746888

/-! ## A194247.P13835449835541051978

`n-Δ[A194170(round(acot(n)+n))]`
-/

namespace A194247.P13835449835541051978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194247.P13835449835541051978

/-! ## A194247.P10442879352028650379

`n-Δ[A194170(abs(1-n)+1)]`
-/

namespace A194247.P10442879352028650379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194247.P10442879352028650379

/-! ## A194247.P2769965689468460425

`abs(n-Δ[A194170(A028310(n))])`
-/

namespace A194247.P2769965689468460425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A194247.P2769965689468460425

/-! ## A194247.P13139208797253286800

`A194170(A028310(n))-A194170(n+1)+n`
-/

namespace A194247.P13139208797253286800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A028310 n).toNat - A194170 (n + 1) + (n : ℤ)

end

end A194247.P13139208797253286800

/-! ## A194247.P13114822618174231671

`abs(Δ[A194170(A233583(n+1))]-n)`
-/

namespace A194247.P13114822618174231671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℤ)|

end

end A194247.P13114822618174231671

/-! ## A194247.P13601445342956197890

`∑[A300763(n+1)]-A300763(∑[n+1])`
-/

namespace A194247.P13601445342956197890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A300763 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194247.P13601445342956197890

/-! ## A194247.P2773719815937951898

`abs(n-Δ[A194170(A000267(n²)-n)])`
-/

namespace A194247.P2773719815937951898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A000267 (n ^ 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A194247.P2773719815937951898

/-!
# A194248: Partial sums of A194247.

The programs for A194248, there is no canonical definition to state claims against.
-/

/-! ## A194248.P1250273673146502414

`∑[A194247(n+1)]`
-/

namespace A194248.P1250273673146502414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194248.P1250273673146502414

/-! ## A194248.P12075434335834382757

`∑[n-A194169(n+1)]`
-/

namespace A194248.P12075434335834382757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194248.P12075434335834382757

/-! ## A194248.P9472580575779245598

`∑[abs(A194169(n+1)+A001489(n))]`
-/

namespace A194248.P9472580575779245598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194169 (n + 1) + A001489 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194248.P9472580575779245598

/-! ## A194248.P8269878840210206200

`∑[n]-A194170(n+1)`
-/

namespace A194248.P8269878840210206200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194170 (n + 1)

end

end A194248.P8269878840210206200

/-! ## A194248.P9522319085940325386

`∑[n-Δ[A194170(A028310(n))]]`
-/

namespace A194248.P9522319085940325386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194170 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194248.P9522319085940325386

/-! ## A194248.P1617389448447603473

`abs(A194170(n+1)-A000217(n))`
-/

namespace A194248.P1617389448447603473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194170 (n + 1) - A000217 n|

end

end A194248.P1617389448447603473

/-! ## A194248.P17053693034903873576

`A000124(n)-(A194170(n+1)+1)`
-/

namespace A194248.P17053693034903873576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A194170 (n + 1) + 1)

end

end A194248.P17053693034903873576

/-! ## A194248.P12375855303525940442

`A000096(n)-(A194170(n+1)+n)`
-/

namespace A194248.P12375855303525940442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A194170 (n + 1) + (n : ℤ))

end

end A194248.P12375855303525940442

/-! ## A194248.P11596574271608809345

`A001489(∑[A194169(n+1)])+∑[n]`
-/

namespace A194248.P11596574271608809345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194248.P11596574271608809345

/-!
# A194249: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=3-sqrt(6).

The programs for A194249, there is no canonical definition to state claims against.
-/

/-! ## A194249.P16360083715621484871

`n-A194173(n+1)`
-/

namespace A194249.P16360083715621484871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194173 (n + 1)

end

end A194249.P16360083715621484871

/-! ## A194249.P17584771923160318863

`abs(A194173(n+1)+A001489(n))`
-/

namespace A194249.P17584771923160318863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194173 (n + 1) + A001489 n|

end

end A194249.P17584771923160318863

/-! ## A194249.P13826314120886338670

`A020705(n)%A020705(A194173(n+1))`
-/

namespace A194249.P13826314120886338670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 n) (A020705 (A194173 (n + 1)).toNat)

end

end A194249.P13826314120886338670

/-! ## A194249.P8779670257144837330

`Δ[-A194174(floor(acot(n)+n))]+n`
-/

namespace A194249.P8779670257144837330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A194174 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A194249.P8779670257144837330

/-! ## A194249.P11580038158928644453

`n-Δ[A194174(floor(1/(n+1)+n))]`
-/

namespace A194249.P11580038158928644453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194249.P11580038158928644453

/-! ## A194249.P276259898049908077

`Δ[-A194174((n-1)%(n+1)+1)]+n`
-/

namespace A194249.P276259898049908077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A194174 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A194249.P276259898049908077

/-! ## A194249.P13220408127656667521

`Δ[-A194174(A028310(n))]+n`
-/

namespace A194249.P13220408127656667521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A194174 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A194249.P13220408127656667521

/-! ## A194249.P12875809497515540168

`Δ[-A194174(A123108(2*n))]+n`
-/

namespace A194249.P12875809497515540168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A194174 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A194249.P12875809497515540168

/-! ## A194249.P5383882865994497526

`A025581(A194173(n+1)+∑[n])`
-/

namespace A194249.P5383882865994497526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194173 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194249.P5383882865994497526

/-!
# A194250: Partial sums of A194249.

The programs for A194250, there is no canonical definition to state claims against.
-/

/-! ## A194250.P3230679556502034136

`∑[A194249(n+1)]`
-/

namespace A194250.P3230679556502034136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194250.P3230679556502034136

/-! ## A194250.P4335256350447028096

`∑[n-A194173(n+1)]`
-/

namespace A194250.P4335256350447028096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194250.P4335256350447028096

/-! ## A194250.P5645488204900580211

`∑[n]-A194174(n+1)`
-/

namespace A194250.P5645488204900580211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194174 (n + 1)

end

end A194250.P5645488204900580211

/-! ## A194250.P8923497225499037604

`∑[n-Δ[A194174(A028310(n))]]`
-/

namespace A194250.P8923497225499037604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194250.P8923497225499037604

/-! ## A194250.P14948044487799808723

`abs(A194174(n+1)-A000217(n))`
-/

namespace A194250.P14948044487799808723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194174 (n + 1) - A000217 n|

end

end A194250.P14948044487799808723

/-! ## A194250.P876351499492874834

`∑[n-Δ[A194174(A123108(2*n))]]`
-/

namespace A194250.P876351499492874834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194174 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194250.P876351499492874834

/-! ## A194250.P3298747065894282364

`∑[A025581(A194173(n+1)+∑[n])]`
-/

namespace A194250.P3298747065894282364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194173 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194250.P3298747065894282364

/-!
# A194251: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=3-sqrt(8).

The programs for A194251, there is no canonical definition to state claims against.
-/

/-! ## A194251.P8084513726169396819

`n-A194177(n+1)`
-/

namespace A194251.P8084513726169396819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194177 (n + 1)

end

end A194251.P8084513726169396819

/-! ## A194251.P11362279340703705568

`-A194177(n+1)%A000040(n+1)+n`
-/

namespace A194251.P11362279340703705568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A194177 (n + 1)) (A000040 (n + 1)) + (n : ℤ)

end

end A194251.P11362279340703705568

/-! ## A194251.P16066276495511214639

`A194252(n+1)-A194252(A233583(n+1))`
-/

namespace A194251.P16066276495511214639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194252 (n + 1) - A194252 (A233583 (n + 1)).toNat

end

end A194251.P16066276495511214639

/-! ## A194251.P3922468386885005425

`Δ[A194252(A233583(n+1))]`
-/

namespace A194251.P3922468386885005425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194252 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194251.P3922468386885005425

/-! ## A194251.P15793036445867678552

`A182766(∑[n+1])-∑[A182766(n+1)]`
-/

namespace A194251.P15793036445867678552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182766 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194251.P15793036445867678552

/-! ## A194251.P12316658381068169578

`∑[A198263(n+1)]-A198263(∑[n+1])`
-/

namespace A194251.P12316658381068169578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A198263 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194251.P12316658381068169578

/-! ## A194251.P2110915583602186940

`A195178(∑[n+1])-∑[A195178(n+1)]+n`
-/

namespace A194251.P2110915583602186940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

end

end A194251.P2110915583602186940

/-! ## A194251.P19802738172440186

`∑[A022842(n+1)]-(A022842(∑[n+1])-n)`
-/

namespace A194251.P19802738172440186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A022842 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ))

end

end A194251.P19802738172440186

/-! ## A194251.P17979227504536953328

`∑[A087057(2*(n+1))]-A087057(A002378(n+1))`
-/

namespace A194251.P17979227504536953328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087057 (A002378 (n + 1)).toNat

end

end A194251.P17979227504536953328

/-!
# A194252: Partial sums of A194251.

The programs for A194252, there is no canonical definition to state claims against.
-/

/-! ## A194252.P10561707044557962727

`∑[A194251(n+1)]`
-/

namespace A194252.P10561707044557962727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194252.P10561707044557962727

/-! ## A194252.P3714011060952520764

`∑[n-A194177(n+1)]`
-/

namespace A194252.P3714011060952520764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194252.P3714011060952520764

/-! ## A194252.P8961888052896732796

`A194251(Δ[n²]-n)+a(n-1)` with `a(0)=0`
-/

namespace A194252.P8961888052896732796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A194252.P8961888052896732796

/-! ## A194252.P10510478267912673033

`∑[A194251(Δ[n²]-n)]*A057427(n)`
-/

namespace A194252.P10510478267912673033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A194252.P10510478267912673033

/-! ## A194252.P15756607539695766285

`a(n-1)+A194251(n+1)+A000007(n)` with `a(0)=0`
-/

namespace A194252.P15756607539695766285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A194251 (n + 1) + A000007 n)

end

end A194252.P15756607539695766285

/-! ## A194252.P9898220537634157592

`a(n-1)-A057428(n)*A194251(n+1)` with `a(0)=0`
-/

namespace A194252.P9898220537634157592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A057428 n * A194251 (n + 1)

end

end A194252.P9898220537634157592

/-! ## A194252.P5063429433689925540

`∑[n]-A194178(n+1)`
-/

namespace A194252.P5063429433689925540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194178 (n + 1)

end

end A194252.P5063429433689925540

/-!
# A194253: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=sqrt(12).

The programs for A194253, there is no canonical definition to state claims against.
-/

/-! ## A194253.P10166828525918140341

`n-A194255(n+1)`
-/

namespace A194253.P10166828525918140341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194255 (n + 1)

end

end A194253.P10166828525918140341

/-! ## A194253.P14240330147876844476

`abs(A194255(n+1)+A001489(n))`
-/

namespace A194253.P14240330147876844476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194255 (n + 1) + A001489 n|

end

end A194253.P14240330147876844476

/-! ## A194253.P1780745279228512487

`A024000(A194255(n+1)+1)+n`
-/

namespace A194253.P1780745279228512487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194255 (n + 1) + 1).toNat + (n : ℤ)

end

end A194253.P1780745279228512487

/-! ## A194253.P17735684079094990510

`-(A246425(4*n)+A194255(n+1))`
-/

namespace A194253.P17735684079094990510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A246425 (4 * n) + A194255 (n + 1))

end

end A194253.P17735684079094990510

/-! ## A194253.P14777878990558836693

`A024000(A194255(n+1))+A023443(n)`
-/

namespace A194253.P14777878990558836693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194255 (n + 1)).toNat + A023443 n

end

end A194253.P14777878990558836693

/-! ## A194253.P18068297703074314543

`A171960(A194255(n+1)+A171960(n))`
-/

namespace A194253.P18068297703074314543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A194255 (n + 1) + A171960 n).toNat

end

end A194253.P18068297703074314543

/-! ## A194253.P10084862943754264909

`∑{d}[A194255(n+1)+A001489(n), A000010(#)]`
-/

namespace A194253.P10084862943754264909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194255 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194253.P10084862943754264909

/-! ## A194253.P425607163176677902

`n-Δ[A194256(A028310(n))]`
-/

namespace A194253.P425607163176677902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194256 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A194253.P425607163176677902

/-! ## A194253.P12096322091415534638

`-((A194255(n+1)+A001489(n))*A014963(6*(n+1)))`
-/

namespace A194253.P12096322091415534638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A194255 (n + 1) + A001489 n) * A014963 (6 * (n + 1)))

end

end A194253.P12096322091415534638

/-! ## A194253.P1631636823440794725

`A025581(A194255(n+1)+∑[n])`
-/

namespace A194253.P1631636823440794725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194255 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194253.P1631636823440794725

/-!
# A194254: Partial sums of A194253.

The programs for A194254, there is no canonical definition to state claims against.
-/

/-! ## A194254.P6214932567492980392

`∑[A194253(n+1)]`
-/

namespace A194254.P6214932567492980392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194254.P6214932567492980392

/-! ## A194254.P9802932131362623268

`∑[n-A194255(n+1)]`
-/

namespace A194254.P9802932131362623268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194254.P9802932131362623268

/-! ## A194254.P2721063717870721284

`∑[n]-A194256(n+1)`
-/

namespace A194254.P2721063717870721284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194256 (n + 1)

end

end A194254.P2721063717870721284

/-! ## A194254.P3166924929467708677

`∑[n-Δ[A194256(A028310(n))]]`
-/

namespace A194254.P3166924929467708677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194256 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194254.P3166924929467708677

/-! ## A194254.P2470600748182282427

`abs(A194256(n+1)-A000217(n))`
-/

namespace A194254.P2470600748182282427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194256 (n + 1) - A000217 n|

end

end A194254.P2470600748182282427

/-! ## A194254.P13727202259244782649

`A161680(n)-A194256(n+1)+n`
-/

namespace A194254.P13727202259244782649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A194256 (n + 1) + (n : ℤ)

end

end A194254.P13727202259244782649

/-! ## A194254.P15986555294940885786

`∑[n-Δ[A194256(A123108(2*n))]]`
-/

namespace A194254.P15986555294940885786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194256 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194254.P15986555294940885786

/-! ## A194254.P1727460929463072139

`∑[A025581(A194255(n+1)+∑[n])]`
-/

namespace A194254.P1727460929463072139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194255 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194254.P1727460929463072139

/-!
# A194255: [sum{(rk) : 1<=k<=n}], where [ ]=floor, ( )=fractional part, and r=4-sqrt(12).

The programs for A194255, there is no canonical definition to state claims against.
-/

/-! ## A194255.P14466728637456200417

`n-A194253(n+1)`
-/

namespace A194255.P14466728637456200417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194253 (n + 1)

end

end A194255.P14466728637456200417

/-! ## A194255.P9681250030790848725

`abs(A194253(n+1)+A001489(n))`
-/

namespace A194255.P9681250030790848725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194253 (n + 1) + A001489 n|

end

end A194255.P9681250030790848725

/-! ## A194255.P15820191019620842287

`A057428(n)*A194253(n+1)+n`
-/

namespace A194255.P15820191019620842287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A194253 (n + 1) + (n : ℤ)

end

end A194255.P15820191019620842287

/-! ## A194255.P12239718879944907633

`Δ[A194256(A028310(n))]`
-/

namespace A194255.P12239718879944907633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194256 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194255.P12239718879944907633

/-! ## A194255.P1693893970056793888

`Δ[A194256(A123108(2*n))]`
-/

namespace A194255.P1693893970056793888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194256 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194255.P1693893970056793888

/-! ## A194255.P3288460020758458946

`A194256(n+1)-A194256(A028310(n))`
-/

namespace A194255.P3288460020758458946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194256 (n + 1) - A194256 (A028310 n).toNat

end

end A194255.P3288460020758458946

/-! ## A194255.P11797528344083117810

`A025581(A194253(n+1)+∑[n])`
-/

namespace A194255.P11797528344083117810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194253 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194255.P11797528344083117810

/-! ## A194255.P3426384161724879596

`∑[A198269(n+1)]-A198269(∑[n+1])`
-/

namespace A194255.P3426384161724879596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A198269 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194255.P3426384161724879596

/-!
# A194256: Partial sums of A194255.

The programs for A194256, there is no canonical definition to state claims against.
-/

/-! ## A194256.P11653912560378432129

`∑[A194255(n+1)]`
-/

namespace A194256.P11653912560378432129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194256.P11653912560378432129

/-! ## A194256.P4646775021439561712

`∑[n-A194253(n+1)]`
-/

namespace A194256.P4646775021439561712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194256.P4646775021439561712

/-! ## A194256.P13958596497796038383

`∑[n]-A194254(n+1)`
-/

namespace A194256.P13958596497796038383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A194254 (n + 1)

end

end A194256.P13958596497796038383

/-! ## A194256.P17388760436180146985

`A194255(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A194256.P17388760436180146985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194255 (n + 1) + a (A023443 n).toNat

end

end A194256.P17388760436180146985

/-! ## A194256.P2090370071035629079

`∑[abs(A194253(n+1)+A001489(n))]`
-/

namespace A194256.P2090370071035629079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194253 (n + 1) + A001489 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194256.P2090370071035629079

/-! ## A194256.P5413875263178382409

`∑[A057428(n)*A194253(n+1)+n]`
-/

namespace A194256.P5413875263178382409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A194253 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194256.P5413875263178382409

/-! ## A194256.P12329310107425719265

`A000124(n)%∑[A028310(A194253(n+1))]`
-/

namespace A194256.P12329310107425719265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A194253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194256.P12329310107425719265

/-! ## A194256.P1172295095793005256

`A194255(n+1)+a(n-1)%A000045(n+2)` with `a(0)=0`
-/

namespace A194256.P1172295095793005256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194255 (n + 1) + Int.tmod (a (n - 1)) (A000045 (n + 2))

end

end A194256.P1172295095793005256

/-! ## A194256.P5901687648620995840

`A001489(∑[A194253(n+1)])+∑[n]`
-/

namespace A194256.P5901687648620995840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194253 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194256.P5901687648620995840

/-! ## A194256.P13172271883783285112

`∑[A025581(A194253(n+1)+∑[n])]`
-/

namespace A194256.P13172271883783285112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194253 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194256.P13172271883783285112

/-!
# A194257: Primes of the form p^6 + p^5 + p^4 + p^3 + p^2 + p + 1 when p is prime.

The programs for A194257, there is no canonical definition to state claims against.
-/

/-! ## A194257.P9654927852918101405

`A038994(A163268(n+1))`
-/

namespace A194257.P9654927852918101405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038994 (A163268 (n + 1)).toNat

end

end A194257.P9654927852918101405

/-! ## A194257.P11222071500822923528

`A053716(p?[A100330(n+1)])`
-/

namespace A194257.P11222071500822923528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A194257.P11222071500822923528

/-! ## A194257.P7387129932479065333

`A053716(eq[1, char[A163268(n+1)]])`
-/

namespace A194257.P7387129932479065333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163268 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194257.P7387129932479065333

/-! ## A194257.P997590638950616851

`A053716(A163268(n+1)%A023195(n+1))`
-/

namespace A194257.P997590638950616851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (Int.tmod (A163268 (n + 1)) (A023195 (n + 1))).toNat

end

end A194257.P997590638950616851

/-!
# A194258: Second inverse function (numbers of columns) for pairing function A060734.

The programs for A194258, the canonical program `A194258.P6130564753522000528` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194258 has offset 1).

The definition of A194258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194258.P6130564753522000528

`A194195(A020703(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194258

/-- `A194195(A020703(n+1))` -/
def P6130564753522000528.Spec : Prop :=
  ∀ n, P6130564753522000528.a n = A194258 (n + 1)

theorem P6130564753522000528.correct : P6130564753522000528.Spec := by
  intro n
  simp only [A194258, Nat.add_sub_cancel]

end A194258

/-! ## A194258.P12355790851055752039

`A196199(n)+A194195(n+1)`
-/

namespace A194258.P12355790851055752039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A194195 (n + 1)

end

end A194258.P12355790851055752039

namespace A194258

/-- `A196199(n)+A194195(n+1)` -/
def P12355790851055752039.Spec : Prop :=
  ∀ n, P12355790851055752039.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P3358344728015159359

`A002260(1-A080344(n)+n)`
-/

namespace A194258.P3358344728015159359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 - A080344 n + (n : ℤ)).toNat

end

end A194258.P3358344728015159359

namespace A194258

/-- `A002260(1-A080344(n)+n)` -/
def P3358344728015159359.Spec : Prop :=
  ∀ n, P3358344728015159359.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P12613333115958841778

`A194195(n+1)-A381232(n)`
-/

namespace A194258.P12613333115958841778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (n + 1) - A381232 n

end

end A194258.P12613333115958841778

namespace A194258

/-- `A194195(n+1)-A381232(n)` -/
def P12613333115958841778.Spec : Prop :=
  ∀ n, P12613333115958841778.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P11609429281706728708

`A002260(1-(A080344(n)-n))`
-/

namespace A194258.P11609429281706728708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 - (A080344 n - (n : ℤ))).toNat

end

end A194258.P11609429281706728708

namespace A194258

/-- `A002260(1-(A080344(n)-n))` -/
def P11609429281706728708.Spec : Prop :=
  ∀ n, P11609429281706728708.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P16878499329910280771

`ceil((A053186(n)+A004737(n+1))/2)`
-/

namespace A194258.P16878499329910280771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 n + A004737 (n + 1) : ℚ) / 2⌉

end

end A194258.P16878499329910280771

namespace A194258

/-- `ceil((A053186(n)+A004737(n+1))/2)` -/
def P16878499329910280771.Spec : Prop :=
  ∀ n, P16878499329910280771.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P1815246663236644630

`(A071797(n+1)+A004737(n+1))/2`
-/

namespace A194258.P1815246663236644630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071797 (n + 1) + A004737 (n + 1) : ℚ) / 2

end

end A194258.P1815246663236644630

namespace A194258

/-- `(A071797(n+1)+A004737(n+1))/2` -/
def P1815246663236644630.Spec : Prop :=
  ∀ n, P1815246663236644630.a n = (A194258 (n + 1) : ℚ)

end A194258

/-! ## A194258.P17812805926145790001

`A064788(n+1)+A194195(n+1)-A064790(n+1)`
-/

namespace A194258.P17812805926145790001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (n + 1) + (A194195 (n + 1) - A064790 (n + 1))

end

end A194258.P17812805926145790001

namespace A194258

/-- `A064788(n+1)+A194195(n+1)-A064790(n+1)` -/
def P17812805926145790001.Spec : Prop :=
  ∀ n, P17812805926145790001.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P2646381101624432948

`A220603(n+1)+A220604(n+1)-A194195(n+1)`
-/

namespace A194258.P2646381101624432948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) + (A220604 (n + 1) - A194195 (n + 1))

end

end A194258.P2646381101624432948

namespace A194258

/-- `A220603(n+1)+A220604(n+1)-A194195(n+1)` -/
def P2646381101624432948.Spec : Prop :=
  ∀ n, P2646381101624432948.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P1648475987225172180

`A002260(A064788(n+1))`
-/

namespace A194258.P1648475987225172180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064788 (n + 1)).toNat

end

end A194258.P1648475987225172180

namespace A194258

/-- `A002260(A064788(n+1))` -/
def P1648475987225172180.Spec : Prop :=
  ∀ n, P1648475987225172180.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P6573689406017259405

`A004736(A064790(n+1))`
-/

namespace A194258.P6573689406017259405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064790 (n + 1)).toNat

end

end A194258.P6573689406017259405

namespace A194258

/-- `A004736(A064790(n+1))` -/
def P6573689406017259405.Spec : Prop :=
  ∀ n, P6573689406017259405.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P18400513861571480676

`A209279(A091995(n+1))`
-/

namespace A194258.P18400513861571480676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A091995 (n + 1)).toNat

end

end A194258.P18400513861571480676

namespace A194258

/-- `A209279(A091995(n+1))` -/
def P18400513861571480676.Spec : Prop :=
  ∀ n, P18400513861571480676.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P3170602331331348442

`A220073(A214928(n+1))`
-/

namespace A194258.P3170602331331348442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A214928 (n + 1)).toNat

end

end A194258.P3170602331331348442

namespace A194258

/-- `A220073(A214928(n+1))` -/
def P3170602331331348442.Spec : Prop :=
  ∀ n, P3170602331331348442.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P7345138542475330933

`A208233(A194280(n+1))`
-/

namespace A194258.P7345138542475330933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A194280 (n + 1)).toNat

end

end A194258.P7345138542475330933

namespace A194258

/-- `A208233(A194280(n+1))` -/
def P7345138542475330933.Spec : Prop :=
  ∀ n, P7345138542475330933.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P8379961450695400255

`A213194(A211377(A211377(A216252(n+1))))`
-/

namespace A194258.P8379961450695400255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213194 (A211377 (A211377 (A216252 (n + 1)).toNat).toNat).toNat

end

end A194258.P8379961450695400255

namespace A194258

/-- `A213194(A211377(A211377(A216252(n+1))))` -/
def P8379961450695400255.Spec : Prop :=
  ∀ n, P8379961450695400255.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P12204644471646269479

`A208234(A188568(A064790(A056023(A056023(n+1)))))`
-/

namespace A194258.P12204644471646269479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A064790 (A056023 (A056023 (n + 1)).toNat).toNat).toNat).toNat

end

end A194258.P12204644471646269479

namespace A194258

/-- `A208234(A188568(A064790(A056023(A056023(n+1)))))` -/
def P12204644471646269479.Spec : Prop :=
  ∀ n, P12204644471646269479.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P3358258769237544566

`A208234(A188568(A064790(A194280(A081344(n+1)))))`
-/

namespace A194258.P3358258769237544566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A064790 (A194280 (A081344 (n + 1)).toNat).toNat).toNat).toNat

end

end A194258.P3358258769237544566

namespace A194258

/-- `A208234(A188568(A064790(A194280(A081344(n+1)))))` -/
def P3358258769237544566.Spec : Prop :=
  ∀ n, P3358258769237544566.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P14766581443422134161

`A208233(A188568(A064788(A188568(A188568(n+1)))))`
-/

namespace A194258.P14766581443422134161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A188568 (A064788 (A188568 (A188568 (n + 1)).toNat).toNat).toNat).toNat

end

end A194258.P14766581443422134161

namespace A194258

/-- `A208233(A188568(A064788(A188568(A188568(n+1)))))` -/
def P14766581443422134161.Spec : Prop :=
  ∀ n, P14766581443422134161.a n = A194258 (n + 1)

end A194258

/-! ## A194258.P2247511843101838387

`A000120(eq[1, A280737(n+1)])`
-/

namespace A194258.P2247511843101838387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194258.P2247511843101838387

namespace A194258

/-- `A000120(eq[1, A280737(n+1)])` -/
def P2247511843101838387.Spec : Prop :=
  ∀ n, P2247511843101838387.a n = A194258 (n + 1)

end A194258

/-!
# A194259: Number of distinct prime factors of p(1)*p(2)*...*p(n), where p(n) is the n-th partition number.

The programs for A194259, there is no canonical definition to state claims against.
-/

/-! ## A194259.P4818808856347624270

`A194260(n+1)+1+n`
-/

namespace A194259.P4818808856347624270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194260 (n + 1) + 1 + (n : ℤ)

end

end A194259.P4818808856347624270

/-! ## A194259.P16151761086749580656

`A194260(A008619(2*n))-xor(n, -1)`
-/

namespace A194259.P16151761086749580656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194260 (A008619 (2 * n)).toNat - Int.xor (n : ℤ) (-1)

end

end A194259.P16151761086749580656

/-! ## A194259.P5593705754240500432

`A194260(A008619(2*n))-(A001489(n)-1)`
-/

namespace A194259.P5593705754240500432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194260 (A008619 (2 * n)).toNat - (A001489 n - 1)

end

end A194259.P5593705754240500432

/-! ## A194259.P15474334832421362567

`∑[A001222(A194261(n+1))^A180185(n)]`
-/

namespace A194259.P15474334832421362567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A194261 (n + 1)).toNat : ℚ) ^ (A180185 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194259.P15474334832421362567

/-! ## A194259.P509339051115139482

`∑[A010051(A194262(n+1)%A084162(n)²)]`
-/

namespace A194259.P509339051115139482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.tmod (A194262 (n + 1)) (A084162 n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194259.P509339051115139482

/-!
# A194260: A194259(n) - n, where A194259(n) is the number of distinct prime factors of p(1)*p(2)*...*p(n) and p(n) is the n-th partition number.

The programs for A194260, there is no canonical definition to state claims against.
-/

/-! ## A194260.P7339139351630017532

`A194259(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194260.P7339139351630017532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194259 (n + 1) - (n + 1 : ℤ)

end

end A194260.P7339139351630017532

/-! ## A194260.P7446855162991101560

`A023443(A194259(n+1))-n`
-/

namespace A194260.P7446855162991101560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194259 (n + 1)).toNat - (n : ℤ)

end

end A194260.P7446855162991101560

/-! ## A194260.P336684600927743190

`∑[A094472(A194261(n+1))]`
-/

namespace A194260.P336684600927743190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094472 (A194261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194260.P336684600927743190

/-! ## A194260.P2690655201515594962

`∑[A094472(A194262(n+1))]`
-/

namespace A194260.P2690655201515594962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094472 (A194262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194260.P2690655201515594962

/-! ## A194260.P10499796769100437010

`∑[A003415(A194262(n+1))]-A000027(n+1)`
-/

namespace A194260.P10499796769100437010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A194262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000027 (n + 1)

end

end A194260.P10499796769100437010

/-!
# A194261: Smallest prime that divides the n-th partition number p(n) but does not divide p(1)*p(2)*...*p(n-1), or 1 if none.

The programs for A194261, there is no canonical definition to state claims against.
-/

/-! ## A194261.P15693094307436886289

`A194262(n+1)%A084162(n)²`
-/

namespace A194261.P15693094307436886289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194262 (n + 1)) (A084162 n ^ 2)

end

end A194261.P15693094307436886289

/-! ## A194261.P15844186340591011981

`A194262(A347447(2*n+3)+n)`
-/

namespace A194261.P15844186340591011981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194262 (A347447 (2 * n + 3) + (n : ℤ)).toNat

end

end A194261.P15844186340591011981

/-! ## A194261.P4426424523439032429

`A194262(C(A347706(2*(n+1)), 5)+n+1)`
-/

namespace A194261.P4426424523439032429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194262 (Nat.choose (A347706 (2 * (n + 1))).toNat 5 + n + 1)

end

end A194261.P4426424523439032429

/-! ## A194261.P7514042117212197124

`or(A194262(n+1), A343959(A074139(n)))`
-/

namespace A194261.P7514042117212197124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194262 (n + 1)) (A343959 (A074139 n).toNat)

end

end A194261.P7514042117212197124

/-! ## A194261.P11755477110214381362

`A194262(n+1)+A061397(A036302(n+1))`
-/

namespace A194261.P11755477110214381362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194262 (n + 1) + A061397 (A036302 (n + 1)).toNat

end

end A194261.P11755477110214381362

/-!
# A194262: Largest prime that divides the n-th partition number p(n) but does not divide p(1)*p(2)*...*p(n-1), or 1 if none.

The programs for A194262, there is no canonical definition to state claims against.
-/

/-! ## A194262.P1984283818250346369

`A071963(A001222(A194261(n+1))*(n+1))`
-/

namespace A194262.P1984283818250346369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071963 (A001222 (A194261 (n + 1)).toNat * (n + 1 : ℤ)).toNat

end

end A194262.P1984283818250346369

/-! ## A194262.P14685981932692809247

`A071963(n+1)^A001222(A194261(n+1))`
-/

namespace A194262.P14685981932692809247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071963 (n + 1) : ℚ) ^ (A001222 (A194261 (n + 1)).toNat : ℤ)

end

end A194262.P14685981932692809247

/-!
# A194263: Numbers that occur more than once in A193873, in order of appearance.

The programs for A194263, there is no canonical definition to state claims against.
-/

/-! ## A194263.P8066821373080746456

`or(A016350(n)², A193873(2*n+3))`
-/

namespace A194263.P8066821373080746456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016350 n ^ 2) (A193873 (2 * n + 3))

end

end A194263.P8066821373080746456

/-! ## A194263.P11275006674059333664

`A193873(2*n+3)+A000038(A019565(n))`
-/

namespace A194263.P11275006674059333664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193873 (2 * n + 3) + A000038 (A019565 n).toNat

end

end A194263.P11275006674059333664

/-! ## A194263.P6038189074217430724

`A193873(2*n+3)+A000007(A196384(n+1))`
-/

namespace A194263.P6038189074217430724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193873 (2 * n + 3) + A000007 (A196384 (n + 1)).toNat

end

end A194263.P6038189074217430724

/-! ## A194263.P13848077724640347648

`A193873(2*n+3)+A071090(A239929(n+1))`
-/

namespace A194263.P13848077724640347648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193873 (2 * n + 3) + A071090 (A239929 (n + 1)).toNat

end

end A194263.P13848077724640347648

/-! ## A194263.P17483717504263427002

`A003484(A257836(n+1))*A193873(2*n+3)`
-/

namespace A194263.P17483717504263427002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A257836 (n + 1)).toNat * A193873 (2 * n + 3)

end

end A194263.P17483717504263427002

/-!
# A194264: Sum of divisors of all elements of the n-th set of consecutive integers that are also nonprimes.

The programs for A194264, there is no canonical definition to state claims against.
-/

/-! ## A194264.P4100411428156938625

`A358683(n+2)-A135731(n+1)`
-/

namespace A194264.P4100411428156938625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358683 (n + 2) - A135731 (n + 1)

end

end A194264.P4100411428156938625

/-!
# A194265: Smallest product of two distinct primes of the form n*k+1.

The programs for A194265, there is no canonical definition to state claims against.
-/

/-! ## A194265.P2096619023200869890

`A034694(n+1)*A077316(∑[n]+2)`
-/

namespace A194265.P2096619023200869890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1) * A077316 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A194265.P2096619023200869890

/-! ## A194265.P13602432426522465291

`(A194266(n+1)-A034694(n+1))*A034694(n+1)`
-/

namespace A194265.P13602432426522465291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194266 (n + 1) - A034694 (n + 1)) * A034694 (n + 1)

end

end A194265.P13602432426522465291

/-! ## A194265.P2546004670167595915

`A193873(n+1)/(A194267(n+1)-A194266(n+1))`
-/

namespace A194265.P2546004670167595915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193873 (n + 1) : ℚ) / (A194267 (n + 1) - A194266 (n + 1) : ℚ)

end

end A194265.P2546004670167595915

/-! ## A194265.P6111562719353976333

`A193873(n+1)/A006530(A193873(n+1))`
-/

namespace A194265.P6111562719353976333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193873 (n + 1) : ℚ) / (A006530 (A193873 (n + 1)).toNat : ℚ)

end

end A194265.P6111562719353976333

/-!
# A194266: Smallest sum of two distinct primes of the form n*k+1.

The programs for A194266, there is no canonical definition to state claims against.
-/

/-! ## A194266.P8496442798681512617

`A077316(∑[n]+2)+A034694(n+1)`
-/

namespace A194266.P8496442798681512617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A034694 (n + 1)

end

end A194266.P8496442798681512617

/-! ## A194266.P2509207437249038870

`∑{p}[A194265(n+1), #]`
-/

namespace A194266.P2509207437249038870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A194266.P2509207437249038870

/-! ## A194266.P2812939602491102342

`A034694(n+1)+A194265(n+1)/A034694(n+1)`
-/

namespace A194266.P2812939602491102342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) : ℚ) + (A194265 (n + 1) : ℚ) / (A034694 (n + 1) : ℚ)

end

end A194266.P2812939602491102342

/-! ## A194266.P16654641431230677771

`A001414(A194265(n+1))`
-/

namespace A194266.P16654641431230677771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A194265 (n + 1)).toNat

end

end A194266.P16654641431230677771

/-!
# A194267: Smallest sum of three distinct primes of the form n*k+1.

The programs for A194267, there is no canonical definition to state claims against.
-/

/-! ## A194267.P12848934535236220351

`A194266(n+1)+A193873(n+1)/A194265(n+1)`
-/

namespace A194267.P12848934535236220351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194266 (n + 1) : ℚ) + (A193873 (n + 1) : ℚ) / (A194265 (n + 1) : ℚ)

end

end A194267.P12848934535236220351

/-! ## A194267.P11389784249833305302

`∑{p}[A193873(n+1), #]`
-/

namespace A194267.P11389784249833305302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A194267.P11389784249833305302

/-! ## A194267.P18099784639433025796

`A001414(A193873(n+1))`
-/

namespace A194267.P18099784639433025796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A193873 (n + 1)).toNat

end

end A194267.P18099784639433025796

/-! ## A194267.P18021872323647033929

`A008475(A193873(-xor(n, -1)))`
-/

namespace A194267.P18021872323647033929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A193873 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A194267.P18021872323647033929

/-!
# A194268: a(n) = 8*n^2 + 7*n + 1.

The programs for A194268, the canonical program `A194268.P13709870917259288745` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194268 has offset 0).

The definition of A194268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+7*n+1` (program `A194268.P13709870917259288745`, by `A194268.P13709870917259288745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194268.P13709870917259288745

`8*n²+7*n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194268

/-- `8*n²+7*n+1` -/
def P13709870917259288745.Spec : Prop :=
  ∀ n, (P13709870917259288745.a n : ℤ) = A194268 n

theorem P13709870917259288745.correct : P13709870917259288745.Spec := by
  intro n
  simp only [A194268]

end A194268

/-! ## A194268.P6920714107850896420

`∑[a(n-1)+16]` with `a(0)=1, a(1)=15`
-/

namespace A194268.P6920714107850896420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194268.P6920714107850896420

namespace A194268

/-- `∑[a(n-1)+16]` -/
def P6920714107850896420.Spec : Prop :=
  ∀ n, (P6920714107850896420.a n : ℤ) = A194268 n

end A194268

/-! ## A194268.P15047580335860271721

`∑[ogf((1+13x+2x^2)/(1-2x+x^2))]`
-/

namespace A194268.P15047580335860271721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194268.P15047580335860271721

namespace A194268

/-- `∑[ogf((1+13x+2x^2)/(1-2x+x^2))]` -/
def P15047580335860271721.Spec : Prop :=
  ∀ n, P15047580335860271721.a n = A194268 n

end A194268

/-! ## A194268.P6467616068918144180

`floor(C(8*n+4, 2)/4)`
-/

namespace A194268.P6467616068918144180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (8 * n + 4) 2 : ℚ) / 4⌋

end

end A194268.P6467616068918144180

namespace A194268

/-- `floor(C(8*n+4, 2)/4)` -/
def P6467616068918144180.Spec : Prop :=
  ∀ n, P6467616068918144180.a n = A194268 n

end A194268

/-! ## A194268.P11012401498334445380

`abs(16*C(n+1, 2)+1-n)`
-/

namespace A194268.P11012401498334445380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(16 * Nat.choose (n + 1) 2 + 1 : ℤ) - (n : ℤ)|

end

end A194268.P11012401498334445380

namespace A194268

/-- `abs(16*C(n+1, 2)+1-n)` -/
def P11012401498334445380.Spec : Prop :=
  ∀ n, P11012401498334445380.a n = A194268 n

end A194268

/-! ## A194268.P5494406704117155911

`abs(a(n-1)+16*n-1)` with `a(0)=1`
-/

namespace A194268.P5494406704117155911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + (16 * n : ℤ) - 1|

end

end A194268.P5494406704117155911

namespace A194268

/-- `abs(a(n-1)+16*n-1)` -/
def P5494406704117155911.Spec : Prop :=
  ∀ n, P5494406704117155911.a n = A194268 n

end A194268

/-! ## A194268.P18076674986103702942

`abs(8*lcm(n, n+1)+1-n)`
-/

namespace A194268.P18076674986103702942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * Nat.lcm n (n + 1) + 1 : ℤ) - (n : ℤ)|

end

end A194268.P18076674986103702942

namespace A194268

/-- `abs(8*lcm(n, n+1)+1-n)` -/
def P18076674986103702942.Spec : Prop :=
  ∀ n, P18076674986103702942.a n = A194268 n

end A194268

/-! ## A194268.P3979033635524330506

`abs(n²-n-xor(3*n, -1)²)`
-/

namespace A194268.P3979033635524330506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (n : ℤ) - Int.xor (3 * n : ℤ) (-1) ^ 2|

end

end A194268.P3979033635524330506

namespace A194268

/-- `abs(n²-n-xor(3*n, -1)²)` -/
def P3979033635524330506.Spec : Prop :=
  ∀ n, P3979033635524330506.a n = A194268 n

end A194268

/-! ## A194268.P14221001004554743292

`floor(4*4*n-(1-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A194268.P14221001004554743292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (4 * n) : ℤ) - (1 - a (n - 1))

end

end A194268.P14221001004554743292

namespace A194268

/-- `floor(4*4*n-(1-a(n-1)))` -/
def P14221001004554743292.Spec : Prop :=
  ∀ n, P14221001004554743292.a n = A194268 n

theorem P14221001004554743292.correct : P14221001004554743292.Spec := by
  intro n
  induction n with
  | zero => simp [A194268, A194268.P14221001004554743292.a, A194268.P13709870917259288745.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A194268, Nat.add_sub_cancel, A194268.P14221001004554743292.a, A194268.P13709870917259288745.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A194268

/-! ## A194268.P2179901594741832235

`(2*n+1)*(lcm(2, 2*n+1)-(n+1)/(2*n+1))`
-/

namespace A194268.P2179901594741832235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.lcm 2 (2 * n + 1) : ℚ) - (n + 1 : ℚ) / (2 * n + 1 : ℚ))

end

end A194268.P2179901594741832235

namespace A194268

/-- `(2*n+1)*(lcm(2, 2*n+1)-(n+1)/(2*n+1))` -/
def P2179901594741832235.Spec : Prop :=
  ∀ n, P2179901594741832235.a n = (A194268 n : ℚ)

end A194268

/-! ## A194268.P8157183084424034491

`∑[2*A022144(n)-1]`
-/

namespace A194268.P8157183084424034491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022144 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194268.P8157183084424034491

namespace A194268

/-- `∑[2*A022144(n)-1]` -/
def P8157183084424034491.Spec : Prop :=
  ∀ n, P8157183084424034491.a n = A194268 n

end A194268

/-! ## A194268.P8290946752229115432

`abs(n-(A035008(n)+1))`
-/

namespace A194268.P8290946752229115432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A035008 n + 1)|

end

end A194268.P8290946752229115432

namespace A194268

/-- `abs(n-(A035008(n)+1))` -/
def P8290946752229115432.Spec : Prop :=
  ∀ n, P8290946752229115432.a n = A194268 n

end A194268

/-! ## A194268.P13914090484578656101

`abs(A069129(n+1)-n)`
-/

namespace A194268.P13914090484578656101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069129 (n + 1) - (n : ℤ)|

end

end A194268.P13914090484578656101

namespace A194268

/-- `abs(A069129(n+1)-n)` -/
def P13914090484578656101.Spec : Prop :=
  ∀ n, P13914090484578656101.a n = A194268 n

end A194268

/-! ## A194268.P9927607469108023851

`abs(4*A046092(n)+1-n)`
-/

namespace A194268.P9927607469108023851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A046092 n + 1 - (n : ℤ)|

end

end A194268.P9927607469108023851

namespace A194268

/-- `abs(4*A046092(n)+1-n)` -/
def P9927607469108023851.Spec : Prop :=
  ∀ n, P9927607469108023851.a n = A194268 n

end A194268

/-! ## A194268.P12638425586093563159

`abs(2*(n-A016777(n))²-1-n)`
-/

namespace A194268.P12638425586093563159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) - A016777 n) ^ 2 - 1 - (n : ℤ)|

end

end A194268.P12638425586093563159

namespace A194268

/-- `abs(2*(n-A016777(n))²-1-n)` -/
def P12638425586093563159.Spec : Prop :=
  ∀ n, P12638425586093563159.a n = A194268 n

end A194268

/-! ## A194268.P14861616525806479560

`Δ[2*C(2*n+1, 3)-A000217(n)]`
-/

namespace A194268.P14861616525806479560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n + 1) 3 : ℤ) - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194268.P14861616525806479560

namespace A194268

/-- `Δ[2*C(2*n+1, 3)-A000217(n)]` -/
def P14861616525806479560.Spec : Prop :=
  ∀ n, P14861616525806479560.a n = A194268 n

theorem P14861616525806479560.correct : P14861616525806479560.Spec := by
  intro n
  simp only [A194268, Nat.add_sub_cancel, A194268.P14861616525806479560.f1, A194268.P14861616525806479560.a, A194268.P13709870917259288745.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A194268

/-! ## A194268.P5824066275873169557

`abs((A004767(n)+1)*2*n+1-n)`
-/

namespace A194268.P5824066275873169557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004767 n + 1) * (2 * n : ℤ) + 1 - (n : ℤ)|

end

end A194268.P5824066275873169557

namespace A194268

/-- `abs((A004767(n)+1)*2*n+1-n)` -/
def P5824066275873169557.Spec : Prop :=
  ∀ n, P5824066275873169557.a n = A194268 n

end A194268

/-! ## A194268.P11807273239377035019

`A193250(n+1)%A001539(n)`
-/

namespace A194268.P11807273239377035019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193250 (n + 1)) (A001539 n)

end

end A194268.P11807273239377035019

namespace A194268

/-- `A193250(n+1)%A001539(n)` -/
def P11807273239377035019.Spec : Prop :=
  ∀ n, P11807273239377035019.a n = A194268 n

end A194268

/-! ## A194268.P13707695738317037482

`A100167(n+1)%A273366(n)`
-/

namespace A194268.P13707695738317037482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100167 (n + 1)) (A273366 n)

end

end A194268.P13707695738317037482

namespace A194268

/-- `A100167(n+1)%A273366(n)` -/
def P13707695738317037482.Spec : Prop :=
  ∀ n, P13707695738317037482.a n = A194268 n

end A194268

/-! ## A194268.P15838499676465697812

`A180579(n+1)%A157914(n+1)`
-/

namespace A194268.P15838499676465697812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180579 (n + 1)) (A157914 (n + 1))

end

end A194268.P15838499676465697812

namespace A194268

/-- `A180579(n+1)%A157914(n+1)` -/
def P15838499676465697812.Spec : Prop :=
  ∀ n, P15838499676465697812.a n = A194268 n

end A194268

/-!
# A194269: Numbers j such that Sum_{i=1..k} d(i)^i = j+1 for some k where d(i) is the sorted list of divisors of j.

The programs for A194269, there is no canonical definition to state claims against.
-/

/-! ## A194269.P5397905567382699115

`eq[A032741(n), A324347(A158416(n))]`
-/

namespace A194269.P5397905567382699115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 (A158416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194269.P5397905567382699115

/-! ## A194269.P11879095902434644189

`eq[A154691(A154724(n+1)), A293813(n)]`
-/

namespace A194269.P11879095902434644189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (A154724 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194269.P11879095902434644189

/-! ## A194269.P12207637155190321079

`A067565(∪[A361283(n+3), A000040(n+1)²])`
-/

namespace A194269.P12207637155190321079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361283 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A194269.P12207637155190321079

/-! ## A194269.P15788070882626582866

`eq[A145574(n+2), A273974(A032741(n))]`
-/

namespace A194269.P15788070882626582866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145574 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273974 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194269.P15788070882626582866

/-! ## A194269.P11298933646066578556

`record[A084754(n+1)²%A250294(n+1)]`
-/

namespace A194269.P11298933646066578556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084754 (n + 1) ^ 2) (A250294 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194269.P11298933646066578556

/-!
# A194270: D-toothpick sequence of the second kind (see Comments lines for definition).

The programs for A194270, there is no canonical definition to state claims against.
-/

/-! ## A194270.P10283967671047764223

`∑[A194271(n)]`
-/

namespace A194270.P10283967671047764223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194270.P10283967671047764223

/-! ## A194270.P8272559965610326060

`A194271(char[1]+n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A194270.P8272559965610326060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A194271 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A194270.P8272559965610326060

/-! ## A194270.P9376793088006355733

`∑{d}[A000079(n), A194271(log2(#))]`
-/

namespace A194270.P9376793088006355733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A194271 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A194270.P9376793088006355733

/-! ## A194270.P2810724086347732695

`A194700(n)-and(16, floor(C(n, 2)/6))`
-/

namespace A194270.P2810724086347732695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194700 n - Int.land 16 ⌊(Nat.choose n 2 : ℚ) / 6⌋

end

end A194270.P2810724086347732695

/-! ## A194270.P12449227866280273114

`A194700(n)-A184955(n)²`
-/

namespace A194270.P12449227866280273114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194700 n - A184955 n ^ 2

end

end A194270.P12449227866280273114

/-!
# A194271: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A194270.

The programs for A194271, there is no canonical definition to state claims against.
-/

/-! ## A194271.P735866068814318320

`Δ[A194270(log2(ceil(2^(n-1))))]`
-/

namespace A194271.P735866068814318320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194271.P735866068814318320

/-! ## A194271.P10376898734569616237

`A194270(n)-A194270((2*n)%(n+1))`
-/

namespace A194271.P10376898734569616237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 n - A194270 (2 * n % (n + 1))

end

end A194271.P10376898734569616237

/-! ## A194271.P16158314098277103798

`A194270(n)-A194270(n-A057427(n))`
-/

namespace A194271.P16158314098277103798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 n - A194270 ((n : ℤ) - A057427 n).toNat

end

end A194271.P16158314098277103798

/-! ## A194271.P15876338918773761117

`A194270(n)-A194270(A244325(2*n+1))`
-/

namespace A194271.P15876338918773761117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 n - A194270 (A244325 (2 * n + 1)).toNat

end

end A194271.P15876338918773761117

/-! ## A194271.P1664695607904341897

`A194701(n)-Δ[A326455(n)]`
-/

namespace A194271.P1664695607904341897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194701 n - (f1 (n + 1) - f1 n)

end

end A194271.P1664695607904341897

/-!
# A194272: Array T(n,k) with 6 columns read by rows in which row n lists 3*n-2, 3*n-1, 3*n, 3*n, 3*n, 3*n.

The programs for A194272, the canonical program `A194272.P1389979581997444217` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194272 has offset 1).

The definition of A194272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194272.P1389979581997444217

`floor((n+4)/6)+floor((n+5)/6)+floor((n+6)/6)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194272

/-- `floor((n+4)/6)+floor((n+5)/6)+floor((n+6)/6)` -/
def P1389979581997444217.Spec : Prop :=
  ∀ n, P1389979581997444217.a n = A194272 (n + 1)

theorem P1389979581997444217.correct : P1389979581997444217.Spec := by
  intro n
  simp only [A194272, Nat.add_sub_cancel]

end A194272

/-! ## A194272.P10699668655216653434

`∑[log2(gcd(2, floor(n/3)))]`
-/

namespace A194272.P10699668655216653434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌊(n : ℚ) / 3⌋ : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P10699668655216653434

namespace A194272

/-- `∑[log2(gcd(2, floor(n/3)))]` -/
def P10699668655216653434.Spec : Prop :=
  ∀ n, P10699668655216653434.a n = (A194272 (n + 1) : ℝ)

end A194272

/-! ## A194272.P10184990619463934536

`∑[∑[char[3*n]]%2]`
-/

namespace A194272.P10184990619463934536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P10184990619463934536

namespace A194272

/-- `∑[∑[char[3*n]]%2]` -/
def P10184990619463934536.Spec : Prop :=
  ∀ n, (P10184990619463934536.a n : ℤ) = A194272 (n + 1)

end A194272

/-! ## A194272.P12295573285113106149

`∑[and(1, ∑[char[3*n]])]`
-/

namespace A194272.P12295573285113106149
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P12295573285113106149

namespace A194272

/-- `∑[and(1, ∑[char[3*n]])]` -/
def P12295573285113106149.Spec : Prop :=
  ∀ n, (P12295573285113106149.a n : ℤ) = A194272 (n + 1)

end A194272

/-! ## A194272.P16906155376645597043

`∑[ceil(sin((n+1)%6))]`
-/

namespace A194272.P16906155376645597043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 1) % 6 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P16906155376645597043

namespace A194272

/-- `∑[ceil(sin((n+1)%6))]` -/
def P16906155376645597043.Spec : Prop :=
  ∀ n, P16906155376645597043.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P18329525484121645290

`∑[ceil(cos((n-1)%6))]`
-/

namespace A194272.P18329525484121645290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Int.tmod ((n : ℤ) - 1) 6 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P18329525484121645290

namespace A194272

/-- `∑[ceil(cos((n-1)%6))]` -/
def P18329525484121645290.Spec : Prop :=
  ∀ n, P18329525484121645290.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P844064559453883995

`∑[ceil(cos(gcd(6, 1-n)))]`
-/

namespace A194272.P844064559453883995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Int.gcd 6 (1 - (n : ℤ)) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P844064559453883995

namespace A194272

/-- `∑[ceil(cos(gcd(6, 1-n)))]` -/
def P844064559453883995.Spec : Prop :=
  ∀ n, P844064559453883995.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P14385094869944153970

`∑[floor((n+3)%6/3)]`
-/

namespace A194272.P14385094869944153970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 3) % 6 : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P14385094869944153970

namespace A194272

/-- `∑[floor((n+3)%6/3)]` -/
def P14385094869944153970.Spec : Prop :=
  ∀ n, P14385094869944153970.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P3213979018712410905

`∑[∑[ogf(1/(1+x^3))]]`
-/

namespace A194272.P3213979018712410905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P3213979018712410905

namespace A194272

/-- `∑[∑[ogf(1/(1+x^3))]]` -/
def P3213979018712410905.Spec : Prop :=
  ∀ n, P3213979018712410905.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P15758183508864930225

`ogf(1/(1-2x+x^2+x^3-2x^4+x^5))`
-/

namespace A194272.P15758183508864930225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 1, -2, 1] n

end

end A194272.P15758183508864930225

namespace A194272

/-- `ogf(1/(1-2x+x^2+x^3-2x^4+x^5))` -/
def P15758183508864930225.Spec : Prop :=
  ∀ n, P15758183508864930225.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P5441481558301543117

`∑[1-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A194272.P5441481558301543117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  1 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P5441481558301543117

namespace A194272

/-- `∑[1-a(n-3)]` -/
def P5441481558301543117.Spec : Prop :=
  ∀ n, P5441481558301543117.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P15438380174020010503

`∑[(ceil((n+1)/3)%2)²]`
-/

namespace A194272.P15438380174020010503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / 3⌉ 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P15438380174020010503

namespace A194272

/-- `∑[(ceil((n+1)/3)%2)²]` -/
def P15438380174020010503.Spec : Prop :=
  ∀ n, P15438380174020010503.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P5267683016392678935

`∑[and(1, ceil((n+1)/3))²]`
-/

namespace A194272.P5267683016392678935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(n + 1 : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P5267683016392678935

namespace A194272

/-- `∑[and(1, ceil((n+1)/3))²]` -/
def P5267683016392678935.Spec : Prop :=
  ∀ n, P5267683016392678935.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P15615840609532551774

`∑[A088911(n)]`
-/

namespace A194272.P15615840609532551774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P15615840609532551774

namespace A194272

/-- `∑[A088911(n)]` -/
def P15615840609532551774.Spec : Prop :=
  ∀ n, P15615840609532551774.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P8936213742202671039

`∑[abs(A115360(n))]`
-/

namespace A194272.P8936213742202671039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P8936213742202671039

namespace A194272

/-- `∑[abs(A115360(n))]` -/
def P8936213742202671039.Spec : Prop :=
  ∀ n, P8936213742202671039.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P7360023993015136986

`∑[log2(A144110(n))]`
-/

namespace A194272.P7360023993015136986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A144110 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P7360023993015136986

namespace A194272

/-- `∑[log2(A144110(n))]` -/
def P7360023993015136986.Spec : Prop :=
  ∀ n, P7360023993015136986.a n = (A194272 (n + 1) : ℝ)

end A194272

/-! ## A194272.P18439088311567418414

`∑[2-A135265(n)]`
-/

namespace A194272.P18439088311567418414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A135265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P18439088311567418414

namespace A194272

/-- `∑[2-A135265(n)]` -/
def P18439088311567418414.Spec : Prop :=
  ∀ n, P18439088311567418414.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P1959704619890640720

`∑[char[A047240(n+1)]]`
-/

namespace A194272.P1959704619890640720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194272.P1959704619890640720

namespace A194272

/-- `∑[char[A047240(n+1)]]` -/
def P1959704619890640720.Spec : Prop :=
  ∀ n, (P1959704619890640720.a n : ℤ) = A194272 (n + 1)

end A194272

/-! ## A194272.P5614252219013556568

`Δ[A194273(n)]`
-/

namespace A194272.P5614252219013556568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194272.P5614252219013556568

namespace A194272

/-- `Δ[A194273(n)]` -/
def P5614252219013556568.Spec : Prop :=
  ∀ n, P5614252219013556568.a n = A194272 (n + 1)

end A194272

/-! ## A194272.P7388627542972717741

`(A028356(n+1)+n)/2`
-/

namespace A194272.P7388627542972717741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028356 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A194272.P7388627542972717741

namespace A194272

/-- `(A028356(n+1)+n)/2` -/
def P7388627542972717741.Spec : Prop :=
  ∀ n, P7388627542972717741.a n = (A194272 (n + 1) : ℚ)

end A194272

/-!
# A194273: Concentric triangular numbers (see Comments lines for definition).

The programs for A194273, the canonical program `A194273.P5955737308827147834` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194273 has offset 0).

The definition of A194273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194273.P9876949366791454295

`∑[∑[ceil(sin(n%6))]]`
-/

namespace A194273.P9876949366791454295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((n % 6 : ℕ) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P9876949366791454295

namespace A194273

/-- `∑[∑[ceil(sin(n%6))]]` -/
def P9876949366791454295.Spec : Prop :=
  ∀ n, P9876949366791454295.a n = A194273 n

end A194273

/-! ## A194273.P5955737308827147834

`∑[∑[ceil(n/3)%2]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194273

/-- `∑[∑[ceil(n/3)%2]]` -/
def P5955737308827147834.Spec : Prop :=
  ∀ n, P5955737308827147834.a n = A194273 n

theorem P5955737308827147834.correct : P5955737308827147834.Spec := by
  intro n
  simp only [A194273]

end A194273

/-! ## A194273.P431204500872956644

`∑[∑[and(1, ceil(n/3))]]`
-/

namespace A194273.P431204500872956644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P431204500872956644

namespace A194273

/-- `∑[∑[and(1, ceil(n/3))]]` -/
def P431204500872956644.Spec : Prop :=
  ∀ n, P431204500872956644.a n = A194273 n

end A194273

/-! ## A194273.P4288514846526981016

`∑[n-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A194273.P4288514846526981016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P4288514846526981016

namespace A194273

/-- `∑[n-a(n-3)]` -/
def P4288514846526981016.Spec : Prop :=
  ∀ n, P4288514846526981016.a n = A194273 n

end A194273

/-! ## A194273.P16557140953474524629

`C(n+1, 2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A194273.P16557140953474524629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (Nat.choose (n + 1) 2 : ℤ) - a (n - 3)

end

end A194273.P16557140953474524629

namespace A194273

/-- `C(n+1, 2)-a(n-3)` -/
def P16557140953474524629.Spec : Prop :=
  ∀ n, P16557140953474524629.a n = A194273 n

end A194273

/-! ## A194273.P3206625343377623834

`(n+1)*n/2-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A194273.P3206625343377623834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (n + 1 : ℚ) * ((n : ℚ) / 2) - a (n - 3)

end

end A194273.P3206625343377623834

namespace A194273

/-- `(n+1)*n/2-a(n-3)` -/
def P3206625343377623834.Spec : Prop :=
  ∀ n, P3206625343377623834.a n = (A194273 n : ℚ)

end A194273

/-! ## A194273.P3305105366310637473

`∑[(A260686(n)+n)/2]`
-/

namespace A194273.P3305105366310637473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260686 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P3305105366310637473

namespace A194273

/-- `∑[(A260686(n)+n)/2]` -/
def P3305105366310637473.Spec : Prop :=
  ∀ n, P3305105366310637473.a n = (A194273 n : ℚ)

end A194273

/-! ## A194273.P14323250630443334003

`∑[∑[char[A047245(n+1)]]]`
-/

namespace A194273.P14323250630443334003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P14323250630443334003

namespace A194273

/-- `∑[∑[char[A047245(n+1)]]]` -/
def P14323250630443334003.Spec : Prop :=
  ∀ n, (P14323250630443334003.a n : ℤ) = A194273 n

end A194273

/-! ## A194273.P2590026595752933703

`∑[∑[char[A047240(n+1)+1]]]`
-/

namespace A194273.P2590026595752933703
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P2590026595752933703

namespace A194273

/-- `∑[∑[char[A047240(n+1)+1]]]` -/
def P2590026595752933703.Spec : Prop :=
  ∀ n, (P2590026595752933703.a n : ℤ) = A194273 n

end A194273

/-! ## A194273.P1925954151913446074

`∑[∑[A000035(A130481(n))]]`
-/

namespace A194273.P1925954151913446074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A130481 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P1925954151913446074

namespace A194273

/-- `∑[∑[A000035(A130481(n))]]` -/
def P1925954151913446074.Spec : Prop :=
  ∀ n, P1925954151913446074.a n = A194273 n

end A194273

/-! ## A194273.P3349330822495252428

`A087811(n+1)-A088911(n)`
-/

namespace A194273.P3349330822495252428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A088911 n

end

end A194273.P3349330822495252428

namespace A194273

/-- `A087811(n+1)-A088911(n)` -/
def P3349330822495252428.Spec : Prop :=
  ∀ n, P3349330822495252428.a n = A194273 n

end A194273

/-! ## A194273.P6748118928234555462

`xor(A082873(n+1), A121262(n))`
-/

namespace A194273.P6748118928234555462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082873 (n + 1)) (A121262 n)

end

end A194273.P6748118928234555462

namespace A194273

/-- `xor(A082873(n+1), A121262(n))` -/
def P6748118928234555462.Spec : Prop :=
  ∀ n, P6748118928234555462.a n = A194273 n

end A194273

/-! ## A194273.P1887388940861268370

`∑[A194272(n+1)]-A194272(n+1)`
-/

namespace A194273.P1887388940861268370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194272 (n + 1)

end

end A194273.P1887388940861268370

namespace A194273

/-- `∑[A194272(n+1)]-A194272(n+1)` -/
def P1887388940861268370.Spec : Prop :=
  ∀ n, P1887388940861268370.a n = A194273 n

end A194273

/-! ## A194273.P8082381281441431824

`∑[∑[∑[A131531(n+2)]]]`
-/

namespace A194273.P8082381281441431824
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P8082381281441431824

namespace A194273

/-- `∑[∑[∑[A131531(n+2)]]]` -/
def P8082381281441431824.Spec : Prop :=
  ∀ n, P8082381281441431824.a n = A194273 n

end A194273

/-! ## A194273.P3694877827730641224

`A002620(n+2)-A088911(n)`
-/

namespace A194273.P3694877827730641224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A088911 n

end

end A194273.P3694877827730641224

namespace A194273

/-- `A002620(n+2)-A088911(n)` -/
def P3694877827730641224.Spec : Prop :=
  ∀ n, P3694877827730641224.a n = A194273 n

end A194273

/-! ## A194273.P13457981221410191065

`∑[∑[A000035(A002264(n+2))]]`
-/

namespace A194273.P13457981221410191065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002264 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P13457981221410191065

namespace A194273

/-- `∑[∑[A000035(A002264(n+2))]]` -/
def P13457981221410191065.Spec : Prop :=
  ∀ n, P13457981221410191065.a n = A194273 n

end A194273

/-! ## A194273.P5336763864800667848

`∑[∑[A131719(A131719(n)+n)]]`
-/

namespace A194273.P5336763864800667848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (A131719 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P5336763864800667848

namespace A194273

/-- `∑[∑[A131719(A131719(n)+n)]]` -/
def P5336763864800667848.Spec : Prop :=
  ∀ n, P5336763864800667848.a n = A194273 n

end A194273

/-! ## A194273.P6995094052082096336

`A171662(n+1)-A174709(n+1)`
-/

namespace A194273.P6995094052082096336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171662 (n + 1) - A174709 (n + 1)

end

end A194273.P6995094052082096336

namespace A194273

/-- `A171662(n+1)-A174709(n+1)` -/
def P6995094052082096336.Spec : Prop :=
  ∀ n, P6995094052082096336.a n = A194273 n

end A194273

/-! ## A194273.P15222151214576199551

`∑[∑[A000035(A004483(n+1))]]`
-/

namespace A194273.P15222151214576199551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004483 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194273.P15222151214576199551

namespace A194273

/-- `∑[∑[A000035(A004483(n+1))]]` -/
def P15222151214576199551.Spec : Prop :=
  ∀ n, P15222151214576199551.a n = A194273 n

end A194273

/-! ## A194273.P5022040408544552927

`A056827(n+2)+A008724(n+2)`
-/

namespace A194273.P5022040408544552927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (n + 2) + A008724 (n + 2)

end

end A194273.P5022040408544552927

namespace A194273

/-- `A056827(n+2)+A008724(n+2)` -/
def P5022040408544552927.Spec : Prop :=
  ∀ n, P5022040408544552927.a n = A194273 n

end A194273

/-!
# A194274: Concentric square numbers (see Comments lines for definition).

The programs for A194274, the canonical program `A194274.P14489480311325853230` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194274 has offset 0).

The definition of A194274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194274.P14489480311325853230

`n²-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194274

/-- `n²-a(n-2)` -/
def P14489480311325853230.Spec : Prop :=
  ∀ n, P14489480311325853230.a n = A194274 n

theorem P14489480311325853230.correct : P14489480311325853230.Spec := by
  intro n
  simp only [A194274]

end A194274

/-! ## A194274.P2988666136787852913

`floor(3*n/4)+floor((n*(n+2)+1)/2)-floor((3*n+1)/4)`
-/

namespace A194274.P2988666136787852913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n : ℚ) / 4⌋ + ⌊(n * (n + 2) + 1 : ℚ) / 2⌋ - ⌊(3 * n + 1 : ℚ) / 4⌋

end

end A194274.P2988666136787852913

namespace A194274

/-- `floor(3*n/4)+floor((n*(n+2)+1)/2)-floor((3*n+1)/4)` -/
def P2988666136787852913.Spec : Prop :=
  ∀ n, P2988666136787852913.a n = A194274 n

end A194274

/-! ## A194274.P18168095764151081792

`∑[∑[gcd(4, n)%4]]`
-/

namespace A194274.P18168095764151081792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P18168095764151081792

namespace A194274

/-- `∑[∑[gcd(4, n)%4]]` -/
def P18168095764151081792.Spec : Prop :=
  ∀ n, (P18168095764151081792.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P8647746771284497165

`∑[char[or(2, n)]+n]`
-/

namespace A194274.P8647746771284497165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P8647746771284497165

namespace A194274

/-- `∑[char[or(2, n)]+n]` -/
def P8647746771284497165.Spec : Prop :=
  ∀ n, (P8647746771284497165.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P138108297695088759

`∑[and(2, n)/2+n]`
-/

namespace A194274.P138108297695088759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P138108297695088759

namespace A194274

/-- `∑[and(2, n)/2+n]` -/
def P138108297695088759.Spec : Prop :=
  ∀ n, P138108297695088759.a n = (A194274 n : ℚ)

end A194274

/-! ## A194274.P10286216127577803056

`∑[C(n, 2)%2+n]`
-/

namespace A194274.P10286216127577803056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P10286216127577803056

namespace A194274

/-- `∑[C(n, 2)%2+n]` -/
def P10286216127577803056.Spec : Prop :=
  ∀ n, (P10286216127577803056.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P16958133119732862049

`∑[and(1, C(n, 2))+n]`
-/

namespace A194274.P16958133119732862049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P16958133119732862049

namespace A194274

/-- `∑[and(1, C(n, 2))+n]` -/
def P16958133119732862049.Spec : Prop :=
  ∀ n, (P16958133119732862049.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P8701511872967000760

`∑[C(n, or(2, n))+n]`
-/

namespace A194274.P8701511872967000760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 2 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P8701511872967000760

namespace A194274

/-- `∑[C(n, or(2, n))+n]` -/
def P8701511872967000760.Spec : Prop :=
  ∀ n, (P8701511872967000760.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P10732826136590179658

`∑[∑[and(3, and(n, -n))]]`
-/

namespace A194274.P10732826136590179658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (Int.land (n : ℤ) (-(n : ℤ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P10732826136590179658

namespace A194274

/-- `∑[∑[and(3, and(n, -n))]]` -/
def P10732826136590179658.Spec : Prop :=
  ∀ n, P10732826136590179658.a n = A194274 n

end A194274

/-! ## A194274.P17512548837352140753

`∑[∑[5%(n%4+1)]]`
-/

namespace A194274.P17512548837352140753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 % (n % 4 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P17512548837352140753

namespace A194274

/-- `∑[∑[5%(n%4+1)]]` -/
def P17512548837352140753.Spec : Prop :=
  ∀ n, (P17512548837352140753.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P489186569153382262

`∑[and(2, n)!+n-1]`
-/

namespace A194274.P489186569153382262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 2 n) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P489186569153382262

namespace A194274

/-- `∑[and(2, n)!+n-1]` -/
def P489186569153382262.Spec : Prop :=
  ∀ n, P489186569153382262.a n = A194274 n

end A194274

/-! ## A194274.P18199146058974746511

`∑[∑[(n²%8)²%7]]`
-/

namespace A194274.P18199146058974746511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 % 8) ^ 2 % 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P18199146058974746511

namespace A194274

/-- `∑[∑[(n²%8)²%7]]` -/
def P18199146058974746511.Spec : Prop :=
  ∀ n, (P18199146058974746511.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P3198303885677173150

`∑[and(1, ∑[n]+n)+n]`
-/

namespace A194274.P3198303885677173150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j + n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P3198303885677173150

namespace A194274

/-- `∑[and(1, ∑[n]+n)+n]` -/
def P3198303885677173150.Spec : Prop :=
  ∀ n, (P3198303885677173150.a n : ℤ) = A194274 n

end A194274

/-! ## A194274.P8291729484831573736

`∑[∑[2-a(n-2)]]` with `a(0)=0, a(1)=1`
-/

namespace A194274.P8291729484831573736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P8291729484831573736

namespace A194274

/-- `∑[∑[2-a(n-2)]]` -/
def P8291729484831573736.Spec : Prop :=
  ∀ n, P8291729484831573736.a n = A194274 n

end A194274

/-! ## A194274.P16454535377384753260

`∑[n+2-gcd(2, C(n, 2))]`
-/

namespace A194274.P16454535377384753260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd 2 (Nat.choose n 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P16454535377384753260

namespace A194274

/-- `∑[n+2-gcd(2, C(n, 2))]` -/
def P16454535377384753260.Spec : Prop :=
  ∀ n, P16454535377384753260.a n = A194274 n

end A194274

/-! ## A194274.P7203765642588706899

`floor(n*n-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A194274.P7203765642588706899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n * n : ℤ) - a (n - 2)

end

end A194274.P7203765642588706899

namespace A194274

/-- `floor(n*n-a(n-2))` -/
def P7203765642588706899.Spec : Prop :=
  ∀ n, P7203765642588706899.a n = A194274 n

theorem P7203765642588706899.correct : P7203765642588706899.Spec := by
  intro n
  simp only [A194274, Nat.add_sub_cancel, A194274.P7203765642588706899.a, A194274.P14489480311325853230.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A194274

/-! ## A194274.P1477266645496028036

`∑[1-(and(1, ∑[n-1])-n)]`
-/

namespace A194274.P1477266645496028036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P1477266645496028036

namespace A194274

/-- `∑[1-(and(1, ∑[n-1])-n)]` -/
def P1477266645496028036.Spec : Prop :=
  ∀ n, P1477266645496028036.a n = A194274 n

end A194274

/-! ## A194274.P17951387015538349349

`n*(n-a(n-2)/n)` with `a(0)=0, a(1)=1`
-/

namespace A194274.P17951387015538349349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) * ((n : ℚ) - a (n - 2) / (n : ℚ))

end

end A194274.P17951387015538349349

namespace A194274

/-- `n*(n-a(n-2)/n)` -/
def P17951387015538349349.Spec : Prop :=
  ∀ n, P17951387015538349349.a n = (A194274 n : ℚ)

end A194274

/-! ## A194274.P871932266501253691

`∑[gcd(n²-n, ∑[n-1])+n-1]`
-/

namespace A194274.P871932266501253691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n ^ 2 : ℤ) - (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194274.P871932266501253691

namespace A194274

/-- `∑[gcd(n²-n, ∑[n-1])+n-1]` -/
def P871932266501253691.Spec : Prop :=
  ∀ n, P871932266501253691.a n = A194274 n

end A194274

/-!
# A194275: Concentric pentagonal numbers of the second kind: a(n) = floor(5*n*(n+1)/6).

The programs for A194275, the canonical program `A194275.P3636034493063688304` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194275 has offset 0).

The definition of A194275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n*(n+1)/6)` (program `A194275.P3636034493063688304`, by `A194275.P3636034493063688304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194275.P3636034493063688304

`floor(5*n*(n+1)/6)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A194275

/-- `floor(5*n*(n+1)/6)` -/
def P3636034493063688304.Spec : Prop :=
  ∀ n, P3636034493063688304.a n = A194275 n

theorem P3636034493063688304.correct : P3636034493063688304.Spec := by
  intro n
  simp only [A194275]

end A194275

/-! ## A194275.P3343603645833022743

`∑[∑[gcd(3, n+1)]-1]`
-/

namespace A194275.P3343603645833022743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P3343603645833022743

namespace A194275

/-- `∑[∑[gcd(3, n+1)]-1]` -/
def P3343603645833022743.Spec : Prop :=
  ∀ n, P3343603645833022743.a n = A194275 n

end A194275

/-! ## A194275.P8106062914510357742

`∑[a(n-3)+5]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A194275.P8106062914510357742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P8106062914510357742

namespace A194275

/-- `∑[a(n-3)+5]` -/
def P8106062914510357742.Spec : Prop :=
  ∀ n, (P8106062914510357742.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P790195778310469269

`∑[∑[(n²-n)%3]+n]`
-/

namespace A194275.P790195778310469269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P790195778310469269

namespace A194275

/-- `∑[∑[(n²-n)%3]+n]` -/
def P790195778310469269.Spec : Prop :=
  ∀ n, P790195778310469269.a n = A194275 n

end A194275

/-! ## A194275.P4022447253456249824

`∑[n-∑[(n-n²)%3]]`
-/

namespace A194275.P4022447253456249824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (n ^ 2 : ℤ)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P4022447253456249824

namespace A194275

/-- `∑[n-∑[(n-n²)%3]]` -/
def P4022447253456249824.Spec : Prop :=
  ∀ n, P4022447253456249824.a n = A194275 n

end A194275

/-! ## A194275.P2039743254831131669

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A194275.P2039743254831131669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P2039743254831131669

namespace A194275

/-- `∑[∑[abs(a(n-3))]]` -/
def P2039743254831131669.Spec : Prop :=
  ∀ n, (P2039743254831131669.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P17129694371644472987

`∑[∑[or(1, a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A194275.P17129694371644472987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  Nat.lor 1 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P17129694371644472987

namespace A194275

/-- `∑[∑[or(1, a(n-3))]]` -/
def P17129694371644472987.Spec : Prop :=
  ∀ n, (P17129694371644472987.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P5250867651286247856

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A194275.P5250867651286247856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P5250867651286247856

namespace A194275

/-- `∑[∑[dr(a(n-3))]]` -/
def P5250867651286247856.Spec : Prop :=
  ∀ n, (P5250867651286247856.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P5048641277070011635

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A194275.P5048641277070011635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P5048641277070011635

namespace A194275

/-- `∑[∑[floor(a(n-3))]]` -/
def P5048641277070011635.Spec : Prop :=
  ∀ n, (P5048641277070011635.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P12440826535312193854

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A194275.P12440826535312193854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P12440826535312193854

namespace A194275

/-- `∑[∑[ceil(a(n-3))]]` -/
def P12440826535312193854.Spec : Prop :=
  ∀ n, (P12440826535312193854.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P2648195339407502169

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A194275.P2648195339407502169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P2648195339407502169

namespace A194275

/-- `∑[∑[round(a(n-3))]]` -/
def P2648195339407502169.Spec : Prop :=
  ∀ n, (P2648195339407502169.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P15559494003505138413

`∑[comp[∑[(3-a(n-1))²]]]` with `a(0)=2`
-/

namespace A194275.P15559494003505138413
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  (3 - f3 (n - 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P15559494003505138413

namespace A194275

/-- `∑[comp[∑[(3-a(n-1))²]]]` -/
def P15559494003505138413.Spec : Prop :=
  ∀ n, (P15559494003505138413.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P1960381507899353033

`∑[∑[a(n-3)%4]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A194275.P1960381507899353033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P1960381507899353033

namespace A194275

/-- `∑[∑[a(n-3)%4]]` -/
def P1960381507899353033.Spec : Prop :=
  ∀ n, (P1960381507899353033.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P17869176196664461197

`∑[∑[gcd(4-a(n-1), ∑[n])]]` with `a(0)=0`
-/

namespace A194275.P17869176196664461197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (4 - (f2 (n - 1) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P17869176196664461197

namespace A194275

/-- `∑[∑[gcd(4-a(n-1), ∑[n])]]` -/
def P17869176196664461197.Spec : Prop :=
  ∀ n, (P17869176196664461197.a n : ℤ) = A194275 n

end A194275

/-! ## A194275.P161081671771559930

`a(n-3)+5*(n-1)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A194275.P161081671771559930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  a (n - 3) + 5 * ((n : ℤ) - 1)

end

end A194275.P161081671771559930

namespace A194275

/-- `a(n-3)+5*(n-1)` -/
def P161081671771559930.Spec : Prop :=
  ∀ n, P161081671771559930.a n = A194275 n

end A194275

/-! ## A194275.P3468039817683779899

`5*n-(5-a(n-3))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A194275.P3468039817683779899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  (5 * n : ℤ) - (5 - a (n - 3))

end

end A194275.P3468039817683779899

namespace A194275

/-- `5*n-(5-a(n-3))` -/
def P3468039817683779899.Spec : Prop :=
  ∀ n, P3468039817683779899.a n = A194275 n

end A194275

/-! ## A194275.P9129576298766533406

`∑[n]-∑[a(n-3)-2]` with `a(0)=0, a(1)=0, a(2)=-2`
-/

namespace A194275.P9129576298766533406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -2] fun n f2 =>
  f2 (n - 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194275.P9129576298766533406

namespace A194275

/-- `∑[n]-∑[a(n-3)-2]` -/
def P9129576298766533406.Spec : Prop :=
  ∀ n, P9129576298766533406.a n = A194275 n

end A194275

/-! ## A194275.P8594339449554722047

`∑[A008854(n+1)]`
-/

namespace A194275.P8594339449554722047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P8594339449554722047

namespace A194275

/-- `∑[A008854(n+1)]` -/
def P8594339449554722047.Spec : Prop :=
  ∀ n, P8594339449554722047.a n = A194275 n

end A194275

/-! ## A194275.P15916179412793843667

`∑[A047395(n+1)-n]`
-/

namespace A194275.P15916179412793843667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P15916179412793843667

namespace A194275

/-- `∑[A047395(n+1)-n]` -/
def P15916179412793843667.Spec : Prop :=
  ∀ n, P15916179412793843667.a n = A194275 n

end A194275

/-! ## A194275.P16084216491679809790

`∑[A047529(n+1)-(n+1)]`
-/

namespace A194275.P16084216491679809790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194275.P16084216491679809790

namespace A194275

/-- `∑[A047529(n+1)-(n+1)]` -/
def P16084216491679809790.Spec : Prop :=
  ∀ n, P16084216491679809790.a n = A194275 n

end A194275

/-!
# A194276: Number of distinct polygonal shapes after n-th stage in the D-toothpick structure of A194270.

The programs for A194276, there is no canonical definition to state claims against.
-/

/-! ## A194276.P4542526816706705479

`∑[2-char[2^n-1]-A342592(n+4)]`
-/

namespace A194276.P4542526816706705479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A342592 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194276.P4542526816706705479

/-! ## A194276.P2769079619348336356

`∑[A086971(record[A104204(n)])]`
-/

namespace A194276.P2769079619348336356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194276.P2769079619348336356

/-! ## A194276.P16482058713784473266

`∑[A267263(2*n+1)-A331034(n+1)]`
-/

namespace A194276.P16482058713784473266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (2 * n + 1) - A331034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194276.P16482058713784473266

/-! ## A194276.P5435310493547040093

`∑[and(A201239(2*n+1), A332292(3*n))]`
-/

namespace A194276.P5435310493547040093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201239 (2 * n + 1)) (A332292 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194276.P5435310493547040093

/-!
# A194278: Total number of polygons after n-th stage in the D-toothpick structure of A194270.

The programs for A194278, there is no canonical definition to state claims against.
-/

/-! ## A194278.P3717992513589497027

`2*floor((2^n-(∑[n]+1))/sqrt(A057694(n+1)))`
-/

namespace A194278.P3717992513589497027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) : ℝ) / Real.sqrt (A057694 (n + 1) : ℝ)⌋

end

end A194278.P3717992513589497027

/-! ## A194278.P15214901525015601686

`A182836(n)-A004526(A182836(n+1))`
-/

namespace A194278.P15214901525015601686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182836 n - A004526 (A182836 (n + 1)).toNat

end

end A194278.P15214901525015601686

/-!
# A194279: Self-convolution cube of A073711.

The programs for A194279, there is no canonical definition to state claims against.
-/

/-! ## A194279.P14849954610880320924

`A073712(2*n+1)/2`
-/

namespace A194279.P14849954610880320924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073712 (2 * n + 1) : ℚ) / 2

end

end A194279.P14849954610880320924

/-! ## A194279.P1893118936977520038

`A073711(4*n+3)/2`
-/

namespace A194279.P1893118936977520038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073711 (4 * n + 3) : ℚ) / 2

end

end A194279.P1893118936977520038

/-! ## A194279.P9695108069103969181

`A289440(A073712(2*n+1))`
-/

namespace A194279.P9695108069103969181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A073712 (2 * n + 1)).toNat

end

end A194279.P9695108069103969181

/-! ## A194279.P16664771713682027088

`A002265(2*A073712(2*n+1))`
-/

namespace A194279.P16664771713682027088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A073712 (2 * n + 1)).toNat

end

end A194279.P16664771713682027088

/-!
# A194280: Inverse permutation to A081344.

The programs for A194280, there is no canonical definition to state claims against.
-/

/-! ## A194280.P15315495794971895704

`A000217(A209302(n+1))-A319290(n)`
-/

namespace A194280.P15315495794971895704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A209302 (n + 1)).toNat - A319290 n

end

end A194280.P15315495794971895704

/-! ## A194280.P15650746920341419840

`A000124(A209302(n+1))-A220603(n+1)`
-/

namespace A194280.P15650746920341419840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A209302 (n + 1)).toNat - A220603 (n + 1)

end

end A194280.P15650746920341419840

/-! ## A194280.P16982168347329197916

`A220603(A020703(n+1))+A161680(A209302(n+1))`
-/

namespace A194280.P16982168347329197916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A020703 (n + 1)).toNat + A161680 (A209302 (n + 1)).toNat

end

end A194280.P16982168347329197916

/-! ## A194280.P862060596113390020

`A064790(A081344(A064790(n+1)))`
-/

namespace A194280.P862060596113390020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064790 (A081344 (A064790 (n + 1)).toNat).toNat

end

end A194280.P862060596113390020

/-! ## A194280.P1132604138429484081

`A127739(A214928(n+1))-A319290(n)`
-/

namespace A194280.P1132604138429484081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A214928 (n + 1)).toNat - A319290 n

end

end A194280.P1132604138429484081

/-! ## A194280.P13304889285106967

`A127739(A214929(n+1))-A319290(n)`
-/

namespace A194280.P13304889285106967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A214929 (n + 1)).toNat - A319290 n

end

end A194280.P13304889285106967

/-! ## A194280.P3619662415864230791

`A211377(A216253(n+1))-A329116(n)`
-/

namespace A194280.P3619662415864230791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216253 (n + 1)).toNat - A329116 n

end

end A194280.P3619662415864230791

/-! ## A194280.P3009747252062780073

`A064578(A064578(A057028(A214929(n+1))))`
-/

namespace A194280.P3009747252062780073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (A064578 (A057028 (A214929 (n + 1)).toNat).toNat).toNat

end

end A194280.P3009747252062780073

/-! ## A194280.P10477747877458783047

`A211377(A216253(A060734(A211377(A216252(n+1)))))`
-/

namespace A194280.P10477747877458783047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216253 (A060734 (A211377 (A216252 (n + 1)).toNat).toNat).toNat).toNat

end

end A194280.P10477747877458783047

/-! ## A194280.P7690312433777058398

`A188568(A064788(n+1))`
-/

namespace A194280.P7690312433777058398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A064788 (n + 1)).toNat

end

end A194280.P7690312433777058398

/-! ## A194280.P3991659011408433534

`A188568(A185180(A214928(n+1)))`
-/

namespace A194280.P3991659011408433534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A185180 (A214928 (n + 1)).toNat).toNat

end

end A194280.P3991659011408433534

/-!
# A194282: Variant of the even lucky numbers (A045954).

The programs for A194282, there is no canonical definition to state claims against.
-/

/-! ## A194282.P463378778011529683

`A016825(lt[A132000(n), A132016(3*(n+1))])`
-/

namespace A194282.P463378778011529683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194282.P463378778011529683

/-! ## A194282.P787832642778927818

`A016825(lt[A132000(n), A132009(3*n+4)])`
-/

namespace A194282.P787832642778927818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132009 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194282.P787832642778927818

/-! ## A194282.P8597651669820215289

`A102240(A102861(n+1))`
-/

namespace A194282.P8597651669820215289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102240 (A102861 (n + 1)).toNat

end

end A194282.P8597651669820215289

/-! ## A194282.P8854302029329857715

`eq[A202626(n+1), A267418(n)]`
-/

namespace A194282.P8854302029329857715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194282.P8854302029329857715

/-! ## A194282.P14618431642978680170

`eq[A011765(A350840(n)), A146559(n)]`
-/

namespace A194282.P14618431642978680170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A350840 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194282.P14618431642978680170

/-!
# A194284: Entries n of A194234 for which the cototient A051953(n) is a composite number.

The programs for A194284, there is no canonical definition to state claims against.
-/

/-! ## A194284.P14557308749968349138

`filter[A194234(n+1), A066829(#)]`
-/

namespace A194284.P14557308749968349138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A194284.P14557308749968349138

/-! ## A194284.P447055718413866880

`filter[A194234(n+1), A087049(#)]`
-/

namespace A194284.P447055718413866880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A194284.P447055718413866880

/-! ## A194284.P10982516534481038683

`filter[A194234(n+1), A091862(#)]`
-/

namespace A194284.P10982516534481038683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A194284.P10982516534481038683

/-! ## A194284.P13589909944789757333

`filter[A194234(n+1), A101605(#)]`
-/

namespace A194284.P13589909944789757333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A194284.P13589909944789757333

/-! ## A194284.P4402969879184154309

`filter[A194234(n+1), A107078(#)]`
-/

namespace A194284.P4402969879184154309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A194284.P4402969879184154309

/-!
# A194285: Triangular array: g(n,k)=number of fractional parts (i*sqrt(2)) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n.

The programs for A194285, there is no canonical definition to state claims against.
-/

/-! ## A194285.P7677172967132191939

`A194325(∑[char[∑[n]]]²-n)`
-/

namespace A194285.P7677172967132191939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194325 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194285.P7677172967132191939

/-! ## A194285.P8587381721303266379

`A194325(A038722(n+1))%3`
-/

namespace A194285.P8587381721303266379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194325 (A038722 (n + 1)).toNat) 3

end

end A194285.P8587381721303266379

/-! ## A194285.P18353261922598574064

`and(A139250(n+2), A194325(A038722(n+1)))`
-/

namespace A194285.P18353261922598574064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139250 (n + 2)) (A194325 (A038722 (n + 1)).toNat)

end

end A194285.P18353261922598574064

/-! ## A194285.P360994666964208929

`a(A000038(n))*A194325(A038722(n+1))` with `a(0)=1`
-/

namespace A194285.P360994666964208929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A000038 n).toNat * A194325 (A038722 (n + 1)).toNat

end

end A194285.P360994666964208929

/-! ## A194285.P15858699608623108039

`A194325(A038722(n+1))+A112607(3*n+2)`
-/

namespace A194285.P15858699608623108039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194325 (A038722 (n + 1)).toNat + A112607 (3 * n + 2)

end

end A194285.P15858699608623108039

/-!
# A194286: Triangular array: g(n,k)=number of fractional parts (i*sqrt(2)) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n.

The programs for A194286, there is no canonical definition to state claims against.
-/

/-! ## A194286.P12809329453777286048

`A194326(A038722(n+1))`
-/

namespace A194286.P12809329453777286048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194326 (A038722 (n + 1)).toNat

end

end A194286.P12809329453777286048

/-! ## A194286.P10001406769365079894

`A194326(A061579(n)+1)`
-/

namespace A194286.P10001406769365079894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194326 (A061579 n + 1).toNat

end

end A194286.P10001406769365079894

/-! ## A194286.P5854519032698066824

`A194326(A093995(n+1)-n)`
-/

namespace A194286.P5854519032698066824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194326 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A194286.P5854519032698066824

/-! ## A194286.P8788656599959311597

`A194326(A002024(n+1)²-n)`
-/

namespace A194286.P8788656599959311597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194326 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A194286.P8788656599959311597

/-! ## A194286.P15101672705199028136

`A194326((1-A003057(n+2))²-n)`
-/

namespace A194286.P15101672705199028136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194326 ((1 - A003057 (n + 2)) ^ 2 - (n : ℤ)).toNat

end

end A194286.P15101672705199028136

/-!
# A194287: Triangular array: g(n,k)=number of fractional parts (i*sqrt(2)) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n.

The programs for A194287, there is no canonical definition to state claims against.
-/

/-! ## A194287.P14084025203290342283

`A194327(A038722(n+1))`
-/

namespace A194287.P14084025203290342283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A038722 (n + 1)).toNat

end

end A194287.P14084025203290342283

/-! ## A194287.P15811141702415782494

`A194327(A061579(n)+1)`
-/

namespace A194287.P15811141702415782494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A061579 n + 1).toNat

end

end A194287.P15811141702415782494

/-! ## A194287.P2794115902900545363

`A194327(A114327(n)+1+n)`
-/

namespace A194287.P2794115902900545363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A114327 n + 1 + (n : ℤ)).toNat

end

end A194287.P2794115902900545363

/-! ## A194287.P803199582820553248

`A194327(A057944(n)+A004736(n+1))`
-/

namespace A194287.P803199582820553248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A057944 n + A004736 (n + 1)).toNat

end

end A194287.P803199582820553248

/-! ## A194287.P6003713407480093450

`A194327(A185869(n+1)-A016777(n))`
-/

namespace A194287.P6003713407480093450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A185869 (n + 1) - A016777 n).toNat

end

end A194287.P6003713407480093450

/-!
# A194288: Triangular array: g(n,k)=number of fractional parts (i*sqrt(2)) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n.

The programs for A194288, there is no canonical definition to state claims against.
-/

/-! ## A194288.P13105719878432219923

`A194328(∑[char[∑[n]]]²-n)`
-/

namespace A194288.P13105719878432219923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194328 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194288.P13105719878432219923

/-! ## A194288.P14061130540350785694

`xor(1, xor(1, A194328(A038722(n+1))))`
-/

namespace A194288.P14061130540350785694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A194328 (A038722 (n + 1)).toNat))

end

end A194288.P14061130540350785694

/-! ## A194288.P11961641506237398164

`A194328(A038722(n+1))%A005339(n)`
-/

namespace A194288.P11961641506237398164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194328 (A038722 (n + 1)).toNat) (A005339 (n + 12))

end

end A194288.P11961641506237398164

/-! ## A194288.P18070112237515861791

`A194328(A038722(n+1))/A033999(n)²`
-/

namespace A194288.P18070112237515861791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194328 (A038722 (n + 1)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A194288.P18070112237515861791

/-! ## A194288.P12287113214472213008

`A194328(A038722(n+1))+A000007(n+1)`
-/

namespace A194288.P12287113214472213008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194328 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A194288.P12287113214472213008

/-! ## A194288.P14032448444281007920

`A194328(A038722(n+1))+A023036(n)%2`
-/

namespace A194288.P14032448444281007920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194328 (A038722 (n + 1)).toNat + Int.tmod (A023036 n) 2

end

end A194288.P14032448444281007920

/-! ## A194288.P741162308746379736

`A273250(n)%2*A194328(A038722(n+1))`
-/

namespace A194288.P741162308746379736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273250 n) 2 * A194328 (A038722 (n + 1)).toNat

end

end A194288.P741162308746379736

/-! ## A194288.P4911228672706015325

`A194328(A038722(n+1))^A002443(C(2, n))`
-/

namespace A194288.P4911228672706015325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194328 (A038722 (n + 1)).toNat : ℚ) ^ (A002443 (Nat.choose 2 n) : ℤ)

end

end A194288.P4911228672706015325

/-! ## A194288.P12952575681603378294

`A194328(A038722(n+1))+A005928(3*n+2)`
-/

namespace A194288.P12952575681603378294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194328 (A038722 (n + 1)).toNat + A005928 (3 * n + 2)

end

end A194288.P12952575681603378294

/-! ## A194288.P1997100669609840273

`A194328(A038722(n+1))/A001511(2*n+1)`
-/

namespace A194288.P1997100669609840273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194328 (A038722 (n + 1)).toNat : ℚ) / (A001511 (2 * n + 1) : ℚ)

end

end A194288.P1997100669609840273

/-! ## A194288.P12649190461396532724

`A020639(gcd(n, n+1))*A194328(A038722(n+1))`
-/

namespace A194288.P12649190461396532724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A194328 (A038722 (n + 1)).toNat

end

end A194288.P12649190461396532724

/-! ## A194288.P16355405031381867860

`A194328(A038722(n+1))+A000045(C(n, n+1))`
-/

namespace A194288.P16355405031381867860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194328 (A038722 (n + 1)).toNat + A000045 (Nat.choose n (n + 1))

end

end A194288.P16355405031381867860

/-! ## A194288.P3684299670740134107

`A057427(A225531(n))*A194328(A038722(n+1))`
-/

namespace A194288.P3684299670740134107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A225531 n).toNat * A194328 (A038722 (n + 1)).toNat

end

end A194288.P3684299670740134107

/-! ## A194288.P5118942999621186171

`A000035(A191131(n+1))*A194328(A038722(n+1))`
-/

namespace A194288.P5118942999621186171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A191131 (n + 1)).toNat * A194328 (A038722 (n + 1)).toNat

end

end A194288.P5118942999621186171

/-!
# A194289: Triangular array: g(n,k)=number of fractional parts (i*sqrt(3)) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n.

The programs for A194289, there is no canonical definition to state claims against.
-/

/-! ## A194289.P12200233387916545636

`A194329(∑[char[∑[n]]]²-n)`
-/

namespace A194289.P12200233387916545636
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194329 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194289.P12200233387916545636

/-! ## A194289.P10143175760243868055

`and(A088530(A283543(n+1)), A152884(n))`
-/

namespace A194289.P10143175760243868055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088530 (A283543 (n + 1)).toNat) (A152884 n)

end

end A194289.P10143175760243868055

/-! ## A194289.P16718620617011250318

`gcd(A007877(3*(n+1)), A007877(A333333(n+1)))`
-/

namespace A194289.P16718620617011250318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007877 (3 * (n + 1))) (A007877 (A333333 (n + 1)).toNat)

end

end A194289.P16718620617011250318

/-!
# A194290: Triangular array: g(n,k)=number of fractional parts (i*sqrt(3)) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n.

The programs for A194290, there is no canonical definition to state claims against.
-/

/-! ## A194290.P16242641162428675614

`A194330(A038722(n+1))`
-/

namespace A194290.P16242641162428675614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194330 (A038722 (n + 1)).toNat

end

end A194290.P16242641162428675614

/-! ## A194290.P10937483795755844811

`A194330(A061579(n)+1)`
-/

namespace A194290.P10937483795755844811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194330 (A061579 n + 1).toNat

end

end A194290.P10937483795755844811

/-! ## A194290.P5210847729079134730

`A194330(A114327(n)+1+n)`
-/

namespace A194290.P5210847729079134730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194330 (A114327 n + 1 + (n : ℤ)).toNat

end

end A194290.P5210847729079134730

/-! ## A194290.P14180256657670426234

`A194330(A093995(n+1)-n)`
-/

namespace A194290.P14180256657670426234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194330 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A194290.P14180256657670426234

/-! ## A194290.P4945638942906222685

`A194330(A057944(n)+A004736(n+1))`
-/

namespace A194290.P4945638942906222685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194330 (A057944 n + A004736 (n + 1)).toNat

end

end A194290.P4945638942906222685

/-!
# A194291: Triangular array: g(n,k)=number of fractional parts (i*sqrt(3)) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n.

The programs for A194291, there is no canonical definition to state claims against.
-/

/-! ## A194291.P1823245707064620171

`A194331(A038722(n+1))`
-/

namespace A194291.P1823245707064620171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194331 (A038722 (n + 1)).toNat

end

end A194291.P1823245707064620171

/-! ## A194291.P2886283426285736435

`A194331(A061579(n)+1)`
-/

namespace A194291.P2886283426285736435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194331 (A061579 n + 1).toNat

end

end A194291.P2886283426285736435

/-! ## A194291.P15289648698978549852

`A194331(A114327(n)+1+n)`
-/

namespace A194291.P15289648698978549852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194331 (A114327 n + 1 + (n : ℤ)).toNat

end

end A194291.P15289648698978549852

/-! ## A194291.P1950729530249341252

`A194331(A093995(n+1)-n)`
-/

namespace A194291.P1950729530249341252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194331 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A194291.P1950729530249341252

/-! ## A194291.P14924803041549413952

`A194331(A265129(n+1)-(n+1))`
-/

namespace A194291.P14924803041549413952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194331 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A194291.P14924803041549413952

/-! ## A194291.P7847289775875709982

`A194331(A127739(n+1)-A002262(n))`
-/

namespace A194291.P7847289775875709982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194331 (A127739 (n + 1) - A002262 n).toNat

end

end A194291.P7847289775875709982

/-!
# A194292: Triangular array: g(n,k)=number of fractional parts (i*sqrt(3)) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n.

The programs for A194292, there is no canonical definition to state claims against.
-/

/-! ## A194292.P4386332120821396872

`A194332(∑[char[∑[n]]]²-n)`
-/

namespace A194292.P4386332120821396872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194332 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194292.P4386332120821396872

/-! ## A194292.P3928801261997229447

`or(char[4], A194332(A038722(n+1)))`
-/

namespace A194292.P3928801261997229447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A194332 (A038722 (n + 1)).toNat)

end

end A194292.P3928801261997229447

/-! ## A194292.P9134767823043465836

`A194332(A038722(n+1))%A016898(n)`
-/

namespace A194292.P9134767823043465836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194332 (A038722 (n + 1)).toNat) (A016898 n)

end

end A194292.P9134767823043465836

/-! ## A194292.P12870189810888519072

`gcd(A000038(n), A194332(A038722(n+1)))`
-/

namespace A194292.P12870189810888519072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194332 (A038722 (n + 1)).toNat)

end

end A194292.P12870189810888519072

/-! ## A194292.P15293594556854965464

`lcm(A033999(n), A194332(A038722(n+1)))`
-/

namespace A194292.P15293594556854965464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194332 (A038722 (n + 1)).toNat)

end

end A194292.P15293594556854965464

/-! ## A194292.P13044023940649680447

`A194332(A038722(n+1))+val(A000079(n), 7)`
-/

namespace A194292.P13044023940649680447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194332 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A000079 n).toNat 7 : ℤ)

end

end A194292.P13044023940649680447

/-! ## A194292.P6952543024221500652

`A194332(A038722(n+1))+val(A142090(n+1), 7)`
-/

namespace A194292.P6952543024221500652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194332 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A142090 (n + 1)).toNat 7 : ℤ)

end

end A194292.P6952543024221500652

/-! ## A194292.P11893071333712289318

`A194332(A038722(n+1))+C(A001221(n+1), 6)`
-/

namespace A194292.P11893071333712289318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194332 (A038722 (n + 1)).toNat + (Nat.choose (A001221 (n + 1)).toNat 6 : ℤ)

end

end A194292.P11893071333712289318

/-!
# A194293: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=(1+sqrt(5))/2, the golden ratio.

The programs for A194293, there is no canonical definition to state claims against.
-/

/-! ## A194293.P6313541162704000750

`A194333(A038722(n+1))`
-/

namespace A194293.P6313541162704000750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194333 (A038722 (n + 1)).toNat

end

end A194293.P6313541162704000750

/-! ## A194293.P2107651923979582547

`A194333(A061579(n)+1)`
-/

namespace A194293.P2107651923979582547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194333 (A061579 n + 1).toNat

end

end A194293.P2107651923979582547

/-! ## A194293.P15603897547747740649

`A298848(A254035(n+1)%(A066086(n+1)+1))`
-/

namespace A194293.P15603897547747740649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298848 (Int.tmod (A254035 (n + 1)) (A066086 (n + 1) + 1)).toNat

end

end A194293.P15603897547747740649

/-! ## A194293.P14919567741051275855

`A194285(∏{p}[A117817(3*n+2), #])`
-/

namespace A194293.P14919567741051275855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117817 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A194293.P14919567741051275855

/-! ## A194293.P8505484747449181827

`A144409(gcd(A144425(n+1), A144459(n)))`
-/

namespace A194293.P8505484747449181827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144409 (Int.gcd (A144425 (n + 1)) (A144459 n))

end

end A194293.P8505484747449181827

/-!
# A194294: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=2n, r=(1+sqrt(5))/2, the golden ratio.

The programs for A194294, there is no canonical definition to state claims against.
-/

/-! ## A194294.P3761452078417132701

`A194334(A038722(n+1))`
-/

namespace A194294.P3761452078417132701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194334 (A038722 (n + 1)).toNat

end

end A194294.P3761452078417132701

/-! ## A194294.P14306132675772887137

`A194334(A061579(n)+1)`
-/

namespace A194294.P14306132675772887137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194334 (A061579 n + 1).toNat

end

end A194294.P14306132675772887137

/-! ## A194294.P10924167028393715819

`A194334(∑[A198954(n)]-n)`
-/

namespace A194294.P10924167028393715819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194334 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A194294.P10924167028393715819

/-! ## A194294.P5735080897205186264

`A194334(A114327(n)+1+n)`
-/

namespace A194294.P5735080897205186264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194334 (A114327 n + 1 + (n : ℤ)).toNat

end

end A194294.P5735080897205186264

/-! ## A194294.P1650072167615184680

`A194334(A093995(n+1)-n)`
-/

namespace A194294.P1650072167615184680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194334 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A194294.P1650072167615184680

/-!
# A194295: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n^2, r=(1+sqrt(5))/2, the golden ratio.

The programs for A194295, there is no canonical definition to state claims against.
-/

/-! ## A194295.P11449683893757755626

`A194335(A038722(n+1))`
-/

namespace A194295.P11449683893757755626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A038722 (n + 1)).toNat

end

end A194295.P11449683893757755626

/-! ## A194295.P1546958116245112412

`A194335(A061579(n)+1)`
-/

namespace A194295.P1546958116245112412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A061579 n + 1).toNat

end

end A194295.P1546958116245112412

/-! ## A194295.P14141755797699844199

`A194335(A093995(n+1)-n)`
-/

namespace A194295.P14141755797699844199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A194295.P14141755797699844199

/-! ## A194295.P17440738437436611065

`A194335(A002024(n+1)²-n)`
-/

namespace A194295.P17440738437436611065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A194295.P17440738437436611065

/-! ## A194295.P5899238652126487284

`A194335(A127739(n+1)-A002262(n))`
-/

namespace A194295.P5899238652126487284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A127739 (n + 1) - A002262 n).toNat

end

end A194295.P5899238652126487284

/-!
# A194296: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=2^n, r=(1+sqrt(5))/2, the golden ratio.

The programs for A194296, there is no canonical definition to state claims against.
-/

/-! ## A194296.P11471921264963919949

`A194336(∑[char[∑[n]]]²-n)`
-/

namespace A194296.P11471921264963919949
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194336 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194296.P11471921264963919949

/-! ## A194296.P3438588334261277055

`and(-1, A194336(A038722(n+1)))`
-/

namespace A194296.P3438588334261277055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A194336 (A038722 (n + 1)).toNat)

end

end A194296.P3438588334261277055

/-! ## A194296.P397641807500755996

`A194336(A038722(n+1))%A016936(n)`
-/

namespace A194296.P397641807500755996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194336 (A038722 (n + 1)).toNat) (A016936 n)

end

end A194296.P397641807500755996

/-! ## A194296.P15654624939886869838

`gcd(A000038(n), A194336(A038722(n+1)))`
-/

namespace A194296.P15654624939886869838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194336 (A038722 (n + 1)).toNat)

end

end A194296.P15654624939886869838

/-! ## A194296.P14704859648086355252

`lcm(A033999(n), A194336(A038722(n+1)))`
-/

namespace A194296.P14704859648086355252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194336 (A038722 (n + 1)).toNat)

end

end A194296.P14704859648086355252

/-! ## A194296.P2407246832143132593

`A000040(n+2)%2*A194336(A038722(n+1))`
-/

namespace A194296.P2407246832143132593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A194336 (A038722 (n + 1)).toNat

end

end A194296.P2407246832143132593

/-! ## A194296.P8908343879632926607

`A194336(A114327(n)+1+n)%A194355(n+1)`
-/

namespace A194296.P8908343879632926607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194336 (A114327 n + 1 + (n : ℤ)).toNat) (A194355 (n + 1))

end

end A194296.P8908343879632926607

/-! ## A194296.P10234918118342712390

`gcd(A106458(2*n+1), A194336(A114327(n)+1+n))`
-/

namespace A194296.P10234918118342712390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106458 (2 * n + 1)) (A194336 (A114327 n + 1 + (n : ℤ)).toNat)

end

end A194296.P10234918118342712390

/-! ## A194296.P9003492559044202355

`A194336(A038722(n+1))-A000032(C(n, n+2))+2`
-/

namespace A194296.P9003492559044202355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194336 (A038722 (n + 1)).toNat - A000032 (Nat.choose n (n + 2)) + 2

end

end A194296.P9003492559044202355

/-!
# A194297: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=(1+sqrt(3))/2.

The programs for A194297, there is no canonical definition to state claims against.
-/

/-! ## A194297.P3870070221536221444

`A194285(A007504(3*n+1)+A003543(n+1))`
-/

namespace A194297.P3870070221536221444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A007504 (3 * n + 1) + A003543 (n + 1)).toNat

end

end A194297.P3870070221536221444

/-!
# A194299: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=(1+sqrt(3))/2.

The programs for A194299, there is no canonical definition to state claims against.
-/

/-! ## A194299.P6258070307966960838

`A104234(A061201(n+3))+A003056(n)`
-/

namespace A194299.P6258070307966960838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 (A061201 (n + 3)).toNat + A003056 n

end

end A194299.P6258070307966960838

/-! ## A194299.P1634224504220419480

`A001222(A307087(3*n)+A051438(n+1))`
-/

namespace A194299.P1634224504220419480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A307087 (3 * n) + A051438 (n + 1)).toNat

end

end A194299.P1634224504220419480

