import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A334700: Triangle read by rows: T(n,k) (n >= 1, 3 <= k <= n+2) = one-quarter of the number of k-sided cells in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter).

The programs for A334700, there is no canonical definition to state claims against.
-/

/-! ## A334700.P15144086590618933576

`A334699(n+1)/4`
-/

namespace A334700.P15144086590618933576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334699 (n + 1) : ℚ) / 4

end

end A334700.P15144086590618933576

/-! ## A334700.P17415488603506169963

`A002265(A334699(n+1))`
-/

namespace A334700.P17415488603506169963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A334699 (n + 1)).toNat

end

end A334700.P17415488603506169963

/-! ## A334700.P13565555660571725280

`A025480(A334699(n+1)+1)`
-/

namespace A334700.P13565555660571725280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A334699 (n + 1) + 1).toNat

end

end A334700.P13565555660571725280

/-! ## A334700.P18357727142041138782

`A026922(A334699(n+1)+1)`
-/

namespace A334700.P18357727142041138782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A334699 (n + 1) + 1).toNat

end

end A334700.P18357727142041138782

/-! ## A334700.P1873305753799991133

`A059169(A334699(n+1)+1)`
-/

namespace A334700.P1873305753799991133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A334699 (n + 1) + 1).toNat

end

end A334700.P1873305753799991133

/-!
# A334701: Consider the figure made up of a row of n adjacent congruent rectangles, with diagonals of all possible rectangles drawn; a(n) = number of interior vertices where exactly two lines cross.

The programs for A334701, there is no canonical definition to state claims against.
-/

/-! ## A334701.P9910724422607920881

`record[A333275(n+3)]`
-/

namespace A334701.P9910724422607920881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334701.P9910724422607920881

/-! ## A334701.P1781515976709239141

`A333275((n+1)²+2)`
-/

namespace A334701.P1781515976709239141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 ((n + 1) ^ 2 + 2)

end

end A334701.P1781515976709239141

/-! ## A334701.P10646485350259518179

`floor(A333275(A197985(n+1))+acot(n))`
-/

namespace A334701.P10646485350259518179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333275 (A197985 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A334701.P10646485350259518179

/-! ## A334701.P5353751227291684153

`A333275(A197985(n+1))+A000007(n)`
-/

namespace A334701.P5353751227291684153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (A197985 (n + 1)).toNat + A000007 n

end

end A334701.P5353751227291684153

/-! ## A334701.P17090841317289906874

`A333275(A197985(n+1))^A178334(n)`
-/

namespace A334701.P17090841317289906874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333275 (A197985 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A334701.P17090841317289906874

/-! ## A334701.P6860681263523388824

`A333275(A197985(n+1))+A008683(∑[2*n+1])`
-/

namespace A334701.P6860681263523388824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (A197985 (n + 1)).toNat + A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334701.P6860681263523388824

/-! ## A334701.P10403697147464346306

`A333275(A197985(n+1))^((n+2)%A020639(n+1))`
-/

namespace A334701.P10403697147464346306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333275 (A197985 (n + 1)).toNat : ℚ) ^ (Int.tmod (n + 2 : ℤ) (A020639 (n + 1)) : ℤ)

end

end A334701.P10403697147464346306

/-! ## A334701.P2708471139973029735

`A335682((n+1)²+(n+2)²)`
-/

namespace A334701.P2708471139973029735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335682 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A334701.P2708471139973029735

/-!
# A334702: Array read by antidiagonals: T(n,k) = binomial(n*k,3), n>=0, k>=0.

The programs for A334702, there is no canonical definition to state claims against.
-/

/-! ## A334702.P2372312522075053216

`C(A004247(n), 3)`
-/

namespace A334702.P2372312522075053216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004247 n).toNat 3

end

end A334702.P2372312522075053216

/-! ## A334702.P15414534044391139053

`C(A086460(n), 3)`
-/

namespace A334702.P15414534044391139053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086460 n).toNat 3

end

end A334702.P15414534044391139053

/-! ## A334702.P3515722622313816006

`C(A086461(n), 3)`
-/

namespace A334702.P3515722622313816006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086461 n).toNat 3

end

end A334702.P3515722622313816006

/-! ## A334702.P1823448960992196573

`C(log2(A117401(n)), 3)`
-/

namespace A334702.P1823448960992196573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A117401 n : ℝ))).toNat 3

end

end A334702.P1823448960992196573

/-! ## A334702.P12433892428656305443

`C(A077028(n)-1, 3)`
-/

namespace A334702.P12433892428656305443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077028 n - 1).toNat 3

end

end A334702.P12433892428656305443

/-! ## A334702.P4916828625861643166

`A050407(A077028(n))-1`
-/

namespace A334702.P4916828625861643166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (A077028 n).toNat - 1

end

end A334702.P4916828625861643166

/-! ## A334702.P2264852504109377853

`C(A004524(A130154(n+1)), 3)`
-/

namespace A334702.P2264852504109377853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004524 (A130154 (n + 1)).toNat).toNat 3

end

end A334702.P2264852504109377853

/-! ## A334702.P17624319849038986801

`C(A028310(1-A176270(n)), 3)`
-/

namespace A334702.P17624319849038986801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (1 - A176270 n).toNat).toNat 3

end

end A334702.P17624319849038986801

/-! ## A334702.P13127099015554684957

`C(A002262(n)*A025581(n), 3)`
-/

namespace A334702.P13127099015554684957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n * A025581 n).toNat 3

end

end A334702.P13127099015554684957

/-! ## A334702.P11650692588086977032

`C((A004736(n+1)-1)*A002262(n), 3)`
-/

namespace A334702.P11650692588086977032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((A004736 (n + 1) - 1) * A002262 n).toNat 3

end

end A334702.P11650692588086977032

/-!
# A334703: Triangle read by rows: T(n,k) = binomial(n*k,3) (0 <= k <= n).

The programs for A334703, there is no canonical definition to state claims against.
-/

/-! ## A334703.P12356726058374370323

`C(A079904(n), 3)`
-/

namespace A334703.P12356726058374370323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079904 n).toNat 3

end

end A334703.P12356726058374370323

/-! ## A334703.P579895483486139573

`C(log2(A344110(n)), 3)`
-/

namespace A334703.P579895483486139573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A344110 n : ℝ))).toNat 3

end

end A334703.P579895483486139573

/-! ## A334703.P293032367342668634

`C(∏{digits}[A329447(n), #], 3)`
-/

namespace A334703.P293032367342668634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod 3

end

end A334703.P293032367342668634

/-! ## A334703.P5171268854833220055

`C(A144204(n+1)+1, 3)`
-/

namespace A334703.P5171268854833220055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144204 (n + 1) + 1).toNat 3

end

end A334703.P5171268854833220055

/-! ## A334703.P11377951399532613592

`C(A076110(n+1)-1, 3)`
-/

namespace A334703.P11377951399532613592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076110 (n + 1) - 1).toNat 3

end

end A334703.P11377951399532613592

/-! ## A334703.P13512380593606337072

`C(A091435(∑[2*n]%comp[∑[n]]), 3)`
-/

namespace A334703.P13512380593606337072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091435 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat 3

end

end A334703.P13512380593606337072

/-! ## A334703.P4491496332309496484

`C(A091435(A061579(n)), 3)`
-/

namespace A334703.P4491496332309496484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091435 (A061579 n).toNat).toNat 3

end

end A334703.P4491496332309496484

/-! ## A334703.P10764937432858624282

`C(A004247(A245300(n)), 3)`
-/

namespace A334703.P10764937432858624282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004247 (A245300 n).toNat).toNat 3

end

end A334703.P10764937432858624282

/-! ## A334703.P789720738219469192

`∑{d}[A079904(n), A346760(#)]`
-/

namespace A334703.P789720738219469192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346760 d

end

end A334703.P789720738219469192

/-! ## A334703.P14048580883908671463

`A050407(A076110(n+1))-1`
-/

namespace A334703.P14048580883908671463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (A076110 (n + 1)).toNat - 1

end

end A334703.P14048580883908671463

/-!
# A334704: Triangle read by rows: T(n,k) (1 <= k <= n) = number of ways to choose three collinear points from an n X k grid of points.

The programs for A334704, there is no canonical definition to state claims against.
-/

/-! ## A334704.P16907531271346239502

`A334703(comp[∑[n]])-A334705(n+1)`
-/

namespace A334704.P16907531271346239502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334703 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A334705 (n + 1)

end

end A334704.P16907531271346239502

/-! ## A334704.P2551204794074812760

`A004198(A116755(n+1)+A052905(n))`
-/

namespace A334704.P2551204794074812760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A116755 (n + 1) + A052905 n).toNat

end

end A334704.P2551204794074812760

/-!
# A334705: Triangle read by rows: T(n,k) (1 <= k <= n) = number of ways to choose three points from an n X k grid of points which are the vertices of a triangle of nonzero area.

The programs for A334705, there is no canonical definition to state claims against.
-/

/-! ## A334705.P2736014408864956824

`A334703(comp[∑[n]])-A334704(n+1)`
-/

namespace A334705.P2736014408864956824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334703 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A334704 (n + 1)

end

end A334705.P2736014408864956824

/-!
# A334706: Number of collinear triples in a 4 X n rectangular grid.

The programs for A334706, the canonical program `A334706.P9278242543864298781` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334706 has offset 1).

The definition of A334706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334706.P9278242543864298781

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=4, a(1)=8, a(2)=20, a(3)=44, a(4)=84, a(5)=140, a(6)=224`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334706

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P9278242543864298781.Spec : Prop :=
  ∀ n, P9278242543864298781.a n = A334706 (n + 1)

theorem P9278242543864298781.correct : P9278242543864298781.Spec := by
  intro n
  simp only [A334706, Nat.add_sub_cancel]

end A334706

/-! ## A334706.P1351726564172980601

`4*(A131941(n)+A008747(n))`
-/

namespace A334706.P1351726564172980601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A131941 n + A008747 n)

end

end A334706.P1351726564172980601

namespace A334706

/-- `4*(A131941(n)+A008747(n))` -/
def P1351726564172980601.Spec : Prop :=
  ∀ n, P1351726564172980601.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P10874228251076895973

`4*(A242771(n+1)+A000125(n))`
-/

namespace A334706.P10874228251076895973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A242771 (n + 1) + A000125 n)

end

end A334706.P10874228251076895973

namespace A334706

/-- `4*(A242771(n+1)+A000125(n))` -/
def P10874228251076895973.Spec : Prop :=
  ∀ n, P10874228251076895973.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P16502672463832105743

`∑[A275543(n)+A004767(A002264(n))]`
-/

namespace A334706.P16502672463832105743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 n + A004767 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334706.P16502672463832105743

namespace A334706

/-- `∑[A275543(n)+A004767(A002264(n))]` -/
def P16502672463832105743.Spec : Prop :=
  ∀ n, P16502672463832105743.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P2970407118206878513

`∑[A317298(n)+A063198(A052938(n+1))]`
-/

namespace A334706.P2970407118206878513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + A063198 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334706.P2970407118206878513

namespace A334706

/-- `∑[A317298(n)+A063198(A052938(n+1))]` -/
def P2970407118206878513.Spec : Prop :=
  ∀ n, P2970407118206878513.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P8496486437141949371

`4*(A131941(n+1)-A000212(n+1))`
-/

namespace A334706.P8496486437141949371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A131941 (n + 1) - A000212 (n + 1))

end

end A334706.P8496486437141949371

namespace A334706

/-- `4*(A131941(n+1)-A000212(n+1))` -/
def P8496486437141949371.Spec : Prop :=
  ∀ n, P8496486437141949371.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P2190227119074443688

`4*(∑[A000982(n+1)]-A000212(n+1))`
-/

namespace A334706.P2190227119074443688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A000212 (n + 1))

end

end A334706.P2190227119074443688

namespace A334706

/-- `4*(∑[A000982(n+1)]-A000212(n+1))` -/
def P2190227119074443688.Spec : Prop :=
  ∀ n, P2190227119074443688.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P13972943079264166456

`∑[4*(A000982(n+1)-A322042(n+1))]`
-/

namespace A334706.P13972943079264166456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000982 (n + 1) - A322042 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334706.P13972943079264166456

namespace A334706

/-- `∑[4*(A000982(n+1)-A322042(n+1))]` -/
def P13972943079264166456.Spec : Prop :=
  ∀ n, P13972943079264166456.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P11488636749321825060

`Δ[A008747(n²)]+4*A008747(n)`
-/

namespace A334706.P11488636749321825060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * A008747 n

end

end A334706.P11488636749321825060

namespace A334706

/-- `Δ[A008747(n²)]+4*A008747(n)` -/
def P11488636749321825060.Spec : Prop :=
  ∀ n, P11488636749321825060.a n = A334706 (n + 1)

end A334706

/-! ## A334706.P13607048673466306308

`∑[4*A103221(A045944(n))]`
-/

namespace A334706.P13607048673466306308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A103221 (A045944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334706.P13607048673466306308

namespace A334706

/-- `∑[4*A103221(A045944(n))]` -/
def P13607048673466306308.Spec : Prop :=
  ∀ n, P13607048673466306308.a n = A334706 (n + 1)

end A334706

/-!
# A334707: Number of non-collinear triples in a 5 X n rectangular grid.

The programs for A334707, there is no canonical definition to state claims against.
-/

/-! ## A334707.P13610773607781778708

`record[A334705(A045918(n)+1)]`
-/

namespace A334707.P13610773607781778708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334705 (A045918 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334707.P13610773607781778708

/-! ## A334707.P30068740649580045

`record[A334705(A047842(n)+1)]`
-/

namespace A334707.P30068740649580045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334705 (A047842 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334707.P30068740649580045

/-!
# A334709: Array read by antidiagonals: T(n,k) (n>=1, k>=1) = number of ways to select four points from an n X k grid so that three of them form a triangle of nonzero area and the extra point is strictly inside the triangle.

The programs for A334709, there is no canonical definition to state claims against.
-/

/-! ## A334709.P16178262280381985847

`lcm(A053644(n), A327036(A299905(n)))`
-/

namespace A334709.P16178262280381985847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053644 n) (A327036 (A299905 n).toNat)

end

end A334709.P16178262280381985847

/-! ## A334709.P903200888191172250

`A001222(A118185(n))*A133280(A225413(n))`
-/

namespace A334709.P903200888191172250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118185 n).toNat * A133280 (A225413 n).toNat

end

end A334709.P903200888191172250

/-! ## A334709.P14333738595329580331

`4*A299905(n)%A303896(∑[n+2]+4)`
-/

namespace A334709.P14333738595329580331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A299905 n) (A303896 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A334709.P14333738595329580331

/-! ## A334709.P6420985897016957028

`A158411(A006171(n))*A299905(n)`
-/

namespace A334709.P6420985897016957028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 (A006171 n).toNat * A299905 n

end

end A334709.P6420985897016957028

/-! ## A334709.P15472795366860708997

`A008328(A353985(n+1))*A293496(n+1)`
-/

namespace A334709.P15472795366860708997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (A353985 (n + 1)).toNat * A293496 (n + 1)

end

end A334709.P15472795366860708997

/-!
# A334710: Array read by antidiagonals: T(n,k) (n>=1, k>=1) = number of ways to select four points from an n X k grid so that three of them form a triangle of nonzero area and the extra point is on one of the edges of the triangle.

The programs for A334710, there is no canonical definition to state claims against.
-/

/-! ## A334710.P8108710385872584447

`A337223(A069971(n)*A129455(n))`
-/

namespace A334710.P8108710385872584447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (A069971 n * A129455 n).toNat

end

end A334710.P8108710385872584447

/-! ## A334710.P6847183678909840845

`and(A354615(A019565(n)), A354615(n))`
-/

namespace A334710.P6847183678909840845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A354615 (A019565 n).toNat) (A354615 n)

end

end A334710.P6847183678909840845

/-! ## A334710.P9571149921803853036

`and(A091191(n+1), A117816(A032020(n)))`
-/

namespace A334710.P9571149921803853036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091191 (n + 1)) (A117816 (A032020 n).toNat)

end

end A334710.P9571149921803853036

/-! ## A334710.P5128368375704728535

`A000010(A114419(n+1))%A240284(n+1)`
-/

namespace A334710.P5128368375704728535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A114419 (n + 1)).toNat) (A240284 (n + 1))

end

end A334710.P5128368375704728535

/-! ## A334710.P7699116066485918364

`A000005(A049016(n+2))%A060540(n+1)`
-/

namespace A334710.P7699116066485918364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A049016 (n + 2)).toNat) (A060540 (n + 1))

end

end A334710.P7699116066485918364

/-!
# A334711: Array read by antidiagonals: T(n,k) (n>=1, k>=1) = number of ways to select four points from an n X k grid so that they form a convex quadrilateral.

The programs for A334711, there is no canonical definition to state claims against.
-/

/-! ## A334711.P671917876216894925

`A010439(A091378(n))`
-/

namespace A334711.P671917876216894925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (A091378 n).toNat

end

end A334711.P671917876216894925

/-! ## A334711.P11766090896910197851

`A010433(A117401(n))`
-/

namespace A334711.P11766090896910197851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010433 (A117401 n).toNat

end

end A334711.P11766090896910197851

/-! ## A334711.P4346392866169343306

`A121745(A056940(n))`
-/

namespace A334711.P4346392866169343306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121745 (A056940 n).toNat

end

end A334711.P4346392866169343306

/-! ## A334711.P12197078467317651698

`A186709(A034801(n))`
-/

namespace A334711.P12197078467317651698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186709 (A034801 n).toNat

end

end A334711.P12197078467317651698

/-! ## A334711.P8268463410247404433

`A123683(A118180(n))`
-/

namespace A334711.P8268463410247404433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123683 (A118180 n).toNat

end

end A334711.P8268463410247404433

/-!
# A334712: Number of ways to select four points from an n X n grid so that three of them form a triangle of nonzero area and the extra point is strictly inside the triangle.

The programs for A334712, there is no canonical definition to state claims against.
-/

/-! ## A334712.P10247452295976792477

`A189345(n+1)-(A334713(n+1)+A178256(n+1))-A189413(n+1)`
-/

namespace A334712.P10247452295976792477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189345 (n + 1) - (A334713 (n + 1) + A178256 (n + 1)) - A189413 (n + 1)

end

end A334712.P10247452295976792477

/-! ## A334712.P15152465684191535827

`A175383(n+1)-A189413(n+1)`
-/

namespace A334712.P15152465684191535827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175383 (n + 1) - A189413 (n + 1)

end

end A334712.P15152465684191535827

/-! ## A334712.P9957227947821257432

`A175383(n+1)%(A189413(n+1)+A151878(n))`
-/

namespace A334712.P9957227947821257432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175383 (n + 1)) (A189413 (n + 1) + A151878 n)

end

end A334712.P9957227947821257432

/-! ## A334712.P117929173473265432

`A189412(n+1)/3`
-/

namespace A334712.P117929173473265432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189412 (n + 1) : ℚ) / 3

end

end A334712.P117929173473265432

/-! ## A334712.P7438324837651389330

`(A189414(n+1)-A175383(n+1))/2`
-/

namespace A334712.P7438324837651389330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189414 (n + 1) - A175383 (n + 1) : ℚ) / 2

end

end A334712.P7438324837651389330

/-!
# A334713: Number of ways to select four points from an n X n grid so that three of them form a triangle of nonzero area and the extra point is on one of the edges of the triangle.

The programs for A334713, there is no canonical definition to state claims against.
-/

/-! ## A334713.P18129147611194212202

`A189345(n+1)-(A178256(n+1)+A175383(n+1))`
-/

namespace A334713.P18129147611194212202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189345 (n + 1) - (A178256 (n + 1) + A175383 (n + 1))

end

end A334713.P18129147611194212202

/-!
# A334714: Partial sums of A335294.

The programs for A334714, the canonical program `A334714.P8757616556626411084` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334714 has offset 1).

The definition of A334714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334714.P12494069423995829302

`∑[A335294(n+1)]`
-/

namespace A334714.P12494069423995829302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334714.P12494069423995829302

namespace A334714

/-- `∑[A335294(n+1)]` -/
def P12494069423995829302.Spec : Prop :=
  ∀ n, P12494069423995829302.a n = A334714 (n + 1)

end A334714

/-! ## A334714.P14759620551906723934

`1-A335660(n+1)+n`
-/

namespace A334714.P14759620551906723934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A335660 (n + 1) + (n : ℤ)

end

end A334714.P14759620551906723934

namespace A334714

/-- `1-A335660(n+1)+n` -/
def P14759620551906723934.Spec : Prop :=
  ∀ n, P14759620551906723934.a n = A334714 (n + 1)

end A334714

/-! ## A334714.P4613161224348445501

`A024000(A335660(n+1))+n`
-/

namespace A334714.P4613161224348445501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A335660 (n + 1)).toNat + (n : ℤ)

end

end A334714.P4613161224348445501

namespace A334714

/-- `A024000(A335660(n+1))+n` -/
def P4613161224348445501.Spec : Prop :=
  ∀ n, P4613161224348445501.a n = A334714 (n + 1)

end A334714

/-! ## A334714.P8757616556626411084

`A062298(a(n-1))+A000720(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334714

/-- `A062298(a(n-1))+A000720(n+1)` -/
def P8757616556626411084.Spec : Prop :=
  ∀ n, P8757616556626411084.a n = A334714 (n + 1)

theorem P8757616556626411084.correct : P8757616556626411084.Spec := by
  intro n
  simp only [A334714, Nat.add_sub_cancel]

end A334714

/-! ## A334714.P11849506749273536971

`A000720(n+1)+a(n-1)-A230980(a(n-1))` with `a(0)=1`
-/

namespace A334714.P11849506749273536971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000720 (n + 1) + a (n - 1) - A230980 (a (n - 1)).toNat

end

end A334714.P11849506749273536971

namespace A334714

/-- `A000720(n+1)+a(n-1)-A230980(a(n-1))` -/
def P11849506749273536971.Spec : Prop :=
  ∀ n, P11849506749273536971.a n = A334714 (n + 1)

end A334714

/-! ## A334714.P9826042231024521364

`A004736(A335660(n+1)+A167614(n+1))`
-/

namespace A334714.P9826042231024521364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A335660 (n + 1) + A167614 (n + 1)).toNat

