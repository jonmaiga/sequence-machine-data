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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A370001: Maximum number of induced subgraphs, up to isomorphism, of an n-vertex graph.

The programs for A370001, there is no canonical definition to state claims against.
-/

/-! ## A370001.P13845200500431069279

`A250251(A018152(n+1))`
-/

namespace A370001.P13845200500431069279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250251 (A018152 (n + 1)).toNat

end

end A370001.P13845200500431069279

/-! ## A370001.P2282306519663509995

`A257418(n)+A055957(n)`
-/

namespace A370001.P2282306519663509995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 n + A055957 n

end

end A370001.P2282306519663509995

/-! ## A370001.P11902520351666868444

`A225393(n)+A192571(n)`
-/

namespace A370001.P11902520351666868444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225393 n + A192571 n

end

end A370001.P11902520351666868444

/-! ## A370001.P11124408579155387647

`A257418(n)+A165090(n)`
-/

namespace A370001.P11124408579155387647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 n + A165090 n

end

end A370001.P11124408579155387647

/-! ## A370001.P15463557496655342327

`A325578(n)+A100671(n)`
-/

namespace A370001.P15463557496655342327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325578 n + A100671 n

end

end A370001.P15463557496655342327

/-!
# A370002: Maximum number of connected induced subgraphs, up to isomorphism, of an n-vertex graph.

The programs for A370002, there is no canonical definition to state claims against.
-/

/-! ## A370002.P4535273906426998752

`A308852(∑{digits}[n+1, #])`
-/

namespace A370002.P4535273906426998752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308852 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A370002.P4535273906426998752

/-! ## A370002.P2657653453566997051

`round(root(A001194(n+2), 4))`
-/

namespace A370002.P2657653453566997051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001194 (n + 2) : ℝ) ^ (1 / (4 : ℝ)))

end

end A370002.P2657653453566997051

/-! ## A370002.P4014716708517619557

`A308852(n+1)+char[9]`
-/

namespace A370002.P4014716708517619557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308852 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A370002.P4014716708517619557

/-! ## A370002.P11800823866837232864

`A308852(comp[n*(18*n+6)])`
-/

namespace A370002.P11800823866837232864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (18 * n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308852 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A370002.P11800823866837232864

/-! ## A370002.P13135480349086853622

`ceil(A265068(2*n)/(∑{digits}[n, #]+1+n))`
-/

namespace A370002.P13135480349086853622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265068 (2 * n) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℚ)⌉

end

end A370002.P13135480349086853622

/-!
# A370004: Least k>0 such that the decimal expansion of k^2 contains k+n as a substring.

The programs for A370004, there is no canonical definition to state claims against.
-/

/-! ## A370004.P10286699479012937519

`A153151(A281096(n)+n)`
-/

namespace A370004.P10286699479012937519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A281096 n + (n : ℤ)).toNat

end

end A370004.P10286699479012937519

/-!
# A370005: Number T(n,k) of ordered pairs of partitions of n with exactly k common parts; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A370005, there is no canonical definition to state claims against.
-/

/-! ## A370005.P3011264728889117618

`2*A370207(n)-A072233(n)`
-/

namespace A370005.P3011264728889117618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370207 n - A072233 n

end

end A370005.P3011264728889117618

/-! ## A370005.P12867290715839975593

`A341999(A025049(2*(n+2)))+A171224(n)`
-/

namespace A370005.P12867290715839975593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A025049 (2 * (n + 2))).toNat + A171224 n

end

end A370005.P12867290715839975593

/-!
# A370006: Steinhaus-Johnson-Trotter rank of the Eytzinger array layout of n elements.

The programs for A370006, there is no canonical definition to state claims against.
-/

/-! ## A370006.P4597341266529604910

`A081710(3*n+2)%n!`
-/

namespace A370006.P4597341266529604910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081710 (3 * n + 2)) (Nat.factorial n : ℤ)

end

end A370006.P4597341266529604910

/-! ## A370006.P6242422547912372989

`A237348((n+1)^n-2^n+2)`
-/

namespace A370006.P6242422547912372989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237348 (((n + 1) ^ n : ℤ) - (2 ^ n : ℤ) + 2).toNat

end

end A370006.P6242422547912372989

/-!
# A370007: Minimum number of curves of length 1 required to form a convex perimeter around n non-overlapping unit circles.

The programs for A370007, there is no canonical definition to state claims against.
-/

/-! ## A370007.P11056933701884685901

`comp[ceil(sqrt(A110760(n+1)))]`
-/

namespace A370007.P11056933701884685901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A110760 (n + 1) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A370007.P11056933701884685901

/-! ## A370007.P10349801028692817152

`comp[gcd(n, A027619(2*(n+1)))]`
-/

namespace A370007.P10349801028692817152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027619 (2 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A370007.P10349801028692817152

/-! ## A370007.P17031757476799255296

`comp[lcm(2^val(n+1, 2), A094851(n+1))]`
-/

namespace A370007.P17031757476799255296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A094851 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A370007.P17031757476799255296

/-! ## A370007.P4261613168295565480

`comp[A003557(Δ[A045991(n+3)])]`
-/

namespace A370007.P4261613168295565480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A370007.P4261613168295565480

/-!
# A370008: a(n) is the greatest prime less than 3*prime(n).

The programs for A370008, there is no canonical definition to state claims against.
-/

/-! ## A370008.P6761005542524183113

`A000040(A020901(n+1))`
-/

namespace A370008.P6761005542524183113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020901 (n + 1)).toNat

end

end A370008.P6761005542524183113

/-! ## A370008.P13670581876049993928

`A000040(A298864(n+1)-(n+1))`
-/

namespace A370008.P13670581876049993928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298864 (n + 1) - (n + 1 : ℤ)).toNat

end

end A370008.P13670581876049993928

/-! ## A370008.P10554350414352143466

`A081259(A000040(n+1))`
-/

namespace A370008.P10554350414352143466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (A000040 (n + 1)).toNat

end

end A370008.P10554350414352143466

/-! ## A370008.P5591927702914919866

`A081259(A008578(n+2))`
-/

namespace A370008.P5591927702914919866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (A008578 (n + 2)).toNat

end

end A370008.P5591927702914919866

/-! ## A370008.P11971135902594513469

`A081259(A182986(n+2))`
-/

namespace A370008.P11971135902594513469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (A182986 (n + 2)).toNat

end

end A370008.P11971135902594513469

/-! ## A370008.P3954022212773316456

`A000040(A074990(A000040(n+1))+n+1)`
-/

namespace A370008.P3954022212773316456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074990 (A000040 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A370008.P3954022212773316456

/-! ## A370008.P11486674201236597785

`A334194(A370009(n+1)-1)`
-/

namespace A370008.P11486674201236597785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334194 (A370009 (n + 1) - 1).toNat

end

end A370008.P11486674201236597785

/-! ## A370008.P16491045019115973891

`A055377(A138636(n+1))`
-/

namespace A370008.P16491045019115973891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A138636 (n + 1)).toNat

end

end A370008.P16491045019115973891

/-! ## A370008.P13619437571441643431

`A055377(A330410(n+1))`
-/

namespace A370008.P13619437571441643431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A330410 (n + 1)).toNat

end

end A370008.P13619437571441643431

/-! ## A370008.P8744359852584943719

`A136548(A001748(n+1))`
-/

namespace A370008.P8744359852584943719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A001748 (n + 1)).toNat

end

end A370008.P8744359852584943719

/-! ## A370008.P18258691221177712707

`A136548(A063534(n+1))`
-/

namespace A370008.P18258691221177712707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A063534 (n + 1)).toNat

end

end A370008.P18258691221177712707

/-! ## A370008.P10706450949351361929

`A136548(A112773(n+2))`
-/

namespace A370008.P10706450949351361929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A112773 (n + 2)).toNat

end

end A370008.P10706450949351361929

/-!
# A370009: a(n) is the least prime greater than 3*prime(n).

The programs for A370009, the canonical program `A370009.P11224753345839745758` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370009 has offset 1).

The definition of A370009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001748, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370009.P11224753345839745758

`A151800(A001748(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A370009

/-- `A151800(A001748(n+1))` -/
def P11224753345839745758.Spec : Prop :=
  ∀ n, P11224753345839745758.a n = A370009 (n + 1)

theorem P11224753345839745758.correct : P11224753345839745758.Spec := by
  intro n
  simp only [A370009, Nat.add_sub_cancel]

end A370009

/-! ## A370009.P4247360591241231846

`A111735(n+1)+A001748(n+1)`
-/

namespace A370009.P4247360591241231846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111735 (n + 1) + A001748 (n + 1)

end

end A370009.P4247360591241231846

namespace A370009

/-- `A111735(n+1)+A001748(n+1)` -/
def P4247360591241231846.Spec : Prop :=
  ∀ n, P4247360591241231846.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P11851579010173300310

`A045319(A020901(n+1))`
-/

namespace A370009.P11851579010173300310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A020901 (n + 1)).toNat

end

end A370009.P11851579010173300310

namespace A370009

/-- `A045319(A020901(n+1))` -/
def P11851579010173300310.Spec : Prop :=
  ∀ n, P11851579010173300310.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P10574325770565900703

`A000040(A020901(n+1)+1)`
-/

namespace A370009.P10574325770565900703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020901 (n + 1) + 1).toNat

end

end A370009.P10574325770565900703

namespace A370009

/-- `A000040(A020901(n+1)+1)` -/
def P10574325770565900703.Spec : Prop :=
  ∀ n, P10574325770565900703.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P18354552806856813289

`A000040(A298864(n+1)-n)`
-/

namespace A370009.P18354552806856813289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298864 (n + 1) - (n : ℤ)).toNat

end

end A370009.P18354552806856813289

namespace A370009

/-- `A000040(A298864(n+1)-n)` -/
def P18354552806856813289.Spec : Prop :=
  ∀ n, P18354552806856813289.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P6989963971448783514

`A151800(A370008(n+1))`
-/

namespace A370009.P6989963971448783514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A370008 (n + 1)).toNat

end

end A370009.P6989963971448783514

namespace A370009

/-- `A151800(A370008(n+1))` -/
def P6989963971448783514.Spec : Prop :=
  ∀ n, P6989963971448783514.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P17301211235445942225

`A151800(A100484(n+1)+A000040(n+1))`
-/

namespace A370009.P17301211235445942225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A100484 (n + 1) + A000040 (n + 1)).toNat

end

end A370009.P17301211235445942225

namespace A370009

/-- `A151800(A100484(n+1)+A000040(n+1))` -/
def P17301211235445942225.Spec : Prop :=
  ∀ n, P17301211235445942225.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P14576623618245655355

`A151800(A138402(n+1)/A127919(n+1))`
-/

namespace A370009.P14576623618245655355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A138402 (n + 1) : ℚ) / (A127919 (n + 1) : ℚ))).toNat

end

end A370009.P14576623618245655355

namespace A370009

/-- `A151800(A138402(n+1)/A127919(n+1))` -/
def P14576623618245655355.Spec : Prop :=
  ∀ n, P14576623618245655355.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P6288548511286631834

`A151800(A008585(A000040(n+1)))`
-/

namespace A370009.P6288548511286631834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008585 (A000040 (n + 1)).toNat).toNat

end

end A370009.P6288548511286631834

namespace A370009

/-- `A151800(A008585(A000040(n+1)))` -/
def P6288548511286631834.Spec : Prop :=
  ∀ n, P6288548511286631834.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P18380088676059781219

`A007918(A063534(n+1))`
-/

namespace A370009.P18380088676059781219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A063534 (n + 1)).toNat

end

end A370009.P18380088676059781219

namespace A370009

/-- `A007918(A063534(n+1))` -/
def P18380088676059781219.Spec : Prop :=
  ∀ n, P18380088676059781219.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P2612334673094769330

`A007918(A112773(n+2))`
-/

namespace A370009.P2612334673094769330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A112773 (n + 2)).toNat

end

end A370009.P2612334673094769330

namespace A370009

/-- `A007918(A112773(n+2))` -/
def P2612334673094769330.Spec : Prop :=
  ∀ n, P2612334673094769330.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P5054944467156583212

`A007918(A001748(n+1)+1)`
-/

namespace A370009.P5054944467156583212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A001748 (n + 1) + 1).toNat

end

end A370009.P5054944467156583212

namespace A370009

/-- `A007918(A001748(n+1)+1)` -/
def P5054944467156583212.Spec : Prop :=
  ∀ n, P5054944467156583212.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P7180769162502560567

`A308052(A138636(n+1))`
-/

namespace A370009.P7180769162502560567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A138636 (n + 1)).toNat

end

end A370009.P7180769162502560567

namespace A370009

/-- `A308052(A138636(n+1))` -/
def P7180769162502560567.Spec : Prop :=
  ∀ n, P7180769162502560567.a n = A370009 (n + 1)

end A370009

/-! ## A370009.P8552837294981729919

`A138757(A330410(n+1))`
-/

namespace A370009.P8552837294981729919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A330410 (n + 1)).toNat

end

end A370009.P8552837294981729919

namespace A370009

/-- `A138757(A330410(n+1))` -/
def P8552837294981729919.Spec : Prop :=
  ∀ n, P8552837294981729919.a n = A370009 (n + 1)

end A370009

/-!
# A370010: a(n) is the greatest prime less than 4*prime(n).

The programs for A370010, the canonical program `A370010.P2556358850231895376` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370010 has offset 1).

The definition of A370010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370010.P2556358850231895376

`A045319(A020934(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370010

/-- `A045319(A020934(n+1)-1)` -/
def P2556358850231895376.Spec : Prop :=
  ∀ n, P2556358850231895376.a n = A370010 (n + 1)

theorem P2556358850231895376.correct : P2556358850231895376.Spec := by
  intro n
  simp only [A370010, Nat.add_sub_cancel]

end A370010

/-! ## A370010.P6004689018864776677

`A000040(A020934(n+1))`
-/

namespace A370010.P6004689018864776677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020934 (n + 1)).toNat

end

end A370010.P6004689018864776677

namespace A370010

/-- `A000040(A020934(n+1))` -/
def P6004689018864776677.Spec : Prop :=
  ∀ n, P6004689018864776677.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P2245201006035823150

`A000040(A075699(A000040(n+1))+n+1)`
-/

namespace A370010.P2245201006035823150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075699 (A000040 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A370010.P2245201006035823150

namespace A370010

/-- `A000040(A075699(A000040(n+1))+n+1)` -/
def P2245201006035823150.Spec : Prop :=
  ∀ n, P2245201006035823150.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P7100217316066571725

`A000040(A298867(n+1)-(n+1))`
-/

namespace A370010.P7100217316066571725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298867 (n + 1) - (n + 1 : ℤ)).toNat

end

end A370010.P7100217316066571725

namespace A370010

/-- `A000040(A298867(n+1)-(n+1))` -/
def P7100217316066571725.Spec : Prop :=
  ∀ n, P7100217316066571725.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P18315076473474225657

`A060265(A100484(n+1))`
-/

namespace A370010.P18315076473474225657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A100484 (n + 1)).toNat

