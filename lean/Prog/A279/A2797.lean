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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A279702: a(n) = floor( exp(gamma) k log log k ) - sigma(k), where gamma is Euler's constant (A001620) and sigma(k) is sum of divisors of k (A000203), the n-th colossally abundant number (A004490).

The programs for A279702, there is no canonical definition to state claims against.
-/

/-! ## A279702.P12823898623489616130

`A058209(A002201(n+1))`
-/

namespace A279702.P12823898623489616130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (A002201 (n + 1)).toNat

end

end A279702.P12823898623489616130

/-! ## A279702.P11702848009461855583

`A058209(A004490(n+1))`
-/

namespace A279702.P11702848009461855583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (A004490 (n + 1)).toNat

end

end A279702.P11702848009461855583

/-! ## A279702.P10637606780268329580

`A058209(A224078(n+1))`
-/

namespace A279702.P10637606780268329580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (A224078 (n + 1)).toNat

end

end A279702.P10637606780268329580

/-! ## A279702.P4112193898749044588

`A058209(∏[A000705(n+1)])`
-/

namespace A279702.P4112193898749044588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279702.P4112193898749044588

/-!
# A279703: Number of n X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279703, there is no canonical definition to state claims against.
-/

/-! ## A279703.P17020714796045043290

`A279709(∑[4*n]+1)`
-/

namespace A279703.P17020714796045043290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279703.P17020714796045043290

/-! ## A279703.P6530156000232214087

`record[gcd(A114327(n), A279709(n+1))]`
-/

namespace A279703.P6530156000232214087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A279709 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279703.P6530156000232214087

/-! ## A279703.P6149123499110654970

`A279709(A001844(n))+A257850(n)`
-/

namespace A279703.P6149123499110654970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A001844 n).toNat + A257850 n

end

end A279703.P6149123499110654970

/-! ## A279703.P14416950457942296928

`lcm(A181937(n), A279709(A001844(n)))`
-/

namespace A279703.P14416950457942296928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A181937 n) (A279709 (A001844 n).toNat)

end

end A279703.P14416950457942296928

/-! ## A279703.P853910418750644930

`or(A000007(n), A279709(A001844(n)))`
-/

namespace A279703.P853910418750644930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A279709 (A001844 n).toNat)

end

end A279703.P853910418750644930

/-!
# A279704: Number of n X 3 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279704, the canonical program `A279704.P5308738545176493302` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279704 has offset 1).

The definition of A279704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279704.P5694545268922209857

`ogf((1-2x+x^2)/(1-5x+5x^2-2x^3))`
-/

namespace A279704.P5694545268922209857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 5, -2] n

end

end A279704.P5694545268922209857

namespace A279704

/-- `ogf((1-2x+x^2)/(1-5x+5x^2-2x^3))` -/
def P5694545268922209857.Spec : Prop :=
  ∀ n, P5694545268922209857.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P5308738545176493302

`5*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279704

/-- `5*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P5308738545176493302.Spec : Prop :=
  ∀ n, P5308738545176493302.a n = A279704 (n + 1)

theorem P5308738545176493302.correct : P5308738545176493302.Spec := by
  intro n
  simp only [A279704, Nat.add_sub_cancel]

end A279704

/-! ## A279704.P16511347070263147855

`A231067(A004277(n))`
-/

namespace A279704.P16511347070263147855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A004277 n).toNat

end

end A279704.P16511347070263147855

namespace A279704

/-- `A231067(A004277(n))` -/
def P16511347070263147855.Spec : Prop :=
  ∀ n, P16511347070263147855.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P17865970987463659422

`A231067(A004275(n+1))`
-/

namespace A279704.P17865970987463659422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A004275 (n + 1)).toNat

end

end A279704.P17865970987463659422

namespace A279704

/-- `A231067(A004275(n+1))` -/
def P17865970987463659422.Spec : Prop :=
  ∀ n, P17865970987463659422.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P15641587446622241511

`A231067(A004273(n)+1)`
-/

namespace A279704.P15641587446622241511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A004273 n + 1).toNat

end

end A279704.P15641587446622241511

namespace A279704

/-- `A231067(A004273(n)+1)` -/
def P15641587446622241511.Spec : Prop :=
  ∀ n, P15641587446622241511.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P738541231445583275

`A231067(A028310(2*n))`
-/

namespace A279704.P738541231445583275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A028310 (2 * n)).toNat

end

end A279704.P738541231445583275

namespace A279704

/-- `A231067(A028310(2*n))` -/
def P738541231445583275.Spec : Prop :=
  ∀ n, P738541231445583275.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P12970701937968023641

`A231067(A028310(n)+n)`
-/

namespace A279704.P12970701937968023641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A028310 n + (n : ℤ)).toNat

end

end A279704.P12970701937968023641

namespace A279704

/-- `A231067(A028310(n)+n)` -/
def P12970701937968023641.Spec : Prop :=
  ∀ n, P12970701937968023641.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P4659745690289866626

`A231067(A008486(n)-n)`
-/

namespace A279704.P4659745690289866626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A008486 n - (n : ℤ)).toNat

end

end A279704.P4659745690289866626

namespace A279704

/-- `A231067(A008486(n)-n)` -/
def P4659745690289866626.Spec : Prop :=
  ∀ n, P4659745690289866626.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P1569213191069215988

`A231067(A000007(n)+2*n)`
-/

namespace A279704.P1569213191069215988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A000007 n + (2 * n : ℤ)).toNat

end

end A279704.P1569213191069215988

namespace A279704

/-- `A231067(A000007(n)+2*n)` -/
def P1569213191069215988.Spec : Prop :=
  ∀ n, P1569213191069215988.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P8306331975829499150

`A231067(A000007(n)+n+n)`
-/

namespace A279704.P8306331975829499150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A279704.P8306331975829499150

namespace A279704

/-- `A231067(A000007(n)+n+n)` -/
def P8306331975829499150.Spec : Prop :=
  ∀ n, P8306331975829499150.a n = A279704 (n + 1)

end A279704

/-! ## A279704.P16704284473740359432

`A231067(A005843(n)+A000007(n))`
-/

namespace A279704.P16704284473740359432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231067 (A005843 n + A000007 n).toNat

end

end A279704.P16704284473740359432

namespace A279704

/-- `A231067(A005843(n)+A000007(n))` -/
def P16704284473740359432.Spec : Prop :=
  ∀ n, P16704284473740359432.a n = A279704 (n + 1)

end A279704

/-!
# A279705: Number of n X 4 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279705, there is no canonical definition to state claims against.
-/

/-! ## A279705.P10273641092819603227

`A279709(A141214(n+1))`
-/

namespace A279705.P10273641092819603227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A141214 (n + 1)).toNat

end

end A279705.P10273641092819603227

/-! ## A279705.P17948836246893101723

`A279709(A027379(n+2))`
-/

namespace A279705.P17948836246893101723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A027379 (n + 2)).toNat

end

end A279705.P17948836246893101723

/-! ## A279705.P8023144726389355682

`A279709(A055998(n+2))`
-/

namespace A279705.P8023144726389355682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A055998 (n + 2)).toNat

end

end A279705.P8023144726389355682

/-! ## A279705.P14341457220549634038

`A279709(A056000(n)+7)`
-/

namespace A279705.P14341457220549634038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A056000 n + 7).toNat

end

end A279705.P14341457220549634038

/-! ## A279705.P3104143809490854535

`A279709(eq[3, A193592(n)])`
-/

namespace A279705.P3104143809490854535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279705.P3104143809490854535

/-!
# A279706: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279706, there is no canonical definition to state claims against.
-/

/-! ## A279706.P18160166253077425537

`A279709(Δ[A264443(n)])`
-/

namespace A279706.P18160166253077425537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (f1 (n + 1) - f1 n).toNat

end

end A279706.P18160166253077425537

/-! ## A279706.P12085818582377508062

`A279709(A046691(n+3))`
-/

namespace A279706.P12085818582377508062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A046691 (n + 3)).toNat

end

end A279706.P12085818582377508062

/-! ## A279706.P7535463076600206983

`A279709(A052905(n+2)+1)`
-/

namespace A279706.P7535463076600206983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A052905 (n + 2) + 1).toNat

end

end A279706.P7535463076600206983

/-! ## A279706.P9377659572983978860

`A279709(A055998(n+3)-1)`
-/

namespace A279706.P9377659572983978860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A055998 (n + 3) - 1).toNat

end

end A279706.P9377659572983978860

/-! ## A279706.P561582173550320536

`A279709(A000096(n+4)-3)`
-/

namespace A279706.P561582173550320536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A000096 (n + 4) - 3).toNat

end

end A279706.P561582173550320536

/-!
# A279707: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279707, there is no canonical definition to state claims against.
-/

/-! ## A279707.P1198376157374708454

`A279709(eq[3, A219347(n)])`
-/

namespace A279707.P1198376157374708454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279707.P1198376157374708454

/-! ## A279707.P6864536919209183373

`A279709(eq[5, A193592(n)])`
-/

namespace A279707.P6864536919209183373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279707.P6864536919209183373

/-! ## A279707.P9607654059133782028

`A279709(eq[8, A258709(n)])`
-/

namespace A279707.P9607654059133782028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279707.P9607654059133782028

/-! ## A279707.P2344730280259605424

`A279709(A055999(n+3)+1)`
-/

namespace A279707.P2344730280259605424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A055999 (n + 3) + 1).toNat

end

end A279707.P2344730280259605424

/-! ## A279707.P1581342099951061165

`A279709(A000124(n+6)-6)`
-/

namespace A279707.P1581342099951061165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A000124 (n + 6) - 6).toNat

end

end A279707.P1581342099951061165

/-!
# A279708: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279708, there is no canonical definition to state claims against.
-/

/-! ## A279708.P10496193288441429468

`A279709(A055999(n+4))`
-/

namespace A279708.P10496193288441429468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A055999 (n + 4)).toNat

end

end A279708.P10496193288441429468

/-! ## A279708.P10923687771042732100

`A279709(eq[4, A219347(n)])`
-/

namespace A279708.P10923687771042732100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279708.P10923687771042732100

/-! ## A279708.P6034761967026902706

`A279709(eq[6, A193592(n)])`
-/

namespace A279708.P6034761967026902706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279708.P6034761967026902706

/-! ## A279708.P17053547011382613702

`A279709(eq[7, A200370(n+1)])`
-/

namespace A279708.P17053547011382613702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279708.P17053547011382613702

/-! ## A279708.P15582366836478498920

`A279709(eq[10, A185782(n+1)])`
-/

namespace A279708.P15582366836478498920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279708.P15582366836478498920

/-!
# A279709: T(n,k)=Number of nXk 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279709, there is no canonical definition to state claims against.
-/

/-! ## A279709.P17091261010511461159

`A067437(A268530(n+2))`
-/

namespace A279709.P17091261010511461159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067437 (A268530 (n + 2)).toNat

end

end A279709.P17091261010511461159

/-! ## A279709.P9790788764137477880

`A102677(A007999(n))+A059268(n)`
-/

namespace A279709.P9790788764137477880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A007999 n).toNat + A059268 n

end

end A279709.P9790788764137477880

/-! ## A279709.P6328544371664674236

`A226874(n)+A001221(A013025(n))`
-/

namespace A279709.P6328544371664674236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n + A001221 (A013025 n).toNat

end

end A279709.P6328544371664674236

/-! ## A279709.P15804358620521431247

`A226874(n)+A001221(A018486(n+1))`
-/

namespace A279709.P15804358620521431247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n + A001221 (A018486 (n + 1)).toNat

end

end A279709.P15804358620521431247

/-! ## A279709.P8117864738941331400

`A226874(n)+A001221(A018625(n+1))`
-/

namespace A279709.P8117864738941331400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n + A001221 (A018625 (n + 1)).toNat

end

end A279709.P8117864738941331400

/-!
# A279710: Number of 3 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279710, there is no canonical definition to state claims against.
-/

/-! ## A279710.P5931767791361115143

`A279709(∑[n+2]+4)`
-/

namespace A279710.P5931767791361115143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279710.P5931767791361115143

/-! ## A279710.P14616626571080344961

`and(-1, A279709(A167614(n+1)))`
-/

namespace A279710.P14616626571080344961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A279709 (A167614 (n + 1)).toNat)

end

end A279710.P14616626571080344961

/-! ## A279710.P16418534815820711583

`A279709(A167614(n+1))%A016973(n)`
-/

namespace A279710.P16418534815820711583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279709 (A167614 (n + 1)).toNat) (A016973 n)

end

end A279710.P16418534815820711583

/-! ## A279710.P601107031934918616

`lcm(A033999(n), A279709(A167614(n+1)))`
-/

namespace A279710.P601107031934918616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A279709 (A167614 (n + 1)).toNat)

end

end A279710.P601107031934918616

/-! ## A279710.P2611407107123692830

`or(A209229(n), A279709(A167614(n+1)))`
-/

namespace A279710.P2611407107123692830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A279709 (A167614 (n + 1)).toNat)

end

end A279710.P2611407107123692830

/-!
# A279711: Number of 4Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279711, there is no canonical definition to state claims against.
-/

/-! ## A279711.P757813595243950442

`A279709(A141214(n)+7)`
-/

namespace A279711.P757813595243950442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A141214 n + 7).toNat

end

end A279711.P757813595243950442

/-! ## A279711.P10445212865066093284

`A279709(A052905(n)+9)`
-/

namespace A279711.P10445212865066093284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A052905 n + 9).toNat

end

end A279711.P10445212865066093284

/-! ## A279711.P9573516635586793052

`A279709(A055999(n)+10)`
-/

namespace A279711.P9573516635586793052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A055999 n + 10).toNat

end

end A279711.P9573516635586793052

/-! ## A279711.P14961823189267459780

`A279709(A167614(n+2)+1)`
-/

namespace A279711.P14961823189267459780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A167614 (n + 2) + 1).toNat

end

end A279711.P14961823189267459780

/-! ## A279711.P14698710778921181638

`A279709(A166136(n+2)-2)`
-/

namespace A279711.P14698710778921181638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A166136 (n + 2) - 2).toNat

end

end A279711.P14698710778921181638

/-!
# A279712: Number of 5Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279712, there is no canonical definition to state claims against.
-/

/-! ## A279712.P2124431472788089284

`A279709(A167499(n+3))`
-/

namespace A279712.P2124431472788089284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A167499 (n + 3)).toNat

end

end A279712.P2124431472788089284

/-! ## A279712.P2937934237605003714

`A279709(A000124(n+4)+4)`
-/

namespace A279712.P2937934237605003714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A000124 (n + 4) + 4).toNat

end

end A279712.P2937934237605003714

/-! ## A279712.P6480628910599935513

`A279709(A000217(n+4)+5)`
-/

namespace A279712.P6480628910599935513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A000217 (n + 4) + 5).toNat

end

end A279712.P6480628910599935513

/-! ## A279712.P17695021949966055868

`A279709(A055998(n+2)+8)`
-/

namespace A279712.P17695021949966055868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A055998 (n + 2) + 8).toNat

end

end A279712.P17695021949966055868

/-! ## A279712.P2806571475587499804

`A279709(A046691(n+2)+9)`
-/

namespace A279712.P2806571475587499804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A046691 (n + 2) + 9).toNat

end

end A279712.P2806571475587499804

/-!
# A279713: Number of 6Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279713, there is no canonical definition to state claims against.
-/

/-! ## A279713.P14610620185684751220

`A279709(A166136(n+4))`
-/

namespace A279713.P14610620185684751220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A166136 (n + 4)).toNat

end

end A279713.P14610620185684751220

/-! ## A279713.P10988839916790026978

`A279709(Δ[A264443(n)]+10)`
-/

namespace A279713.P10988839916790026978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (f1 (n + 1) - f1 n + 10).toNat