end

end A334714.P9826042231024521364

namespace A334714

/-- `A004736(A335660(n+1)+A167614(n+1))` -/
def P9826042231024521364.Spec : Prop :=
  ∀ n, P9826042231024521364.a n = A334714 (n + 1)

end A334714

/-!
# A334716: a(n) = !n + n * n!, where !n = A000166(n) is subfactorial of n.

The programs for A334716, the canonical program `A334716.P14988388449803785155` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334716 has offset 0).

The definition of A334716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334716.P14988388449803785155

`A000166(n)+A001563(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334716

/-- `A000166(n)+A001563(n)` -/
def P14988388449803785155.Spec : Prop :=
  ∀ n, P14988388449803785155.a n = A334716 n

theorem P14988388449803785155.correct : P14988388449803785155.Spec := by
  intro n
  simp only [A334716]

end A334716

/-! ## A334716.P16081905506455463735

`xor(1, n*a(n-1))+n!` with `a(0)=1`
-/

namespace A334716.P16081905506455463735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * a (n - 1)) + Nat.factorial n

end

end A334716.P16081905506455463735

namespace A334716

/-- `xor(1, n*a(n-1))+n!` -/
def P16081905506455463735.Spec : Prop :=
  ∀ n, (P16081905506455463735.a n : ℤ) = A334716 n

end A334716

/-! ## A334716.P3447119628819210062

`n!+n*a(n-1)+1-2*n%2` with `a(0)=1`
-/

namespace A334716.P3447119628819210062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℤ) + ((n : ℤ) * a (n - 1) + (1 - ((2 * (n % 2) : ℕ) : ℤ)))

end

end A334716.P3447119628819210062

namespace A334716

/-- `n!+n*a(n-1)+1-2*n%2` -/
def P3447119628819210062.Spec : Prop :=
  ∀ n, P3447119628819210062.a n = A334716 n

end A334716

/-! ## A334716.P3173846830319160127

`(n+1)!-A002467(n)`
-/

namespace A334716.P3173846830319160127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A002467 n

end

end A334716.P3173846830319160127

namespace A334716

/-- `(n+1)!-A002467(n)` -/
def P3173846830319160127.Spec : Prop :=
  ∀ n, P3173846830319160127.a n = A334716 n

end A334716

/-! ## A334716.P14611087366856519945

`A008290(∑[n])+Δ[n!]`
-/

namespace A334716.P14611087366856519945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A334716.P14611087366856519945

namespace A334716

/-- `A008290(∑[n])+Δ[n!]` -/
def P14611087366856519945.Spec : Prop :=
  ∀ n, P14611087366856519945.a n = A334716 n

end A334716

/-! ## A334716.P4992060511080304140

`(n+1)!-A306015(∑[n])`
-/

namespace A334716.P4992060511080304140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A306015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334716.P4992060511080304140

namespace A334716

/-- `(n+1)!-A306015(∑[n])` -/
def P4992060511080304140.Spec : Prop :=
  ∀ n, P4992060511080304140.a n = A334716 n

end A334716

/-! ## A334716.P1777610801468696025

`A000142(n)+xor(1, n*a(n-1))` with `a(0)=1`
-/

namespace A334716.P1777610801468696025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000142 n + Int.xor 1 ((n : ℤ) * a (n - 1))

end

end A334716.P1777610801468696025

namespace A334716

/-- `A000142(n)+xor(1, n*a(n-1))` -/
def P1777610801468696025.Spec : Prop :=
  ∀ n, P1777610801468696025.a n = A334716 n

end A334716

/-! ## A334716.P17085106006027445957

`A000166(n)+Δ[A000142(n)]`
-/

namespace A334716.P17085106006027445957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (f1 (n + 1) - f1 n)

end

end A334716.P17085106006027445957

namespace A334716

/-- `A000166(n)+Δ[A000142(n)]` -/
def P17085106006027445957.Spec : Prop :=
  ∀ n, P17085106006027445957.a n = A334716 n

end A334716

/-! ## A334716.P9984213659652150798

`A000142(n+1)-A002467(n)`
-/

namespace A334716.P9984213659652150798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A002467 n

end

end A334716.P9984213659652150798

namespace A334716

/-- `A000142(n+1)-A002467(n)` -/
def P9984213659652150798.Spec : Prop :=
  ∀ n, P9984213659652150798.a n = A334716 n

end A334716

/-! ## A334716.P1299217518168362148

`A094304(n+2)+A000166(n)`
-/

namespace A334716.P1299217518168362148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 2) + A000166 n

end

end A334716.P1299217518168362148

namespace A334716

/-- `A094304(n+2)+A000166(n)` -/
def P1299217518168362148.Spec : Prop :=
  ∀ n, P1299217518168362148.a n = A334716 n

end A334716

/-!
# A334717: Largest possible short leg length of a Pythagorean triangle with perimeter A010814(n).

The programs for A334717, there is no canonical definition to state claims against.
-/

/-! ## A334717.P2654262541965252065

`A103605(eq[A073636(n+3), A336569(2*n+5)])`
-/

namespace A334717.P2654262541965252065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073636 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336569 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103605 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334717.P2654262541965252065

/-!
# A334718: Largest possible long leg length of a Pythagorean triangle with perimeter A010814(n).

The programs for A334718, there is no canonical definition to state claims against.
-/

/-! ## A334718.P4118580873118596761

`A005279(n+1)-A053629(n+1)`
-/

namespace A334718.P4118580873118596761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) - A053629 (n + 1)

end

end A334718.P4118580873118596761

/-! ## A334718.P14383721115103258400

`A343281(n+1)-A053629(n+1)`
-/

namespace A334718.P14383721115103258400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (n + 1) - A053629 (n + 1)

end

end A334718.P14383721115103258400

/-! ## A334718.P10409062722207748651

`A010814(n+1)/2-A053629(n+1)`
-/

namespace A334718.P10409062722207748651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010814 (n + 1) : ℚ) / 2 - (A053629 (n + 1) : ℚ)

end

end A334718.P10409062722207748651

/-! ## A334718.P11732468004855088592

`ceil(A136000(n+1)/2)-A053629(n+1)`
-/

namespace A334718.P11732468004855088592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136000 (n + 1) : ℚ) / 2⌉ - A053629 (n + 1)

end

end A334718.P11732468004855088592

/-! ## A334718.P3642884400424090530

`comp[C(A053626(n+1), n)]-A053629(n+1)`
-/

namespace A334718.P3642884400424090530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053626 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A053629 (n + 1)

end

end A334718.P3642884400424090530

/-! ## A334718.P18058216029849205855

`comp[C(A053627(n+1), n)]-A053629(n+1)`
-/

namespace A334718.P18058216029849205855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053627 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A053629 (n + 1)

end

end A334718.P18058216029849205855

/-! ## A334718.P9845685479243359290

`A001281(A010814(n+1))-A053629(n+1)`
-/

namespace A334718.P9845685479243359290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A010814 (n + 1)).toNat - A053629 (n + 1)

end

end A334718.P9845685479243359290

/-! ## A334718.P18266026440279836698

`A000463(A136000(n+1))-A053629(n+1)`
-/

namespace A334718.P18266026440279836698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A136000 (n + 1)).toNat - A053629 (n + 1)

end

end A334718.P18266026440279836698

/-! ## A334718.P6620724170988513474

`A005279(n+1)-A053626(A343281(n+1))`
-/

namespace A334718.P6620724170988513474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) - A053626 (A343281 (n + 1)).toNat

end

end A334718.P6620724170988513474

/-! ## A334718.P979611132608574451

`A010814(n+1)-(A334678(n+1)+A053628(n+1))`
-/

namespace A334718.P979611132608574451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) - (A334678 (n + 1) + A053628 (n + 1))

end

end A334718.P979611132608574451

/-!
# A334719: a(n) is the total number of down-steps after the final up-step in all 4-Dyck paths of length 5*n (n up-steps and 4*n down-steps).

The programs for A334719, there is no canonical definition to state claims against.
-/

/-! ## A334719.P1281645781613955272

`Δ[A002294(n)]`
-/

namespace A334719.P1281645781613955272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P1281645781613955272

/-! ## A334719.P6783235206591008382

`Δ[A143546(2*n)]`
-/

namespace A334719.P6783235206591008382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P6783235206591008382

/-! ## A334719.P11911781311730334780

`Δ[A118968(4*n)]`
-/

namespace A334719.P11911781311730334780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P11911781311730334780

/-! ## A334719.P11939719518051733781

`A002294(n+1)-A002294(n)`
-/

namespace A334719.P11939719518051733781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 (n + 1) - A002294 n

end

end A334719.P11939719518051733781

/-! ## A334719.P9090994678414415058

`Δ[A005408(n)/A016861(n)*A118969(n)]`
-/

namespace A334719.P9090994678414415058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A016861 n : ℚ) * (A118969 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P9090994678414415058

/-! ## A334719.P4002875886392394300

`Δ[A001449(n)/A016813(n)]`
-/

namespace A334719.P4002875886392394300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (A016813 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P4002875886392394300

/-! ## A334719.P13154150747208070008

`Δ[A079589(n)/A016861(n)]`
-/

namespace A334719.P13154150747208070008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079589 n : ℚ) / (A016861 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P13154150747208070008

/-! ## A334719.P3906536625660141878

`Δ[gcd(A001449(n), A079589(n))]`
-/

namespace A334719.P3906536625660141878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001449 n) (A079589 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A334719.P3906536625660141878

/-! ## A334719.P15085365082378394430

`Δ[A001449(n)/Δ[A000384(n)]]`
-/

namespace A334719.P15085365082378394430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P15085365082378394430

/-! ## A334719.P9415516693065392368

`Δ[A001449(n)/(A016861(n)-n)]`
-/

namespace A334719.P9415516693065392368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (A016861 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334719.P9415516693065392368

/-!
# A334720: Number of 2-dimensional closed-loop self-avoiding paths on a square lattice where each path consists of steps with incrementing length from 1 to n.

The programs for A334720, there is no canonical definition to state claims against.
-/

/-! ## A334720.P6637520752653795970

`A308771(A047909(n+2))`
-/

namespace A334720.P6637520752653795970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308771 (A047909 (n + 2)).toNat

end

end A334720.P6637520752653795970

/-! ## A334720.P10803416135740671816

`and(56, A025638(A001519(n)))`
-/

namespace A334720.P10803416135740671816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 56 (A025638 (A001519 n).toNat)

end

end A334720.P10803416135740671816

/-! ## A334720.P15208282349903282912

`and(56, A326518(A001404(n)))`
-/

namespace A334720.P15208282349903282912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 56 (A326518 (A001404 n).toNat)

end

end A334720.P15208282349903282912

/-! ## A334720.P16315903111234941746

`and(56, A296561(A256969(n)))`
-/

namespace A334720.P16315903111234941746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 56 (A296561 (A256969 n).toNat)

end

end A334720.P16315903111234941746

/-! ## A334720.P3415611584865085036

`and(A008574(n), A325106(A221494(n)))`
-/

namespace A334720.P3415611584865085036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008574 n) (A325106 (A221494 n).toNat)

end

end A334720.P3415611584865085036

/-!
# A334721: Denominator of the product of n and the n-th harmonic alternating number, Sum_{k=1..n} (-1)^(k+1)/k.

The programs for A334721, there is no canonical definition to state claims against.
-/

/-! ## A334721.P4315720838122751520

`A058312(n)/gcd(n+1, a(n-1))` with `a(0)=1`
-/

namespace A334721.P4315720838122751520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A058312 n : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A334721.P4315720838122751520

/-! ## A334721.P1750692569508311390

`lcm(n+1, A058312(n+1))/(n+1)`
-/

namespace A334721.P1750692569508311390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A058312 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A334721.P1750692569508311390

/-! ## A334721.P9761352897895657979

`A000142(n)/gcd(A000142(n), A024167(n+1))`
-/

namespace A334721.P9761352897895657979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A024167 (n + 1)) : ℚ)

end

end A334721.P9761352897895657979

/-! ## A334721.P11530507995626584148

`A043529(n)*A115389(n+1)`
-/

namespace A334721.P11530507995626584148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A115389 (n + 1)

end

end A334721.P11530507995626584148

/-! ## A334721.P16028771819536088279

`lcm(A082908(n), A115389(n+1))`
-/

namespace A334721.P16028771819536088279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082908 n) (A115389 (n + 1))

end

end A334721.P16028771819536088279

/-!
# A334724: Denominator of the sum of all elements of the n X n matrix M with M[i,j] = (-1)^(i+j)*i/j for i,j = 1..n.

The programs for A334724, there is no canonical definition to state claims against.
-/

/-! ## A334724.P9563129809051537837

`lcm(A008619(n), A058312(n+1))/A008619(n)`
-/

namespace A334724.P9563129809051537837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008619 n) (A058312 (n + 1)) : ℚ) / (A008619 n : ℚ)

end

end A334724.P9563129809051537837

/-! ## A334724.P15159744063370032228

`A058312(n+1)/gcd(A058312(n+1), A065033(n+1))`
-/

namespace A334724.P15159744063370032228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 1) : ℚ) / (Int.gcd (A058312 (n + 1)) (A065033 (n + 1)) : ℚ)

end

end A334724.P15159744063370032228

/-! ## A334724.P12915598702456894778

`A000027(floor(A058312(n+1)/A008619(n)))`
-/

namespace A334724.P12915598702456894778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A058312 (n + 1) : ℚ) / (A008619 n : ℚ)⌋.toNat

end

end A334724.P12915598702456894778

/-! ## A334724.P9131132044303587426

`A000027(ceil(A058312(n+1)/A008619(n)))`
-/

namespace A334724.P9131132044303587426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈(A058312 (n + 1) : ℚ) / (A008619 n : ℚ)⌉.toNat

end

end A334724.P9131132044303587426

/-! ## A334724.P3461927209535342913

`A000027(A058312(n+1))/A008619(n)`
-/

namespace A334724.P3461927209535342913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A058312 (n + 1)).toNat : ℚ) / (A008619 n : ℚ)

end

end A334724.P3461927209535342913

/-!
# A334725: Irregular table read by row: the n-th row gives values of successively iterating phi, phi and sigma, starting with the initial value n, until the value 1 is reached. If 1 is never reached, row n contains n, -1.

The programs for A334725, there is no canonical definition to state claims against.
-/

/-! ## A334725.P293536723909775067

`A004736(∑[A265312(A187829(n+1))])`
-/

namespace A334725.P293536723909775067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265312 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334725.P293536723909775067

/-! ## A334725.P12352311010655880196

`A082404(n+1)+A024155(A290519(n))`
-/

namespace A334725.P12352311010655880196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (n + 1) + A024155 (A290519 n).toNat

end

end A334725.P12352311010655880196

/-! ## A334725.P11008673754977751353

`A272121(A287384(n)+A005117(n+1))`
-/

namespace A334725.P11008673754977751353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (A287384 n + A005117 (n + 1)).toNat

end

end A334725.P11008673754977751353

/-! ## A334725.P6972116526478044099

`A082404(n+1)*A112348(A014378(n))`
-/

namespace A334725.P6972116526478044099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (n + 1) * A112348 (A014378 n).toNat

end

end A334725.P6972116526478044099

/-!
# A334726: a(k) is the earliest start of sequence of exactly k primes generated according to the rules stipulated in A005150.

The programs for A334726, there is no canonical definition to state claims against.
-/

/-! ## A334726.P404447418248982011

`A113483(a(n-1))` with `a(0)=1`
-/

namespace A334726.P404447418248982011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113483 (a (n - 1)).toNat

end

end A334726.P404447418248982011

/-!
# A334727: Binary interpretation of the left diagonal of the XOR-triangle with first row generated from the binary expansion of n, with most significant bit given by first row.

The programs for A334727, there is no canonical definition to state claims against.
-/

/-! ## A334727.P10294532604255867659

`A335133(A014682(A003817(n))-n)`
-/

namespace A334727.P10294532604255867659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A014682 (A003817 n).toNat - (n : ℤ)).toNat

end

end A334727.P10294532604255867659

/-! ## A334727.P12396920728806499371

`A335133(xor(n, A004526(A003817(n))))`
-/

namespace A334727.P12396920728806499371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (Int.xor (n : ℤ) (A004526 (A003817 n).toNat)).toNat

end

end A334727.P12396920728806499371

/-! ## A334727.P6546342867752156110

`A335133(xor(n, A011371(A053644(n))))`
-/

namespace A334727.P6546342867752156110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (Int.xor (n : ℤ) (A011371 (A053644 n).toNat)).toNat

end

end A334727.P6546342867752156110

/-! ## A334727.P13198875700980762939

`A335133(xor(n, A086099(A052928(n))))`
-/

namespace A334727.P13198875700980762939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (Int.xor (n : ℤ) (A086099 (A052928 n).toNat)).toNat

end

end A334727.P13198875700980762939

/-! ## A334727.P10127837784116928279

`A335133(xor(n, A003817(A292600(n))))`
-/

namespace A334727.P10127837784116928279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (Int.xor (n : ℤ) (A003817 (A292600 n).toNat)).toNat

end

end A334727.P10127837784116928279

/-! ## A334727.P5863040125719669968

`A335133(xor(n, A266539(A062383(n))))`
-/

namespace A334727.P5863040125719669968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (Int.xor (n : ℤ) (A266539 (A062383 n).toNat)).toNat

end

end A334727.P5863040125719669968

/-! ## A334727.P3733770127777790697

`A335133(xor(A233279(n), A292600(n)))`
-/

namespace A334727.P3733770127777790697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A334727.P3733770127777790697

/-! ## A334727.P5292249533603903528

`A335133(A234026(n)+A234027(n)-n)`
-/

namespace A334727.P5292249533603903528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A234026 n + (A234027 n - (n : ℤ))).toNat

end

end A334727.P5292249533603903528

/-! ## A334727.P7496460981683312119

`A335133(A234026(n)-(n-A234027(n)))`
-/

namespace A334727.P7496460981683312119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A234026 n - ((n : ℤ) - A234027 n)).toNat

end

end A334727.P7496460981683312119

/-! ## A334727.P1245884285593878593

`A335133(A092569(2*n)/2)`
-/

namespace A334727.P1245884285593878593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A334727.P1245884285593878593

/-! ## A334727.P12924852856651846684

`A292600(A335133(A233279(2*n)))`
-/

namespace A334727.P12924852856651846684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A335133 (A233279 (2 * n)).toNat).toNat

end

end A334727.P12924852856651846684

/-! ## A334727.P2008381958097334013

`A335133(A025480(A092569(2*n)))`
-/

namespace A334727.P2008381958097334013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A025480 (A092569 (2 * n)).toNat).toNat

end

end A334727.P2008381958097334013

/-! ## A334727.P5285300862241421193

`A335133(A153154(n)+A231551(n)-n)`
-/

namespace A334727.P5285300862241421193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A153154 n + (A231551 n - (n : ℤ))).toNat

end

end A334727.P5285300862241421193

/-! ## A334727.P155239491467463264

`A335133(A153154(n)-(n-A231551(n)))`
-/

namespace A334727.P155239491467463264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A153154 n - ((n : ℤ) - A231551 n)).toNat

end

end A334727.P155239491467463264

/-!
# A334729: a(n) = Product_{d|n} gcd(tau(d), sigma(d)).

The programs for A334729, the canonical program `A334729.P8285158854772711246` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334729 has offset 1).

The definition of A334729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334729.P8285158854772711246

`∏{d}[n+1, A009205(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334729

/-- `∏{d}[n+1, A009205(#)]` -/
def P8285158854772711246.Spec : Prop :=
  ∀ n, P8285158854772711246.a n = A334729 (n + 1)

theorem P8285158854772711246.correct : P8285158854772711246.Spec := by
  intro n
  simp only [A334729, Nat.add_sub_cancel]

end A334729

/-! ## A334729.P3823656155718193816

`∏{d}[n+1, gcd(A000005(#), A000203(#))]`
-/

namespace A334729.P3823656155718193816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (A000005 d) (A000203 d)

end

end A334729.P3823656155718193816

namespace A334729

/-- `∏{d}[n+1, gcd(A000005(#), A000203(#))]` -/
def P3823656155718193816.Spec : Prop :=
  ∀ n, (P3823656155718193816.a n : ℤ) = A334729 (n + 1)

end A334729

/-! ## A334729.P3967565229386272215

`A206032(n+1)/A334806(n+1)*A211776(n+1)`
-/

namespace A334729.P3967565229386272215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (A334806 (n + 1) : ℚ) * (A211776 (n + 1) : ℚ)

end

end A334729.P3967565229386272215

namespace A334729

/-- `A206032(n+1)/A334806(n+1)*A211776(n+1)` -/
def P3967565229386272215.Spec : Prop :=
  ∀ n, P3967565229386272215.a n = (A334729 (n + 1) : ℚ)

end A334729

/-! ## A334729.P15789672674375987956

`A324987(n+1)/A334806(n+1)`
-/

namespace A334729.P15789672674375987956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A334806 (n + 1) : ℚ)

end

end A334729.P15789672674375987956

namespace A334729

/-- `A324987(n+1)/A334806(n+1)` -/
def P15789672674375987956.Spec : Prop :=
  ∀ n, P15789672674375987956.a n = (A334729 (n + 1) : ℚ)

end A334729

/-! ## A334729.P13086979499046227295

`∏{d}[n+1, A000005(#)*A000203(#)]/A334806(n+1)`
-/

namespace A334729.P13086979499046227295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A000005 d * A000203 d : ℤ) : ℚ) / (A334806 (n + 1) : ℚ)