end

end A370010.P18315076473474225657

namespace A370010

/-- `A060265(A100484(n+1))` -/
def P18315076473474225657.Spec : Prop :=
  ∀ n, P18315076473474225657.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P10636362440799012674

`A060265(A001747(n+2))`
-/

namespace A370010.P10636362440799012674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A001747 (n + 2)).toNat

end

end A370010.P10636362440799012674

namespace A370010

/-- `A060265(A001747(n+2))` -/
def P10636362440799012674.Spec : Prop :=
  ∀ n, P10636362440799012674.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P14308471688060040813

`A060265(2*A000040(n+1))`
-/

namespace A370010.P14308471688060040813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (2 * A000040 (n + 1)).toNat

end

end A370010.P14308471688060040813

namespace A370010

/-- `A060265(2*A000040(n+1))` -/
def P14308471688060040813.Spec : Prop :=
  ∀ n, P14308471688060040813.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P6095666431665151357

`A060308(2*A000040(n+1))`
-/

namespace A370010.P6095666431665151357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (2 * A000040 (n + 1)).toNat

end

end A370010.P6095666431665151357

namespace A370010

/-- `A060308(2*A000040(n+1))` -/
def P6095666431665151357.Spec : Prop :=
  ∀ n, P6095666431665151357.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P2055075427858897104

`A060308(2*A008578(n+2))`
-/

namespace A370010.P2055075427858897104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (2 * A008578 (n + 2)).toNat

end

end A370010.P2055075427858897104

namespace A370010

/-- `A060308(2*A008578(n+2))` -/
def P2055075427858897104.Spec : Prop :=
  ∀ n, P2055075427858897104.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P12029506327078468260

`A060265(2*p?[A088948(n+1)])`
-/

namespace A370010.P12029506327078468260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A370010.P12029506327078468260

namespace A370010

/-- `A060265(2*p?[A088948(n+1)])` -/
def P12029506327078468260.Spec : Prop :=
  ∀ n, P12029506327078468260.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P2074657516678149930

`A060265(A000040(n+1)+A000040(n+1))`
-/

namespace A370010.P2074657516678149930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A370010.P2074657516678149930

namespace A370010

/-- `A060265(A000040(n+1)+A000040(n+1))` -/
def P2074657516678149930.Spec : Prop :=
  ∀ n, P2074657516678149930.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P9417063031791143094

`A060308(A000040(n+1)+A000040(n+1))`
-/

namespace A370010.P9417063031791143094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A370010.P9417063031791143094

namespace A370010

/-- `A060308(A000040(n+1)+A000040(n+1))` -/
def P9417063031791143094.Spec : Prop :=
  ∀ n, P9417063031791143094.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P17810960421889660575

`A298865(A298866(A298867(n+1)-(n+1)))`
-/

namespace A370010.P17810960421889660575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298865 (A298866 (A298867 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A370010.P17810960421889660575

namespace A370010

/-- `A298865(A298866(A298867(n+1)-(n+1)))` -/
def P17810960421889660575.Spec : Prop :=
  ∀ n, P17810960421889660575.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P4688442042225480215

`A136548(A001749(n+1))`
-/

namespace A370010.P4688442042225480215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A001749 (n + 1)).toNat

end

end A370010.P4688442042225480215

namespace A370010

/-- `A136548(A001749(n+1))` -/
def P4688442042225480215.Spec : Prop :=
  ∀ n, P4688442042225480215.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P6941796531007534483

`A064989(2*A370011(n+1))`
-/

namespace A370010.P6941796531007534483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A370011 (n + 1)).toNat

end

end A370010.P6941796531007534483

namespace A370010

/-- `A064989(2*A370011(n+1))` -/
def P6941796531007534483.Spec : Prop :=
  ∀ n, P6941796531007534483.a n = A370010 (n + 1)

end A370010

/-! ## A370010.P1832686766125096486

`A136548(2*A001747(n+2))`
-/

namespace A370010.P1832686766125096486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (2 * A001747 (n + 2)).toNat

end

end A370010.P1832686766125096486

namespace A370010

/-- `A136548(2*A001747(n+2))` -/
def P1832686766125096486.Spec : Prop :=
  ∀ n, P1832686766125096486.a n = A370010 (n + 1)

end A370010

/-!
# A370011: a(n) is the least prime greater than 4*prime(n).

The programs for A370011, there is no canonical definition to state claims against.
-/

/-! ## A370011.P15047643416916310433

`A111736(n+1)+A001749(n+1)`
-/

namespace A370011.P15047643416916310433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111736 (n + 1) + A001749 (n + 1)

end

end A370011.P15047643416916310433

/-! ## A370011.P4200324963102009828

`A045319(A020934(n+1))`
-/

namespace A370011.P4200324963102009828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A020934 (n + 1)).toNat

end

end A370011.P4200324963102009828

/-! ## A370011.P7385865637696415544

`A000040(A020934(n+1)+1)`
-/

namespace A370011.P7385865637696415544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020934 (n + 1) + 1).toNat

end

end A370011.P7385865637696415544

/-! ## A370011.P14802108300537757386

`A151800(A370010(n+1))`
-/

namespace A370011.P14802108300537757386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A370010 (n + 1)).toNat

end

end A370011.P14802108300537757386

/-! ## A370011.P8064552204807675706

`A151800(2*A100484(n+1))`
-/

namespace A370011.P8064552204807675706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A100484 (n + 1)).toNat

end

end A370011.P8064552204807675706

/-! ## A370011.P7747346926191082812

`A151800(2*A001747(n+2))`
-/

namespace A370011.P7747346926191082812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A001747 (n + 2)).toNat

end

end A370011.P7747346926191082812

/-! ## A370011.P5844988226621082866

`A151800(A001748(n+1)+A000040(n+1))`
-/

namespace A370011.P5844988226621082866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001748 (n + 1) + A000040 (n + 1)).toNat

end

end A370011.P5844988226621082866

/-! ## A370011.P17981410032414350877

`A151800(A100484(n+1)+A100484(n+1))`
-/

namespace A370011.P17981410032414350877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A100484 (n + 1) + A100484 (n + 1)).toNat

end

end A370011.P17981410032414350877

/-! ## A370011.P374652313932764078

`A118753(A000040(n+1))`
-/

namespace A370011.P374652313932764078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (A000040 (n + 1)).toNat

end

end A370011.P374652313932764078

/-! ## A370011.P16811903548825564431

`A118753(A008578(n+2))`
-/

namespace A370011.P16811903548825564431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (A008578 (n + 2)).toNat

end

end A370011.P16811903548825564431

/-! ## A370011.P17190233754658232962

`A118753(A182986(n+2))`
-/

namespace A370011.P17190233754658232962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (A182986 (n + 2)).toNat

end

end A370011.P17190233754658232962

/-! ## A370011.P15318110975052725560

`A000040(A298867(n+1)-n)`
-/

namespace A370011.P15318110975052725560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298867 (n + 1) - (n : ℤ)).toNat

end

end A370011.P15318110975052725560

/-! ## A370011.P14487689105174899459

`A060264(A100484(n+1))`
-/

namespace A370011.P14487689105174899459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A100484 (n + 1)).toNat

end

end A370011.P14487689105174899459

/-! ## A370011.P10660713048368882089

`A060264(A001747(n+2))`
-/

namespace A370011.P10660713048368882089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A001747 (n + 2)).toNat

end

end A370011.P10660713048368882089

/-! ## A370011.P15887423661986193846

`A060264(2*A000040(n+1))`
-/

namespace A370011.P15887423661986193846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (2 * A000040 (n + 1)).toNat

end

end A370011.P15887423661986193846

/-! ## A370011.P15351296874027334367

`A060264(A001749(n+1)/2)`
-/

namespace A370011.P15351296874027334367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A370011.P15351296874027334367

/-! ## A370011.P11047008770982381040

`A060264(2*A067747(2*n+1))`
-/

namespace A370011.P11047008770982381040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (2 * A067747 (2 * n + 1)).toNat

end

end A370011.P11047008770982381040

/-! ## A370011.P8429419748588922182

`A060264(A000040(n+1)+A000040(n+1))`
-/

namespace A370011.P8429419748588922182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A370011.P8429419748588922182

/-! ## A370011.P13628371260248571753

`A007918(A001749(n+1))`
-/

namespace A370011.P13628371260248571753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A001749 (n + 1)).toNat

end

end A370011.P13628371260248571753

/-! ## A370011.P8004438853287689825

`A007918(2*A001747(n+2))`
-/

namespace A370011.P8004438853287689825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A001747 (n + 2)).toNat

end

end A370011.P8004438853287689825

/-!
# A370012: Decimal expansion of Sum_{k>=0} (-1)^k / (k^2 + k)!.

The programs for A370012, there is no canonical definition to state claims against.
-/

/-! ## A370012.P4391617805621946610

`9-A371500(n)`
-/

namespace A370012.P4391617805621946610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A371500 n

end

end A370012.P4391617805621946610

/-!
# A370017: Expansion of g.f. exp( Sum_{n>=1} ( Sum_{k>=1} k^n*x^k )^n * (1-x)^n / n ).

The programs for A370017, there is no canonical definition to state claims against.
-/

/-! ## A370017.P9855902001674814423

`A364350(∑[floor((1/6-n)²)]+2)`
-/

namespace A370017.P9855902001674814423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 6 - (n : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A370017.P9855902001674814423

/-! ## A370017.P2605961913933826768

`A333222(a(n-1)+2^(n-1))` with `a(0)=1`
-/

namespace A370017.P2605961913933826768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333222 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A370017.P2605961913933826768

/-!
# A370019: Expansion of [ Sum_{n>=0} (-4)^n * (2*4^n + 1)/3 * x^(n*(n+1)/2) ]^(1/3).

The programs for A370019, there is no canonical definition to state claims against.
-/

/-! ## A370019.P15884290235883468055

`A319078(A002005(n)-A278247(n))`
-/

namespace A370019.P15884290235883468055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (A002005 n - A278247 n).toNat

end

end A370019.P15884290235883468055

/-!
# A370020: Table in which the g.f. of row n, R(n,x), satisfies Sum_{k=-oo..+oo} (-1)^k * (x^k + n*R(n,x))^k = 1 + (n+2)*Sum_{k>=1} (-1)^k * x^(k^2), for n >= 1, as read by antidiagonals.

The programs for A370020, there is no canonical definition to state claims against.
-/

/-! ## A370020.P1774525508438605328

`A304522(A132945(n))`
-/

namespace A370020.P1774525508438605328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304522 (A132945 n).toNat

end

end A370020.P1774525508438605328

/-! ## A370020.P843283135320271956

`A123740(A001006(n))+A071943(n)`
-/

namespace A370020.P843283135320271956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A001006 n).toNat + A071943 n

