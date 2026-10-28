import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A204100: Number of integers between successive twin primes, divided by 3.

The programs for A204100, the canonical program `A204100.P17943832057395780298` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204100 has offset 1).

The definition of A204100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204099, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204100.P17943832057395780298

`A204099(n+1)/3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A204100

/-- `A204099(n+1)/3` -/
def P17943832057395780298.Spec : Prop :=
  ∀ n, P17943832057395780298.a n = (A204100 (n + 1) : ℚ)

end A204100

/-! ## A204100.P540233945437404481

`floor(A167132(n+1)/3)`
-/

namespace A204100.P540233945437404481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167132 (n + 1) : ℚ) / 3⌋

end

end A204100.P540233945437404481

namespace A204100

/-- `floor(A167132(n+1)/3)` -/
def P540233945437404481.Spec : Prop :=
  ∀ n, P540233945437404481.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P16384491301821059531

`Δ[ceil(A001359(n+1)/3)]-1`
-/

namespace A204100.P16384491301821059531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001359 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A204100.P16384491301821059531

namespace A204100

/-- `Δ[ceil(A001359(n+1)/3)]-1` -/
def P16384491301821059531.Spec : Prop :=
  ∀ n, P16384491301821059531.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P1483259393589252016

`A002264(A167132(n+1))`
-/

namespace A204100.P1483259393589252016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A167132 (n + 1)).toNat

end

end A204100.P1483259393589252016

namespace A204100

/-- `A002264(A167132(n+1))` -/
def P1483259393589252016.Spec : Prop :=
  ∀ n, P1483259393589252016.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P700193246839044085

`A002264(A204099(n+1))`
-/

namespace A204100.P700193246839044085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A204099 (n + 1)).toNat

end

end A204100.P700193246839044085

namespace A204100

/-- `A002264(A204099(n+1))` -/
def P700193246839044085.Spec : Prop :=
  ∀ n, P700193246839044085.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P17695901085735908098

`A008612(2*(A204099(n+1)+1))`
-/

namespace A204100.P17695901085735908098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * (A204099 (n + 1) + 1)).toNat

end

end A204100.P17695901085735908098

namespace A204100

/-- `A008612(2*(A204099(n+1)+1))` -/
def P17695901085735908098.Spec : Prop :=
  ∀ n, P17695901085735908098.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P7551487740230036870

`A008615(2*A053319(n+1))-1`
-/

namespace A204100.P7551487740230036870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A053319 (n + 1)).toNat - 1

end

end A204100.P7551487740230036870

namespace A204100

/-- `A008615(2*A053319(n+1))-1` -/
def P7551487740230036870.Spec : Prop :=
  ∀ n, P7551487740230036870.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P9518190657994124653

`A053319(n+1)/A157532(n+1)-1`
-/

namespace A204100.P9518190657994124653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053319 (n + 1) : ℚ) / (A157532 (n + 1) : ℚ) - 1

end

end A204100.P9518190657994124653

namespace A204100

/-- `A053319(n+1)/A157532(n+1)-1` -/
def P9518190657994124653.Spec : Prop :=
  ∀ n, P9518190657994124653.a n = (A204100 (n + 1) : ℚ)

end A204100

/-! ## A204100.P3758734415699478967

`(A204136(n+1)+A048614(n+1))/3`
-/

namespace A204100.P3758734415699478967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204136 (n + 1) + A048614 (n + 1) : ℚ) / 3

end

end A204100.P3758734415699478967

namespace A204100

/-- `(A204136(n+1)+A048614(n+1))/3` -/
def P3758734415699478967.Spec : Prop :=
  ∀ n, P3758734415699478967.a n = (A204100 (n + 1) : ℚ)

end A204100

/-! ## A204100.P694328277215401695

`Δ[A001359(n+1)]/A157532(n+1)-1`
-/

namespace A204100.P694328277215401695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A157532 (n + 1) : ℚ) - 1

end

end A204100.P694328277215401695

namespace A204100

/-- `Δ[A001359(n+1)]/A157532(n+1)-1` -/
def P694328277215401695.Spec : Prop :=
  ∀ n, P694328277215401695.a n = (A204100 (n + 1) : ℚ)

end A204100

/-! ## A204100.P11614776489508173845

`A008612(A204099(n+1)+A204099(n+1)+1)`
-/

namespace A204100.P11614776489508173845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A204099 (n + 1) + (A204099 (n + 1) + 1)).toNat

end

end A204100.P11614776489508173845

namespace A204100

/-- `A008612(A204099(n+1)+A204099(n+1)+1)` -/
def P11614776489508173845.Spec : Prop :=
  ∀ n, P11614776489508173845.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P9178485003469817687

`A004396(2*A204099(n+1))-A204099(n+1)`
-/

namespace A204100.P9178485003469817687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A204099 (n + 1)).toNat - A204099 (n + 1)

end

end A204100.P9178485003469817687

namespace A204100

/-- `A004396(2*A204099(n+1))-A204099(n+1)` -/
def P9178485003469817687.Spec : Prop :=
  ∀ n, P9178485003469817687.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P5802944149276130731

`(Δ[A111166(n+1)]-3)/3`
-/

namespace A204100.P5802944149276130731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 3 : ℚ) / 3

end

end A204100.P5802944149276130731

namespace A204100

/-- `(Δ[A111166(n+1)]-3)/3` -/
def P5802944149276130731.Spec : Prop :=
  ∀ n, P5802944149276130731.a n = (A204100 (n + 1) : ℚ)

end A204100

/-! ## A204100.P12698449365399783095

`ceil(Δ[A006512(n+1)]/3)-1`
-/

namespace A204100.P12698449365399783095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 3⌉ - 1

end

end A204100.P12698449365399783095

namespace A204100

/-- `ceil(Δ[A006512(n+1)]/3)-1` -/
def P12698449365399783095.Spec : Prop :=
  ∀ n, P12698449365399783095.a n = A204100 (n + 1)

end A204100

/-! ## A204100.P3178176622654428369

`Δ[ceil((A014574(n+1)+1)/3)-n]`
-/

namespace A204100.P3178176622654428369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014574 (n + 1) + 1 : ℚ) / 3⌉ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204100.P3178176622654428369

namespace A204100

/-- `Δ[ceil((A014574(n+1)+1)/3)-n]` -/
def P3178176622654428369.Spec : Prop :=
  ∀ n, P3178176622654428369.a n = A204100 (n + 1)

end A204100

/-!
# A204101: Number of (n+1)X(n+1) 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that b(i,j)*b(i-1,j)-c(i,j)*c(i,j-1) is nonzero.

The programs for A204101, there is no canonical definition to state claims against.
-/

/-! ## A204101.P16962576856794838394

`A204106(∑[4*n]+1)`
-/

namespace A204101.P16962576856794838394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204101.P16962576856794838394

/-! ## A204101.P6819949135507463360

`lcm(2, A204106(A001844(n)))`
-/

namespace A204101.P6819949135507463360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204106 (A001844 n).toNat)

end

end A204101.P6819949135507463360

/-! ## A204101.P7089150363463101588

`record[gcd(A003987(n), A204106(n+1))]`
-/

namespace A204101.P7089150363463101588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A204106 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204101.P7089150363463101588

/-! ## A204101.P15862705445991371429

`A324179(n+1)+A204106(A001844(n))`
-/

namespace A204101.P15862705445991371429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A204106 (A001844 n).toNat

end

end A204101.P15862705445991371429

/-! ## A204101.P8408901847279998517

`6*A203978(n+1)`
-/

namespace A204101.P8408901847279998517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A203978 (n + 1)

end

end A204101.P8408901847279998517

/-!
# A204102: Number of (n+1) X 5 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that b(i,j)*b(i-1,j)-c(i,j)*c(i,j-1) is nonzero.

The programs for A204102, there is no canonical definition to state claims against.
-/

/-! ## A204102.P874736615857689088

`6*A203980(n+1)`
-/

namespace A204102.P874736615857689088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A203980 (n + 1)

end

end A204102.P874736615857689088

/-! ## A204102.P2698098078149292917

`A204106(A141214(n)+7)`
-/

namespace A204102.P2698098078149292917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A141214 n + 7).toNat

end

end A204102.P2698098078149292917

/-! ## A204102.P11107014654485748355

`A204106(A052905(n)+9)`
-/

namespace A204102.P11107014654485748355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A052905 n + 9).toNat

end

end A204102.P11107014654485748355

/-! ## A204102.P3940580871543390748

`A204106(A167614(n+2)+1)`
-/

namespace A204102.P3940580871543390748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A167614 (n + 2) + 1).toNat

end

end A204102.P3940580871543390748

/-! ## A204102.P17577956569042108469

`A204106(A000217(n+3)+4)`
-/

namespace A204102.P17577956569042108469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A000217 (n + 3) + 4).toNat

end

end A204102.P17577956569042108469

/-!
# A204103: Number of (n+1) X 6 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that b(i,j)*b(i-1,j)-c(i,j)*c(i,j-1) is nonzero.

The programs for A204103, there is no canonical definition to state claims against.
-/

/-! ## A204103.P2111133966574911859

`6*A203981(n+1)`
-/

namespace A204103.P2111133966574911859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A203981 (n + 1)

end

end A204103.P2111133966574911859

/-! ## A204103.P13978990060594770332

`A204106(A056000(n)+15)`
-/

namespace A204103.P13978990060594770332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A056000 n + 15).toNat

end

end A204103.P13978990060594770332

/-! ## A204103.P13654437741177584312

`A204106(A000124(n+4)+4)`
-/

namespace A204103.P13654437741177584312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A000124 (n + 4) + 4).toNat

end

end A204103.P13654437741177584312

/-! ## A204103.P18002967483550317031

`A204106(Δ[A264443(n)])`
-/

namespace A204103.P18002967483550317031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (f1 (n + 1) - f1 n).toNat

end

end A204103.P18002967483550317031

/-! ## A204103.P3074570846851811980

`A204106(A374005(n+1))`
-/

namespace A204103.P3074570846851811980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A374005 (n + 1)).toNat

end

end A204103.P3074570846851811980

/-!
# A204104: Number of (n+1)X7 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that b(i,j)*b(i-1,j)-c(i,j)*c(i,j-1) is nonzero.

The programs for A204104, there is no canonical definition to state claims against.
-/

/-! ## A204104.P11361722767123571086

`6*A203982(n+1)`
-/

namespace A204104.P11361722767123571086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A203982 (n + 1)

end

end A204104.P11361722767123571086

/-! ## A204104.P16516460206108948818

`A204106(eq[7, A131818(n+1)])`
-/

namespace A204104.P16516460206108948818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204104.P16516460206108948818

/-! ## A204104.P12474067142945225770

`A204106(A374007(n+1))`
-/

namespace A204104.P12474067142945225770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A374007 (n + 1)).toNat

end

end A204104.P12474067142945225770

/-! ## A204104.P14034581456583817310

`A204106(A052905(n+3))`
-/

namespace A204104.P14034581456583817310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A052905 (n + 3)).toNat

end

end A204104.P14034581456583817310

/-! ## A204104.P9759511200510686805

`A204106(A056119(n)+16)`
-/

namespace A204104.P9759511200510686805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A056119 n + 16).toNat

end

end A204104.P9759511200510686805

/-!
# A204105: Number of (n+1)X8 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that b(i,j)*b(i-1,j)-c(i,j)*c(i,j-1) is nonzero.

The programs for A204105, there is no canonical definition to state claims against.
-/

/-! ## A204105.P9418741885952251600

`6*A203983(n+1)`
-/

namespace A204105.P9418741885952251600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A203983 (n + 1)

end

end A204105.P9418741885952251600

/-! ## A204105.P6748344947686961135

`A204106(eq[8, A131818(n+1)])`
-/

namespace A204105.P6748344947686961135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204105.P6748344947686961135

/-! ## A204105.P15601901566001892835

`A204106(A374008(n+1))`
-/

namespace A204105.P15601901566001892835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (A374008 (n + 1)).toNat

end

end A204105.P15601901566001892835

/-! ## A204105.P8870291728411828498

`A204106(eq[6, A193592(n)])`
-/

namespace A204105.P8870291728411828498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204105.P8870291728411828498

/-! ## A204105.P17495047609713149526

`A204106(Δ[A023551(n+2)])`
-/

namespace A204105.P17495047609713149526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (f1 (n + 1) - f1 n).toNat

end

end A204105.P17495047609713149526

/-!
# A204106: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that b(i,j)*b(i-1,j)-c(i,j)*c(i,j-1) is nonzero.

The programs for A204106, there is no canonical definition to state claims against.
-/

/-! ## A204106.P5152630442235424247

`6*A203984(n+1)`
-/

namespace A204106.P5152630442235424247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A203984 (n + 1)

end

end A204106.P5152630442235424247

/-! ## A204106.P18207693126487653299

`A008458(A203984(n+1))`
-/

namespace A204106.P18207693126487653299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A203984 (n + 1)).toNat

end

end A204106.P18207693126487653299

/-! ## A204106.P11880144363069574372

`A008594(A203984(n+1)/2)`
-/

namespace A204106.P11880144363069574372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((A203984 (n + 1) : ℚ) / 2)).toNat

end

end A204106.P11880144363069574372

/-! ## A204106.P14199963590681189416

`A008600(A203984(n+1)/3)`
-/

namespace A204106.P14199963590681189416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (SequenceMachineLib.roundAway ((A203984 (n + 1) : ℚ) / 3)).toNat

end

end A204106.P14199963590681189416

/-! ## A204106.P10494415001896055491

`A298028(lcm(2, A203984(n+1)))`
-/

namespace A204106.P10494415001896055491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (Int.lcm 2 (A203984 (n + 1)))

end

end A204106.P10494415001896055491

/-!
# A204107: Number of distinct grids after n moves in the 5D version of Morpion Solitaire.

The programs for A204107, there is no canonical definition to state claims against.
-/

/-! ## A204107.P14559030330176397905

`xor(A055396(n+1), A211427(A005061(n)))`
-/

namespace A204107.P14559030330176397905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055396 (n + 1)) (A211427 (A005061 n).toNat)

end

end A204107.P14559030330176397905

/-!
# A204108: Number of distinct grids after n moves in the 5T version of Morpion Solitaire.

The programs for A204108, there is no canonical definition to state claims against.
-/

/-! ## A204108.P2645229353305780434

`A054429(A338586(3*n+4)+A243053(n+1))`
-/

namespace A204108.P2645229353305780434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A338586 (3 * n + 4) + A243053 (n + 1)).toNat

end

end A204108.P2645229353305780434

/-!
# A204112: Symmetric matrix based on f(i,j) = gcd(F(i+1), F(j+1)), where F=A000045 (Fibonacci numbers), by antidiagonals.

The programs for A204112, the canonical program `A204112.P7209840934982087320` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204112 has offset 1).

The definition of A204112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000045(col(n)+2), A000045(row(n)-col(n)+2))` (program `A204112.P7209840934982087320`, by `A204112.P7209840934982087320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204112.P7209840934982087320

`gcd(A000045(col(n)+2), A000045(row(n)-col(n)+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204112

/-- `gcd(A000045(col(n)+2), A000045(row(n)-col(n)+2))` -/
def P7209840934982087320.Spec : Prop :=
  ∀ n, (P7209840934982087320.a n : ℤ) = A204112 (n + 1)

theorem P7209840934982087320.correct : P7209840934982087320.Spec := by
  intro n
  simp only [A204112, Nat.add_sub_cancel]

end A204112

/-! ## A204112.P8638349083347976525

`gcd(A000045(row(n)-col(n)+2), A000045(col(n)+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204112.P8638349083347976525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat) (A000045 (SequenceMachineLib.triCol n + 2))

end

end A204112.P8638349083347976525

namespace A204112

/-- `gcd(A000045(row(n)-col(n)+2), A000045(col(n)+2))` -/
def P8638349083347976525.Spec : Prop :=
  ∀ n, (P8638349083347976525.a n : ℤ) = A204112 (n + 1)

end A204112

/-! ## A204112.P12596033136160775492

`A000045(A204030(n+1))`
-/

namespace A204112.P12596033136160775492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204030 (n + 1)).toNat

end

end A204112.P12596033136160775492

namespace A204112

/-- `A000045(A204030(n+1))` -/
def P12596033136160775492.Spec : Prop :=
  ∀ n, P12596033136160775492.a n = A204112 (n + 1)

end A204112

/-! ## A204112.P18270848889618930550

`gcd(A159864(n), A193588(n))`
-/

namespace A204112.P18270848889618930550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159864 n) (A193588 n)

end

end A204112.P18270848889618930550

namespace A204112

/-- `gcd(A159864(n), A193588(n))` -/
def P18270848889618930550.Spec : Prop :=
  ∀ n, (P18270848889618930550.a n : ℤ) = A204112 (n + 1)

end A204112

/-! ## A204112.P5496128364108688573

`gcd(A000045(A049581(n)), A204026(n+1))`
-/

namespace A204112.P5496128364108688573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A049581 n).toNat) (A204026 (n + 1))

end

end A204112.P5496128364108688573

namespace A204112

/-- `gcd(A000045(A049581(n)), A204026(n+1))` -/
def P5496128364108688573.Spec : Prop :=
  ∀ n, (P5496128364108688573.a n : ℤ) = A204112 (n + 1)

end A204112

/-! ## A204112.P13696511234006873744

`A000045(gcd(A002260(n+2), A049581(n)))`
-/

namespace A204112.P13696511234006873744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A002260 (n + 2)) (A049581 n))

end

end A204112.P13696511234006873744

namespace A204112

/-- `A000045(gcd(A002260(n+2), A049581(n)))` -/
def P13696511234006873744.Spec : Prop :=
  ∀ n, P13696511234006873744.a n = A204112 (n + 1)

end A204112

/-! ## A204112.P3320284593182912285

`A000045(gcd(A025581(n)+2, A114327(n)))`
-/

namespace A204112.P3320284593182912285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A025581 n + 2) (A114327 n))

end

end A204112.P3320284593182912285

namespace A204112

/-- `A000045(gcd(A025581(n)+2, A114327(n)))` -/
def P3320284593182912285.Spec : Prop :=
  ∀ n, P3320284593182912285.a n = A204112 (n + 1)

end A204112

/-! ## A204112.P8118144401044492145

`gcd(A022290(A059268(n)), A179242(n+1))`
-/

namespace A204112.P8118144401044492145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022290 (A059268 n).toNat) (A179242 (n + 1))

end

end A204112.P8118144401044492145

namespace A204112

/-- `gcd(A022290(A059268(n)), A179242(n+1))` -/
def P8118144401044492145.Spec : Prop :=
  ∀ n, (P8118144401044492145.a n : ℤ) = A204112 (n + 1)

end A204112

/-! ## A204112.P12830034578102839739

`A000045(A161789(A250742(n+1)/2))`
-/

namespace A204112.P12830034578102839739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A161789 (SequenceMachineLib.roundAway ((A250742 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A204112.P12830034578102839739

namespace A204112

/-- `A000045(A161789(A250742(n+1)/2))` -/
def P12830034578102839739.Spec : Prop :=
  ∀ n, P12830034578102839739.a n = A204112 (n + 1)

end A204112

/-! ## A204112.P9750481159670713787

`A000045(A161789(A250742(n+1)))`
-/

namespace A204112.P9750481159670713787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A161789 (A250742 (n + 1)).toNat).toNat

end

end A204112.P9750481159670713787

namespace A204112

/-- `A000045(A161789(A250742(n+1)))` -/
def P9750481159670713787.Spec : Prop :=
  ∀ n, P9750481159670713787.a n = A204112 (n + 1)

end A204112

/-!
# A204113: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the matrix at A204112, given by f(i,j) = gcd(F(i+1), F(j+1)), where F=A000045 (Fibonacci numbers).

The programs for A204113, there is no canonical definition to state claims against.
-/

/-! ## A204113.P12075367672590313156

`A204128(n+1)%p?[∏[gcd(2, n)]-1]`
-/

namespace A204113.P12075367672590313156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204128 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A204113.P12075367672590313156

/-! ## A204113.P12018759491512654619

`A204128(A077168(n))`
-/

namespace A204113.P12018759491512654619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204128 (A077168 n).toNat

end

end A204113.P12018759491512654619

/-! ## A204113.P971650293844581223

`A204128(A043319(n+1))`
-/

namespace A204113.P971650293844581223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204128 (A043319 (n + 1)).toNat

end

end A204113.P971650293844581223

/-! ## A204113.P17790276716144170543

`A204128(A044916(n+1))`
-/

namespace A204113.P17790276716144170543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204128 (A044916 (n + 1)).toNat

end

end A204113.P17790276716144170543

/-! ## A204113.P4546975825883770761

`A204128(A055646(n+1))`
-/

namespace A204113.P4546975825883770761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204128 (A055646 (n + 1)).toNat

end

end A204113.P4546975825883770761

/-!
# A204114: Symmetric matrix based on f(i,j) = gcd(L(i), L(j)), where L=A000032 (Lucas numbers), by antidiagonals.

The programs for A204114, the canonical program `A204114.P7253496876444969193` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204114 has offset 1).

The definition of A204114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204114.P8663597848988739101

`gcd(A104764(n+1), A159864(n))`
-/

namespace A204114.P8663597848988739101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104764 (n + 1)) (A159864 n)

end

end A204114.P8663597848988739101

namespace A204114

/-- `gcd(A104764(n+1), A159864(n))` -/
def P8663597848988739101.Spec : Prop :=
  ∀ n, (P8663597848988739101.a n : ℤ) = A204114 (n + 1)

end A204114

/-! ## A204114.P7253496876444969193

`gcd(A104765(n+1), A108035(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204114

/-- `gcd(A104765(n+1), A108035(n+1))` -/
def P7253496876444969193.Spec : Prop :=
  ∀ n, (P7253496876444969193.a n : ℤ) = A204114 (n + 1)

theorem P7253496876444969193.correct : P7253496876444969193.Spec := by
  intro n
  simp only [A204114, Nat.add_sub_cancel]

end A204114

/-! ## A204114.P15828819118379591539

`gcd(A000032(col(n)+1), A000032(row(n)-col(n)+1))`
-/

namespace A204114.P15828819118379591539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (SequenceMachineLib.triCol n + 1)) (A000032 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat)

end

end A204114.P15828819118379591539

namespace A204114

/-- `gcd(A000032(col(n)+1), A000032(row(n)-col(n)+1))` -/
def P15828819118379591539.Spec : Prop :=
  ∀ n, (P15828819118379591539.a n : ℤ) = A204114 (n + 1)

end A204114

/-! ## A204114.P17434790388886813444

`A111957(∑[char[∑[n]]+1])`
-/

namespace A204114.P17434790388886813444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204114.P17434790388886813444

namespace A204114

/-- `A111957(∑[char[∑[n]]+1])` -/
def P17434790388886813444.Spec : Prop :=
  ∀ n, P17434790388886813444.a n = A204114 (n + 1)

end A204114

/-! ## A204114.P2135450164979983520

`A111957(A014132(n+1))%A025283(n+1)`
-/

namespace A204114.P2135450164979983520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111957 (A014132 (n + 1)).toNat) (A025283 (n + 1))

end

end A204114.P2135450164979983520

namespace A204114

/-- `A111957(A014132(n+1))%A025283(n+1)` -/
def P2135450164979983520.Spec : Prop :=
  ∀ n, P2135450164979983520.a n = A204114 (n + 1)

end A204114

/-! ## A204114.P12777619321230034466

`A111957(A014132(n+1))+2%A033999(n)`
-/

namespace A204114.P12777619321230034466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111957 (A014132 (n + 1)).toNat + Int.tmod 2 (A033999 n)

end

end A204114.P12777619321230034466

namespace A204114

/-- `A111957(A014132(n+1))+2%A033999(n)` -/
def P12777619321230034466.Spec : Prop :=
  ∀ n, P12777619321230034466.a n = A204114 (n + 1)

end A204114

/-! ## A204114.P5860288429162900410

`A097592(1-(-1)^n)*A111957(A014132(n+1))`
-/

namespace A204114.P5860288429162900410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (1 - (-1) ^ n).toNat * A111957 (A014132 (n + 1)).toNat

end

end A204114.P5860288429162900410

namespace A204114

/-- `A097592(1-(-1)^n)*A111957(A014132(n+1))` -/
def P5860288429162900410.Spec : Prop :=
  ∀ n, P5860288429162900410.a n = A204114 (n + 1)

end A204114

/-! ## A204114.P15507472693381444363

`A111957(A014132(n+1))/A111957(A111957(n+1)²)`
-/

namespace A204114.P15507472693381444363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111957 (A014132 (n + 1)).toNat : ℚ) / (A111957 (A111957 (n + 1) ^ 2).toNat : ℚ)

end

end A204114.P15507472693381444363

namespace A204114

/-- `A111957(A014132(n+1))/A111957(A111957(n+1)²)` -/
def P15507472693381444363.Spec : Prop :=
  ∀ n, P15507472693381444363.a n = (A204114 (n + 1) : ℚ)

end A204114

/-!
# A204115: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix from A204114, given by gcd(L(i+1), L(j+1)), where L=A000032 (Lucas numbers).

The programs for A204115, there is no canonical definition to state claims against.
-/

/-! ## A204115.P15016364275221501489

`A204130(∑[n^A326680(n)])`
-/

namespace A204115.P15016364275221501489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A326680 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204130 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204115.P15016364275221501489

/-! ## A204115.P5793927834674682305

`A204130(∑[n^A326681(n)])`
-/

namespace A204115.P5793927834674682305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A326681 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204130 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204115.P5793927834674682305

/-! ## A204115.P8413393478195941835

`A204130(∑[n^A326686(n)])`
-/

namespace A204115.P8413393478195941835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A326686 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204130 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204115.P8413393478195941835

/-! ## A204115.P16086624955610364122

`A204130(A008554(n+1)+1)`
-/

namespace A204115.P16086624955610364122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204130 (A008554 (n + 1) + 1).toNat

end

end A204115.P16086624955610364122

/-!
# A204116: Symmetric matrix based on f(i,j) = gcd(2^i-1, 2^j-1), by antidiagonals.

The programs for A204116, the canonical program `A204116.P9951973568058831248` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204116 has offset 1).

The definition of A204116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2^(col(n)+1)-1, 2^(row(n)-col(n)+1)-1)` (program `A204116.P9951973568058831248`, by `A204116.P9951973568058831248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204116.P9951973568058831248

`gcd(2^(col(n)+1)-1, 2^(row(n)-col(n)+1)-1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204116

/-- `gcd(2^(col(n)+1)-1, 2^(row(n)-col(n)+1)-1)` -/
def P9951973568058831248.Spec : Prop :=
  ∀ n, (P9951973568058831248.a n : ℤ) = A204116 (n + 1)

theorem P9951973568058831248.correct : P9951973568058831248.Spec := by
  intro n
  simp only [A204116, Nat.add_sub_cancel]

end A204116

/-! ## A204116.P7237933606266255775

`gcd(2^(row(n)-col(n)+1)-1, 2^(col(n)+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204116.P7237933606266255775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) - 1)) ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1)

end

end A204116.P7237933606266255775

namespace A204116

/-- `gcd(2^(row(n)-col(n)+1)-1, 2^(col(n)+1)-1)` -/
def P7237933606266255775.Spec : Prop :=
  ∀ n, (P7237933606266255775.a n : ℤ) = A204116 (n + 1)

end A204116

/-! ## A204116.P7467598168852878110

`2^gcd(col(n)+1, row(n)-col(n)+1)-1`
-/

namespace A204116.P7467598168852878110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℤ) - 1

end

end A204116.P7467598168852878110

namespace A204116

/-- `2^gcd(col(n)+1, row(n)-col(n)+1)-1` -/
def P7467598168852878110.Spec : Prop :=
  ∀ n, P7467598168852878110.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P9493758993943847374

`2^A003989(n+1)-1`
-/

namespace A204116.P9493758993943847374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003989 (n + 1) : ℤ) - 1

end

end A204116.P9493758993943847374

namespace A204116

/-- `2^A003989(n+1)-1` -/
def P9493758993943847374.Spec : Prop :=
  ∀ n, P9493758993943847374.a n = (A204116 (n + 1) : ℚ)

end A204116

/-! ## A204116.P12422762952399923659

`A000225(A003989(n+1))`
-/

namespace A204116.P12422762952399923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A003989 (n + 1)).toNat

end

end A204116.P12422762952399923659

namespace A204116

/-- `A000225(A003989(n+1))` -/
def P12422762952399923659.Spec : Prop :=
  ∀ n, P12422762952399923659.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P6200029469678236048

`gcd(A130330(n), A131816(n))`
-/

namespace A204116.P6200029469678236048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130330 n) (A131816 n)

end

end A204116.P6200029469678236048

namespace A204116

/-- `gcd(A130330(n), A131816(n))` -/
def P6200029469678236048.Spec : Prop :=
  ∀ n, (P6200029469678236048.a n : ℤ) = A204116 (n + 1)

end A204116

/-! ## A204116.P940254056891488409

`gcd(A130324(n), A228147(n))`
-/

namespace A204116.P940254056891488409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130324 n) (A228147 n)

end

end A204116.P940254056891488409

namespace A204116

/-- `gcd(A130324(n), A228147(n))` -/
def P940254056891488409.Spec : Prop :=
  ∀ n, (P940254056891488409.a n : ℤ) = A204116 (n + 1)

end A204116

/-! ## A204116.P16187431178957043067

`A078446(A003989(n+1)²)`
-/

namespace A204116.P16187431178957043067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (A003989 (n + 1) ^ 2).toNat

end

end A204116.P16187431178957043067

namespace A204116

/-- `A078446(A003989(n+1)²)` -/
def P16187431178957043067.Spec : Prop :=
  ∀ n, P16187431178957043067.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P8223922987077159729

`A126646(A003989(n+1)-1)`
-/

namespace A204116.P8223922987077159729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A003989 (n + 1) - 1).toNat

end

end A204116.P8223922987077159729

namespace A204116