end

end A334729.P13086979499046227295

namespace A334729

/-- `∏{d}[n+1, A000005(#)*A000203(#)]/A334806(n+1)` -/
def P13086979499046227295.Spec : Prop :=
  ∀ n, P13086979499046227295.a n = (A334729 (n + 1) : ℚ)

end A334729

/-!
# A334730: a(n) = Product_{d|n} gcd(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

The programs for A334730, the canonical program `A334730.P4098740322766143181` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334730 has offset 1).

The definition of A334730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334730.P4098740322766143181

`∏{d}[n+1, A306671(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334730

/-- `∏{d}[n+1, A306671(#)]` -/
def P4098740322766143181.Spec : Prop :=
  ∀ n, P4098740322766143181.a n = A334730 (n + 1)

theorem P4098740322766143181.correct : P4098740322766143181.Spec := by
  intro n
  simp only [A334730, Nat.add_sub_cancel]

end A334730

/-! ## A334730.P5251163111326130139

`∏{d}[n+1, gcd(#^5, A000005(#))]`
-/

namespace A334730.P5251163111326130139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d ^ 5 : ℤ) (A000005 d)

end

end A334730.P5251163111326130139

namespace A334730

/-- `∏{d}[n+1, gcd(#^5, A000005(#))]` -/
def P5251163111326130139.Spec : Prop :=
  ∀ n, (P5251163111326130139.a n : ℤ) = A334730 (n + 1)

end A334730

/-! ## A334730.P9108345688620569320

`A307101(n+1)/A334807(n+1)`
-/

namespace A334730.P9108345688620569320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A334807 (n + 1) : ℚ)

end

end A334730.P9108345688620569320

namespace A334730

/-- `A307101(n+1)/A334807(n+1)` -/
def P9108345688620569320.Spec : Prop :=
  ∀ n, P9108345688620569320.a n = (A334730 (n + 1) : ℚ)

end A334730

/-! ## A334730.P9814465801405577762

`A211776(n+1)*A266265(n+1)/A334807(n+1)`
-/

namespace A334730.P9814465801405577762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) * A266265 (n + 1) : ℚ) / (A334807 (n + 1) : ℚ)

end

end A334730.P9814465801405577762

namespace A334730

/-- `A211776(n+1)*A266265(n+1)/A334807(n+1)` -/
def P9814465801405577762.Spec : Prop :=
  ∀ n, P9814465801405577762.a n = (A334730 (n + 1) : ℚ)

end A334730

/-! ## A334730.P9709860413230691431

`A306705(n+1)*A322672(n+1)/A334807(n+1)`
-/

namespace A334730.P9709860413230691431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) * A322672 (n + 1) : ℚ) / (A334807 (n + 1) : ℚ)

end

end A334730.P9709860413230691431

namespace A334730

/-- `A306705(n+1)*A322672(n+1)/A334807(n+1)` -/
def P9709860413230691431.Spec : Prop :=
  ∀ n, P9709860413230691431.a n = (A334730 (n + 1) : ℚ)

end A334730

/-!
# A334731: a(n) = Product_{d|n} gcd(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A334731, the canonical program `A334731.P13809390634519434863` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334731 has offset 1).

The definition of A334731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334731.P13809390634519434863

`∏{d}[n+1, A306682(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334731

/-- `∏{d}[n+1, A306682(#)]` -/
def P13809390634519434863.Spec : Prop :=
  ∀ n, P13809390634519434863.a n = A334731 (n + 1)

theorem P13809390634519434863.correct : P13809390634519434863.Spec := by
  intro n
  simp only [A334731, Nat.add_sub_cancel]

end A334731

/-! ## A334731.P2079135253503612676

`∏{d}[n+1, gcd(A000203(#), A007955(#))]`
-/

namespace A334731.P2079135253503612676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (A000203 d) (A007955 d)

end

end A334731.P2079135253503612676

namespace A334731

/-- `∏{d}[n+1, gcd(A000203(#), A007955(#))]` -/
def P2079135253503612676.Spec : Prop :=
  ∀ n, (P2079135253503612676.a n : ℤ) = A334731 (n + 1)

end A334731

/-! ## A334731.P704957639977701790

`A325030(n+1)/A334809(n+1)`
-/

namespace A334731.P704957639977701790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A334809 (n + 1) : ℚ)

end

end A334731.P704957639977701790

namespace A334731

/-- `A325030(n+1)/A334809(n+1)` -/
def P704957639977701790.Spec : Prop :=
  ∀ n, P704957639977701790.a n = (A334731 (n + 1) : ℚ)

end A334731

/-! ## A334731.P1596465060660311303

`A325030(n+1)/∏{d}[n+1, A324529(#)]`
-/

namespace A334731.P1596465060660311303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), A324529 d : ℤ) : ℚ)

end

end A334731.P1596465060660311303

namespace A334731

/-- `A325030(n+1)/∏{d}[n+1, A324529(#)]` -/
def P1596465060660311303.Spec : Prop :=
  ∀ n, P1596465060660311303.a n = (A334731 (n + 1) : ℚ)

end A334731

/-! ## A334731.P11107899788903526311

`A053150(n+3)*A334463(A334491(n+1))`
-/

namespace A334731.P11107899788903526311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 3) * A334463 (A334491 (n + 1)).toNat

end

end A334731.P11107899788903526311

namespace A334731

/-- `A053150(n+3)*A334463(A334491(n+1))` -/
def P11107899788903526311.Spec : Prop :=
  ∀ n, P11107899788903526311.a n = A334731 (n + 1)

end A334731

/-!
# A334732: a(n) is the total number of parts in all partitions of n into consecutive parts that differ by 5.

The programs for A334732, there is no canonical definition to state claims against.
-/

/-! ## A334732.P2773633291175909769

`A334949(n+4)%A109395(A051885(n+4))`
-/

namespace A334732.P2773633291175909769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334949 (n + 4)) (A109395 (A051885 (n + 4)).toNat)

end

end A334732.P2773633291175909769

/-! ## A334732.P11568122461322299627

`A334949(lt[A350074(n^3+1), A008619(n)])`
-/

namespace A334732.P11568122461322299627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (n ^ 3 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334949 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334732.P11568122461322299627

/-! ## A334732.P2551369591173855080

`gcd(A290822(A025487(3*n+5)), A334949(n+4))`
-/

namespace A334732.P2551369591173855080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290822 (A025487 (3 * n + 5)).toNat) (A334949 (n + 4))

end

end A334732.P2551369591173855080

/-! ## A334732.P7285996154269163076

`A334949(n+4)%A219178(A274158(n))`
-/

namespace A334732.P7285996154269163076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334949 (n + 4)) (A219178 (A274158 n).toNat)

end

end A334732.P7285996154269163076

/-! ## A334732.P16796522662384576233

`gcd(record[A334463(n+1)²], A330889(n+1))`
-/

namespace A334732.P16796522662384576233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334463 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A330889 (n + 1))

end

end A334732.P16796522662384576233

/-!
# A334733: a(n) is the sum of all parts of all partitions of n into consecutive parts that differ by 5.

The programs for A334733, there is no canonical definition to state claims against.
-/

/-! ## A334733.P7213561418173346284

`(n+1)*A334541(n+1)`
-/

namespace A334733.P7213561418173346284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334541 (n + 1)

end

end A334733.P7213561418173346284

/-! ## A334733.P5856342516426295530

`A075362(A334541(n+1)+∑[n])`
-/

namespace A334733.P5856342516426295530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A334541 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A334733.P5856342516426295530

/-! ## A334733.P11884969882113321357

`(n+1)*A106432(A334732(n+1))`
-/

namespace A334733.P11884969882113321357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106432 (A334732 (n + 1)).toNat

end

end A334733.P11884969882113321357

/-! ## A334733.P17991509969047605518

`log2(A000079(n+1)^A334541(n+1))`
-/

namespace A334733.P17991509969047605518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 (n + 1) : ℚ) ^ (A334541 (n + 1) : ℤ) : ℝ)

end

end A334733.P17991509969047605518

/-! ## A334733.P4212166188019050554

`(n+1)*A168255(A334732(-xor(n, -1)))`
-/

namespace A334733.P4212166188019050554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168255 (A334732 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A334733.P4212166188019050554

/-! ## A334733.P15529155378783928307

`(A000108(C(n, n²))+n)*A168255(A334732(n+1))`
-/

namespace A334733.P15529155378783928307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 (Nat.choose n (n ^ 2)) + (n : ℤ)) * A168255 (A334732 (n + 1)).toNat

end

end A334733.P15529155378783928307

/-! ## A334733.P18179487212262737968

`(A103221(A334732(n+1))+1)*A004525(2*(n+1))`
-/

namespace A334733.P18179487212262737968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103221 (A334732 (n + 1)).toNat + 1) * A004525 (2 * (n + 1))

end

end A334733.P18179487212262737968

/-! ## A334733.P7480067282199020951

`(n+1)*(A103221(A334732(n+1))+1)%record[A020639(n+2)]`
-/

namespace A334733.P7480067282199020951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A103221 (A334732 (n + 1)).toNat + 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A334733.P7480067282199020951

/-!
# A334735: Denominator of Sum_{k=1..n} k^2 / Product_{k=1..n} k^2.

The programs for A334735, there is no canonical definition to state claims against.
-/

/-! ## A334735.P18150566866360600681

`A001044(n+1)/A000330(n+1)*A125294(n+1)`
-/

namespace A334735.P18150566866360600681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 (n + 1) : ℚ) / (A000330 (n + 1) : ℚ) * (A125294 (n + 1) : ℚ)

end

end A334735.P18150566866360600681

/-!
# A334736: Dimensions d such that the integer lattice Z^d does not contain the vertices of a regular d-simplex.

The programs for A334736, there is no canonical definition to state claims against.
-/

/-! ## A334736.P13723347271798112631

`lt[A193574(9*(n+1)), 5]`
-/