end

end A370020.P843283135320271956

/-! ## A370020.P16871820533043213534

`A070939(A011965(n+1)%A132945(n))`
-/

namespace A370020.P16871820533043213534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A011965 (n + 1)) (A132945 n)).toNat

end

end A370020.P16871820533043213534

/-!
# A370021: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + A(x))^n = 1 + 3*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370021, there is no canonical definition to state claims against.
-/

/-! ## A370021.P7327191996847787433

`A370020(∑[n+1])`
-/

namespace A370021.P7327191996847787433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370021.P7327191996847787433

/-! ## A370021.P3462172862019024524

`A370020(A000217(n+1))%(3*A000110(n))`
-/

namespace A370021.P3462172862019024524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370020 (A000217 (n + 1)).toNat) (3 * A000110 n)

end

end A370021.P3462172862019024524

/-! ## A370021.P13126871988929015296

`A370020(A000217(n+1))+A000122(3*n+2)`
-/

namespace A370021.P13126871988929015296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A000217 (n + 1)).toNat + A000122 (3 * n + 2)

end

end A370021.P13126871988929015296

/-! ## A370021.P6440796575879192589

`A003520(A063725(n))*A370020(A000217(n+1))`
-/

namespace A370021.P6440796575879192589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A063725 n).toNat * A370020 (A000217 (n + 1)).toNat

end

end A370021.P6440796575879192589

/-! ## A370021.P17678513423821215573

`A370020(A000217(n+1))+A325961(A107008(n+1))`
-/

namespace A370021.P17678513423821215573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A000217 (n + 1)).toNat + A325961 (A107008 (n + 1)).toNat

end

end A370021.P17678513423821215573

/-!
# A370022: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 2*A(x))^n = 1 + 4*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370022, there is no canonical definition to state claims against.
-/

/-! ## A370022.P12003259286013538230

`A370020(∑[n+2])`
-/

namespace A370022.P12003259286013538230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370022.P12003259286013538230

/-! ## A370022.P12708316898977480128

`or(floor(1/(n+1)), A370020(A000096(n+1)))`
-/

namespace A370022.P12708316898977480128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A370020 (A000096 (n + 1)).toNat)

end

end A370022.P12708316898977480128

/-! ## A370022.P92129598520836874

`A370020(A000096(n+1))%A034474(n)`
-/

namespace A370022.P92129598520836874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370020 (A000096 (n + 1)).toNat) (A034474 n)

end

end A370022.P92129598520836874

/-! ## A370022.P7924515003690641571

`record[A370020(n+1)/A370020(n+3)]`
-/

namespace A370022.P7924515003690641571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370020 (n + 1) : ℚ) / (A370020 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370022.P7924515003690641571

/-!
# A370023: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 3*A(x))^n = 1 + 5*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370023, there is no canonical definition to state claims against.
-/

/-! ## A370023.P11048659203263110430

`A370020(n+2+∑[n+2])`
-/

namespace A370023.P11048659203263110430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (n + 2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370023.P11048659203263110430

/-! ## A370023.P11312957237630257287

`record[A010054(n+3)*A370020(n+1)]`
-/

namespace A370023.P11312957237630257287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A370020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370023.P11312957237630257287

/-! ## A370023.P3783538639083143273

`record[A370020(n+1)/A064580(n+3)]`
-/

namespace A370023.P3783538639083143273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370020 (n + 1) : ℚ) / (A064580 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370023.P3783538639083143273

/-! ## A370023.P14567236909335717141

`record[A370020(n+1)/A370020(n+4)]`
-/

namespace A370023.P14567236909335717141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370020 (n + 1) : ℚ) / (A370020 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370023.P14567236909335717141

/-!
# A370024: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 4*A(x))^n = 1 + 6*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370024, there is no canonical definition to state claims against.
-/

/-! ## A370024.P973311674651810411

`A370020(A027379(n+2))`
-/

namespace A370024.P973311674651810411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A027379 (n + 2)).toNat

end

end A370024.P973311674651810411

/-! ## A370024.P3193439420799438817

`A370020(A055998(n+2))`
-/

namespace A370024.P3193439420799438817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A055998 (n + 2)).toNat

end

end A370024.P3193439420799438817

/-! ## A370024.P8549256385583181182

`record[gcd(A318557(n+4), A370020(n+2))]`
-/

namespace A370024.P8549256385583181182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318557 (n + 4)) (A370020 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370024.P8549256385583181182

/-! ## A370024.P2463558623685910995

`A370020(lt[A054098(n+4), A050447(n)])`
-/

namespace A370024.P2463558623685910995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370024.P2463558623685910995

/-! ## A370024.P14666343843937438861

`A370020(eq[A014306(n+1), A051380(n+2)])`
-/

namespace A370024.P14666343843937438861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370024.P14666343843937438861

/-!
# A370025: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 5*A(x))^n = 1 + 7*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370025, there is no canonical definition to state claims against.
-/

/-! ## A370025.P1876077023767990459

`A370020(A046691(n+3))`
-/

namespace A370025.P1876077023767990459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A046691 (n + 3)).toNat

end

end A370025.P1876077023767990459

/-! ## A370025.P10233873292340605397

`A370020(A134227(n+3)+2)`
-/

namespace A370025.P10233873292340605397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A134227 (n + 3) + 2).toNat

end

end A370025.P10233873292340605397

/-! ## A370025.P17918191577507976740

`A370020(A000124(n+5)-5)`
-/

namespace A370025.P17918191577507976740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A000124 (n + 5) - 5).toNat

end

end A370025.P17918191577507976740

/-! ## A370025.P3019732997307224501

`A370020(eq[4, A025581(n)]+1)`
-/

namespace A370025.P3019732997307224501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A370025.P3019732997307224501

/-!
# A370026: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 6*A(x))^n = 1 + 8*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370026, there is no canonical definition to state claims against.
-/

/-! ## A370026.P7140376084456369642

`A370020(A052905(n+3))`
-/

namespace A370026.P7140376084456369642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A052905 (n + 3)).toNat

end

end A370026.P7140376084456369642

/-! ## A370026.P9188504408288476285

`A370020(A055999(n+3)+1)`
-/

namespace A370026.P9188504408288476285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A055999 (n + 3) + 1).toNat

end

end A370026.P9188504408288476285

/-!
# A370027: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 7*A(x))^n = 1 + 9*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370027, there is no canonical definition to state claims against.
-/

/-! ## A370027.P15015128681824117276

`A259554(n+1)+A191987(A231619(n))`
-/

namespace A370027.P15015128681824117276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259554 (n + 1) + A191987 (A231619 n).toNat

end

end A370027.P15015128681824117276

/-!
# A370029: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 9*A(x))^n = 1 + 11*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370029, there is no canonical definition to state claims against.
-/

/-! ## A370029.P9441859645594384300

`A370020(A055999(n+6)-2)`
-/

namespace A370029.P9441859645594384300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A055999 (n + 6) - 2).toNat

end

end A370029.P9441859645594384300

/-! ## A370029.P2742046078189589286

`A370020(A000217(n+9)-8)`
-/

namespace A370029.P2742046078189589286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A000217 (n + 9) - 8).toNat

end

end A370029.P2742046078189589286

/-!
# A370031: G.f. A(x) satisfies Sum_{n=-oo..+oo} (x^n - A(x))^n = Sum_{n>=0} x^(n^2).

The programs for A370031, there is no canonical definition to state claims against.
-/

/-! ## A370031.P2259620289855815705

`A370030(∑[n+1])`
-/

namespace A370031.P2259620289855815705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370031.P2259620289855815705

/-! ## A370031.P649673052886908430

`A370030(A000217(n+1))+A025444(n)`
-/

namespace A370031.P649673052886908430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A000217 (n + 1)).toNat + A025444 n

end

end A370031.P649673052886908430

/-! ## A370031.P15763279543631952040

`A370030(A000217(n+1))%A237013(n+1)`
-/

namespace A370031.P15763279543631952040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370030 (A000217 (n + 1)).toNat) (A237013 (n + 1))

end

end A370031.P15763279543631952040

/-! ## A370031.P13564473291494356242

`or(A019590(n+1), A370030(A000217(n+1)))`
-/

namespace A370031.P13564473291494356242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A370030 (A000217 (n + 1)).toNat)

end

end A370031.P13564473291494356242

/-! ## A370031.P5382017595780874322

`A370030(A000217(n+1))+A019590(2*n+5)`
-/

namespace A370031.P5382017595780874322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A000217 (n + 1)).toNat + A019590 (2 * n + 5)

end

end A370031.P5382017595780874322

/-!
# A370033: G.f. A(x) satisfies Sum_{n=-oo..+oo} (x^n - 3*A(x))^n = 1 - Sum_{n>=1} x^(n^2).

The programs for A370033, there is no canonical definition to state claims against.
-/

/-! ## A370033.P14380128682834225240

`A370030(A034856(n+2))`
-/

namespace A370033.P14380128682834225240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A034856 (n + 2)).toNat

end

end A370033.P14380128682834225240

/-! ## A370033.P9979089601245807635

`A370030(A052905(n)+3)`
-/

namespace A370033.P9979089601245807635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A052905 n + 3).toNat

end

end A370033.P9979089601245807635

/-! ## A370033.P3418456565226733369

`A370030(eq[2, A140998(n)])`
-/

namespace A370033.P3418456565226733369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A370033.P3418456565226733369

/-! ## A370033.P13853840463338468943

`A370030(∑[A243427(n+1)])`
-/

namespace A370033.P13853840463338468943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A370033.P13853840463338468943

/-! ## A370033.P11532666319657570204

`A370030(A027379(n+1)+1)`
-/

namespace A370033.P11532666319657570204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A027379 (n + 1) + 1).toNat

end

end A370033.P11532666319657570204

/-!
# A370034: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 4*A(x))^n = 1 - 2*Sum_{n>=1} x^(n^2).

The programs for A370034, there is no canonical definition to state claims against.
-/

/-! ## A370034.P8208947886734176484

`A370030(A027379(n+2))`
-/

namespace A370034.P8208947886734176484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A027379 (n + 2)).toNat

end

end A370034.P8208947886734176484

/-! ## A370034.P3526659156872724592

`A370030(A167499(n+3)-8)`
-/

namespace A370034.P3526659156872724592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A167499 (n + 3) - 8).toNat

end

end A370034.P3526659156872724592

/-! ## A370034.P8417375471079390711

`A370030(eq[6, A061260(n+1)])`
-/

namespace A370034.P8417375471079390711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A370034.P8417375471079390711

/-! ## A370034.P4733984468844974256

`A370030(A000217(n+3)+n+1)`
-/

namespace A370034.P4733984468844974256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A370034.P4733984468844974256

/-! ## A370034.P10624754253480272420

`A370030(A110654(2*n+1)+A008795(2*(n+2)))`
-/

namespace A370034.P10624754253480272420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A110654 (2 * n + 1) + A008795 (2 * (n + 2))).toNat

end

end A370034.P10624754253480272420

/-!
# A370035: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 5*A(x))^n = 1 - 3*Sum_{n>=1} x^(n^2).

The programs for A370035, there is no canonical definition to state claims against.
-/

/-! ## A370035.P11454846626830396377

`A370030(A046691(n+3))`
-/

namespace A370035.P11454846626830396377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A046691 (n + 3)).toNat

end

end A370035.P11454846626830396377

/-! ## A370035.P4837889165094455649

`A370030(A034856(n+4)-2)`
-/

namespace A370035.P4837889165094455649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A034856 (n + 4) - 2).toNat

end

end A370035.P4837889165094455649

/-! ## A370035.P16170358299991688988

`A370030(A000217(n+4)+n+1)`
-/

namespace A370035.P16170358299991688988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A370035.P16170358299991688988

/-!
# A370036: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 6*A(x))^n = 1 - 4*Sum_{n>=1} x^(n^2).

The programs for A370036, there is no canonical definition to state claims against.
-/

/-! ## A370036.P4927572384568434645

`A370030(eq[6, A004736(n+1)]+1)`
-/

namespace A370036.P4927572384568434645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A370036.P4927572384568434645

/-!
# A370037: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 7*A(x))^n = 1 - 5*Sum_{n>=1} x^(n^2).

The programs for A370037, there is no canonical definition to state claims against.
-/

/-! ## A370037.P10806186469964249438

`A370030(A000124(n+7)-7)`
-/

namespace A370037.P10806186469964249438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A000124 (n + 7) - 7).toNat

end

end A370037.P10806186469964249438

/-!
# A370038: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 8*A(x))^n = 1 - 6*Sum_{n>=1} x^(n^2).

The programs for A370038, there is no canonical definition to state claims against.
-/

/-! ## A370038.P12465908142434912006

`A370030(A056126(n)+29)`
-/

namespace A370038.P12465908142434912006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (A056126 n + 29).toNat

end

end A370038.P12465908142434912006