end

end A279713.P10988839916790026978

/-! ## A279713.P8528133682068644997

`A279709(A167499(n+4)+1)`
-/

namespace A279713.P8528133682068644997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A167499 (n + 4) + 1).toNat

end

end A279713.P8528133682068644997

/-! ## A279713.P13822795451630324908

`A279709(A000096(n+4)+7)`
-/

namespace A279713.P13822795451630324908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A000096 (n + 4) + 7).toNat

end

end A279713.P13822795451630324908

/-! ## A279713.P7508726630056139351

`A279709(eq[5, A002262(n)]+1)`
-/

namespace A279713.P7508726630056139351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279713.P7508726630056139351

/-!
# A279714: Number of 7Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A279714, there is no canonical definition to state claims against.
-/

/-! ## A279714.P6590945876404025260

`A279709(eq[11, A066657(n)])`
-/

namespace A279714.P6590945876404025260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279714.P6590945876404025260

/-! ## A279714.P13734214804736744660

`A279709(A000124(n+6)+6)`
-/

namespace A279714.P13734214804736744660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A000124 (n + 6) + 6).toNat

end

end A279714.P13734214804736744660

/-! ## A279714.P1540470462759586566

`A279709(eq[6, A002262(n)]+1)`
-/

namespace A279714.P1540470462759586566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279714.P1540470462759586566

/-! ## A279714.P1239551129063503024

`A279709(eq[8, A131818(n+1)])`
-/

namespace A279714.P1239551129063503024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279714.P1239551129063503024

/-! ## A279714.P1442468370163360070

`A279709(eq[5, A243070(n+1)]-2*n)`
-/

namespace A279714.P1442468370163360070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A279714.P1442468370163360070

/-!
# A279715: Expansion of a q-series used by Ramanujan in his Lost Notebook.

The programs for A279715, there is no canonical definition to state claims against.
-/

/-! ## A279715.P5381323987071328677

`A005843(A256209(n))-A292445(n)`
-/

namespace A279715.P5381323987071328677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A256209 n).toNat - A292445 n

end

end A279715.P5381323987071328677

/-! ## A279715.P13444781439720004999

`A005843(A256052(n)/8)-A292445(n)`
-/

namespace A279715.P13444781439720004999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A256052 n : ℚ) / 8)).toNat - A292445 n

end

end A279715.P13444781439720004999

/-! ## A279715.P11634427574951245641

`A005843(A153140(2*n+1)/2)-A292445(n)`
-/

namespace A279715.P11634427574951245641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A153140 (2 * n + 1) : ℚ) / 2)).toNat - A292445 n

end

end A279715.P11634427574951245641

/-! ## A279715.P9831680675928525695

`A000009(2*n+3)-A216452(A353837(n))`
-/

namespace A279715.P9831680675928525695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 3) - A216452 (A353837 n).toNat

end

end A279715.P9831680675928525695

/-! ## A279715.P7953216575388144661

`A295866(A202192(n+2)+1)`
-/

namespace A279715.P7953216575388144661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A202192 (n + 2) + 1).toNat

end

end A279715.P7953216575388144661

/-!
# A279716: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A279716, there is no canonical definition to state claims against.
-/

/-! ## A279716.P9000457885388553368

`A007088(A279718(n))`
-/

namespace A279716.P9000457885388553368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279718 n).toNat

end

end A279716.P9000457885388553368

/-! ## A279716.P1266030534656555358

`A185544(2*A279718(n))`
-/

namespace A279716.P1266030534656555358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279718 n).toNat

end

end A279716.P1266030534656555358

/-!
# A279717: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A279717, there is no canonical definition to state claims against.
-/

/-! ## A279717.P7034477415311003441

`A007088(A279719(n))`
-/

namespace A279717.P7034477415311003441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279719 n).toNat

end

end A279717.P7034477415311003441

/-! ## A279717.P11102012218556935628

`A185544(2*A279719(n))`
-/

namespace A279717.P11102012218556935628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279719 n).toNat

end

end A279717.P11102012218556935628

/-!
# A279721: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A279721, there is no canonical definition to state claims against.
-/

/-! ## A279721.P13352766471296231490

`A010872(p?[round(8*n/7)]²)*A282297(n)`
-/

namespace A279721.P13352766471296231490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat * A282297 n

end

end A279721.P13352766471296231490

/-! ## A279721.P4891817381998194680

`A007097(n)%2*A282297(n)`
-/

namespace A279721.P4891817381998194680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007097 n) 2 * A282297 n

end

end A279721.P4891817381998194680

/-!
# A279722: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A279722, there is no canonical definition to state claims against.
-/

/-! ## A279722.P3356048673061132847

`A282267(n)-A010051(A176491(n))`
-/

namespace A279722.P3356048673061132847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282267 n - A010051 (A176491 n).toNat

end

end A279722.P3356048673061132847

/-! ## A279722.P10310185979628904113

`A282267(n)-A186747(A140186(n))`
-/

namespace A279722.P10310185979628904113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282267 n - A186747 (A140186 n).toNat

end

end A279722.P10310185979628904113

/-! ## A279722.P2905930311012148301

`A282267(n)-A185284(A326547(n))`
-/

namespace A279722.P2905930311012148301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282267 n - A185284 (A326547 n).toNat

end

end A279722.P2905930311012148301

/-! ## A279722.P7914915142471301045

`A282267(n)-A010052(A077405(n+1))`
-/

namespace A279722.P7914915142471301045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282267 n - A010052 (A077405 (n + 1)).toNat

end

end A279722.P7914915142471301045

/-! ## A279722.P5260876287643813248

`A282267(n)^A233427(n)!`
-/

namespace A279722.P5260876287643813248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282267 n ^ Nat.factorial (A233427 n).toNat

end

end A279722.P5260876287643813248

/-!
# A279723: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A279723, there is no canonical definition to state claims against.
-/

/-! ## A279723.P8918541855304288823

`A282268(n)+A185284(A186747(n))`
-/

namespace A279723.P8918541855304288823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282268 n + A185284 (A186747 n).toNat

end

end A279723.P8918541855304288823

/-! ## A279723.P4948114247458773860

`A282268(n)+A185246(A266499(n))`
-/

namespace A279723.P4948114247458773860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282268 n + A185246 (A266499 n).toNat

end

end A279723.P4948114247458773860

/-! ## A279723.P9497930885203407747

`A282268(n)+A185284(A317624(n))`
-/

namespace A279723.P9497930885203407747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282268 n + A185284 (A317624 n).toNat

end

end A279723.P9497930885203407747

/-! ## A279723.P8879199035343362612

`A282268(n)%A002907(n)`
-/

namespace A279723.P8879199035343362612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282268 n) (A002907 n)

end

end A279723.P8879199035343362612

/-! ## A279723.P4689619801401537094

`and(A282268(n), A383046(n+3))`
-/

namespace A279723.P4689619801401537094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282268 n) (A383046 (n + 3))

end

end A279723.P4689619801401537094

/-!
# A279724: Transpose of array A257943.

The programs for A279724, there is no canonical definition to state claims against.
-/

/-! ## A279724.P2786346454097458279

`A257943(A038722(n+1))`
-/

namespace A279724.P2786346454097458279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257943 (A038722 (n + 1)).toNat

end

end A279724.P2786346454097458279

/-! ## A279724.P15574620028694603867

`A257943(A061579(n)+1)`
-/

namespace A279724.P15574620028694603867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257943 (A061579 n + 1).toNat

end

end A279724.P15574620028694603867

/-! ## A279724.P15280660449980637451

`A257943(A114327(n)+1+n)`
-/

namespace A279724.P15280660449980637451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257943 (A114327 n + 1 + (n : ℤ)).toNat

end

end A279724.P15280660449980637451

/-! ## A279724.P3891558011920197016

`A257943(A093995(n+1)-n)`
-/

namespace A279724.P3891558011920197016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257943 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A279724.P3891558011920197016

/-! ## A279724.P2638490027063144930

`A257943(A002024(n+1)²-n)`
-/

namespace A279724.P2638490027063144930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257943 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A279724.P2638490027063144930

/-!
# A279726: Partial sums of A187619.

The programs for A279726, there is no canonical definition to state claims against.
-/

/-! ## A279726.P9865001887050003071

`∑[A334065(n+1)/(n+1)]`
-/

namespace A279726.P9865001887050003071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334065 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279726.P9865001887050003071

/-! ## A279726.P14255059004930847196

`A187619(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A279726.P14255059004930847196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187619 (n + 1) + a (n - 1)

end

end A279726.P14255059004930847196

/-! ## A279726.P6903184391981414466

`∑[A187619(floor(1/(n+1)+n+1))]`
-/

namespace A279726.P6903184391981414466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187619 ⌊1 / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279726.P6903184391981414466

/-! ## A279726.P6873717822839835040

`∑[lcm(2, A187619(A028310(n)+1))]`
-/

namespace A279726.P6873717822839835040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187619 (A028310 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279726.P6873717822839835040

/-! ## A279726.P17383697030420259298

`∑[A187619(n+2)]-A187619(n+2)`
-/

namespace A279726.P17383697030420259298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187619 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187619 (n + 2)

end

end A279726.P17383697030420259298

/-! ## A279726.P4900070666674837237

`∑[A343782(2*(n+1))]`
-/

namespace A279726.P4900070666674837237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343782 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279726.P4900070666674837237

/-! ## A279726.P16625559512913039009

`A000007(2*n+1)+∑[A187619(A028310(n)+1)]`
-/

namespace A279726.P16625559512913039009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187619 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279726.P16625559512913039009

/-!
# A279727: Sum of the smaller parts of the Goldbach partitions (p,q) of 2n such that all primes from p to q (inclusive) appear as a part in some Goldbach partition of p+q = 2n.

The programs for A279727, there is no canonical definition to state claims against.
-/

/-! ## A279727.P10022399454893831439

`2*(n+1)*A278700(n+1)-A279728(n+1)`
-/

namespace A279727.P10022399454893831439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A278700 (n + 1)) - A279728 (n + 1)

end

end A279727.P10022399454893831439

/-! ## A279727.P5422339450755805946

`2*(n+1)*floor(sqrt(A279315(n+1)))-A279728(n+1)`
-/

namespace A279727.P5422339450755805946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * Int.sqrt (A279315 (n + 1))) - A279728 (n + 1)

end

end A279727.P5422339450755805946

/-! ## A279727.P3493101199051324193

`A103517(n)*A278700(n+1)-A279728(n+1)`
-/

namespace A279727.P3493101199051324193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A278700 (n + 1) - A279728 (n + 1)

end

end A279727.P3493101199051324193

/-! ## A279727.P16679705082676415896

`Δ[A002378(n)]*A278700(n+1)-A279728(n+1)`
-/

namespace A279727.P16679705082676415896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279728 (n + 1)

end

end A279727.P16679705082676415896

/-! ## A279727.P2149658938390990563

`Δ[A014206(n)]*A278700(n+1)-A279728(n+1)`
-/

namespace A279727.P2149658938390990563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279728 (n + 1)

end

end A279727.P2149658938390990563

/-! ## A279727.P373817181151387535

`Δ[A027688(n)]*A278700(n+1)-A279728(n+1)`
-/

namespace A279727.P373817181151387535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279728 (n + 1)

end

end A279727.P373817181151387535

/-! ## A279727.P13225888137576522559

`Δ[A027691(n)]*A278700(n+1)-A279728(n+1)`
-/

namespace A279727.P13225888137576522559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279728 (n + 1)

end

end A279727.P13225888137576522559

/-! ## A279727.P16119446522151965146

`A279729(n+1)-A279728(n+1)`
-/

namespace A279727.P16119446522151965146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279729 (n + 1) - A279728 (n + 1)

end

end A279727.P16119446522151965146

/-!
# A279728: Sum of the larger parts of the Goldbach partitions (p,q) of 2n such that all primes from p to q (inclusive) appear as a part in some Goldbach partition of p+q = 2n.

The programs for A279728, there is no canonical definition to state claims against.
-/

/-! ## A279728.P14310966649002566023

`2*(n+1)*A278700(n+1)-A279727(n+1)`
-/

namespace A279728.P14310966649002566023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A278700 (n + 1)) - A279727 (n + 1)

end

end A279728.P14310966649002566023

/-! ## A279728.P1129274341373918284

`2*(n+1)*floor(sqrt(A279315(n+1)))-A279727(n+1)`
-/

namespace A279728.P1129274341373918284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * Int.sqrt (A279315 (n + 1))) - A279727 (n + 1)

end

end A279728.P1129274341373918284

/-! ## A279728.P10781802302906924170

`A103517(n)*A278700(n+1)-A279727(n+1)`
-/

namespace A279728.P10781802302906924170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A278700 (n + 1) - A279727 (n + 1)

end

end A279728.P10781802302906924170

/-! ## A279728.P9511921290915301009

`Δ[A002378(n)]*A278700(n+1)-A279727(n+1)`
-/

namespace A279728.P9511921290915301009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279727 (n + 1)

end

end A279728.P9511921290915301009

/-! ## A279728.P1387826736032445152

`Δ[A014206(n)]*A278700(n+1)-A279727(n+1)`
-/

namespace A279728.P1387826736032445152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279727 (n + 1)

end

end A279728.P1387826736032445152

/-! ## A279728.P3495676183392348908

`Δ[A027688(n)]*A278700(n+1)-A279727(n+1)`
-/

namespace A279728.P3495676183392348908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279727 (n + 1)

end

end A279728.P3495676183392348908

/-! ## A279728.P12093348565502314079

`Δ[A027691(n)]*A278700(n+1)-A279727(n+1)`
-/

namespace A279728.P12093348565502314079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278700 (n + 1) - A279727 (n + 1)

end

end A279728.P12093348565502314079

/-! ## A279728.P1440927422603677482

`A279729(n+1)-A279727(n+1)`
-/

namespace A279728.P1440927422603677482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279729 (n + 1) - A279727 (n + 1)

end

end A279728.P1440927422603677482

/-!
# A279729: Sum of all the parts of the Goldbach partitions (p,q) of 2n such that all primes from p to q (inclusive) appear as a part in some Goldbach partition of p+q = 2n.

The programs for A279729, there is no canonical definition to state claims against.
-/

/-! ## A279729.P7262749007915784313

`2*(n+1)*A278700(n+1)`
-/

namespace A279729.P7262749007915784313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A278700 (n + 1)

end

end A279729.P7262749007915784313

/-! ## A279729.P18009101742670890165

`A279727(n+1)+A279728(n+1)`
-/

namespace A279729.P18009101742670890165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279727 (n + 1) + A279728 (n + 1)

end

end A279729.P18009101742670890165

/-! ## A279729.P17268374884490545855

`2*(n+1)*floor(sqrt(A279315(n+1)))`
-/

namespace A279729.P17268374884490545855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * Int.sqrt (A279315 (n + 1)))

end

end A279729.P17268374884490545855

/-!
# A279730: Partial sums of A279729.

The programs for A279730, there is no canonical definition to state claims against.
-/

/-! ## A279730.P13791639769022310938

`∑[A279729(n+1)]`
-/

namespace A279730.P13791639769022310938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P13791639769022310938

/-! ## A279730.P1581183541070498341

`∑[2*(n+1)*A278700(n+1)]`
-/

namespace A279730.P1581183541070498341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A278700 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P1581183541070498341

/-! ## A279730.P10502471978529013258

`A279729(abs(1-n)+2)+a(n-1)` with `a(0)=0`
-/

namespace A279730.P10502471978529013258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A279729 (|1 - (n : ℤ)| + 2).toNat + a (n - 1)

end

end A279730.P10502471978529013258

/-! ## A279730.P14761227657413637095

`∑[2*(n+1)*floor(sqrt(A279315(n+1)))]`
-/

namespace A279730.P14761227657413637095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * Int.sqrt (A279315 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P14761227657413637095

/-! ## A279730.P6910740578172866934

`∑[A103517(n)*A278700(n+1)]`
-/

namespace A279730.P6910740578172866934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A278700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P6910740578172866934

/-! ## A279730.P9370761461061908727

`∑[Δ[A002378(n)]*A278700(n+1)]`
-/

namespace A279730.P9370761461061908727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A278700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P9370761461061908727

/-! ## A279730.P6099937476844709133

`∑[Δ[A014206(n)]*A278700(n+1)]`
-/

namespace A279730.P6099937476844709133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A278700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P6099937476844709133

/-! ## A279730.P12478910278459893053

`∑[A279728(n+1)+A279727(n+1)]`
-/

namespace A279730.P12478910278459893053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279728 (n + 1) + A279727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P12478910278459893053

/-! ## A279730.P17994883024449968175

`∑[A005843(n+1)*A278700(n+1)]`
-/

namespace A279730.P17994883024449968175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A278700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279730.P17994883024449968175

/-!
# A279731: Composite numbers whose sum of proper divisors is a power of 2.

The programs for A279731, there is no canonical definition to state claims against.
-/

/-! ## A279731.P5027247537036256142

`eq[2, A006530(A000203(n+2)-(n+2))]+2`
-/

namespace A279731.P5027247537036256142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 2) - (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A279731.P5027247537036256142

/-! ## A279731.P4315951208638403763

`eq[2, A014963(A173455(n+1))]+1`
-/

namespace A279731.P4315951208638403763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A173455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279731.P4315951208638403763

/-! ## A279731.P16036440331236944741

`eq[2, A014963(A048050(n+1)+1)]+1`
-/

namespace A279731.P16036440331236944741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048050 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279731.P16036440331236944741

/-! ## A279731.P6866115122069557095

`eq[2, A014963(A000203(n+2)-(n+2))]+2`
-/

namespace A279731.P6866115122069557095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000203 (n + 2) - (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A279731.P6866115122069557095

/-!
# A279732: Lexicographically least strictly increasing sequence such that, for any n>0, Sum_{k=1..n} a(k) can be computed without carries in factorial base.

The programs for A279732, there is no canonical definition to state claims against.
-/

/-! ## A279732.P15292117531966628085

`eq[0, A336207(n+1)]+1`
-/

namespace A279732.P15292117531966628085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279732.P15292117531966628085

/-! ## A279732.P3348707236096900190

`lt[A336207(n+1), A057427(2*n+1)]+1`
-/

namespace A279732.P3348707236096900190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A279732.P3348707236096900190

/-! ## A279732.P10612721342349885083

`record[A319694(A120213(n))]`
-/

namespace A279732.P10612721342349885083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (A120213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279732.P10612721342349885083

/-! ## A279732.P18048295041586960527

`record[A319694(A316495(n+1))]`
-/

namespace A279732.P18048295041586960527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (A316495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279732.P18048295041586960527

/-! ## A279732.P15984503370129548312

`record[A319694(A344291(n+1)+1)]`
-/

namespace A279732.P15984503370129548312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (A344291 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279732.P15984503370129548312

/-!
# A279733: Triangle read by rows which is constructed with the diagram of the triangle of A237048 and filling the empty cells with zeros.

The programs for A279733, the canonical program `A279733.P15757647906941129304` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279733 has offset 1).

The definition of A279733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279733.P12796909757223440296

`A238246(∑[A193739(n)])%2`
-/

namespace A279733.P12796909757223440296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A279733.P12796909757223440296

namespace A279733

/-- `A238246(∑[A193739(n)])%2` -/
def P12796909757223440296.Spec : Prop :=
  ∀ n, P12796909757223440296.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P5058325498501253070

`char[∑[A237591(n+1)]*A237048(n+2)]`
-/

namespace A279733.P5058325498501253070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A237048 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P5058325498501253070

namespace A279733

/-- `char[∑[A237591(n+1)]*A237048(n+2)]` -/
def P5058325498501253070.Spec : Prop :=
  ∀ n, (P5058325498501253070.a n : ℤ) = A279733 (n + 1)

end A279733

/-! ## A279733.P15929961625286416609

`A023531(∑[char[∑[n]]]²-n-A303273(n))`
-/

namespace A279733.P15929961625286416609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - A303273 n).toNat

end

end A279733.P15929961625286416609

namespace A279733

/-- `A023531(∑[char[∑[n]]]²-n-A303273(n))` -/
def P15929961625286416609.Spec : Prop :=
  ∀ n, P15929961625286416609.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P15015197662424613043

`A073424(comp[∑[n]]-(1-A095832(n+1)/2+n))`
-/

namespace A279733.P15015197662424613043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) - (1 - (A095832 (n + 1) : ℚ) / 2 + (n : ℚ)))).toNat

end

end A279733.P15015197662424613043

namespace A279733

/-- `A073424(comp[∑[n]]-(1-A095832(n+1)/2+n))` -/
def P15015197662424613043.Spec : Prop :=
  ∀ n, P15015197662424613043.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P15757647906941129304

`A023531(A061579(n)-A087401(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A279733

/-- `A023531(A061579(n)-A087401(n))` -/
def P15757647906941129304.Spec : Prop :=
  ∀ n, P15757647906941129304.a n = A279733 (n + 1)

theorem P15757647906941129304.correct : P15757647906941129304.Spec := by
  intro n
  simp only [A279733, Nat.add_sub_cancel]

end A279733

/-! ## A279733.P3692611183337727508

`char[A000217(A087401(n))-A025581(n)]`
-/

namespace A279733.P3692611183337727508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A087401 n).toNat - A025581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P3692611183337727508

namespace A279733

/-- `char[A000217(A087401(n))-A025581(n)]` -/
def P3692611183337727508.Spec : Prop :=
  ∀ n, (P3692611183337727508.a n : ℤ) = A279733 (n + 1)

end A279733

/-! ## A279733.P16846690898180042921

`char[A000217(A158822(n))-A002262(n)]`
-/

namespace A279733.P16846690898180042921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A158822 n).toNat - A002262 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P16846690898180042921