namespace A334736.P13723347271798112631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193574 (9 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334736.P13723347271798112631

/-! ## A334736.P14722785784858064333

`lt[8, lcm(4, A101412(n+1))]`
-/

namespace A334736.P14722785784858064333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A101412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334736.P14722785784858064333

/-! ## A334736.P6133492334559606203

`lt[n, xor(n, A324904(n+1))]`
-/

namespace A334736.P6133492334559606203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A324904 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334736.P6133492334559606203

/-! ## A334736.P3259536160577122046

`comp[A096315(n+1)-1]+1`
-/

namespace A334736.P3259536160577122046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096315 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A334736.P3259536160577122046

/-! ## A334736.P5775684576672424145

`eq[and(1, n)+2, A263765(n+1)]`
-/

namespace A334736.P5775684576672424145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334736.P5775684576672424145

/-! ## A334736.P7566759385284563816

`lt[val(n+1, 2), log(A286357(n+1))]`
-/

namespace A334736.P7566759385284563816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A286357 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A334736.P7566759385284563816

/-! ## A334736.P2155147669673554516

`eq[val(n+1, 2)!, A324903(n+1)]`
-/

namespace A334736.P2155147669673554516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (n + 1) 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334736.P2155147669673554516

/-! ## A334736.P7788280431678434239

`lt[gcd(4, n+1), gcd(4, A000203(n+1))]`
-/

namespace A334736.P7788280431678434239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334736.P7788280431678434239

/-! ## A334736.P16664201457016476211

`eq[A001492(n), A324903(n+1)]`
-/

namespace A334736.P16664201457016476211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334736.P16664201457016476211

/-! ## A334736.P13916589248147949237

`eq[A093148(n), A324903(n+1)]`
-/

namespace A334736.P13916589248147949237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334736.P13916589248147949237

/-!
# A334738: Iterate function composition by applying y=abs(x) or y=x-1. a(n) is the number of functions at distance n from the identity (y=x) in the graph of all possible results.

The programs for A334738, there is no canonical definition to state claims against.
-/

/-! ## A334738.P6469424053696968262

`∑[A003056(A036375(n+1))]`
-/

namespace A334738.P6469424053696968262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A036375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334738.P6469424053696968262

/-! ## A334738.P2629047793416373410

`A073188(∑[A275864(n)])`
-/

namespace A334738.P2629047793416373410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334738.P2629047793416373410

/-! ## A334738.P7334360494826986384

`A026819(A051535(n+1))`
-/

namespace A334738.P7334360494826986384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A051535 (n + 1)).toNat

end

end A334738.P7334360494826986384

/-! ## A334738.P17350371540488136000

`A026819(A172317(n+1))`
-/

namespace A334738.P17350371540488136000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A172317 (n + 1)).toNat

end

end A334738.P17350371540488136000

/-! ## A334738.P7434240087500155724

`A026819(A234589(n+1))`
-/

namespace A334738.P7434240087500155724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A234589 (n + 1)).toNat

end

end A334738.P7434240087500155724

/-!
# A334739: Number of unordered factorizations of n with 2 different parts > 1.

The programs for A334739, there is no canonical definition to state claims against.
-/

/-! ## A334739.P7790503043039645816

`A347561(n+1)%A292886(n+1)-A340607(A101296(n+1))`
-/

namespace A334739.P7790503043039645816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347561 (n + 1)) (A292886 (n + 1)) - A340607 (A101296 (n + 1)).toNat

end

end A334739.P7790503043039645816

/-! ## A334739.P16451942897700472580

`A005385(A351101(2*n+1))%A342084(n+1)`
-/

namespace A334739.P16451942897700472580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (A351101 (2 * n + 1)).toNat) (A342084 (n + 1))

end

end A334739.P16451942897700472580

/-! ## A334739.P16780512565939940486

`A106348(A050354(n+1))-A340607(A101296(n+1))`
-/

namespace A334739.P16780512565939940486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106348 (A050354 (n + 1)).toNat - A340607 (A101296 (n + 1)).toNat

end

end A334739.P16780512565939940486

/-! ## A334739.P10531685683982603650

`A122922(A051707(n+1))-A340607(A101296(n+1))`
-/

namespace A334739.P10531685683982603650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A051707 (n + 1)).toNat - A340607 (A101296 (n + 1)).toNat

end

end A334739.P10531685683982603650

/-! ## A334739.P7736944008855850901

`A186437(A104725(n+1))-A340607(A101296(n+1))`
-/

namespace A334739.P7736944008855850901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A104725 (n + 1)).toNat - A340607 (A101296 (n + 1)).toNat

end

end A334739.P7736944008855850901

/-!
# A334740: Number of unordered factorizations of n with 3 different parts > 1.

The programs for A334740, there is no canonical definition to state claims against.
-/

/-! ## A334740.P13303969151828456961

`A269043(A350139(n+1)+3)`
-/

namespace A334740.P13303969151828456961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269043 (A350139 (n + 1) + 3).toNat

end

end A334740.P13303969151828456961

/-! ## A334740.P8105029945252600059

`A294234(A002033(n)-A348613(n+1))`
-/

namespace A334740.P8105029945252600059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (A002033 n - A348613 (n + 1)).toNat

end

end A334740.P8105029945252600059

/-! ## A334740.P9821516776366830634

`A049472(A050334(n+1)-A335434(n+1))`
-/

namespace A334740.P9821516776366830634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A050334 (n + 1) - A335434 (n + 1)).toNat

end

end A334740.P9821516776366830634

/-! ## A334740.P6563840760988620043

`A049472(A050334(n+1)%A335434(n+1))`
-/

namespace A334740.P6563840760988620043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (Int.tmod (A050334 (n + 1)) (A335434 (n + 1))).toNat

end

end A334740.P6563840760988620043

/-! ## A334740.P16189485731388013476

`floor(A348611(n+1)/9)`
-/

namespace A334740.P16189485731388013476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348611 (n + 1) : ℚ) / 9⌋

end

end A334740.P16189485731388013476

/-! ## A334740.P13995395563122368706

`A091194(A294787(n+1)+A054900(n))`
-/

namespace A334740.P13995395563122368706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A294787 (n + 1) + A054900 n).toNat

end

end A334740.P13995395563122368706

/-! ## A334740.P4336878852926258354

`A127035(A045778(n+1)%A222386(n+1))`
-/

namespace A334740.P4336878852926258354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127035 (Int.tmod (A045778 (n + 1)) (A222386 (n + 1))).toNat

end

end A334740.P4336878852926258354

/-! ## A334740.P7345664271769275196

`∑{d}[n+1, A122180(#)*A302235((n+1)/#)]`
-/

namespace A334740.P7345664271769275196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122180 d * A302235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334740.P7345664271769275196

/-! ## A334740.P3555759276496316126

`∑{d}[n+1, A122180(#)*A265178((n+1)/#)]`
-/

namespace A334740.P3555759276496316126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122180 d * A265178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334740.P3555759276496316126

/-! ## A334740.P4850181261522548563

`A084114(2^A084114(n+1)²)`
-/

namespace A334740.P4850181261522548563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A084114 (n + 1) ^ 2 : ℤ))).toNat

end

end A334740.P4850181261522548563

/-!
# A334741: Fill an infinite square array by following a spiral around the origin; in the central cell enter a(0)=1; thereafter, in the n-th cell, enter the sum of the entries of those earlier cells that are in the same row or column as that cell.

The programs for A334741, there is no canonical definition to state claims against.
-/

/-! ## A334741.P13572876313002562450

`ceil(A109296(n+1)/A346304(n+1))`
-/

namespace A334741.P13572876313002562450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109296 (n + 1) : ℚ) / (A346304 (n + 1) : ℚ)⌉

end

end A334741.P13572876313002562450

/-! ## A334741.P12603262461980259454

`round(A114100(n+1)/A114111(n+2))`
-/

namespace A334741.P12603262461980259454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114100 (n + 1) : ℚ) / (A114111 (n + 2) : ℚ))

end

end A334741.P12603262461980259454

/-! ## A334741.P9109182689202500055

`A122921(A000108(n)+A000045(n))`
-/

namespace A334741.P9109182689202500055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A000108 n + A000045 n).toNat

end

end A334741.P9109182689202500055

/-! ## A334741.P14628834430878387944

`A122921(A263986(n)+A035312(n))`
-/

namespace A334741.P14628834430878387944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A263986 n + A035312 n).toNat

end

end A334741.P14628834430878387944

/-! ## A334741.P12756735301148080695

`A122921(A000108(n)+abs(A236191(n)))`
-/

namespace A334741.P12756735301148080695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A000108 n + |A236191 n|).toNat

end

end A334741.P12756735301148080695

/-!
# A334742: Pascal's spiral: starting with a(1) = 1, proceed in a square spiral, computing each term as the sum of horizontally and vertically adjacent prior terms.

The programs for A334742, there is no canonical definition to state claims against.
-/

/-! ## A334742.P2931370389666390119

`A003056(A330996(Δ[A103976(n+1)]))`
-/

namespace A334742.P2931370389666390119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A330996 (f1 (n + 1) - f1 n).toNat).toNat

end

end A334742.P2931370389666390119

/-! ## A334742.P1538898565876443714

`A003056(A330996(record[A083254(n+1)]))`
-/

namespace A334742.P1538898565876443714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A330996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A334742.P1538898565876443714

/-! ## A334742.P13172509963655961790

`A302834(A074239(n)%A335373(3*n+4))`
-/

namespace A334742.P13172509963655961790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302834 (Int.tmod (A074239 n) (A335373 (3 * n + 4))).toNat

end

end A334742.P13172509963655961790

/-! ## A334742.P13497948808253239515

`A238845(A268327(n+1)+A134720(n+1))`
-/

namespace A334742.P13497948808253239515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A268327 (n + 1) + A134720 (n + 1)).toNat

end

end A334742.P13497948808253239515

/-! ## A334742.P8734275668610384556

`A302834(A074239(n))%A335479(3*(n+1))`
-/

namespace A334742.P8734275668610384556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302834 (A074239 n).toNat) (A335479 (3 * (n + 1)))

end

end A334742.P8734275668610384556

/-!
# A334743: a(1) = 1; a(n) = -Sum_{d|n, d < n} omega(n/d) * a(d), where omega = A001221.

The programs for A334743, there is no canonical definition to state claims against.
-/

/-! ## A334743.P16376886992379104426

`A176187(A349910(n+1))*A349920(n+1)`
-/

namespace A334743.P16376886992379104426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 (A349910 (n + 1)).toNat * A349920 (n + 1)

end

end A334743.P16376886992379104426

/-! ## A334743.P17588900192565095120

`or(A092037(A340663(n+1)), A349920(n+1))`
-/

namespace A334743.P17588900192565095120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092037 (A340663 (n + 1)).toNat) (A349920 (n + 1))

end

end A334743.P17588900192565095120

/-! ## A334743.P9817087239898821956

`A349920(n+1)+A092037(A340663(n+1)+n)`
-/

namespace A334743.P9817087239898821956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (n + 1) + A092037 (A340663 (n + 1) + (n : ℤ)).toNat

end

end A334743.P9817087239898821956

/-! ## A334743.P7154626508170280844

`A349906(A037289(n+1))*A349920(n+1)`
-/

namespace A334743.P7154626508170280844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A037289 (n + 1)).toNat * A349920 (n + 1)

end

end A334743.P7154626508170280844

/-! ## A334743.P2974135810464257390

`floor(A114591(A165831(n+1))/A003557(n+1))`
-/

namespace A334743.P2974135810464257390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114591 (A165831 (n + 1)).toNat : ℚ) / (A003557 (n + 1) : ℚ)⌋

end

end A334743.P2974135810464257390

/-!
# A334744: a(1) = 1; a(n) = -Sum_{d|n, d < n} bigomega(n/d) * a(d), where bigomega = A001222.

The programs for A334744, there is no canonical definition to state claims against.
-/

/-! ## A334744.P330656262597926829

`floor(tan(A330464(∏{e}[n+1, #+1])))`
-/

namespace A334744.P330656262597926829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A330464 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ)⌋

end

end A334744.P330656262597926829

/-! ## A334744.P6079161964923334813

`A204011(∏{d}[n+1, ceil(atan(#))])%5`
-/

namespace A334744.P6079161964923334813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204011 (∏ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉).toNat) 5

end

end A334744.P6079161964923334813

/-! ## A334744.P11190409781988191102

`A336939(∏{e}[n+1, 6*#])-∑{p}[n+1, gcd(n, #)]`
-/

namespace A334744.P11190409781988191102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336939 (∏ p ∈ Nat.primeFactors (f1 n), 6 * Nat.factorization (f1 n) p) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℤ)

end

end A334744.P11190409781988191102

/-! ## A334744.P10926571921925418818

`A336939(∏{e}[n+1, 3*2^#])-∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A334744.P10926571921925418818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336939 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p) - ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2 : ℤ))

end

end A334744.P10926571921925418818

/-! ## A334744.P9775841423413246455

`A231599(A019536(∏{e}[n+1, #+1]))`
-/

namespace A334744.P9775841423413246455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (A019536 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A334744.P9775841423413246455

/-!
# A334745: Starting with a(1) = a(2) = 1, proceed in a square spiral, computing each term as the sum of diagonally adjacent prior terms.

The programs for A334745, there is no canonical definition to state claims against.
-/

/-! ## A334745.P9913561646802044638

`A247976(A117384(n+2))`
-/

namespace A334745.P9913561646802044638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247976 (A117384 (n + 2)).toNat

end

end A334745.P9913561646802044638

/-! ## A334745.P10521942177547238792

`A234287(A321434(n)+1)`
-/

namespace A334745.P10521942177547238792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234287 (A321434 n + 1).toNat

end

end A334745.P10521942177547238792

/-! ## A334745.P1600948496413635880

`A001221(A000071(4*A152198(n)))`
-/

namespace A334745.P1600948496413635880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000071 (4 * A152198 n).toNat).toNat

end

end A334745.P1600948496413635880

/-! ## A334745.P4553460019384531793

`A333257(∑{d}[A152198(n), A000055(#)]-1)`
-/

namespace A334745.P4553460019384531793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000055 d - 1).toNat

end

end A334745.P4553460019384531793

/-! ## A334745.P12121309893826404728

`gcd(A235152(n+1), A301855(A152198(n)))`
-/

namespace A334745.P12121309893826404728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235152 (n + 1)) (A301855 (A152198 n).toNat)

end

end A334745.P12121309893826404728

/-!
# A334746: Denominator of Sum_{k=1..n} 1/(prime(k) - 1)^2.

The programs for A334746, there is no canonical definition to state claims against.
-/

/-! ## A334746.P9985287878235893538

`lcm(A253909(A128648(n+1)), A258213(n))`
-/

namespace A334746.P9985287878235893538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A253909 (A128648 (n + 1)).toNat) (A258213 n)

end

end A334746.P9985287878235893538

/-! ## A334746.P1815386732818987344

`A000290(A058254(n+1))/A072617(n+1)`
-/

namespace A334746.P1815386732818987344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A058254 (n + 1)).toNat : ℚ) / (A072617 (n + 1) : ℚ)

end

end A334746.P1815386732818987344

/-!
# A334747: Let p be the smallest prime not dividing the squarefree part of n. Multiply n by p and divide by the product of all smaller primes.

The programs for A334747, there is no canonical definition to state claims against.
-/

/-! ## A334747.P17162945275587370832

`A331590(∑[n+2])`
-/

namespace A334747.P17162945275587370832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334747.P17162945275587370832

/-! ## A334747.P7667593291160374016

`or(char[1], A331590(A000096(n+1)))`
-/

namespace A334747.P7667593291160374016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A331590 (A000096 (n + 1)).toNat)

end

end A334747.P7667593291160374016

/-! ## A334747.P1782379748923943953

`or(char[1], A331590(A133263(n+1)))`
-/

namespace A334747.P1782379748923943953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A331590 (A133263 (n + 1)).toNat)

end

end A334747.P1782379748923943953

/-! ## A334747.P16229072570507216130

`or(char[1], A331590(A027379(n)+2))`
-/

namespace A334747.P16229072570507216130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A331590 (A027379 n + 2).toNat)

end

end A334747.P16229072570507216130

/-! ## A334747.P12277868219546792553

`A331590(A000096(n+1))%A017041(n)`
-/

namespace A334747.P12277868219546792553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331590 (A000096 (n + 1)).toNat) (A017041 n)

end

end A334747.P12277868219546792553

/-! ## A334747.P8629753765781750077

`∑{d}[A331590(A000096(n+1)), A000010(#)]`
-/

namespace A334747.P8629753765781750077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A334747.P8629753765781750077

/-! ## A334747.P2896897922753163801

`∑{d}[A331590(A027379(n)+2), A000010(#)]`
-/

namespace A334747.P2896897922753163801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A027379 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A334747.P2896897922753163801

/-! ## A334747.P5919085485513925494

`∏{d}[A331590(A027379(n)+2), A014963(#)]`
-/

namespace A334747.P5919085485513925494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A027379 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A334747.P5919085485513925494

/-! ## A334747.P4679269951141195829

`A331590(A133263(n+1))%A000040(n+2)`
-/

namespace A334747.P4679269951141195829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331590 (A133263 (n + 1)).toNat) (A000040 (n + 2))

end

end A334747.P4679269951141195829

/-! ## A334747.P14864809200767695541

`A331590(A027379(n)+2)%A000041(n+11)`
-/

namespace A334747.P14864809200767695541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331590 (A027379 n + 2).toNat) (A000041 (n + 11))

end

end A334747.P14864809200767695541

/-!
# A334748: Let p be the smallest odd prime not dividing the squarefree part of n. Multiply n by p and divide by the product of all smaller odd primes.

The programs for A334748, there is no canonical definition to state claims against.
-/

/-! ## A334748.P8694254994434069351

`A334747(A334747(n+1))`
-/

namespace A334748.P8694254994434069351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334747 (A334747 (n + 1)).toNat

end

end A334748.P8694254994434069351

/-! ## A334748.P7775887693503218993

`A331590(∑[n+3]+1)`
-/

namespace A334748.P7775887693503218993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A334748.P7775887693503218993

/-! ## A334748.P11455366924669612370

`and(-1, A331590(A167614(n+1)))`
-/

namespace A334748.P11455366924669612370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331590 (A167614 (n + 1)).toNat)

end

end A334748.P11455366924669612370

/-! ## A334748.P17987457411748855220

`A331590(Δ[A008778(n)])%(5*n+4)`
-/

namespace A334748.P17987457411748855220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331590 (f1 (n + 1) - f1 n).toNat) (5 * n + 4 : ℤ)

end

end A334748.P17987457411748855220

/-! ## A334748.P2022464563979323778