/-!
# A370042: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (-1)^n * (x^n + 10*A(x))^n = 1 + 12*Sum_{n>=1} (-1)^n * x^(n^2).

The programs for A370042, there is no canonical definition to state claims against.
-/

/-! ## A370042.P17111292424202208711

`A370020(A056000(n+6)+1)`
-/

namespace A370042.P17111292424202208711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370020 (A056000 (n + 6) + 1).toNat

end

end A370042.P17111292424202208711

/-!
# A370043: Expansion of g.f. A(x) satisfying Sum_{n=-oo..+oo} (x^n - 10*A(x))^n = 1 - 8*Sum_{n>=1} x^(n^2).

The programs for A370043, there is no canonical definition to state claims against.
-/

/-! ## A370043.P14600214161507744794

`A370030(eq[A057728(n+1), A171443(n+1)])`
-/

namespace A370043.P14600214161507744794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370043.P14600214161507744794

/-!
# A370044: Expansion of [ Sum_{n>=0} (-4)^n * (2*4^n + 1)/3 * x^(n*(n+1)/2) ]^(-1/3).

The programs for A370044, there is no canonical definition to state claims against.
-/

/-! ## A370044.P377152394707588692

`A187448(A009845(n))`
-/

namespace A370044.P377152394707588692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187448 (A009845 n).toNat

end

end A370044.P377152394707588692

/-!
# A370046: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number whose binary value is a substring of the binary value of the sum of all previous terms.

The programs for A370046, there is no canonical definition to state claims against.
-/

/-! ## A370046.P16337590722351417713

`A317788(A181440(n+1))`
-/

namespace A370046.P16337590722351417713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317788 (A181440 (n + 1)).toNat

end

end A370046.P16337590722351417713

/-! ## A370046.P14511146025744153704

`A317788(A154955(n+1)+n+1)`
-/

namespace A370046.P14511146025744153704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317788 (A154955 (n + 1) + (n + 1 : ℤ)).toNat

end

end A370046.P14511146025744153704

/-! ## A370046.P14426226604858615029

`xor(A034188(A089440(n+1)), A317788(n+1))`
-/

namespace A370046.P14426226604858615029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034188 (A089440 (n + 1)).toNat) (A317788 (n + 1))

end

end A370046.P14426226604858615029

/-! ## A370046.P10714136874643085108

`xor(A034188(n²+5), A317788(n+1))`
-/

namespace A370046.P10714136874643085108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034188 (n ^ 2 + 5)) (A317788 (n + 1))

end

end A370046.P10714136874643085108

/-! ## A370046.P1166378373032883246

`A317788(n+1)-A121373(A022268(n))`
-/

namespace A370046.P1166378373032883246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317788 (n + 1) - A121373 (A022268 n).toNat

end

end A370046.P1166378373032883246

/-!
# A370048: Number of binary strings of length n in which the number of substrings 00 is one more than that of substrings 01.

The programs for A370048, there is no canonical definition to state claims against.
-/

/-! ## A370048.P15869414115841614187

`2*A371358(n+1)-A371358(n+2)+A163493(n+1)-A163493(n)`
-/

namespace A370048.P15869414115841614187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371358 (n + 1) - A371358 (n + 2) + A163493 (n + 1) - A163493 n

end

end A370048.P15869414115841614187

/-! ## A370048.P11387703255340723431

`A391450(n+1)-A345908(n+1)`
-/

namespace A370048.P11387703255340723431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391450 (n + 1) - A345908 (n + 1)

end

end A370048.P11387703255340723431

/-! ## A370048.P8677151558169015847

`A391450(n+1)+A163493(n)-A163493(n+1)`
-/

namespace A370048.P8677151558169015847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391450 (n + 1) + (A163493 n - A163493 (n + 1))

end

end A370048.P8677151558169015847

/-! ## A370048.P9447823368083801997

`A159909(A213044(n+1))`
-/

namespace A370048.P9447823368083801997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159909 (A213044 (n + 1)).toNat

end

end A370048.P9447823368083801997

/-! ## A370048.P7989210815879018347

`A353847(A325786(n+1)-1)`
-/

namespace A370048.P7989210815879018347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A325786 (n + 1) - 1).toNat

end

end A370048.P7989210815879018347

/-!
# A370049: Square array A(n, k), n, k >= 0, read by antidiagonals; for any n and k >= 0 with respective binary expansions Sum_{i > 0} b_i*2^(i-1) and Sum_{i > 0} c_i*2^(i-1), the binary expansion of A(n, k) is Sum_{i > 0} d_i*2^(i-1) with d_i = (Sum_{k divides i} b_k*c_{i/k}) mod 2 for any i > 0.

The programs for A370049, there is no canonical definition to state claims against.
-/

/-! ## A370049.P2336241840281513819

`A219924(A360672(3*(n+1)))*A329331(n)`
-/

namespace A370049.P2336241840281513819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A360672 (3 * (n + 1))).toNat * A329331 n

end

end A370049.P2336241840281513819

/-! ## A370049.P17703797675481339358

`A329325(A329374(2*n+3))*A329331(n)`
-/

namespace A370049.P17703797675481339358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329325 (A329374 (2 * n + 3)).toNat * A329331 n

end

end A370049.P17703797675481339358

/-!
# A370050: Square array read by ascending antidiagonals: T(n,k) is the size of the group Z_p*/(Z_p*)^k, where p = prime(n), and Z_p is the ring of p-adic integers.

The programs for A370050, there is no canonical definition to state claims against.
-/

/-! ## A370050.P10707654834243866783

`A370067(n+1)/A002260(n+1)`
-/

namespace A370050.P10707654834243866783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370067 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A370050.P10707654834243866783

/-! ## A370050.P6668189404258738878

`gcd(A096888(A126882(n+3)), A128077(n+1))`
-/

namespace A370050.P6668189404258738878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096888 (A126882 (n + 3)).toNat) (A128077 (n + 1))

end

end A370050.P6668189404258738878

/-! ## A370050.P642747321785736702

`gcd(A201818(n+1), A363053(A011782(n+1)))`
-/

namespace A370050.P642747321785736702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201818 (n + 1)) (A363053 (A011782 (n + 1)).toNat)

end

end A370050.P642747321785736702

/-! ## A370050.P13237274692169411839

`gcd(A128077(n+1), A347445(A265057(n)))`
-/

namespace A370050.P13237274692169411839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128077 (n + 1)) (A347445 (A265057 n).toNat)

end

end A370050.P13237274692169411839

/-! ## A370050.P11594634995380165784

`A228351(A245636(2*(n+2))+A027306(n+2))`
-/

namespace A370050.P11594634995380165784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A245636 (2 * (n + 2)) + A027306 (n + 2)).toNat

end

end A370050.P11594634995380165784

/-!
# A370051: Expansion of (1-5*x+6*x^2-x^3)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A370051, the canonical program `A370051.P16052246489037727631` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370051 has offset 0).

The definition of A370051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370051.P16052246489037727631

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=48, a(4)=165`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A370051

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P16052246489037727631.Spec : Prop :=
  ∀ n, P16052246489037727631.a n = A370051 n

theorem P16052246489037727631.correct : P16052246489037727631.Spec := by
  intro n
  simp only [A370051]

end A370051

/-! ## A370051.P4099414376115721331

`A231185(2*n)`
-/

namespace A370051.P4099414376115721331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (2 * n)

end

end A370051.P4099414376115721331

namespace A370051

/-- `A231185(2*n)` -/
def P4099414376115721331.Spec : Prop :=
  ∀ n, P4099414376115721331.a n = A370051 n

end A370051

/-! ## A370051.P2188473583511548318

`record[A231185(n)/A001511(n+1)]`
-/

namespace A370051.P2188473583511548318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231185 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370051.P2188473583511548318

namespace A370051

/-- `record[A231185(n)/A001511(n+1)]` -/
def P2188473583511548318.Spec : Prop :=
  ∀ n, P2188473583511548318.a n = (A370051 n : ℚ)

end A370051

/-! ## A370051.P9816604408283308665

`A370074(n+1)-A211216(n+2)`
-/

namespace A370051.P9816604408283308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370074 (n + 1) - A211216 (n + 2)

end

end A370051.P9816604408283308665

namespace A370051

/-- `A370074(n+1)-A211216(n+2)` -/
def P9816604408283308665.Spec : Prop :=
  ∀ n, P9816604408283308665.a n = A370051 n

end A370051

/-! ## A370051.P12128369877555305859

`A231185(A004277(n))+A000007(n)`
-/

namespace A370051.P12128369877555305859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (A004277 n).toNat + A000007 n

end

end A370051.P12128369877555305859

namespace A370051

/-- `A231185(A004277(n))+A000007(n)` -/
def P12128369877555305859.Spec : Prop :=
  ∀ n, P12128369877555305859.a n = A370051 n

end A370051

/-!
# A370052: Numbers m such that m * repunit of length k is palindromic for all large enough k.

The programs for A370052, there is no canonical definition to state claims against.
-/

/-! ## A370052.P16872144919335946699

`A382337(n+1)/A084066(A208445(n+1))`
-/

namespace A370052.P16872144919335946699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382337 (n + 1) : ℚ) / (A084066 (A208445 (n + 1)).toNat : ℚ)

end

end A370052.P16872144919335946699

/-! ## A370052.P7984992486049395056

`A382337(n+1)/A084066(A276969(3*n+1))`
-/

namespace A370052.P7984992486049395056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382337 (n + 1) : ℚ) / (A084066 (A276969 (3 * n + 1)).toNat : ℚ)

end

end A370052.P7984992486049395056

/-!
# A370054: a(n) = 2*(3*n+1)!/(2*n+2)!.

The programs for A370054, the canonical program `A370054.P3727325619776216794` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370054 has offset 0).

The definition of A370054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370054.P1153014076237508315

`A000142(n)*A006013(n)`
-/

namespace A370054.P1153014076237508315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006013 n

end

end A370054.P1153014076237508315

namespace A370054

/-- `A000142(n)*A006013(n)` -/
def P1153014076237508315.Spec : Prop :=
  ∀ n, P1153014076237508315.a n = A370054 n

end A370054

/-! ## A370054.P3727325619776216794

`2*(3*n+1)!/(2*n+2)!`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A370054

/-- `2*(3*n+1)!/(2*n+2)!` -/
def P3727325619776216794.Spec : Prop :=
  ∀ n, P3727325619776216794.a n = (A370054 n : ℚ)

end A370054

/-! ## A370054.P7386661636688296877

`n!*A091665(∑[n]+1)`
-/

namespace A370054.P7386661636688296877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A091665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A370054.P7386661636688296877

namespace A370054

/-- `n!*A091665(∑[n]+1)` -/
def P7386661636688296877.Spec : Prop :=
  ∀ n, P7386661636688296877.a n = A370054 n

end A370054

/-! ## A370054.P4174881972343449513

`n!*A047749(2*n+1)`
-/

namespace A370054.P4174881972343449513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A047749 (2 * n + 1)

end

end A370054.P4174881972343449513

namespace A370054

/-- `n!*A047749(2*n+1)` -/
def P4174881972343449513.Spec : Prop :=
  ∀ n, P4174881972343449513.a n = A370054 n

end A370054

/-! ## A370054.P14771285952884398833

`n!*A047764(12*n+8)`
-/

namespace A370054.P14771285952884398833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A047764 (12 * n + 8)

end

end A370054.P14771285952884398833

namespace A370054

/-- `n!*A047764(12*n+8)` -/
def P14771285952884398833.Spec : Prop :=
  ∀ n, P14771285952884398833.a n = A370054 n

end A370054

/-!
# A370055: a(n) = 3*(3*n+2)!/(2*n+3)!.

The programs for A370055, the canonical program `A370055.P10063796133977021406` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370055 has offset 0).

The definition of A370055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370055.P10063796133977021406

`A000142(n)*A001764(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370055

/-- `A000142(n)*A001764(n+1)` -/
def P10063796133977021406.Spec : Prop :=
  ∀ n, P10063796133977021406.a n = A370055 n

theorem P10063796133977021406.correct : P10063796133977021406.Spec := by
  intro n
  simp only [A370055]

end A370055

/-! ## A370055.P10174726325974098538

`3*(3*n+2)!/(2*n+3)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370055.P10174726325974098538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.factorial (3 * n + 2) : ℚ) / (Nat.factorial (2 * n + 3) : ℚ)

end

end A370055.P10174726325974098538

namespace A370055

/-- `3*(3*n+2)!/(2*n+3)!` -/
def P10174726325974098538.Spec : Prop :=
  ∀ n, P10174726325974098538.a n = (A370055 n : ℚ)

end A370055

/-! ## A370055.P13900204814456743153

`n!*A047749(2*(n+1))`
-/

namespace A370055.P13900204814456743153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A047749 (2 * (n + 1))

end

end A370055.P13900204814456743153

namespace A370055

/-- `n!*A047749(2*(n+1))` -/
def P13900204814456743153.Spec : Prop :=
  ∀ n, P13900204814456743153.a n = A370055 n

end A370055

/-! ## A370055.P11554637191454078784

`Δ[A104859(n)]*A000142(n)`
-/

namespace A370055.P11554637191454078784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A370055.P11554637191454078784

namespace A370055

/-- `Δ[A104859(n)]*A000142(n)` -/
def P11554637191454078784.Spec : Prop :=
  ∀ n, P11554637191454078784.a n = A370055 n

end A370055

/-! ## A370055.P9541601259916365823

`record[A110616(n)]*A000142(n)`
-/

namespace A370055.P9541601259916365823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000142 n

end

end A370055.P9541601259916365823

namespace A370055

/-- `record[A110616(n)]*A000142(n)` -/
def P9541601259916365823.Spec : Prop :=
  ∀ n, P9541601259916365823.a n = A370055 n

end A370055

/-!
# A370056: a(n) = 2*(4*n+1)!/(3*n+2)!.

The programs for A370056, the canonical program `A370056.P5858772419301510931` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370056 has offset 0).

The definition of A370056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370056.P7659907036642739045

`A000142(n)*A069271(n)`
-/

namespace A370056.P7659907036642739045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A069271 n

end

end A370056.P7659907036642739045

namespace A370056

/-- `A000142(n)*A069271(n)` -/
def P7659907036642739045.Spec : Prop :=
  ∀ n, P7659907036642739045.a n = A370056 n

end A370056

/-! ## A370056.P5858772419301510931

`2*(4*n+1)!/(3*n+2)!`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A370056

/-- `2*(4*n+1)!/(3*n+2)!` -/
def P5858772419301510931.Spec : Prop :=
  ∀ n, P5858772419301510931.a n = (A370056 n : ℚ)

end A370056

/-! ## A370056.P2550833315079728609

`A026005(n)/(n+1)²*∏[n+1]`
-/

namespace A370056.P2550833315079728609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026005 n : ℚ) / ((n + 1) ^ 2 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A370056.P2550833315079728609

namespace A370056

/-- `A026005(n)/(n+1)²*∏[n+1]` -/
def P2550833315079728609.Spec : Prop :=
  ∀ n, P2550833315079728609.a n = (A370056 n : ℚ)

end A370056

/-! ## A370056.P1761219795237337569

`A000142(n+1)*A000260(n)`
-/

namespace A370056.P1761219795237337569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A000260 n

end

end A370056.P1761219795237337569

namespace A370056

/-- `A000142(n+1)*A000260(n)` -/
def P1761219795237337569.Spec : Prop :=
  ∀ n, P1761219795237337569.a n = A370056 n

end A370056

/-! ## A370056.P1504731898522972516

`A069271(n)*A112486(A000217(n))`
-/

namespace A370056.P1504731898522972516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 n * A112486 (A000217 n).toNat

end

end A370056.P1504731898522972516

namespace A370056

/-- `A069271(n)*A112486(A000217(n))` -/
def P1504731898522972516.Spec : Prop :=
  ∀ n, P1504731898522972516.a n = A370056 n

end A370056

/-!
# A370057: a(n) = 3*(4*n+2)!/(3*n+3)!.

The programs for A370057, the canonical program `A370057.P17758719647371551335` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370057 has offset 0).

The definition of A370057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370057.P17758719647371551335

`A000142(n)*A006632(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A370057

/-- `A000142(n)*A006632(n+1)` -/
def P17758719647371551335.Spec : Prop :=
  ∀ n, P17758719647371551335.a n = A370057 n

theorem P17758719647371551335.correct : P17758719647371551335.Spec := by
  intro n
  simp only [A370057]

end A370057

/-! ## A370057.P7978775279944813102

`n!*A369082(2*n+1)`
-/

namespace A370057.P7978775279944813102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A369082 (2 * n + 1)

end

end A370057.P7978775279944813102

namespace A370057

/-- `n!*A369082(2*n+1)` -/
def P7978775279944813102.Spec : Prop :=
  ∀ n, P7978775279944813102.a n = A370057 n

end A370057

/-! ## A370057.P1067205081420918135

`(A033312(n)+1)*A006632(n+1)`
-/

namespace A370057.P1067205081420918135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033312 n + 1) * A006632 (n + 1)

end

end A370057.P1067205081420918135

namespace A370057

/-- `(A033312(n)+1)*A006632(n+1)` -/
def P1067205081420918135.Spec : Prop :=
  ∀ n, P1067205081420918135.a n = A370057 n

end A370057

/-! ## A370057.P9705638507076265434

`A000142(n)*A124753(3*n+2)`
-/

namespace A370057.P9705638507076265434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A124753 (3 * n + 2)

end

end A370057.P9705638507076265434

namespace A370057

/-- `A000142(n)*A124753(3*n+2)` -/
def P9705638507076265434.Spec : Prop :=
  ∀ n, P9705638507076265434.a n = A370057 n

end A370057

/-! ## A370057.P15816371758469356359

`A002674(2*n+1)/A065961(n+1)`
-/

namespace A370057.P15816371758469356359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002674 (2 * n + 1) : ℚ) / (A065961 (n + 1) : ℚ)