/-- `A126646(A003989(n+1)-1)` -/
def P8223922987077159729.Spec : Prop :=
  ∀ n, P8223922987077159729.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P6080883926051915677

`gcd(A099628(n+1), A130328(n))`
-/

namespace A204116.P6080883926051915677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099628 (n + 1)) (A130328 n)

end

end A204116.P6080883926051915677

namespace A204116

/-- `gcd(A099628(n+1), A130328(n))` -/
def P6080883926051915677.Spec : Prop :=
  ∀ n, (P6080883926051915677.a n : ℤ) = A204116 (n + 1)

end A204116

/-! ## A204116.P9043257202965726800

`gcd(A143038(n), A190620(n+1))`
-/

namespace A204116.P9043257202965726800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143038 n) (A190620 (n + 1))

end

end A204116.P9043257202965726800

namespace A204116

/-- `gcd(A143038(n), A190620(n+1))` -/
def P9043257202965726800.Spec : Prop :=
  ∀ n, (P9043257202965726800.a n : ℤ) = A204116 (n + 1)

end A204116

/-! ## A204116.P20050753637961886

`A000079(A003989(1-char[1]+n))-1`
-/

namespace A204116.P20050753637961886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003989 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - 1

end

end A204116.P20050753637961886

namespace A204116

/-- `A000079(A003989(1-char[1]+n))-1` -/
def P20050753637961886.Spec : Prop :=
  ∀ n, P20050753637961886.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P13085354242530605119

`2*(A000079(A003989(n+1)-1)-1)+1`
-/

namespace A204116.P13085354242530605119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 (A003989 (n + 1) - 1).toNat - 1) + 1

end

end A204116.P13085354242530605119

namespace A204116

/-- `2*(A000079(A003989(n+1)-1)-1)+1` -/
def P13085354242530605119.Spec : Prop :=
  ∀ n, P13085354242530605119.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P10004195991893308502

`A000225(gcd(A002260(n+1), A004736(n+1)))`
-/

namespace A204116.P10004195991893308502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.gcd (A002260 (n + 1)) (A004736 (n + 1)))

end

end A204116.P10004195991893308502

namespace A204116

/-- `A000225(gcd(A002260(n+1), A004736(n+1)))` -/
def P10004195991893308502.Spec : Prop :=
  ∀ n, P10004195991893308502.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P1383131786429646819

`gcd(A130330(n)+A043569(n+1), A043569(n+1))`
-/

namespace A204116.P1383131786429646819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130330 n + A043569 (n + 1)) (A043569 (n + 1))

end

end A204116.P1383131786429646819

namespace A204116

/-- `gcd(A130330(n)+A043569(n+1), A043569(n+1))` -/
def P1383131786429646819.Spec : Prop :=
  ∀ n, (P1383131786429646819.a n : ℤ) = A204116 (n + 1)

end A204116

/-! ## A204116.P11544431856768491583

`A046143(comp[∑[n]])`
-/

namespace A204116.P11544431856768491583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046143 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204116.P11544431856768491583

namespace A204116

/-- `A046143(comp[∑[n]])` -/
def P11544431856768491583.Spec : Prop :=
  ∀ n, P11544431856768491583.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P15763985965813952198

`2^A050873(comp[∑[n]])-1`
-/

namespace A204116.P15763985965813952198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1

end

end A204116.P15763985965813952198

namespace A204116

/-- `2^A050873(comp[∑[n]])-1` -/
def P15763985965813952198.Spec : Prop :=
  ∀ n, P15763985965813952198.a n = (A204116 (n + 1) : ℚ)

end A204116

/-! ## A204116.P9898679564140866107

`A000225(A050873(comp[∑[n]]))`
-/

namespace A204116.P9898679564140866107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A050873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A204116.P9898679564140866107

namespace A204116

/-- `A000225(A050873(comp[∑[n]]))` -/
def P9898679564140866107.Spec : Prop :=
  ∀ n, P9898679564140866107.a n = A204116 (n + 1)

end A204116

/-! ## A204116.P6185722991535420157

`A130330(n)/A227984(n)`
-/

namespace A204116.P6185722991535420157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) / (A227984 n : ℚ)

end

end A204116.P6185722991535420157

namespace A204116

/-- `A130330(n)/A227984(n)` -/
def P6185722991535420157.Spec : Prop :=
  ∀ n, P6185722991535420157.a n = (A204116 (n + 1) : ℚ)

end A204116

/-! ## A204116.P1905251360714265605

`gcd(A115450(n), A209492(n))`
-/

namespace A204116.P1905251360714265605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115450 n) (A209492 n)

end

end A204116.P1905251360714265605

namespace A204116

/-- `gcd(A115450(n), A209492(n))` -/
def P1905251360714265605.Spec : Prop :=
  ∀ n, (P1905251360714265605.a n : ℤ) = A204116 (n + 1)

end A204116

/-!
# A204118: Symmetric matrix based on f(i,j) = gcd(prime(i), prime(j)), by antidiagonals.

The programs for A204118, the canonical program `A204118.P7986237711414019264` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204118 has offset 1).

The definition of A204118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(col(n)+1), A000040(row(n)-col(n)+1))` (program `A204118.P7986237711414019264`, by `A204118.P7986237711414019264.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204118.P7986237711414019264

`gcd(A000040(col(n)+1), A000040(row(n)-col(n)+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204118

/-- `gcd(A000040(col(n)+1), A000040(row(n)-col(n)+1))` -/
def P7986237711414019264.Spec : Prop :=
  ∀ n, (P7986237711414019264.a n : ℤ) = A204118 (n + 1)

theorem P7986237711414019264.correct : P7986237711414019264.Spec := by
  intro n
  simp only [A204118, Nat.add_sub_cancel]

end A204118

/-! ## A204118.P2621497217403082730

`gcd(A000040(row(n)-col(n)+1), A000040(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204118.P2621497217403082730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat) (A000040 (SequenceMachineLib.triCol n + 1))

end

end A204118.P2621497217403082730

namespace A204118

/-- `gcd(A000040(row(n)-col(n)+1), A000040(col(n)+1))` -/
def P2621497217403082730.Spec : Prop :=
  ∀ n, (P2621497217403082730.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P15026794959693588032

`A064989(A204120(n+1))`
-/

namespace A204118.P15026794959693588032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A204120 (n + 1)).toNat

end

end A204118.P15026794959693588032

namespace A204118

/-- `A064989(A204120(n+1))` -/
def P15026794959693588032.Spec : Prop :=
  ∀ n, P15026794959693588032.a n = A204118 (n + 1)

end A204118

/-! ## A204118.P14464789366440514855

`A130008(A157458(n)+3)`
-/

namespace A204118.P14464789366440514855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A157458 n + 3).toNat

end

end A204118.P14464789366440514855

namespace A204118

/-- `A130008(A157458(n)+3)` -/
def P14464789366440514855.Spec : Prop :=
  ∀ n, P14464789366440514855.a n = A204118 (n + 1)

end A204118

/-! ## A204118.P4756302848917804723

`gcd(A037126(n+1), A068344(n))`
-/

namespace A204118.P4756302848917804723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037126 (n + 1)) (A068344 n)

end

end A204118.P4756302848917804723

namespace A204118

/-- `gcd(A037126(n+1), A068344(n))` -/
def P4756302848917804723.Spec : Prop :=
  ∀ n, (P4756302848917804723.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P3800829235578118062

`gcd(A138139(n+1), A204016(n+1))`
-/

namespace A204118.P3800829235578118062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138139 (n + 1)) (A204016 (n + 1))

end

end A204118.P3800829235578118062

namespace A204118

/-- `gcd(A138139(n+1), A204016(n+1))` -/
def P3800829235578118062.Spec : Prop :=
  ∀ n, (P3800829235578118062.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P11191077331255689513

`A098350(n+1)/∏{p}[A098350(n+1), #]`
-/

namespace A204118.P11191077331255689513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098350 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A204118.P11191077331255689513

namespace A204118

/-- `A098350(n+1)/∏{p}[A098350(n+1), #]` -/
def P11191077331255689513.Spec : Prop :=
  ∀ n, P11191077331255689513.a n = (A204118 (n + 1) : ℚ)

end A204118

/-! ## A204118.P7642404210324517197

`gcd(A000040(A003990(n+1)), A003987(n))`
-/

namespace A204118.P7642404210324517197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A003990 (n + 1)).toNat) (A003987 n)

end

end A204118.P7642404210324517197

namespace A204118

/-- `gcd(A000040(A003990(n+1)), A003987(n))` -/
def P7642404210324517197.Spec : Prop :=
  ∀ n, (P7642404210324517197.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P2354799941419608424

`gcd(A000040(A051125(n+1)), A049581(n))`
-/

namespace A204118.P2354799941419608424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A051125 (n + 1)).toNat) (A049581 n)

end

end A204118.P2354799941419608424

namespace A204118

/-- `gcd(A000040(A051125(n+1)), A049581(n))` -/
def P2354799941419608424.Spec : Prop :=
  ∀ n, (P2354799941419608424.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P1040681980933846648

`gcd(A049581(n)²², A000040(A074712(n+1)))`
-/

namespace A204118.P1040681980933846648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A049581 n ^ 2) ^ 2) (A000040 (A074712 (n + 1)).toNat)

end

end A204118.P1040681980933846648

namespace A204118

/-- `gcd(A049581(n)²², A000040(A074712(n+1)))` -/
def P1040681980933846648.Spec : Prop :=
  ∀ n, (P1040681980933846648.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P7308173545910101207

`gcd(A037126(n+1)², A000040(A004736(n+1)))`
-/

namespace A204118.P7308173545910101207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037126 (n + 1) ^ 2) (A000040 (A004736 (n + 1)).toNat)

end

end A204118.P7308173545910101207

namespace A204118

/-- `gcd(A037126(n+1)², A000040(A004736(n+1)))` -/
def P7308173545910101207.Spec : Prop :=
  ∀ n, (P7308173545910101207.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P737626146376643596

`A000040(A004736(n+1))^(A000005(Δ[n²])%2)`
-/

namespace A204118.P737626146376643596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2 : ℤ)

end

end A204118.P737626146376643596

namespace A204118

/-- `A000040(A004736(n+1))^(A000005(Δ[n²])%2)` -/
def P737626146376643596.Spec : Prop :=
  ∀ n, P737626146376643596.a n = (A204118 (n + 1) : ℚ)

end A204118

/-! ## A204118.P17490765141999527724

`gcd(A104887(n+1), A182944(n+1))`
-/

namespace A204118.P17490765141999527724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104887 (n + 1)) (A182944 (n + 1))

end

end A204118.P17490765141999527724

namespace A204118

/-- `gcd(A104887(n+1), A182944(n+1))` -/
def P17490765141999527724.Spec : Prop :=
  ∀ n, (P17490765141999527724.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P12253371027039608770

`A130008(A207376(2*n+1)+2)`
-/

namespace A204118.P12253371027039608770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A207376 (2 * n + 1) + 2).toNat

end

end A204118.P12253371027039608770

namespace A204118

/-- `A130008(A207376(2*n+1)+2)` -/
def P12253371027039608770.Spec : Prop :=
  ∀ n, P12253371027039608770.a n = A204118 (n + 1)

end A204118

/-! ## A204118.P12880834726496355607

`A365708(A073060(n))`
-/

namespace A204118.P12880834726496355607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365708 (A073060 n).toNat

end

end A204118.P12880834726496355607

namespace A204118

/-- `A365708(A073060(n))` -/
def P12880834726496355607.Spec : Prop :=
  ∀ n, P12880834726496355607.a n = A204118 (n + 1)

end A204118

/-! ## A204118.P4104802065950130492

`A000188(A098350(n+1))`
-/

namespace A204118.P4104802065950130492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A098350 (n + 1)).toNat

end

end A204118.P4104802065950130492

namespace A204118

/-- `A000188(A098350(n+1))` -/
def P4104802065950130492.Spec : Prop :=
  ∀ n, P4104802065950130492.a n = A204118 (n + 1)

end A204118

/-! ## A204118.P11750165683765901477

`gcd(A125624(n+1), A339116(n+2))`
-/

namespace A204118.P11750165683765901477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125624 (n + 1)) (A339116 (n + 2))

end

end A204118.P11750165683765901477

namespace A204118

/-- `gcd(A125624(n+1), A339116(n+2))` -/
def P11750165683765901477.Spec : Prop :=
  ∀ n, (P11750165683765901477.a n : ℤ) = A204118 (n + 1)

end A204118

/-! ## A204118.P9427919375950552221

`A253565((A271709(n)-A271710(n))/2)`
-/

namespace A204118.P9427919375950552221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.roundAway ((A271709 n - A271710 n : ℚ) / 2)).toNat

end

end A204118.P9427919375950552221

namespace A204118

/-- `A253565((A271709(n)-A271710(n))/2)` -/
def P9427919375950552221.Spec : Prop :=
  ∀ n, P9427919375950552221.a n = A204118 (n + 1)

end A204118

/-! ## A204118.P18276464192711261271

`A253565(xor(A271709(n), A271710(n))/2)`
-/

namespace A204118.P18276464192711261271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.roundAway ((Int.xor (A271709 n) (A271710 n) : ℚ) / 2)).toNat

end

end A204118.P18276464192711261271

namespace A204118

/-- `A253565(xor(A271709(n), A271710(n))/2)` -/
def P18276464192711261271.Spec : Prop :=
  ∀ n, P18276464192711261271.a n = A204118 (n + 1)

end A204118

/-!
# A204120: Symmetric matrix based on f(i,j) = gcd(prime(i+1),prime(j+1)), by antidiagonals.

The programs for A204120, the canonical program `A204120.P2731596061565388988` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204120 has offset 1).

The definition of A204120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(col(n)+2), A000040(row(n)-col(n)+2))` (program `A204120.P2731596061565388988`, by `A204120.P2731596061565388988.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204120.P2731596061565388988

`gcd(A000040(col(n)+2), A000040(row(n)-col(n)+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204120

/-- `gcd(A000040(col(n)+2), A000040(row(n)-col(n)+2))` -/
def P2731596061565388988.Spec : Prop :=
  ∀ n, (P2731596061565388988.a n : ℤ) = A204120 (n + 1)

theorem P2731596061565388988.correct : P2731596061565388988.Spec := by
  intro n
  simp only [A204120, Nat.add_sub_cancel]

end A204120

/-! ## A204120.P6042022791147910022

`gcd(A000040(row(n)-col(n)+2), A000040(col(n)+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204120.P6042022791147910022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat) (A000040 (SequenceMachineLib.triCol n + 2))

end

end A204120.P6042022791147910022

namespace A204120

/-- `gcd(A000040(row(n)-col(n)+2), A000040(col(n)+2))` -/
def P6042022791147910022.Spec : Prop :=
  ∀ n, (P6042022791147910022.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P13176904820651823595

`A003961(A204118(n+1))`
-/

namespace A204120.P13176904820651823595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A204118 (n + 1)).toNat

end

end A204120.P13176904820651823595

namespace A204120

/-- `A003961(A204118(n+1))` -/
def P13176904820651823595.Spec : Prop :=
  ∀ n, P13176904820651823595.a n = A204120 (n + 1)

end A204120

/-! ## A204120.P14860807296414860623

`gcd(A065091(A123229(n+1)), A114327(n))`
-/

namespace A204120.P14860807296414860623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (A123229 (n + 1)).toNat) (A114327 n)

end

end A204120.P14860807296414860623

namespace A204120

/-- `gcd(A065091(A123229(n+1)), A114327(n))` -/
def P14860807296414860623.Spec : Prop :=
  ∀ n, (P14860807296414860623.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P16923926122111600571

`gcd(A065091(A274701(n+1)), A296339(n))`
-/

namespace A204120.P16923926122111600571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (A274701 (n + 1)).toNat) (A296339 n)

end

end A204120.P16923926122111600571

namespace A204120

/-- `gcd(A065091(A274701(n+1)), A296339(n))` -/
def P16923926122111600571.Spec : Prop :=
  ∀ n, (P16923926122111600571.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P2482230519287587675

`gcd(A000040(A003990(n+1)+1), A003987(n))`
-/

namespace A204120.P2482230519287587675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A003990 (n + 1) + 1).toNat) (A003987 n)

end

end A204120.P2482230519287587675

namespace A204120

/-- `gcd(A000040(A003990(n+1)+1), A003987(n))` -/
def P2482230519287587675.Spec : Prop :=
  ∀ n, (P2482230519287587675.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P16487988765365780011

`gcd(A000040(A051125(n+1)+1), A049581(n))`
-/

namespace A204120.P16487988765365780011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A051125 (n + 1) + 1).toNat) (A049581 n)

end

end A204120.P16487988765365780011

namespace A204120

/-- `gcd(A000040(A051125(n+1)+1), A049581(n))` -/
def P16487988765365780011.Spec : Prop :=
  ∀ n, (P16487988765365780011.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P5784032253686789232

`A008578((A004736(n+1)+1)*char[A046092(n)]+1)`
-/

namespace A204120.P5784032253686789232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((A004736 (n + 1) + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A204120.P5784032253686789232

namespace A204120

/-- `A008578((A004736(n+1)+1)*char[A046092(n)]+1)` -/
def P5784032253686789232.Spec : Prop :=
  ∀ n, P5784032253686789232.a n = A204120 (n + 1)

end A204120

/-! ## A204120.P18207105254653002363

`gcd(A000040(A051125(n+2)), A049581(n))`
-/

namespace A204120.P18207105254653002363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A051125 (n + 2)).toNat) (A049581 n)

end

end A204120.P18207105254653002363

namespace A204120

/-- `gcd(A000040(A051125(n+2)), A049581(n))` -/
def P18207105254653002363.Spec : Prop :=
  ∀ n, (P18207105254653002363.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P653526475428116408

`gcd(A268931(n+1), A323377(n+1))`
-/

namespace A204120.P653526475428116408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268931 (n + 1)) (A323377 (n + 1))

end

end A204120.P653526475428116408

namespace A204120

/-- `gcd(A268931(n+1), A323377(n+1))` -/
def P653526475428116408.Spec : Prop :=
  ∀ n, (P653526475428116408.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P15666543678665936666

`A253565(A271709(n)-A271710(n))`
-/

namespace A204120.P15666543678665936666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A271709 n - A271710 n).toNat

end

end A204120.P15666543678665936666

namespace A204120

/-- `A253565(A271709(n)-A271710(n))` -/
def P15666543678665936666.Spec : Prop :=
  ∀ n, P15666543678665936666.a n = A204120 (n + 1)

end A204120

/-! ## A204120.P5160931068156138423

`A253565(xor(A271709(n), A271710(n)))`
-/

namespace A204120.P5160931068156138423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (Int.xor (A271709 n) (A271710 n)).toNat

end

end A204120.P5160931068156138423

namespace A204120

/-- `A253565(xor(A271709(n), A271710(n)))` -/
def P5160931068156138423.Spec : Prop :=
  ∀ n, P5160931068156138423.a n = A204120 (n + 1)

end A204120

/-! ## A204120.P3993950336797591016

`A369028(A250742(n+1)/2)`
-/

namespace A204120.P3993950336797591016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (SequenceMachineLib.roundAway ((A250742 (n + 1) : ℚ) / 2)).toNat

end

end A204120.P3993950336797591016

namespace A204120

/-- `A369028(A250742(n+1)/2)` -/
def P3993950336797591016.Spec : Prop :=
  ∀ n, P3993950336797591016.a n = A204120 (n + 1)

end A204120

/-! ## A204120.P12085103832852074365

`gcd(A110560(A134478(n)), A330240(n))`
-/

namespace A204120.P12085103832852074365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110560 (A134478 n).toNat) (A330240 n)

end

end A204120.P12085103832852074365

namespace A204120

/-- `gcd(A110560(A134478(n)), A330240(n))` -/
def P12085103832852074365.Spec : Prop :=
  ∀ n, (P12085103832852074365.a n : ℤ) = A204120 (n + 1)

end A204120

/-! ## A204120.P3151697793131996886

`A369028(A250742(n+1))`
-/

namespace A204120.P3151697793131996886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A250742 (n + 1)).toNat

end

end A204120.P3151697793131996886

namespace A204120

/-- `A369028(A250742(n+1))` -/
def P3151697793131996886.Spec : Prop :=
  ∀ n, P3151697793131996886.a n = A204120 (n + 1)

end A204120

/-!
# A204122: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of f(i,j) = gcd(2^(i-1), 2^(j-1)) (A144464).

The programs for A204122, there is no canonical definition to state claims against.
-/

/-! ## A204122.P5295860766397280070

`A204113(n+1)+A020987(A000583(n))`
-/

namespace A204122.P5295860766397280070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204113 (n + 1) + A020987 (A000583 n).toNat

end

end A204122.P5295860766397280070

/-! ## A204122.P5592547930887135934

`or(A204128(n+1), A256852(A000704(n)))`
-/

namespace A204122.P5592547930887135934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204128 (n + 1)) (A256852 (A000704 n).toNat)

end

end A204122.P5592547930887135934

/-! ## A204122.P9568386823449241541

`A204113(n+1)+A059778(A006784(n+1))`
-/

namespace A204122.P9568386823449241541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204113 (n + 1) + A059778 (A006784 (n + 1)).toNat

end

end A204122.P9568386823449241541

/-! ## A204122.P13343387176605137879

`A288991(A204138(n+1))+A204128(n+1)`
-/

namespace A204122.P13343387176605137879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A204138 (n + 1)).toNat + A204128 (n + 1)

end

end A204122.P13343387176605137879

/-!
# A204123: Symmetric matrix based on f(i,j)=max([i/j],[j/i]), where [ ]=floor, by antidiagonals.

The programs for A204123, the canonical program `A204123.P7659429009219767533` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204123 has offset 1).

The definition of A204123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204123.P7659429009219767533

`gcd(A003988(n+1), A004199(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A204123

/-- `gcd(A003988(n+1), A004199(n+1))` -/
def P7659429009219767533.Spec : Prop :=
  ∀ n, (P7659429009219767533.a n : ℤ) = A204123 (n + 1)

theorem P7659429009219767533.correct : P7659429009219767533.Spec := by
  intro n
  simp only [A204123, Nat.add_sub_cancel]

end A204123

/-! ## A204123.P16451556437048082630

`floor(A051125(n+1)/A003983(n+1))`
-/

namespace A204123.P16451556437048082630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051125 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)⌋

end

end A204123.P16451556437048082630

namespace A204123

/-- `floor(A051125(n+1)/A003983(n+1))` -/
def P16451556437048082630.Spec : Prop :=
  ∀ n, P16451556437048082630.a n = A204123 (n + 1)

end A204123

/-! ## A204123.P9495776694690460546

`ceil(A101037(n+1)/A003983(n+1))`
-/

namespace A204123.P9495776694690460546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101037 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)⌉

end

end A204123.P9495776694690460546

namespace A204123

/-- `ceil(A101037(n+1)/A003983(n+1))` -/
def P9495776694690460546.Spec : Prop :=
  ∀ n, P9495776694690460546.a n = A204123 (n + 1)

end A204123

/-! ## A204123.P8198759439873377671

`floor(A051125(n+1)/A008619(A157458(n)))`
-/

namespace A204123.P8198759439873377671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051125 (n + 1) : ℚ) / (A008619 (A157458 n).toNat : ℚ)⌋

end

end A204123.P8198759439873377671

namespace A204123

/-- `floor(A051125(n+1)/A008619(A157458(n)))` -/
def P8198759439873377671.Spec : Prop :=
  ∀ n, P8198759439873377671.a n = A204123 (n + 1)

end A204123

/-! ## A204123.P17582144578993270815

`A220415(n+1)-char[2*(n²+n)]`
-/

namespace A204123.P17582144578993270815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220415 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204123.P17582144578993270815

namespace A204123

/-- `A220415(n+1)-char[2*(n²+n)]` -/
def P17582144578993270815.Spec : Prop :=
  ∀ n, P17582144578993270815.a n = A204123 (n + 1)

end A204123

/-! ## A204123.P16422959510280590789

`gcd(A059484(n), A220415(n+1))`
-/

namespace A204123.P16422959510280590789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059484 n) (A220415 (n + 1))

end

end A204123.P16422959510280590789

namespace A204123

/-- `gcd(A059484(n), A220415(n+1))` -/
def P16422959510280590789.Spec : Prop :=
  ∀ n, (P16422959510280590789.a n : ℤ) = A204123 (n + 1)

end A204123

/-! ## A204123.P7643055814067312538

`A220415(n+1)/(A003982(n)+1)`
-/

namespace A204123.P7643055814067312538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220415 (n + 1) : ℚ) / (A003982 n + 1 : ℚ)

end

end A204123.P7643055814067312538

namespace A204123

/-- `A220415(n+1)/(A003982(n)+1)` -/
def P7643055814067312538.Spec : Prop :=
  ∀ n, P7643055814067312538.a n = (A204123 (n + 1) : ℚ)

end A204123

/-! ## A204123.P6260932630135386764

`A265917(A131816(n))`
-/

namespace A204123.P6260932630135386764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (A131816 n).toNat

end

end A204123.P6260932630135386764

namespace A204123

/-- `A265917(A131816(n))` -/
def P6260932630135386764.Spec : Prop :=
  ∀ n, P6260932630135386764.a n = A204123 (n + 1)

end A204123

/-! ## A204123.P1557354627572221559

`A265917(2*A115216(n))-1`
-/

namespace A204123.P1557354627572221559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (2 * A115216 n).toNat - 1

end

end A204123.P1557354627572221559

namespace A204123

/-- `A265917(2*A115216(n))-1` -/
def P1557354627572221559.Spec : Prop :=
  ∀ n, P1557354627572221559.a n = A204123 (n + 1)

end A204123

/-! ## A204123.P3796899467897791400

`A003988(n+1)+A004199(n+1)*A275510(n+1)`
-/

namespace A204123.P3796899467897791400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1) + A004199 (n + 1) * A275510 (n + 1)

end

end A204123.P3796899467897791400

namespace A204123

/-- `A003988(n+1)+A004199(n+1)*A275510(n+1)` -/
def P3796899467897791400.Spec : Prop :=
  ∀ n, P3796899467897791400.a n = A204123 (n + 1)

end A204123

/-!
# A204125: Symmetric matrix based on f(i,j)=(i if i=j and 1 otherwise), by antidiagonals.

The programs for A204125, the canonical program `A204125.P6521554713757744225` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204125 has offset 1).

The definition of A204125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204125.P6521554713757744225

`gcd(n, ceil(∏{d}[2*n+1, #]/2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204125

/-- `gcd(n, ceil(∏{d}[2*n+1, #]/2))` -/
def P6521554713757744225.Spec : Prop :=
  ∀ n, (P6521554713757744225.a n : ℤ) = A204125 (n + 1)

theorem P6521554713757744225.correct : P6521554713757744225.Spec := by
  intro n
  simp only [A204125, Nat.add_sub_cancel]

end A204125

/-! ## A204125.P1204821149404366049

`gcd(∏{d}[2*n+1, #]+1, 2*n)/2`
-/

namespace A204125.P1204821149404366049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (∏ d ∈ Nat.divisors (f1 n), d + 1) (2 * n) : ℚ) / 2

end

end A204125.P1204821149404366049

namespace A204125

/-- `gcd(∏{d}[2*n+1, #]+1, 2*n)/2` -/
def P1204821149404366049.Spec : Prop :=
  ∀ n, P1204821149404366049.a n = (A204125 (n + 1) : ℚ)

end A204125

/-! ## A204125.P7100727040549764004

`round(sqrt(2*n*char[∑[4*n]]+1)/2)`
-/

namespace A204125.P7100727040549764004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n * (if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℝ) / 2)

end

end A204125.P7100727040549764004

namespace A204125

/-- `round(sqrt(2*n*char[∑[4*n]]+1)/2)` -/
def P7100727040549764004.Spec : Prop :=
  ∀ n, P7100727040549764004.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P12845809106530354427

`ceil(A204131(n+1)/2)`
-/

namespace A204125.P12845809106530354427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204131 (n + 1) : ℚ) / 2⌉

end

end A204125.P12845809106530354427

namespace A204125

/-- `ceil(A204131(n+1)/2)` -/
def P12845809106530354427.Spec : Prop :=
  ∀ n, P12845809106530354427.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P4693360204417797197

`ceil(A204160(n+1)/3)`
-/

namespace A204125.P4693360204417797197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204160 (n + 1) : ℚ) / 3⌉

end

end A204125.P4693360204417797197

namespace A204125

/-- `ceil(A204160(n+1)/3)` -/
def P4693360204417797197.Spec : Prop :=
  ∀ n, P4693360204417797197.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P18004747657776681869

`ceil((A204181(n+1)+1)/2)`
-/

namespace A204125.P18004747657776681869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204181 (n + 1) + 1 : ℚ) / 2⌉

end

end A204125.P18004747657776681869

namespace A204125

/-- `ceil((A204181(n+1)+1)/2)` -/
def P18004747657776681869.Spec : Prop :=
  ∀ n, P18004747657776681869.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P692048411211306018

`ceil(A056926(2*n+1)/2)`
-/

namespace A204125.P692048411211306018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056926 (2 * n + 1) : ℚ) / 2⌉

end

end A204125.P692048411211306018

namespace A204125

/-- `ceil(A056926(2*n+1)/2)` -/
def P692048411211306018.Spec : Prop :=
  ∀ n, P692048411211306018.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P4895805797023292612

`A002260(n*char[∑[4*n]]+1)`
-/

namespace A204125.P4895805797023292612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A204125.P4895805797023292612

namespace A204125

/-- `A002260(n*char[∑[4*n]]+1)` -/
def P4895805797023292612.Spec : Prop :=
  ∀ n, P4895805797023292612.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P8928491471371683727

`A002262(n*char[∑[4*n]])+1`
-/

namespace A204125.P8928491471371683727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n * (if ∃ j, f1 j = n then 1 else 0)) + 1

end

end A204125.P8928491471371683727

namespace A204125

/-- `A002262(n*char[∑[4*n]])+1` -/
def P8928491471371683727.Spec : Prop :=
  ∀ n, P8928491471371683727.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P1214803713355704319