namespace A279733

/-- `char[A000217(A158822(n))-A002262(n)]` -/
def P16846690898180042921.Spec : Prop :=
  ∀ n, (P16846690898180042921.a n : ℤ) = A279733 (n + 1)

end A279733

/-! ## A279733.P10589100282291558124

`A010054(A106255(n+1)+A002262(n))`
-/

namespace A279733.P10589100282291558124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A106255 (n + 1) + A002262 n).toNat

end

end A279733.P10589100282291558124

namespace A279733

/-- `A010054(A106255(n+1)+A002262(n))` -/
def P10589100282291558124.Spec : Prop :=
  ∀ n, P10589100282291558124.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P16133833258999465576

`A073424(A106255(n+1)+A002262(n))`
-/

namespace A279733.P16133833258999465576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A106255 (n + 1) + A002262 n).toNat

end

end A279733.P16133833258999465576

namespace A279733

/-- `A073424(A106255(n+1)+A002262(n))` -/
def P16133833258999465576.Spec : Prop :=
  ∀ n, P16133833258999465576.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P18444406760093101002

`A010054(A049777(n+1)-A004247(n))`
-/

namespace A279733.P18444406760093101002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A049777 (n + 1) - A004247 n).toNat

end

end A279733.P18444406760093101002

namespace A279733

/-- `A010054(A049777(n+1)-A004247(n))` -/
def P18444406760093101002.Spec : Prop :=
  ∀ n, P18444406760093101002.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P14125419547410056262

`A073424(A049777(n+1)-A004247(n))`
-/

namespace A279733.P14125419547410056262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A049777 (n + 1) - A004247 n).toNat

end

end A279733.P14125419547410056262

namespace A279733

/-- `A073424(A049777(n+1)-A004247(n))` -/
def P14125419547410056262.Spec : Prop :=
  ∀ n, P14125419547410056262.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P12408934028563801634

`A010054(A038722(n+1)-A087401(n))`
-/

namespace A279733.P12408934028563801634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A038722 (n + 1) - A087401 n).toNat

end

end A279733.P12408934028563801634

namespace A279733

/-- `A010054(A038722(n+1)-A087401(n))` -/
def P12408934028563801634.Spec : Prop :=
  ∀ n, P12408934028563801634.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P457730478841804763

`A073424(A038722(n+1)-A087401(n))`
-/

namespace A279733.P457730478841804763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A038722 (n + 1) - A087401 n).toNat

end

end A279733.P457730478841804763

namespace A279733

/-- `A073424(A038722(n+1)-A087401(n))` -/
def P457730478841804763.Spec : Prop :=
  ∀ n, P457730478841804763.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P16227921624910252816

`char[A000217(A049780(n))-A002260(n+1)]`
-/

namespace A279733.P16227921624910252816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049780 n).toNat - A002260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P16227921624910252816

namespace A279733

/-- `char[A000217(A049780(n))-A002260(n+1)]` -/
def P16227921624910252816.Spec : Prop :=
  ∀ n, (P16227921624910252816.a n : ℤ) = A279733 (n + 1)

end A279733

/-! ## A279733.P1680441059327078709

`A035214(A049777(n+1)-A004247(n))-1`
-/

namespace A279733.P1680441059327078709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A049777 (n + 1) - A004247 n).toNat - 1

end

end A279733.P1680441059327078709

namespace A279733

/-- `A035214(A049777(n+1)-A004247(n))-1` -/
def P1680441059327078709.Spec : Prop :=
  ∀ n, P1680441059327078709.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P2695055162341279533

`A013609(A049777(n+1)-A004247(n))%2`
-/

namespace A279733.P2695055162341279533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013609 (A049777 (n + 1) - A004247 n).toNat) 2

end

end A279733.P2695055162341279533

namespace A279733

/-- `A013609(A049777(n+1)-A004247(n))%2` -/
def P2695055162341279533.Spec : Prop :=
  ∀ n, P2695055162341279533.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P10638594553287672641

`A013616(A049777(n+1)-A004247(n))%3`
-/

namespace A279733.P10638594553287672641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013616 (A049777 (n + 1) - A004247 n).toNat) 3

end

end A279733.P10638594553287672641

namespace A279733

/-- `A013616(A049777(n+1)-A004247(n))%3` -/
def P10638594553287672641.Spec : Prop :=
  ∀ n, P10638594553287672641.a n = A279733 (n + 1)

end A279733

/-! ## A279733.P1988075985760388446

`char[A000217(A049777(n+1))-A002260(n+1)]`
-/

namespace A279733.P1988075985760388446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049777 (n + 1)).toNat - A002260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P1988075985760388446

namespace A279733

/-- `char[A000217(A049777(n+1))-A002260(n+1)]` -/
def P1988075985760388446.Spec : Prop :=
  ∀ n, (P1988075985760388446.a n : ℤ) = A279733 (n + 1)

end A279733

/-! ## A279733.P5647639833916618347

`char[A000217(A141419(n+1))-A004736(n+1)]`
-/

namespace A279733.P5647639833916618347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A141419 (n + 1)).toNat - A004736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P5647639833916618347

namespace A279733

/-- `char[A000217(A141419(n+1))-A004736(n+1)]` -/
def P5647639833916618347.Spec : Prop :=
  ∀ n, (P5647639833916618347.a n : ℤ) = A279733 (n + 1)

end A279733

/-! ## A279733.P16250086095803822896

`char[A000217(A285891(n+1))-A211343(n+1)]`
-/

namespace A279733.P16250086095803822896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A285891 (n + 1)).toNat - A211343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279733.P16250086095803822896

namespace A279733

/-- `char[A000217(A285891(n+1))-A211343(n+1)]` -/
def P16250086095803822896.Spec : Prop :=
  ∀ n, (P16250086095803822896.a n : ℤ) = A279733 (n + 1)

end A279733

/-!
# A279734: Number of n X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279734, there is no canonical definition to state claims against.
-/

/-! ## A279734.P8157376732777510732

`A279741(∑[4*n]+1)`
-/

namespace A279734.P8157376732777510732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279734.P8157376732777510732

/-! ## A279734.P14824109279575519010

`A279741(A001844(n))+A025442(n)`
-/

namespace A279734.P14824109279575519010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A001844 n).toNat + A025442 n

end

end A279734.P14824109279575519010

/-! ## A279734.P15409511405995905438

`A057427(n)*A279741(A001844(n))`
-/

namespace A279734.P15409511405995905438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A279741 (A001844 n).toNat

end

end A279734.P15409511405995905438

/-! ## A279734.P6995562965032175207

`A119329(n)*A279741(A001844(n))`
-/

namespace A279734.P6995562965032175207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119329 n * A279741 (A001844 n).toNat

end

end A279734.P6995562965032175207

/-! ## A279734.P12887075959102402974

`lcm(A048766(n), A279741(A001844(n)))`
-/

namespace A279734.P12887075959102402974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048766 n) (A279741 (A001844 n).toNat)

end

end A279734.P12887075959102402974

/-!
# A279735: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279735, the canonical program `A279735.P6571742376258623597` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279735 has offset 1).

The definition of A279735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279735.P6571742376258623597