`A331590(A167499(n)+n)%(3*n+4)`
-/

namespace A334748.P2022464563979323778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331590 (A167499 n + (n : ℤ)).toNat) (3 * n + 4 : ℤ)

end

end A334748.P2022464563979323778

/-! ## A334748.P13908510984383748336

`A331590(A034856(n+1)+5)%(3*n+4)`
-/

namespace A334748.P13908510984383748336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331590 (A034856 (n + 1) + 5).toNat) (3 * n + 4 : ℤ)

end

end A334748.P13908510984383748336

/-! ## A334748.P15877866503594203360

`∑{d}[A331590(A167614(n+1)), A000010(#)]`
-/

namespace A334748.P15877866503594203360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A334748.P15877866503594203360

/-! ## A334748.P6833028023386186641

`∏{d}[A331590(A167614(n+1)), A014963(#)]`
-/

namespace A334748.P6833028023386186641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A334748.P6833028023386186641

/-! ## A334748.P10341194351949204769

`A331590(Δ[A008778(n)])+A008683(8*n+4)`
-/

namespace A334748.P10341194351949204769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (f1 (n + 1) - f1 n).toNat + A008683 (8 * n + 4)

end

end A334748.P10341194351949204769

/-! ## A334748.P2380408394353529454

`A331590(A167614(2*(n+1)))/2`
-/

namespace A334748.P2380408394353529454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331590 (A167614 (2 * (n + 1))).toNat : ℚ) / 2

end

end A334748.P2380408394353529454

/-!
# A334749: A fractal sequence produced by interleaving the sequence with its own ordinal transform.

The programs for A334749, there is no canonical definition to state claims against.
-/

/-! ## A334749.P14968152322905711732

`gcd(A036541(3*n+4), A036580(A036557(n)))`
-/

namespace A334749.P14968152322905711732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036541 (3 * n + 4)) (A036580 (A036557 n).toNat)

end

end A334749.P14968152322905711732

/-! ## A334749.P1501360113739104521

`A100878(A258055(n)+1)`
-/

namespace A334749.P1501360113739104521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 (A258055 n + 1).toNat

end

end A334749.P1501360113739104521

/-! ## A334749.P2262024018423626368

`A081710(A306286(n))%5`
-/

namespace A334749.P2262024018423626368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081710 (A306286 n).toNat) 5

end

end A334749.P2262024018423626368

/-! ## A334749.P569438406884661612

`A001222(2^(n*A339448(n))+1)`
-/

namespace A334749.P569438406884661612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) * A339448 n : ℤ) + 1)).toNat

end

end A334749.P569438406884661612

/-! ## A334749.P6121592126062279426

`A001222(2^n^A339448(n)+1)`
-/

namespace A334749.P6121592126062279426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) ^ (A339448 n : ℤ) + 1)).toNat

end

end A334749.P6121592126062279426

/-!
# A334750: Total number of swaps needed to sort all n! permutations of n elements by the optimal dual-pivot quicksort "Count".

The programs for A334750, there is no canonical definition to state claims against.
-/

/-! ## A334750.P3511054646949039981

`A374395(A059840(2*n+1))-floor((n/2)²)`
-/

namespace A334750.P3511054646949039981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374395 (A059840 (2 * n + 1)).toNat - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A334750.P3511054646949039981

/-! ## A334750.P16100617176145249305

`A286750(A003584(n))%A003584(n)`
-/

namespace A334750.P16100617176145249305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286750 (A003584 n).toNat) (A003584 n)

end

end A334750.P16100617176145249305

/-!
# A334751: a(n) is the number immediately above n in a clockwise square spiral of the positive integers with the first step to the right.

The programs for A334751, there is no canonical definition to state claims against.
-/

/-! ## A334751.P10785235041916855318

`A020703(A068226(A020703(n+1)))`
-/

namespace A334751.P10785235041916855318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068226 (A020703 (n + 1)).toNat).toNat

end

end A334751.P10785235041916855318

/-! ## A334751.P1292669870432338185

`A090929(A068225(A090925(n+1)))`
-/

namespace A334751.P1292669870432338185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068225 (A090925 (n + 1)).toNat).toNat

end

end A334751.P1292669870432338185

/-! ## A334751.P13091501256204587879

`A090929(A068225(A020703(A090930(n+1))))`
-/

namespace A334751.P13091501256204587879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068225 (A020703 (A090930 (n + 1)).toNat).toNat).toNat

end

end A334751.P13091501256204587879

/-! ## A334751.P17683227943113201449

`A090915(A068225(A090915(n+1)))`
-/

namespace A334751.P17683227943113201449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068225 (A090915 (n + 1)).toNat).toNat

end

end A334751.P17683227943113201449

/-! ## A334751.P7348559783248084318

`A090915(A185413(A090929(n+1)))`
-/

namespace A334751.P7348559783248084318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A185413 (A090929 (n + 1)).toNat).toNat

end

end A334751.P7348559783248084318

/-! ## A334751.P7438858494454469438

`A090929(A068225(A090929(A090928(n+1))))`
-/

namespace A334751.P7438858494454469438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068225 (A090929 (A090928 (n + 1)).toNat).toNat).toNat

end

end A334751.P7438858494454469438

/-! ## A334751.P2549186757538591275

`A090915(A185413(A020703(A090861(n+1))))`
-/

namespace A334751.P2549186757538591275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A185413 (A020703 (A090861 (n + 1)).toNat).toNat).toNat

end

end A334751.P2549186757538591275

/-!
# A334752: a(n) is the number immediately below n in a clockwise square spiral of the positive integers with the first step to the right.

The programs for A334752, there is no canonical definition to state claims against.
-/

/-! ## A334752.P7236349251001658771

`A020703(A068225(A020703(n+1)))`
-/

namespace A334752.P7236349251001658771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068225 (A020703 (n + 1)).toNat).toNat

end

end A334752.P7236349251001658771

/-! ## A334752.P9400468035132622577

`A020703(A185413(A090925(n+1)))`
-/

namespace A334752.P9400468035132622577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A185413 (A090925 (n + 1)).toNat).toNat

end

end A334752.P9400468035132622577

/-! ## A334752.P8283836753717172439

`A020703(A185413(A020703(A090930(n+1))))`
-/

namespace A334752.P8283836753717172439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A185413 (A020703 (A090930 (n + 1)).toNat).toNat).toNat

end

end A334752.P8283836753717172439

/-! ## A334752.P8487464147184772448

`A090925(A068225(A090929(n+1)))`
-/

namespace A334752.P8487464147184772448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068225 (A090929 (n + 1)).toNat).toNat

end

end A334752.P8487464147184772448

/-! ## A334752.P4372828583992448720

`A090925(A185413(A090915(n+1)))`
-/

namespace A334752.P4372828583992448720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A185413 (A090915 (n + 1)).toNat).toNat

end

end A334752.P4372828583992448720

/-! ## A334752.P8103865497083225486

`A020703(A185413(A090915(A090861(n+1))))`
-/

namespace A334752.P8103865497083225486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A185413 (A090915 (A090861 (n + 1)).toNat).toNat).toNat

end

end A334752.P8103865497083225486

/-! ## A334752.P5740892400163263607

`A020703(A185413(A090929(A090928(n+1))))`
-/

namespace A334752.P5740892400163263607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A185413 (A090929 (A090928 (n + 1)).toNat).toNat).toNat

end

end A334752.P5740892400163263607

/-!
# A334753: Sum of the lengths of the short legs of all Pythagorean triangles with perimeter A010814(n).

The programs for A334753, there is no canonical definition to state claims against.
-/

/-! ## A334753.P16426819809084049897

`A334758(n+1)-(A334757(n+1)+A334755(n+1))`
-/

namespace A334753.P16426819809084049897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334758 (n + 1) - (A334757 (n + 1) + A334755 (n + 1))

end

end A334753.P16426819809084049897

/-!
# A334754: The size of partitions of the decimal digits of Pi, starting directly after the decimal point, such that each partition contains the maximum number of digits possible while also avoiding any repeated digits. A digit must be in a partition if the current partition does not contain the current digit.

The programs for A334754, there is no canonical definition to state claims against.
-/

/-! ## A334754.P7117527597892433420

`A104807(abs(1-n)+2)`
-/

namespace A334754.P7117527597892433420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (|1 - (n : ℤ)| + 2).toNat

end

end A334754.P7117527597892433420

/-! ## A334754.P16155426588919097757

`A104807(n+1)-floor(acot(n))`
-/

namespace A334754.P16155426588919097757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A334754.P16155426588919097757

/-! ## A334754.P9110923544198805960

`A104807(n+1)-A000007(n)`
-/

namespace A334754.P9110923544198805960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) - A000007 n

end

end A334754.P9110923544198805960

/-! ## A334754.P2929859237552026541

`A104807(n+1)-(A057428(n)+1)`
-/

namespace A334754.P2929859237552026541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) - (A057428 n + 1)

end

end A334754.P2929859237552026541

/-! ## A334754.P16488230499135941640

`A104807(n+1)-A036987(2*n)`
-/

namespace A334754.P16488230499135941640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) - A036987 (2 * n)

end

end A334754.P16488230499135941640

/-! ## A334754.P17034676859401923424

`A104807(n+1)-A000038(n)/2`
-/

namespace A334754.P17034676859401923424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104807 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A334754.P17034676859401923424

/-! ## A334754.P10205861990549698570

`A104807(n+1)+n-A028310(n)`
-/

namespace A334754.P10205861990549698570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) + ((n : ℤ) - A028310 n)

end

end A334754.P10205861990549698570

/-! ## A334754.P11912630084973987495

`gcd(A000038(a(n-1)), A104807(n+1))` with `a(0)=2`
-/

namespace A334754.P11912630084973987495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd (A000038 (a (n - 1))) (A104807 (n + 1))

end

end A334754.P11912630084973987495

/-! ## A334754.P8687158107491542888

`and(A028871(n+1)²-2, A104807(n+1))`
-/

namespace A334754.P8687158107491542888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028871 (n + 1) ^ 2 - 2) (A104807 (n + 1))

end

end A334754.P8687158107491542888

/-! ## A334754.P16039608594686761780

`and(A045382(n+1)²-2, A104807(n+1))`
-/

namespace A334754.P16039608594686761780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045382 (n + 1) ^ 2 - 2) (A104807 (n + 1))

end

end A334754.P16039608594686761780

/-! ## A334754.P6455078739019662696

`and(A242262(n+1)²-2, A104807(n+1))`
-/

namespace A334754.P6455078739019662696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A242262 (n + 1) ^ 2 - 2) (A104807 (n + 1))

end

end A334754.P6455078739019662696

/-! ## A334754.P13747045729047311640

`xor(A000007(2*n), A104807(n+1))`
-/

namespace A334754.P13747045729047311640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A104807 (n + 1))

end

end A334754.P13747045729047311640

/-! ## A334754.P15760244069530885070

`A104807(n+1)-A007814(A000040(n+1))`
-/

namespace A334754.P15760244069530885070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) - A007814 (A000040 (n + 1)).toNat

end

end A334754.P15760244069530885070

/-! ## A334754.P6765771586736117812

`and(A104807(n+1), A133489(n+1))`
-/

namespace A334754.P6765771586736117812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104807 (n + 1)) (A133489 (n + 1))

end

end A334754.P6765771586736117812

/-! ## A334754.P6901321385997144322

`and(A104807(n+1), A153893(n))`
-/

namespace A334754.P6901321385997144322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104807 (n + 1)) (A153893 n)

end

end A334754.P6901321385997144322

/-! ## A334754.P14287094935605101200

`and(A086224(n), A104807(n+1))`
-/

namespace A334754.P14287094935605101200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A104807 (n + 1))

end

end A334754.P14287094935605101200

/-! ## A334754.P3297089112950598924

`and(A086225(n), A104807(n+1))`
-/

namespace A334754.P3297089112950598924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A104807 (n + 1))

end

end A334754.P3297089112950598924

/-! ## A334754.P11308349038503702635

`and(A104807(n+1), A196305(n))`
-/

namespace A334754.P11308349038503702635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104807 (n + 1)) (A196305 n)

end

end A334754.P11308349038503702635

/-! ## A334754.P9807860250940500028

`and(A104807(n+1), A198276(n))`
-/

namespace A334754.P9807860250940500028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104807 (n + 1)) (A198276 n)

end

end A334754.P9807860250940500028

/-! ## A334754.P760721241039870695

`and(A104807(n+1), A291557(n))`
-/

namespace A334754.P760721241039870695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104807 (n + 1)) (A291557 n)

end

end A334754.P760721241039870695

/-!
# A334755: Sum of the lengths of the long legs of all Pythagorean triangles with perimeter A010814(n).

The programs for A334755, there is no canonical definition to state claims against.
-/

/-! ## A334755.P18170872910663074747

`A334758(n+1)-(A334757(n+1)+A334753(n+1))`
-/

namespace A334755.P18170872910663074747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334758 (n + 1) - (A334757 (n + 1) + A334753 (n + 1))

end

end A334755.P18170872910663074747

/-!
# A334756: Irregular table read by rows: T(n,k) is the number of 2n-step closed self-avoiding paths on a 2D square lattice with area k, where k >= n-1.

The programs for A334756, there is no canonical definition to state claims against.
-/

/-! ## A334756.P11384476511920979105

`A000005(A369471(n+4))*A100612(n+1)`
-/

namespace A334756.P11384476511920979105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A369471 (n + 4)).toNat * A100612 (n + 1)

end

end A334756.P11384476511920979105

/-!
# A334757: Sum of the lengths of the hypotenuses of all Pythagorean triangles with perimeter A010814(n).

The programs for A334757, there is no canonical definition to state claims against.
-/

/-! ## A334757.P3119893118325659799

`A334758(n+1)-(A334755(n+1)+A334753(n+1))`
-/

namespace A334757.P3119893118325659799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334758 (n + 1) - (A334755 (n + 1) + A334753 (n + 1))

end

end A334757.P3119893118325659799

/-!
# A334758: Sum of the perimeters of all Pythagorean triangles with perimeter A010814(n).

The programs for A334758, there is no canonical definition to state claims against.
-/

/-! ## A334758.P11711895167967948887

`A010814(n+1)*A334607(n+1)`
-/

namespace A334758.P11711895167967948887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) * A334607 (n + 1)

end

end A334758.P11711895167967948887

/-! ## A334758.P537426835568819237

`(A136000(n+1)+1)*A334607(n+1)`
-/

namespace A334758.P537426835568819237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136000 (n + 1) + 1) * A334607 (n + 1)

end

end A334758.P537426835568819237

/-! ## A334758.P5639110713442538971

`2*A005279(n+1)*A334607(n+1)`
-/

namespace A334758.P5639110713442538971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005279 (n + 1) * A334607 (n + 1))

end

end A334758.P5639110713442538971

/-! ## A334758.P7219022193418840134

`2*comp[C(A053627(n+1), n)]*A334607(n+1)`
-/

namespace A334758.P7219022193418840134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053627 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A334607 (n + 1)

end

end A334758.P7219022193418840134

/-! ## A334758.P11117900790846128788

`2*(lt[0, A270417(n+1)]+1)*A334607(n+1)`
-/

namespace A334758.P11117900790846128788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℤ) * A334607 (n + 1)

end

end A334758.P11117900790846128788

/-! ## A334758.P15353650056771802035

`2*(lt[3, 2*A250068(n+1)]+1)*A334607(n+1)`
-/

namespace A334758.P15353650056771802035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℤ) * A334607 (n + 1)

end

end A334758.P15353650056771802035

/-! ## A334758.P12258436583528691764

`2*(lt[A053626(n+1), n+1]+1)*A334607(n+1)`
-/

namespace A334758.P12258436583528691764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℤ) * A334607 (n + 1)

end

end A334758.P12258436583528691764

/-! ## A334758.P10718015440715047607

`A010814(n+1)*A270417(A005279(n+1))`
-/

namespace A334758.P10718015440715047607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) * A270417 (A005279 (n + 1)).toNat

end

end A334758.P10718015440715047607

/-!
# A334759: Perimeters of Pythagorean triangles with even side lengths.

The programs for A334759, there is no canonical definition to state claims against.
-/

/-! ## A334759.P824497964454046894

`2*A010814(n+1)`
-/

namespace A334759.P824497964454046894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010814 (n + 1)

end

end A334759.P824497964454046894

/-! ## A334759.P15827147349095813673

`4*A005279(n+1)`
-/

namespace A334759.P15827147349095813673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005279 (n + 1)

end

end A334759.P15827147349095813673

/-! ## A334759.P10205873145389397329

`4*A343281(n+1)`
-/

namespace A334759.P10205873145389397329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A343281 (n + 1)

end

end A334759.P10205873145389397329

/-! ## A334759.P6275526552383809770

`2*(A136000(n+1)+1)`
-/

namespace A334759.P6275526552383809770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A136000 (n + 1) + 1)

end

end A334759.P6275526552383809770

/-! ## A334759.P13887152601900267122

`4*comp[C(A053626(n+1), n)]`
-/

namespace A334759.P13887152601900267122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053626 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A334759.P13887152601900267122

/-! ## A334759.P12136309562245026301

`4*comp[C(A053627(n+1), n)]`
-/

namespace A334759.P12136309562245026301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053627 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A334759.P12136309562245026301

/-! ## A334759.P1877005427595910264

`4*round(lt[0, A024155(n+1)]/2)`
-/

namespace A334759.P1877005427595910264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2)

end

end A334759.P1877005427595910264

/-! ## A334759.P1350768124324350778

`A008574(A005279(n+1))`
-/

namespace A334759.P1350768124324350778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A005279 (n + 1)).toNat

end

end A334759.P1350768124324350778

/-! ## A334759.P9125431462291518154

`A004277(A010814(n+1))`
-/

namespace A334759.P9125431462291518154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A010814 (n + 1)).toNat

end

end A334759.P9125431462291518154

/-! ## A334759.P14659467977783632772

`A026491(A136000(n+1))`
-/

namespace A334759.P14659467977783632772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A136000 (n + 1)).toNat

end

end A334759.P14659467977783632772