`A004736(n*char[∑[4*n]]+1)`
-/

namespace A204125.P1214803713355704319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A204125.P1214803713355704319

namespace A204125

/-- `A004736(n*char[∑[4*n]]+1)` -/
def P1214803713355704319.Spec : Prop :=
  ∀ n, P1214803713355704319.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P9908589443505294128

`(sqrt((2*n+1)^(A000005(2*n+1)%2))+1)/2`
-/

namespace A204125.P9908589443505294128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt ((2 * n + 1 : ℚ) ^ (Int.tmod (A000005 (2 * n + 1)) 2 : ℤ) : ℝ) + 1) / 2

end

end A204125.P9908589443505294128

namespace A204125

/-- `(sqrt((2*n+1)^(A000005(2*n+1)%2))+1)/2` -/
def P9908589443505294128.Spec : Prop :=
  ∀ n, P9908589443505294128.a n = (A204125 (n + 1) : ℝ)

end A204125

/-! ## A204125.P2191093360708379442

`A158416(A157458(n))`
-/

namespace A204125.P2191093360708379442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A157458 n).toNat

end

end A204125.P2191093360708379442

namespace A204125

/-- `A158416(A157458(n))` -/
def P2191093360708379442.Spec : Prop :=
  ∀ n, P2191093360708379442.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P7832830940265940563

`A056926(A375510(n))`
-/

namespace A204125.P7832830940265940563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A375510 n).toNat

end

end A204125.P7832830940265940563

namespace A204125

/-- `A056926(A375510(n))` -/
def P7832830940265940563.Spec : Prop :=
  ∀ n, P7832830940265940563.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P5288489826380644580

`A000463(A204131(n+1))`
-/

namespace A204125.P5288489826380644580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A204131 (n + 1)).toNat

end

end A204125.P5288489826380644580

namespace A204125

/-- `A000463(A204131(n+1))` -/
def P5288489826380644580.Spec : Prop :=
  ∀ n, P5288489826380644580.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P16930492243090989154

`A089688(n*A003982(n))`
-/

namespace A204125.P16930492243090989154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 ((n : ℤ) * A003982 n).toNat

end

end A204125.P16930492243090989154

namespace A204125

/-- `A089688(n*A003982(n))` -/
def P16930492243090989154.Spec : Prop :=
  ∀ n, P16930492243090989154.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P11331559626526790819

`A128227(n*A003982(n))`
-/

namespace A204125.P11331559626526790819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 ((n : ℤ) * A003982 n).toNat

end

end A204125.P11331559626526790819

namespace A204125

/-- `A128227(n*A003982(n))` -/
def P11331559626526790819.Spec : Prop :=
  ∀ n, P11331559626526790819.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P7514126216814883742

`A131899(n*A003982(n))`
-/

namespace A204125.P7514126216814883742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131899 ((n : ℤ) * A003982 n).toNat

end

end A204125.P7514126216814883742

namespace A204125

/-- `A131899(n*A003982(n))` -/
def P7514126216814883742.Spec : Prop :=
  ∀ n, P7514126216814883742.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P18409598753632027921

`A141539(n*A003982(n))`
-/

namespace A204125.P18409598753632027921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 ((n : ℤ) * A003982 n).toNat

end

end A204125.P18409598753632027921

namespace A204125

/-- `A141539(n*A003982(n))` -/
def P18409598753632027921.Spec : Prop :=
  ∀ n, P18409598753632027921.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P16272282661232471521

`A169803(n*A003982(n))`
-/

namespace A204125.P16272282661232471521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 ((n : ℤ) * A003982 n).toNat

end

end A204125.P16272282661232471521

namespace A204125

/-- `A169803(n*A003982(n))` -/
def P16272282661232471521.Spec : Prop :=
  ∀ n, P16272282661232471521.a n = A204125 (n + 1)

end A204125

/-! ## A204125.P10298670450154679132

`A193592(n*A003982(n))`
-/

namespace A204125.P10298670450154679132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 ((n : ℤ) * A003982 n).toNat

end

end A204125.P10298670450154679132

namespace A204125

/-- `A193592(n*A003982(n))` -/
def P10298670450154679132.Spec : Prop :=
  ∀ n, P10298670450154679132.a n = A204125 (n + 1)

end A204125

/-!
# A204127: Symmetric matrix based on f(i,j)=(F(i+1) if i=j and 1 otherwise), where F=A000045 (Fibonacci numbers), by antidiagonals.

The programs for A204127, the canonical program `A204127.P1015151669026784656` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204127 has offset 1).

The definition of A204127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204127.P3980892426967999856

`A053602(A204131(n+1))`
-/

namespace A204127.P3980892426967999856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A204131 (n + 1)).toNat

end

end A204127.P3980892426967999856

namespace A204127

/-- `A053602(A204131(n+1))` -/
def P3980892426967999856.Spec : Prop :=
  ∀ n, P3980892426967999856.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P1015151669026784656

`A193588(gcd(n, A068344(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204127

/-- `A193588(gcd(n, A068344(n)))` -/
def P1015151669026784656.Spec : Prop :=
  ∀ n, P1015151669026784656.a n = A204127 (n + 1)

theorem P1015151669026784656.correct : P1015151669026784656.Spec := by
  intro n
  simp only [A204127, Nat.add_sub_cancel]

end A204127

/-! ## A204127.P4028903804169164672

`A115339(A056926(Δ[n²]))`
-/

namespace A204127.P4028903804169164672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A056926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A204127.P4028903804169164672

namespace A204127

/-- `A115339(A056926(Δ[n²]))` -/
def P4028903804169164672.Spec : Prop :=
  ∀ n, P4028903804169164672.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P11060283111851327243

`A000045(A204125(n+1)+1)`
-/

namespace A204127.P11060283111851327243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204125 (n + 1) + 1).toNat

end

end A204127.P11060283111851327243

namespace A204127

/-- `A000045(A204125(n+1)+1)` -/
def P11060283111851327243.Spec : Prop :=
  ∀ n, P11060283111851327243.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P9929883121280732201

`A000045(A204179(n+1)+1)`
-/

namespace A204127.P9929883121280732201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204179 (n + 1) + 1).toNat

end

end A204127.P9929883121280732201

namespace A204127

/-- `A000045(A204179(n+1)+1)` -/
def P9929883121280732201.Spec : Prop :=
  ∀ n, P9929883121280732201.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P4663913316708529188

`A000045(A286100(n+1)+1)`
-/

namespace A204127.P4663913316708529188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A286100 (n + 1) + 1).toNat

end

end A204127.P4663913316708529188

namespace A204127

/-- `A000045(A286100(n+1)+1)` -/
def P4663913316708529188.Spec : Prop :=
  ∀ n, P4663913316708529188.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P9666425003921388150

`A053602(A056926(2*n+1))`
-/

namespace A204127.P9666425003921388150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A056926 (2 * n + 1)).toNat

end

end A204127.P9666425003921388150

namespace A204127

/-- `A053602(A056926(2*n+1))` -/
def P9666425003921388150.Spec : Prop :=
  ∀ n, P9666425003921388150.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P11302852787163691853

`A000045(ceil(A204181(n+1)/2)+1)`
-/

namespace A204127.P11302852787163691853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈(A204181 (n + 1) : ℚ) / 2⌉ + 1).toNat

end

end A204127.P11302852787163691853

namespace A204127

/-- `A000045(ceil(A204181(n+1)/2)+1)` -/
def P11302852787163691853.Spec : Prop :=
  ∀ n, P11302852787163691853.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P4509638803295842753

`A067330(A008624(n*A003982(n)))`
-/

namespace A204127.P4509638803295842753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A008624 ((n : ℤ) * A003982 n).toNat).toNat

end

end A204127.P4509638803295842753

namespace A204127

/-- `A067330(A008624(n*A003982(n)))` -/
def P4509638803295842753.Spec : Prop :=
  ∀ n, P4509638803295842753.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P6057563679118008340

`A022290(A204133(n+1))`
-/

namespace A204127.P6057563679118008340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A204133 (n + 1)).toNat

end

end A204127.P6057563679118008340

namespace A204127

/-- `A022290(A204133(n+1))` -/
def P6057563679118008340.Spec : Prop :=
  ∀ n, P6057563679118008340.a n = A204127 (n + 1)

end A204127

/-! ## A204127.P2214935324305804427

`A071766(A204242(n+1))`
-/

namespace A204127.P2214935324305804427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A204242 (n + 1)).toNat

end

end A204127.P2214935324305804427

namespace A204127

/-- `A071766(A204242(n+1))` -/
def P2214935324305804427.Spec : Prop :=
  ∀ n, P2214935324305804427.a n = A204127 (n + 1)

end A204127

/-!
# A204129: Symmetric matrix based on f(i,j)=(L(i) if i=j and 1 otherwise), where L=A000032 (Lucas numbers), by antidiagonals.

The programs for A204129, the canonical program `A204129.P10554218136035911169` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204129 has offset 1).

The definition of A204129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204129.P10554218136035911169

`A000032(A204125(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204129

/-- `A000032(A204125(n+1))` -/
def P10554218136035911169.Spec : Prop :=
  ∀ n, P10554218136035911169.a n = A204129 (n + 1)

theorem P10554218136035911169.correct : P10554218136035911169.Spec := by
  intro n
  simp only [A204129, Nat.add_sub_cancel]

end A204129

/-! ## A204129.P5834380385365897808

`A082587(A056926(Δ[n²]))`
-/

namespace A204129.P5834380385365897808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (A056926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A204129.P5834380385365897808

namespace A204129

/-- `A082587(A056926(Δ[n²]))` -/
def P5834380385365897808.Spec : Prop :=
  ∀ n, P5834380385365897808.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P2512710326686452331

`gcd(A068344(n), A104764(n+1))`
-/

namespace A204129.P2512710326686452331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068344 n) (A104764 (n + 1))

end

end A204129.P2512710326686452331

namespace A204129

/-- `gcd(A068344(n), A104764(n+1))` -/
def P2512710326686452331.Spec : Prop :=
  ∀ n, (P2512710326686452331.a n : ℤ) = A204129 (n + 1)

end A204129

/-! ## A204129.P3645090273307805897

`gcd(A068344(n)², A104765(n+1))`
-/

namespace A204129.P3645090273307805897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068344 n ^ 2) (A104765 (n + 1))

end

end A204129.P3645090273307805897

namespace A204129

/-- `gcd(A068344(n)², A104765(n+1))` -/
def P3645090273307805897.Spec : Prop :=
  ∀ n, (P3645090273307805897.a n : ℤ) = A204129 (n + 1)

end A204129

/-! ## A204129.P15437003533233116564

`A115339(A056926(2*n+1)+1)`
-/

namespace A204129.P15437003533233116564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A056926 (2 * n + 1) + 1).toNat

end

end A204129.P15437003533233116564

namespace A204129

/-- `A115339(A056926(2*n+1)+1)` -/
def P15437003533233116564.Spec : Prop :=
  ∀ n, P15437003533233116564.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P17004510971446901471

`A000032(A158416(A157458(n)))`
-/

namespace A204129.P17004510971446901471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A158416 (A157458 n).toNat).toNat

end

end A204129.P17004510971446901471

namespace A204129

/-- `A000032(A158416(A157458(n)))` -/
def P17004510971446901471.Spec : Prop :=
  ∀ n, P17004510971446901471.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P8834993023928700334

`A000032(A056926(A185725(n+1)))`
-/

namespace A204129.P8834993023928700334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A056926 (A185725 (n + 1)).toNat).toNat

end

end A204129.P8834993023928700334

namespace A204129

/-- `A000032(A056926(A185725(n+1)))` -/
def P8834993023928700334.Spec : Prop :=
  ∀ n, P8834993023928700334.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P13240986227640891821

`A000032(A056926(A185728(n+1)))`
-/

namespace A204129.P13240986227640891821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A056926 (A185728 (n + 1)).toNat).toNat

end

end A204129.P13240986227640891821

namespace A204129

/-- `A000032(A056926(A185728(n+1)))` -/
def P13240986227640891821.Spec : Prop :=
  ∀ n, P13240986227640891821.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P2740148387439738609

`A067979(A002265(n)*A010052(2*n+1))`
-/

namespace A204129.P2740148387439738609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A002265 n * A010052 (2 * n + 1)).toNat

end

end A204129.P2740148387439738609

namespace A204129

/-- `A067979(A002265(n)*A010052(2*n+1))` -/
def P2740148387439738609.Spec : Prop :=
  ∀ n, P2740148387439738609.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P953532237723967605

`A000032(A000005(A204133(n+1)))`
-/

namespace A204129.P953532237723967605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000005 (A204133 (n + 1)).toNat).toNat

end

end A204129.P953532237723967605

namespace A204129

/-- `A000032(A000005(A204133(n+1)))` -/
def P953532237723967605.Spec : Prop :=
  ∀ n, P953532237723967605.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P6802802262932544113

`A000032(A046818(A204242(n+1)))`
-/

namespace A204129.P6802802262932544113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A046818 (A204242 (n + 1)).toNat).toNat

end

end A204129.P6802802262932544113

namespace A204129

/-- `A000032(A046818(A204242(n+1)))` -/
def P6802802262932544113.Spec : Prop :=
  ∀ n, P6802802262932544113.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P12471218687333632155

`A071766(2*A204242(n+1))`
-/

namespace A204129.P12471218687333632155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (2 * A204242 (n + 1)).toNat

end

end A204129.P12471218687333632155

namespace A204129

/-- `A071766(2*A204242(n+1))` -/
def P12471218687333632155.Spec : Prop :=
  ∀ n, P12471218687333632155.a n = A204129 (n + 1)

end A204129

/-! ## A204129.P13581126382381618404

`A000032(A090996(A131816(n)))`
-/

namespace A204129.P13581126382381618404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A090996 (A131816 n).toNat).toNat

end

end A204129.P13581126382381618404

namespace A204129

/-- `A000032(A090996(A131816(n)))` -/
def P13581126382381618404.Spec : Prop :=
  ∀ n, P13581126382381618404.a n = A204129 (n + 1)

end A204129

/-!
# A204131: Symmetric matrix based on f(i,j)=(2i-1 if i=j and 1 otherwise), by antidiagonals.

The programs for A204131, the canonical program `A204131.P13811493532618554559` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204131 has offset 1).

The definition of A204131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204131.P2691524392080182694

`sqrt(2*n*char[∑[4*n]]+1)`
-/

namespace A204131.P2691524392080182694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * n * (if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℝ)

end

end A204131.P2691524392080182694

namespace A204131

/-- `sqrt(2*n*char[∑[4*n]]+1)` -/
def P2691524392080182694.Spec : Prop :=
  ∀ n, P2691524392080182694.a n = (A204131 (n + 1) : ℝ)

end A204131

/-! ## A204131.P13811493532618554559

`gcd(∏{d}[2*n+1, #]+1, 2*n)-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204131

/-- `gcd(∏{d}[2*n+1, #]+1, 2*n)-1` -/
def P13811493532618554559.Spec : Prop :=
  ∀ n, P13811493532618554559.a n = A204131 (n + 1)

theorem P13811493532618554559.correct : P13811493532618554559.Spec := by
  intro n
  simp only [A204131, Nat.add_sub_cancel]

end A204131

/-! ## A204131.P6796188661236142336

`gcd(floor(sqrt(2*n))+1, floor(sqrt(2*n+1)))`
-/

namespace A204131.P6796188661236142336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.sqrt (2 * n) + 1) (Nat.sqrt (2 * n + 1))

end

end A204131.P6796188661236142336

namespace A204131

/-- `gcd(floor(sqrt(2*n))+1, floor(sqrt(2*n+1)))` -/
def P6796188661236142336.Spec : Prop :=
  ∀ n, (P6796188661236142336.a n : ℤ) = A204131 (n + 1)

end A204131

/-! ## A204131.P18116651742208207715

`A056926(Δ[n²])`
-/

namespace A204131.P18116651742208207715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A204131.P18116651742208207715

namespace A204131

/-- `A056926(Δ[n²])` -/
def P18116651742208207715.Spec : Prop :=
  ∀ n, P18116651742208207715.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P3802894649195903103

`or(1, A204181(n+1))`
-/

namespace A204131.P3802894649195903103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204181 (n + 1))

end

end A204131.P3802894649195903103

namespace A204131

/-- `or(1, A204181(n+1))` -/
def P3802894649195903103.Spec : Prop :=
  ∀ n, P3802894649195903103.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P10483224803876666488

`2*A204125(n+1)-1`
-/

namespace A204131.P10483224803876666488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204125 (n + 1) - 1

end

end A204131.P10483224803876666488

namespace A204131

/-- `2*A204125(n+1)-1` -/
def P10483224803876666488.Spec : Prop :=
  ∀ n, P10483224803876666488.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P14331585173728830639

`or(1, A056926(2*n+1))`
-/

namespace A204131.P14331585173728830639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056926 (2 * n + 1))

end

end A204131.P14331585173728830639

namespace A204131

/-- `or(1, A056926(2*n+1))` -/
def P14331585173728830639.Spec : Prop :=
  ∀ n, P14331585173728830639.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P13965496519278592521

`A000027(A056926(2*n+1))`
-/

namespace A204131.P13965496519278592521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A056926 (2 * n + 1)).toNat

end

end A204131.P13965496519278592521

namespace A204131

/-- `A000027(A056926(2*n+1))` -/
def P13965496519278592521.Spec : Prop :=
  ∀ n, P13965496519278592521.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P7684894184908979273

`2*A158416(A157458(n))-1`
-/

namespace A204131.P7684894184908979273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158416 (A157458 n).toNat - 1

end

end A204131.P7684894184908979273

namespace A204131

/-- `2*A158416(A157458(n))-1` -/
def P7684894184908979273.Spec : Prop :=
  ∀ n, P7684894184908979273.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P6845820915196501437

`A003056(n*A003982(n))+1`
-/

namespace A204131.P6845820915196501437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) * A003982 n).toNat + 1

end

end A204131.P6845820915196501437

namespace A204131

/-- `A003056(n*A003982(n))+1` -/
def P6845820915196501437.Spec : Prop :=
  ∀ n, P6845820915196501437.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P5493928184117771493

`A157454(n*A003982(n)+1)`
-/

namespace A204131.P5493928184117771493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 ((n : ℤ) * A003982 n + 1).toNat

end

end A204131.P5493928184117771493

namespace A204131

/-- `A157454(n*A003982(n)+1)` -/
def P5493928184117771493.Spec : Prop :=
  ∀ n, P5493928184117771493.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P4102641735826154528

`A157458(n*A003982(n))+1`
-/

namespace A204131.P4102641735826154528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 ((n : ℤ) * A003982 n).toNat + 1

end

end A204131.P4102641735826154528

namespace A204131

/-- `A157458(n*A003982(n))+1` -/
def P4102641735826154528.Spec : Prop :=
  ∀ n, P4102641735826154528.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P2225419476680612524

`A172471(n*A003982(n)+1)`
-/

namespace A204131.P2225419476680612524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((n : ℤ) * A003982 n + 1).toNat

end

end A204131.P2225419476680612524

namespace A204131

/-- `A172471(n*A003982(n)+1)` -/
def P2225419476680612524.Spec : Prop :=
  ∀ n, P2225419476680612524.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P10970563205186138895

`A143453(and(n, A185917(n+1)))`
-/

namespace A204131.P10970563205186138895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (Int.land (n : ℤ) (A185917 (n + 1))).toNat

end

end A204131.P10970563205186138895

namespace A204131

/-- `A143453(and(n, A185917(n+1)))` -/
def P10970563205186138895.Spec : Prop :=
  ∀ n, P10970563205186138895.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P16289822389649784216

`A172471(xor(1, n*A003982(n)))`
-/

namespace A204131.P16289822389649784216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.xor 1 ((n : ℤ) * A003982 n)).toNat

end

end A204131.P16289822389649784216

namespace A204131

/-- `A172471(xor(1, n*A003982(n)))` -/
def P16289822389649784216.Spec : Prop :=
  ∀ n, P16289822389649784216.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P16453529705944496386

`A051340(A286108(n))`
-/

namespace A204131.P16453529705944496386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A286108 n).toNat

end

end A204131.P16453529705944496386

namespace A204131

/-- `A051340(A286108(n))` -/
def P16453529705944496386.Spec : Prop :=
  ∀ n, P16453529705944496386.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P14956363903619076988

`filter[A051340(n), A000035(#)]`
-/

namespace A204131.P14956363903619076988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A204131.P14956363903619076988

namespace A204131

/-- `filter[A051340(n), A000035(#)]` -/
def P14956363903619076988.Spec : Prop :=
  ∀ n, P14956363903619076988.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P2658603697890542482

`or(1, A037213(2*n+1))`
-/

namespace A204131.P2658603697890542482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037213 (2 * n + 1))

end

end A204131.P2658603697890542482

namespace A204131

/-- `or(1, A037213(2*n+1))` -/
def P2658603697890542482.Spec : Prop :=
  ∀ n, P2658603697890542482.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P5477959375567583437

`A255175(n*A000122(2*n+1))`
-/

namespace A204131.P5477959375567583437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 ((n : ℤ) * A000122 (2 * n + 1)).toNat

end

end A204131.P5477959375567583437

namespace A204131

/-- `A255175(n*A000122(2*n+1))` -/
def P5477959375567583437.Spec : Prop :=
  ∀ n, P5477959375567583437.a n = A204131 (n + 1)

end A204131

/-! ## A204131.P10937984310288772480

`A049240(2*n+1)+A037213(2*n+1)`
-/

namespace A204131.P10937984310288772480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (2 * n + 1) + A037213 (2 * n + 1)

end

end A204131.P10937984310288772480

namespace A204131

/-- `A049240(2*n+1)+A037213(2*n+1)` -/
def P10937984310288772480.Spec : Prop :=
  ∀ n, P10937984310288772480.a n = A204131 (n + 1)

end A204131

/-!
# A204133: Symmetric matrix based on f(i,j)=(2^(i-1) if i=j and 1 otherwise), by antidiagonals.

The programs for A204133, the canonical program `A204133.P15490279526159944465` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204133 has offset 1).

The definition of A204133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204133.P210115632590685050

`2^(A204125(n+1)-1)`
-/

namespace A204133.P210115632590685050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A204125 (n + 1) - 1 : ℤ)

end

end A204133.P210115632590685050

namespace A204133

/-- `2^(A204125(n+1)-1)` -/
def P210115632590685050.Spec : Prop :=
  ∀ n, P210115632590685050.a n = (A204133 (n + 1) : ℚ)

end A204133

/-! ## A204133.P7589643242512229922

`floor(A204242(n+1)/2)+1`
-/

namespace A204133.P7589643242512229922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204242 (n + 1) : ℚ) / 2⌋ + 1

end

end A204133.P7589643242512229922

namespace A204133

/-- `floor(A204242(n+1)/2)+1` -/
def P7589643242512229922.Spec : Prop :=
  ∀ n, P7589643242512229922.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P16294508503858807815

`A112479(A204118(n+1))`
-/

namespace A204133.P16294508503858807815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112479 (A204118 (n + 1)).toNat

end

end A204133.P16294508503858807815

namespace A204133

/-- `A112479(A204118(n+1))` -/
def P16294508503858807815.Spec : Prop :=
  ∀ n, P16294508503858807815.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P6521164949199977554

`A004070(n*A003982(n))`
-/

namespace A204133.P6521164949199977554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 ((n : ℤ) * A003982 n).toNat

end

end A204133.P6521164949199977554

namespace A204133

/-- `A004070(n*A003982(n))` -/
def P6521164949199977554.Spec : Prop :=
  ∀ n, P6521164949199977554.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P15490279526159944465

`A059268(n*A003982(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204133

/-- `A059268(n*A003982(n))` -/
def P15490279526159944465.Spec : Prop :=
  ∀ n, P15490279526159944465.a n = A204133 (n + 1)

theorem P15490279526159944465.correct : P15490279526159944465.Spec := by
  intro n
  simp only [A204133, Nat.add_sub_cancel]

end A204133

/-! ## A204133.P14296436228398860714

`A004070(gcd(n, A068344(n)))`
-/

namespace A204133.P14296436228398860714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (Int.gcd (n : ℤ) (A068344 n))

end

end A204133.P14296436228398860714

namespace A204133

/-- `A004070(gcd(n, A068344(n)))` -/
def P14296436228398860714.Spec : Prop :=
  ∀ n, P14296436228398860714.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P1870009638205748772

`A016116(A056926(2*n+1))`
-/

namespace A204133.P1870009638205748772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A056926 (2 * n + 1)).toNat

end

end A204133.P1870009638205748772

namespace A204133

/-- `A016116(A056926(2*n+1))` -/
def P1870009638205748772.Spec : Prop :=
  ∀ n, P1870009638205748772.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P11347780996523251763

`(A003982(n)+1)^A025581(n)`
-/

namespace A204133.P11347780996523251763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003982 n + 1 : ℚ) ^ (A025581 n : ℤ)

end

end A204133.P11347780996523251763

namespace A204133

/-- `(A003982(n)+1)^A025581(n)` -/
def P11347780996523251763.Spec : Prop :=
  ∀ n, P11347780996523251763.a n = (A204133 (n + 1) : ℚ)

end A204133

/-! ## A204133.P12361684713201499209

`2^A002262(n*A003982(n))`
-/

namespace A204133.P12361684713201499209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 ((n : ℤ) * A003982 n).toNat : ℤ)

end

end A204133.P12361684713201499209

namespace A204133

/-- `2^A002262(n*A003982(n))` -/
def P12361684713201499209.Spec : Prop :=
  ∀ n, P12361684713201499209.a n = (A204133 (n + 1) : ℚ)

end A204133

/-! ## A204133.P8663687885409363726

`gcd(A113953(n), A323377(n+1))`
-/

namespace A204133.P8663687885409363726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113953 n) (A323377 (n + 1))

end

end A204133.P8663687885409363726

namespace A204133

/-- `gcd(A113953(n), A323377(n+1))` -/
def P8663687885409363726.Spec : Prop :=
  ∀ n, (P8663687885409363726.a n : ℤ) = A204133 (n + 1)

end A204133

/-! ## A204133.P2220628325109771640

`(2^A004197(n))^A004530(2*n+1)`
-/

namespace A204133.P2220628325109771640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A004197 n : ℤ)) ^ (A004530 (2 * n + 1) : ℤ)

end

end A204133.P2220628325109771640

namespace A204133

/-- `(2^A004197(n))^A004530(2*n+1)` -/
def P2220628325109771640.Spec : Prop :=
  ∀ n, P2220628325109771640.a n = (A204133 (n + 1) : ℚ)

end A204133

/-! ## A204133.P16538821651981738061

`A011782(C(A002260(n+1), A183189(n)))`
-/

namespace A204133.P16538821651981738061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.choose (A002260 (n + 1)).toNat (A183189 n).toNat)

end

end A204133.P16538821651981738061

namespace A204133

/-- `A011782(C(A002260(n+1), A183189(n)))` -/
def P16538821651981738061.Spec : Prop :=
  ∀ n, P16538821651981738061.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P549045171210333188

`A011782(C(A002260(n+1), A202023(n)))`
-/

namespace A204133.P549045171210333188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.choose (A002260 (n + 1)).toNat (A202023 n).toNat)

end

end A204133.P549045171210333188

namespace A204133

/-- `A011782(C(A002260(n+1), A202023(n)))` -/
def P549045171210333188.Spec : Prop :=
  ∀ n, P549045171210333188.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P5883085179827329839

`A000034(A000005(2*n+1))^A002262(n)`
-/

namespace A204133.P5883085179827329839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 (A000005 (2 * n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A204133.P5883085179827329839

namespace A204133

/-- `A000034(A000005(2*n+1))^A002262(n)` -/
def P5883085179827329839.Spec : Prop :=
  ∀ n, P5883085179827329839.a n = (A204133 (n + 1) : ℚ)

end A204133

/-! ## A204133.P13981688132057943323

`A000034(A000005(2*n+1))^A025581(n)`
-/

namespace A204133.P13981688132057943323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 (A000005 (2 * n + 1)).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A204133.P13981688132057943323

namespace A204133

/-- `A000034(A000005(2*n+1))^A025581(n)` -/
def P13981688132057943323.Spec : Prop :=
  ∀ n, P13981688132057943323.a n = (A204133 (n + 1) : ℚ)

end A204133

/-! ## A204133.P7409542602793717114

`A011782(C(A002260(n+1), A077029(n+1)))`
-/

namespace A204133.P7409542602793717114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.choose (A002260 (n + 1)).toNat (A077029 (n + 1)).toNat)

end

end A204133.P7409542602793717114

namespace A204133

/-- `A011782(C(A002260(n+1), A077029(n+1)))` -/
def P7409542602793717114.Spec : Prop :=
  ∀ n, P7409542602793717114.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P1990997951953235046

`A131575(C(A176346(n), A003056(n)))`
-/

namespace A204133.P1990997951953235046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (Nat.choose (A176346 n).toNat (A003056 n).toNat)

end

end A204133.P1990997951953235046

namespace A204133

/-- `A131575(C(A176346(n), A003056(n)))` -/
def P1990997951953235046.Spec : Prop :=
  ∀ n, P1990997951953235046.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P6867630579578855469

`gcd(A130321(n), A347682(n+1))`
-/

namespace A204133.P6867630579578855469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130321 n) (A347682 (n + 1))

end

end A204133.P6867630579578855469

namespace A204133

/-- `gcd(A130321(n), A347682(n+1))` -/
def P6867630579578855469.Spec : Prop :=
  ∀ n, (P6867630579578855469.a n : ℤ) = A204133 (n + 1)

end A204133

/-! ## A204133.P14609528202897993639

`A016116(A037213(2*n+1))`
-/

namespace A204133.P14609528202897993639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A037213 (2 * n + 1)).toNat

end

end A204133.P14609528202897993639

namespace A204133

/-- `A016116(A037213(2*n+1))` -/
def P14609528202897993639.Spec : Prop :=
  ∀ n, P14609528202897993639.a n = A204133 (n + 1)

end A204133

/-! ## A204133.P6589717924796448248

`A059268(n*A010052(2*n+1))`
-/

namespace A204133.P6589717924796448248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((n : ℤ) * A010052 (2 * n + 1)).toNat

end

end A204133.P6589717924796448248

namespace A204133

/-- `A059268(n*A010052(2*n+1))` -/
def P6589717924796448248.Spec : Prop :=
  ∀ n, P6589717924796448248.a n = A204133 (n + 1)

end A204133

/-!
# A204136: Number of composites between successive twin prime pairs.

The programs for A204136, the canonical program `A204136.P1811365136690881817` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204136 has offset 1).

The definition of A204136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048614, A204099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204136.P1811365136690881817

`A204099(n+1)-A048614(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A204136

/-- `A204099(n+1)-A048614(n+1)` -/
def P1811365136690881817.Spec : Prop :=
  ∀ n, P1811365136690881817.a n = A204136 (n + 1)

theorem P1811365136690881817.correct : P1811365136690881817.Spec := by
  intro n
  simp only [A204136, Nat.add_sub_cancel]

end A204136

/-! ## A204136.P2402958784682945674

`A053319(n+1)-(A027833(n+1)+1)`
-/

namespace A204136.P2402958784682945674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 1) - (A027833 (n + 1) + 1)