`A006367(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A279735

/-- `A006367(Δ[n²])` -/
def P6571742376258623597.Spec : Prop :=
  ∀ n, P6571742376258623597.a n = A279735 (n + 1)

theorem P6571742376258623597.correct : P6571742376258623597.Spec := by
  intro n
  simp only [A279735, Nat.add_sub_cancel]

end A279735

/-! ## A279735.P7242579462239842879

`∑[2*A059502(n)]`
-/

namespace A279735.P7242579462239842879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279735.P7242579462239842879

namespace A279735

/-- `∑[2*A059502(n)]` -/
def P7242579462239842879.Spec : Prop :=
  ∀ n, P7242579462239842879.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P10245198846941982664

`record[n%2*A006367(n)]`
-/

namespace A279735.P10245198846941982664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279735.P10245198846941982664

namespace A279735

/-- `record[n%2*A006367(n)]` -/
def P10245198846941982664.Spec : Prop :=
  ∀ n, P10245198846941982664.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P16771621515368292642

`2*(A116845(n+1)-1)`
-/

namespace A279735.P16771621515368292642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116845 (n + 1) - 1)

end

end A279735.P16771621515368292642

namespace A279735

/-- `2*(A116845(n+1)-1)` -/
def P16771621515368292642.Spec : Prop :=
  ∀ n, P16771621515368292642.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P17318082135157493043

`lcm(2, A006367(2*n+1))`
-/

namespace A279735.P17318082135157493043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A006367 (2 * n + 1))

end

end A279735.P17318082135157493043

namespace A279735

/-- `lcm(2, A006367(2*n+1))` -/
def P17318082135157493043.Spec : Prop :=
  ∀ n, (P17318082135157493043.a n : ℤ) = A279735 (n + 1)

end A279735

/-! ## A279735.P16684529124118306968

`record[A006367(A006257(n+1))]`
-/

namespace A279735.P16684529124118306968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279735.P16684529124118306968

namespace A279735

/-- `record[A006367(A006257(n+1))]` -/
def P16684529124118306968.Spec : Prop :=
  ∀ n, P16684529124118306968.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P6909144698143396164

`record[A006367(A006369(n+1))]`
-/

namespace A279735.P6909144698143396164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (A006369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279735.P6909144698143396164

namespace A279735

/-- `record[A006367(A006369(n+1))]` -/
def P6909144698143396164.Spec : Prop :=
  ∀ n, P6909144698143396164.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P14843877975865498960

`A010049(2*n)+A001906(n)`
-/

namespace A279735.P14843877975865498960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + A001906 n

end

end A279735.P14843877975865498960

namespace A279735

/-- `A010049(2*n)+A001906(n)` -/
def P14843877975865498960.Spec : Prop :=
  ∀ n, P14843877975865498960.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P1783164502928590710

`2*(A094864(n)-A001519(n))`
-/

namespace A279735.P1783164502928590710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094864 n - A001519 n)

end

end A279735.P1783164502928590710

namespace A279735

/-- `2*(A094864(n)-A001519(n))` -/
def P1783164502928590710.Spec : Prop :=
  ∀ n, P1783164502928590710.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P12040661366953137541

`record[and(A006367(n+2), A280193(n))]`
-/

namespace A279735.P12040661366953137541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006367 (n + 2)) (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279735.P12040661366953137541

namespace A279735

/-- `record[and(A006367(n+2), A280193(n))]` -/
def P12040661366953137541.Spec : Prop :=
  ∀ n, P12040661366953137541.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P2780861669833793428

`record[and(A280193(n)-1, A006367(n))]`
-/

namespace A279735.P2780861669833793428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280193 n - 1) (A006367 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279735.P2780861669833793428

namespace A279735

/-- `record[and(A280193(n)-1, A006367(n))]` -/
def P2780861669833793428.Spec : Prop :=
  ∀ n, P2780861669833793428.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P8170113201115920138

`A377866(n+2)+A000045(2*n)`
-/

namespace A279735.P8170113201115920138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377866 (n + 2) + A000045 (2 * n)

end

end A279735.P8170113201115920138

namespace A279735

/-- `A377866(n+2)+A000045(2*n)` -/
def P8170113201115920138.Spec : Prop :=
  ∀ n, P8170113201115920138.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P3543089768590023638

`A010049(2*n)+A000045(2*n)`
-/

namespace A279735.P3543089768590023638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + A000045 (2 * n)

end

end A279735.P3543089768590023638

namespace A279735

/-- `A010049(2*n)+A000045(2*n)` -/
def P3543089768590023638.Spec : Prop :=
  ∀ n, P3543089768590023638.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P11235638917616216145

`A053602(4*n)+A010049(2*n)`
-/

namespace A279735.P11235638917616216145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (4 * n) + A010049 (2 * n)

end

end A279735.P11235638917616216145

namespace A279735

/-- `A053602(4*n)+A010049(2*n)` -/
def P11235638917616216145.Spec : Prop :=
  ∀ n, P11235638917616216145.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P15485519066822574360

`A010049(2*n)+Δ[A212804(2*n)]`
-/

namespace A279735.P15485519066822574360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + (f1 (n + 1) - f1 n)

end

end A279735.P15485519066822574360

namespace A279735

/-- `A010049(2*n)+Δ[A212804(2*n)]` -/
def P15485519066822574360.Spec : Prop :=
  ∀ n, P15485519066822574360.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P10600205254282305862

`A212804(2*n+1)+A010049(2*n)`
-/

namespace A279735.P10600205254282305862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 1) + A010049 (2 * n)

end

end A279735.P10600205254282305862

namespace A279735

/-- `A212804(2*n+1)+A010049(2*n)` -/
def P10600205254282305862.Spec : Prop :=
  ∀ n, P10600205254282305862.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P1707103705976545732

`A001611(2*n)+A010049(2*n)-1`
-/

namespace A279735.P1707103705976545732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) + (A010049 (2 * n) - 1)

end

end A279735.P1707103705976545732

namespace A279735

/-- `A001611(2*n)+A010049(2*n)-1` -/
def P1707103705976545732.Spec : Prop :=
  ∀ n, P1707103705976545732.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P6031671800562721462

`A010049(2*n)-A152163(2*(n+1))`
-/

namespace A279735.P6031671800562721462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) - A152163 (2 * (n + 1))

end

end A279735.P6031671800562721462

namespace A279735

/-- `A010049(2*n)-A152163(2*(n+1))` -/
def P6031671800562721462.Spec : Prop :=
  ∀ n, P6031671800562721462.a n = A279735 (n + 1)

end A279735

/-! ## A279735.P18291161461074693638

`A094188(2*(n+1))+A078024(2*n+1)`
-/

namespace A279735.P18291161461074693638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094188 (2 * (n + 1)) + A078024 (2 * n + 1)

end

end A279735.P18291161461074693638

namespace A279735

/-- `A094188(2*(n+1))+A078024(2*n+1)` -/
def P18291161461074693638.Spec : Prop :=
  ∀ n, P18291161461074693638.a n = A279735 (n + 1)

end A279735

/-!
# A279736: Number of n X 3 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279736, there is no canonical definition to state claims against.
-/

/-! ## A279736.P8298008528757670487

`A279741(∑[n+3]+1)`
-/

namespace A279736.P8298008528757670487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279736.P8298008528757670487

/-! ## A279736.P13900330690810608730

`A324179(n+1)+A279741(A034856(n+2))`
-/

namespace A279736.P13900330690810608730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A279741 (A034856 (n + 2)).toNat

end

end A279736.P13900330690810608730

/-!
# A279737: Number of nX4 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279737, there is no canonical definition to state claims against.
-/

/-! ## A279737.P15313407773435785550

`A279741(∑[n+3]+n+4)`
-/

namespace A279737.P15313407773435785550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A279737.P15313407773435785550

/-! ## A279737.P4771945894327953013

`A279741(A055998(n+2))+char[33]`
-/

namespace A279737.P4771945894327953013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279737.P4771945894327953013

/-! ## A279737.P7987353894465653238

`A033999(n)²*A279741(Δ[A006416(n+2)])`
-/

namespace A279737.P7987353894465653238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A279741 (f1 (n + 1) - f1 n).toNat

end

end A279737.P7987353894465653238

/-! ## A279737.P15524810877520198588

`A000041(gcd(n, n+1))*A279741(A055998(n+2))`
-/

namespace A279737.P15524810877520198588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A279741 (A055998 (n + 2)).toNat

end

end A279737.P15524810877520198588

/-! ## A279737.P10339176696068740176

`A007318(A147599(n))*A279741(A055998(n+2))`
-/

namespace A279737.P10339176696068740176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A147599 n).toNat * A279741 (A055998 (n + 2)).toNat

end

end A279737.P10339176696068740176

/-!
# A279738: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279738, there is no canonical definition to state claims against.
-/

/-! ## A279738.P14311618006238263627

`A279741(A046691(n+3))`
-/

namespace A279738.P14311618006238263627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A046691 (n + 3)).toNat

end

end A279738.P14311618006238263627

/-! ## A279738.P3805927155016008318

`A279741(eq[4, A193592(n)])`
-/

namespace A279738.P3805927155016008318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279738.P3805927155016008318

/-! ## A279738.P18158000900771856375

`A279741(Δ[A023545(n+1)])`
-/

namespace A279738.P18158000900771856375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (f1 (n + 1) - f1 n).toNat

end

end A279738.P18158000900771856375

/-! ## A279738.P820253554479260639

`A279741(A052905(n+2)+1)`
-/

namespace A279738.P820253554479260639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A052905 (n + 2) + 1).toNat

end

end A279738.P820253554479260639

/-! ## A279738.P17913155451480414465

`A279741(A000217(n+5)-4)`
-/

namespace A279738.P17913155451480414465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A000217 (n + 5) - 4).toNat

end

end A279738.P17913155451480414465

/-!
# A279739: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279739, there is no canonical definition to state claims against.
-/

/-! ## A279739.P14394119815795726749

`A279741(A052905(n+3))`
-/

namespace A279739.P14394119815795726749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A052905 (n + 3)).toNat

end

end A279739.P14394119815795726749

/-! ## A279739.P17413715160784908636

`A279741(eq[3, A219347(n)])`
-/

namespace A279739.P17413715160784908636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279739.P17413715160784908636

/-! ## A279739.P16688891063578790531

`A279741(eq[5, A193592(n)])`
-/

namespace A279739.P16688891063578790531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279739.P16688891063578790531

/-! ## A279739.P8559651153026092056

`A279741(eq[8, A258709(n)])`
-/

namespace A279739.P8559651153026092056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279739.P8559651153026092056

/-! ## A279739.P4252377351321443231

`A279741(eq[16, A057728(n+1)])`
-/

namespace A279739.P4252377351321443231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279739.P4252377351321443231

/-!
# A279740: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279740, there is no canonical definition to state claims against.
-/

/-! ## A279740.P698571180909100133

`A279741(A055999(n+4))`
-/

namespace A279740.P698571180909100133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A055999 (n + 4)).toNat

end

end A279740.P698571180909100133

/-! ## A279740.P12020524420926691226

`A279741(eq[4, A219347(n)])`
-/

namespace A279740.P12020524420926691226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279740.P12020524420926691226

/-! ## A279740.P18133103460096769074

`A279741(eq[6, A193592(n)])`
-/

namespace A279740.P18133103460096769074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279740.P18133103460096769074

/-! ## A279740.P12298545743878876950

`A279741(eq[7, A200370(n+1)])`
-/

namespace A279740.P12298545743878876950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279740.P12298545743878876950

/-! ## A279740.P16864662819386093952

`A279741(eq[10, A185782(n+1)])`
-/

namespace A279740.P16864662819386093952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279740.P16864662819386093952

/-!
# A279742: Number of 2 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279742, the canonical program `A279742.P2431605558967303777` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279742 has offset 1).

The definition of A279742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279742.P2431605558967303777

`2*(A010049(n)+2*A000071(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A279742

/-- `2*(A010049(n)+2*A000071(n+1))` -/
def P2431605558967303777.Spec : Prop :=
  ∀ n, P2431605558967303777.a n = A279742 (n + 1)

theorem P2431605558967303777.correct : P2431605558967303777.Spec := by
  intro n
  simp only [A279742, Nat.add_sub_cancel]

end A279742

/-! ## A279742.P4546216022212215526

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=14, a(4)=26`
-/

namespace A279742.P4546216022212215526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 14, 26] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A279742.P4546216022212215526

namespace A279742

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P4546216022212215526.Spec : Prop :=
  ∀ n, P4546216022212215526.a n = A279742 (n + 1)

end A279742

/-! ## A279742.P9418889360818094444

`Δ[A279262(n+1)]-4`
-/

namespace A279742.P9418889360818094444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A279742.P9418889360818094444

namespace A279742

/-- `Δ[A279262(n+1)]-4` -/
def P9418889360818094444.Spec : Prop :=
  ∀ n, P9418889360818094444.a n = A279742 (n + 1)

end A279742

/-! ## A279742.P8797510896931742601

`record[Δ[A280227(n+1)]-4]`
-/

namespace A279742.P8797510896931742601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280227 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279742.P8797510896931742601

namespace A279742

/-- `record[Δ[A280227(n+1)]-4]` -/
def P8797510896931742601.Spec : Prop :=
  ∀ n, P8797510896931742601.a n = A279742 (n + 1)

end A279742

/-! ## A279742.P8766945427942080361

`Δ[2*(A029907(n)+A001911(n))]-4`
-/

namespace A279742.P8766945427942080361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029907 n + A001911 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A279742.P8766945427942080361

namespace A279742

/-- `Δ[2*(A029907(n)+A001911(n))]-4` -/
def P8766945427942080361.Spec : Prop :=
  ∀ n, P8766945427942080361.a n = A279742 (n + 1)

end A279742

/-! ## A279742.P3691194241989936171

`A279262(n+2)-(A279262(n+1)+4)`
-/

namespace A279742.P3691194241989936171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279262 (n + 2) - (A279262 (n + 1) + 4)

end

end A279742.P3691194241989936171

namespace A279742

/-- `A279262(n+2)-(A279262(n+1)+4)` -/
def P3691194241989936171.Spec : Prop :=
  ∀ n, P3691194241989936171.a n = A279742 (n + 1)

end A279742

/-!
# A279743: Number of 3Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279743, there is no canonical definition to state claims against.
-/

/-! ## A279743.P2057461286522828969

`A279741(∑[n+2]+4)`
-/

namespace A279743.P2057461286522828969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279743.P2057461286522828969

/-! ## A279743.P3441998545624417078

`A279741(A167614(n+1))+A025469(n)`
-/

namespace A279743.P3441998545624417078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A167614 (n + 1)).toNat + A025469 n

end

end A279743.P3441998545624417078

/-! ## A279743.P2778824049311328097

`A279741(A167614(n+1))+A185284(n)`
-/

namespace A279743.P2778824049311328097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A167614 (n + 1)).toNat + A185284 n

end

end A279743.P2778824049311328097

/-! ## A279743.P8637664719387331611

`A158388(n)*A279741(A167614(n+1))`
-/

namespace A279743.P8637664719387331611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A279741 (A167614 (n + 1)).toNat

end

end A279743.P8637664719387331611

/-! ## A279743.P12268308489645736075

`A279741(A167614(n+1))%A198693(n)`
-/

namespace A279743.P12268308489645736075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279741 (A167614 (n + 1)).toNat) (A198693 n)

end

end A279743.P12268308489645736075

/-!
# A279744: Number of 4Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279744, there is no canonical definition to state claims against.
-/

/-! ## A279744.P13627269758508943597

`A279741(A141214(n)+7)`
-/

namespace A279744.P13627269758508943597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A141214 n + 7).toNat

end

end A279744.P13627269758508943597

/-! ## A279744.P7003565927882529828

`A279741(A052905(n)+9)`
-/

namespace A279744.P7003565927882529828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A052905 n + 9).toNat

end

end A279744.P7003565927882529828

/-! ## A279744.P15461138603603037697

`A279741(A055999(n)+10)`
-/

namespace A279744.P15461138603603037697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A055999 n + 10).toNat

end

end A279744.P15461138603603037697

/-! ## A279744.P7212880429589786610

`A279741(A167614(n+2)+1)`
-/

namespace A279744.P7212880429589786610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A167614 (n + 2) + 1).toNat

end

end A279744.P7212880429589786610

/-! ## A279744.P5040404526117754130

`A279741(A000217(n+3)+4)`
-/

namespace A279744.P5040404526117754130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A000217 (n + 3) + 4).toNat

end

end A279744.P5040404526117754130

/-!
# A279745: Number of 5Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279745, there is no canonical definition to state claims against.
-/

/-! ## A279745.P17473372979908280758

`A279741(A056000(n)+15)`
-/

namespace A279745.P17473372979908280758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A056000 n + 15).toNat

end

end A279745.P17473372979908280758

/-! ## A279745.P15749151418227257643

`A279741(eq[7, A066657(n)])`
-/

namespace A279745.P15749151418227257643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279745.P15749151418227257643

/-! ## A279745.P3641326080998847355

`A279741(A000124(n+4)+4)`
-/

namespace A279745.P3641326080998847355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A000124 (n + 4) + 4).toNat

end

end A279745.P3641326080998847355

/-! ## A279745.P8392338552170463669

`A279741(A000096(n+3)+6)`
-/

namespace A279745.P8392338552170463669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A000096 (n + 3) + 6).toNat

end

end A279745.P8392338552170463669

/-! ## A279745.P10854498614224551305

`A279741(A000217(n+4)+5)`
-/

namespace A279745.P10854498614224551305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A000217 (n + 4) + 5).toNat

end

end A279745.P10854498614224551305

/-!
# A279746: Number of 6Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279746, there is no canonical definition to state claims against.
-/

/-! ## A279746.P9178371079382586497

`A279741(A056115(n)+21)`
-/

namespace A279746.P9178371079382586497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A056115 n + 21).toNat

end

end A279746.P9178371079382586497

/-! ## A279746.P5530471382139260556

`A279741(A046691(n+3)+10)`
-/

namespace A279746.P5530471382139260556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A046691 (n + 3) + 10).toNat

end

end A279746.P5530471382139260556

/-! ## A279746.P6475985951816445379

`A279741(A246172(n+1)+20)`
-/

namespace A279746.P6475985951816445379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A246172 (n + 1) + 20).toNat

end

end A279746.P6475985951816445379

/-! ## A279746.P12056558667620889532

`A279741(eq[5, A002262(n)]+1)`
-/

namespace A279746.P12056558667620889532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279746.P12056558667620889532

/-! ## A279746.P17884047190369694412

`A279741(eq[6, A130270(n+1)])`
-/

namespace A279746.P17884047190369694412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279746.P17884047190369694412

/-!
# A279747: Number of 7Xn 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279747, there is no canonical definition to state claims against.
-/

/-! ## A279747.P1999655341728283128

`A279741(A167487(n+5))`
-/

namespace A279747.P1999655341728283128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A167487 (n + 5)).toNat

end

end A279747.P1999655341728283128

/-! ## A279747.P14367419639964474530

`A279741(A056119(n)+28)`
-/

namespace A279747.P14367419639964474530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (A056119 n + 28).toNat

end

end A279747.P14367419639964474530

/-! ## A279747.P14905084493724212706

`A279741(eq[11, A066657(n)])`
-/

namespace A279747.P14905084493724212706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279747.P14905084493724212706

/-! ## A279747.P6404813640664806831

`A279741(eq[6, A002262(n)]+1)`
-/

namespace A279747.P6404813640664806831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279747.P6404813640664806831

/-! ## A279747.P4020149512571769987

`A279741(eq[8, A131818(n+1)])`
-/

namespace A279747.P4020149512571769987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279747.P4020149512571769987

/-!
# A279748: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A279748, there is no canonical definition to state claims against.
-/

/-! ## A279748.P16010410402988670768

`A007088(A279750(n))`
-/

namespace A279748.P16010410402988670768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279750 n).toNat

end

end A279748.P16010410402988670768

/-!
# A279749: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A279749, there is no canonical definition to state claims against.
-/

/-! ## A279749.P1961518800018018986

`A007088(A279751(n))`
-/

namespace A279749.P1961518800018018986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279751 n).toNat

end

end A279749.P1961518800018018986

/-! ## A279749.P2530890542919826282

`ratio[a(n-1)*A056830(n)]` with `a(0)=1`
-/

namespace A279749.P2530890542919826282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A056830 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A279749.P2530890542919826282

/-! ## A279749.P8705371028469397635

`record[A056830(∑{e}[n+1, #]+1)]`
-/

namespace A279749.P8705371028469397635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279749.P8705371028469397635

/-! ## A279749.P7757882738398785429

`A056830(∑[floor((n+12)/13)^n])`
-/

namespace A279749.P7757882738398785429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 12 : ℚ) / 13⌋ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279749.P7757882738398785429

/-! ## A279749.P14232229140507612254

`∑[record[A015585(∑{e}[n+1, #]+1)]]`
-/

namespace A279749.P14232229140507612254
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279749.P14232229140507612254

/-!
# A279750: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A279750, there is no canonical definition to state claims against.
-/

/-! ## A279750.P2499175701282683699

`and(A052992(n), A264618(A279751(n)))`
-/

namespace A279750.P2499175701282683699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052992 n) (A264618 (A279751 n).toNat)

end

end A279750.P2499175701282683699

/-! ## A279750.P10752853046842491699

`and(A126646(n), A264618(A279751(n)))`
-/

namespace A279750.P10752853046842491699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A279751 n).toNat)

end

end A279750.P10752853046842491699

/-! ## A279750.P7184110542603921351

`and(A264618(A279751(n)), A280147(n))`
-/

namespace A279750.P7184110542603921351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A279751 n).toNat) (A280147 n)