/-!
# A334760: Perimeters of Pythagorean triangles whose shortest side length divides its perimeter.

The programs for A334760, there is no canonical definition to state claims against.
-/

/-! ## A334760.P4371015294245982045

`A010814(eq[A114099(n), A326688(n)])`
-/

namespace A334760.P4371015294245982045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334760.P4371015294245982045

/-! ## A334760.P16576306633697843393

`A010814(A194151(n+1))%A086522(3*(n+1))`
-/

namespace A334760.P16576306633697843393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010814 (A194151 (n + 1)).toNat) (A086522 (3 * (n + 1)))

end

end A334760.P16576306633697843393

/-! ## A334760.P10571910847549431704

`A010814(∑[A294335(n)!])`
-/

namespace A334760.P10571910847549431704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A294335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334760.P10571910847549431704

/-! ## A334760.P11120248928186285947

`A000005(A113972(n))*A129512(n+1)`
-/

namespace A334760.P11120248928186285947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113972 n).toNat * A129512 (n + 1)

end

end A334760.P11120248928186285947

/-!
# A334761: Perimeters of Pythagorean triangles whose hypotenuse divides the difference of squares of its long and short legs.

The programs for A334761, there is no canonical definition to state claims against.
-/

/-! ## A334761.P12821283436354287908

`∑[A040871(∑[A208688(3*(n+1))])]`
-/

namespace A334761.P12821283436354287908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040871 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334761.P12821283436354287908

/-! ## A334761.P3976422264950789951

`A040871(A078857(n+1))*A161602(n+1)`
-/

namespace A334761.P3976422264950789951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040871 (A078857 (n + 1)).toNat * A161602 (n + 1)

end

end A334761.P3976422264950789951

/-! ## A334761.P8653704010747035312

`A161602(n+1)*A165734(A269143(n+1))`
-/

namespace A334761.P8653704010747035312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1) * A165734 (A269143 (n + 1)).toNat

end

end A334761.P8653704010747035312

/-!
# A334762: a(n) = ceiling (n / A000005(n)).

The programs for A334762, the canonical program `A334762.P3333346293027360721` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334762 has offset 1).

The definition of A334762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334762.P3333346293027360721

`floor(n/∏{e}[n+1, #+1])+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334762

/-- `floor(n/∏{e}[n+1, #+1])+1` -/
def P3333346293027360721.Spec : Prop :=
  ∀ n, P3333346293027360721.a n = A334762 (n + 1)

theorem P3333346293027360721.correct : P3333346293027360721.Spec := by
  intro n
  simp only [A334762, Nat.add_sub_cancel]

end A334762

/-! ## A334762.P16697406706848637967

`ceil((n+1)/∏{e}[n+1, #+1])`
-/

namespace A334762.P16697406706848637967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌉

end

end A334762.P16697406706848637967

namespace A334762

/-- `ceil((n+1)/∏{e}[n+1, #+1])` -/
def P16697406706848637967.Spec : Prop :=
  ∀ n, P16697406706848637967.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P4897108945744977020

`ceil((n+1)/∑{d}[n+1, gcd(n, #)])`
-/

namespace A334762.P4897108945744977020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ)⌉

end

end A334762.P4897108945744977020

namespace A334762

/-- `ceil((n+1)/∑{d}[n+1, gcd(n, #)])` -/
def P4897108945744977020.Spec : Prop :=
  ∀ n, P4897108945744977020.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P10678770097491777056

`ceil((n+1)/∑{d}[n+1, ((#+1)%2)!])`
-/

namespace A334762.P10678770097491777056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2) : ℕ) : ℚ)⌉

end

end A334762.P10678770097491777056

namespace A334762

/-- `ceil((n+1)/∑{d}[n+1, ((#+1)%2)!])` -/
def P10678770097491777056.Spec : Prop :=
  ∀ n, P10678770097491777056.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P4608306364766613245

`ceil((n+1)/Δ[A006218(n)])`
-/

namespace A334762.P4608306364766613245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A334762.P4608306364766613245

namespace A334762

/-- `ceil((n+1)/Δ[A006218(n)])` -/
def P4608306364766613245.Spec : Prop :=
  ∀ n, P4608306364766613245.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P11623080071297357708

`floor(n/A000005(n+1))+1`
-/

namespace A334762.P11623080071297357708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000005 (n + 1) : ℚ)⌋ + 1

end

end A334762.P11623080071297357708

namespace A334762

/-- `floor(n/A000005(n+1))+1` -/
def P11623080071297357708.Spec : Prop :=
  ∀ n, P11623080071297357708.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P13025065746673424609

`ceil((n+1)/(A032741(n+1)+1))`
-/

namespace A334762.P13025065746673424609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A032741 (n + 1) + 1 : ℚ)⌉

end

end A334762.P13025065746673424609

namespace A334762

/-- `ceil((n+1)/(A032741(n+1)+1))` -/
def P13025065746673424609.Spec : Prop :=
  ∀ n, P13025065746673424609.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P8332262123189817827

`ceil((n+1)/A000005(C(n+1, n)))`
-/

namespace A334762.P8332262123189817827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A000005 (Nat.choose (n + 1) n) : ℚ)⌉

end

end A334762.P8332262123189817827

namespace A334762

/-- `ceil((n+1)/A000005(C(n+1, n)))` -/
def P8332262123189817827.Spec : Prop :=
  ∀ n, P8332262123189817827.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P16929757317767293259

`ceil((n+1)/A000005(char[1]+1+n))`
-/

namespace A334762.P16929757317767293259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A000005 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ)⌉

end

end A334762.P16929757317767293259

namespace A334762

/-- `ceil((n+1)/A000005(char[1]+1+n))` -/
def P16929757317767293259.Spec : Prop :=
  ∀ n, P16929757317767293259.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P6238151010864787225

`A368625(n+1)+A078709(n+1)`
-/

namespace A334762.P6238151010864787225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368625 (n + 1) + A078709 (n + 1)

end

end A334762.P6238151010864787225

namespace A334762

/-- `A368625(n+1)+A078709(n+1)` -/
def P6238151010864787225.Spec : Prop :=
  ∀ n, P6238151010864787225.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P10093375553782103092

`ceil((n+1)/(A033273(n+1)+A001221(n+1)))`
-/

namespace A334762.P10093375553782103092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A033273 (n + 1) + A001221 (n + 1) : ℚ)⌉

end

end A334762.P10093375553782103092

namespace A334762

/-- `ceil((n+1)/(A033273(n+1)+A001221(n+1)))` -/
def P10093375553782103092.Spec : Prop :=
  ∀ n, P10093375553782103092.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P17051664009307080613

`ceil((n+1)/∑{d}[n+1, A000040(#+1)%2])`
-/

namespace A334762.P17051664009307080613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2 : ℤ) : ℚ)⌉

end

end A334762.P17051664009307080613

namespace A334762

/-- `ceil((n+1)/∑{d}[n+1, A000040(#+1)%2])` -/
def P17051664009307080613.Spec : Prop :=
  ∀ n, P17051664009307080613.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P2935941206223064636

`ceil((n+1)/∑{d}[n+1, A157532(#+4)/3])`
-/

namespace A334762.P2935941206223064636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∑ d ∈ Nat.divisors (f1 n), (A157532 (d + 4) : ℚ) / 3)⌉

end

end A334762.P2935941206223064636

namespace A334762

/-- `ceil((n+1)/∑{d}[n+1, A157532(#+4)/3])` -/
def P2935941206223064636.Spec : Prop :=
  ∀ n, P2935941206223064636.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P3660628231035890427

`floor(n/A096737(n+1))+1`
-/

namespace A334762.P3660628231035890427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A096737 (n + 1) : ℚ)⌋ + 1

end

end A334762.P3660628231035890427

namespace A334762

/-- `floor(n/A096737(n+1))+1` -/
def P3660628231035890427.Spec : Prop :=
  ∀ n, P3660628231035890427.a n = A334762 (n + 1)

end A334762

/-! ## A334762.P1668908120391488084

`A161655(n+1)/A000005(n+1)`
-/

namespace A334762.P1668908120391488084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161655 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A334762.P1668908120391488084

namespace A334762

/-- `A161655(n+1)/A000005(n+1)` -/
def P1668908120391488084.Spec : Prop :=
  ∀ n, P1668908120391488084.a n = (A334762 (n + 1) : ℚ)

end A334762

/-!
# A334764: a(n) = Product_{k=1..n} d(2*k - 1), where d() is the number of divisors function A000005.

The programs for A334764, the canonical program `A334764.P433040283585662283` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334764 has offset 1).

The definition of A334764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334764.P433040283585662283