end

end A204136.P2402958784682945674

namespace A204136

/-- `A053319(n+1)-(A027833(n+1)+1)` -/
def P2402958784682945674.Spec : Prop :=
  ∀ n, P2402958784682945674.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P17315080771980288930

`A167132(n+1)+1-A027833(n+1)`
-/

namespace A204136.P17315080771980288930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + (1 - A027833 (n + 1))

end

end A204136.P17315080771980288930

namespace A204136

/-- `A167132(n+1)+1-A027833(n+1)` -/
def P17315080771980288930.Spec : Prop :=
  ∀ n, P17315080771980288930.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P3656895819256504328

`Δ[A001359(n+1)]-(A027833(n+1)+1)`
-/

namespace A204136.P3656895819256504328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A027833 (n + 1) + 1)

end

end A204136.P3656895819256504328

namespace A204136

/-- `Δ[A001359(n+1)]-(A027833(n+1)+1)` -/
def P3656895819256504328.Spec : Prop :=
  ∀ n, P3656895819256504328.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P10030558558150931727

`Δ[A001359(n+1)-A029707(n+1)]-1`
-/

namespace A204136.P10030558558150931727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A204136.P10030558558150931727

namespace A204136

/-- `Δ[A001359(n+1)-A029707(n+1)]-1` -/
def P10030558558150931727.Spec : Prop :=
  ∀ n, P10030558558150931727.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P4937182072147538158

`A204099(n+1)-(A027833(C(2, n+1)+n+1)-2)`
-/

namespace A204136.P4937182072147538158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) - (A027833 (Nat.choose 2 (n + 1) + n + 1) - 2)

end

end A204136.P4937182072147538158

namespace A204136

/-- `A204099(n+1)-(A027833(C(2, n+1)+n+1)-2)` -/
def P4937182072147538158.Spec : Prop :=
  ∀ n, P4937182072147538158.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P9584596794263743936

`A014681(A053319(n+1))-A027833(n+1)`
-/

namespace A204136.P9584596794263743936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A053319 (n + 1)).toNat - A027833 (n + 1)

end

end A204136.P9584596794263743936

namespace A204136

/-- `A014681(A053319(n+1))-A027833(n+1)` -/
def P9584596794263743936.Spec : Prop :=
  ∀ n, P9584596794263743936.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P8188596875276464710

`A001359(n+2)-(A027833(n+1)+A014574(n+1))`
-/

namespace A204136.P8188596875276464710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - (A027833 (n + 1) + A014574 (n + 1))

end

end A204136.P8188596875276464710

namespace A204136

/-- `A001359(n+2)-(A027833(n+1)+A014574(n+1))` -/
def P8188596875276464710.Spec : Prop :=
  ∀ n, P8188596875276464710.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P9066378062126175710

`Δ[A169643(n+1)]-1`
-/

namespace A204136.P9066378062126175710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A204136.P9066378062126175710

namespace A204136

/-- `Δ[A169643(n+1)]-1` -/
def P9066378062126175710.Spec : Prop :=
  ∀ n, P9066378062126175710.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P3198180438434219467

`Δ[A014574(n+1)-A029707(n+1)]-1`
-/

namespace A204136.P3198180438434219467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A204136.P3198180438434219467

namespace A204136

/-- `Δ[A014574(n+1)-A029707(n+1)]-1` -/
def P3198180438434219467.Spec : Prop :=
  ∀ n, P3198180438434219467.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P15748737439221713716

`A014574(n+2)-(A027833(n+1)+A006512(n+1))`
-/

namespace A204136.P15748737439221713716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2) - (A027833 (n + 1) + A006512 (n + 1))

end

end A204136.P15748737439221713716

namespace A204136

/-- `A014574(n+2)-(A027833(n+1)+A006512(n+1))` -/
def P15748737439221713716.Spec : Prop :=
  ∀ n, P15748737439221713716.a n = A204136 (n + 1)

end A204136

/-! ## A204136.P17924803937951601968

`Δ[A026238(A014574(n+1))]-1`
-/

namespace A204136.P17924803937951601968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A014574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A204136.P17924803937951601968

namespace A204136

/-- `Δ[A026238(A014574(n+1))]-1` -/
def P17924803937951601968.Spec : Prop :=
  ∀ n, P17924803937951601968.a n = A204136 (n + 1)

end A204136

/-!
# A204138: Primes in A001945, apart from initializing 6 terms.

The programs for A204138, there is no canonical definition to state claims against.
-/

/-! ## A204138.P105165115172051258

`A001945(A104499(n+2))`
-/

namespace A204138.P105165115172051258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (A104499 (n + 2)).toNat

end

end A204138.P105165115172051258

/-! ## A204138.P4001421769783977606

`p?[A001945(n+5)]`
-/

namespace A204138.P4001421769783977606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204138.P4001421769783977606

/-! ## A204138.P12530001541936279760

`p?[A001945(n)-char[4]]`
-/

namespace A204138.P12530001541936279760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204138.P12530001541936279760

/-! ## A204138.P8324626577342878659

`p?[A001945(n)*A095792(n)]`
-/

namespace A204138.P8324626577342878659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n * A095792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204138.P8324626577342878659

/-! ## A204138.P3091472587776246663

`p?[A001945(n)*A257679(n)]`
-/

namespace A204138.P3091472587776246663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n * A257679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204138.P3091472587776246663

/-!
# A204139: Primes p such that 9p^2 is a penholodigital square (A036744).

The programs for A204139, there is no canonical definition to state claims against.
-/

/-! ## A204139.P6039659350255337307

`p?[A162859(n+1)]`
-/

namespace A204139.P6039659350255337307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204139.P6039659350255337307

/-! ## A204139.P7308215636735010929

`p?[round((sqrt(A352329(n+7))+1)/3)]`
-/

namespace A204139.P7308215636735010929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (A352329 (n + 7) : ℝ) + 1) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204139.P7308215636735010929

/-!
# A204140: Numbers m such that both m and 7m are zeroless pandigital numbers (A050289).

The programs for A204140, there is no canonical definition to state claims against.
-/

/-! ## A204140.P1492504419973339405

`A204141(n+1)/7`
-/

namespace A204140.P1492504419973339405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204141 (n + 1) : ℚ) / 7

end

end A204140.P1492504419973339405

/-!
# A204141: Numbers m such that both m and m/7 are zeroless pandigital numbers (A050289).

The programs for A204141, there is no canonical definition to state claims against.
-/

/-! ## A204141.P15635254403846311791

`7*A204140(n+1)`
-/

namespace A204141.P15635254403846311791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A204140 (n + 1)

end

end A204141.P15635254403846311791

/-!
# A204142: a(1)=1 and for n>1, a(n) equals the smallest prime greater than a(n-1) of the form a(i)*a(j)+2 for some i, j < n.

The programs for A204142, there is no canonical definition to state claims against.
-/

/-! ## A204142.P13451474821857476911

`eq[A290079(n+1), A323436(n)]`
-/

namespace A204142.P13451474821857476911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204142.P13451474821857476911

/-! ## A204142.P14477667674731520419

`A094802(A351695(n+1))`
-/

namespace A204142.P14477667674731520419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A351695 (n + 1)).toNat

end

end A204142.P14477667674731520419

/-! ## A204142.P8476679969470991270

`eq[n, A356974(A342194(n))]`
-/

namespace A204142.P8476679969470991270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356974 (A342194 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204142.P8476679969470991270

/-! ## A204142.P2069828956822385091

`eq[A321452(n), A325899(n)]`
-/

namespace A204142.P2069828956822385091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325899 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204142.P2069828956822385091

/-! ## A204142.P10107958809326632202

`eq[A321452(n), A357722(n)]`
-/

namespace A204142.P10107958809326632202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 (n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204142.P10107958809326632202

/-!
# A204143: Symmetric matrix based on f(i,j)=max(ceiling(i/j),ceiling(j/i)), by antidiagonals.

The programs for A204143, the canonical program `A204143.P7169083616238944113` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204143 has offset 1).

The definition of A204143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204143.P5400167688247440265

`floor(round(sqrt(2*(n+1)))/A003983(n+1))`
-/

namespace A204143.P5400167688247440265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) / (A003983 (n + 1) : ℚ)⌋

end

end A204143.P5400167688247440265

namespace A204143

/-- `floor(round(sqrt(2*(n+1)))/A003983(n+1))` -/
def P5400167688247440265.Spec : Prop :=
  ∀ n, P5400167688247440265.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P17773250703556117882

`A010766(n+1)*A010783(n+1)`
-/

namespace A204143.P17773250703556117882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A010783 (n + 1)

end

end A204143.P17773250703556117882

namespace A204143

/-- `A010766(n+1)*A010783(n+1)` -/
def P17773250703556117882.Spec : Prop :=
  ∀ n, P17773250703556117882.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P17934790999432814329

`floor(A002024(n+1)/(A004197(n)+1))`
-/

namespace A204143.P17934790999432814329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A004197 n + 1 : ℚ)⌋

end

end A204143.P17934790999432814329

namespace A204143

/-- `floor(A002024(n+1)/(A004197(n)+1))` -/
def P17934790999432814329.Spec : Prop :=
  ∀ n, P17934790999432814329.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P11296589215449883498

`ceil((A003984(n)+1)/A003983(n+1))`
-/

namespace A204143.P11296589215449883498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003984 n + 1 : ℚ) / (A003983 (n + 1) : ℚ)⌉

end

end A204143.P11296589215449883498

namespace A204143

/-- `ceil((A003984(n)+1)/A003983(n+1))` -/
def P11296589215449883498.Spec : Prop :=
  ∀ n, P11296589215449883498.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P5089763419224194076

`ceil(A051125(n+1)/A003983(n+1))`
-/

namespace A204143.P5089763419224194076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051125 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)⌉

end

end A204143.P5089763419224194076

namespace A204143

/-- `ceil(A051125(n+1)/A003983(n+1))` -/
def P5089763419224194076.Spec : Prop :=
  ∀ n, P5089763419224194076.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P1492586504234878994

`lcm(A010766(n+1), A010783(Δ[n²]-n))`
-/

namespace A204143.P1492586504234878994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010766 (n + 1)) (A010783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A204143.P1492586504234878994

namespace A204143

/-- `lcm(A010766(n+1), A010783(Δ[n²]-n))` -/
def P1492586504234878994.Spec : Prop :=
  ∀ n, (P1492586504234878994.a n : ℤ) = A204143 (n + 1)

end A204143

/-! ## A204143.P12713561884179546270

`A010766(A057944(n)+A003983(n+1))`
-/

namespace A204143.P12713561884179546270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A057944 n + A003983 (n + 1)).toNat

end

end A204143.P12713561884179546270

namespace A204143

/-- `A010766(A057944(n)+A003983(n+1))` -/
def P12713561884179546270.Spec : Prop :=
  ∀ n, P12713561884179546270.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P7169083616238944113

`A010783(n+1)*A010783(A038722(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A204143

/-- `A010783(n+1)*A010783(A038722(n+1))` -/
def P7169083616238944113.Spec : Prop :=
  ∀ n, P7169083616238944113.a n = A204143 (n + 1)

theorem P7169083616238944113.correct : P7169083616238944113.Spec := by
  intro n
  simp only [A204143, Nat.add_sub_cancel]

end A204143

/-! ## A204143.P8590600063288386191

`A010783(n+1)*A010783(A061579(n)+1)`
-/

namespace A204143.P8590600063288386191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A010783 (A061579 n + 1).toNat

end

end A204143.P8590600063288386191

namespace A204143

/-- `A010783(n+1)*A010783(A061579(n)+1)` -/
def P8590600063288386191.Spec : Prop :=
  ∀ n, P8590600063288386191.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P298505858254057113

`A010766(n+1)*A010766(A038722(n+1))`
-/

namespace A204143.P298505858254057113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A010766 (A038722 (n + 1)).toNat

end

end A204143.P298505858254057113

namespace A204143

/-- `A010766(n+1)*A010766(A038722(n+1))` -/
def P298505858254057113.Spec : Prop :=
  ∀ n, P298505858254057113.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P14109500231280332066

`A010766(n+1)*A010766(A061579(n)+1)`
-/

namespace A204143.P14109500231280332066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A010766 (A061579 n + 1).toNat

end

end A204143.P14109500231280332066

namespace A204143

/-- `A010766(n+1)*A010766(A061579(n)+1)` -/
def P14109500231280332066.Spec : Prop :=
  ∀ n, P14109500231280332066.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P16413564252610550435

`A010783(n+1)*A193739(A286158(n+1)+1)`
-/

namespace A204143.P16413564252610550435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A193739 (A286158 (n + 1) + 1).toNat

end

end A204143.P16413564252610550435

namespace A204143

/-- `A010783(n+1)*A193739(A286158(n+1)+1)` -/
def P16413564252610550435.Spec : Prop :=
  ∀ n, P16413564252610550435.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P1738793362803916539

`A010783(n+1)*A010783(A278818(n))`
-/

namespace A204143.P1738793362803916539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A010783 (A278818 n).toNat

end

end A204143.P1738793362803916539

namespace A204143

/-- `A010783(n+1)*A010783(A278818(n))` -/
def P1738793362803916539.Spec : Prop :=
  ∀ n, P1738793362803916539.a n = A204143 (n + 1)

end A204143

/-! ## A204143.P10376144990317687229

`A010783(n+1)*A013942(2*(n+1))`
-/

namespace A204143.P10376144990317687229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A013942 (2 * (n + 1))

end

end A204143.P10376144990317687229

namespace A204143

/-- `A010783(n+1)*A013942(2*(n+1))` -/
def P10376144990317687229.Spec : Prop :=
  ∀ n, P10376144990317687229.a n = A204143 (n + 1)

end A204143

/-!
# A204145: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204145, there is no canonical definition to state claims against.
-/

/-! ## A204145.P15205396651294022821

`A204153(∑[4*n]+1)`
-/

namespace A204145.P15205396651294022821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204145.P15205396651294022821

/-! ## A204145.P4083923917326008024

`A204153(A001844(n))+char[10]`
-/

namespace A204145.P4083923917326008024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204145.P4083923917326008024

/-! ## A204145.P10828336380004204931

`record[A003982(n)*A204153(n+1)]`
-/

namespace A204145.P10828336380004204931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204145.P10828336380004204931

/-! ## A204145.P1510492878266035716

`record[A204153(n+1)*A214505(n)]`
-/

namespace A204145.P1510492878266035716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204145.P1510492878266035716

/-! ## A204145.P1340811373127284971

`record[root(A204153(n+1), A253146(n+1))]`
-/

namespace A204145.P1340811373127284971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204153 (n + 1) : ℝ) ^ (1 / (A253146 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204145.P1340811373127284971

/-!
# A204146: Number of (n+2) X 3 0..2 arrays with every 3 X 3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204146, there is no canonical definition to state claims against.
-/

/-! ## A204146.P6666108243181647341

`A204153(∑[n]+1)`
-/

namespace A204146.P6666108243181647341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204146.P6666108243181647341

/-! ## A204146.P16936714347337089171

`record[A010054(n)*A204153(n+1)]`
-/

namespace A204146.P16936714347337089171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204146.P16936714347337089171

/-! ## A204146.P5843854682694755921

`record[A204153(n+1)/A026386(n)]`
-/

namespace A204146.P5843854682694755921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204153 (n + 1) : ℚ) / (A026386 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204146.P5843854682694755921

/-! ## A204146.P5020845570070802507

`record[A204153(n+1)/A073165(n)]`
-/

namespace A204146.P5020845570070802507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204153 (n + 1) : ℚ) / (A073165 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204146.P5020845570070802507

/-! ## A204146.P2784477882210723322

`record[gcd(A004247(n), A204153(n+1))]`
-/

namespace A204146.P2784477882210723322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A204153 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204146.P2784477882210723322

/-!
# A204147: Number of (n+2) X 4 0..2 arrays with every 3 X 3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204147, there is no canonical definition to state claims against.
-/

/-! ## A204147.P17645358511658828483

`A204153(∑[n+3]-2*n)`
-/

namespace A204147.P17645358511658828483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n)

end

end A204147.P17645358511658828483

/-! ## A204147.P15765291456705345597

`record[A010054(n)*A204153(n+2)]`
-/

namespace A204147.P15765291456705345597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204147.P15765291456705345597

/-! ## A204147.P259058444217313288

`lcm(2, A204153(A000124(n+1)+1))`
-/

namespace A204147.P259058444217313288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204153 (A000124 (n + 1) + 1).toNat)

end

end A204147.P259058444217313288

/-! ## A204147.P13832576876267119181

`record[A204153(n+2)/A204205(n+1)]`
-/

namespace A204147.P13832576876267119181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204153 (n + 2) : ℚ) / (A204205 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204147.P13832576876267119181

/-! ## A204147.P1708119905606216394

`A000045(A020639(2*(n+1)))*A204153(A000124(n+1)+1)`
-/

namespace A204147.P1708119905606216394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A204153 (A000124 (n + 1) + 1).toNat

end

end A204147.P1708119905606216394

/-!
# A204148: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204148, there is no canonical definition to state claims against.
-/

/-! ## A204148.P14336928739260332750

`A204153(∑[n+2]+4)`
-/

namespace A204148.P14336928739260332750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204148.P14336928739260332750

/-! ## A204148.P7096579753586910072

`lcm(2, A204153(A167499(n)+n))`
-/

namespace A204148.P7096579753586910072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204153 (A167499 n + (n : ℤ)).toNat)

end

end A204148.P7096579753586910072

/-! ## A204148.P11527195285937411949

`A204153(A167614(n+1))%A204150(n+1)`
-/

namespace A204148.P11527195285937411949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204153 (A167614 (n + 1)).toNat) (A204150 (n + 1))

end

end A204148.P11527195285937411949

/-! ## A204148.P16370742802238749947

`(n-A023443(n))*A204153(A167499(n)+n)`
-/

namespace A204148.P16370742802238749947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 n) * A204153 (A167499 n + (n : ℤ)).toNat

end

end A204148.P16370742802238749947

/-! ## A204148.P14542577006447677051

`A204153(A167614(n+1))+A008683(A017257(n)+1)`
-/

namespace A204148.P14542577006447677051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A167614 (n + 1)).toNat + A008683 (A017257 n + 1).toNat

end

end A204148.P14542577006447677051

/-!
# A204149: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204149, there is no canonical definition to state claims against.
-/

/-! ## A204149.P10358015570181862272

`A204153(A374004(n+1))`
-/

namespace A204149.P10358015570181862272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A374004 (n + 1)).toNat

end

end A204149.P10358015570181862272

/-! ## A204149.P10227317986239925178

`A204153(A145018(n+4))`
-/

namespace A204149.P10227317986239925178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A145018 (n + 4)).toNat

end

end A204149.P10227317986239925178

/-! ## A204149.P11696485041875179599

`A204153(A052905(n)+9)`
-/

namespace A204149.P11696485041875179599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A052905 n + 9).toNat

end

end A204149.P11696485041875179599

/-! ## A204149.P3162485671249098591

`A204153(A055999(n)+10)`
-/

namespace A204149.P3162485671249098591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A055999 n + 10).toNat

end

end A204149.P3162485671249098591

/-! ## A204149.P17622976209928110906

`A204153(A167614(n+2)+1)`
-/

namespace A204149.P17622976209928110906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A167614 (n + 2) + 1).toNat

end

end A204149.P17622976209928110906

/-!
# A204150: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204150, there is no canonical definition to state claims against.
-/

/-! ## A204150.P5954522188443841247

`A204153(∑[n+4]+11)`
-/

namespace A204150.P5954522188443841247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204150.P5954522188443841247

/-! ## A204150.P8523195969929791990

`A204153(A155212(n)+13)/A271838(n)`
-/

namespace A204150.P8523195969929791990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204153 (A155212 n + 13).toNat : ℚ) / (A271838 n : ℚ)

end

end A204150.P8523195969929791990

/-!
# A204151: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204151, there is no canonical definition to state claims against.
-/

/-! ## A204151.P2173350604844710391

`A204153(∑[n+5]+16)`
-/

namespace A204151.P2173350604844710391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A204151.P2173350604844710391

/-!
# A204152: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204152, there is no canonical definition to state claims against.
-/

/-! ## A204152.P8539672777108649169

`A204153(A374008(n+1))`
-/

namespace A204152.P8539672777108649169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A374008 (n + 1)).toNat

end

end A204152.P8539672777108649169

/-! ## A204152.P13472320207373841985

`A204153(eq[8, A131818(n+1)])`
-/

namespace A204152.P13472320207373841985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204152.P13472320207373841985

/-! ## A204152.P8638176225858052096

`A204153(eq[11, A099375(n)]+13)`
-/

namespace A204152.P8638176225858052096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 13)

end

end A204152.P8638176225858052096

/-! ## A204152.P7354106668173674329

`A204153(A055999(n+4))`
-/

namespace A204152.P7354106668173674329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A055999 (n + 4)).toNat

end

end A204152.P7354106668173674329

/-! ## A204152.P17566022740072996186

`A204153(A056121(n)+22)`
-/

namespace A204152.P17566022740072996186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204153 (A056121 n + 22).toNat

end

end A204152.P17566022740072996186

/-!
# A204154: Symmetric matrix based on f(i,j) = max(2i-j, 2j-i), by antidiagonals.

The programs for A204154, the canonical program `A204154.P17367594193220542085` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204154 has offset 1).

The definition of A204154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204154.P13896158811503827134

`A143182(n)+A003984(n)`
-/

namespace A204154.P13896158811503827134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n + A003984 n

end

end A204154.P13896158811503827134

namespace A204154

/-- `A143182(n)+A003984(n)` -/
def P13896158811503827134.Spec : Prop :=
  ∀ n, P13896158811503827134.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P2550242629129909666

`A003984(n)+A049581(n)+1`
-/

namespace A204154.P2550242629129909666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + (A049581 n + 1)

end

end A204154.P2550242629129909666

namespace A204154

/-- `A003984(n)+A049581(n)+1` -/
def P2550242629129909666.Spec : Prop :=
  ∀ n, P2550242629129909666.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P8448173827101659030

`A051125(n+1)+A049581(n)`
-/

namespace A204154.P8448173827101659030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + A049581 n

end

end A204154.P8448173827101659030

namespace A204154

/-- `A051125(n+1)+A049581(n)` -/
def P8448173827101659030.Spec : Prop :=
  ∀ n, P8448173827101659030.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P11794265983877243139

`A204156(n+1)-A003984(n)`
-/

namespace A204154.P11794265983877243139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) - A003984 n

end

end A204154.P11794265983877243139

namespace A204154

/-- `A204156(n+1)-A003984(n)` -/
def P11794265983877243139.Spec : Prop :=
  ∀ n, P11794265983877243139.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P9159246132707517207

`A204022(n+1)-A004197(n)`
-/

namespace A204154.P9159246132707517207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) - A004197 n

end

end A204154.P9159246132707517207

namespace A204154

/-- `A204022(n+1)-A004197(n)` -/
def P9159246132707517207.Spec : Prop :=
  ∀ n, P9159246132707517207.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P9947786719192477089

`A204158(n+1)-A049581(n)`
-/

namespace A204154.P9947786719192477089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204158 (n + 1) - A049581 n

end

end A204154.P9947786719192477089

namespace A204154

/-- `A204158(n+1)-A049581(n)` -/
def P9947786719192477089.Spec : Prop :=
  ∀ n, P9947786719192477089.a n = A204154 (n + 1)

theorem P9947786719192477089.correct : P9947786719192477089.Spec := by
  intro n
  simp only [A204154, Nat.add_sub_cancel, A204154.P9947786719192477089.a, A204154.P17367594193220542085.a, A049581, A049581.P10108526043471454015.a, A111650, A111650.P12812755283030262400.a, A204028, A204028.P5390969343002212322.a, A204158, A204158.P9414050647087276641.a, A002024, A002024.P11700297927830783882.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204154

/-! ## A204154.P10966353615713832048

`A051125(n+1)+A143182(n)-1`
-/

namespace A204154.P10966353615713832048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + (A143182 n - 1)

end

end A204154.P10966353615713832048

namespace A204154

/-- `A051125(n+1)+A143182(n)-1` -/
def P10966353615713832048.Spec : Prop :=
  ∀ n, P10966353615713832048.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P8352656154073102258

`A204237(n+1)-A051125(n+1)`
-/

namespace A204154.P8352656154073102258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204237 (n + 1) - A051125 (n + 1)

end

end A204154.P8352656154073102258

namespace A204154

/-- `A204237(n+1)-A051125(n+1)` -/
def P8352656154073102258.Spec : Prop :=
  ∀ n, P8352656154073102258.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P17367594193220542085

`A111650(n+1)-A204028(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204154

/-- `A111650(n+1)-A204028(n+1)` -/
def P17367594193220542085.Spec : Prop :=
  ∀ n, P17367594193220542085.a n = A204154 (n + 1)

theorem P17367594193220542085.correct : P17367594193220542085.Spec := by
  intro n
  simp only [A204154, Nat.add_sub_cancel]

end A204154

/-! ## A204154.P15674868444986898844

`A003984(n)+2-A203994(n+1)`
-/

namespace A204154.P15674868444986898844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + (2 - A203994 (n + 1))

end

end A204154.P15674868444986898844

namespace A204154

/-- `A003984(n)+2-A203994(n+1)` -/
def P15674868444986898844.Spec : Prop :=
  ∀ n, P15674868444986898844.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P6363301728028987238

`A003983(n+1)+2*A049581(n)`
-/

namespace A204154.P6363301728028987238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + 2 * A049581 n

end

end A204154.P6363301728028987238

namespace A204154

/-- `A003983(n+1)+2*A049581(n)` -/
def P6363301728028987238.Spec : Prop :=
  ∀ n, P6363301728028987238.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P18080811258909106597

`A204004(n+1)-2*A004197(n)`
-/

namespace A204154.P18080811258909106597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) - 2 * A004197 n

end

end A204154.P18080811258909106597

namespace A204154

/-- `A204004(n+1)-2*A004197(n)` -/
def P18080811258909106597.Spec : Prop :=
  ∀ n, P18080811258909106597.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P1710864503441990508

`A204022(n+1)+1-A003983(n+1)`
-/

namespace A204154.P1710864503441990508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + (1 - A003983 (n + 1))

end

end A204154.P1710864503441990508

namespace A204154

/-- `A204022(n+1)+1-A003983(n+1)` -/
def P1710864503441990508.Spec : Prop :=
  ∀ n, P1710864503441990508.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P15454277698009499620

`2*A051125(n+1)-A003983(n+1)`
-/

namespace A204154.P15454277698009499620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051125 (n + 1) - A003983 (n + 1)

end

end A204154.P15454277698009499620

namespace A204154

/-- `2*A051125(n+1)-A003983(n+1)` -/
def P15454277698009499620.Spec : Prop :=
  ∀ n, P15454277698009499620.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P12548960221390432203

`2*A204022(n+1)-A204004(n+1)`
-/

namespace A204154.P12548960221390432203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204022 (n + 1) - A204004 (n + 1)

end

end A204154.P12548960221390432203

namespace A204154

/-- `2*A204022(n+1)-A204004(n+1)` -/
def P12548960221390432203.Spec : Prop :=
  ∀ n, P12548960221390432203.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P12116394325117577248

`3*A051125(n+1)-A003057(n+2)`
-/

namespace A204154.P12116394325117577248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A051125 (n + 1) - A003057 (n + 2)

end

end A204154.P12116394325117577248

namespace A204154

/-- `3*A051125(n+1)-A003057(n+2)` -/
def P12116394325117577248.Spec : Prop :=
  ∀ n, P12116394325117577248.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P2594821193592399945

`A005408(A003984(n))-A004197(n)`
-/

namespace A204154.P2594821193592399945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003984 n).toNat - A004197 n

end

end A204154.P2594821193592399945

namespace A204154

/-- `A005408(A003984(n))-A004197(n)` -/
def P2594821193592399945.Spec : Prop :=
  ∀ n, P2594821193592399945.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P12169513627567033621

`A016777(A003984(n))-A003056(n)`
-/

namespace A204154.P12169513627567033621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A003984 n).toNat - A003056 n

end

end A204154.P12169513627567033621

namespace A204154

/-- `A016777(A003984(n))-A003056(n)` -/
def P12169513627567033621.Spec : Prop :=
  ∀ n, P12169513627567033621.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P1265566579693452593

`A001651(A204022(n+1))-A003056(n)`
-/

namespace A204154.P1265566579693452593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A204022 (n + 1)).toNat - A003056 n

end

end A204154.P1265566579693452593

namespace A204154

/-- `A001651(A204022(n+1))-A003056(n)` -/
def P1265566579693452593.Spec : Prop :=
  ∀ n, P1265566579693452593.a n = A204154 (n + 1)

end A204154

/-! ## A204154.P16704774547798113307