end

end A279750.P7184110542603921351

/-! ## A279750.P8574100066443962130

`and(A264618(A279751(n)), A284182(n))`
-/

namespace A279750.P8574100066443962130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A279751 n).toNat) (A284182 n)

end

end A279750.P8574100066443962130

/-! ## A279750.P1796744621257039619

`and(A264618(A279751(n)), A284482(n))`
-/

namespace A279750.P1796744621257039619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A279751 n).toNat) (A284482 n)

end

end A279750.P1796744621257039619

/-!
# A279751: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A279751, there is no canonical definition to state claims against.
-/

/-! ## A279751.P17439292260680426150

`A004773(2^n)`
-/

namespace A279751.P17439292260680426150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 ^ n)

end

end A279751.P17439292260680426150

/-! ## A279751.P8090235286867863759

`A042968(2^n)`
-/

namespace A279751.P8090235286867863759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (2 ^ n)

end

end A279751.P8090235286867863759

/-! ## A279751.P4395350596276271971

`A047572(2^n)`
-/

namespace A279751.P4395350596276271971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047572 (2 ^ n)

end

end A279751.P4395350596276271971

/-! ## A279751.P7683770511079546207

`A064707(2^n)`
-/

namespace A279751.P7683770511079546207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (2 ^ n)

end

end A279751.P7683770511079546207

/-! ## A279751.P918831786736407949

`A076752(2^n)`
-/

namespace A279751.P918831786736407949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (2 ^ n)

end

end A279751.P918831786736407949

/-!
# A279752: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A279752, there is no canonical definition to state claims against.
-/

/-! ## A279752.P6056907871890474568

`A007088(A279754(n))`
-/

namespace A279752.P6056907871890474568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279754 n).toNat

end

end A279752.P6056907871890474568

/-! ## A279752.P7848404677243270225

`A185544(2*A279754(n))`
-/

namespace A279752.P7848404677243270225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279754 n).toNat

end

end A279752.P7848404677243270225

/-!
# A279753: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A279753, there is no canonical definition to state claims against.
-/

/-! ## A279753.P8513892772764276059

`A007088(A279755(n))`
-/

namespace A279753.P8513892772764276059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279755 n).toNat

end

end A279753.P8513892772764276059

/-! ## A279753.P9797548614770471352

`A185544(2*A279755(n))`
-/

namespace A279753.P9797548614770471352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279755 n).toNat

end

end A279753.P9797548614770471352

/-!
# A279757: Expansion of Product_{k>=1} 1/(1 - x^(k*(2*k^2+1)/3)).

The programs for A279757, there is no canonical definition to state claims against.
-/

/-! ## A279757.P16799310730901318348

`A279223(A047563(n+1)%A238616(n+1))`
-/

namespace A279757.P16799310730901318348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279223 (Int.tmod (A047563 (n + 1)) (A238616 (n + 1))).toNat

end

end A279757.P16799310730901318348

/-! ## A279757.P8016713715937374323

`A279222(record[A052382(n+2)-A279221(n)])`
-/

namespace A279757.P8016713715937374323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 2) - A279221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279757.P8016713715937374323

/-! ## A279757.P9258419504492285822

`A003108(A047563(n+1))%A151800(A212133(n))`
-/

namespace A279757.P9258419504492285822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003108 (A047563 (n + 1)).toNat) (A151800 (A212133 n).toNat)

end

end A279757.P9258419504492285822

/-! ## A279757.P17661967187440933404

`A279222(lt[A225394(n), A216962(n+5)])`
-/

namespace A279757.P17661967187440933404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216962 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279757.P17661967187440933404

/-!
# A279758: Expansion of Product_{k>=1} 1/(1 - x^(k*(5*k^2-5*k+2)/2)).

The programs for A279758, there is no canonical definition to state claims against.
-/

/-! ## A279758.P897727403482633391

`A336313(7^A064459(n))`
-/

namespace A279758.P897727403482633391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336313 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A064459 n : ℤ))).toNat

end

end A279758.P897727403482633391

/-! ## A279758.P11390324370003322714

`A000031(A064459(n)%A259964(n+1))`
-/

namespace A279758.P11390324370003322714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (Int.tmod (A064459 n) (A259964 (n + 1))).toNat

end

end A279758.P11390324370003322714

/-! ## A279758.P7466643454429527600

`A000031(A064459(n))%A226114(n+1)`
-/

namespace A279758.P7466643454429527600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000031 (A064459 n).toNat) (A226114 (n + 1))

end

end A279758.P7466643454429527600

/-! ## A279758.P16597101720623197322

`A218550(A063948(∑[char[12*n]]))`
-/

namespace A279758.P16597101720623197322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218550 (A063948 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A279758.P16597101720623197322

/-! ## A279758.P7009475341940102982

`A096360(∑[char[12*n]]%A169633(n+4))`
-/

namespace A279758.P7009475341940102982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096360 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A169633 (n + 4))).toNat

end

end A279758.P7009475341940102982

/-! ## A279758.P10575845214148139000

`A221718(A064459(n))%A346002(n+4)`
-/

namespace A279758.P10575845214148139000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (A064459 n).toNat) (A346002 (n + 4))

end

end A279758.P10575845214148139000

/-!
# A279759: Expansion of Product_{k>=1} 1/(1 - x^(k*(3*k-1)*(3*k-2)/2)).

The programs for A279759, there is no canonical definition to state claims against.
-/

/-! ## A279759.P13904031644779890492

`round(A261921(n+1)/24)`
-/

namespace A279759.P13904031644779890492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A261921 (n + 1) : ℚ) / 24)

end

end A279759.P13904031644779890492

/-! ## A279759.P12016989094428999949

`ceil(or(n, A376306(n+4))/20)`
-/

namespace A279759.P12016989094428999949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (n : ℤ) (A376306 (n + 4)) : ℚ) / 20⌉

end

end A279759.P12016989094428999949

/-! ## A279759.P13708279405111690599

`A055642(A018142(floor(n/4)))`
-/

namespace A279759.P13708279405111690599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A018142 ⌊(n : ℚ) / 4⌋.toNat).toNat

end

end A279759.P13708279405111690599

/-! ## A279759.P17836512352556833977

`A008619(A059995(n)%A001025(n))`
-/

namespace A279759.P17836512352556833977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A059995 n) (A001025 n)).toNat

end

end A279759.P17836512352556833977

/-! ## A279759.P16215307037635180737

`gcd(A008619(A054899(n)), A337074(n))`
-/

namespace A279759.P16215307037635180737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A054899 n).toNat) (A337074 n)

end

end A279759.P16215307037635180737

/-! ## A279759.P14766077436768518398

`A179051(A004526(n)%A185341(n+1))`
-/

namespace A279759.P14766077436768518398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (Int.tmod (A004526 n) (A185341 (n + 1))).toNat

end

end A279759.P14766077436768518398

/-! ## A279759.P11441455524813827862

`A179051(A123108(n)%A185341(n+1))`
-/

namespace A279759.P11441455524813827862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (Int.tmod (A123108 n) (A185341 (n + 1))).toNat

end

end A279759.P11441455524813827862

/-! ## A279759.P9348724210843573958

`A064459(A209899(n+1))+A008619(A054899(n))`
-/

namespace A279759.P9348724210843573958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A209899 (n + 1)).toNat + A008619 (A054899 n).toNat

end

end A279759.P9348724210843573958

/-! ## A279759.P8643329006066816956

`A008621(A002266(n)%A218251(2*(n+1)))`
-/

namespace A279759.P8643329006066816956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.tmod (A002266 n) (A218251 (2 * (n + 1)))).toNat

end

end A279759.P8643329006066816956

/-! ## A279759.P14681726393989908722

`A001876(A108105(n))`
-/

namespace A279759.P14681726393989908722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A108105 n).toNat

end

end A279759.P14681726393989908722

/-!
# A279760: Expansion of Product_{k>=1} 1/(1 - x^(prime(k)^3)).

The programs for A279760, there is no canonical definition to state claims against.
-/

/-! ## A279760.P2634633733836504049

`ceil(A278929(n)/A090997(n+1))`
-/

namespace A279760.P2634633733836504049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278929 n : ℚ) / (A090997 (n + 1) : ℚ)⌉

end

end A279760.P2634633733836504049

/-! ## A279760.P17773339012285495880

`A057427(A278929(n)^A294333(n))`
-/

namespace A279760.P17773339012285495880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat

end

end A279760.P17773339012285495880

/-! ## A279760.P4245488792215134054

`1-A000007(A278929(n)^A294333(n))`
-/

namespace A279760.P4245488792215134054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat

end

end A279760.P4245488792215134054

/-! ## A279760.P13765901901363202900

`A019425(2*A278929(n)^A294333(n))`
-/

namespace A279760.P13765901901363202900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (SequenceMachineLib.roundAway (2 * (A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat

end

end A279760.P13765901901363202900

/-! ## A279760.P3172307609702449533

`A019429(2*A278929(n)^A294333(n))`
-/

namespace A279760.P3172307609702449533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (SequenceMachineLib.roundAway (2 * (A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat

end

end A279760.P3172307609702449533

/-! ## A279760.P11759969248264521010

`A004273(A278929(n)^A294333(n))%2`
-/

namespace A279760.P11759969248264521010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat) 2

end

end A279760.P11759969248264521010

/-! ## A279760.P15880541978022295578

`A056206(A278929(n)^A294333(n))%2`
-/

namespace A279760.P15880541978022295578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056206 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat) 2

end

end A279760.P15880541978022295578

/-! ## A279760.P9784186382256858966

`and(1, A160160(A278929(n)^A294333(n)))`
-/

namespace A279760.P9784186382256858966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A160160 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat)

end

end A279760.P9784186382256858966

/-! ## A279760.P7253083686362658986

`A031346(50*A278929(n)^A294333(n))`
-/

namespace A279760.P7253083686362658986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.roundAway (50 * (A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat

end

end A279760.P7253083686362658986

/-! ## A279760.P5493062482594118440

`A000040(A278929(n)^A294333(n)+1)%2`
-/

namespace A279760.P5493062482594118440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ) + 1)).toNat) 2

end

end A279760.P5493062482594118440

/-! ## A279760.P3502012126866985803

`∑{e}[A020639(A278929(n)^A294333(n)+1), #]`
-/

namespace A279760.P3502012126866985803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A279760.P3502012126866985803

/-! ## A279760.P2463986952948378310

`(A000007(A278929(n)^A294333(n))+A020639(2*n+1))%2`
-/

namespace A279760.P2463986952948378310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000007 (SequenceMachineLib.roundAway ((A278929 n : ℚ) ^ (A294333 n : ℤ))).toNat + A020639 (2 * n + 1)) 2

end

end A279760.P2463986952948378310

/-! ## A279760.P3722312599277040965

`A002828(A278929(n)²)`
-/

namespace A279760.P3722312599277040965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A278929 n ^ 2).toNat

end

end A279760.P3722312599277040965

/-!
# A279761: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(2*k^2+1)/3).

The programs for A279761, there is no canonical definition to state claims against.
-/

/-! ## A279761.P18371698574862604004

`A337679(A000108(n))+A279216(n)`
-/

namespace A279761.P18371698574862604004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337679 (A000108 n).toNat + A279216 n

end

end A279761.P18371698574862604004

/-! ## A279761.P7417924808009562915

`A345909(A326520(n))+A048720(n)`
-/

namespace A279761.P7417924808009562915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345909 (A326520 n).toNat + A048720 n

end

end A279761.P7417924808009562915

/-!
# A279762: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(5*k^2-5*k+2)/2).

The programs for A279762, there is no canonical definition to state claims against.
-/

/-! ## A279762.P179047411842919455

`A008611(A273251(n)-A144048(n))`
-/

namespace A279762.P179047411842919455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A273251 n - A144048 n).toNat

end

end A279762.P179047411842919455

/-! ## A279762.P7178741886559519751

`xor(A002264(A273251(n)), A008290(n))`
-/

namespace A279762.P7178741886559519751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002264 (A273251 n).toNat) (A008290 n)

end

end A279762.P7178741886559519751

/-!
# A279765: Primes p such that p+24 and p+48 are also primes.

The programs for A279765, there is no canonical definition to state claims against.
-/

/-! ## A279765.P4924818386149669432

`A161724(n+1)-24`
-/

namespace A279765.P4924818386149669432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161724 (n + 1) - 24