`∏[∏{e}[Δ[n²], #+1]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334764

/-- `∏[∏{e}[Δ[n²], #+1]]` -/
def P433040283585662283.Spec : Prop :=
  ∀ n, (P433040283585662283.a n : ℤ) = A334764 (n + 1)

theorem P433040283585662283.correct : P433040283585662283.Spec := by
  intro n
  simp only [A334764, Nat.add_sub_cancel]

end A334764

/-! ## A334764.P7802583091599910328

`∏[∑{d}[2*n+1, #%2]]`
-/

namespace A334764.P7802583091599910328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P7802583091599910328

namespace A334764

/-- `∏[∑{d}[2*n+1, #%2]]` -/
def P7802583091599910328.Spec : Prop :=
  ∀ n, (P7802583091599910328.a n : ℤ) = A334764 (n + 1)

end A334764

/-! ## A334764.P3571245298648983991

`∏[∑{d}[2*n+1, gcd(2, #)]]`
-/

namespace A334764.P3571245298648983991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 2 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P3571245298648983991

namespace A334764

/-- `∏[∑{d}[2*n+1, gcd(2, #)]]` -/
def P3571245298648983991.Spec : Prop :=
  ∀ n, (P3571245298648983991.a n : ℤ) = A334764 (n + 1)

end A334764

/-! ## A334764.P15943462543727815797

`∏[∑{d}[2*n+1, and(1, #)]]`
-/

namespace A334764.P15943462543727815797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P15943462543727815797

namespace A334764

/-- `∏[∑{d}[2*n+1, and(1, #)]]` -/
def P15943462543727815797.Spec : Prop :=
  ∀ n, (P15943462543727815797.a n : ℤ) = A334764 (n + 1)

end A334764

/-! ## A334764.P10208173143913040559

`∏[∑{d}[2*n+1, ceil(acot(#))]]`
-/

namespace A334764.P10208173143913040559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P10208173143913040559

namespace A334764

/-- `∏[∑{d}[2*n+1, ceil(acot(#))]]` -/
def P10208173143913040559.Spec : Prop :=
  ∀ n, P10208173143913040559.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P4709681619818549150

`∏[∑{d}[2*n+1, -(-1)^#]]`
-/

namespace A334764.P4709681619818549150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P4709681619818549150

namespace A334764

/-- `∏[∑{d}[2*n+1, -(-1)^#]]` -/
def P4709681619818549150.Spec : Prop :=
  ∀ n, P4709681619818549150.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P10627969795873499106

`a(n-1)*∏{e}[2*n+1, #+1]` with `a(0)=1`
-/

namespace A334764.P10627969795873499106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A334764.P10627969795873499106

namespace A334764

/-- `a(n-1)*∏{e}[2*n+1, #+1]` -/
def P10627969795873499106.Spec : Prop :=
  ∀ n, (P10627969795873499106.a n : ℤ) = A334764 (n + 1)

end A334764

/-! ## A334764.P15024697538989106039

`∏[A099774(n+1)]`
-/

namespace A334764.P15024697538989106039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P15024697538989106039

namespace A334764

/-- `∏[A099774(n+1)]` -/
def P15024697538989106039.Spec : Prop :=
  ∀ n, P15024697538989106039.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P13635241097803445311

`∏[A000005(Δ[n²])]`
-/

namespace A334764.P13635241097803445311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P13635241097803445311

namespace A334764

/-- `∏[A000005(Δ[n²])]` -/
def P13635241097803445311.Spec : Prop :=
  ∀ n, P13635241097803445311.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P3911994795371379451

`∏[A132881(comp[2*n])]`
-/

namespace A334764.P3911994795371379451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P3911994795371379451

namespace A334764

/-- `∏[A132881(comp[2*n])]` -/
def P3911994795371379451.Spec : Prop :=
  ∀ n, P3911994795371379451.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P4087205604413431495

`∏[A001227(2*n+1)]`
-/

namespace A334764.P4087205604413431495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P4087205604413431495

namespace A334764

/-- `∏[A001227(2*n+1)]` -/
def P4087205604413431495.Spec : Prop :=
  ∀ n, P4087205604413431495.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P10045984374368003835

`∏[A046524(2*n+1)]`
-/

namespace A334764.P10045984374368003835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046524 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P10045984374368003835

namespace A334764

/-- `∏[A046524(2*n+1)]` -/
def P10045984374368003835.Spec : Prop :=
  ∀ n, P10045984374368003835.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P6198347153289528974

`∏[A048272(2*n+1)]`
-/

namespace A334764.P6198347153289528974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P6198347153289528974

namespace A334764

/-- `∏[A048272(2*n+1)]` -/
def P6198347153289528974.Spec : Prop :=
  ∀ n, P6198347153289528974.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P5351466470895196728

`∏[A060764(2*n+1)]`
-/

namespace A334764.P5351466470895196728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P5351466470895196728

namespace A334764

/-- `∏[A060764(2*n+1)]` -/
def P5351466470895196728.Spec : Prop :=
  ∀ n, P5351466470895196728.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P16265404686027200308

`∏[A069733(2*n+1)]`
-/

namespace A334764.P16265404686027200308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P16265404686027200308

namespace A334764

/-- `∏[A069733(2*n+1)]` -/
def P16265404686027200308.Spec : Prop :=
  ∀ n, P16265404686027200308.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P3799861437827673568

`∏[A069735(2*n+1)]`
-/

namespace A334764.P3799861437827673568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P3799861437827673568

namespace A334764

/-- `∏[A069735(2*n+1)]` -/
def P3799861437827673568.Spec : Prop :=
  ∀ n, P3799861437827673568.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P6100964782718578810

`∏[A076984(2*n+1)]`
-/

namespace A334764.P6100964782718578810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P6100964782718578810

namespace A334764

/-- `∏[A076984(2*n+1)]` -/
def P6100964782718578810.Spec : Prop :=
  ∀ n, P6100964782718578810.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P3060048171597837766

`∏[A080226(2*n+1)]`
-/

namespace A334764.P3060048171597837766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P3060048171597837766

namespace A334764

/-- `∏[A080226(2*n+1)]` -/
def P3060048171597837766.Spec : Prop :=
  ∀ n, P3060048171597837766.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P16446930894052512007

`∏[A112329(2*n+1)]`
-/

namespace A334764.P16446930894052512007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P16446930894052512007

namespace A334764

/-- `∏[A112329(2*n+1)]` -/
def P16446930894052512007.Spec : Prop :=
  ∀ n, P16446930894052512007.a n = A334764 (n + 1)

end A334764

/-! ## A334764.P3503324410043381343

`∏[A125747(2*n+1)]`
-/

namespace A334764.P3503324410043381343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334764.P3503324410043381343

namespace A334764

/-- `∏[A125747(2*n+1)]` -/
def P3503324410043381343.Spec : Prop :=
  ∀ n, P3503324410043381343.a n = A334764 (n + 1)

end A334764

/-!
# A334765: Numbers m such that the numbers of 1's in the binary expansion of m equals the negative sum of balanced ternary trits of m.

The programs for A334765, there is no canonical definition to state claims against.
-/

/-! ## A334765.P13982143205608027369

`eq[A011371(n), A350229(n)]`
-/

namespace A334765.P13982143205608027369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334765.P13982143205608027369

/-! ## A334765.P6516854341498115625

`eq[-A000120(n), A065363(n)]`
-/

namespace A334765.P6516854341498115625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334765.P6516854341498115625

/-! ## A334765.P2095372942590167558

`eq[A096288(n)+A065363(n), A053735(n)]`
-/

namespace A334765.P2095372942590167558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n + A065363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334765.P2095372942590167558

/-! ## A334765.P14126956945819842663

`eq[A096288(2*n), A053735(n)]`
-/

namespace A334765.P14126956945819842663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334765.P14126956945819842663

/-! ## A334765.P16481692200254412201

`eq[A053735(n), A096288(A005843(n))]`
-/

namespace A334765.P16481692200254412201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334765.P16481692200254412201

/-!
# A334766: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, the prime tower factorization of a(n+1) can be obtained from that of a(n) by adding or removing exactly one prime number.

The programs for A334766, there is no canonical definition to state claims against.
-/

/-! ## A334766.P1654675907652676909

`A036561(A163335(n)%A109552(n))`
-/

namespace A334766.P1654675907652676909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (Int.tmod (A163335 n) (A109552 n)).toNat

end

end A334766.P1654675907652676909

/-!
# A334767: a(n) = Product_{k=1..n} d(2*k), where d() is the number of divisors function A000005.

The programs for A334767, the canonical program `A334767.P8956393373536267702` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334767 has offset 1).

The definition of A334767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334767.P8956393373536267702

`∏[∏{e}[2*(n+1), #+1]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334767

/-- `∏[∏{e}[2*(n+1), #+1]]` -/
def P8956393373536267702.Spec : Prop :=
  ∀ n, (P8956393373536267702.a n : ℤ) = A334767 (n + 1)

theorem P8956393373536267702.correct : P8956393373536267702.Spec := by
  intro n
  simp only [A334767, Nat.add_sub_cancel]

end A334767

/-! ## A334767.P5628328848381239579

`∏[(val(n+1, 2)+2)*∑{d}[n+1, #%2]]`
-/

namespace A334767.P5628328848381239579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 2) * (∑ d ∈ Nat.divisors (f2 n), d % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P5628328848381239579

namespace A334767

/-- `∏[(val(n+1, 2)+2)*∑{d}[n+1, #%2]]` -/
def P5628328848381239579.Spec : Prop :=
  ∀ n, (P5628328848381239579.a n : ℤ) = A334767 (n + 1)

end A334767

/-! ## A334767.P754431637394456353

`∏[A099777(n+1)]`
-/

namespace A334767.P754431637394456353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P754431637394456353

namespace A334767

/-- `∏[A099777(n+1)]` -/
def P754431637394456353.Spec : Prop :=
  ∀ n, P754431637394456353.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P8284790212109809697

`∏[A395330(∑[n+2])]`
-/

namespace A334767.P8284790212109809697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395330 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P8284790212109809697

namespace A334767

/-- `∏[A395330(∑[n+2])]` -/
def P8284790212109809697.Spec : Prop :=
  ∀ n, P8284790212109809697.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P15301908029510203086

`∏[A066660(n+1)+1]`
-/

namespace A334767.P15301908029510203086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P15301908029510203086

namespace A334767

/-- `∏[A066660(n+1)+1]` -/
def P15301908029510203086.Spec : Prop :=
  ∀ n, P15301908029510203086.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P1841525663299436630

`∏[A069930(n+1)+2]`
-/

namespace A334767.P1841525663299436630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P1841525663299436630

namespace A334767

/-- `∏[A069930(n+1)+2]` -/
def P1841525663299436630.Spec : Prop :=
  ∀ n, P1841525663299436630.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P10055854969001078327

`∏[A000005(2*(n+1))]`
-/

namespace A334767.P10055854969001078327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P10055854969001078327

namespace A334767

/-- `∏[A000005(2*(n+1))]` -/
def P10055854969001078327.Spec : Prop :=
  ∀ n, P10055854969001078327.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P2374817834779162428

`∏[A062558(2*(n+1))]`
-/

namespace A334767.P2374817834779162428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P2374817834779162428

namespace A334767

/-- `∏[A062558(2*(n+1))]` -/
def P2374817834779162428.Spec : Prop :=
  ∀ n, P2374817834779162428.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P17544758932372217597

`∏[A340273(2*(n+1))]`
-/

namespace A334767.P17544758932372217597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P17544758932372217597

namespace A334767

/-- `∏[A340273(2*(n+1))]` -/
def P17544758932372217597.Spec : Prop :=
  ∀ n, P17544758932372217597.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P16184375518586080677

`∏[abs(A329484(2*(n+1)))]`
-/

namespace A334767.P16184375518586080677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329484 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P16184375518586080677

namespace A334767

/-- `∏[abs(A329484(2*(n+1)))]` -/
def P16184375518586080677.Spec : Prop :=
  ∀ n, P16184375518586080677.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P1674622931839425664

`∏[sqrt(A035116(2*(n+1)))]`
-/

namespace A334767.P1674622931839425664
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P1674622931839425664

namespace A334767

/-- `∏[sqrt(A035116(2*(n+1)))]` -/
def P1674622931839425664.Spec : Prop :=
  ∀ n, P1674622931839425664.a n = (A334767 (n + 1) : ℝ)

end A334767

/-! ## A334767.P16252857818824943335

`∏[log2(A338506(2*(n+1)))]`
-/

namespace A334767.P16252857818824943335
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P16252857818824943335

namespace A334767

/-- `∏[log2(A338506(2*(n+1)))]` -/
def P16252857818824943335.Spec : Prop :=
  ∀ n, P16252857818824943335.a n = (A334767 (n + 1) : ℝ)

end A334767

/-! ## A334767.P5566144853241183370

`∏[A076984(2*(n+1))+1]`
-/

namespace A334767.P5566144853241183370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P5566144853241183370

namespace A334767

/-- `∏[A076984(2*(n+1))+1]` -/
def P5566144853241183370.Spec : Prop :=
  ∀ n, P5566144853241183370.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P14807253656659468214

`∏[A062011(2*(n+1))/2]`
-/

namespace A334767.P14807253656659468214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P14807253656659468214

namespace A334767

/-- `∏[A062011(2*(n+1))/2]` -/
def P14807253656659468214.Spec : Prop :=
  ∀ n, P14807253656659468214.a n = (A334767 (n + 1) : ℚ)

end A334767

/-! ## A334767.P7379892534505735889

`∏[A131089(2*(n+1))/2]`
-/

namespace A334767.P7379892534505735889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131089 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P7379892534505735889

namespace A334767

/-- `∏[A131089(2*(n+1))/2]` -/
def P7379892534505735889.Spec : Prop :=
  ∀ n, P7379892534505735889.a n = (A334767 (n + 1) : ℚ)

end A334767

/-! ## A334767.P12447571023761956384

`(A086327(n)+2)*a(n-1)` with `a(0)=2`
-/

namespace A334767.P12447571023761956384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (A086327 n + 2) * a (n - 1)

end

end A334767.P12447571023761956384

namespace A334767

/-- `(A086327(n)+2)*a(n-1)` -/
def P12447571023761956384.Spec : Prop :=
  ∀ n, P12447571023761956384.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P2059706589511003535

`a(n-1)*A000005(2*n+2)` with `a(0)=2`
-/

namespace A334767.P2059706589511003535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A000005 (2 * n + 2)

end

end A334767.P2059706589511003535

namespace A334767

/-- `a(n-1)*A000005(2*n+2)` -/
def P2059706589511003535.Spec : Prop :=
  ∀ n, P2059706589511003535.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P17406492139283717090

`∏[abs(A000005(n+2+n)-1)+1]`
-/

namespace A334767.P17406492139283717090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (n + 2 + n) - 1| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334767.P17406492139283717090

namespace A334767

/-- `∏[abs(A000005(n+2+n)-1)+1]` -/
def P17406492139283717090.Spec : Prop :=
  ∀ n, P17406492139283717090.a n = A334767 (n + 1)

end A334767

/-! ## A334767.P15788214832944558296

`record[a(n-1)*A000005(2*n)]` with `a(0)=2, a(1)=1, a(2)=6`
-/

namespace A334767.P15788214832944558296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 6] fun n f1 =>
  f1 (n - 1) * A000005 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334767.P15788214832944558296

namespace A334767

/-- `record[a(n-1)*A000005(2*n)]` -/
def P15788214832944558296.Spec : Prop :=
  ∀ n, P15788214832944558296.a n = A334767 (n + 1)

end A334767

/-!
# A334768: Self-convolution of A061397.

The programs for A334768, there is no canonical definition to state claims against.
-/

/-! ## A334768.P256914901027031611

`A294345(abs(1-n)+1)+A243485(A028310(n))`
-/

namespace A334768.P256914901027031611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294345 (|1 - (n : ℤ)| + 1).toNat + A243485 (A028310 n).toNat

end

end A334768.P256914901027031611

/-!
# A334769: Numbers m that generate rotationally symmetrical XOR-triangles T(m) that have central triangles of zeros.

The programs for A334769, there is no canonical definition to state claims against.
-/

/-! ## A334769.P5674477779626066320

`∩[A334915(2*n+1), A334556(n+2)]`
-/

namespace A334769.P5674477779626066320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334915 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334556 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334769.P5674477779626066320

/-!
# A334772: Array read by antidiagonals: T(n,k) is the number of permutations of k indistinguishable copies of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A334772, there is no canonical definition to state claims against.
-/

/-! ## A334772.P8752769811036642543

`A042950(n)*A257120(A056195(n+1))`
-/

namespace A334772.P8752769811036642543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n * A257120 (A056195 (n + 1)).toNat

end

end A334772.P8752769811036642543

/-!
# A334773: Array read by antidiagonals: T(n,k) is the number of permutations of k indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A334773, there is no canonical definition to state claims against.
-/

/-! ## A334773.P7054530581981025047

`A123104(A217919(n+1))*A235791(n+1)`
-/

namespace A334773.P7054530581981025047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123104 ((A217919 (n + 1)).toNat + 31) * A235791 (n + 1)

end

end A334773.P7054530581981025047

/-!
# A334775: Number of permutations of 2 indistinguishable copies of 1..n with exactly n local maxima.

The programs for A334775, there is no canonical definition to state claims against.
-/

/-! ## A334775.P6696362237213933403

`A334774(∑[n+1])`
-/

namespace A334775.P6696362237213933403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334774 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334775.P6696362237213933403

/-! ## A334775.P4535524001766538522

`record[root(A334774(n+1), A109954(n))]`
-/

namespace A334775.P4535524001766538522
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334774 (n + 1) : ℝ) ^ (1 / (A109954 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334775.P4535524001766538522

/-! ## A334775.P1509596585696560863

`record[root(A334774(n+1), A123967(n))]`
-/

namespace A334775.P1509596585696560863
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334774 (n + 1) : ℝ) ^ (1 / (A123967 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334775.P1509596585696560863

/-! ## A334775.P9534812243982718887

`record[gcd(A003992(n), A334774(n+1))]`
-/

namespace A334775.P9534812243982718887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003992 n) (A334774 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334775.P9534812243982718887

/-! ## A334775.P17155344735616672124

`record[A054525(n+1)*A334774(n+1)]`
-/

namespace A334775.P17155344735616672124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A334774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334775.P17155344735616672124

/-!
# A334776: Total number of peaks in all permutations of 2 indistinguishable copies of 1..n.

The programs for A334776, there is no canonical definition to state claims against.
-/

/-! ## A334776.P16851787657761120028

`A334777(n+1)-A000680(n+1)`
-/

namespace A334776.P16851787657761120028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334777 (n + 1) - A000680 (n + 1)

end

end A334776.P16851787657761120028

/-!
# A334777: Total number of local maxima in all permutations of 2 indistinguishable copies of 1..n.

The programs for A334777, there is no canonical definition to state claims against.
-/

/-! ## A334777.P1645149051944345642

`A334776(n+1)+A000680(n+1)`
-/

namespace A334777.P1645149051944345642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334776 (n + 1) + A000680 (n + 1)

end

end A334777.P1645149051944345642

/-! ## A334777.P8761372970330508918

`A006902(n+1)+A334776(n+1)+A267532(n+1)`
-/

namespace A334777.P8761372970330508918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006902 (n + 1) + (A334776 (n + 1) + A267532 (n + 1))

end

end A334777.P8761372970330508918

/-! ## A334777.P4354889423146844035

`A334776(n+1)+A097591(A000217(2*(n+1)))`
-/

namespace A334777.P4354889423146844035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334776 (n + 1) + A097591 (A000217 (2 * (n + 1))).toNat

end

end A334777.P4354889423146844035

/-! ## A334777.P4162169266142045335

`ceil(A007680(2*(n+1))/A007283(n+2))`
-/

namespace A334777.P4162169266142045335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007680 (2 * (n + 1)) : ℚ) / (A007283 (n + 2) : ℚ)⌉

end

end A334777.P4162169266142045335

/-!
# A334778: Triangle read by rows: T(n,k) is the number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly k local maxima.

The programs for A334778, there is no canonical definition to state claims against.
-/

/-! ## A334778.P11040913704816692341

`A054390(A003422(n))*A339030(n)`
-/

namespace A334778.P11040913704816692341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A003422 n).toNat * A339030 n

end

end A334778.P11040913704816692341

/-! ## A334778.P14033385390606832493

`lcm(A084938(n), A303757(A095816(n)))`
-/

namespace A334778.P14033385390606832493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084938 n) (A303757 (A095816 n).toNat)

end

end A334778.P14033385390606832493

/-! ## A334778.P101371207382770018

`lcm(A271703(n), A307720(A149323(n)))`
-/

namespace A334778.P101371207382770018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A271703 n) (A307720 (A149323 n).toNat)

end

end A334778.P101371207382770018

/-! ## A334778.P7371577160047840242

`and(A002260(A013989(n)), A014322(n))`
-/

namespace A334778.P7371577160047840242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (A013989 n).toNat) (A014322 n)

end

end A334778.P7371577160047840242

/-!
# A334779: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly n local maxima.

The programs for A334779, there is no canonical definition to state claims against.
-/

/-! ## A334779.P9809603591206455350

`A334778(∑[n]+n)`
-/

namespace A334779.P9809603591206455350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A334779.P9809603591206455350

/-! ## A334779.P14555452000817333286

`lcm(A028310(n), A334778(A000096(n)))`
-/

namespace A334779.P14555452000817333286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A334778 (A000096 n).toNat)

end

end A334779.P14555452000817333286

/-! ## A334779.P5568990189946152467

`or(A000007(n), A334778(A000096(n)))`
-/

namespace A334779.P5568990189946152467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334778 (A000096 n).toNat)

end

end A334779.P5568990189946152467

/-! ## A334779.P15449395821344364167

`A097807(n)²*A334778(A000096(n))`
-/

namespace A334779.P15449395821344364167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A334778 (A000096 n).toNat

end

end A334779.P15449395821344364167

/-! ## A334779.P16047508227472774347

`A007318(C(2, n))*A334778(A000096(n))`
-/

namespace A334779.P16047508227472774347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A334778 (A000096 n).toNat

end

end A334779.P16047508227472774347

/-!
# A334781: Array read by antidiagonals: T(n,k) = Sum_{i=1..n} binomial(1+i,2)^k.

The programs for A334781, there is no canonical definition to state claims against.
-/

/-! ## A334781.P4701276947859036307

`A291656(n)%A348596(A260443(2*(n+1)))`
-/

namespace A334781.P4701276947859036307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291656 n) (A348596 (A260443 (2 * (n + 1))).toNat)

end

end A334781.P4701276947859036307

/-! ## A334781.P3066764204362531520

`A291656(n)%A070939(A199346(n+1))`
-/

namespace A334781.P3066764204362531520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291656 n) (A070939 (A199346 (n + 1)).toNat)

end

end A334781.P3066764204362531520

/-! ## A334781.P15529921964755875645

`and(A064989(A007068(n+2)), A332673(n))`
-/

namespace A334781.P15529921964755875645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064989 (A007068 (n + 2)).toNat) (A332673 n)

end

end A334781.P15529921964755875645

/-! ## A334781.P18143661570777645483

`A094937(A335095(n))`
-/

namespace A334781.P18143661570777645483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A335095 n).toNat

end

end A334781.P18143661570777645483

/-! ## A334781.P1618199414292039086

`A291656(A004885(n+1))`
-/

namespace A334781.P1618199414292039086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A004885 (n + 1)).toNat

end

end A334781.P1618199414292039086

/-!
# A334782: a(n) = Sum_{d|n} lcm(d, tau(d)).

The programs for A334782, the canonical program `A334782.P6541908692521483420` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334782 has offset 1).

The definition of A334782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334782.P6541908692521483420

`∑{d}[n+1, A009230(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334782

/-- `∑{d}[n+1, A009230(#)]` -/
def P6541908692521483420.Spec : Prop :=
  ∀ n, P6541908692521483420.a n = A334782 (n + 1)

theorem P6541908692521483420.correct : P6541908692521483420.Spec := by
  intro n
  simp only [A334782, Nat.add_sub_cancel]

end A334782

/-! ## A334782.P3968677227511082436

`∑{d}[n+1, #*A090387(#)]`
-/

namespace A334782.P3968677227511082436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A090387 d

end

end A334782.P3968677227511082436

namespace A334782

/-- `∑{d}[n+1, #*A090387(#)]` -/
def P3968677227511082436.Spec : Prop :=
  ∀ n, P3968677227511082436.a n = A334782 (n + 1)

end A334782

/-! ## A334782.P13451302553021803833

`∑{d}[n+1, lcm(#, A000005(#))]`
-/

namespace A334782.P13451302553021803833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A000005 d)

end

end A334782.P13451302553021803833

namespace A334782

/-- `∑{d}[n+1, lcm(#, A000005(#))]` -/
def P13451302553021803833.Spec : Prop :=
  ∀ n, (P13451302553021803833.a n : ℤ) = A334782 (n + 1)

end A334782

/-!
# A334783: a(n) = Sum_{d|n} lcm(d, sigma(d)).

The programs for A334783, the canonical program `A334783.P14356093041569867515` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334783 has offset 1).

The definition of A334783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334783.P15054051175925846618

`∑{d}[n+1, A009242(#)]`
-/

namespace A334783.P15054051175925846618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009242 d

end

end A334783.P15054051175925846618

namespace A334783

/-- `∑{d}[n+1, A009242(#)]` -/
def P15054051175925846618.Spec : Prop :=
  ∀ n, P15054051175925846618.a n = A334783 (n + 1)

end A334783

/-! ## A334783.P5211740527382878027

`∑{d}[n+1, #*A017665(#)]`
-/

namespace A334783.P5211740527382878027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A017665 d

end

end A334783.P5211740527382878027

namespace A334783

/-- `∑{d}[n+1, #*A017665(#)]` -/
def P5211740527382878027.Spec : Prop :=
  ∀ n, P5211740527382878027.a n = A334783 (n + 1)

end A334783

/-! ## A334783.P14356093041569867515