end

end A370057.P15816371758469356359

namespace A370057

/-- `A002674(2*n+1)/A065961(n+1)` -/
def P15816371758469356359.Spec : Prop :=
  ∀ n, P15816371758469356359.a n = (A370057 n : ℚ)

end A370057

/-!
# A370058: a(n) = 4*(4*n+3)!/(3*n+4)!.

The programs for A370058, the canonical program `A370058.P6107118682366647322` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370058 has offset 0).

The definition of A370058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002293, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370058.P6107118682366647322

`A000142(n)*A002293(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A370058

/-- `A000142(n)*A002293(n+1)` -/
def P6107118682366647322.Spec : Prop :=
  ∀ n, P6107118682366647322.a n = A370058 n

theorem P6107118682366647322.correct : P6107118682366647322.Spec := by
  intro n
  simp only [A370058]

end A370058

/-! ## A370058.P13213021024841797598

`A365340(n+1)/(n+1)`
-/

namespace A370058.P13213021024841797598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365340 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370058.P13213021024841797598

namespace A370058

/-- `A365340(n+1)/(n+1)` -/
def P13213021024841797598.Spec : Prop :=
  ∀ n, P13213021024841797598.a n = (A370058 n : ℚ)

end A370058

/-! ## A370058.P16604834836242187062

`n!*A124753(3*(n+1))`
-/

namespace A370058.P16604834836242187062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A124753 (3 * (n + 1))

end

end A370058.P16604834836242187062

namespace A370058

/-- `n!*A124753(3*(n+1))` -/
def P16604834836242187062.Spec : Prop :=
  ∀ n, P16604834836242187062.a n = A370058 n

end A370058

/-! ## A370058.P8245625870274542068

`Δ[A345367(n)]*A000142(n)`
-/

namespace A370058.P8245625870274542068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A370058.P8245625870274542068

namespace A370058

/-- `Δ[A345367(n)]*A000142(n)` -/
def P8245625870274542068.Spec : Prop :=
  ∀ n, P8245625870274542068.a n = A370058 n

end A370058

/-! ## A370058.P421398217448841087

`A002293(n+1)*A214078(n²)`
-/

namespace A370058.P421398217448841087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 1) * A214078 (n ^ 2)

end

end A370058.P421398217448841087

namespace A370058

/-- `A002293(n+1)*A214078(n²)` -/
def P421398217448841087.Spec : Prop :=
  ∀ n, P421398217448841087.a n = A370058 n

end A370058

/-!
# A370059: Number of traceless symmetric binary matrices with 2n 1's and all row sums >= 2.

The programs for A370059, there is no canonical definition to state claims against.
-/

/-! ## A370059.P4933270972400376877

`A165006(A193215(n+1))`
-/

namespace A370059.P4933270972400376877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A193215 (n + 1)).toNat

end

end A370059.P4933270972400376877

/-! ## A370059.P5246264677414555331

`A008676(A089677(n)+3)`
-/

namespace A370059.P5246264677414555331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A089677 n + 3).toNat

end

end A370059.P5246264677414555331

/-! ## A370059.P1754724703437942444

`∑{d}[A172471(A006821(n)), #]`
-/

namespace A370059.P1754724703437942444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A006821 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A370059.P1754724703437942444

/-!
# A370060: Array read by antidiagonals: T(n,k) is the number of achiral dissections of a polygon into n k-gons by nonintersecting diagonals rooted at a cell, n >= 1, k >= 3.

The programs for A370060, there is no canonical definition to state claims against.
-/

/-! ## A370060.P3061267937920290629

`2*A295259(n+1)-A295222(n+1)`
-/

namespace A370060.P3061267937920290629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295259 (n + 1) - A295222 (n + 1)

end

end A370060.P3061267937920290629

/-!
# A370061: Number of achiral dissections of a polygon into n hexagons by nonintersecting diagonals rooted at a cell.

The programs for A370061, there is no canonical definition to state claims against.
-/

/-! ## A370061.P2902182432168395369

`A370060(A055998(n+2))`
-/

namespace A370061.P2902182432168395369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370060 (A055998 (n + 2)).toNat

end

end A370061.P2902182432168395369

/-! ## A370061.P14573136289948463688

`A370060(A000217(n+4)-3)`
-/

namespace A370061.P14573136289948463688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370060 (A000217 (n + 4) - 3).toNat

end

end A370061.P14573136289948463688

/-! ## A370061.P9118816856782623693

`A370060(A000124(n+3)+n)`
-/

namespace A370061.P9118816856782623693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370060 (A000124 (n + 3) + (n : ℤ)).toNat

end

end A370061.P9118816856782623693

/-! ## A370061.P12268938158879306844

`A370060(lt[A010054(n), A010054(n+3)])`
-/

namespace A370061.P12268938158879306844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370061.P12268938158879306844

/-!
# A370062: Array read by antidiagonals: T(n,k) is the number of achiral dissections of a polygon into n k-gons by nonintersecting diagonals, n >= 1, k >= 3.

The programs for A370062, there is no canonical definition to state claims against.
-/

/-! ## A370062.P13211381915825860598

`2*A295260(n+1)-A295224(n+1)`
-/

namespace A370062.P13211381915825860598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295260 (n + 1) - A295224 (n + 1)

end

end A370062.P13211381915825860598

/-!
# A370063: Triangle read by rows: T(n,k) is the number of unlabeled loopless multigraphs without endpoints with n edges covering k vertices, 0 <= k <= n.

The programs for A370063, there is no canonical definition to state claims against.
-/

/-! ## A370063.P17652499960557596657

`A004218(A156953(n)+A000007(n))`
-/

namespace A370063.P17652499960557596657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A156953 n + A000007 n).toNat

end

end A370063.P17652499960557596657

/-! ## A370063.P6838285516172816361

`A087436(A249027(n+1)+A000038(n))`
-/

namespace A370063.P6838285516172816361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A249027 (n + 1) + A000038 n).toNat

end

end A370063.P6838285516172816361

/-! ## A370063.P15111949732831565349

`A325169(A266632(n+1)+A191646(n))`
-/

namespace A370063.P15111949732831565349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A266632 (n + 1) + A191646 n).toNat

end

end A370063.P15111949732831565349

/-! ## A370063.P17498283881621869406

`A215604(A265882(n+1))`
-/

namespace A370063.P17498283881621869406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215604 (A265882 (n + 1)).toNat

end

end A370063.P17498283881621869406

/-! ## A370063.P8370031031686472378

`A358360(or(18, A212163(n+1)))`
-/

namespace A370063.P8370031031686472378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358360 (Int.lor 18 (A212163 (n + 1))).toNat

end

end A370063.P8370031031686472378

/-!
# A370066: Number of simple graphs on n labeled nodes with 0 cutpoints (articulation vertices).

The programs for A370066, there is no canonical definition to state claims against.
-/

/-! ## A370066.P12792471635363860646

`A370065(∑[n])`
-/

namespace A370066.P12792471635363860646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370066.P12792471635363860646

/-! ## A370066.P14959181202412413913

`A370065(A000217(n))+A010051(2*(n+2))`
-/

namespace A370066.P14959181202412413913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370065 (A000217 n).toNat + A010051 (2 * (n + 2))

end

end A370066.P14959181202412413913

/-!
# A370067: Square array read by ascending antidiagonals: T(n,k) is the size of the group Q_p*/(Q_p*)^k, where p = prime(n), and Q_p is the field of p-adic numbers.

The programs for A370067, there is no canonical definition to state claims against.
-/

/-! ## A370067.P8144480951207662309

`A002260(n+1)*A370050(n+1)`
-/

namespace A370067.P8144480951207662309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A370050 (n + 1)

end

end A370067.P8144480951207662309

/-! ## A370067.P12840807199229064321

`A194968(A194969(n+1))*A370050(n+1)`
-/

namespace A370067.P12840807199229064321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (A194969 (n + 1)).toNat * A370050 (n + 1)