end

end A279765.P4924818386149669432

/-! ## A279765.P3550330074491349126

`abs(A161724(Δ[n²]-n)-24)`
-/

namespace A279765.P3550330074491349126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 24|

end

end A279765.P3550330074491349126

/-! ## A279765.P17710585636509060017

`record[A161724(A246694(n))-24]`
-/

namespace A279765.P17710585636509060017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161724 (A246694 n).toNat - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279765.P17710585636509060017

/-! ## A279765.P6254738793555486688

`p?[A033560(n+1)-24]`
-/

namespace A279765.P6254738793555486688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279765.P6254738793555486688

/-! ## A279765.P3989758784211748064

`∩[A000040(n+1), A033560(n+1)-24]`
-/

namespace A279765.P3989758784211748064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1) - 24

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279765.P3989758784211748064

/-! ## A279765.P15954574869289860790

`A023466(A161724(n+1))`
-/

namespace A279765.P15954574869289860790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (A161724 (n + 1)).toNat

end

end A279765.P15954574869289860790

/-! ## A279765.P1072521044238425539

`p?[A023466(A033560(n+1))]`
-/

namespace A279765.P1072521044238425539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (A033560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279765.P1072521044238425539

/-! ## A279765.P15938017809944873969

`A023468(A161724(n+1)+2)`
-/

namespace A279765.P15938017809944873969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (A161724 (n + 1) + 2).toNat

end

end A279765.P15938017809944873969

/-! ## A279765.P12034995345795681291

`A023472(A161724(n+1)+6)`
-/

namespace A279765.P12034995345795681291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A161724 (n + 1) + 6).toNat

end

end A279765.P12034995345795681291

/-!
# A279766: Number of odd digits in the decimal expansions of integers 1 to n.

The programs for A279766, the canonical program `A279766.P10527201227046318318` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279766 has offset 0).

The definition of A279766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279766.P1502004718242147933

`A117804(n+1)-A358854(n)`
-/

namespace A279766.P1502004718242147933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1) - A358854 n

end

end A279766.P1502004718242147933

namespace A279766

/-- `A117804(n+1)-A358854(n)` -/
def P1502004718242147933.Spec : Prop :=
  ∀ n, P1502004718242147933.a n = A279766 n

end A279766

/-! ## A279766.P10527201227046318318