`A004197(n)+A143182(n)+A049581(n)`
-/

namespace A204154.P16704774547798113307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + (A143182 n + A049581 n)

end

end A204154.P16704774547798113307

namespace A204154

/-- `A004197(n)+A143182(n)+A049581(n)` -/
def P16704774547798113307.Spec : Prop :=
  ∀ n, P16704774547798113307.a n = A204154 (n + 1)

end A204154

/-!
# A204156: Symmetric matrix based on f(i,j)=max(3i-j, 3j-i), by antidiagonals.

The programs for A204156, the canonical program `A204156.P2950584542744823295` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204156 has offset 1).

The definition of A204156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204156.P11373618315762243838

`A204237(n+1)-1`
-/

namespace A204156.P11373618315762243838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204237 (n + 1) - 1

end

end A204156.P11373618315762243838

namespace A204156

/-- `A204237(n+1)-1` -/
def P11373618315762243838.Spec : Prop :=
  ∀ n, P11373618315762243838.a n = A204156 (n + 1)

theorem P11373618315762243838.correct : P11373618315762243838.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P11373618315762243838.a, A204156.P2950584542744823295.a, A049581, A049581.P10108526043471454015.a, A204022, A204022.P5041661320422895112.a, A204237, A204237.P6099322334008855491.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P3895302402453742177

`A204154(n+1)+A003984(n)`
-/

namespace A204156.P3895302402453742177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A003984 n

end

end A204156.P3895302402453742177

namespace A204156

/-- `A204154(n+1)+A003984(n)` -/
def P3895302402453742177.Spec : Prop :=
  ∀ n, P3895302402453742177.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P7984827238837171932

`A204158(n+1)+A004197(n)`
-/

namespace A204156.P7984827238837171932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204158 (n + 1) + A004197 n

end

end A204156.P7984827238837171932

namespace A204156

/-- `A204158(n+1)+A004197(n)` -/
def P7984827238837171932.Spec : Prop :=
  ∀ n, P7984827238837171932.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P2950584542744823295

`A204022(n+1)+A049581(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204156

/-- `A204022(n+1)+A049581(n)` -/
def P2950584542744823295.Spec : Prop :=
  ∀ n, P2950584542744823295.a n = A204156 (n + 1)

theorem P2950584542744823295.correct : P2950584542744823295.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel]

end A204156

/-! ## A204156.P3910146643771003280

`A143182(n)+2*A003984(n)`
-/

namespace A204156.P3910146643771003280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n + 2 * A003984 n

end

end A204156.P3910146643771003280

namespace A204156

/-- `A143182(n)+2*A003984(n)` -/
def P3910146643771003280.Spec : Prop :=
  ∀ n, P3910146643771003280.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P4252500033365847349

`A204022(n+1)+abs(A114327(n))`
-/

namespace A204156.P4252500033365847349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + |A114327 n|

end

end A204156.P4252500033365847349

namespace A204156

/-- `A204022(n+1)+abs(A114327(n))` -/
def P4252500033365847349.Spec : Prop :=
  ∀ n, P4252500033365847349.a n = A204156 (n + 1)

theorem P4252500033365847349.correct : P4252500033365847349.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P4252500033365847349.a, A204156.P2950584542744823295.a, A049581, A049581.P10108526043471454015.a, A114327, A114327.P12930942860764139837.a, A204022, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P9530121005462294113

`A204022(n+1)+A143182(n)-1`
-/

namespace A204156.P9530121005462294113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + (A143182 n - 1)

end

end A204156.P9530121005462294113

namespace A204156

/-- `A204022(n+1)+A143182(n)-1` -/
def P9530121005462294113.Spec : Prop :=
  ∀ n, P9530121005462294113.a n = A204156 (n + 1)

theorem P9530121005462294113.correct : P9530121005462294113.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P9530121005462294113.a, A204156.P2950584542744823295.a, A049581, A049581.P10108526043471454015.a, A143182, A143182.P5915452531029149759.a, A204022, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P18078361596356440047

`A002024(n+1)+2*A049581(n)`
-/

namespace A204156.P18078361596356440047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + 2 * A049581 n

end

end A204156.P18078361596356440047

namespace A204156

/-- `A002024(n+1)+2*A049581(n)` -/
def P18078361596356440047.Spec : Prop :=
  ∀ n, P18078361596356440047.a n = A204156 (n + 1)

theorem P18078361596356440047.correct : P18078361596356440047.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P18078361596356440047.a, A204156.P2950584542744823295.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P10108526043471454015.a, A204022, A204022.P5041661320422895112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P13488552107232510055

`A002024(n+1)+abs(2*A114327(n))`
-/

namespace A204156.P13488552107232510055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + |2 * A114327 n|

end

end A204156.P13488552107232510055

namespace A204156

/-- `A002024(n+1)+abs(2*A114327(n))` -/
def P13488552107232510055.Spec : Prop :=
  ∀ n, P13488552107232510055.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P2717878594418747587

`A003983(n+1)+A204158(n+1)-1`
-/

namespace A204156.P2717878594418747587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A204158 (n + 1) - 1)

end

end A204156.P2717878594418747587

namespace A204156

/-- `A003983(n+1)+A204158(n+1)-1` -/
def P2717878594418747587.Spec : Prop :=
  ∀ n, P2717878594418747587.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P15148775730591620147

`A051125(n+1)+A204154(n+1)-1`
-/

namespace A204156.P15148775730591620147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + (A204154 (n + 1) - 1)

end

end A204156.P15148775730591620147

namespace A204156

/-- `A051125(n+1)+A204154(n+1)-1` -/
def P15148775730591620147.Spec : Prop :=
  ∀ n, P15148775730591620147.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P17209904413292283919

`2*A204022(n+1)-A002024(n+1)`
-/

namespace A204156.P17209904413292283919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204022 (n + 1) - A002024 (n + 1)

end

end A204156.P17209904413292283919

namespace A204156

/-- `2*A204022(n+1)-A002024(n+1)` -/
def P17209904413292283919.Spec : Prop :=
  ∀ n, P17209904413292283919.a n = A204156 (n + 1)

theorem P17209904413292283919.correct : P17209904413292283919.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P17209904413292283919.a, A204156.P2950584542744823295.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P10108526043471454015.a, A204022, A204022.P5041661320422895112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P2913826026902853083

`A049581(n)+A005408(A003984(n))`
-/

namespace A204156.P2913826026902853083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + A005408 (A003984 n).toNat

end

end A204156.P2913826026902853083

namespace A204156

/-- `A049581(n)+A005408(A003984(n))` -/
def P2913826026902853083.Spec : Prop :=
  ∀ n, P2913826026902853083.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P12491279374258865537

`A016777(A049581(n))+2*A004197(n)`
-/

namespace A204156.P12491279374258865537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A049581 n).toNat + 2 * A004197 n

end

end A204156.P12491279374258865537

namespace A204156

/-- `A016777(A049581(n))+2*A004197(n)` -/
def P12491279374258865537.Spec : Prop :=
  ∀ n, P12491279374258865537.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P12566809506792580476

`A003056(n)+A143182(n)+A049581(n)`
-/

namespace A204156.P12566809506792580476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A143182 n + A049581 n)

end

end A204156.P12566809506792580476

namespace A204156

/-- `A003056(n)+A143182(n)+A049581(n)` -/
def P12566809506792580476.Spec : Prop :=
  ∀ n, P12566809506792580476.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P18215736692813225455

`A111650(n+1)+A049581(n)-A157454(n+1)`
-/

namespace A204156.P18215736692813225455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A049581 n - A157454 (n + 1))

end

end A204156.P18215736692813225455

namespace A204156

/-- `A111650(n+1)+A049581(n)-A157454(n+1)` -/
def P18215736692813225455.Spec : Prop :=
  ∀ n, P18215736692813225455.a n = A204156 (n + 1)

theorem P18215736692813225455.correct : P18215736692813225455.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P18215736692813225455.a, A204156.P2950584542744823295.a, A049581, A049581.P10108526043471454015.a, A111650, A111650.P12812755283030262400.a, A157454, A157454.P17958483760181188644.a, A204022, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P11309165096858144040

`A002024(n+1)+A204022(n+1)-A157454(n+1)`
-/

namespace A204156.P11309165096858144040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A204022 (n + 1) - A157454 (n + 1))

end

end A204156.P11309165096858144040

namespace A204156

/-- `A002024(n+1)+A204022(n+1)-A157454(n+1)` -/
def P11309165096858144040.Spec : Prop :=
  ∀ n, P11309165096858144040.a n = A204156 (n + 1)

theorem P11309165096858144040.correct : P11309165096858144040.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P11309165096858144040.a, A204156.P2950584542744823295.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P10108526043471454015.a, A157454, A157454.P17958483760181188644.a, A204022, A204022.P5041661320422895112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P8667363797666393693

`A111652(n+1)-(A157454(n+1)+A157454(n+1))`
-/

namespace A204156.P8667363797666393693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111652 (n + 1) - (A157454 (n + 1) + A157454 (n + 1))

end

end A204156.P8667363797666393693

namespace A204156

/-- `A111652(n+1)-(A157454(n+1)+A157454(n+1))` -/
def P8667363797666393693.Spec : Prop :=
  ∀ n, P8667363797666393693.a n = A204156 (n + 1)

theorem P8667363797666393693.correct : P8667363797666393693.Spec := by
  intro n
  simp only [A204156, Nat.add_sub_cancel, A204156.P8667363797666393693.a, A204156.P2950584542744823295.a, A049581, A049581.P10108526043471454015.a, A111652, A111652.P14375499418196975320.a, A157454, A157454.P17958483760181188644.a, A204022, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204156

/-! ## A204156.P16117467025153669409

`A003984(n)+A005408(A003984(n))-A004197(n)`
-/

namespace A204156.P16117467025153669409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + (A005408 (A003984 n).toNat - A004197 n)

end

end A204156.P16117467025153669409

namespace A204156

/-- `A003984(n)+A005408(A003984(n))-A004197(n)` -/
def P16117467025153669409.Spec : Prop :=
  ∀ n, P16117467025153669409.a n = A204156 (n + 1)

end A204156

/-! ## A204156.P16071069419659816449

`A003984(n)+A016777(A003984(n))-A003056(n)`
-/

namespace A204156.P16071069419659816449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + (A016777 (A003984 n).toNat - A003056 n)

end

end A204156.P16071069419659816449

namespace A204156

/-- `A003984(n)+A016777(A003984(n))-A003056(n)` -/
def P16071069419659816449.Spec : Prop :=
  ∀ n, P16071069419659816449.a n = A204156 (n + 1)

end A204156

/-!
# A204158: Symmetric matrix based on f(i,j)=max(3i-2j, 3j-2i), by antidiagonals.

The programs for A204158, the canonical program `A204158.P9414050647087276641` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204158 has offset 1).

The definition of A204158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204158.P9414050647087276641

`A204154(n+1)+A049581(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204158

/-- `A204154(n+1)+A049581(n)` -/
def P9414050647087276641.Spec : Prop :=
  ∀ n, P9414050647087276641.a n = A204158 (n + 1)

theorem P9414050647087276641.correct : P9414050647087276641.Spec := by
  intro n
  simp only [A204158, Nat.add_sub_cancel]

end A204158

/-! ## A204158.P6657752072997807386

`A204156(n+1)-A004197(n)`
-/

namespace A204158.P6657752072997807386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) - A004197 n

end

end A204158.P6657752072997807386

namespace A204158

/-- `A204156(n+1)-A004197(n)` -/
def P6657752072997807386.Spec : Prop :=
  ∀ n, P6657752072997807386.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P1472961508471466378

`A204154(n+1)+abs(A114327(n))`
-/

namespace A204158.P1472961508471466378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + |A114327 n|

end

end A204158.P1472961508471466378

namespace A204158

/-- `A204154(n+1)+abs(A114327(n))` -/
def P1472961508471466378.Spec : Prop :=
  ∀ n, P1472961508471466378.a n = A204158 (n + 1)

theorem P1472961508471466378.correct : P1472961508471466378.Spec := by
  intro n
  simp only [A204158, Nat.add_sub_cancel, A204158.P1472961508471466378.a, A204158.P9414050647087276641.a, A049581, A049581.P10108526043471454015.a, A114327, A114327.P12930942860764139837.a, A204154, A204154.P17367594193220542085.a, A111650, A111650.P12812755283030262400.a, A204028, A204028.P5390969343002212322.a, A002024, A002024.P11700297927830783882.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204158

/-! ## A204158.P7959237910405005550

`A204237(n+1)-A003983(n+1)`
-/

namespace A204158.P7959237910405005550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204237 (n + 1) - A003983 (n + 1)

end

end A204158.P7959237910405005550

namespace A204158

/-- `A204237(n+1)-A003983(n+1)` -/
def P7959237910405005550.Spec : Prop :=
  ∀ n, P7959237910405005550.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P1080589362606320002

`A051125(n+1)+2*A049581(n)`
-/

namespace A204158.P1080589362606320002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) + 2 * A049581 n

end

end A204158.P1080589362606320002

namespace A204158

/-- `A051125(n+1)+2*A049581(n)` -/
def P1080589362606320002.Spec : Prop :=
  ∀ n, P1080589362606320002.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P16762833334708606740

`2*A204154(n+1)-A051125(n+1)`
-/

namespace A204158.P16762833334708606740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204154 (n + 1) - A051125 (n + 1)

end

end A204158.P16762833334708606740

namespace A204158

/-- `2*A204154(n+1)-A051125(n+1)` -/
def P16762833334708606740.Spec : Prop :=
  ∀ n, P16762833334708606740.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P7315852858892465523

`A005408(A049581(n))+A003984(n)`
-/

namespace A204158.P7315852858892465523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A049581 n).toNat + A003984 n

end

end A204158.P7315852858892465523

namespace A204158

/-- `A005408(A049581(n))+A003984(n)` -/
def P7315852858892465523.Spec : Prop :=
  ∀ n, P7315852858892465523.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P12298671901310674646

`A016777(A049581(n))+A004197(n)`
-/

namespace A204158.P12298671901310674646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A049581 n).toNat + A004197 n

end

end A204158.P12298671901310674646

namespace A204158

/-- `A016777(A049581(n))+A004197(n)` -/
def P12298671901310674646.Spec : Prop :=
  ∀ n, P12298671901310674646.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P13083645810447162199

`A008585(A049581(n))+A003983(n+1)`
-/

namespace A204158.P13083645810447162199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A049581 n).toNat + A003983 (n + 1)

end

end A204158.P13083645810447162199

namespace A204158

/-- `A008585(A049581(n))+A003983(n+1)` -/
def P13083645810447162199.Spec : Prop :=
  ∀ n, P13083645810447162199.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P14984579389042725279

`A204022(n+1)+A049581(n)-A004197(n)`
-/

namespace A204158.P14984579389042725279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + (A049581 n - A004197 n)

end

end A204158.P14984579389042725279

namespace A204158

/-- `A204022(n+1)+A049581(n)-A004197(n)` -/
def P14984579389042725279.Spec : Prop :=
  ∀ n, P14984579389042725279.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P6563679711595439969

`A005408(A003984(n)-A004197(n))+A003984(n)`
-/

namespace A204158.P6563679711595439969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003984 n - A004197 n).toNat + A003984 n

end

end A204158.P6563679711595439969

namespace A204158

/-- `A005408(A003984(n)-A004197(n))+A003984(n)` -/
def P6563679711595439969.Spec : Prop :=
  ∀ n, P6563679711595439969.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P17531333917239087814

`A204154(n+1)+A053188(2*n+1)`
-/

namespace A204158.P17531333917239087814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A053188 (2 * n + 1)

end

end A204158.P17531333917239087814

namespace A204158

/-- `A204154(n+1)+A053188(2*n+1)` -/
def P17531333917239087814.Spec : Prop :=
  ∀ n, P17531333917239087814.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P3734304040963370605

`A249919(A131816(n))/2`
-/

namespace A204158.P3734304040963370605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249919 (A131816 n).toNat : ℚ) / 2

end

end A204158.P3734304040963370605

namespace A204158

/-- `A249919(A131816(n))/2` -/
def P3734304040963370605.Spec : Prop :=
  ∀ n, P3734304040963370605.a n = (A204158 (n + 1) : ℚ)

end A204158

/-! ## A204158.P17298394397481391415

`A271479(A271709(n))`
-/

namespace A204158.P17298394397481391415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (A271709 n).toNat

end

end A204158.P17298394397481391415

namespace A204158

/-- `A271479(A271709(n))` -/
def P17298394397481391415.Spec : Prop :=
  ∀ n, P17298394397481391415.a n = A204158 (n + 1)

end A204158

/-! ## A204158.P12640718457557426268

`A271479(A131816(n)+1)`
-/

namespace A204158.P12640718457557426268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (A131816 n + 1).toNat

end

end A204158.P12640718457557426268

namespace A204158

/-- `A271479(A131816(n)+1)` -/
def P12640718457557426268.Spec : Prop :=
  ∀ n, P12640718457557426268.a n = A204158 (n + 1)

end A204158

/-!
# A204160: Symmetric matrix based on f(i,j)=(3i-2 if i=j and = 0 otherwise), by antidiagonals.

The programs for A204160, the canonical program `A204160.P16759806520326084290` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204160 has offset 1).

The definition of A204160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204160.P16759806520326084290

`3*A204125(n+1)-2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204160

/-- `3*A204125(n+1)-2` -/
def P16759806520326084290.Spec : Prop :=
  ∀ n, P16759806520326084290.a n = A204160 (n + 1)

theorem P16759806520326084290.correct : P16759806520326084290.Spec := by
  intro n
  simp only [A204160, Nat.add_sub_cancel]

end A204160

/-! ## A204160.P4621885576283704778

`A051162(n*char[∑[4*n]]+1)`
-/

namespace A204160.P4621885576283704778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A204160.P4621885576283704778

namespace A204160

/-- `A051162(n*char[∑[4*n]]+1)` -/
def P4621885576283704778.Spec : Prop :=
  ∀ n, P4621885576283704778.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P804937429139831923

`floor(A204131(n+1)/(1-1/3))`
-/

namespace A204160.P804937429139831923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204131 (n + 1) : ℚ) / (1 - (1 : ℚ) / 3)⌋

end

end A204160.P804937429139831923

namespace A204160

/-- `floor(A204131(n+1)/(1-1/3))` -/
def P804937429139831923.Spec : Prop :=
  ∀ n, P804937429139831923.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P11401260769302145052

`A001651(A204131(n+1))`
-/

namespace A204160.P11401260769302145052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A204131 (n + 1)).toNat

end

end A204160.P11401260769302145052

namespace A204160

/-- `A001651(A204131(n+1))` -/
def P11401260769302145052.Spec : Prop :=
  ∀ n, P11401260769302145052.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P3180045530565446297

`A266285(A204181(n+1))`
-/

namespace A204160.P3180045530565446297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A204181 (n + 1)).toNat

end

end A204160.P3180045530565446297

namespace A204160

/-- `A266285(A204181(n+1))` -/
def P3180045530565446297.Spec : Prop :=
  ∀ n, P3180045530565446297.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P9530619522100697801

`A082233(n*A003982(n))`
-/

namespace A204160.P9530619522100697801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 ((n : ℤ) * A003982 n).toNat

end

end A204160.P9530619522100697801

namespace A204160

/-- `A082233(n*A003982(n))` -/
def P9530619522100697801.Spec : Prop :=
  ∀ n, P9530619522100697801.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P10664383947664355184

`gcd(A068344(n), A082233(n))`
-/

namespace A204160.P10664383947664355184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068344 n) (A082233 n)

end

end A204160.P10664383947664355184

namespace A204160

/-- `gcd(A068344(n), A082233(n))` -/
def P10664383947664355184.Spec : Prop :=
  ∀ n, (P10664383947664355184.a n : ℤ) = A204160 (n + 1)

end A204160

/-! ## A204160.P16667442592748273200

`A001651(A056926(2*n+1))`
-/

namespace A204160.P16667442592748273200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A056926 (2 * n + 1)).toNat

end

end A204160.P16667442592748273200

namespace A204160

/-- `A001651(A056926(2*n+1))` -/
def P16667442592748273200.Spec : Prop :=
  ∀ n, P16667442592748273200.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P13673003018863545102

`A051162(n*A003982(n))+1`
-/

namespace A204160.P13673003018863545102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((n : ℤ) * A003982 n).toNat + 1

end

end A204160.P13673003018863545102

namespace A204160

/-- `A051162(n*A003982(n))+1` -/
def P13673003018863545102.Spec : Prop :=
  ∀ n, P13673003018863545102.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P2240329694355884961

`A134478((n+1)*A003982(n))`
-/

namespace A204160.P2240329694355884961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 ((n + 1 : ℤ) * A003982 n).toNat

end

end A204160.P2240329694355884961

namespace A204160

/-- `A134478((n+1)*A003982(n))` -/
def P2240329694355884961.Spec : Prop :=
  ∀ n, P2240329694355884961.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P8949994510330814212

`gcd(A117372(n), A323377(n+1))`
-/

namespace A204160.P8949994510330814212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117372 n) (A323377 (n + 1))

end

end A204160.P8949994510330814212

namespace A204160

/-- `gcd(A117372(n), A323377(n+1))` -/
def P8949994510330814212.Spec : Prop :=
  ∀ n, (P8949994510330814212.a n : ℤ) = A204160 (n + 1)

end A204160

/-! ## A204160.P14247013826469143761

`gcd(A323377(n+1)², A143461(n))`
-/

namespace A204160.P14247013826469143761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323377 (n + 1) ^ 2) (A143461 n)

end

end A204160.P14247013826469143761

namespace A204160

/-- `gcd(A323377(n+1)², A143461(n))` -/
def P14247013826469143761.Spec : Prop :=
  ∀ n, (P14247013826469143761.a n : ℤ) = A204160 (n + 1)

end A204160

/-! ## A204160.P13284535967077945899

`A158416(A157458(n)+2*A157458(n))`
-/

namespace A204160.P13284535967077945899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A157458 n + 2 * A157458 n).toNat

end

end A204160.P13284535967077945899

namespace A204160

/-- `A158416(A157458(n)+2*A157458(n))` -/
def P13284535967077945899.Spec : Prop :=
  ∀ n, P13284535967077945899.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P4897082357142398289

`A144968(2*n*A361024(2*n+1))`
-/

namespace A204160.P4897082357142398289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 ((2 * n : ℤ) * A361024 (2 * n + 1)).toNat

end

end A204160.P4897082357142398289

namespace A204160

/-- `A144968(2*n*A361024(2*n+1))` -/
def P4897082357142398289.Spec : Prop :=
  ∀ n, P4897082357142398289.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P5907122960342140282

`A134478((n+1)*A010052(2*n+1))`
-/

namespace A204160.P5907122960342140282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 ((n + 1 : ℤ) * A010052 (2 * n + 1)).toNat

end

end A204160.P5907122960342140282

namespace A204160

/-- `A134478((n+1)*A010052(2*n+1))` -/
def P5907122960342140282.Spec : Prop :=
  ∀ n, P5907122960342140282.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P14875786775639372158

`A144968(2*n*A010052(2*n+1))`
-/

namespace A204160.P14875786775639372158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 ((2 * n : ℤ) * A010052 (2 * n + 1)).toNat

end

end A204160.P14875786775639372158

namespace A204160

/-- `A144968(2*n*A010052(2*n+1))` -/
def P14875786775639372158.Spec : Prop :=
  ∀ n, P14875786775639372158.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P1265035763450456648

`A016777(A004526(A037213(2*n+1)))`
-/

namespace A204160.P1265035763450456648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A004526 (A037213 (2 * n + 1)).toNat).toNat

end

end A204160.P1265035763450456648

namespace A204160

/-- `A016777(A004526(A037213(2*n+1)))` -/
def P1265035763450456648.Spec : Prop :=
  ∀ n, P1265035763450456648.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P4302068292599127405

`A051340(A055264(n))`
-/

namespace A204160.P4302068292599127405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A055264 n).toNat

end

end A204160.P4302068292599127405

namespace A204160

/-- `A051340(A055264(n))` -/
def P4302068292599127405.Spec : Prop :=
  ∀ n, P4302068292599127405.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P9756932406621717947

`A051340(A214068(n))`
-/

namespace A204160.P9756932406621717947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A214068 n).toNat

end

end A204160.P9756932406621717947

namespace A204160

/-- `A051340(A214068(n))` -/
def P9756932406621717947.Spec : Prop :=
  ∀ n, P9756932406621717947.a n = A204160 (n + 1)

end A204160

/-! ## A204160.P5801169740538954067

`A051340(A242660(n+1))`
-/

namespace A204160.P5801169740538954067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A242660 (n + 1)).toNat

end

end A204160.P5801169740538954067

namespace A204160

/-- `A051340(A242660(n+1))` -/
def P5801169740538954067.Spec : Prop :=
  ∀ n, P5801169740538954067.a n = A204160 (n + 1)

end A204160

/-!
# A204162: Symmetric matrix based on f(i,j) = (floor((i+1)/2) if i=j and = 1 otherwise), by antidiagonals.

The programs for A204162, the canonical program `A204162.P9133944286812361789` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204162 has offset 1).

The definition of A204162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204162.P9133944286812361789

`ceil(A204131(n+1)/4)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204162

/-- `ceil(A204131(n+1)/4)` -/
def P9133944286812361789.Spec : Prop :=
  ∀ n, P9133944286812361789.a n = A204162 (n + 1)

theorem P9133944286812361789.correct : P9133944286812361789.Spec := by
  intro n
  simp only [A204162, Nat.add_sub_cancel]

end A204162

/-! ## A204162.P14527416143106184511

`ceil(A204160(n+1)/6)`
-/

namespace A204162.P14527416143106184511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204160 (n + 1) : ℚ) / 6⌉

end

end A204162.P14527416143106184511

namespace A204162

/-- `ceil(A204160(n+1)/6)` -/
def P14527416143106184511.Spec : Prop :=
  ∀ n, P14527416143106184511.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P6467182168839427714

`A203905(n*char[∑[4*n]]+1)`
-/

namespace A204162.P6467182168839427714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A204162.P6467182168839427714

namespace A204162

/-- `A203905(n*char[∑[4*n]]+1)` -/
def P6467182168839427714.Spec : Prop :=
  ∀ n, P6467182168839427714.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P12624718370003508644

`ceil(ceil((A204181(n+1)+1)/2)/2)`
-/

namespace A204162.P12624718370003508644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A204181 (n + 1) + 1 : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A204162.P12624718370003508644

namespace A204162

/-- `ceil(ceil((A204181(n+1)+1)/2)/2)` -/
def P12624718370003508644.Spec : Prop :=
  ∀ n, P12624718370003508644.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P10567940868670552326

`A004526(A204125(n+1)+1)`
-/

namespace A204162.P10567940868670552326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A204125 (n + 1) + 1).toNat

end

end A204162.P10567940868670552326

namespace A204162

/-- `A004526(A204125(n+1)+1)` -/
def P10567940868670552326.Spec : Prop :=
  ∀ n, P10567940868670552326.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P6321917954078037766

`A008621(A056926(2*n+1))`
-/

namespace A204162.P6321917954078037766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A056926 (2 * n + 1)).toNat

end

end A204162.P6321917954078037766

namespace A204162

/-- `A008621(A056926(2*n+1))` -/
def P6321917954078037766.Spec : Prop :=
  ∀ n, P6321917954078037766.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P11415382794583531369

`ceil(A014682(A204181(n+1)+1)/2)`
-/

namespace A204162.P11415382794583531369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014682 (A204181 (n + 1) + 1).toNat : ℚ) / 2⌉

end

end A204162.P11415382794583531369

namespace A204162

/-- `ceil(A014682(A204181(n+1)+1)/2)` -/
def P11415382794583531369.Spec : Prop :=
  ∀ n, P11415382794583531369.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P5081098647735649407

`A008621(gcd(2*n+1, Δ[A278818(n)]))`
-/

namespace A204162.P5081098647735649407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.gcd (2 * n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A204162.P5081098647735649407

namespace A204162

/-- `A008621(gcd(2*n+1, Δ[A278818(n)]))` -/
def P5081098647735649407.Spec : Prop :=
  ∀ n, P5081098647735649407.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P2824071992126109227

`A065033(A003982(n)*A004736(n+1))`
-/

namespace A204162.P2824071992126109227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003982 n * A004736 (n + 1)).toNat

end

end A204162.P2824071992126109227

namespace A204162

/-- `A065033(A003982(n)*A004736(n+1))` -/
def P2824071992126109227.Spec : Prop :=
  ∀ n, P2824071992126109227.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P16531971350017197235

`A008621(A172471(n)%A204120(n+1))`
-/

namespace A204162.P16531971350017197235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.tmod (A172471 n) (A204120 (n + 1))).toNat

end

end A204162.P16531971350017197235

namespace A204162

/-- `A008621(A172471(n)%A204120(n+1))` -/
def P16531971350017197235.Spec : Prop :=
  ∀ n, P16531971350017197235.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P16626425452384108389

`A087620(A037213(2*n+1))`
-/

namespace A204162.P16626425452384108389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087620 (A037213 (2 * n + 1)).toNat

end

end A204162.P16626425452384108389

namespace A204162

/-- `A087620(A037213(2*n+1))` -/
def P16626425452384108389.Spec : Prop :=
  ∀ n, P16626425452384108389.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P12199120784696920736

`A131728(A037213(2*n+1)+1)`
-/

namespace A204162.P12199120784696920736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (A037213 (2 * n + 1) + 1).toNat

end

end A204162.P12199120784696920736

namespace A204162

/-- `A131728(A037213(2*n+1)+1)` -/
def P12199120784696920736.Spec : Prop :=
  ∀ n, P12199120784696920736.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P1221885200614116388

`A077814(A037213(2*n+1)+2)`
-/

namespace A204162.P1221885200614116388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A037213 (2 * n + 1) + 2).toNat

end

end A204162.P1221885200614116388

namespace A204162