end

end A370067.P12840807199229064321

/-! ## A370067.P5578112556438023742

`A276949(A276953(n+1))*A370050(n+1)`
-/

namespace A370067.P5578112556438023742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A276953 (n + 1)).toNat * A370050 (n + 1)

end

end A370067.P5578112556438023742

/-!
# A370069: Lexicographically earliest sequence of distinct integers such that the concatenated binary expansions of the terms is A010051.

The programs for A370069, there is no canonical definition to state claims against.
-/

/-! ## A370069.P8988900005858049996

`A384395(A297980(n+1))`
-/

namespace A370069.P8988900005858049996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384395 (A297980 (n + 1)).toNat

end

end A370069.P8988900005858049996

/-!
# A370070: a(n) = Sum_{i=0..n-1} binomial(2^i+2^(n-i-1)-2,2^i-1).

The programs for A370070, there is no canonical definition to state claims against.
-/

/-! ## A370070.P2873086782098377349

`A157019(round(2^(n-1)))*A267084(n+1)`
-/

namespace A370070.P2873086782098377349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157019 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat * A267084 (n + 1)

end

end A370070.P2873086782098377349

/-! ## A370070.P17024822911637285455

`A167792(A335433(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A370070.P17024822911637285455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A167792 (A335433 (a (n - 1)).toNat).toNat

end

end A370070.P17024822911637285455

/-! ## A370070.P2010284364558750370

`A033103(A264656(2*n+3))+n`
-/

namespace A370070.P2010284364558750370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (A264656 (2 * n + 3)).toNat + (n : ℤ)

end

end A370070.P2010284364558750370

/-!
# A370071: Fibonacci numbers such that some permutation of their digits is a perfect power.

The programs for A370071, there is no canonical definition to state claims against.
-/

/-! ## A370071.P4125709738073789060

`A000045(A277335(n)^A103221(n))`
-/

namespace A370071.P4125709738073789060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A277335 n : ℚ) ^ (A103221 n : ℤ))).toNat

end

end A370071.P4125709738073789060

/-! ## A370071.P2174847763080207023

`A000045(A277335(n)^A167865(n))`
-/

namespace A370071.P2174847763080207023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A277335 n : ℚ) ^ (A167865 n : ℤ))).toNat

end

end A370071.P2174847763080207023

/-!
# A370072: Triangle read by rows: T(n,k) is the number of unlabeled n-vertex graphs that are reachable in k (but no fewer) steps from the empty n-vertex graph, where a step consists of choosing a subset S of the vertices and replacing the subgraph induced by S by its complement, 0 <= k <= n-1.

The programs for A370072, there is no canonical definition to state claims against.
-/

/-! ## A370072.P6435643242259934895

`A174231(A026714(n+1)*A187783(n))`
-/

namespace A370072.P6435643242259934895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A026714 (n + 1) * A187783 n).toNat

end

end A370072.P6435643242259934895

/-!
# A370073: Triangle read by rows: T(n,k) is the number of unlabeled connected n-vertex graphs that are reachable in k (but no fewer) steps from the empty n-vertex graph, where a step consists of choosing a subset S of the vertices and replacing the subgraph induced by S by its complement, 0 <= k <= n-1.

The programs for A370073, there is no canonical definition to state claims against.
-/

/-! ## A370073.P2433832009034434157

`A249618(A058710(n))`
-/

namespace A370073.P2433832009034434157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249618 (A058710 n).toNat

end

end A370073.P2433832009034434157

/-! ## A370073.P10122868786525333501

`A034968(A122542(n)^A275043(n))`
-/

namespace A370073.P10122868786525333501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.roundAway ((A122542 n : ℚ) ^ (A275043 n : ℤ))).toNat

end

end A370073.P10122868786525333501

/-! ## A370073.P17759370474491861955

`∑{d}[A123125(n)-A321728(A048993(n)), #]`
-/

namespace A370073.P17759370474491861955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n - A321728 (A048993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A370073.P17759370474491861955

/-! ## A370073.P10696479904295963713

`∑{d}[A353698(A122542(n)²²), A325099(#)]`
-/

namespace A370073.P10696479904295963713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353698 ((A122542 n ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A325099 d

end

end A370073.P10696479904295963713

/-! ## A370073.P7367399243279566238

`A085164(A244372(n+1)^A000924(n+1))`
-/

namespace A370073.P7367399243279566238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085164 (SequenceMachineLib.roundAway ((A244372 (n + 1) : ℚ) ^ (A000924 (n + 1) : ℤ))).toNat

end

end A370073.P7367399243279566238

/-!
# A370074: Expansion of (1 - 2*x) * (1 - 4*x + 2*x^2) / (1 - 9*x + 28*x^2 - 35*x^3 + 15*x^4 - x^5).

The programs for A370074, the canonical program `A370074.P9452076184245541960` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370074 has offset 0).

The definition of A370074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370074.P9452076184245541960

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=28, a(4)=90`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A370074

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P9452076184245541960.Spec : Prop :=
  ∀ n, P9452076184245541960.a n = A370074 n

theorem P9452076184245541960.correct : P9452076184245541960.Spec := by
  intro n
  simp only [A370074]

end A370074

/-! ## A370074.P14052851092096845677

`Δ[A211216(n+1)]`
-/

namespace A370074.P14052851092096845677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370074.P14052851092096845677

namespace A370074

/-- `Δ[A211216(n+1)]` -/
def P14052851092096845677.Spec : Prop :=
  ∀ n, P14052851092096845677.a n = A370074 n

end A370074

/-! ## A370074.P2085541212648447249

`record[Δ[A211216(A000267(n))]]`
-/

namespace A370074.P2085541212648447249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (A000267 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370074.P2085541212648447249

namespace A370074

/-- `record[Δ[A211216(A000267(n))]]` -/
def P2085541212648447249.Spec : Prop :=
  ∀ n, P2085541212648447249.a n = A370074 n

end A370074

/-! ## A370074.P1828142105850783394

`Δ[record[A211216(A027656(n))]]`
-/

namespace A370074.P1828142105850783394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (A027656 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370074.P1828142105850783394

namespace A370074

/-- `Δ[record[A211216(A027656(n))]]` -/
def P1828142105850783394.Spec : Prop :=
  ∀ n, P1828142105850783394.a n = A370074 n

end A370074

/-! ## A370074.P16711134440202028419

`Δ[record[A211216(A057979(n))]]`
-/

namespace A370074.P16711134440202028419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370074.P16711134440202028419

namespace A370074

/-- `Δ[record[A211216(A057979(n))]]` -/
def P16711134440202028419.Spec : Prop :=
  ∀ n, P16711134440202028419.a n = A370074 n

end A370074

/-! ## A370074.P16216329307970138905

`A211216(n+2)-A211216(n+1)`
-/

namespace A370074.P16216329307970138905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (n + 2) - A211216 (n + 1)

end

end A370074.P16216329307970138905

namespace A370074

/-- `A211216(n+2)-A211216(n+1)` -/
def P16216329307970138905.Spec : Prop :=
  ∀ n, P16216329307970138905.a n = A370074 n

end A370074

/-! ## A370074.P12923694811343926371

`Δ[record[A211216(A002262(n))]]`
-/

namespace A370074.P12923694811343926371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370074.P12923694811343926371

namespace A370074

/-- `Δ[record[A211216(A002262(n))]]` -/
def P12923694811343926371.Spec : Prop :=
  ∀ n, P12923694811343926371.a n = A370074 n

end A370074

/-!
# A370075: Iterated partial sums of Euler totient function (A000010). Square array read by descending antidiagonals.

The programs for A370075, there is no canonical definition to state claims against.
-/

/-! ## A370075.P1250820619439012317

`A212628(A121637(n+1))`
-/

namespace A370075.P1250820619439012317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (A121637 (n + 1)).toNat

end

end A370075.P1250820619439012317

/-! ## A370075.P8010600496373220137

`A129687(n)*A376267(A000079(n))`
-/

namespace A370075.P8010600496373220137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129687 n * A376267 (A000079 n).toNat

end

end A370075.P8010600496373220137

/-! ## A370075.P16637732218386022803

`A274742(n+3)+A178779(A330953(n+1))`
-/

namespace A370075.P16637732218386022803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274742 (n + 3) + A178779 (A330953 (n + 1)).toNat

end

end A370075.P16637732218386022803

/-! ## A370075.P2636962570993168583

`A055277(n+1)-A249161(A004064(n+1))`
-/

namespace A370075.P2636962570993168583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (n + 1) - A249161 (A004064 (n + 1)).toNat

end

end A370075.P2636962570993168583

/-! ## A370075.P14638606297666705294

`A129687(n)^A177702(A114806(2*n+3))`
-/

namespace A370075.P14638606297666705294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129687 n : ℚ) ^ (A177702 (A114806 (2 * n + 3)).toNat : ℤ)

end

end A370075.P14638606297666705294

/-!
# A370076: Numbers k such that A005361(k) is prime.

The programs for A370076, the canonical program `A370076.P14273981069909924052` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370076 has offset 1).

The definition of A370076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370076.P6930286618813419678

`eq[0, A070821(A005361(n+1))]+1`
-/

namespace A370076.P6930286618813419678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370076.P6930286618813419678

namespace A370076

/-- `eq[0, A070821(A005361(n+1))]+1` -/
def P6930286618813419678.Spec : Prop :=
  ∀ n, (P6930286618813419678.a n : ℤ) = A370076 (n + 1)

end A370076

/-! ## A370076.P14273981069909924052

`filter[A074661(n+1), A359466(#)]`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A370076

/-- `filter[A074661(n+1), A359466(#)]` -/
def P14273981069909924052.Spec : Prop :=
  ∀ n, P14273981069909924052.a n = A370076 (n + 1)

theorem P14273981069909924052.correct : P14273981069909924052.Spec := by
  intro n
  simp only [A370076, Nat.add_sub_cancel]

end A370076

/-! ## A370076.P11636049200829197425

`∩[A074661(n+1), A190641(n+1)]`
-/

namespace A370076.P11636049200829197425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370076.P11636049200829197425

namespace A370076

/-- `∩[A074661(n+1), A190641(n+1)]` -/
def P11636049200829197425.Spec : Prop :=
  ∀ n, (P11636049200829197425.a n : ℤ) = A370076 (n + 1)

end A370076

/-! ## A370076.P6223120468558045260

`filter[A390439(n+1), A359466(#)]`
-/

namespace A370076.P6223120468558045260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A370076.P6223120468558045260

namespace A370076

/-- `filter[A390439(n+1), A359466(#)]` -/
def P6223120468558045260.Spec : Prop :=
  ∀ n, P6223120468558045260.a n = A370076 (n + 1)

end A370076

/-! ## A370076.P12585556761226792883

`∩[A190641(n+1), A390439(n+1)]`
-/

namespace A370076.P12585556761226792883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370076.P12585556761226792883

namespace A370076

/-- `∩[A190641(n+1), A390439(n+1)]` -/
def P12585556761226792883.Spec : Prop :=
  ∀ n, (P12585556761226792883.a n : ℤ) = A370076 (n + 1)

end A370076

/-! ## A370076.P11953399438330223393

`eq[2, ∏{e}[∏{e}[n, #²], #]]`
-/

namespace A370076.P11953399438330223393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370076.P11953399438330223393

namespace A370076

/-- `eq[2, ∏{e}[∏{e}[n, #²], #]]` -/
def P11953399438330223393.Spec : Prop :=
  ∀ n, (P11953399438330223393.a n : ℤ) = A370076 (n + 1)

end A370076

/-! ## A370076.P17643783447954674495

`eq[2, A049419(n+1)]+1`
-/

namespace A370076.P17643783447954674495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370076.P17643783447954674495

namespace A370076

/-- `eq[2, A049419(n+1)]+1` -/
def P17643783447954674495.Spec : Prop :=
  ∀ n, (P17643783447954674495.a n : ℤ) = A370076 (n + 1)

end A370076

/-! ## A370076.P10245067511466370227

`eq[2, A049419(A000007(n)+n)]`
-/

namespace A370076.P10245067511466370227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370076.P10245067511466370227

namespace A370076

/-- `eq[2, A049419(A000007(n)+n)]` -/
def P10245067511466370227.Spec : Prop :=
  ∀ n, (P10245067511466370227.a n : ℤ) = A370076 (n + 1)

end A370076

/-!
# A370077: The product of exponents of the prime factorization of the largest unitary divisor of n that is a term of A138302.

The programs for A370077, the canonical program `A370077.P3375388874869746190` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370077 has offset 1).

The definition of A370077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370077.P3375388874869746190

`2^A370078(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A370077

/-- `2^A370078(n+1)` -/
def P3375388874869746190.Spec : Prop :=
  ∀ n, P3375388874869746190.a n = (A370077 (n + 1) : ℚ)

end A370077

/-! ## A370077.P3301953459860861738

`A005361(A367168(n+1))`
-/

namespace A370077.P3301953459860861738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A367168 (n + 1)).toNat

end

end A370077.P3301953459860861738

namespace A370077

/-- `A005361(A367168(n+1))` -/
def P3301953459860861738.Spec : Prop :=
  ∀ n, P3301953459860861738.a n = A370077 (n + 1)

end A370077

/-! ## A370077.P13303457918109001048

`A372331(A367168(2*n+1-n))`
-/

namespace A370077.P13303457918109001048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372331 (A367168 (2 * n + 1 - n)).toNat

end

end A370077.P13303457918109001048

namespace A370077

/-- `A372331(A367168(2*n+1-n))` -/
def P13303457918109001048.Spec : Prop :=
  ∀ n, P13303457918109001048.a n = A370077 (n + 1)

end A370077

/-! ## A370077.P15478937626242999561

`A381622(∏{e}[n+1, A324428(#)])`
-/

namespace A370077.P15478937626242999561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (∏ p ∈ Nat.primeFactors (f1 n), A324428 (Nat.factorization (f1 n) p)).toNat

end

end A370077.P15478937626242999561

namespace A370077

/-- `A381622(∏{e}[n+1, A324428(#)])` -/
def P15478937626242999561.Spec : Prop :=
  ∀ n, P15478937626242999561.a n = A370077 (n + 1)

end A370077

/-! ## A370077.P3611693046555301459

`gcd(A033880(A130321(n))-7, A322885(n+1))`
-/

namespace A370077.P3611693046555301459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (A130321 n).toNat - 7) (A322885 (n + 1))

end

end A370077.P3611693046555301459

namespace A370077

/-- `gcd(A033880(A130321(n))-7, A322885(n+1))` -/
def P3611693046555301459.Spec : Prop :=
  ∀ n, (P3611693046555301459.a n : ℤ) = A370077 (n + 1)

end A370077

/-! ## A370077.P8528786537701512445

`A366902(A367514((n+1)²))`
-/

namespace A370077.P8528786537701512445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (A367514 ((n + 1) ^ 2)).toNat

end

end A370077.P8528786537701512445

namespace A370077

/-- `A366902(A367514((n+1)²))` -/
def P8528786537701512445.Spec : Prop :=
  ∀ n, P8528786537701512445.a n = A370077 (n + 1)

end A370077

/-! ## A370077.P10106865532543204553

`gcd(A006885(n+1), A322885(n+1))`
-/

namespace A370077.P10106865532543204553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006885 (n + 1)) (A322885 (n + 1))

end

end A370077.P10106865532543204553

namespace A370077

/-- `gcd(A006885(n+1), A322885(n+1))` -/
def P10106865532543204553.Spec : Prop :=
  ∀ n, (P10106865532543204553.a n : ℤ) = A370077 (n + 1)

end A370077

/-! ## A370077.P13571389861779822613

`gcd(A187353(n), A322885(n+1))`
-/

namespace A370077.P13571389861779822613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187353 (n + 1939)) (A322885 (n + 1))

end

end A370077.P13571389861779822613

namespace A370077

/-- `gcd(A187353(n), A322885(n+1))` -/
def P13571389861779822613.Spec : Prop :=
  ∀ n, (P13571389861779822613.a n : ℤ) = A370077 (n + 1)

end A370077

/-! ## A370077.P15449013629410088832

`∏{e}[n+1, gcd(#, 2^#!)]`
-/

namespace A370077.P15449013629410088832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (Nat.factorization (f1 n) p) (2 ^ Nat.factorial (Nat.factorization (f1 n) p))

end

end A370077.P15449013629410088832

namespace A370077

/-- `∏{e}[n+1, gcd(#, 2^#!)]` -/
def P15449013629410088832.Spec : Prop :=
  ∀ n, (P15449013629410088832.a n : ℤ) = A370077 (n + 1)

end A370077

/-!
# A370078: a(n) = log_2(A370077(n)).

The programs for A370078, the canonical program `A370078.P7098894279137476643` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370078 has offset 1).

The definition of A370078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370078.P2256984409463057001

`log2(A370077(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370078.P2256984409463057001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A370077 (n + 1) : ℝ)

end

end A370078.P2256984409463057001

namespace A370078

/-- `log2(A370077(n+1))` -/
def P2256984409463057001.Spec : Prop :=
  ∀ n, P2256984409463057001.a n = (A370078 (n + 1) : ℝ)

end A370078

/-! ## A370078.P13735597541800709398

`A007814(A005361(A367168(n+1)))`
-/

namespace A370078.P13735597541800709398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005361 (A367168 (n + 1)).toNat).toNat

end

end A370078.P13735597541800709398

namespace A370078

/-- `A007814(A005361(A367168(n+1)))` -/
def P13735597541800709398.Spec : Prop :=
  ∀ n, P13735597541800709398.a n = A370078 (n + 1)

end A370078

/-! ## A370078.P15896455832672752369

`A386258(A367168(n+1))`
-/

namespace A370078.P15896455832672752369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386258 (A367168 (n + 1)).toNat

end

end A370078.P15896455832672752369

namespace A370078

/-- `A386258(A367168(n+1))` -/
def P15896455832672752369.Spec : Prop :=
  ∀ n, P15896455832672752369.a n = A370078 (n + 1)

end A370078

/-! ## A370078.P4705354553425542710

`A145037(A370077(n+1)-1)`
-/

namespace A370078.P4705354553425542710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A370077 (n + 1) - 1).toNat

end

end A370078.P4705354553425542710

namespace A370078

/-- `A145037(A370077(n+1)-1)` -/
def P4705354553425542710.Spec : Prop :=
  ∀ n, P4705354553425542710.a n = A370078 (n + 1)

end A370078

/-! ## A370078.P7098894279137476643

`∑{e}[n+1, A007814(A100994(#))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A370078

/-- `∑{e}[n+1, A007814(A100994(#))]` -/
def P7098894279137476643.Spec : Prop :=
  ∀ n, P7098894279137476643.a n = A370078 (n + 1)

theorem P7098894279137476643.correct : P7098894279137476643.Spec := by
  intro n
  simp only [A370078, Nat.add_sub_cancel]

end A370078

/-! ## A370078.P13393558715422744572

`A056239(A370077(n+1)%A000040(n+1))`
-/

namespace A370078.P13393558715422744572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A370077 (n + 1)) (A000040 (n + 1))).toNat

end

end A370078.P13393558715422744572

namespace A370078

/-- `A056239(A370077(n+1)%A000040(n+1))` -/
def P13393558715422744572.Spec : Prop :=
  ∀ n, P13393558715422744572.a n = A370078 (n + 1)

end A370078

/-! ## A370078.P11849556450466794098

`A367169(A367170(A350388(n+1)²))`
-/

namespace A370078.P11849556450466794098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A367170 (A350388 (n + 1) ^ 2).toNat).toNat

end

end A370078.P11849556450466794098

namespace A370078

/-- `A367169(A367170(A350388(n+1)²))` -/
def P11849556450466794098.Spec : Prop :=
  ∀ n, P11849556450466794098.a n = A370078 (n + 1)

end A370078

/-! ## A370078.P11967226297676872196

`A087476(A066060(n+1))`
-/

namespace A370078.P11967226297676872196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087476 (A066060 (n + 1)).toNat

end

end A370078.P11967226297676872196

namespace A370078

/-- `A087476(A066060(n+1))` -/
def P11967226297676872196.Spec : Prop :=
  ∀ n, P11967226297676872196.a n = A370078 (n + 1)

end A370078

/-! ## A370078.P2919898184904509742

`A074970(A112624(n+1))`
-/

namespace A370078.P2919898184904509742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074970 (A112624 (n + 1)).toNat

end

end A370078.P2919898184904509742

namespace A370078

/-- `A074970(A112624(n+1))` -/
def P2919898184904509742.Spec : Prop :=
  ∀ n, P2919898184904509742.a n = A370078 (n + 1)

end A370078

/-!
# A370079: The product of the odd exponents of the prime factorization of n.

The programs for A370079, the canonical program `A370079.P12845110108102492018` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370079 has offset 1).

The definition of A370079 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370079.P12845110108102492018

`A005361(A350389(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370079

/-- `A005361(A350389(n+1))` -/
def P12845110108102492018.Spec : Prop :=
  ∀ n, P12845110108102492018.a n = A370079 (n + 1)

theorem P12845110108102492018.correct : P12845110108102492018.Spec := by
  intro n
  simp only [A370079, Nat.add_sub_cancel]

end A370079

/-! ## A370079.P12399687907101560494

`A005361(n+1)/A370080(n+1)`
-/

namespace A370079.P12399687907101560494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (A370080 (n + 1) : ℚ)

end

end A370079.P12399687907101560494

namespace A370079

/-- `A005361(n+1)/A370080(n+1)` -/
def P12399687907101560494.Spec : Prop :=
  ∀ n, P12399687907101560494.a n = (A370079 (n + 1) : ℚ)

end A370079

/-! ## A370079.P5226925814550457191

`∏{e}[n+1, #^(#%2)]`
-/

namespace A370079.P5226925814550457191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ (Nat.factorization (f1 n) p % 2)

end

end A370079.P5226925814550457191

namespace A370079

/-- `∏{e}[n+1, #^(#%2)]` -/
def P5226925814550457191.Spec : Prop :=
  ∀ n, (P5226925814550457191.a n : ℤ) = A370079 (n + 1)

end A370079

/-! ## A370079.P2187412980832947993

`∏{e}[n+1, #^and(1, #)]`
-/

namespace A370079.P2187412980832947993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.land 1 (Nat.factorization (f1 n) p)

end

end A370079.P2187412980832947993

namespace A370079

/-- `∏{e}[n+1, #^and(1, #)]` -/
def P2187412980832947993.Spec : Prop :=
  ∀ n, (P2187412980832947993.a n : ℤ) = A370079 (n + 1)

end A370079

/-! ## A370079.P1775564841281269989

`∏{e}[A368167(n+1), #]`
-/

namespace A370079.P1775564841281269989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A370079.P1775564841281269989

namespace A370079

/-- `∏{e}[A368167(n+1), #]` -/
def P1775564841281269989.Spec : Prop :=
  ∀ n, (P1775564841281269989.a n : ℤ) = A370079 (n + 1)

end A370079

/-! ## A370079.P5761693887475739703

`A005361((n+1)/A350388(n+1))`
-/

namespace A370079.P5761693887475739703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A370079.P5761693887475739703

namespace A370079

/-- `A005361((n+1)/A350388(n+1))` -/
def P5761693887475739703.Spec : Prop :=
  ∀ n, P5761693887475739703.a n = A370079 (n + 1)

end A370079

/-! ## A370079.P5582561701659944394

`A365331(n+1)/A365401(n+1)`
-/

namespace A370079.P5582561701659944394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365331 (n + 1) : ℚ) / (A365401 (n + 1) : ℚ)

end

end A370079.P5582561701659944394

namespace A370079

/-- `A365331(n+1)/A365401(n+1)` -/
def P5582561701659944394.Spec : Prop :=
  ∀ n, P5582561701659944394.a n = (A370079 (n + 1) : ℚ)

end A370079

/-! ## A370079.P9869308307098381369

`∑{d}[n+1, A008836(#)*A286324((n+1)/#)]`
-/

namespace A370079.P9869308307098381369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A286324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370079.P9869308307098381369

namespace A370079

/-- `∑{d}[n+1, A008836(#)*A286324((n+1)/#)]` -/
def P9869308307098381369.Spec : Prop :=
  ∀ n, P9869308307098381369.a n = A370079 (n + 1)

end A370079

/-! ## A370079.P13974968465834235451

`A007913(A112622(n+1))`
-/

namespace A370079.P13974968465834235451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A112622 (n + 1)).toNat

end

end A370079.P13974968465834235451

namespace A370079

/-- `A007913(A112622(n+1))` -/
def P13974968465834235451.Spec : Prop :=
  ∀ n, P13974968465834235451.a n = A370079 (n + 1)

end A370079

/-! ## A370079.P16165205530244980600

`A325837(A368167(n+1)²)`
-/

namespace A370079.P16165205530244980600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A368167 (n + 1) ^ 2).toNat