`∑[∑{digits}[n, #%2]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A279766

/-- `∑[∑{digits}[n, #%2]]` -/
def P10527201227046318318.Spec : Prop :=
  ∀ n, (P10527201227046318318.a n : ℤ) = A279766 n

theorem P10527201227046318318.correct : P10527201227046318318.Spec := by
  intro n
  simp only [A279766]

end A279766

/-! ## A279766.P215404962178573628

`∑[∑{digits}[n, and(1, #)]]`
-/

namespace A279766.P215404962178573628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.land 1 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P215404962178573628

namespace A279766

/-- `∑[∑{digits}[n, and(1, #)]]` -/
def P215404962178573628.Spec : Prop :=
  ∀ n, (P215404962178573628.a n : ℤ) = A279766 n

theorem P215404962178573628.correct : P215404962178573628.Spec := by
  intro n
  simp only [A279766, Nat.add_sub_cancel, A279766.P215404962178573628.f2, A279766.P215404962178573628.f1, A279766.P215404962178573628.a, A279766.P10527201227046318318.f2, A279766.P10527201227046318318.f1, A279766.P10527201227046318318.a, SequenceMachineLib.memo_apply]
  try simp

end A279766

/-! ## A279766.P13348815182547458944

`∑[∑{digits}[n, 2-gcd(2, #)]]`
-/

namespace A279766.P13348815182547458944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 - (Nat.gcd 2 x : ℤ)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P13348815182547458944

namespace A279766

/-- `∑[∑{digits}[n, 2-gcd(2, #)]]` -/
def P13348815182547458944.Spec : Prop :=
  ∀ n, P13348815182547458944.a n = A279766 n

end A279766

/-! ## A279766.P16647840282085107444

`∑{digits}[n, and(1, #)]+a(n-1)` with `a(0)=0`
-/

namespace A279766.P16647840282085107444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum + a (n - 1)

end

end A279766.P16647840282085107444

namespace A279766

/-- `∑{digits}[n, and(1, #)]+a(n-1)` -/
def P16647840282085107444.Spec : Prop :=
  ∀ n, (P16647840282085107444.a n : ℤ) = A279766 n

end A279766

/-! ## A279766.P15098701060179639787

`∑[A196564(n)]`
-/

namespace A279766.P15098701060179639787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P15098701060179639787

namespace A279766

/-- `∑[A196564(n)]` -/
def P15098701060179639787.Spec : Prop :=
  ∀ n, P15098701060179639787.a n = A279766 n

end A279766

/-! ## A279766.P8224167000296582943

`∑[dr(A103181(n))]`
-/

namespace A279766.P8224167000296582943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P8224167000296582943

namespace A279766

/-- `∑[dr(A103181(n))]` -/
def P8224167000296582943.Spec : Prop :=
  ∀ n, (P8224167000296582943.a n : ℤ) = A279766 n

end A279766

/-! ## A279766.P15946372589243001373

`∑[A102675(5*n)]`
-/

namespace A279766.P15946372589243001373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P15946372589243001373

namespace A279766

/-- `∑[A102675(5*n)]` -/
def P15946372589243001373.Spec : Prop :=
  ∀ n, P15946372589243001373.a n = A279766 n

end A279766

/-! ## A279766.P14551936490304716588

`∑[A308003(n)%5]`
-/

namespace A279766.P14551936490304716588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308003 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P14551936490304716588

namespace A279766

/-- `∑[A308003(n)%5]` -/
def P14551936490304716588.Spec : Prop :=
  ∀ n, P14551936490304716588.a n = A279766 n

end A279766

/-! ## A279766.P2614467365920311646

`∑[and(3, A003132(n))]`
-/

namespace A279766.P2614467365920311646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A003132 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P2614467365920311646

namespace A279766

/-- `∑[and(3, A003132(n))]` -/
def P2614467365920311646.Spec : Prop :=
  ∀ n, P2614467365920311646.a n = A279766 n

end A279766

/-! ## A279766.P6426526883353833639

`∑[and(3, A055015(n))]`
-/

namespace A279766.P6426526883353833639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A055015 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P6426526883353833639

namespace A279766

/-- `∑[and(3, A055015(n))]` -/
def P6426526883353833639.Spec : Prop :=
  ∀ n, P6426526883353833639.a n = A279766 n

end A279766

/-! ## A279766.P8895872413715306894

`∑[∑{digits}[n, A000035(#)]]`
-/

namespace A279766.P8895872413715306894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A000035 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P8895872413715306894

namespace A279766

/-- `∑[∑{digits}[n, A000035(#)]]` -/
def P8895872413715306894.Spec : Prop :=
  ∀ n, P8895872413715306894.a n = A279766 n

end A279766

/-! ## A279766.P9795865144118816839

`∑[dr(A087380(A065031(n)))]`
-/

namespace A279766.P9795865144118816839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087380 (A065031 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279766.P9795865144118816839

namespace A279766

/-- `∑[dr(A087380(A065031(n)))]` -/
def P9795865144118816839.Spec : Prop :=
  ∀ n, (P9795865144118816839.a n : ℤ) = A279766 n

end A279766

/-!
# A279767: Numbers m such that m and m+2 have the same prime signature.

The programs for A279767, the canonical program `A279767.P17162548375068143299` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279767 has offset 1).

The definition of A279767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279767.P17162548375068143299

`A074997(n+1)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A279767

/-- `A074997(n+1)-1` -/
def P17162548375068143299.Spec : Prop :=
  ∀ n, P17162548375068143299.a n = A279767 (n + 1)

theorem P17162548375068143299.correct : P17162548375068143299.Spec := by
  intro n
  simp only [A279767, Nat.add_sub_cancel]

end A279767

/-! ## A279767.P17268195253942003332

`∪[A074460(n+1), A074998(n+1)]-1`
-/

namespace A279767.P17268195253942003332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A279767.P17268195253942003332

namespace A279767

/-- `∪[A074460(n+1), A074998(n+1)]-1` -/
def P17268195253942003332.Spec : Prop :=
  ∀ n, P17268195253942003332.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P3779032575067520977

`∩[A067888(n+1), A280382(n+1)]-1`
-/

namespace A279767.P3779032575067520977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A279767.P3779032575067520977

namespace A279767

/-- `∩[A067888(n+1), A280382(n+1)]-1` -/
def P3779032575067520977.Spec : Prop :=
  ∀ n, P3779032575067520977.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P3529572334511374

`abs(A074997(n+1)+A008683(A031386(n+1)))`
-/

namespace A279767.P3529572334511374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074997 (n + 1) + A008683 (A031386 (n + 1)).toNat|

end

end A279767.P3529572334511374

namespace A279767

/-- `abs(A074997(n+1)+A008683(A031386(n+1)))` -/
def P3529572334511374.Spec : Prop :=
  ∀ n, P3529572334511374.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P5562702568794566268

`abs(A074997(n+1)+A008683(A031393(n+1)))`
-/

namespace A279767.P5562702568794566268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074997 (n + 1) + A008683 (A031393 (n + 1)).toNat|

end

end A279767.P5562702568794566268

namespace A279767

/-- `abs(A074997(n+1)+A008683(A031393(n+1)))` -/
def P5562702568794566268.Spec : Prop :=
  ∀ n, P5562702568794566268.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P17145895004413503681

`abs(A074997(n+1)+A008683(A031394(n+1)))`
-/

namespace A279767.P17145895004413503681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074997 (n + 1) + A008683 (A031394 (n + 1)).toNat|

end

end A279767.P17145895004413503681

namespace A279767

/-- `abs(A074997(n+1)+A008683(A031394(n+1)))` -/
def P17145895004413503681.Spec : Prop :=
  ∀ n, P17145895004413503681.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P9716490274945976571

`A023443(A074997(n+1))`
-/

namespace A279767.P9716490274945976571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074997 (n + 1)).toNat

end

end A279767.P9716490274945976571

namespace A279767

/-- `A023443(A074997(n+1))` -/
def P9716490274945976571.Spec : Prop :=
  ∀ n, P9716490274945976571.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P4641430519776192607

`A004271(A074997(n+1)+1)/2`
-/

namespace A279767.P4641430519776192607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004271 (A074997 (n + 1) + 1).toNat : ℚ) / 2

end

end A279767.P4641430519776192607

namespace A279767

/-- `A004271(A074997(n+1)+1)/2` -/
def P4641430519776192607.Spec : Prop :=
  ∀ n, P4641430519776192607.a n = (A279767 (n + 1) : ℚ)

end A279767

/-! ## A279767.P10876995683178489632

`A004279(A074997(n+1)+1)/2`
-/

namespace A279767.P10876995683178489632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004279 (A074997 (n + 1) + 1).toNat : ℚ) / 2

end

end A279767.P10876995683178489632

namespace A279767

/-- `A004279(A074997(n+1)+1)/2` -/
def P10876995683178489632.Spec : Prop :=
  ∀ n, P10876995683178489632.a n = (A279767 (n + 1) : ℚ)

end A279767

/-! ## A279767.P9471936684179075349

`A004272(A074997(n+1)+2)/2`
-/

namespace A279767.P9471936684179075349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004272 (A074997 (n + 1) + 2).toNat : ℚ) / 2

end

end A279767.P9471936684179075349

namespace A279767

/-- `A004272(A074997(n+1)+2)/2` -/
def P9471936684179075349.Spec : Prop :=
  ∀ n, P9471936684179075349.a n = (A279767 (n + 1) : ℚ)

end A279767

/-! ## A279767.P519219608740670555

`eq[A265390(n+2), A265390(A028310(n))]`
-/

namespace A279767.P519219608740670555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279767.P519219608740670555

namespace A279767

/-- `eq[A265390(n+2), A265390(A028310(n))]` -/
def P519219608740670555.Spec : Prop :=
  ∀ n, (P519219608740670555.a n : ℤ) = A279767 (n + 1)

end A279767

/-! ## A279767.P10533351727892961517

`∩[A004275(A074997(n+1)), A004275(n)]/2`
-/

namespace A279767.P10533351727892961517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A074997 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A279767.P10533351727892961517

namespace A279767

/-- `∩[A004275(A074997(n+1)), A004275(n)]/2` -/
def P10533351727892961517.Spec : Prop :=
  ∀ n, P10533351727892961517.a n = (A279767 (n + 1) : ℚ)

end A279767

/-! ## A279767.P15930454521226702007

`eq[A046523(n+2), A046523(A054000(n+1)%(n+1)+1)]`
-/

namespace A279767.P15930454521226702007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A054000 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279767.P15930454521226702007

namespace A279767

/-- `eq[A046523(n+2), A046523(A054000(n+1)%(n+1)+1)]` -/
def P15930454521226702007.Spec : Prop :=
  ∀ n, (P15930454521226702007.a n : ℤ) = A279767 (n + 1)

end A279767

/-! ## A279767.P15743197591735730124

`A233583(A074997(n+1)%A017021(n))`
-/

namespace A279767.P15743197591735730124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.tmod (A074997 (n + 1)) (A017021 n)).toNat

end

end A279767.P15743197591735730124

namespace A279767

/-- `A233583(A074997(n+1)%A017021(n))` -/
def P15743197591735730124.Spec : Prop :=
  ∀ n, P15743197591735730124.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P12441628201698439544

`A233583(A074997(n+1))%A022010(n+1)`
-/

namespace A279767.P12441628201698439544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A074997 (n + 1)).toNat) (A022010 (n + 1))

end

end A279767.P12441628201698439544

namespace A279767

/-- `A233583(A074997(n+1))%A022010(n+1)` -/
def P12441628201698439544.Spec : Prop :=
  ∀ n, P12441628201698439544.a n = A279767 (n + 1)

end A279767

/-! ## A279767.P3754257975750986205

`eq[A104725(A233583(n+1)+2), A104725(n)]`
-/

namespace A279767.P3754257975750986205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A233583 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279767.P3754257975750986205

namespace A279767

/-- `eq[A104725(A233583(n+1)+2), A104725(n)]` -/
def P3754257975750986205.Spec : Prop :=
  ∀ n, (P3754257975750986205.a n : ℤ) = A279767 (n + 1)

end A279767

/-!
# A279768: Numbers n such that the sum of digits of 8n equals 16.

The programs for A279768, the canonical program `A279768.P17710633787375653040` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279768 has offset 1).

The definition of A279768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279768.P17710633787375653040

`eq[16, A004092(A008574(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A279768

/-- `eq[16, A004092(A008574(n))]` -/
def P17710633787375653040.Spec : Prop :=
  ∀ n, (P17710633787375653040.a n : ℤ) = A279768 (n + 1)

theorem P17710633787375653040.correct : P17710633787375653040.Spec := by
  intro n
  simp only [A279768, Nat.add_sub_cancel]

end A279768

/-! ## A279768.P761409157063360016

`eq[5, A099735(A004092(A008586(n)))]`
-/

namespace A279768.P761409157063360016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099735 (A004092 (A008586 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P761409157063360016

namespace A279768

/-- `eq[5, A099735(A004092(A008586(n)))]` -/
def P761409157063360016.Spec : Prop :=
  ∀ n, (P761409157063360016.a n : ℤ) = A279768 (n + 1)

end A279768

/-! ## A279768.P13869040778786089427

`eq[16, A007953(A008590(n))]`
-/

namespace A279768.P13869040778786089427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008590 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P13869040778786089427

namespace A279768

/-- `eq[16, A007953(A008590(n))]` -/
def P13869040778786089427.Spec : Prop :=
  ∀ n, (P13869040778786089427.a n : ℤ) = A279768 (n + 1)

end A279768

/-! ## A279768.P6748198029252388624

`eq[16, A007953(A022144(n))]`
-/

namespace A279768.P6748198029252388624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P6748198029252388624

namespace A279768

/-- `eq[16, A007953(A022144(n))]` -/
def P6748198029252388624.Spec : Prop :=
  ∀ n, (P6748198029252388624.a n : ℤ) = A279768 (n + 1)

end A279768

/-! ## A279768.P12563336921994314725

`eq[17, A007953(A017077(n))]`
-/

namespace A279768.P12563336921994314725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P12563336921994314725

namespace A279768

/-- `eq[17, A007953(A017077(n))]` -/
def P12563336921994314725.Spec : Prop :=
  ∀ n, (P12563336921994314725.a n : ℤ) = A279768 (n + 1)

end A279768

/-! ## A279768.P11750275101477257191

`eq[A016813(2*(n+2)), A160939(A016813(2*n))]`
-/

namespace A279768.P11750275101477257191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (A016813 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279768.P11750275101477257191

namespace A279768

/-- `eq[A016813(2*(n+2)), A160939(A016813(2*n))]` -/
def P11750275101477257191.Spec : Prop :=
  ∀ n, (P11750275101477257191.a n : ℤ) = A279768 (n + 1)

end A279768

/-!
# A279769: Numbers n such that the sum of digits of 9n is 18.

The programs for A279769, there is no canonical definition to state claims against.
-/

/-! ## A279769.P2037898695867393991

`A235228(n+1)/9`
-/

namespace A279769.P2037898695867393991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235228 (n + 1) : ℚ) / 9

end

end A279769.P2037898695867393991

/-! ## A279769.P14019768389020597162

`eq[2, A343639(n)]`
-/

namespace A279769.P14019768389020597162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279769.P14019768389020597162

/-! ## A279769.P3753053623842598805

`A106610(A235228(n+1))`
-/

namespace A279769.P3753053623842598805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A235228 (n + 1)).toNat

end

end A279769.P3753053623842598805

/-! ## A279769.P16322465356814070113

`eq[18, A007953(9*n)]`
-/

namespace A279769.P16322465356814070113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279769.P16322465356814070113

/-! ## A279769.P17250995814240130996

`eq[18, A007953(A008591(n))]%(A000389(n+5)+45)`
-/

namespace A279769.P17250995814240130996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000389 (n + 5) + 45)

end

end A279769.P17250995814240130996

/-! ## A279769.P5380680762350084413

`eq[1, A278522(A092196(9*n))]`
-/

namespace A279769.P5380680762350084413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278522 (A092196 (9 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279769.P5380680762350084413

/-! ## A279769.P3096341614858858060

`(A267759(n+1)+1)%Δ[A180385(n+2)]`
-/

namespace A279769.P3096341614858858060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267759 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A279769.P3096341614858858060

/-! ## A279769.P9867623047681163806

`eq[A059995(n), A062399(A206244(n))]+1`
-/

namespace A279769.P9867623047681163806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 (A206244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A279769.P9867623047681163806

/-! ## A279769.P1861884685384778481

`eq[2, A095827(n+1)]+1`
-/

namespace A279769.P1861884685384778481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279769.P1861884685384778481

/-! ## A279769.P7232586067030167830

`A084854(A097285((2*n+1)²))`
-/

namespace A279769.P7232586067030167830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (A097285 ((2 * n + 1) ^ 2)).toNat

end

end A279769.P7232586067030167830

/-!
# A279770: Numbers n such that the sum of digits of 7n equals 14.

The programs for A279770, there is no canonical definition to state claims against.
-/

/-! ## A279770.P854878485630733214

`∩[9*n+2, A216996(n+2)]`
-/

namespace A279770.P854878485630733214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279770.P854878485630733214

/-! ## A279770.P12060651550546613167

`∩[A216996(n+1), A017185(n)]`
-/

namespace A279770.P12060651550546613167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279770.P12060651550546613167

/-! ## A279770.P814979687428483735

`∩[A216996(n+1), A017173(n)+1]`
-/

namespace A279770.P814979687428483735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279770.P814979687428483735

/-! ## A279770.P11838296419830722916

`∩[A216996(n+1), A236653(n+1)+1]`
-/

namespace A279770.P11838296419830722916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236653 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279770.P11838296419830722916

/-! ## A279770.P1151709317507399785

`∩[A216996(n+1), A063289(n+2)]`
-/

namespace A279770.P1151709317507399785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279770.P1151709317507399785

/-! ## A279770.P18391811787772929717

`∩[A216996(n+1), A301451(n+1)+1]`
-/

namespace A279770.P18391811787772929717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279770.P18391811787772929717

/-!
# A279771: Numbers n such that the sum of digits of 11n equals 11.

The programs for A279771, there is no canonical definition to state claims against.
-/

/-! ## A279771.P820951658845321976

`A283742(n+1)/11`
-/

namespace A279771.P820951658845321976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283742 (n + 1) : ℚ) / 11

end

end A279771.P820951658845321976

/-! ## A279771.P7227388995749894312

`∩[A032945(n+1), A061880(n+1)]/11`
-/

namespace A279771.P7227388995749894312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061880 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 11

end

end A279771.P7227388995749894312

/-! ## A279771.P4215900859338035802

`eq[11, A245627(n)]`
-/

namespace A279771.P4215900859338035802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279771.P4215900859338035802

/-! ## A279771.P10717357198621478033

`A110367(A283742(n+1))`
-/

namespace A279771.P10717357198621478033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A283742 (n + 1)).toNat

end

end A279771.P10717357198621478033

/-! ## A279771.P10854712944795899933

`eq[n, A110367(A168104(n))]`
-/

namespace A279771.P10854712944795899933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A168104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279771.P10854712944795899933

/-!
# A279772: Numbers n such that the sum of digits of 2n equals 4.

The programs for A279772, there is no canonical definition to state claims against.
-/

/-! ## A279772.P7128149868490516541

`record[A273943(A052218(n+1))]`
-/

namespace A279772.P7128149868490516541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A052218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279772.P7128149868490516541

/-! ## A279772.P11824229649951422544

`∩[A017209(2*n), A028838(n+2)]/2`
-/

namespace A279772.P11824229649951422544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A279772.P11824229649951422544

/-! ## A279772.P18227766284730407320

`∩[A017209(2*n), A028839(n+2)]/2`
-/

namespace A279772.P18227766284730407320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A279772.P18227766284730407320

/-! ## A279772.P5044538210931141916

`∩[A350668(2*n+1), A028839(n+2)]/2`
-/

namespace A279772.P5044538210931141916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A279772.P5044538210931141916

/-! ## A279772.P5112437376807968825

`eq[4, A004092(n)]`
-/

namespace A279772.P5112437376807968825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279772.P5112437376807968825

/-!
# A279773: Numbers n such that the sum of digits of 3n equals 6.

The programs for A279773, there is no canonical definition to state claims against.
-/

/-! ## A279773.P17927450055376982075

`A052220(n+1)/3`
-/

namespace A279773.P17927450055376982075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052220 (n + 1) : ℚ) / 3

end

end A279773.P17927450055376982075

/-! ## A279773.P3759383717936220736

`A270264(A320701(n+1)+1)/3`
-/

namespace A279773.P3759383717936220736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270264 (A320701 (n + 1) + 1).toNat : ℚ) / 3

end

end A279773.P3759383717936220736

/-! ## A279773.P10061271833470468624

`eq[2, sqrt(A077958(∑{digits}[3*n, #]))]`
-/

namespace A279773.P10061271833470468624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077958 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A279773.P10061271833470468624

/-! ## A279773.P12146494622640301326

`eq[2, A000045(floor(∑{digits}[3*n, #]/2))]`
-/

namespace A279773.P12146494622640301326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279773.P12146494622640301326

/-! ## A279773.P13570711141915287011

`A255591(2*A052220(n+1))`
-/

namespace A279773.P13570711141915287011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (2 * A052220 (n + 1)).toNat

end

end A279773.P13570711141915287011

/-! ## A279773.P4383675194390480667

`A106610(A052220(n+1))`
-/

namespace A279773.P4383675194390480667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A052220 (n + 1)).toNat

end

end A279773.P4383675194390480667

/-! ## A279773.P1265748352636991817

`eq[6, A007953(3*n)]`
-/

namespace A279773.P1265748352636991817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279773.P1265748352636991817

/-! ## A279773.P16396633663255362954

`eq[6, A247796(3*n)]`
-/

namespace A279773.P16396633663255362954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279773.P16396633663255362954

/-! ## A279773.P11884158284764664702

`eq[12, A169805(3*n)]`
-/

namespace A279773.P11884158284764664702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279773.P11884158284764664702

/-! ## A279773.P9567917230427681127

`eq[2, val(A329562(3*n), 8)]`
-/

namespace A279773.P9567917230427681127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329562 (3 * n)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279773.P9567917230427681127

/-!
# A279774: Numbers n such that the sum of digits of 4n equals 8.

The programs for A279774, there is no canonical definition to state claims against.
-/

/-! ## A279774.P5511782467871526275

`record[A117358(2*A052222(n+1))]`
-/

namespace A279774.P5511782467871526275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A052222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279774.P5511782467871526275

/-! ## A279774.P15015541097606872540

`eq[8, A004092(2*n)]`
-/

namespace A279774.P15015541097606872540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279774.P15015541097606872540

/-! ## A279774.P14332032537804823520

`eq[8, A092383(2*n)]`
-/

namespace A279774.P14332032537804823520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092383 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279774.P14332032537804823520

/-! ## A279774.P11910911834513412708

`eq[9, A004155(2*n)]`
-/

namespace A279774.P11910911834513412708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279774.P11910911834513412708

/-! ## A279774.P12744789025153728922

`eq[8, A007953(A008574(n))]`
-/

namespace A279774.P12744789025153728922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279774.P12744789025153728922

/-!
# A279775: Numbers k such that the sum of digits of 5k equals 10.

The programs for A279775, the canonical program `A279775.P51189756934604812` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279775 has offset 1).

The definition of A279775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279775.P51189756934604812

`eq[10, A326746(5*n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A279775

/-- `eq[10, A326746(5*n)]` -/
def P51189756934604812.Spec : Prop :=
  ∀ n, (P51189756934604812.a n : ℤ) = A279775 (n + 1)

theorem P51189756934604812.correct : P51189756934604812.Spec := by
  intro n
  simp only [A279775, Nat.add_sub_cancel]

end A279775

/-! ## A279775.P2030125546661388887

`eq[5, A326746(A008587(n))-5]`
-/

namespace A279775.P2030125546661388887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A008587 n).toNat - 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279775.P2030125546661388887

namespace A279775

/-- `eq[5, A326746(A008587(n))-5]` -/
def P2030125546661388887.Spec : Prop :=
  ∀ n, (P2030125546661388887.a n : ℤ) = A279775 (n + 1)

end A279775

/-! ## A279775.P5425855526271232829

`eq[5*n, A316650(A008706(n))]`
-/

namespace A279775.P5425855526271232829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279775.P5425855526271232829

namespace A279775

/-- `eq[5*n, A316650(A008706(n))]` -/
def P5425855526271232829.Spec : Prop :=
  ∀ n, (P5425855526271232829.a n : ℤ) = A279775 (n + 1)

end A279775

/-! ## A279775.P13882620477884324829

`eq[10, A007953(5*n)]`
-/

namespace A279775.P13882620477884324829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279775.P13882620477884324829

namespace A279775

/-- `eq[10, A007953(5*n)]` -/
def P13882620477884324829.Spec : Prop :=
  ∀ n, (P13882620477884324829.a n : ℤ) = A279775 (n + 1)

end A279775

/-! ## A279775.P3992157710731258461

`eq[20, A169805(5*n)]`
-/

namespace A279775.P3992157710731258461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279775.P3992157710731258461

namespace A279775

/-- `eq[20, A169805(5*n)]` -/
def P3992157710731258461.Spec : Prop :=
  ∀ n, (P3992157710731258461.a n : ℤ) = A279775 (n + 1)

end A279775

/-!
# A279776: Numbers n such that the sum of digits of 6n equals 12.

The programs for A279776, the canonical program `A279776.P18021118608583568116` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279776 has offset 1).

The definition of A279776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279776.P18021118608583568116

`∩[2*n, A235151(n+1)]/6`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279776

/-- `∩[2*n, A235151(n+1)]/6` -/
def P18021118608583568116.Spec : Prop :=
  ∀ n, P18021118608583568116.a n = (A279776 (n + 1) : ℚ)

end A279776

/-! ## A279776.P15208621051592746473

`eq[12, A004092(3*n)]`
-/

namespace A279776.P15208621051592746473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P15208621051592746473

namespace A279776

/-- `eq[12, A004092(3*n)]` -/
def P15208621051592746473.Spec : Prop :=
  ∀ n, (P15208621051592746473.a n : ℤ) = A279776 (n + 1)

end A279776

/-! ## A279776.P15293067871098228959

`eq[13, A004155(3*n)]`
-/

namespace A279776.P15293067871098228959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P15293067871098228959

namespace A279776

/-- `eq[13, A004155(3*n)]` -/
def P15293067871098228959.Spec : Prop :=
  ∀ n, (P15293067871098228959.a n : ℤ) = A279776 (n + 1)

end A279776

/-! ## A279776.P11489286077954527313

`eq[12, A326746(6*n)]`
-/

namespace A279776.P11489286077954527313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P11489286077954527313

namespace A279776

/-- `eq[12, A326746(6*n)]` -/
def P11489286077954527313.Spec : Prop :=
  ∀ n, (P11489286077954527313.a n : ℤ) = A279776 (n + 1)

end A279776

/-! ## A279776.P8849064696748828888

`A002264(eq[12, A004092(n)])`
-/

namespace A279776.P8849064696748828888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279776.P8849064696748828888

namespace A279776

/-- `A002264(eq[12, A004092(n)])` -/
def P8849064696748828888.Spec : Prop :=
  ∀ n, P8849064696748828888.a n = A279776 (n + 1)

end A279776

/-! ## A279776.P9754417661985050112

`eq[2, A053837(6*n)]`
-/

namespace A279776.P9754417661985050112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P9754417661985050112

namespace A279776

/-- `eq[2, A053837(6*n)]` -/
def P9754417661985050112.Spec : Prop :=
  ∀ n, (P9754417661985050112.a n : ℤ) = A279776 (n + 1)

end A279776

/-! ## A279776.P108932549800863650

`eq[12, A007953(6*n)]`
-/

namespace A279776.P108932549800863650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P108932549800863650

namespace A279776

/-- `eq[12, A007953(6*n)]` -/
def P108932549800863650.Spec : Prop :=
  ∀ n, (P108932549800863650.a n : ℤ) = A279776 (n + 1)

end A279776

/-! ## A279776.P12275733955425780459

`eq[15, A136614(6*n)]`
-/

namespace A279776.P12275733955425780459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P12275733955425780459

namespace A279776

/-- `eq[15, A136614(6*n)]` -/
def P12275733955425780459.Spec : Prop :=
  ∀ n, (P12275733955425780459.a n : ℤ) = A279776 (n + 1)

end A279776

/-!
# A279777: Numbers k such that the sum of digits of 9k is 27.

The programs for A279777, there is no canonical definition to state claims against.
-/

/-! ## A279777.P7587573354290130224

`A262557(A014311(n+1))-99`
-/

namespace A279777.P7587573354290130224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A014311 (n + 1)).toNat - 99

end

end A279777.P7587573354290130224

/-! ## A279777.P7662699543709998582

`A343450(A171717(n)+8)`
-/

namespace A279777.P7662699543709998582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343450 (A171717 n + 8).toNat

end

end A279777.P7662699543709998582

/-! ## A279777.P8469740578368717626

`A343450(A032559(n+1)+7)`
-/

namespace A279777.P8469740578368717626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343450 (A032559 (n + 1) + 7).toNat

end

end A279777.P8469740578368717626

/-! ## A279777.P8906436557421694209

`A343450(A078213(n+1)+7)`
-/

namespace A279777.P8906436557421694209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343450 (A078213 (n + 1) + 7).toNat

end

end A279777.P8906436557421694209

/-!
# A279779: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 7/5.

The programs for A279779, there is no canonical definition to state claims against.
-/

/-! ## A279779.P13722419348170642777

`A279587(n)+A044941(A000079(n))`
-/

namespace A279779.P13722419348170642777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279587 n + A044941 (A000079 n).toNat

end

end A279779.P13722419348170642777

/-! ## A279779.P7083766969837574344

`A279587(n)+A239705(A024622(n))`
-/

namespace A279779.P7083766969837574344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279587 n + A239705 (A024622 n).toNat

end

end A279779.P7083766969837574344

/-! ## A279779.P16492305905070030362

`or(A011658(A000041(2*n)), A279587(n))`
-/

namespace A279779.P16492305905070030362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011658 (A000041 (2 * n)).toNat) (A279587 n)

end

end A279779.P16492305905070030362

/-! ## A279779.P12296153272228224070

`A279587(n)%A035533(n+1)`
-/

namespace A279779.P12296153272228224070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279587 n) (A035533 (n + 1))

end

end A279779.P12296153272228224070

/-! ## A279779.P2939999406433847549

`A279587(n)%A052378(A001405(n))`
-/

namespace A279779.P2939999406433847549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279587 n) (A052378 (A001405 n).toNat)

end

end A279779.P2939999406433847549

/-!
# A279780: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 8/5.

The programs for A279780, the canonical program `A279780.P8916946259894325653` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279780 has offset 0).

The definition of A279780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279780.P8916946259894325653

`A289260(n)*(-1)^n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A279780

/-- `A289260(n)*(-1)^n` -/
def P8916946259894325653.Spec : Prop :=
  ∀ n, P8916946259894325653.a n = A279780 n

theorem P8916946259894325653.correct : P8916946259894325653.Spec := by
  intro n
  simp only [A279780]

end A279780

/-! ## A279780.P17704721213318977877

`A033999(n)*A289260(n)`
-/

namespace A279780.P17704721213318977877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A289260 n

end

end A279780.P17704721213318977877

namespace A279780

/-- `A033999(n)*A289260(n)` -/
def P17704721213318977877.Spec : Prop :=
  ∀ n, P17704721213318977877.a n = A279780 n

end A279780

/-! ## A279780.P5150147194169480145

`A062157(n+1)*A289260(n)`
-/

namespace A279780.P5150147194169480145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A289260 n

end

end A279780.P5150147194169480145

namespace A279780

/-- `A062157(n+1)*A289260(n)` -/
def P5150147194169480145.Spec : Prop :=
  ∀ n, P5150147194169480145.a n = A279780 n

end A279780

/-! ## A279780.P836697370285035552

`A289260(n)/(2*A059841(n)-1)`
-/

namespace A279780.P836697370285035552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289260 n : ℚ) / (2 * A059841 n - 1 : ℚ)

end

end A279780.P836697370285035552

namespace A279780

/-- `A289260(n)/(2*A059841(n)-1)` -/
def P836697370285035552.Spec : Prop :=
  ∀ n, P836697370285035552.a n = (A279780 n : ℚ)

end A279780

/-! ## A279780.P7983145470716171403

`A054354(A054353(n+1))*A289260(n)`
-/

namespace A279780.P7983145470716171403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat * A289260 n

end

end A279780.P7983145470716171403

namespace A279780

/-- `A054354(A054353(n+1))*A289260(n)` -/
def P7983145470716171403.Spec : Prop :=
  ∀ n, P7983145470716171403.a n = A279780 n

end A279780

/-! ## A279780.P12720896370280951131

`A289260(n)/(A059841(n)-A059841(n+1))`
-/

namespace A279780.P12720896370280951131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289260 n : ℚ) / (A059841 n - A059841 (n + 1) : ℚ)