/-- `A077814(A037213(2*n+1)+2)` -/
def P1221885200614116388.Spec : Prop :=
  ∀ n, P1221885200614116388.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P16165792950686942451

`A000119(A204127(n+1))`
-/

namespace A204162.P16165792950686942451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A204127 (n + 1)).toNat

end

end A204162.P16165792950686942451

namespace A204162

/-- `A000119(A204127(n+1))` -/
def P16165792950686942451.Spec : Prop :=
  ∀ n, P16165792950686942451.a n = A204162 (n + 1)

end A204162

/-! ## A204162.P14919735537096330562

`A055642(gcd(A003987(n), A008949(n)))`
-/

namespace A204162.P14919735537096330562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.gcd (A003987 n) (A008949 n))

end

end A204162.P14919735537096330562

namespace A204162

/-- `A055642(gcd(A003987(n), A008949(n)))` -/
def P14919735537096330562.Spec : Prop :=
  ∀ n, P14919735537096330562.a n = A204162 (n + 1)

end A204162

/-!
# A204164: Symmetric matrix based on f(i,j) = floor((i+j)/2), by antidiagonals.

The programs for A204164, the canonical program `A204164.P4378167938360310589` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204164 has offset 1).

The definition of A204164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((col(n)+1+row(n)-col(n)+1)/2)` (program `A204164.P4378167938360310589`, by `A204164.P4378167938360310589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204164.P12102871025011169980

`ceil((sqrt(8*(n+1)+1)-1)/4)`
-/

namespace A204164.P12102871025011169980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (8 * (n + 1) + 1 : ℝ) - 1) / 4⌉

end

end A204164.P12102871025011169980

namespace A204164

/-- `ceil((sqrt(8*(n+1)+1)-1)/4)` -/
def P12102871025011169980.Spec : Prop :=
  ∀ n, P12102871025011169980.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P4378167938360310589

`floor((col(n)+1+row(n)-col(n)+1)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204164

/-- `floor((col(n)+1+row(n)-col(n)+1)/2)` -/
def P4378167938360310589.Spec : Prop :=
  ∀ n, P4378167938360310589.a n = A204164 (n + 1)

theorem P4378167938360310589.correct : P4378167938360310589.Spec := by
  intro n
  simp only [A204164, Nat.add_sub_cancel]

end A204164

/-! ## A204164.P6563702580853676895

`floor((row(n)-col(n)+1+col(n)+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204164.P6563702580853676895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 2⌋

end

end A204164.P6563702580853676895

namespace A204164

/-- `floor((row(n)-col(n)+1+col(n)+1)/2)` -/
def P6563702580853676895.Spec : Prop :=
  ∀ n, P6563702580853676895.a n = A204164 (n + 1)

theorem P6563702580853676895.correct : P6563702580853676895.Spec := by
  intro n
  simp only [A204164, Nat.add_sub_cancel, A204164.P6563702580853676895.a, A204164.P4378167938360310589.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204164

/-! ## A204164.P7524717286100899334

`∑[char[C(or(1, n), 2)]]`
-/

namespace A204164.P7524717286100899334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P7524717286100899334

namespace A204164

/-- `∑[char[C(or(1, n), 2)]]` -/
def P7524717286100899334.Spec : Prop :=
  ∀ n, (P7524717286100899334.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P695465492915253239

`∑[char[C(Δ[n²], 2)]]`
-/

namespace A204164.P695465492915253239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P695465492915253239

namespace A204164

/-- `∑[char[C(Δ[n²], 2)]]` -/
def P695465492915253239.Spec : Prop :=
  ∀ n, (P695465492915253239.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P7197805172206340062

`∑[char[lcm(n, Δ[n²])]]`
-/

namespace A204164.P7197805172206340062
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P7197805172206340062

namespace A204164

/-- `∑[char[lcm(n, Δ[n²])]]` -/
def P7197805172206340062.Spec : Prop :=
  ∀ n, (P7197805172206340062.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P14731182113283907517

`1+floor(row(n)/2)`
-/

namespace A204164.P14731182113283907517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(SequenceMachineLib.triRow n : ℚ) / 2⌋

end

end A204164.P14731182113283907517

namespace A204164

/-- `1+floor(row(n)/2)` -/
def P14731182113283907517.Spec : Prop :=
  ∀ n, P14731182113283907517.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P288592804950027293

`ceil((row(n)+1)/2)`
-/

namespace A204164.P288592804950027293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.triRow n + 1 : ℚ) / 2⌉

end

end A204164.P288592804950027293

namespace A204164

/-- `ceil((row(n)+1)/2)` -/
def P288592804950027293.Spec : Prop :=
  ∀ n, P288592804950027293.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P5778241867021245082

`round((row(n)+1)/2)`
-/

namespace A204164.P5778241867021245082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n + 1 : ℚ) / 2)

end

end A204164.P5778241867021245082

namespace A204164

/-- `round((row(n)+1)/2)` -/
def P5778241867021245082.Spec : Prop :=
  ∀ n, P5778241867021245082.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P13492219856190032483

`round(∑[char[C(n, 2)]]/2)`
-/

namespace A204164.P13492219856190032483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A204164.P13492219856190032483

namespace A204164

/-- `round(∑[char[C(n, 2)]]/2)` -/
def P13492219856190032483.Spec : Prop :=
  ∀ n, P13492219856190032483.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P16601217069807147186

`(or(1, row(n))+1)/2`
-/

namespace A204164.P16601217069807147186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.triRow n) + 1 : ℚ) / 2

end

end A204164.P16601217069807147186

namespace A204164

/-- `(or(1, row(n))+1)/2` -/
def P16601217069807147186.Spec : Prop :=
  ∀ n, P16601217069807147186.a n = (A204164 (n + 1) : ℚ)

end A204164

/-! ## A204164.P2684612692105756191

`∑[char[n*or(1, 2*n)]]`
-/

namespace A204164.P2684612692105756191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P2684612692105756191

namespace A204164

/-- `∑[char[n*or(1, 2*n)]]` -/
def P2684612692105756191.Spec : Prop :=
  ∀ n, (P2684612692105756191.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P3951776949493080737

`(row(n)+gcd(2, row(n)))/2`
-/

namespace A204164.P3951776949493080737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + Nat.gcd 2 (SequenceMachineLib.triRow n) : ℚ) / 2

end

end A204164.P3951776949493080737

namespace A204164

/-- `(row(n)+gcd(2, row(n)))/2` -/
def P3951776949493080737.Spec : Prop :=
  ∀ n, P3951776949493080737.a n = (A204164 (n + 1) : ℚ)

end A204164

/-! ## A204164.P15123418305204468053

`∑[char[(n+1)%2*∑[n]]]`
-/

namespace A204164.P15123418305204468053
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P15123418305204468053

namespace A204164

/-- `∑[char[(n+1)%2*∑[n]]]` -/
def P15123418305204468053.Spec : Prop :=
  ∀ n, (P15123418305204468053.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P8817295265784661535

`∑[char[and(1, n+1)*∑[n]]]`
-/

namespace A204164.P8817295265784661535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P8817295265784661535

namespace A204164

/-- `∑[char[and(1, n+1)*∑[n]]]` -/
def P8817295265784661535.Spec : Prop :=
  ∀ n, (P8817295265784661535.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P4561039116729594671

`round(cosh(log(round(sqrt(2*n+1)))))`
-/

namespace A204164.P4561039116729594671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) : ℝ)))

end

end A204164.P4561039116729594671

namespace A204164

/-- `round(cosh(log(round(sqrt(2*n+1)))))` -/
def P4561039116729594671.Spec : Prop :=
  ∀ n, P4561039116729594671.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P609505021680464152

`∑[char[∑[ogf((3x+x^2)/(1-2x+x^2))]]]`
-/

namespace A204164.P609505021680464152
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204164.P609505021680464152

namespace A204164

/-- `∑[char[∑[ogf((3x+x^2)/(1-2x+x^2))]]]` -/
def P609505021680464152.Spec : Prop :=
  ∀ n, (P609505021680464152.a n : ℤ) = A204164 (n + 1)

end A204164

/-! ## A204164.P17688822087168356320

`a(n-1)+floor(n/((2*a(n-1)+1)*a(n-1)))` with `a(0)=1`
-/

namespace A204164.P17688822087168356320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / ((2 * a (n - 1) + 1) * a (n - 1) : ℚ)⌋

end

end A204164.P17688822087168356320

namespace A204164

/-- `a(n-1)+floor(n/((2*a(n-1)+1)*a(n-1)))` -/
def P17688822087168356320.Spec : Prop :=
  ∀ n, P17688822087168356320.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P14638975458644940101

`a(n-1)+floor((n/a(n-1)-a(n-1))/(a(n-1)+1))` with `a(0)=1`
-/

namespace A204164.P14638975458644940101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊((n : ℚ) / (a (n - 1) : ℚ) - (a (n - 1) : ℚ)) / (a (n - 1) + 1 : ℚ)⌋

end

end A204164.P14638975458644940101

namespace A204164

/-- `a(n-1)+floor((n/a(n-1)-a(n-1))/(a(n-1)+1))` -/
def P14638975458644940101.Spec : Prop :=
  ∀ n, P14638975458644940101.a n = A204164 (n + 1)

end A204164

/-! ## A204164.P3342889620861929954

`A008619(row(n))`
-/

namespace A204164.P3342889620861929954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.triRow n)

end

end A204164.P3342889620861929954

namespace A204164

/-- `A008619(row(n))` -/
def P3342889620861929954.Spec : Prop :=
  ∀ n, P3342889620861929954.a n = A204164 (n + 1)

end A204164

/-!
# A204166: Symmetric matrix based on f(i,j)=ceiling[(i+j)/2], by antidiagonals.

The programs for A204166, the canonical program `A204166.P3243300001851517336` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204166 has offset 1).

The definition of A204166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((col(n)+1+row(n)-col(n)+1)/2)` (program `A204166.P3243300001851517336`, by `A204166.P3243300001851517336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204166.P3243300001851517336

`ceil((col(n)+1+row(n)-col(n)+1)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204166

/-- `ceil((col(n)+1+row(n)-col(n)+1)/2)` -/
def P3243300001851517336.Spec : Prop :=
  ∀ n, P3243300001851517336.a n = A204166 (n + 1)

theorem P3243300001851517336.correct : P3243300001851517336.Spec := by
  intro n
  simp only [A204166, Nat.add_sub_cancel]

end A204166

/-! ## A204166.P1931146439286843899

`ceil((row(n)-col(n)+1+col(n)+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204166.P1931146439286843899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 2⌉

end

end A204166.P1931146439286843899

namespace A204166

/-- `ceil((row(n)-col(n)+1+col(n)+1)/2)` -/
def P1931146439286843899.Spec : Prop :=
  ∀ n, P1931146439286843899.a n = A204166 (n + 1)

theorem P1931146439286843899.correct : P1931146439286843899.Spec := by
  intro n
  simp only [A204166, Nat.add_sub_cancel, A204166.P1931146439286843899.a, A204166.P3243300001851517336.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204166

/-! ## A204166.P11302898949776537822

`∑[char[C(2*n, 2)]]`
-/

namespace A204166.P11302898949776537822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P11302898949776537822

namespace A204166

/-- `∑[char[C(2*n, 2)]]` -/
def P11302898949776537822.Spec : Prop :=
  ∀ n, (P11302898949776537822.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P15352528594148045412

`comp[2*n²]-n`
-/

namespace A204166.P15352528594148045412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A204166.P15352528594148045412

namespace A204166

/-- `comp[2*n²]-n` -/
def P15352528594148045412.Spec : Prop :=
  ∀ n, P15352528594148045412.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P1833093084311495359

`ceil((row(n)+2)/2)`
-/

namespace A204166.P1833093084311495359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.triRow n + 2 : ℚ) / 2⌉

end

end A204166.P1833093084311495359

namespace A204166

/-- `ceil((row(n)+2)/2)` -/
def P1833093084311495359.Spec : Prop :=
  ∀ n, P1833093084311495359.a n = A204166 (n + 1)

theorem P1833093084311495359.correct : P1833093084311495359.Spec := by
  intro n
  simp only [A204166, Nat.add_sub_cancel, A204166.P1833093084311495359.a, A204166.P3243300001851517336.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204166

/-! ## A204166.P10063464752735061696

`floor((row(n)+3)/2)`
-/

namespace A204166.P10063464752735061696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 3 : ℚ) / 2⌋

end

end A204166.P10063464752735061696

namespace A204166

/-- `floor((row(n)+3)/2)` -/
def P10063464752735061696.Spec : Prop :=
  ∀ n, P10063464752735061696.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P9162045949582739108

`∑[char[n%2*∑[n]]]`
-/

namespace A204166.P9162045949582739108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P9162045949582739108

namespace A204166

/-- `∑[char[n%2*∑[n]]]` -/
def P9162045949582739108.Spec : Prop :=
  ∀ n, (P9162045949582739108.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P15575962970390526211

`∑[char[and(1, n)*∑[n]]]`
-/

namespace A204166.P15575962970390526211
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P15575962970390526211

namespace A204166

/-- `∑[char[and(1, n)*∑[n]]]` -/
def P15575962970390526211.Spec : Prop :=
  ∀ n, (P15575962970390526211.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P12067287193268619632

`∑[char[lcm(n, 2*n-1)]]`
-/

namespace A204166.P12067287193268619632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((2 * n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P12067287193268619632

namespace A204166

/-- `∑[char[lcm(n, 2*n-1)]]` -/
def P12067287193268619632.Spec : Prop :=
  ∀ n, (P12067287193268619632.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P13828479859834426312

`ceil(cosh(log(round(sqrt(2*(n+1))))))`
-/

namespace A204166.P13828479859834426312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℝ))⌉

end

end A204166.P13828479859834426312

namespace A204166

/-- `ceil(cosh(log(round(sqrt(2*(n+1))))))` -/
def P13828479859834426312.Spec : Prop :=
  ∀ n, P13828479859834426312.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P9975182606025790203

`∑[char[∑[ogf((x+3x^2)/(1-2x+x^2))]]]`
-/

namespace A204166.P9975182606025790203
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P9975182606025790203

namespace A204166

/-- `∑[char[∑[ogf((x+3x^2)/(1-2x+x^2))]]]` -/
def P9975182606025790203.Spec : Prop :=
  ∀ n, (P9975182606025790203.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P15712391369213546967

`floor(a(n-1)-n/((1-2*a(n-1))*a(n-1)))` with `a(0)=1`
-/

namespace A204166.P15712391369213546967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / ((1 - 2 * a (n - 1)) * a (n - 1) : ℚ)⌋

end

end A204166.P15712391369213546967

namespace A204166

/-- `floor(a(n-1)-n/((1-2*a(n-1))*a(n-1)))` -/
def P15712391369213546967.Spec : Prop :=
  ∀ n, P15712391369213546967.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P5745043948385200233

`floor(a(n-1)-1/(n/a(n-1)-a(n-1)-a(n-1)))` with `a(0)=1`
-/

namespace A204166.P5745043948385200233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - 1 / ((n : ℚ) / (a (n - 1) : ℚ) - (a (n - 1) : ℚ) - (a (n - 1) : ℚ))⌋

end

end A204166.P5745043948385200233

namespace A204166

/-- `floor(a(n-1)-1/(n/a(n-1)-a(n-1)-a(n-1)))` -/
def P5745043948385200233.Spec : Prop :=
  ∀ n, P5745043948385200233.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P6597359839337643783

`∑[char[A000384(n)]]`
-/

namespace A204166.P6597359839337643783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P6597359839337643783

namespace A204166

/-- `∑[char[A000384(n)]]` -/
def P6597359839337643783.Spec : Prop :=
  ∀ n, (P6597359839337643783.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P10343164094057748613

`∑[char[A266223(n)]]`
-/

namespace A204166.P10343164094057748613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266223 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P10343164094057748613

namespace A204166

/-- `∑[char[A266223(n)]]` -/
def P10343164094057748613.Spec : Prop :=
  ∀ n, (P10343164094057748613.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P7974385336293237529

`A008619(∑[char[∑[n]]])`
-/

namespace A204166.P7974385336293237529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204166.P7974385336293237529

namespace A204166

/-- `A008619(∑[char[∑[n]]])` -/
def P7974385336293237529.Spec : Prop :=
  ∀ n, P7974385336293237529.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P1247206144992447999

`ceil(sqrt(A199332(n+1)))`
-/

namespace A204166.P1247206144992447999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A199332 (n + 1) : ℝ)⌉

end

end A204166.P1247206144992447999

namespace A204166

/-- `ceil(sqrt(A199332(n+1)))` -/
def P1247206144992447999.Spec : Prop :=
  ∀ n, P1247206144992447999.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P12654526370056258020

`ceil(∑[A073423(n)/2])`
-/

namespace A204166.P12654526370056258020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073423 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A204166.P12654526370056258020

namespace A204166

/-- `ceil(∑[A073423(n)/2])` -/
def P12654526370056258020.Spec : Prop :=
  ∀ n, P12654526370056258020.a n = A204166 (n + 1)

end A204166

/-! ## A204166.P9973070369040347048

`∑[char[A161680(2*n)]]`
-/

namespace A204166.P9973070369040347048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P9973070369040347048

namespace A204166

/-- `∑[char[A161680(2*n)]]` -/
def P9973070369040347048.Spec : Prop :=
  ∀ n, (P9973070369040347048.a n : ℤ) = A204166 (n + 1)

end A204166

/-! ## A204166.P4195083729718829581

`∑[char[n*A001057(n)]]`
-/

namespace A204166.P4195083729718829581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001057 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204166.P4195083729718829581

namespace A204166

/-- `∑[char[n*A001057(n)]]` -/
def P4195083729718829581.Spec : Prop :=
  ∀ n, (P4195083729718829581.a n : ℤ) = A204166 (n + 1)

end A204166

/-!
# A204170: Array read by rows: row n lists the coefficients of the characteristic polynomial of the n-th principal submatrix of (i*j), as in A003991.

The programs for A204170, there is no canonical definition to state claims against.
-/

/-! ## A204170.P5919716215682925389

`A204020(n+1)*A204060(A204026(n+3))`
-/

namespace A204170.P5919716215682925389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204020 (n + 1) * A204060 (A204026 (n + 3)).toNat

end

end A204170.P5919716215682925389

/-! ## A204170.P1488340433407303774

`A204001(n+1)-A204001(n+1)%A204020(n+1)`
-/

namespace A204170.P1488340433407303774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204001 (n + 1) - Int.tmod (A204001 (n + 1)) (A204020 (n + 1))

end

end A204170.P1488340433407303774

/-! ## A204170.P17134367598980022842

`A036987(A036969(n+3))*A204020(n+1)`
-/

namespace A204170.P17134367598980022842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A036969 (n + 3)).toNat * A204020 (n + 1)

end

end A204170.P17134367598980022842

/-!
# A204171: Symmetric matrix based on f(i,j)=(1 if max(i,j) is odd, and 0 otherwise), by antidiagonals.

The programs for A204171, the canonical program `A204171.P324095160493224964` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204171 has offset 1).

The definition of A204171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204171.P10190312958503059556

`comp[C(or(1, n), 2)]%2`
-/

namespace A204171.P10190312958503059556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A204171.P10190312958503059556

namespace A204171

/-- `comp[C(or(1, n), 2)]%2` -/
def P10190312958503059556.Spec : Prop :=
  ∀ n, (P10190312958503059556.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P8726821839176953626

`and(1, comp[C(or(1, n), 2)])`
-/

namespace A204171.P8726821839176953626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204171.P8726821839176953626

namespace A204171

/-- `and(1, comp[C(or(1, n), 2)])` -/
def P8726821839176953626.Spec : Prop :=
  ∀ n, (P8726821839176953626.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P3521762607662634694

`comp[C(Δ[n²], 2)]%2`
-/

namespace A204171.P3521762607662634694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A204171.P3521762607662634694

namespace A204171

/-- `comp[C(Δ[n²], 2)]%2` -/
def P3521762607662634694.Spec : Prop :=
  ∀ n, (P3521762607662634694.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P13353175054167116032

`and(1, comp[C(Δ[n²], 2)])`
-/

namespace A204171.P13353175054167116032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204171.P13353175054167116032

namespace A204171

/-- `and(1, comp[C(Δ[n²], 2)])` -/
def P13353175054167116032.Spec : Prop :=
  ∀ n, (P13353175054167116032.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P8549642482157626282

`comp[2*n²+n]%2`
-/

namespace A204171.P8549642482157626282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A204171.P8549642482157626282

namespace A204171

/-- `comp[2*n²+n]%2` -/
def P8549642482157626282.Spec : Prop :=
  ∀ n, (P8549642482157626282.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P3116765596732110221

`and(1, comp[2*n²+n])`
-/

namespace A204171.P3116765596732110221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204171.P3116765596732110221

namespace A204171

/-- `and(1, comp[2*n²+n])` -/
def P3116765596732110221.Spec : Prop :=
  ∀ n, (P3116765596732110221.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P612619041587227370

`sqrt(and(1, comp[C(2*n+1, 2)]))`
-/

namespace A204171.P612619041587227370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A204171.P612619041587227370

namespace A204171

/-- `sqrt(and(1, comp[C(2*n+1, 2)]))` -/
def P612619041587227370.Spec : Prop :=
  ∀ n, P612619041587227370.a n = (A204171 (n + 1) : ℝ)

end A204171

/-! ## A204171.P8129287484294620295

`dr(and(1, comp[C(2*n+1, 2)]))`
-/

namespace A204171.P8129287484294620295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A204171.P8129287484294620295

namespace A204171

/-- `dr(and(1, comp[C(2*n+1, 2)]))` -/
def P8129287484294620295.Spec : Prop :=
  ∀ n, (P8129287484294620295.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P273752181834712609

`sqrt(and(1, comp[n*(2*n+1)]))`
-/

namespace A204171.P273752181834712609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A204171.P273752181834712609

namespace A204171

/-- `sqrt(and(1, comp[n*(2*n+1)]))` -/
def P273752181834712609.Spec : Prop :=
  ∀ n, P273752181834712609.a n = (A204171 (n + 1) : ℝ)

end A204171

/-! ## A204171.P4786270766862406521

`dr(and(1, comp[n*(2*n+1)]))`
-/

namespace A204171.P4786270766862406521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A204171.P4786270766862406521

namespace A204171

/-- `dr(and(1, comp[n*(2*n+1)]))` -/
def P4786270766862406521.Spec : Prop :=
  ∀ n, (P4786270766862406521.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P7864494359045647804

`1-A204175(n+1)`
-/

namespace A204171.P7864494359045647804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204175 (n + 1)

end

end A204171.P7864494359045647804

namespace A204171

/-- `1-A204175(n+1)` -/
def P7864494359045647804.Spec : Prop :=
  ∀ n, P7864494359045647804.a n = A204171 (n + 1)

theorem P7864494359045647804.correct : P7864494359045647804.Spec := by
  intro n
  simp only [A204171, Nat.add_sub_cancel, A204171.P7864494359045647804.a, A204171.P324095160493224964.a, A183301, A183301.P14945938495758224027.a, A204175, A204175.P4096975912672246987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204171

/-! ## A204171.P16945003738259638124

`gcd(2, A003984(n))-1`
-/

namespace A204171.P16945003738259638124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A003984 n) : ℤ) - 1

end

end A204171.P16945003738259638124

namespace A204171

/-- `gcd(2, A003984(n))-1` -/
def P16945003738259638124.Spec : Prop :=
  ∀ n, P16945003738259638124.a n = A204171 (n + 1)

end A204171

/-! ## A204171.P5899054346264563818

`(A051125(n+1)%2)²`
-/

namespace A204171.P5899054346264563818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051125 (n + 1)) 2 ^ 2

end

end A204171.P5899054346264563818

namespace A204171

/-- `(A051125(n+1)%2)²` -/
def P5899054346264563818.Spec : Prop :=
  ∀ n, P5899054346264563818.a n = A204171 (n + 1)

end A204171

/-! ## A204171.P324095160493224964

`(A183301(n+1)%2)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204171

/-- `(A183301(n+1)%2)²` -/
def P324095160493224964.Spec : Prop :=
  ∀ n, P324095160493224964.a n = A204171 (n + 1)

theorem P324095160493224964.correct : P324095160493224964.Spec := by
  intro n
  simp only [A204171, Nat.add_sub_cancel]

end A204171

/-! ## A204171.P6597965047414507425

`and(1, comp[A000217(2*n)])²`
-/

namespace A204171.P6597965047414507425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A204171.P6597965047414507425

namespace A204171

/-- `and(1, comp[A000217(2*n)])²` -/
def P6597965047414507425.Spec : Prop :=
  ∀ n, (P6597965047414507425.a n : ℤ) = A204171 (n + 1)

end A204171

/-! ## A204171.P15456309904653442914

`A000035(A003984(n)+1)`
-/

namespace A204171.P15456309904653442914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003984 n + 1).toNat

end

end A204171.P15456309904653442914

namespace A204171

/-- `A000035(A003984(n)+1)` -/
def P15456309904653442914.Spec : Prop :=
  ∀ n, P15456309904653442914.a n = A204171 (n + 1)

end A204171

/-! ## A204171.P3864497801730948751

`A000035(A051125(n+1))`
-/

namespace A204171.P3864497801730948751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051125 (n + 1)).toNat

end

end A204171.P3864497801730948751

namespace A204171

/-- `A000035(A051125(n+1))` -/
def P3864497801730948751.Spec : Prop :=
  ∀ n, P3864497801730948751.a n = A204171 (n + 1)

end A204171

/-! ## A204171.P11257441363827668488

`A000035(A204002(n+1))`
-/

namespace A204171.P11257441363827668488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A204002 (n + 1)).toNat

end

end A204171.P11257441363827668488

namespace A204171

/-- `A000035(A204002(n+1))` -/
def P11257441363827668488.Spec : Prop :=
  ∀ n, P11257441363827668488.a n = A204171 (n + 1)

end A204171

/-! ## A204171.P2345761919777517252

`A000035(A204006(n+1))`
-/

namespace A204171.P2345761919777517252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A204006 (n + 1)).toNat

end

end A204171.P2345761919777517252

namespace A204171

/-- `A000035(A204006(n+1))` -/
def P2345761919777517252.Spec : Prop :=
  ∀ n, P2345761919777517252.a n = A204171 (n + 1)

end A204171

/-! ## A204171.P8045601974205233550

`A204173(n+1)/(A204175(n+1)+A204173(n+1))`
-/

namespace A204171.P8045601974205233550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204173 (n + 1) : ℚ) / (A204175 (n + 1) + A204173 (n + 1) : ℚ)

end

end A204171.P8045601974205233550

namespace A204171

/-- `A204173(n+1)/(A204175(n+1)+A204173(n+1))` -/
def P8045601974205233550.Spec : Prop :=
  ∀ n, P8045601974205233550.a n = (A204171 (n + 1) : ℚ)

end A204171

/-!
# A204173: Symmetric matrix based on f(i,j)=(2i-1 if max(i,j) is odd, and 0 otherwise), by antidiagonals.

The programs for A204173, the canonical program `A204173.P5209315876622248264` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204173 has offset 1).

The definition of A204173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204173.P238189059806614358

`A027656(A003984(n))`
-/

namespace A204173.P238189059806614358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A003984 n).toNat

end

end A204173.P238189059806614358

namespace A204173

/-- `A027656(A003984(n))` -/
def P238189059806614358.Spec : Prop :=
  ∀ n, P238189059806614358.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P7536182413969141677

`A142150(A003984(n)+2)`
-/

namespace A204173.P7536182413969141677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A003984 n + 2).toNat

end

end A204173.P7536182413969141677

namespace A204173

/-- `A142150(A003984(n)+2)` -/
def P7536182413969141677.Spec : Prop :=
  ∀ n, P7536182413969141677.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P5209315876622248264

`A027656(floor(log2(A131816(n))))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204173

/-- `A027656(floor(log2(A131816(n))))` -/
def P5209315876622248264.Spec : Prop :=
  ∀ n, P5209315876622248264.a n = A204173 (n + 1)

theorem P5209315876622248264.correct : P5209315876622248264.Spec := by
  intro n
  simp only [A204173, Nat.add_sub_cancel]

end A204173

/-! ## A204173.P6011170471482809700

`A027656(A051125(n+1)-1)`
-/

namespace A204173.P6011170471482809700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051125 (n + 1) - 1).toNat

end

end A204173.P6011170471482809700

namespace A204173

/-- `A027656(A051125(n+1)-1)` -/
def P6011170471482809700.Spec : Prop :=
  ∀ n, P6011170471482809700.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P8056931936750320003

`A029906(2*A051125(n+1))`
-/

namespace A204173.P8056931936750320003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (2 * A051125 (n + 1)).toNat

end

end A204173.P8056931936750320003

namespace A204173

/-- `A029906(2*A051125(n+1))` -/
def P8056931936750320003.Spec : Prop :=
  ∀ n, P8056931936750320003.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P10882735284288640203

`A027656(xor(1, A051125(n+1)))`
-/

namespace A204173.P10882735284288640203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Int.xor 1 (A051125 (n + 1))).toNat

end

end A204173.P10882735284288640203

namespace A204173

/-- `A027656(xor(1, A051125(n+1)))` -/
def P10882735284288640203.Spec : Prop :=
  ∀ n, P10882735284288640203.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P4778363568982863483

`A027656(A049581(n)+A004197(n))`
-/

namespace A204173.P4778363568982863483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A049581 n + A004197 n).toNat

end

end A204173.P4778363568982863483

namespace A204173

/-- `A027656(A049581(n)+A004197(n))` -/
def P4778363568982863483.Spec : Prop :=
  ∀ n, P4778363568982863483.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P7285904127820522661

`A027656(A003056(n)-A004197(n))`
-/

namespace A204173.P7285904127820522661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A003056 n - A004197 n).toNat

end

end A204173.P7285904127820522661

namespace A204173

/-- `A027656(A003056(n)-A004197(n))` -/
def P7285904127820522661.Spec : Prop :=
  ∀ n, P7285904127820522661.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P10509226923619852565

`A001222(A072345(A051125(n+1)))`
-/

namespace A204173.P10509226923619852565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072345 (A051125 (n + 1)).toNat).toNat

end

end A204173.P10509226923619852565

namespace A204173

/-- `A001222(A072345(A051125(n+1)))` -/
def P10509226923619852565.Spec : Prop :=
  ∀ n, P10509226923619852565.a n = A204173 (n + 1)

end A204173

/-! ## A204173.P14516152549148459709

`A027656(A000523(A131816(n)))`
-/

namespace A204173.P14516152549148459709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000523 (A131816 n).toNat).toNat

end

end A204173.P14516152549148459709

namespace A204173

/-- `A027656(A000523(A131816(n)))` -/
def P14516152549148459709.Spec : Prop :=
  ∀ n, P14516152549148459709.a n = A204173 (n + 1)

end A204173

/-!
# A204175: Symmetric matrix based on f(i,j)=(1 if max(i,j) is even, and 0 otherwise), by antidiagonals.

The programs for A204175, the canonical program `A204175.P4096975912672246987` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204175 has offset 1).

The definition of A204175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204175.P5931311205642705888

`floor(sqrt(n/2)+n)%2`
-/

namespace A204175.P5931311205642705888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋ 2

end

end A204175.P5931311205642705888

namespace A204175

/-- `floor(sqrt(n/2)+n)%2` -/
def P5931311205642705888.Spec : Prop :=
  ∀ n, P5931311205642705888.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P4648810596506668820

`and(1, floor(sqrt(n/2)+n))`
-/

namespace A204175.P4648810596506668820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

end

end A204175.P4648810596506668820

namespace A204175

/-- `and(1, floor(sqrt(n/2)+n))` -/
def P4648810596506668820.Spec : Prop :=
  ∀ n, P4648810596506668820.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P13563084879012966475

`log2(gcd(2, comp[n*Δ[n²]]))`
-/

namespace A204175.P13563084879012966475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℝ)

end

end A204175.P13563084879012966475

namespace A204175

/-- `log2(gcd(2, comp[n*Δ[n²]]))` -/
def P13563084879012966475.Spec : Prop :=
  ∀ n, P13563084879012966475.a n = (A204175 (n + 1) : ℝ)

end A204175

/-! ## A204175.P1563614700054153313

`1-comp[C(or(1, n), 2)]%2`
-/

namespace A204175.P1563614700054153313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A204175.P1563614700054153313

namespace A204175

/-- `1-comp[C(or(1, n), 2)]%2` -/
def P1563614700054153313.Spec : Prop :=
  ∀ n, P1563614700054153313.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P15897180282565960723

`abs(floor(sqrt(n/2)-n)%2)`
-/

namespace A204175.P15897180282565960723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ⌊Real.sqrt ((n : ℚ) / 2 : ℝ) - (n : ℝ)⌋ 2|

end

end A204175.P15897180282565960723

namespace A204175

/-- `abs(floor(sqrt(n/2)-n)%2)` -/
def P15897180282565960723.Spec : Prop :=
  ∀ n, P15897180282565960723.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P1780557336405182869

`and(1, floor(sqrt(n/2)-n))²`
-/

namespace A204175.P1780557336405182869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt ((n : ℚ) / 2 : ℝ) - (n : ℝ)⌋ ^ 2

end

end A204175.P1780557336405182869

namespace A204175

/-- `and(1, floor(sqrt(n/2)-n))²` -/
def P1780557336405182869.Spec : Prop :=
  ∀ n, P1780557336405182869.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P8017231129962805065

`sqrt(and(1, floor(sqrt(n/2)-n)))`
-/

namespace A204175.P8017231129962805065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 1 ⌊Real.sqrt ((n : ℚ) / 2 : ℝ) - (n : ℝ)⌋ : ℝ)

end

end A204175.P8017231129962805065

namespace A204175

/-- `sqrt(and(1, floor(sqrt(n/2)-n)))` -/
def P8017231129962805065.Spec : Prop :=
  ∀ n, P8017231129962805065.a n = (A204175 (n + 1) : ℝ)

end A204175

/-! ## A204175.P1019774750545280209

`char[comp[2*n²]-n%2]`
-/

namespace A204175.P1019774750545280209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A204175.P1019774750545280209

namespace A204175

/-- `char[comp[2*n²]-n%2]` -/
def P1019774750545280209.Spec : Prop :=
  ∀ n, (P1019774750545280209.a n : ℤ) = A204175 (n + 1)

end A204175

/-! ## A204175.P17292489571806840635

`1-comp[2*n²+n]%2`
-/

namespace A204175.P17292489571806840635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A204175.P17292489571806840635

namespace A204175

/-- `1-comp[2*n²+n]%2` -/
def P17292489571806840635.Spec : Prop :=
  ∀ n, P17292489571806840635.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P3772653568002583080

`(∑[char[2*n²]+1]%2)²²`
-/

namespace A204175.P3772653568002583080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2) ^ 2) ^ 2

end

end A204175.P3772653568002583080

namespace A204175

/-- `(∑[char[2*n²]+1]%2)²²` -/
def P3772653568002583080.Spec : Prop :=
  ∀ n, (P3772653568002583080.a n : ℤ) = A204175 (n + 1)

end A204175

/-! ## A204175.P4096975912672246987

`1-A204171(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A204175

/-- `1-A204171(n+1)` -/
def P4096975912672246987.Spec : Prop :=
  ∀ n, P4096975912672246987.a n = A204175 (n + 1)

theorem P4096975912672246987.correct : P4096975912672246987.Spec := by
  intro n
  simp only [A204175, Nat.add_sub_cancel]

end A204175

/-! ## A204175.P4114713962192570796

`2-gcd(2, A003984(n))`
-/

namespace A204175.P4114713962192570796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A003984 n) : ℤ)

end

end A204175.P4114713962192570796

namespace A204175

/-- `2-gcd(2, A003984(n))` -/
def P4114713962192570796.Spec : Prop :=
  ∀ n, P4114713962192570796.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P10984720262386768336

`C(2, A204173(n+1)+2)`
-/

namespace A204175.P10984720262386768336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204173 (n + 1) + 2).toNat

end

end A204175.P10984720262386768336

namespace A204175

/-- `C(2, A204173(n+1)+2)` -/
def P10984720262386768336.Spec : Prop :=
  ∀ n, (P10984720262386768336.a n : ℤ) = A204175 (n + 1)

end A204175

/-! ## A204175.P12506996539401877767

`and(2, A204022(n+1))/2`
-/

namespace A204175.P12506996539401877767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A204022 (n + 1)) : ℚ) / 2

end

end A204175.P12506996539401877767

namespace A204175

/-- `and(2, A204022(n+1))/2` -/
def P12506996539401877767.Spec : Prop :=
  ∀ n, P12506996539401877767.a n = (A204175 (n + 1) : ℚ)

end A204175

/-! ## A204175.P14053557233914244335

`(comp[A000096(Δ[n²])]%2)^5`
-/

namespace A204175.P14053557233914244335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2) ^ 5

end

end A204175.P14053557233914244335

namespace A204175

/-- `(comp[A000096(Δ[n²])]%2)^5` -/
def P14053557233914244335.Spec : Prop :=
  ∀ n, (P14053557233914244335.a n : ℤ) = A204175 (n + 1)

end A204175

/-! ## A204175.P12836556127846241610

`(comp[A000096(2*n+1)]%2)²`
-/

namespace A204175.P12836556127846241610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2) ^ 2

end

end A204175.P12836556127846241610

namespace A204175

/-- `(comp[A000096(2*n+1)]%2)²` -/
def P12836556127846241610.Spec : Prop :=
  ∀ n, (P12836556127846241610.a n : ℤ) = A204175 (n + 1)

end A204175

/-! ## A204175.P13238043761509666079

`A000035(A003984(n))`
-/

namespace A204175.P13238043761509666079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003984 n).toNat

end

end A204175.P13238043761509666079

namespace A204175

/-- `A000035(A003984(n))` -/
def P13238043761509666079.Spec : Prop :=
  ∀ n, P13238043761509666079.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P4569339337406963712

`A000007(A204173(n+1))`
-/

namespace A204175.P4569339337406963712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A204173 (n + 1)).toNat

end

end A204175.P4569339337406963712

namespace A204175

/-- `A000007(A204173(n+1))` -/
def P4569339337406963712.Spec : Prop :=
  ∀ n, P4569339337406963712.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P3992171843184430110

`A204171(A014681(n+1))`
-/

namespace A204175.P3992171843184430110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204171 (A014681 (n + 1)).toNat

end

end A204175.P3992171843184430110

namespace A204175

/-- `A204171(A014681(n+1))` -/
def P3992171843184430110.Spec : Prop :=
  ∀ n, P3992171843184430110.a n = A204175 (n + 1)

end A204175

/-! ## A204175.P3625702470521078644

`A021913(A204022(n+1))`
-/

namespace A204175.P3625702470521078644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A204022 (n + 1)).toNat

end

end A204175.P3625702470521078644

namespace A204175

/-- `A021913(A204022(n+1))` -/
def P3625702470521078644.Spec : Prop :=
  ∀ n, P3625702470521078644.a n = A204175 (n + 1)

end A204175

/-!
# A204177: Symmetric matrix based on f(i,j)=(1 if i=1 or j=1 or i=j, and 0 otherwise), by antidiagonals.

The programs for A204177, the canonical program `A204177.P4715536723901757887` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204177 has offset 1).

The definition of A204177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204177.P4331154219409760322

`C(gcd(2*col(n), row(n)), row(n))`
-/

namespace A204177.P4331154219409760322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd (2 * SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)) (SequenceMachineLib.triRow n)

end

end A204177.P4331154219409760322

namespace A204177

/-- `C(gcd(2*col(n), row(n)), row(n))` -/
def P4331154219409760322.Spec : Prop :=
  ∀ n, (P4331154219409760322.a n : ℤ) = A204177 (n + 1)

end A204177

/-! ## A204177.P14114420509849019505

`A054110(n)%2`
-/

namespace A204177.P14114420509849019505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054110 n) 2

end

end A204177.P14114420509849019505

namespace A204177

/-- `A054110(n)%2` -/
def P14114420509849019505.Spec : Prop :=
  ∀ n, P14114420509849019505.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P9128151535858895170

`round(acot(A059674(n)))`
-/

namespace A204177.P9128151535858895170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A059674 n : ℝ))

end

end A204177.P9128151535858895170

namespace A204177

/-- `round(acot(A059674(n)))` -/
def P9128151535858895170.Spec : Prop :=
  ∀ n, P9128151535858895170.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P4715536723901757887

`abs(A185917(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A204177

/-- `abs(A185917(n+1))` -/
def P4715536723901757887.Spec : Prop :=
  ∀ n, P4715536723901757887.a n = A204177 (n + 1)

theorem P4715536723901757887.correct : P4715536723901757887.Spec := by
  intro n
  simp only [A204177, Nat.add_sub_cancel]

end A204177

/-! ## A204177.P13030463068674394525

`abs(A204183(n+1))`
-/

namespace A204177.P13030463068674394525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204183 (n + 1)|

end

end A204177.P13030463068674394525

namespace A204177

/-- `abs(A204183(n+1))` -/
def P13030463068674394525.Spec : Prop :=
  ∀ n, P13030463068674394525.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P16300119590647151171

`A204181(n+1)%2`
-/

namespace A204177.P16300119590647151171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204181 (n + 1)) 2

end

end A204177.P16300119590647151171

namespace A204177

/-- `A204181(n+1)%2` -/
def P16300119590647151171.Spec : Prop :=
  ∀ n, P16300119590647151171.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P6067595462796220407

`A204242(n+1)%2`
-/

namespace A204177.P6067595462796220407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204242 (n + 1)) 2

end

end A204177.P6067595462796220407

namespace A204177

/-- `A204242(n+1)%2` -/
def P6067595462796220407.Spec : Prop :=
  ∀ n, P6067595462796220407.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P4199514361146405757

`C(2, 2*A204016(n+1))`
-/

namespace A204177.P4199514361146405757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A204016 (n + 1)).toNat