end

end A370079.P16165205530244980600

namespace A370079

/-- `A325837(A368167(n+1)²)` -/
def P16165205530244980600.Spec : Prop :=
  ∀ n, P16165205530244980600.a n = A370079 (n + 1)

end A370079

/-! ## A370079.P6680420868100500039

`A000120(A295878(n+1)²²)`
-/

namespace A370079.P6680420868100500039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((A295878 (n + 1) ^ 2) ^ 2).toNat

end

end A370079.P6680420868100500039

namespace A370079

/-- `A000120(A295878(n+1)²²)` -/
def P6680420868100500039.Spec : Prop :=
  ∀ n, P6680420868100500039.a n = A370079 (n + 1)

end A370079

/-! ## A370079.P5490600788992043039

`A325837(A350389(n+1)²)`
-/

namespace A370079.P5490600788992043039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A350389 (n + 1) ^ 2).toNat

end

end A370079.P5490600788992043039

namespace A370079

/-- `A325837(A350389(n+1)²)` -/
def P5490600788992043039.Spec : Prop :=
  ∀ n, P5490600788992043039.a n = A370079 (n + 1)

end A370079

/-! ## A370079.P2734495917842135601

`A368977(A350389(n+1)²)`
-/

namespace A370079.P2734495917842135601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A350389 (n + 1) ^ 2).toNat