`∑{d}[n+1, lcm(#, A000203(#))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334783

/-- `∑{d}[n+1, lcm(#, A000203(#))]` -/
def P14356093041569867515.Spec : Prop :=
  ∀ n, (P14356093041569867515.a n : ℤ) = A334783 (n + 1)

theorem P14356093041569867515.correct : P14356093041569867515.Spec := by
  intro n
  simp only [A334783, Nat.add_sub_cancel]

end A334783

/-! ## A334783.P7433864556643538669

`∑{d}[n+1, A000203(#)*A017666(#)]`
-/

namespace A334783.P7433864556643538669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A017666 d

end

end A334783.P7433864556643538669

namespace A334783

/-- `∑{d}[n+1, A000203(#)*A017666(#)]` -/
def P7433864556643538669.Spec : Prop :=
  ∀ n, P7433864556643538669.a n = A334783 (n + 1)

end A334783

/-!
# A334784: a(n) = Sum_{d|n} lcm(tau(d), sigma(d)).

The programs for A334784, the canonical program `A334784.P11044993459707876958` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334784 has offset 1).

The definition of A334784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334784.P11044993459707876958

`∑{d}[n+1, A009278(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334784

/-- `∑{d}[n+1, A009278(#)]` -/
def P11044993459707876958.Spec : Prop :=
  ∀ n, P11044993459707876958.a n = A334784 (n + 1)

theorem P11044993459707876958.correct : P11044993459707876958.Spec := by
  intro n
  simp only [A334784, Nat.add_sub_cancel]

end A334784

/-! ## A334784.P7843663261545406106

`∑{d}[n+1, lcm(A000005(#), A000203(#))]`
-/

namespace A334784.P7843663261545406106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (A000005 d) (A000203 d)

end

end A334784.P7843663261545406106

namespace A334784

/-- `∑{d}[n+1, lcm(A000005(#), A000203(#))]` -/
def P7843663261545406106.Spec : Prop :=
  ∀ n, (P7843663261545406106.a n : ℤ) = A334784 (n + 1)

end A334784

/-! ## A334784.P14677075710460783503

`∑{d}[A008619(2*n), A009278(#)%A017293(n)²]`
-/

namespace A334784.P14677075710460783503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A009278 d) (A017293 n ^ 2)

end

end A334784.P14677075710460783503

namespace A334784

/-- `∑{d}[A008619(2*n), A009278(#)%A017293(n)²]` -/
def P14677075710460783503.Spec : Prop :=
  ∀ n, P14677075710460783503.a n = A334784 (n + 1)

end A334784

/-! ## A334784.P8261821931274791000

`(1-2*A000035(n))²*∑{d}[A008619(2*n), A009278(#)]`
-/

namespace A334784.P8261821931274791000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A009278 d)

end

end A334784.P8261821931274791000

namespace A334784

/-- `(1-2*A000035(n))²*∑{d}[A008619(2*n), A009278(#)]` -/
def P8261821931274791000.Spec : Prop :=
  ∀ n, P8261821931274791000.a n = A334784 (n + 1)

end A334784

/-!
# A334785: a(n) is the total number of down steps before the first up step in all 3_2-Dyck paths of length 4*n. A 3_2-Dyck path is a lattice path with steps (1, 3), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

The programs for A334785, the canonical program `A334785.P9600476233071478434` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334785 has offset 0).

The definition of A334785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334785.P9600476233071478434

`A002293(n)+A069271(n)-A000038(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334785

/-- `A002293(n)+A069271(n)-A000038(n)` -/
def P9600476233071478434.Spec : Prop :=
  ∀ n, P9600476233071478434.a n = A334785 n

theorem P9600476233071478434.correct : P9600476233071478434.Spec := by
  intro n
  simp only [A334785]

end A334785

/-! ## A334785.P16275023273945734786

`(A069271(n)+A002293(n))*A178334(n)`
-/

namespace A334785.P16275023273945734786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069271 n + A002293 n) * A178334 n

end

end A334785.P16275023273945734786

namespace A334785

/-- `(A069271(n)+A002293(n))*A178334(n)` -/
def P16275023273945734786.Spec : Prop :=
  ∀ n, P16275023273945734786.a n = A334785 n

end A334785

/-! ## A334785.P9944263983530072174

`lcm(A069271(n)+A002293(n), A134323(n+2))`
-/

namespace A334785.P9944263983530072174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069271 n + A002293 n) (A134323 (n + 2))

end

end A334785.P9944263983530072174

namespace A334785

/-- `lcm(A069271(n)+A002293(n), A134323(n+2))` -/
def P9944263983530072174.Spec : Prop :=
  ∀ n, (P9944263983530072174.a n : ℤ) = A334785 n

end A334785

/-! ## A334785.P14847680300255526302

`(A069271(n)+A002293(n))*A052409(n²+1)`
-/

namespace A334785.P14847680300255526302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069271 n + A002293 n) * A052409 (n ^ 2 + 1)

end

end A334785.P14847680300255526302

namespace A334785

/-- `(A069271(n)+A002293(n))*A052409(n²+1)` -/
def P14847680300255526302.Spec : Prop :=
  ∀ n, P14847680300255526302.a n = A334785 n

end A334785

/-! ## A334785.P9987385072250495981

`A002293(n)+A069271(n)-A010673(A008574(n))`
-/

namespace A334785.P9987385072250495981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n + (A069271 n - A010673 (A008574 n).toNat)

end

end A334785.P9987385072250495981

namespace A334785

/-- `A002293(n)+A069271(n)-A010673(A008574(n))` -/
def P9987385072250495981.Spec : Prop :=
  ∀ n, P9987385072250495981.a n = A334785 n

end A334785

/-! ## A334785.P13835356582149102579

`(A069271(n)+A002293(n))*A001222(A100549(n+1))`
-/

namespace A334785.P13835356582149102579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069271 n + A002293 n) * A001222 (A100549 (n + 1)).toNat

end

end A334785.P13835356582149102579

namespace A334785

/-- `(A069271(n)+A002293(n))*A001222(A100549(n+1))` -/
def P13835356582149102579.Spec : Prop :=
  ∀ n, P13835356582149102579.a n = A334785 n

end A334785

/-! ## A334785.P815466568270862589

`(A069271(n)+A002293(n))%A006634(n)`
-/

namespace A334785.P815466568270862589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069271 n + A002293 n) (A006634 n)

end

end A334785.P815466568270862589

namespace A334785

/-- `(A069271(n)+A002293(n))%A006634(n)` -/
def P815466568270862589.Spec : Prop :=
  ∀ n, P815466568270862589.a n = A334785 n

end A334785

/-!
# A334786: a(n) is the total number of down steps before the first up step in all 4_2-Dyck paths of length 5*n. A 4_2-Dyck path is a lattice path with steps (1, 4), (1, -1) that starts and ends at y = 0 and stays above the line y = -2.

The programs for A334786, there is no canonical definition to state claims against.
-/

/-! ## A334786.P11831924229110608642

`(A118969(n)+A002294(n))*A057427(n)`
-/

namespace A334786.P11831924229110608642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118969 n + A002294 n) * A057427 n

end

end A334786.P11831924229110608642

/-! ## A334786.P18076928322703737593

`(A118969(n)+A002294(n))*A178334(n)`
-/

namespace A334786.P18076928322703737593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118969 n + A002294 n) * A178334 n

end

end A334786.P18076928322703737593

/-! ## A334786.P18133467725628460611

`(A118969(n)+A002294(n))*char[A007318(n)]`
-/

namespace A334786.P18133467725628460611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118969 n + A002294 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334786.P18133467725628460611

/-! ## A334786.P1883136452668836127

`(A118969(n)+A002294(n))%A118971(n)`
-/

namespace A334786.P1883136452668836127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118969 n + A002294 n) (A118971 n)

end

end A334786.P1883136452668836127

/-! ## A334786.P11761409018728836964

`(A118969(n)+A002294(n))*A226173(A045337(n+1))`
-/

namespace A334786.P11761409018728836964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118969 n + A002294 n) * A226173 (A045337 (n + 1)).toNat

end

end A334786.P11761409018728836964

/-!
# A334787: a(n) is the total number of down steps before the first up step in all 4_3-Dyck paths of length 5*n. A 4_3-Dyck path is a lattice path with steps (1, 4), (1, -1) that starts and ends at y = 0 and stays above the line y = -3.

The programs for A334787, there is no canonical definition to state claims against.
-/

/-! ## A334787.P17697968198381130196

`A124724(n)-A118971(A028310(n))`
-/

namespace A334787.P17697968198381130196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124724 n - A118971 (A028310 n).toNat

end

end A334787.P17697968198381130196

/-! ## A334787.P3568853793253969275

`4/(n+1)*A001449(n)-A118971(round(sqrt(n²+1)))`
-/

namespace A334787.P3568853793253969275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A001449 n : ℚ) - (A118971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A334787.P3568853793253969275

/-! ## A334787.P17074054816743567644

`4*A001449(n)/(n+1)-A118971(A028310(n))`
-/

namespace A334787.P17074054816743567644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A001449 n : ℚ) / (n + 1 : ℚ)) - (A118971 (A028310 n).toNat : ℚ)

end

end A334787.P17074054816743567644

/-!
# A334788: Largest possible area of a Pythagorean triangle with perimeter A010814(n).

The programs for A334788, there is no canonical definition to state claims against.
-/

/-! ## A334788.P3081083203348276697

`A057101(comp[A057107(2*n+1)])`
-/

namespace A334788.P3081083203348276697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057107 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334788.P3081083203348276697

/-! ## A334788.P5801834472517869988

`A057101(comp[A057094(4^∑{e}[n+1, #])])`
-/

namespace A334788.P5801834472517869988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 (4 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334788.P5801834472517869988

/-! ## A334788.P12688578884346269718

`A057101(A226857(n+1)%A226858(n+1)+1)`
-/

namespace A334788.P12688578884346269718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057101 (Int.tmod (A226857 (n + 1)) (A226858 (n + 1)) + 1).toNat

end

end A334788.P12688578884346269718

/-! ## A334788.P15767044585002106793

`A057101(comp[a(A193592(n)-1)-12]+1)` with `a(0)=7`
-/

namespace A334788.P15767044585002106793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (A193592 n - 1).toNat - 12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A334788.P15767044585002106793

/-! ## A334788.P12217172762041873111

`A057101(lt[A137747(n), A027642(n)]+1)`
-/

namespace A334788.P12217172762041873111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A334788.P12217172762041873111

/-!
# A334789: 

The programs for A334789, there is no canonical definition to state claims against.
-/

/-! ## A334789.P15173316872709382728

`2^round(n/(n/3+1))`
-/

namespace A334789.P15173316872709382728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / ((n : ℚ) / 3 + 1)) : ℤ)

end

end A334789.P15173316872709382728

/-!
# A334790: Perimeters of Pythagorean triangles whose perimeter divides their area.

The programs for A334790, there is no canonical definition to state claims against.
-/

/-! ## A334790.P1436908579879778821

`∪[A182996(n+1), A334759(n+1)]`
-/

namespace A334790.P1436908579879778821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334790.P1436908579879778821

/-! ## A334790.P2315817299564063151

`2*(lt[A055527(n+3), A057353(n)]+3)`
-/

namespace A334790.P2315817299564063151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055527 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3)

end

end A334790.P2315817299564063151

/-! ## A334790.P7885566699028973041

`∪[2*A010814(n+1), A182996(n+1)]`
-/

namespace A334790.P7885566699028973041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334790.P7885566699028973041

/-! ## A334790.P15953171907791330268

`A020739(lt[A055527(n+3), A057353(n)])`
-/

namespace A334790.P15953171907791330268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055527 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334790.P15953171907791330268

/-! ## A334790.P13599969842583275251

`∪[A005843(A010814(n+1)), A182996(n+1)]`
-/

namespace A334790.P13599969842583275251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A010814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334790.P13599969842583275251

/-! ## A334790.P15200795232323474039

`A163300(lt[A055527(n+3), A057353(n)]+1)+4`
-/

namespace A334790.P15200795232323474039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055527 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) + 4

end

end A334790.P15200795232323474039

/-! ## A334790.P15534119304164084663

`A020739(lt[2/(n+3)*A054436(n+3), A057353(n)])`
-/

namespace A334790.P15534119304164084663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 3 : ℚ) * (A054436 (n + 3) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A334790.P15534119304164084663

/-!
# A334791: Perimeters of Pythagorean triangles with squarefree area.

The programs for A334791, there is no canonical definition to state claims against.
-/

/-! ## A334791.P13197829806883220185

`A024364(eq[0, A052458(n+1)])`
-/

namespace A334791.P13197829806883220185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334791.P13197829806883220185

/-! ## A334791.P12470973605355236325

`∩[A047406(n+1), A157940(n+1)]`
-/

namespace A334791.P12470973605355236325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334791.P12470973605355236325

/-!
# A334793: a(n) = Sum_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

The programs for A334793, the canonical program `A334793.P7332075651216311592` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334793 has offset 1).

The definition of A334793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334793.P7332075651216311592

`∑{d}[n+1, A324528(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334793

/-- `∑{d}[n+1, A324528(#)]` -/
def P7332075651216311592.Spec : Prop :=
  ∀ n, P7332075651216311592.a n = A334793 (n + 1)

theorem P7332075651216311592.correct : P7332075651216311592.Spec := by
  intro n
  simp only [A334793, Nat.add_sub_cancel]

end A334793

/-! ## A334793.P14472328243358067341

`A000027(∑{d}[A077168(n), A324528(#)])`
-/

namespace A334793.P14472328243358067341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, A324528 d).toNat

end

end A334793.P14472328243358067341

namespace A334793

/-- `A000027(∑{d}[A077168(n), A324528(#)])` -/
def P14472328243358067341.Spec : Prop :=
  ∀ n, P14472328243358067341.a n = A334793 (n + 1)

end A334793

/-!
# A334794: a(n) = Sum_{d|n} lcm(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A334794, the canonical program `A334794.P3653736457854949232` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334794 has offset 1).

The definition of A334794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334794.P3653736457854949232

`∑{d}[n+1, A324529(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334794

/-- `∑{d}[n+1, A324529(#)]` -/
def P3653736457854949232.Spec : Prop :=
  ∀ n, P3653736457854949232.a n = A334794 (n + 1)

theorem P3653736457854949232.correct : P3653736457854949232.Spec := by
  intro n
  simp only [A334794, Nat.add_sub_cancel]

end A334794

/-! ## A334794.P5251463300612871717

`A325029(n+1)%A325041(A200770(n+1))`
-/

namespace A334794.P5251463300612871717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325029 (n + 1)) (A325041 (A200770 (n + 1)).toNat)

end

end A334794.P5251463300612871717

namespace A334794

/-- `A325029(n+1)%A325041(A200770(n+1))` -/
def P5251463300612871717.Spec : Prop :=
  ∀ n, P5251463300612871717.a n = A334794 (n + 1)

end A334794

/-!
# A334795: a(n) = Product_{d|n} lcm(d, tau(d)) where tau(k) is the number of divisors of k (A000005).

The programs for A334795, the canonical program `A334795.P3191709436635477433` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334795 has offset 1).

The definition of A334795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334795.P3191709436635477433

`∏{d}[n+1, A009230(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334795

/-- `∏{d}[n+1, A009230(#)]` -/
def P3191709436635477433.Spec : Prop :=
  ∀ n, P3191709436635477433.a n = A334795 (n + 1)

theorem P3191709436635477433.correct : P3191709436635477433.Spec := by
  intro n
  simp only [A334795, Nat.add_sub_cancel]

end A334795

/-! ## A334795.P6741567971049701489

`∏{d}[n+1, #*A090387(#)]`
-/

namespace A334795.P6741567971049701489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℤ) * A090387 d

end

end A334795.P6741567971049701489

namespace A334795

/-- `∏{d}[n+1, #*A090387(#)]` -/
def P6741567971049701489.Spec : Prop :=
  ∀ n, P6741567971049701489.a n = A334795 (n + 1)

end A334795

/-! ## A334795.P16454696245758229973

`∏{d}[n+1, lcm(#, A000005(#))]`
-/

namespace A334795.P16454696245758229973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A000005 d)

end

end A334795.P16454696245758229973

namespace A334795

/-- `∏{d}[n+1, lcm(#, A000005(#))]` -/
def P16454696245758229973.Spec : Prop :=
  ∀ n, (P16454696245758229973.a n : ℤ) = A334795 (n + 1)

end A334795

/-! ## A334795.P3010428157187129718

`A306705(n+1)/A334664(n+1)`
-/

namespace A334795.P3010428157187129718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A334664 (n + 1) : ℚ)

end

end A334795.P3010428157187129718

namespace A334795

/-- `A306705(n+1)/A334664(n+1)` -/
def P3010428157187129718.Spec : Prop :=
  ∀ n, P3010428157187129718.a n = (A334795 (n + 1) : ℚ)

end A334795

/-! ## A334795.P10493476273056678042

`A306705(n+1)/∏{d}[n+1, gcd(#, A000005(#))]`
-/

namespace A334795.P10493476273056678042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000005 d) : ℕ) : ℚ)

end

end A334795.P10493476273056678042

namespace A334795

/-- `A306705(n+1)/∏{d}[n+1, gcd(#, A000005(#))]` -/
def P10493476273056678042.Spec : Prop :=
  ∀ n, P10493476273056678042.a n = (A334795 (n + 1) : ℚ)

end A334795

/-!
# A334797: Primes q such that p-1 | q-1 or q-1 | p-1 for every prime p | 2^(q-1)-1.

The programs for A334797, there is no canonical definition to state claims against.
-/

/-! ## A334797.P8051351947473027442

`A000040(lt[A287854(n), 3]+1)`
-/

namespace A334797.P8051351947473027442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287854 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A334797.P8051351947473027442

/-! ## A334797.P3097454441152339628

`∩[A118849(n+1), A029916(n)]`
-/

namespace A334797.P3097454441152339628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334797.P3097454441152339628

/-! ## A334797.P9187166198917074169

`A000040(lt[A238095(3*(n+1)), n])`
-/

namespace A334797.P9187166198917074169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238095 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334797.P9187166198917074169

/-! ## A334797.P8596298332780539986

`∩[A028778(n+1), A197298(n+1)]`
-/

namespace A334797.P8596298332780539986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334797.P8596298332780539986

/-! ## A334797.P2358119968100487273

`A000040(lt[A113081(3*n), ∑[2*n]²])`
-/

namespace A334797.P2358119968100487273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 (3 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334797.P2358119968100487273

/-!
# A334799: Perimeters of Pythagorean triangles whose short leg divides its area.

The programs for A334799, there is no canonical definition to state claims against.
-/

/-! ## A334799.P15511172059226548900

`A010814(lt[A242584(n+1), A203330(3*n+4)]+1)`
-/

namespace A334799.P15511172059226548900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203330 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A334799.P15511172059226548900

/-! ## A334799.P3962994046435244140

`∩[2*n, A027854(A232012(n+1))]`
-/

namespace A334799.P3962994046435244140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (A232012 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334799.P3962994046435244140

/-! ## A334799.P824342412309531881

`∩[A331088(n+1), A334760(n+1)]`
-/

namespace A334799.P824342412309531881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334799.P824342412309531881

/-! ## A334799.P12467287123932036852

`A091011(n+1)*A328579(A289580(n))`
-/

namespace A334799.P12467287123932036852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091011 (n + 1) * A328579 (A289580 n).toNat

end

end A334799.P12467287123932036852

/-! ## A334799.P1056669365658334704

`∩[A334760(n+1), A064466(n)]`
-/

namespace A334799.P1056669365658334704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334799.P1056669365658334704