end

end A204177.P4199514361146405757

namespace A204177

/-- `C(2, 2*A204016(n+1))` -/
def P4199514361146405757.Spec : Prop :=
  ∀ n, (P4199514361146405757.a n : ℤ) = A204177 (n + 1)

end A204177

/-! ## A204177.P10302793711377731385

`char[record[n-n%A007318(n)]]`
-/

namespace A204177.P10302793711377731385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A007318 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A204177.P10302793711377731385

namespace A204177

/-- `char[record[n-n%A007318(n)]]` -/
def P10302793711377731385.Spec : Prop :=
  ∀ n, (P10302793711377731385.a n : ℤ) = A204177 (n + 1)

end A204177

/-! ## A204177.P12366023179484659796

`A131078(A115284(n))`
-/

namespace A204177.P12366023179484659796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (A115284 n).toNat

end

end A204177.P12366023179484659796

namespace A204177

/-- `A131078(A115284(n))` -/
def P12366023179484659796.Spec : Prop :=
  ∀ n, P12366023179484659796.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P15104156188667268130

`A266591(A157458(n))`
-/

namespace A204177.P15104156188667268130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (A157458 n).toNat

end

end A204177.P15104156188667268130

namespace A204177

/-- `A266591(A157458(n))` -/
def P15104156188667268130.Spec : Prop :=
  ∀ n, P15104156188667268130.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P10161762122964521176

`2-A040001(A157654(n))`
-/

namespace A204177.P10161762122964521176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 (A157654 n).toNat

end

end A204177.P10161762122964521176

namespace A204177

/-- `2-A040001(A157654(n))` -/
def P10161762122964521176.Spec : Prop :=
  ∀ n, P10161762122964521176.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P2209198381613048777

`and(A054110(n), A131843(n))`
-/

namespace A204177.P2209198381613048777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054110 n) (A131843 n)

end

end A204177.P2209198381613048777

namespace A204177

/-- `and(A054110(n), A131843(n))` -/
def P2209198381613048777.Spec : Prop :=
  ∀ n, P2209198381613048777.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P1123677088779976420

`and(A054110(n), A158388(n))`
-/

namespace A204177.P1123677088779976420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054110 n) (A158388 n)

end

end A204177.P1123677088779976420

namespace A204177

/-- `and(A054110(n), A158388(n))` -/
def P1123677088779976420.Spec : Prop :=
  ∀ n, P1123677088779976420.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P9661793728003213238

`A023533(A204018(n+1)²)`
-/

namespace A204177.P9661793728003213238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A204018 (n + 1) ^ 2).toNat

end

end A204177.P9661793728003213238

namespace A204177

/-- `A023533(A204018(n+1)²)` -/
def P9661793728003213238.Spec : Prop :=
  ∀ n, P9661793728003213238.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P3377671398812551027

`A062157(A204179(n+1))²`
-/

namespace A204177.P3377671398812551027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A204179 (n + 1)).toNat ^ 2

end

end A204177.P3377671398812551027

namespace A204177

/-- `A062157(A204179(n+1))²` -/
def P3377671398812551027.Spec : Prop :=
  ∀ n, P3377671398812551027.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P10083126753630145867

`A185916(A083920(n)+1)²`
-/

namespace A204177.P10083126753630145867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A083920 n + 1).toNat ^ 2

end

end A204177.P10083126753630145867

namespace A204177

/-- `A185916(A083920(n)+1)²` -/
def P10083126753630145867.Spec : Prop :=
  ∀ n, P10083126753630145867.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P2129524731180262380

`A185916(A122797(n+1))²`
-/

namespace A204177.P2129524731180262380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A122797 (n + 1)).toNat ^ 2

end

end A204177.P2129524731180262380

namespace A204177

/-- `A185916(A122797(n+1))²` -/
def P2129524731180262380.Spec : Prop :=
  ∀ n, P2129524731180262380.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P294692609887340260

`A185907(n+1)+A073424(n)`
-/

namespace A204177.P294692609887340260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185907 (n + 1) + A073424 n

end

end A204177.P294692609887340260

namespace A204177

/-- `A185907(n+1)+A073424(n)` -/
def P294692609887340260.Spec : Prop :=
  ∀ n, P294692609887340260.a n = A204177 (n + 1)

end A204177

/-! ## A204177.P11664151690892133877

`A204179(n+1)/A089688(n)`
-/

namespace A204177.P11664151690892133877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204179 (n + 1) : ℚ) / (A089688 n : ℚ)

end

end A204177.P11664151690892133877

namespace A204177

/-- `A204179(n+1)/A089688(n)` -/
def P11664151690892133877.Spec : Prop :=
  ∀ n, P11664151690892133877.a n = (A204177 (n + 1) : ℚ)

end A204177

/-!
# A204179: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= i; f(i,j)=0 otherwise; by antidiagonals.

The programs for A204179, the canonical program `A204179.P16416840978499100433` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204179 has offset 1).

The definition of A204179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204179.P9431756902388424022

`log2(A204242(n+1)+1)`
-/

namespace A204179.P9431756902388424022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A204242 (n + 1) + 1 : ℝ)

end

end A204179.P9431756902388424022

namespace A204179

/-- `log2(A204242(n+1)+1)` -/
def P9431756902388424022.Spec : Prop :=
  ∀ n, P9431756902388424022.a n = (A204179 (n + 1) : ℝ)

end A204179

/-! ## A204179.P6704702472474004824

`ceil(A204181(n+1)/2)`
-/

namespace A204179.P6704702472474004824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204181 (n + 1) : ℚ) / 2⌉

end

end A204179.P6704702472474004824

namespace A204179

/-- `ceil(A204181(n+1)/2)` -/
def P6704702472474004824.Spec : Prop :=
  ∀ n, P6704702472474004824.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P12929047543694978697

`A001057(A204181(n+1))`
-/

namespace A204179.P12929047543694978697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A204181 (n + 1)).toNat

end

end A204179.P12929047543694978697

namespace A204179

/-- `A001057(A204181(n+1))` -/
def P12929047543694978697.Spec : Prop :=
  ∀ n, P12929047543694978697.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P5869157082779933415

`A089688(n)*A204177(n+1)`
-/

namespace A204179.P5869157082779933415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n * A204177 (n + 1)

end

end A204179.P5869157082779933415

namespace A204179

/-- `A089688(n)*A204177(n+1)` -/
def P5869157082779933415.Spec : Prop :=
  ∀ n, P5869157082779933415.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P16416840978499100433

`A128227(n)*A204177(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204179

/-- `A128227(n)*A204177(n+1)` -/
def P16416840978499100433.Spec : Prop :=
  ∀ n, P16416840978499100433.a n = A204179 (n + 1)

theorem P16416840978499100433.correct : P16416840978499100433.Spec := by
  intro n
  simp only [A204179, Nat.add_sub_cancel]

end A204179

/-! ## A204179.P7980842278319881188

`A193592(n)*A204177(n+1)`
-/

namespace A204179.P7980842278319881188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A204177 (n + 1)

end

end A204179.P7980842278319881188

namespace A204179

/-- `A193592(n)*A204177(n+1)` -/
def P7980842278319881188.Spec : Prop :=
  ∀ n, P7980842278319881188.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P1800436775967679389

`A204177(n+1)*A332013(n)`
-/

namespace A204179.P1800436775967679389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1) * A332013 n

end

end A204179.P1800436775967679389

namespace A204179

/-- `A204177(n+1)*A332013(n)` -/
def P1800436775967679389.Spec : Prop :=
  ∀ n, P1800436775967679389.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P17397223038148188324

`gcd(A103452(n), A286100(n+1))`
-/

namespace A204179.P17397223038148188324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A286100 (n + 1))

end

end A204179.P17397223038148188324

namespace A204179

/-- `gcd(A103452(n), A286100(n+1))` -/
def P17397223038148188324.Spec : Prop :=
  ∀ n, (P17397223038148188324.a n : ℤ) = A204179 (n + 1)

end A204179

/-! ## A204179.P9989706381517128284

`lcm(A089688(n), A185917(n+1))`
-/

namespace A204179.P9989706381517128284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089688 n) (A185917 (n + 1))

end

end A204179.P9989706381517128284

namespace A204179

/-- `lcm(A089688(n), A185917(n+1))` -/
def P9989706381517128284.Spec : Prop :=
  ∀ n, (P9989706381517128284.a n : ℤ) = A204179 (n + 1)

end A204179

/-! ## A204179.P8842127484426283398

`lcm(A128227(n), A204183(n+1))`
-/

namespace A204179.P8842127484426283398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128227 n) (A204183 (n + 1))

end

end A204179.P8842127484426283398

namespace A204179

/-- `lcm(A128227(n), A204183(n+1))` -/
def P8842127484426283398.Spec : Prop :=
  ∀ n, (P8842127484426283398.a n : ℤ) = A204179 (n + 1)

end A204179

/-! ## A204179.P5256248681263397429

`and(A089688(n), A204242(n+1))`
-/

namespace A204179.P5256248681263397429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089688 n) (A204242 (n + 1))

end

end A204179.P5256248681263397429

namespace A204179

/-- `and(A089688(n), A204242(n+1))` -/
def P5256248681263397429.Spec : Prop :=
  ∀ n, P5256248681263397429.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P7271804546142333809

`and(A128227(n), A185917(n+1))`
-/

namespace A204179.P7271804546142333809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128227 n) (A185917 (n + 1))

end

end A204179.P7271804546142333809

namespace A204179

/-- `and(A128227(n), A185917(n+1))` -/
def P7271804546142333809.Spec : Prop :=
  ∀ n, P7271804546142333809.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P13570249705181867736

`and(A128227(n), A204242(n+1))`
-/

namespace A204179.P13570249705181867736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128227 n) (A204242 (n + 1))

end

end A204179.P13570249705181867736

namespace A204179

/-- `and(A128227(n), A204242(n+1))` -/
def P13570249705181867736.Spec : Prop :=
  ∀ n, P13570249705181867736.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P11972844516394554252

`and(A185917(n+1), A193592(n))`
-/

namespace A204179.P11972844516394554252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A193592 n)

end

end A204179.P11972844516394554252

namespace A204179

/-- `and(A185917(n+1), A193592(n))` -/
def P11972844516394554252.Spec : Prop :=
  ∀ n, P11972844516394554252.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P16625172284079343720

`and(A193592(n), A204242(n+1))`
-/

namespace A204179.P16625172284079343720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193592 n) (A204242 (n + 1))

end

end A204179.P16625172284079343720

namespace A204179

/-- `and(A193592(n), A204242(n+1))` -/
def P16625172284079343720.Spec : Prop :=
  ∀ n, P16625172284079343720.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P887391067452105551

`and(A185917(n+1), A332013(n))`
-/

namespace A204179.P887391067452105551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A332013 n)

end

end A204179.P887391067452105551

namespace A204179

/-- `and(A185917(n+1), A332013(n))` -/
def P887391067452105551.Spec : Prop :=
  ∀ n, P887391067452105551.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P10087902473882052743

`and(A204242(n+1), A332013(n))`
-/

namespace A204179.P10087902473882052743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204242 (n + 1)) (A332013 n)

end

end A204179.P10087902473882052743

namespace A204179

/-- `and(A204242(n+1), A332013(n))` -/
def P10087902473882052743.Spec : Prop :=
  ∀ n, P10087902473882052743.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P10404695117757842321

`and(A185917(n+1), A397991(n))`
-/

namespace A204179.P10404695117757842321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A397991 n)

end

end A204179.P10404695117757842321

namespace A204179

/-- `and(A185917(n+1), A397991(n))` -/
def P10404695117757842321.Spec : Prop :=
  ∀ n, P10404695117757842321.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P4763565757879293406

`and(A204242(n+1), A397991(n))`
-/

namespace A204179.P4763565757879293406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204242 (n + 1)) (A397991 n)

end

end A204179.P4763565757879293406

namespace A204179

/-- `and(A204242(n+1), A397991(n))` -/
def P4763565757879293406.Spec : Prop :=
  ∀ n, P4763565757879293406.a n = A204179 (n + 1)

end A204179

/-! ## A204179.P3302404863623443247

`A266285(A204181(n+1)+1)-1`
-/

namespace A204179.P3302404863623443247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A204181 (n + 1) + 1).toNat - 1

end

end A204179.P3302404863623443247

namespace A204179

/-- `A266285(A204181(n+1)+1)-1` -/
def P3302404863623443247.Spec : Prop :=
  ∀ n, P3302404863623443247.a n = A204179 (n + 1)

end A204179

/-!
# A204181: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= 2i-1; f(i,j)=0 otherwise; by antidiagonals.

The programs for A204181, the canonical program `A204181.P7402957696718526263` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204181 has offset 1).

The definition of A204181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204181.P15041642406814930315

`sqrt(and(2*n+1, A185917(n+1)))`
-/

namespace A204181.P15041642406814930315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land (2 * n + 1 : ℤ) (A185917 (n + 1)) : ℝ)

end

end A204181.P15041642406814930315

namespace A204181

/-- `sqrt(and(2*n+1, A185917(n+1)))` -/
def P15041642406814930315.Spec : Prop :=
  ∀ n, P15041642406814930315.a n = (A204181 (n + 1) : ℝ)

end A204181

/-! ## A204181.P14403851770109039890

`A004273(A204179(n+1))`
-/

namespace A204181.P14403851770109039890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A204179 (n + 1)).toNat

end

end A204181.P14403851770109039890

namespace A204181

/-- `A004273(A204179(n+1))` -/
def P14403851770109039890.Spec : Prop :=
  ∀ n, P14403851770109039890.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P7402957696718526263

`and(A099375(n), A185917(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A204181

/-- `and(A099375(n), A185917(n+1))` -/
def P7402957696718526263.Spec : Prop :=
  ∀ n, P7402957696718526263.a n = A204181 (n + 1)

theorem P7402957696718526263.correct : P7402957696718526263.Spec := by
  intro n
  simp only [A204181, Nat.add_sub_cancel]

end A204181

/-! ## A204181.P80455273425197725

`and(A099375(n), A204242(n+1))`
-/

namespace A204181.P80455273425197725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099375 n) (A204242 (n + 1))

end

end A204181.P80455273425197725

namespace A204181

/-- `and(A099375(n), A204242(n+1))` -/
def P80455273425197725.Spec : Prop :=
  ∀ n, P80455273425197725.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P10714089423078912006

`and(A143453(n), A185917(n+1))`
-/

namespace A204181.P10714089423078912006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143453 n) (A185917 (n + 1))

end

end A204181.P10714089423078912006

namespace A204181

/-- `and(A143453(n), A185917(n+1))` -/
def P10714089423078912006.Spec : Prop :=
  ∀ n, P10714089423078912006.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P11188241210036790097

`and(A143453(n), A204242(n+1))`
-/

namespace A204181.P11188241210036790097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143453 n) (A204242 (n + 1))

end

end A204181.P11188241210036790097

namespace A204181

/-- `and(A143453(n), A204242(n+1))` -/
def P11188241210036790097.Spec : Prop :=
  ∀ n, P11188241210036790097.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P14839414724551275817

`A157454(n+1)*A204177(n+1)`
-/

namespace A204181.P14839414724551275817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) * A204177 (n + 1)

end

end A204181.P14839414724551275817

namespace A204181

/-- `A157454(n+1)*A204177(n+1)` -/
def P14839414724551275817.Spec : Prop :=
  ∀ n, P14839414724551275817.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P751991293428036864

`A204131(n+1)*A204177(n+1)`
-/

namespace A204181.P751991293428036864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (n + 1) * A204177 (n + 1)

end

end A204181.P751991293428036864

namespace A204181

/-- `A204131(n+1)*A204177(n+1)` -/
def P751991293428036864.Spec : Prop :=
  ∀ n, P751991293428036864.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P14233572458513720152

`lcm(A157454(n+1), A185917(n+1))`
-/

namespace A204181.P14233572458513720152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157454 (n + 1)) (A185917 (n + 1))

end

end A204181.P14233572458513720152

namespace A204181

/-- `lcm(A157454(n+1), A185917(n+1))` -/
def P14233572458513720152.Spec : Prop :=
  ∀ n, (P14233572458513720152.a n : ℤ) = A204181 (n + 1)

end A204181

/-! ## A204181.P5270046796407099598

`lcm(A204131(n+1), A204183(n+1))`
-/

namespace A204181.P5270046796407099598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204131 (n + 1)) (A204183 (n + 1))

end

end A204181.P5270046796407099598

namespace A204181

/-- `lcm(A204131(n+1), A204183(n+1))` -/
def P5270046796407099598.Spec : Prop :=
  ∀ n, (P5270046796407099598.a n : ℤ) = A204181 (n + 1)

end A204181

/-! ## A204181.P9878608711871936991

`and(A158405(n+1), A185917(n+1))`
-/

namespace A204181.P9878608711871936991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158405 (n + 1)) (A185917 (n + 1))

end

end A204181.P9878608711871936991

namespace A204181

/-- `and(A158405(n+1), A185917(n+1))` -/
def P9878608711871936991.Spec : Prop :=
  ∀ n, P9878608711871936991.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P11163449884266338766

`and(A157454(n+1), A204242(n+1))`
-/

namespace A204181.P11163449884266338766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157454 (n + 1)) (A204242 (n + 1))

end

end A204181.P11163449884266338766

namespace A204181

/-- `and(A157454(n+1), A204242(n+1))` -/
def P11163449884266338766.Spec : Prop :=
  ∀ n, P11163449884266338766.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P7172154337694940673

`and(A158405(n+1), A204242(n+1))`
-/

namespace A204181.P7172154337694940673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158405 (n + 1)) (A204242 (n + 1))

end

end A204181.P7172154337694940673

namespace A204181

/-- `and(A158405(n+1), A204242(n+1))` -/
def P7172154337694940673.Spec : Prop :=
  ∀ n, P7172154337694940673.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P1092594384374737213

`and(A185917(n+1), A204022(n+1))`
-/

namespace A204181.P1092594384374737213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A204022 (n + 1))

end

end A204181.P1092594384374737213

namespace A204181

/-- `and(A185917(n+1), A204022(n+1))` -/
def P1092594384374737213.Spec : Prop :=
  ∀ n, P1092594384374737213.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P906170161464718868