end

end A279780.P12720896370280951131

namespace A279780

/-- `A289260(n)/(A059841(n)-A059841(n+1))` -/
def P12720896370280951131.Spec : Prop :=
  ∀ n, P12720896370280951131.a n = (A279780 n : ℚ)

end A279780

/-!
# A279782: Numerator of Farey fractions sorted according to increasing k, with k = numerator^2 + denominator^2. Fractions with same k are sorted in order of increasing denominator.

The programs for A279782, there is no canonical definition to state claims against.
-/

/-! ## A279782.P14895559893538559551

`A132662(∑[A007318(n)^A034412(n+1)])`
-/

namespace A279782.P14895559893538559551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A034412 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A279782.P14895559893538559551

/-! ## A279782.P12227769519198890890

`A132662(A055645(n)+1)`
-/

namespace A279782.P12227769519198890890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (A055645 n + 1).toNat

end

end A279782.P12227769519198890890

/-! ## A279782.P17652847746065234895

`A132662(A262545(n+1)+1)`
-/

namespace A279782.P17652847746065234895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (A262545 (n + 1) + 1).toNat

end

end A279782.P17652847746065234895

/-! ## A279782.P9846606396548438319

`A132662(n+1)%A343755(2*n+5)`
-/

namespace A279782.P9846606396548438319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132662 (n + 1)) (A343755 (2 * n + 5))

end

end A279782.P9846606396548438319

/-! ## A279782.P2628267796830232031

`A132662(n+1)+A000007(A022103(n))`
-/

namespace A279782.P2628267796830232031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (n + 1) + A000007 (A022103 n).toNat

end

end A279782.P2628267796830232031

/-!
# A279783: Denominator of Farey fractions sorted according to increasing k, with k = numerator^2 + denominator^2. Fractions with same k are sorted in order of increasing denominator.

The programs for A279783, there is no canonical definition to state claims against.
-/

/-! ## A279783.P18093550249013506058

`A283303(2*n+1)+A036987(A231988(n+1))`
-/

namespace A279783.P18093550249013506058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283303 (2 * n + 1) + A036987 (A231988 (n + 1)).toNat

end

end A279783.P18093550249013506058

/-! ## A279783.P1354049722107086327

`A359160(A145604(n+1))+A283303(2*n+1)`
-/

namespace A279783.P1354049722107086327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (A145604 (n + 1)).toNat + A283303 (2 * n + 1)

end

end A279783.P1354049722107086327

/-! ## A279783.P14879564718351791934

`or(A010054(A007865(n+2)), A283303(2*n+1))`
-/

namespace A279783.P14879564718351791934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A007865 (n + 2)).toNat) (A283303 (2 * n + 1))

end

end A279783.P14879564718351791934

/-! ## A279783.P1471698150148968610

`A283303(2*n+1)^A001221(A011782(n))`
-/

namespace A279783.P1471698150148968610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283303 (2 * n + 1) : ℚ) ^ (A001221 (A011782 n).toNat : ℤ)

end

end A279783.P1471698150148968610

/-! ## A279783.P10045666921486784461

`or(A010054(A007588(n)), A283303(2*n+1))`
-/

namespace A279783.P10045666921486784461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A007588 n).toNat) (A283303 (2 * n + 1))

end

end A279783.P10045666921486784461

/-!
# A279785: Number of ways to choose a strict partition of each part of a strict partition of n.

The programs for A279785, there is no canonical definition to state claims against.
-/

/-! ## A279785.P9124767905605012546

`A000196(xor(A047775(n+1), A192663(n)))`
-/

namespace A279785.P9124767905605012546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A047775 (n + 1)) (A192663 n)).toNat

end

end A279785.P9124767905605012546

/-! ## A279785.P9356983137989205910

`A135664(A000040(n+1)*A331993(n+1))`
-/

namespace A279785.P9356983137989205910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A000040 (n + 1) * A331993 (n + 1)).toNat

end

end A279785.P9356983137989205910

/-! ## A279785.P17613054264651905034

`A003003(A000213(n))`
-/

namespace A279785.P17613054264651905034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A000213 n).toNat

end

end A279785.P17613054264651905034

/-! ## A279785.P12494879153043726586

`A160755(A025047(n))`
-/

namespace A279785.P12494879153043726586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A025047 n).toNat

end

end A279785.P12494879153043726586

/-! ## A279785.P5305322150188540552

`A227394(A127968(n))`
-/

namespace A279785.P5305322150188540552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A127968 n).toNat

end

end A279785.P5305322150188540552

/-!
# A279789: Number of ways to choose a constant partition of each part of a constant partition of n.

The programs for A279789, there is no canonical definition to state claims against.
-/

/-! ## A279789.P10224785872429314193

`A295920(2^n)`
-/

namespace A279789.P10224785872429314193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (2 ^ n)

end

end A279789.P10224785872429314193

/-! ## A279789.P4378048575135246858

`A295920(A000079(n))+char[15]`
-/

namespace A279789.P4378048575135246858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279789.P4378048575135246858

/-! ## A279789.P7579208408717330019

`(Δ[n²]-n)/(n+1)*A295920(A000225(n)+1)`
-/

namespace A279789.P7579208408717330019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) : ℚ) / (n + 1 : ℚ) * (A295920 (A000225 n + 1).toNat : ℚ)

end

end A279789.P7579208408717330019

/-! ## A279789.P5733506969914616701

`A295920(A000079(n))%A002203(n)`
-/

namespace A279789.P5733506969914616701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295920 (A000079 n).toNat) (A002203 n)

end

end A279789.P5733506969914616701

/-! ## A279789.P7087100187739002645

`gcd(A061858(n), A295920(A000079(n)))`
-/

namespace A279789.P7087100187739002645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061858 n) (A295920 (A000079 n).toNat)

end

end A279789.P7087100187739002645

/-!
# A279792: Number of Goldbach partitions (p,q) of 2n such that 0 < |p-q| < n.

The programs for A279792, there is no canonical definition to state claims against.
-/

/-! ## A279792.P10100369464864729382

`A061357(n+1)-A279794(n+1)`
-/

namespace A279792.P10100369464864729382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) - A279794 (n + 1)

end

end A279792.P10100369464864729382

/-! ## A279792.P12093244200913326127

`A004526(A002372(n+1))-A279794(n+1)`
-/

namespace A279792.P12093244200913326127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002372 (n + 1)).toNat - A279794 (n + 1)

end

end A279792.P12093244200913326127

/-! ## A279792.P13350360162012782276

`A004526(A035026(n+1))-A279794(n+1)`
-/

namespace A279792.P13350360162012782276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035026 (n + 1)).toNat - A279794 (n + 1)

end

end A279792.P13350360162012782276

/-! ## A279792.P16562036502861153620

`A002372(n+1)-(A279794(n+1)+A002375(n+1))`
-/

namespace A279792.P16562036502861153620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - (A279794 (n + 1) + A002375 (n + 1))

end

end A279792.P16562036502861153620

/-! ## A279792.P816530490917280935

`A045917(n+1)-(A279794(n+1)+A010051(n+1))`
-/

namespace A279792.P816530490917280935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - (A279794 (n + 1) + A010051 (n + 1))

end

end A279792.P816530490917280935

/-! ## A279792.P15967329826179482848

`A117929(A103517(n))-A279794(n+1)`
-/

namespace A279792.P15967329826179482848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A103517 n).toNat - A279794 (n + 1)

end

end A279792.P15967329826179482848

/-! ## A279792.P4148872883521790613

`A335225(n+1)-A257531(n+1)`
-/

namespace A279792.P4148872883521790613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335225 (n + 1) - A257531 (n + 1)

end

end A279792.P4148872883521790613

/-! ## A279792.P2869571612898040349

`A335225(n+1)-abs(A151763(n+1))`
-/

namespace A279792.P2869571612898040349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335225 (n + 1) - |A151763 (n + 1)|

end

end A279792.P2869571612898040349

/-! ## A279792.P8681087218178943766

`A335225(n+1)-A002372(n+1)%2`
-/

namespace A279792.P8681087218178943766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335225 (n + 1) - Int.tmod (A002372 (n + 1)) 2

end

end A279792.P8681087218178943766

/-! ## A279792.P10279451213808657231

`char[1]+A335225(n+1)-A010051(n+1)`
-/

namespace A279792.P10279451213808657231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A335225 (n + 1) - A010051 (n + 1))

end

end A279792.P10279451213808657231

/-!
# A279794: Number of Goldbach partitions (p,q) of 2n such that |p-q| > n.

The programs for A279794, there is no canonical definition to state claims against.
-/

/-! ## A279794.P13878760974399550029

`A061357(n+1)-A279792(n+1)`
-/

namespace A279794.P13878760974399550029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) - A279792 (n + 1)

end

end A279794.P13878760974399550029

/-! ## A279794.P11561793197350847637

`A004526(A035026(n+1))-A279792(n+1)`
-/

namespace A279794.P11561793197350847637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035026 (n + 1)).toNat - A279792 (n + 1)

end

end A279794.P11561793197350847637

/-! ## A279794.P8163483632289688011

`A002372(n+1)-(A279792(n+1)+A002375(n+1))`
-/

namespace A279794.P8163483632289688011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - (A279792 (n + 1) + A002375 (n + 1))

end

end A279794.P8163483632289688011

/-! ## A279794.P1976648920512294304

`A002375(n+1)-A335225(n+1)`
-/

namespace A279794.P1976648920512294304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A335225 (n + 1)

end

end A279794.P1976648920512294304

/-! ## A279794.P5312127645997446545

`A240708(n+1)-A335225(n+1)`
-/

namespace A279794.P5312127645997446545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240708 (n + 1) - A335225 (n + 1)

end

end A279794.P5312127645997446545

/-! ## A279794.P2339927605423906290

`A045917(1-char[1]+n)-A335225(n+1)`
-/

namespace A279794.P2339927605423906290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat - A335225 (n + 1)

end

end A279794.P2339927605423906290

/-! ## A279794.P1524262267101054915

`A110654(A002372(n+1))-A335225(n+1)`
-/

namespace A279794.P1524262267101054915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002372 (n + 1)).toNat - A335225 (n + 1)

end

end A279794.P1524262267101054915

/-! ## A279794.P363259571400202648

`A004526(A002372(n+1)+1)-A335225(n+1)`
-/

namespace A279794.P363259571400202648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002372 (n + 1) + 1).toNat - A335225 (n + 1)

end

end A279794.P363259571400202648

/-! ## A279794.P5036187066336544302

`A045917(n+1)+A159075(n)-A335225(n+1)`
-/

namespace A279794.P5036187066336544302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) + (A159075 n - A335225 (n + 1))

end

end A279794.P5036187066336544302

/-!
# A279795: Numbers n such that F(n) and F(n-2) are both prime where F(n) = A000045(n).

The programs for A279795, there is no canonical definition to state claims against.
-/

/-! ## A279795.P5704226288327813461

`A281087(n+1)+2`
-/

namespace A279795.P5704226288327813461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281087 (n + 1) + 2

end

end A279795.P5704226288327813461

/-!
# A279799: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A279799, there is no canonical definition to state claims against.
-/

/-! ## A279799.P9624301824162586933

`A007088(A279806(n))`
-/

namespace A279799.P9624301824162586933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279806 n).toNat

end

end A279799.P9624301824162586933

/-! ## A279799.P6426457712124696968

`A185544(2*A279806(n))`
-/

namespace A279799.P6426457712124696968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279806 n).toNat

end

end A279799.P6426457712124696968

/-! ## A279799.P9933192324087328404

`A279940(n)-A036362(A156952(n))`
-/

namespace A279799.P9933192324087328404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279940 n - A036362 (A156952 n).toNat

end

end A279799.P9933192324087328404