end

end A370079.P2734495917842135601

namespace A370079

/-- `A368977(A350389(n+1)²)` -/
def P2734495917842135601.Spec : Prop :=
  ∀ n, P2734495917842135601.a n = A370079 (n + 1)

end A370079

/-!
# A370080: The product of the even exponents of the prime factorization of n.

The programs for A370080, the canonical program `A370080.P3603288558097370271` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370080 has offset 1).

The definition of A370080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A370079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370080.P13041173738102245078

`A005361(A350388(n+1))`
-/

namespace A370080.P13041173738102245078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A350388 (n + 1)).toNat

end

end A370080.P13041173738102245078

namespace A370080

/-- `A005361(A350388(n+1))` -/
def P13041173738102245078.Spec : Prop :=
  ∀ n, P13041173738102245078.a n = A370080 (n + 1)

end A370080

/-! ## A370080.P3603288558097370271

`A005361(n+1)/A370079(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A370080

/-- `A005361(n+1)/A370079(n+1)` -/
def P3603288558097370271.Spec : Prop :=
  ∀ n, P3603288558097370271.a n = (A370080 (n + 1) : ℚ)

end A370080

/-! ## A370080.P15000089347715450259

`A286324(n+1)/A365402(n+1)`
-/

namespace A370080.P15000089347715450259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A365402 (n + 1) : ℚ)

end

end A370080.P15000089347715450259

namespace A370080

/-- `A286324(n+1)/A365402(n+1)` -/
def P15000089347715450259.Spec : Prop :=
  ∀ n, P15000089347715450259.a n = (A370080 (n + 1) : ℚ)

end A370080

/-! ## A370080.P8486081390188119208

`A368104(n+1)/A368169(n+1)`
-/

namespace A370080.P8486081390188119208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368104 (n + 1) : ℚ) / (A368169 (n + 1) : ℚ)

end

end A370080.P8486081390188119208

namespace A370080

/-- `A368104(n+1)/A368169(n+1)` -/
def P8486081390188119208.Spec : Prop :=
  ∀ n, P8486081390188119208.a n = (A370080 (n + 1) : ℚ)

end A370080

/-!
# A370081: Number of left-labeled (3,n)-bipartite graphs.

The programs for A370081, there is no canonical definition to state claims against.
-/

/-! ## A370081.P12141167574326369752

`∑[A322492(3*n+2)-A322456(n)]`
-/

namespace A370081.P12141167574326369752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322492 (3 * n + 2) - A322456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370081.P12141167574326369752

/-!
# A370082: The number of square lattice nodes inside the n-th largest octagon with angles 3*Pi/4, along the perimeter of which there are only 8 lattice nodes - at the vertices of the octagon.

The programs for A370082, the canonical program `A370082.P6772525730967909071` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370082 has offset 1).

The definition of A370082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370082.P6772525730967909071

`7*A004613(n+1)-3`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370082

/-- `7*A004613(n+1)-3` -/
def P6772525730967909071.Spec : Prop :=
  ∀ n, P6772525730967909071.a n = A370082 (n + 1)

theorem P6772525730967909071.correct : P6772525730967909071.Spec := by
  intro n
  simp only [A370082, Nat.add_sub_cancel]

end A370082

/-! ## A370082.P7741053896211277497

`A113804(A004613(n+1))`
-/

namespace A370082.P7741053896211277497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (A004613 (n + 1)).toNat

end

end A370082.P7741053896211277497

namespace A370082

/-- `A113804(A004613(n+1))` -/
def P7741053896211277497.Spec : Prop :=
  ∀ n, P7741053896211277497.a n = A370082 (n + 1)

end A370082

/-! ## A370082.P11182145223954622565

`A047348(2*A004613(n+1))`
-/

namespace A370082.P11182145223954622565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (2 * A004613 (n + 1)).toNat

end

end A370082.P11182145223954622565

namespace A370082

/-- `A047348(2*A004613(n+1))` -/
def P11182145223954622565.Spec : Prop :=
  ∀ n, P11182145223954622565.a n = A370082 (n + 1)

end A370082

/-! ## A370082.P7665879757211038151

`eq[7, A072438(n+3)]`
-/

namespace A370082.P7665879757211038151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370082.P7665879757211038151

namespace A370082

/-- `eq[7, A072438(n+3)]` -/
def P7665879757211038151.Spec : Prop :=
  ∀ n, (P7665879757211038151.a n : ℤ) = A370082 (n + 1)

end A370082

/-! ## A370082.P14814194268268827837

`eq[A097706(n+3), A269161(A006519(n+1))]`
-/

namespace A370082.P14814194268268827837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 (A006519 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370082.P14814194268268827837

namespace A370082

/-- `eq[A097706(n+3), A269161(A006519(n+1))]` -/
def P14814194268268827837.Spec : Prop :=
  ∀ n, (P14814194268268827837.a n : ℤ) = A370082 (n + 1)

end A370082

/-!
# A370083: Number of chordless cycles in the n-triangular queen graph.

The programs for A370083, there is no canonical definition to state claims against.
-/

/-! ## A370083.P17006023817707695816

`3*A320312(4^n)`
-/

namespace A370083.P17006023817707695816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A320312 (4 ^ n)

end

end A370083.P17006023817707695816

/-!
# A370086: Expansion of e.g.f. exp( Sum_{k>=1} (2*k)!/k! * (x/2)^k/k ).

The programs for A370086, there is no canonical definition to state claims against.
-/

/-! ## A370086.P1490260612285850947

`A299540((1-n!)²)`
-/

namespace A370086.P1490260612285850947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299540 ((1 - (Nat.factorial n : ℤ)) ^ 2).toNat

end

end A370086.P1490260612285850947

/-!
# A370089: Number of dominating sets in the n-trapezohedral graph.

The programs for A370089, there is no canonical definition to state claims against.
-/

/-! ## A370089.P5908104160350592349

`A007283(2*n)-A160121(A014466(n))`
-/

namespace A370089.P5908104160350592349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (2 * n) - A160121 (A014466 n).toNat

end

end A370089.P5908104160350592349

/-!
# A370090: Numbers that can be expressed in exactly one way as the unordered sum of two distinct primes.

The programs for A370090, there is no canonical definition to state claims against.
-/

/-! ## A370090.P6565301121123752772

`eq[1, A117929(n+1)]+1`
-/

namespace A370090.P6565301121123752772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370090.P6565301121123752772

/-! ## A370090.P14047504720901283102

`eq[1, floor(A073610(n+1)/2)]+1`
-/

namespace A370090.P14047504720901283102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073610 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370090.P14047504720901283102

/-! ## A370090.P3491062877962728076

`eq[1, A117929(A028310(n))]`
-/

namespace A370090.P3491062877962728076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370090.P3491062877962728076

/-! ## A370090.P1874265291776085836

`lt[A000170(A073610(n+1)), 1]+1`
-/

namespace A370090.P1874265291776085836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000170 (A073610 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A370090.P1874265291776085836

/-! ## A370090.P10228059202950916687

`eq[1, floor(A347739(n)/ϕ)]`
-/

namespace A370090.P10228059202950916687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347739 n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370090.P10228059202950916687

/-!
# A370092: a(0) = 1, a(n) = (-1)^n + (1/2) * Sum_{j=1..n} (1-(-1)^j-(-2)^j) * binomial(n,j) * a(n-j) for n > 0.

The programs for A370092, there is no canonical definition to state claims against.
-/

/-! ## A370092.P13536408616626480631

`A026741(A305550(n)+A000670(n))`
-/

namespace A370092.P13536408616626480631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A305550 n + A000670 n).toNat

end

end A370092.P13536408616626480631

/-!
# A370094: Rectangular array read by antidiagonals: A(n,k) = prime(A114537(n,k)).

The programs for A370094, there is no canonical definition to state claims against.
-/

/-! ## A370094.P16142877753635654626

`A114537(comp[∑[n]])`
-/

namespace A370094.P16142877753635654626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A370094.P16142877753635654626

/-! ## A370094.P4698814891919513604

`A236542(∑[char[∑[n]]]²-n)`
-/

namespace A370094.P4698814891919513604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236542 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A370094.P4698814891919513604

/-! ## A370094.P6989325230083908185

`or(A107846(n), A236542(A038722(n+1)))`
-/

namespace A370094.P6989325230083908185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A236542 (A038722 (n + 1)).toNat)

end

end A370094.P6989325230083908185

/-! ## A370094.P2201174981133052738

`or(A236542(A038722(n+1)), A302048(n))`
-/

namespace A370094.P2201174981133052738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A236542 (A038722 (n + 1)).toNat) (A302048 n)

end

end A370094.P2201174981133052738

/-! ## A370094.P16257998513697433659

`A236542(A038722(n+1))%A198174(n+1)`
-/

namespace A370094.P16257998513697433659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236542 (A038722 (n + 1)).toNat) (A198174 (n + 1))

end

end A370094.P16257998513697433659

/-!
# A370097: a(n) = Sum_{k=0..n} binomial(3*n,k) * binomial(3*n-k-1,n-k).

The programs for A370097, there is no canonical definition to state claims against.
-/

/-! ## A370097.P903592775417335178

`A193816(A022266(n))`
-/

namespace A370097.P903592775417335178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (A022266 n).toNat

end

end A370097.P903592775417335178

/-! ## A370097.P1716628112830918467

`A193844(A022267(n)-n)`
-/

namespace A370097.P1716628112830918467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A022267 n - (n : ℤ)).toNat

end

end A370097.P1716628112830918467

/-! ## A370097.P14142488091726714562

`A112857(A062728(n))`
-/

namespace A370097.P14142488091726714562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A062728 n).toNat

end

end A370097.P14142488091726714562

/-! ## A370097.P3664065168999829380

`A119258(A062725(n))`
-/

namespace A370097.P3664065168999829380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A062725 n).toNat

end

end A370097.P3664065168999829380

/-! ## A370097.P17325175850473176803

`A112857(A062725(n)+n)`
-/

namespace A370097.P17325175850473176803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A062725 n + (n : ℤ)).toNat

end

end A370097.P17325175850473176803

/-!
# A370098: a(n) = Sum_{k=0..n} binomial(3*n,k) * binomial(4*n-k-1,n-k).

The programs for A370098, there is no canonical definition to state claims against.
-/

/-! ## A370098.P10671457869010631713

`A110171(A062728(n))`
-/

namespace A370098.P10671457869010631713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 (A062728 n).toNat

end

end A370098.P10671457869010631713

/-! ## A370098.P7007743764582464288

`A035607(A139274(n))`
-/

namespace A370098.P7007743764582464288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A139274 n).toNat

end

end A370098.P7007743764582464288

/-! ## A370098.P6746866067010543854

`A122542(A139277(n))`
-/

namespace A370098.P6746866067010543854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A139277 n).toNat

end

end A370098.P6746866067010543854

/-! ## A370098.P1137103415842026554

`A266213(A139276(n))`
-/

namespace A370098.P1137103415842026554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A139276 n).toNat

end

end A370098.P1137103415842026554

/-! ## A370098.P2746115016386682674

`A122542(n*A004770(n+1))`
-/

namespace A370098.P2746115016386682674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A370098.P2746115016386682674

/-!
# A370099: a(n) = Sum_{k=0..n} binomial(2*n,k) * binomial(3*n-k-1,n-k).

The programs for A370099, there is no canonical definition to state claims against.
-/

/-! ## A370099.P8757459199426345073

`A006318(n)/A001003(n)*A103885(n)`
-/

namespace A370099.P8757459199426345073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n : ℚ) / (A001003 n : ℚ) * (A103885 n : ℚ)

end

end A370099.P8757459199426345073

/-! ## A370099.P4048551481832642576

`A110171(∑[4*n])`
-/

namespace A370099.P4048551481832642576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370099.P4048551481832642576

/-! ## A370099.P12135918212246708378

`A035607(A022266(n))`
-/

namespace A370099.P12135918212246708378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A022266 n).toNat

end

end A370099.P12135918212246708378

/-! ## A370099.P6672209049475490016

`A035607(A022267(n)-n)`
-/

namespace A370099.P6672209049475490016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A022267 n - (n : ℤ)).toNat

end

end A370099.P6672209049475490016

/-! ## A370099.P14610847890193243593

`A122542(A062728(n))`
-/

namespace A370099.P14610847890193243593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A062728 n).toNat

end

end A370099.P14610847890193243593