`and(A185917(n+1), A204131(n+1))`
-/

namespace A204181.P906170161464718868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A204131 (n + 1))

end

end A204181.P906170161464718868

namespace A204181

/-- `and(A185917(n+1), A204131(n+1))` -/
def P906170161464718868.Spec : Prop :=
  ∀ n, P906170161464718868.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P16388817167819171579

`2*A204179(n+1)-A204177(n+1)`
-/

namespace A204181.P16388817167819171579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204179 (n + 1) - A204177 (n + 1)

end

end A204181.P16388817167819171579

namespace A204181

/-- `2*A204179(n+1)-A204177(n+1)` -/
def P16388817167819171579.Spec : Prop :=
  ∀ n, P16388817167819171579.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P17586755909336568189

`A176346(n)*A204177(n+1)`
-/

namespace A204181.P17586755909336568189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n * A204177 (n + 1)

end

end A204181.P17586755909336568189

namespace A204181

/-- `A176346(n)*A204177(n+1)` -/
def P17586755909336568189.Spec : Prop :=
  ∀ n, P17586755909336568189.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P5924870786969120168

`lcm(A176346(n), A185917(n+1))`
-/

namespace A204181.P5924870786969120168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176346 n) (A185917 (n + 1))

end

end A204181.P5924870786969120168

namespace A204181

/-- `lcm(A176346(n), A185917(n+1))` -/
def P5924870786969120168.Spec : Prop :=
  ∀ n, (P5924870786969120168.a n : ℤ) = A204181 (n + 1)

end A204181

/-! ## A204181.P10810114644521516698

`and(A176346(n), A204242(n+1))`
-/

namespace A204181.P10810114644521516698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176346 n) (A204242 (n + 1))

end

end A204181.P10810114644521516698

namespace A204181

/-- `and(A176346(n), A204242(n+1))` -/
def P10810114644521516698.Spec : Prop :=
  ∀ n, P10810114644521516698.a n = A204181 (n + 1)

end A204181

/-! ## A204181.P8438883171845666251

`A000196(and(Δ[n²], A185917(n+1)))`
-/

namespace A204181.P8438883171845666251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A185917 (n + 1))).toNat

end

end A204181.P8438883171845666251

namespace A204181

/-- `A000196(and(Δ[n²], A185917(n+1)))` -/
def P8438883171845666251.Spec : Prop :=
  ∀ n, P8438883171845666251.a n = A204181 (n + 1)

end A204181

/-!
# A204183: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= (-1)^(i-1); f(i,j)=0 otherwise; by antidiagonals.

The programs for A204183, the canonical program `A204183.P6031694459473628253` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204183 has offset 1).

The definition of A204183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204183.P6031694459473628253

`A009531(A204181(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204183

/-- `A009531(A204181(n+1))` -/
def P6031694459473628253.Spec : Prop :=
  ∀ n, P6031694459473628253.a n = A204183 (n + 1)

theorem P6031694459473628253.correct : P6031694459473628253.Spec := by
  intro n
  simp only [A204183, Nat.add_sub_cancel]

end A204183

/-! ## A204183.P9604956775578401570

`A062157(A204179(n+1))`
-/

namespace A204183.P9604956775578401570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A204179 (n + 1)).toNat

end

end A204183.P9604956775578401570

namespace A204183

/-- `A062157(A204179(n+1))` -/
def P9604956775578401570.Spec : Prop :=
  ∀ n, P9604956775578401570.a n = A204183 (n + 1)

end A204183

/-! ## A204183.P15822777757842068967

`A185917(n+1)^A002262(n)`
-/

namespace A204183.P15822777757842068967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A002262 n : ℤ)

end

end A204183.P15822777757842068967

namespace A204183

/-- `A185917(n+1)^A002262(n)` -/
def P15822777757842068967.Spec : Prop :=
  ∀ n, P15822777757842068967.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P8780807328245819142

`A185917(n+1)^A004197(n)`
-/

namespace A204183.P8780807328245819142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A004197 n : ℤ)

end

end A204183.P8780807328245819142

namespace A204183

/-- `A185917(n+1)^A004197(n)` -/
def P8780807328245819142.Spec : Prop :=
  ∀ n, P8780807328245819142.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P3965252037813403762

`A185917(n+1)^A025581(n)`
-/

namespace A204183.P3965252037813403762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A204183.P3965252037813403762

namespace A204183

/-- `A185917(n+1)^A025581(n)` -/
def P3965252037813403762.Spec : Prop :=
  ∀ n, P3965252037813403762.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P7967895293068526444

`and(A097807(n), A185917(n+1))`
-/

namespace A204183.P7967895293068526444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097807 n) (A185917 (n + 1))

end

end A204183.P7967895293068526444

namespace A204183

/-- `and(A097807(n), A185917(n+1))` -/
def P7967895293068526444.Spec : Prop :=
  ∀ n, P7967895293068526444.a n = A204183 (n + 1)

end A204183

/-! ## A204183.P6509082382487931106

`and(A110242(n), A185917(n+1))`
-/

namespace A204183.P6509082382487931106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110242 n) (A185917 (n + 1))

end

end A204183.P6509082382487931106

namespace A204183

/-- `and(A110242(n), A185917(n+1))` -/
def P6509082382487931106.Spec : Prop :=
  ∀ n, P6509082382487931106.a n = A204183 (n + 1)

end A204183

/-! ## A204183.P14642193793647858489

`A185917(n+1)^log2(A059268(n))`
-/

namespace A204183.P14642193793647858489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℝ) ^ (Real.logb 2 (A059268 n : ℝ))

end

end A204183.P14642193793647858489

namespace A204183

/-- `A185917(n+1)^log2(A059268(n))` -/
def P14642193793647858489.Spec : Prop :=
  ∀ n, P14642193793647858489.a n = (A204183 (n + 1) : ℝ)

end A204183

/-! ## A204183.P10517768664087666513

`A185917(n+1)^log2(A130321(n))`
-/

namespace A204183.P10517768664087666513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A204183.P10517768664087666513

namespace A204183

/-- `A185917(n+1)^log2(A130321(n))` -/
def P10517768664087666513.Spec : Prop :=
  ∀ n, P10517768664087666513.a n = (A204183 (n + 1) : ℝ)

end A204183

/-! ## A204183.P16189148339548317661

`A185917(n+1)^A004202(n+1)`
-/

namespace A204183.P16189148339548317661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A004202 (n + 1) : ℤ)

end

end A204183.P16189148339548317661

namespace A204183

/-- `A185917(n+1)^A004202(n+1)` -/
def P16189148339548317661.Spec : Prop :=
  ∀ n, P16189148339548317661.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P14388162330354671379

`A185917(n+1)^∑[A007503(n+1)]`
-/

namespace A204183.P14388162330354671379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A204183.P14388162330354671379

namespace A204183

/-- `A185917(n+1)^∑[A007503(n+1)]` -/
def P14388162330354671379.Spec : Prop :=
  ∀ n, P14388162330354671379.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P10017797316127884416

`A185917(n+1)^∑[A185907(n+1)]`
-/

namespace A204183.P10017797316127884416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185907 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A204183.P10017797316127884416

namespace A204183

/-- `A185917(n+1)^∑[A185907(n+1)]` -/
def P10017797316127884416.Spec : Prop :=
  ∀ n, P10017797316127884416.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P6864483377178470395

`A185917(n+1)^∑[A260717(n+1)]`
-/

namespace A204183.P6864483377178470395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A204183.P6864483377178470395

namespace A204183

/-- `A185917(n+1)^∑[A260717(n+1)]` -/
def P6864483377178470395.Spec : Prop :=
  ∀ n, P6864483377178470395.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P277920317787044985

`A185917(n+1)^(A004736(n+1)+1)`
-/

namespace A204183.P277920317787044985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A004736 (n + 1) + 1 : ℤ)

end

end A204183.P277920317787044985

namespace A204183

/-- `A185917(n+1)^(A004736(n+1)+1)` -/
def P277920317787044985.Spec : Prop :=
  ∀ n, P277920317787044985.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P3207751453227674063

`A185917(n+1)^(A063657(n+1)+1)`
-/

namespace A204183.P3207751453227674063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A063657 (n + 1) + 1 : ℤ)

end

end A204183.P3207751453227674063

namespace A204183

/-- `A185917(n+1)^(A063657(n+1)+1)` -/
def P3207751453227674063.Spec : Prop :=
  ∀ n, P3207751453227674063.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P524742526578461993

`A185917(n+1)²-and(2, A204131(n+1))`
-/

namespace A204183.P524742526578461993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) ^ 2 - Int.land 2 (A204131 (n + 1))

end

end A204183.P524742526578461993

namespace A204183

/-- `A185917(n+1)²-and(2, A204131(n+1))` -/
def P524742526578461993.Spec : Prop :=
  ∀ n, P524742526578461993.a n = A204183 (n + 1)

end A204183

/-! ## A204183.P18296113996611311886

`A185917(n+1)^A007318(A008624(n))`
-/

namespace A204183.P18296113996611311886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A007318 (A008624 n).toNat : ℤ)

end

end A204183.P18296113996611311886

namespace A204183

/-- `A185917(n+1)^A007318(A008624(n))` -/
def P18296113996611311886.Spec : Prop :=
  ∀ n, P18296113996611311886.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P8988772701103656002

`A185917(n+1)^A003990(n+2)`
-/

namespace A204183.P8988772701103656002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A003990 (n + 2) : ℤ)

end

end A204183.P8988772701103656002

namespace A204183

/-- `A185917(n+1)^A003990(n+2)` -/
def P8988772701103656002.Spec : Prop :=
  ∀ n, P8988772701103656002.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P18115029900692264364

`A185917(n+1)^A004736(n+2)`
-/

namespace A204183.P18115029900692264364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (A004736 (n + 2) : ℤ)

end

end A204183.P18115029900692264364

namespace A204183

/-- `A185917(n+1)^A004736(n+2)` -/
def P18115029900692264364.Spec : Prop :=
  ∀ n, P18115029900692264364.a n = (A204183 (n + 1) : ℚ)

end A204183

/-! ## A204183.P10403930405641531051

`A185917(n+1)^∑[A185916(n+2)]`
-/

namespace A204183.P10403930405641531051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185917 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A204183.P10403930405641531051

namespace A204183

/-- `A185917(n+1)^∑[A185916(n+2)]` -/
def P10403930405641531051.Spec : Prop :=
  ∀ n, P10403930405641531051.a n = (A204183 (n + 1) : ℚ)

end A204183

/-!
# A204185: Number of quadrilaterals in a triangular matchstick arrangement of side n.

The programs for A204185, the canonical program `A204185.P52191780148053450` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204185 has offset 0).

The definition of A204185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204185.P12940729371080455664

`ogf((6x^2+9x^3)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A204185.P12940729371080455664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 6, 9] [1, -4, 5, 0, -5, 4, -1] n

end

end A204185.P12940729371080455664

namespace A204185

/-- `ogf((6x^2+9x^3)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P12940729371080455664.Spec : Prop :=
  ∀ n, P12940729371080455664.a n = A204185 n

end A204185

/-! ## A204185.P52191780148053450

`a(n-1)+floor((n+1)*(n-1)*(10*n-3)/8)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204185

/-- `a(n-1)+floor((n+1)*(n-1)*(10*n-3)/8)` -/
def P52191780148053450.Spec : Prop :=
  ∀ n, P52191780148053450.a n = A204185 n

theorem P52191780148053450.correct : P52191780148053450.Spec := by
  intro n
  simp only [A204185]

end A204185

/-! ## A204185.P9315336215994356647

`(3-3*(-1)^n-16*n-16*n²+16*n^3+10*n^4)/32`
-/

namespace A204185.P9315336215994356647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - 3 * (-1) ^ n - (16 * n : ℤ) - (16 * n ^ 2 : ℤ) + (16 * n ^ 3 : ℤ) + (10 * n ^ 4 : ℤ) : ℚ) / 32

end

end A204185.P9315336215994356647

namespace A204185

/-- `(3-3*(-1)^n-16*n-16*n²+16*n^3+10*n^4)/32` -/
def P9315336215994356647.Spec : Prop :=
  ∀ n, P9315336215994356647.a n = (A204185 n : ℚ)

end A204185

/-! ## A204185.P5385460236752341011

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=33, a(4)=102, a(5)=243`
-/

namespace A204185.P5385460236752341011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 33, 102, 243] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A204185.P5385460236752341011

namespace A204185

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P5385460236752341011.Spec : Prop :=
  ∀ n, P5385460236752341011.a n = A204185 n

end A204185

/-! ## A204185.P5388455020694805815

`∑[3*(A002412(n)-A002717(n))]`
-/

namespace A204185.P5388455020694805815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002412 n - A002717 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204185.P5388455020694805815

namespace A204185

/-- `∑[3*(A002412(n)-A002717(n))]` -/
def P5388455020694805815.Spec : Prop :=
  ∀ n, P5388455020694805815.a n = A204185 n

end A204185

/-! ## A204185.P548206610001035162

`∑[∑[3*(A000566(n)-A032527(n))]]`
-/

namespace A204185.P548206610001035162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000566 n - A032527 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204185.P548206610001035162

namespace A204185

/-- `∑[∑[3*(A000566(n)-A032527(n))]]` -/
def P548206610001035162.Spec : Prop :=
  ∀ n, P548206610001035162.a n = A204185 n

end A204185

/-! ## A204185.P11775381272405455933

`A000537(n)+A011863(n)-A006578(n)`
-/

namespace A204185.P11775381272405455933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (A011863 n - A006578 n)

end

end A204185.P11775381272405455933

namespace A204185

/-- `A000537(n)+A011863(n)-A006578(n)` -/
def P11775381272405455933.Spec : Prop :=
  ∀ n, P11775381272405455933.a n = A204185 n

end A204185

/-! ## A204185.P7419127239898988423

`A062392(n)-(A105636(n)+A011863(n))`
-/

namespace A204185.P7419127239898988423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - (A105636 n + A011863 n)

end

end A204185.P7419127239898988423

namespace A204185

/-- `A062392(n)-(A105636(n)+A011863(n))` -/
def P7419127239898988423.Spec : Prop :=
  ∀ n, P7419127239898988423.a n = A204185 n

end A204185

/-! ## A204185.P16697361449366739941

`∑[∑[3*A131242(5*n+1)]]`
-/

namespace A204185.P16697361449366739941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131242 (5 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204185.P16697361449366739941

namespace A204185

/-- `∑[∑[3*A131242(5*n+1)]]` -/
def P16697361449366739941.Spec : Prop :=
  ∀ n, P16697361449366739941.a n = A204185 n

end A204185

/-!
# A204186: Number of trivalent connected (or cubic) graphs with 2n nodes that are not planar.

The programs for A204186, there is no canonical definition to state claims against.
-/

/-! ## A204186.P7476174706079847986

`A002851(n+1)-A005964(n+1)`
-/

namespace A204186.P7476174706079847986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (n + 1) - A005964 (n + 1)

end

end A204186.P7476174706079847986

/-! ## A204186.P4841659605039776441

`record[A275744(n+1)]-A005964(n+1)`
-/

namespace A204186.P4841659605039776441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005964 (n + 1)

end

end A204186.P4841659605039776441

/-! ## A204186.P3398718194255294372

`A002266(A209902(n)+n)`
-/

namespace A204186.P3398718194255294372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A209902 n + (n : ℤ)).toNat

end

end A204186.P3398718194255294372

/-!
# A204187: a(n) = Sum_{m=1..n-1} m^(n-1) modulo n.

The programs for A204187, there is no canonical definition to state claims against.
-/

/-! ## A204187.P1856561706089294351

`(A201560(n+1)+n)%(n+1)`
-/

namespace A204187.P1856561706089294351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201560 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A204187.P1856561706089294351

/-! ## A204187.P862794625145696235

`C(A020639(n+1), n)+A201560(n+1)-1`
-/

namespace A204187.P862794625145696235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A020639 (n + 1)).toNat n : ℤ) + (A201560 (n + 1) - 1)

end

end A204187.P862794625145696235

/-! ## A204187.P506246903158666126

`A025581(∑[n]-A201560(n+1))`
-/

namespace A204187.P506246903158666126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A201560 (n + 1)).toNat

end

end A204187.P506246903158666126

/-! ## A204187.P14960073336637881666

`A002262(A201560(n+1)+A000096(n))`
-/

namespace A204187.P14960073336637881666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A201560 (n + 1) + A000096 n).toNat

end

end A204187.P14960073336637881666

/-! ## A204187.P16701437901110630404

`A076015(n+1)%(n+1)`
-/

namespace A204187.P16701437901110630404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076015 (n + 1)) (n + 1 : ℤ)

end

end A204187.P16701437901110630404

/-! ## A204187.P16697013594392000405

`A031971(abs(1-n)+1)%(n+1)`
-/

namespace A204187.P16697013594392000405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031971 (|1 - (n : ℤ)| + 1).toNat) (n + 1 : ℤ)

end

end A204187.P16697013594392000405

/-! ## A204187.P3178753078457236136

`A225095(n+1)%(n+1)`
-/

namespace A204187.P3178753078457236136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225095 (n + 1)) (n + 1 : ℤ)

end

end A204187.P3178753078457236136

/-!
# A204190: E.g.f. A(x) satisfies: Laplace(A(x)) = Sum_{n>=0} Laplace(A(x)^n) * x^n.

The programs for A204190, there is no canonical definition to state claims against.
-/

/-! ## A204190.P12243094373399327151

`A172474(floor(2*a(n-1)/acot(n))+3)` with `a(0)=1`
-/

namespace A204190.P12243094373399327151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172474 (⌊(2 * a (n - 1) : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ + 3).toNat

end

end A204190.P12243094373399327151

/-! ## A204190.P2355688768775117145

`or(A066360(A132880(n)), A171450(n))`
-/

namespace A204190.P2355688768775117145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066360 (A132880 n).toNat) (A171450 n)

end

end A204190.P2355688768775117145

/-! ## A204190.P13820461156340053662

`or(A079691(A143684(n)), A193318(n))`
-/

namespace A204190.P13820461156340053662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079691 (A143684 n).toNat) (A193318 n)

end

end A204190.P13820461156340053662

/-! ## A204190.P12189503396537911384

`or(A171450(n), A287481(A001498(n)))`
-/

namespace A204190.P12189503396537911384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171450 n) (A287481 (A001498 n).toNat)

end

end A204190.P12189503396537911384

/-!
# A204191: Number of n X n 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204191, there is no canonical definition to state claims against.
-/

/-! ## A204191.P6905357695532997052

`A204197((n+1)²+n²)`
-/

namespace A204191.P6905357695532997052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 ((n + 1) ^ 2 + n ^ 2)

end

end A204191.P6905357695532997052

/-! ## A204191.P17647336182523792494

`record[gcd(A114327(n), A204197(n+1))]`
-/

namespace A204191.P17647336182523792494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204197 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204191.P17647336182523792494

/-! ## A204191.P11597194465837009958

`or(A000007(n), A204197(A001844(n)))`
-/

namespace A204191.P11597194465837009958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A204197 (A001844 n).toNat)

end

end A204191.P11597194465837009958

/-! ## A204191.P3326383093075167876

`A204197(A001844(n))+A055671(n²)`
-/

namespace A204191.P3326383093075167876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A001844 n).toNat + A055671 (n ^ 2)

end

end A204191.P3326383093075167876

/-! ## A204191.P4972877383945025558

`A000045(gcd(n, n+1))*A204197(A001844(n))`
-/

namespace A204191.P4972877383945025558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A204197 (A001844 n).toNat

end

end A204191.P4972877383945025558

/-!
# A204192: Number of n X 3 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204192, the canonical program `A204192.P15030479954192927644` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204192 has offset 1).

The definition of A204192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204192.P15030479954192927644

`ogf((3+12x-12x^2-31x^3-7x^4+48x^5+25x^6-34x^7-14x^8+5x^9+4x^10)/(1-2x-3x^2+x^3+5x^4+2x^5-5x^6-x^7+2x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204192

/-- `ogf((3+12x-12x^2-31x^3-7x^4+48x^5+25x^6-34x^7-14x^8+5x^9+4x^10)/(1-2x-3x^2+x^3+5x^4+2x^5-5x^6-x^7+2x^8))` -/
def P15030479954192927644.Spec : Prop :=
  ∀ n, P15030479954192927644.a n = A204192 (n + 1)

theorem P15030479954192927644.correct : P15030479954192927644.Spec := by
  intro n
  simp only [A204192, Nat.add_sub_cancel]

end A204192

/-! ## A204192.P9211577558334983438

`A204197(∑[n+2]+4)`
-/

namespace A204192.P9211577558334983438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204192.P9211577558334983438

namespace A204192

/-- `A204197(∑[n+2]+4)` -/
def P9211577558334983438.Spec : Prop :=
  ∀ n, P9211577558334983438.a n = A204192 (n + 1)

end A204192

/-! ## A204192.P9509249820015719393

`lcm(A033999(n), A204197(A167614(n+1)))`
-/

namespace A204192.P9509249820015719393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A204197 (A167614 (n + 1)).toNat)

end

end A204192.P9509249820015719393

namespace A204192

/-- `lcm(A033999(n), A204197(A167614(n+1)))` -/
def P9509249820015719393.Spec : Prop :=
  ∀ n, (P9509249820015719393.a n : ℤ) = A204192 (n + 1)

end A204192

/-! ## A204192.P10783139492344787486

`or(A000038(n), A204197(A167614(n+1)))`
-/

namespace A204192.P10783139492344787486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A204197 (A167614 (n + 1)).toNat)

end

end A204192.P10783139492344787486

namespace A204192

/-- `or(A000038(n), A204197(A167614(n+1)))` -/
def P10783139492344787486.Spec : Prop :=
  ∀ n, P10783139492344787486.a n = A204192 (n + 1)

end A204192

/-! ## A204192.P15299462064573531126

`or(A204197(A167614(n+1)), A279948(n))`
-/

namespace A204192.P15299462064573531126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204197 (A167614 (n + 1)).toNat) (A279948 n)

end

end A204192.P15299462064573531126

namespace A204192

/-- `or(A204197(A167614(n+1)), A279948(n))` -/
def P15299462064573531126.Spec : Prop :=
  ∀ n, P15299462064573531126.a n = A204192 (n + 1)

end A204192

/-!
# A204193: Number of nX4 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204193, there is no canonical definition to state claims against.
-/

/-! ## A204193.P11702293081143766487

`A204197(A141214(n)+7)`
-/

namespace A204193.P11702293081143766487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A141214 n + 7).toNat

end

end A204193.P11702293081143766487

/-! ## A204193.P32316798874095546

`A204197(A052905(n)+9)`
-/

namespace A204193.P32316798874095546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A052905 n + 9).toNat

end

end A204193.P32316798874095546

/-! ## A204193.P17873051035047558771

`A204197(A167614(n+2)+1)`
-/

namespace A204193.P17873051035047558771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A167614 (n + 2) + 1).toNat

end

end A204193.P17873051035047558771

/-! ## A204193.P11476442217563201351

`A204197(Δ[A023545(n+1)-n²])`
-/

namespace A204193.P11476442217563201351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (f1 (n + 1) - f1 n).toNat

end

end A204193.P11476442217563201351

/-! ## A204193.P18351916800685698124

`A204197(A141214(n+1))`
-/

namespace A204193.P18351916800685698124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A141214 (n + 1)).toNat

end

end A204193.P18351916800685698124

/-!
# A204194: Number of nX5 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204194, there is no canonical definition to state claims against.
-/

/-! ## A204194.P10521051339232974208

`A204197(A167499(n+3))`
-/

namespace A204194.P10521051339232974208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A167499 (n + 3)).toNat

end

end A204194.P10521051339232974208

/-! ## A204194.P12156516368335312968

`A204197(A056000(n)+15)`
-/

namespace A204194.P12156516368335312968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A056000 n + 15).toNat

end

end A204194.P12156516368335312968

/-! ## A204194.P14003593688738685422

`A204197(A000217(n+4)+5)`
-/

namespace A204194.P14003593688738685422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A000217 (n + 4) + 5).toNat

end

end A204194.P14003593688738685422

/-! ## A204194.P14167252640675648541

`A204197(A052905(n+1)+10)`
-/

namespace A204194.P14167252640675648541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A052905 (n + 1) + 10).toNat

end

end A204194.P14167252640675648541

/-! ## A204194.P16535034732020470894

`A204197(A000096(n+4)-(n-1))`
-/

namespace A204194.P16535034732020470894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A204194.P16535034732020470894

/-!
# A204195: Number of n X 6 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204195, there is no canonical definition to state claims against.
-/

/-! ## A204195.P8999867663686613503

`A204197(A000217(n+5)+6)`
-/

namespace A204195.P8999867663686613503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A000217 (n + 5) + 6).toNat

end

end A204195.P8999867663686613503

/-! ## A204195.P17800756534166211411

`A204197(A046691(n+3)+10)`
-/

namespace A204195.P17800756534166211411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A046691 (n + 3) + 10).toNat

end

end A204195.P17800756534166211411

/-! ## A204195.P2981283592336933094

`A204197(Δ[A023545(n+1)]+10)`
-/

namespace A204195.P2981283592336933094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (f1 (n + 1) - f1 n + 10).toNat

end

end A204195.P2981283592336933094

/-! ## A204195.P4469227556624994269

`A204197(A000124(n+6)-(n+1))`
-/

namespace A204195.P4469227556624994269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A204195.P4469227556624994269

/-! ## A204195.P6542951138704911796

`A204197(A374007(n+1))`
-/

namespace A204195.P6542951138704911796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A374007 (n + 1)).toNat

end

end A204195.P6542951138704911796

/-!
# A204196: Number of nX7 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204196, there is no canonical definition to state claims against.
-/

/-! ## A204196.P213274750823673073

`A204197(A000124(n+6)+6)`
-/

namespace A204196.P213274750823673073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A000124 (n + 6) + 6).toNat

end

end A204196.P213274750823673073

/-! ## A204196.P1701379546956556225

`A204197(A000217(n+6)+7)`
-/

namespace A204196.P1701379546956556225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A000217 (n + 6) + 7).toNat

end

end A204196.P1701379546956556225

/-! ## A204196.P3559438012239028421

`A204197(A027379(n+4)+10)`
-/

namespace A204196.P3559438012239028421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A027379 (n + 4) + 10).toNat

end

end A204196.P3559438012239028421

/-! ## A204196.P10469981202752472288

`A204197(A034856(n+5)+9)`
-/

namespace A204196.P10469981202752472288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A034856 (n + 5) + 9).toNat

end

end A204196.P10469981202752472288

/-! ## A204196.P6722273503733931252

`A204197(A055998(n+4)+10)`
-/

namespace A204196.P6722273503733931252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (A055998 (n + 4) + 10).toNat

end

end A204196.P6722273503733931252

/-!
# A204197: T(n,k) = Number of n X k 0..1 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A204197, there is no canonical definition to state claims against.
-/

/-! ## A204197.P1811438774802488038

`A072088(A206987(n+1)/2)`
-/

namespace A204197.P1811438774802488038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (SequenceMachineLib.roundAway ((A206987 (n + 1) : ℚ) / 2)).toNat

end

end A204197.P1811438774802488038

/-! ## A204197.P5203737773284294164

`A072089(A206987(n+1)/2)`
-/

namespace A204197.P5203737773284294164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (SequenceMachineLib.roundAway ((A206987 (n + 1) : ℚ) / 2)).toNat

end

end A204197.P5203737773284294164

/-! ## A204197.P15303327017614916052

`A072088(A004525(A206987(n+1)))`
-/

namespace A204197.P15303327017614916052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A004525 (A206987 (n + 1)).toNat).toNat

end

end A204197.P15303327017614916052

/-! ## A204197.P285608813018027056

`A207845(n+1)-A072088(A238654(n+1))`
-/

namespace A204197.P285608813018027056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (n + 1) - A072088 (A238654 (n + 1)).toNat

end

end A204197.P285608813018027056

/-! ## A204197.P688963263115262508

`A238654(A004896(n+2))`
-/

namespace A204197.P688963263115262508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A004896 (n + 2)).toNat

end

end A204197.P688963263115262508

/-!
# A204198: Number of (strictly) 3-connected cubic graphs on 2n nodes.

The programs for A204198, there is no canonical definition to state claims against.
-/

/-! ## A204198.P8002887821600407495

`A059687(n+2)+A010815(A008000(n))`
-/

namespace A204198.P8002887821600407495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059687 (n + 2) + A010815 (A008000 n).toNat

end

end A204198.P8002887821600407495

/-! ## A204198.P17418508102578179769

`A001221(A000079(n))*A059687(n+2)`
-/

namespace A204198.P17418508102578179769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A059687 (n + 2)

end

end A204198.P17418508102578179769

/-! ## A204198.P17913576763968662416

`A059687(n+2)*A341591(A161700(n+1))`
-/

namespace A204198.P17913576763968662416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059687 (n + 2) * A341591 (A161700 (n + 1)).toNat

end

end A204198.P17913576763968662416

/-! ## A204198.P698896397189695991

`A059687(n+2)*A341591(A005347(2*(n+1)))`
-/

namespace A204198.P698896397189695991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059687 (n + 2) * A341591 (A005347 (2 * (n + 1))).toNat

end

end A204198.P698896397189695991

/-!
# A204199: Number of (strictly) 2-connected cubic graphs on 2n nodes.

The programs for A204199, there is no canonical definition to state claims against.
-/

/-! ## A204199.P14322500070841196742

`A191927(A107590(n))`
-/

namespace A204199.P14322500070841196742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191927 (A107590 n).toNat

end

end A204199.P14322500070841196742

/-! ## A204199.P14069004967381941627

`A102471(A221586(n))`
-/

namespace A204199.P14069004967381941627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102471 (A221586 n).toNat

end

end A204199.P14069004967381941627

/-! ## A204199.P535944427558529468

`A102471(A307787(n))`
-/

namespace A204199.P535944427558529468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102471 (A307787 n).toNat

end

end A204199.P535944427558529468

