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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A262700: Primes p such that pi(p^2)*pi(q^2) is a square for some prime q < p, where pi(x) denotes the number of primes not exceeding x.

The programs for A262700, there is no canonical definition to state claims against.
-/

/-! ## A262700.P8220107247095172484

`A386528(A289121(n+1))`
-/

namespace A262700.P8220107247095172484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386528 (A289121 (n + 1)).toNat

end

end A262700.P8220107247095172484

/-!
# A262702: Lexicographically earliest sequence of distinct prime numbers such that the decimal representations of two consecutive terms overlap.

The programs for A262702, there is no canonical definition to state claims against.
-/

/-! ## A262702.P3499292178843356410

`A185035(A185035(n+4))+A107801(n+1)`
-/

namespace A262702.P3499292178843356410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 (A185035 (n + 4)).toNat + A107801 (n + 1)

end

end A262702.P3499292178843356410

/-!
# A262703: First differences of A252001.

The programs for A262703, there is no canonical definition to state claims against.
-/

/-! ## A262703.P6453559488980860388

`Δ[A252001(n+1)]`
-/

namespace A262703.P6453559488980860388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262703.P6453559488980860388

/-! ## A262703.P242369414159490975

`A252001(n+2)-A252001(n+1)`
-/

namespace A262703.P242369414159490975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252001 (n + 2) - A252001 (n + 1)

end

end A262703.P242369414159490975

/-!
# A262704: Triangle: Newton expansion of C(n,m)^3, read by rows.

The programs for A262704, there is no canonical definition to state claims against.
-/

/-! ## A262704.P17055474316234859400

`A118759(A114176(n)*A116088(n))`
-/

namespace A262704.P17055474316234859400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A114176 n * A116088 n).toNat

end

end A262704.P17055474316234859400

/-! ## A262704.P294720519350951341

`A118759(A001263(n+1)*A116088(n))`
-/

namespace A262704.P294720519350951341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A001263 (n + 1) * A116088 n).toNat

end

end A262704.P294720519350951341

/-! ## A262704.P14765066545906281184

`A007954(A214753(n)^A020639(n+1))`
-/

namespace A262704.P14765066545906281184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A214753 n : ℚ) ^ (A020639 (n + 1) : ℤ))).toNat

end

end A262704.P14765066545906281184

/-!
# A262706: Triangle: Newton expansion of C(n,m)^5, read by rows.

The programs for A262706, there is no canonical definition to state claims against.
-/

/-! ## A262706.P8441077599812776249

`A331844(∑[A087808(n)!])`
-/

namespace A262706.P8441077599812776249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A087808 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262706.P8441077599812776249

/-! ## A262706.P7242253261756218152

`A000110(A258859(n))*A185285(n)`
-/

namespace A262706.P7242253261756218152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A258859 n).toNat * A185285 n

end

end A262706.P7242253261756218152

/-! ## A262706.P4388355741639645689

`A027642(A258849(n))*A281446(n)`
-/

namespace A262706.P4388355741639645689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A258849 n).toNat * A281446 n

end

end A262706.P4388355741639645689

/-!
# A262707: Positive integers m such that pi(k^2)*pi(m^2) is a square for some 1 < k < m, where pi(x) denotes the number of primes not exceeding x.

The programs for A262707, there is no canonical definition to state claims against.
-/

/-! ## A262707.P10356787013429120861

`eq[A000040(A303837(2*n+5)), A138033(n+1)]`
-/

namespace A262707.P10356787013429120861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A303837 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262707.P10356787013429120861

/-! ## A262707.P6867954889070452922

`A316851(n+1)+eq[A316828(n), A316854(n+1)]`
-/

namespace A262707.P6867954889070452922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316851 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A262707.P6867954889070452922

/-!
# A262708: a(n) = p-(p/5) where p = prime(n) and (p/5) is a Legendre symbol.

The programs for A262708, the canonical program `A262708.P6887640225270983865` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262708 has offset 4).

The definition of A262708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262708.P6887640225270983865

`A086304(n+1)+or(5, A090722(n+4))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A262708

/-- `A086304(n+1)+or(5, A090722(n+4))` -/
def P6887640225270983865.Spec : Prop :=
  ∀ n, P6887640225270983865.a n = A262708 (n + 4)

theorem P6887640225270983865.correct : P6887640225270983865.Spec := by
  intro n
  simp only [A262708, Nat.add_sub_cancel]

end A262708

/-! ## A262708.P6385143661653765115

`A001602(n+4)*A116514(n+4)`
-/

namespace A262708.P6385143661653765115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 4) * A116514 (n + 4)

end

end A262708.P6385143661653765115

namespace A262708

/-- `A001602(n+4)*A116514(n+4)` -/
def P6385143661653765115.Spec : Prop :=
  ∀ n, P6385143661653765115.a n = A262708 (n + 4)

end A262708

/-! ## A262708.P2693665613343741641

`p?[2*n+7]-A040471(p?[2*n+7])+3`
-/

namespace A262708.P2693665613343741641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A040471 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) + 3

end

end A262708.P2693665613343741641

namespace A262708

/-- `p?[2*n+7]-A040471(p?[2*n+7])+3` -/
def P2693665613343741641.Spec : Prop :=
  ∀ n, P2693665613343741641.a n = A262708 (n + 4)

end A262708

/-! ## A262708.P132257561774767957

`A065091(n+3)-A100047(A065091(n+3))`
-/

namespace A262708.P132257561774767957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 3) - A100047 (A065091 (n + 3)).toNat

end

end A262708.P132257561774767957

namespace A262708

/-- `A065091(n+3)-A100047(A065091(n+3))` -/
def P132257561774767957.Spec : Prop :=
  ∀ n, P132257561774767957.a n = A262708 (n + 4)

end A262708

/-! ## A262708.P7457950151529140676

`A000040(n+4)-A080891(A000040(n+4))`
-/

namespace A262708.P7457950151529140676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - A080891 (A000040 (n + 4)).toNat

end

end A262708.P7457950151529140676

namespace A262708

/-- `A000040(n+4)-A080891(A000040(n+4))` -/
def P7457950151529140676.Spec : Prop :=
  ∀ n, P7457950151529140676.a n = A262708 (n + 4)

end A262708

/-! ## A262708.P6040361894828857456

`A008578(n+5)-A080891(A008578(n+5))`
-/

namespace A262708.P6040361894828857456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 5) - A080891 (A008578 (n + 5)).toNat

end

end A262708.P6040361894828857456

namespace A262708

/-- `A008578(n+5)-A080891(A008578(n+5))` -/
def P6040361894828857456.Spec : Prop :=
  ∀ n, P6040361894828857456.a n = A262708 (n + 4)

end A262708

/-! ## A262708.P15616126004103195620

`A090417(n+1)-A100047(A090417(n+1))`
-/

namespace A262708.P15616126004103195620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - A100047 (A090417 (n + 1)).toNat

end

end A262708.P15616126004103195620

namespace A262708

/-- `A090417(n+1)-A100047(A090417(n+1))` -/
def P15616126004103195620.Spec : Prop :=
  ∀ n, P15616126004103195620.a n = A262708 (n + 4)

end A262708

/-! ## A262708.P12442476600827511090

`A001177(A090417(n+1))*A116514(n+4)`
-/

namespace A262708.P12442476600827511090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A090417 (n + 1)).toNat * A116514 (n + 4)

end

end A262708.P12442476600827511090

namespace A262708

/-- `A001177(A090417(n+1))*A116514(n+4)` -/
def P12442476600827511090.Spec : Prop :=
  ∀ n, P12442476600827511090.a n = A262708 (n + 4)

end A262708

/-!
# A262709: Expansion of f(-x^4, -x^4) * f(-x, -x^5) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A262709, there is no canonical definition to state claims against.
-/

/-! ## A262709.P8320253699791700342

`A120630(n+1)^A194893(A305425(3*n+5))`
-/

namespace A262709.P8320253699791700342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120630 (n + 1) : ℚ) ^ (A194893 (A305425 (3 * n + 5)).toNat : ℤ)

end

end A262709.P8320253699791700342

/-!
# A262710: Powers of -4.

The programs for A262710, the canonical program `A262710.P12654579294262269959` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262710 has offset 0).

The definition of A262710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262710.P12654579294262269959

`(-4)^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262710

/-- `(-4)^n` -/
def P12654579294262269959.Spec : Prop :=
  ∀ n, P12654579294262269959.a n = A262710 n

theorem P12654579294262269959.correct : P12654579294262269959.Spec := by
  intro n
  simp only [A262710]

end A262710

/-! ## A262710.P1068425468323578700

`4^n*cos(π*n)`
-/

namespace A262710.P1068425468323578700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℝ) * Real.cos (Real.pi * (n : ℝ))

end

end A262710.P1068425468323578700

namespace A262710

/-- `4^n*cos(π*n)` -/
def P1068425468323578700.Spec : Prop :=
  ∀ n, P1068425468323578700.a n = (A262710 n : ℝ)

end A262710

/-! ## A262710.P4619075721956581858

`16*a(n-2)` with `a(0)=1, a(1)=-4`
-/

namespace A262710.P4619075721956581858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n a =>
  16 * a (n - 2)

end

end A262710.P4619075721956581858

namespace A262710

/-- `16*a(n-2)` -/
def P4619075721956581858.Spec : Prop :=
  ∀ n, P4619075721956581858.a n = A262710 n

end A262710

/-!
# A262711: Numbers k such that sum of digits of k^2 is 7.

The programs for A262711, there is no canonical definition to state claims against.
-/

/-! ## A262711.P7148046533127801183

`eq[7, A004159(n)]`
-/

namespace A262711.P7148046533127801183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262711.P7148046533127801183

/-! ## A262711.P11563713125930653352

`eq[7, n²-A224977(n)]`
-/

namespace A262711.P11563713125930653352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262711.P11563713125930653352

/-! ## A262711.P16967565177070126162

`lt[A004159(n), dr(A067552(n))]`
-/

namespace A262711.P16967565177070126162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067552 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A262711.P16967565177070126162

/-! ## A262711.P14475487552168574191

`eq[7, A118881(n)-A067552(n)]`
-/

namespace A262711.P14475487552168574191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262711.P14475487552168574191

/-! ## A262711.P10916450725072004612

`eq[3, A007318(A007953(n)²-A067552(n))]`
-/

namespace A262711.P10916450725072004612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007953 n ^ 2 - A067552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262711.P10916450725072004612

/-!
# A262712: Numbers k such that sum of digits of k^2 is 9.

The programs for A262712, there is no canonical definition to state claims against.
-/

/-! ## A262712.P3866068880197201094

`filter[A061904(n+1), A117567(#)]`
-/

namespace A262712.P3866068880197201094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117567 (f1 j).toNat = 1) n)

end

end A262712.P3866068880197201094

/-! ## A262712.P17363617305564835944

`filter[A061904(n+2), A093719(#)]`
-/

namespace A262712.P17363617305564835944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A262712.P17363617305564835944

/-! ## A262712.P15400143876672276132

`eq[9, ∑{digits}[n², #]]`
-/

namespace A262712.P15400143876672276132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262712.P15400143876672276132

/-! ## A262712.P7185972889007076561

`eq[9, A004159(n)]`
-/

namespace A262712.P7185972889007076561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262712.P7185972889007076561

/-! ## A262712.P17286201529394488049

`record[3*(n+1)/A061903(3*(n+1))]`
-/

namespace A262712.P17286201529394488049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℚ) / (A061903 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262712.P17286201529394488049

/-! ## A262712.P11950142411243180198

`lt[A054055(A004159(n)+2), 2]`
-/

namespace A262712.P11950142411243180198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004159 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A262712.P11950142411243180198

/-! ## A262712.P16382772389294071483

`filter[A061904(n+1), A079978(#)]`
-/

namespace A262712.P16382772389294071483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A262712.P16382772389294071483

/-! ## A262712.P8568033943269342173

`filter[A061904(n+1), A189706(#)]`
-/

namespace A262712.P8568033943269342173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189706 (f1 j).toNat = 1) n)

end

end A262712.P8568033943269342173

/-! ## A262712.P3086039350086441742

`filter[A061904(n+1), A204418(#)]`
-/

namespace A262712.P3086039350086441742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A262712.P3086039350086441742

/-! ## A262712.P10830013970929068061

`filter[A061904(n+2), A173857(#)]`
-/

namespace A262712.P10830013970929068061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A262712.P10830013970929068061

/-!
# A262713: Numbers k such that the sum of digits of k^2 is 10.

The programs for A262713, there is no canonical definition to state claims against.
-/

/-! ## A262713.P9118394379546609804

`∩[A056020(n+1), A061905(n+1)]`
-/

namespace A262713.P9118394379546609804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262713.P9118394379546609804

/-! ## A262713.P8274422905665502081

`eq[10, A004159(n)]`
-/

namespace A262713.P8274422905665502081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262713.P8274422905665502081

/-! ## A262713.P3179433276982875985

`eq[10, n²-A224977(n)]`
-/

namespace A262713.P3179433276982875985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262713.P3179433276982875985

/-! ## A262713.P10709904175424551032

`eq[A067552(n)+10, A118881(n)]`
-/

namespace A262713.P10709904175424551032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n + 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262713.P10709904175424551032

/-! ## A262713.P17536402142854980877

`lt[A118880(A004159(n)), A007953(n)]`
-/

namespace A262713.P17536402142854980877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262713.P17536402142854980877

/-!
# A262714: a(n) = a(n-1)*a(n-2) + 1, with a(0) = a(1) = 2.

The programs for A262714, the canonical program `A262714.P2175517275308227925` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262714 has offset 0).

The definition of A262714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+1` (program `A262714.P2175517275308227925`, by `A262714.P2175517275308227925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262714.P2175517275308227925

`a(n-1)*a(n-2)+1` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262714

/-- `a(n-1)*a(n-2)+1` -/
def P2175517275308227925.Spec : Prop :=
  ∀ n, (P2175517275308227925.a n : ℤ) = A262714 n

theorem P2175517275308227925.correct : P2175517275308227925.Spec := by
  intro n
  simp only [A262714]

end A262714

/-! ## A262714.P10369080029288598242

`ceil(a(n-2)/acot(a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A262714.P10369080029288598242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  ⌈(a (n - 2) : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌉

end

end A262714.P10369080029288598242

namespace A262714

/-- `ceil(a(n-2)/acot(a(n-1)))` -/
def P10369080029288598242.Spec : Prop :=
  ∀ n, P10369080029288598242.a n = A262714 n

end A262714

/-! ## A262714.P6300711139203957933

`lcm(a(n-1), a(n-2))+1` with `a(0)=2, a(1)=2, a(2)=5`
-/

namespace A262714.P6300711139203957933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 5] fun n a =>
  Nat.lcm (a (n - 1)) (a (n - 2)) + 1

end

end A262714.P6300711139203957933

namespace A262714

/-- `lcm(a(n-1), a(n-2))+1` -/
def P6300711139203957933.Spec : Prop :=
  ∀ n, (P6300711139203957933.a n : ℤ) = A262714 n

end A262714

/-! ## A262714.P15969888885724967379

`1-ceil(-a(n-1))*a(n-2)` with `a(0)=2, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A262714.P15969888885724967379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  1 - (-a (n - 1)) * a (n - 2)

end

end A262714.P15969888885724967379

namespace A262714

/-- `1-ceil(-a(n-1))*a(n-2)` -/
def P15969888885724967379.Spec : Prop :=
  ∀ n, P15969888885724967379.a n = A262714 n

end A262714

/-! ## A262714.P9975438071165762487

`abs(xor(a(n-1)*a(n-2), -1))` with `a(0)=2, a(1)=2`
-/

namespace A262714.P9975438071165762487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  |Int.xor (a (n - 1) * a (n - 2)) (-1)|

end

end A262714.P9975438071165762487

namespace A262714

/-- `abs(xor(a(n-1)*a(n-2), -1))` -/
def P9975438071165762487.Spec : Prop :=
  ∀ n, P9975438071165762487.a n = A262714 n

end A262714

/-!
# A262715: a(n) = 29^(2*n+1).

The programs for A262715, the canonical program `A262715.P13271118052882846464` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262715 has offset 0).

The definition of A262715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29^(2*n+1)` (program `A262715.P13271118052882846464`, by `A262715.P13271118052882846464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262715.P13271118052882846464

`29^(2*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262715

/-- `29^(2*n+1)` -/
def P13271118052882846464.Spec : Prop :=
  ∀ n, (P13271118052882846464.a n : ℤ) = A262715 n

theorem P13271118052882846464.correct : P13271118052882846464.Spec := by
  intro n
  simp only [A262715]

end A262715

/-! ## A262715.P2734395276384283767

`record[29^xor(1, n)]`
-/

namespace A262715.P2734395276384283767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262715.P2734395276384283767

namespace A262715

/-- `record[29^xor(1, n)]` -/
def P2734395276384283767.Spec : Prop :=
  ∀ n, (P2734395276384283767.a n : ℤ) = A262715 n

end A262715

/-! ## A262715.P11069320389048255076

`a(n-1)*841` with `a(0)=29`
-/

namespace A262715.P11069320389048255076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29] fun n a =>
  a (n - 1) * 841

end

end A262715.P11069320389048255076

namespace A262715

/-- `a(n-1)*841` -/
def P11069320389048255076.Spec : Prop :=
  ∀ n, (P11069320389048255076.a n : ℤ) = A262715 n

end A262715

/-! ## A262715.P16694623215843954426

`record[29^((n+1)/2^val(n+1, 2))]`
-/

namespace A262715.P16694623215843954426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (29 : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262715.P16694623215843954426

namespace A262715

/-- `record[29^((n+1)/2^val(n+1, 2))]` -/
def P16694623215843954426.Spec : Prop :=
  ∀ n, P16694623215843954426.a n = (A262715 n : ℝ)

end A262715

/-! ## A262715.P14360552987721438846

`A009973(Δ[n²])`
-/

namespace A262715.P14360552987721438846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262715.P14360552987721438846

namespace A262715

/-- `A009973(Δ[n²])` -/
def P14360552987721438846.Spec : Prop :=
  ∀ n, P14360552987721438846.a n = A262715 n

end A262715

/-!
# A262716: a(n) = 31^(2*n+1).

The programs for A262716, the canonical program `A262716.P10109807057506736439` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262716 has offset 0).

The definition of A262716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31^(2*n+1)` (program `A262716.P10109807057506736439`, by `A262716.P10109807057506736439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262716.P10109807057506736439

`31^(2*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262716

/-- `31^(2*n+1)` -/
def P10109807057506736439.Spec : Prop :=
  ∀ n, (P10109807057506736439.a n : ℤ) = A262716 n

theorem P10109807057506736439.correct : P10109807057506736439.Spec := by
  intro n
  simp only [A262716]

end A262716

/-! ## A262716.P12333949303309565547

`record[31^xor(1, n)]`
-/

namespace A262716.P12333949303309565547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262716.P12333949303309565547

namespace A262716

/-- `record[31^xor(1, n)]` -/
def P12333949303309565547.Spec : Prop :=
  ∀ n, (P12333949303309565547.a n : ℤ) = A262716 n

end A262716

/-! ## A262716.P4555213382163044261

`a(n-1)*961` with `a(0)=31`
-/

namespace A262716.P4555213382163044261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [31] fun n a =>
  a (n - 1) * 961

end

end A262716.P4555213382163044261

namespace A262716

/-- `a(n-1)*961` -/
def P4555213382163044261.Spec : Prop :=
  ∀ n, (P4555213382163044261.a n : ℤ) = A262716 n

end A262716

/-! ## A262716.P3256888763120516224

`record[31^n^(n%2)]`
-/

namespace A262716.P3256888763120516224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262716.P3256888763120516224

namespace A262716

/-- `record[31^n^(n%2)]` -/
def P3256888763120516224.Spec : Prop :=
  ∀ n, (P3256888763120516224.a n : ℤ) = A262716 n

end A262716

/-! ## A262716.P6215285921448671443

`A009975(Δ[n²])`
-/

namespace A262716.P6215285921448671443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009975 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262716.P6215285921448671443

namespace A262716

/-- `A009975(Δ[n²])` -/
def P6215285921448671443.Spec : Prop :=
  ∀ n, P6215285921448671443.a n = A262716 n

end A262716

/-!
# A262717: a(n) = (n-1)*binomial(3*n-2,n)/(2*n-1) + (n+1)*binomial(3*n,n)/(2*n+1) - binomial(3*n-1,n).

The programs for A262717, the canonical program `A262717.P11064767684716280499` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262717 has offset 0).

The definition of A262717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262717.P11064767684716280499

`A174687(n)%A264772(A000124(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262717

/-- `A174687(n)%A264772(A000124(n))` -/
def P11064767684716280499.Spec : Prop :=
  ∀ n, P11064767684716280499.a n = A262717 n

theorem P11064767684716280499.correct : P11064767684716280499.Spec := by
  intro n
  simp only [A262717]

end A262717

/-! ## A262717.P12182994261367822867

`A355173(A132209(n))`
-/

namespace A262717.P12182994261367822867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (A132209 n).toNat

end

end A262717.P12182994261367822867

namespace A262717

/-- `A355173(A132209(n))` -/
def P12182994261367822867.Spec : Prop :=
  ∀ n, P12182994261367822867.a n = A262717 n

end A262717

/-! ## A262717.P10839895754014757854

`A059365((n+2)²+n²)`
-/

namespace A262717.P10839895754014757854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 ((n + 2) ^ 2 + n ^ 2)

end

end A262717.P10839895754014757854

namespace A262717

/-- `A059365((n+2)²+n²)` -/
def P10839895754014757854.Spec : Prop :=
  ∀ n, P10839895754014757854.a n = A262717 n

end A262717

/-! ## A262717.P4790003196136436792

`A106566((n+2)²+n²)`
-/

namespace A262717.P4790003196136436792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 ((n + 2) ^ 2 + n ^ 2)

end

end A262717.P4790003196136436792

namespace A262717

/-- `A106566((n+2)²+n²)` -/
def P4790003196136436792.Spec : Prop :=
  ∀ n, P4790003196136436792.a n = A262717 n

end A262717

/-! ## A262717.P16262537899499167833

`A053121(A117625(n)+2)`
-/

namespace A262717.P16262537899499167833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A117625 n + 2).toNat

end

end A262717.P16262537899499167833

namespace A262717

/-- `A053121(A117625(n)+2)` -/
def P16262537899499167833.Spec : Prop :=
  ∀ n, P16262537899499167833.a n = A262717 n

end A262717

/-! ## A262717.P5500155491854124087

`A053121(A051682(n)+3)`
-/

namespace A262717.P5500155491854124087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A051682 n + 3).toNat

end

end A262717.P5500155491854124087

namespace A262717

/-- `A053121(A051682(n)+3)` -/
def P5500155491854124087.Spec : Prop :=
  ∀ n, P5500155491854124087.a n = A262717 n

end A262717

/-!
# A262718: a(n) = (n+1)^n - 2*(n^n) + (n-1)^n.

The programs for A262718, the canonical program `A262718.P4053785777387087493` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262718 has offset 0).

The definition of A262718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n-2*n^n+(n-1)^n` (program `A262718.P4053785777387087493`, by `A262718.P4053785777387087493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262718.P4053785777387087493

`(n+1)^n-2*n^n+(n-1)^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262718

/-- `(n+1)^n-2*n^n+(n-1)^n` -/
def P4053785777387087493.Spec : Prop :=
  ∀ n, P4053785777387087493.a n = A262718 n

theorem P4053785777387087493.correct : P4053785777387087493.Spec := by
  intro n
  simp only [A262718]

end A262718

/-! ## A262718.P440896921352422199

`2*(A062024(n)-A000312(n))`
-/

namespace A262718.P440896921352422199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062024 n - A000312 n)

end

end A262718.P440896921352422199

namespace A262718

/-- `2*(A062024(n)-A000312(n))` -/
def P440896921352422199.Spec : Prop :=
  ∀ n, P440896921352422199.a n = A262718 n

end A262718

/-! ## A262718.P861587976658808762

`lcm(2, ((A065440(n)+A000169(n+1))/2)%(n^n))`
-/

namespace A262718.P861587976658808762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.tmod (SequenceMachineLib.roundAway ((A065440 n + A000169 (n + 1) : ℚ) / 2)) (n ^ n : ℤ))

end

end A262718.P861587976658808762

namespace A262718

/-- `lcm(2, ((A065440(n)+A000169(n+1))/2)%(n^n))` -/
def P861587976658808762.Spec : Prop :=
  ∀ n, (P861587976658808762.a n : ℤ) = A262718 n

end A262718

/-!
# A262719: a(n) is the smallest nonnegative k such that there is no 3 X 3 matrix with entries in {1,...,n} whose determinant is k.

The programs for A262719, there is no canonical definition to state claims against.
-/

/-! ## A262719.P10965048214262986439

`A066272(A137972(n))+A002415(n+2)`
-/

namespace A262719.P10965048214262986439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A137972 n).toNat + A002415 (n + 2)

end

end A262719.P10965048214262986439

/-!
# A262720: a(n) = Sum_{k=0..n/2} binomial(n+3,k)*binomial(n+1-k,k+1).

The programs for A262720, the canonical program `A262720.P7657853626115152366` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262720 has offset 0).

The definition of A262720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262720.P7657853626115152366

`A014531(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262720

/-- `A014531(n+1)-a(n-1)` -/
def P7657853626115152366.Spec : Prop :=
  ∀ n, P7657853626115152366.a n = A262720 n

theorem P7657853626115152366.correct : P7657853626115152366.Spec := by
  intro n
  simp only [A262720]

end A262720

/-! ## A262720.P12987610596221977041

`A025180(n+2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A262720.P12987610596221977041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A025180 (n + 2) + a (n - 2)

end

end A262720.P12987610596221977041

namespace A262720

/-- `A025180(n+2)+a(n-2)` -/
def P12987610596221977041.Spec : Prop :=
  ∀ n, P12987610596221977041.a n = A262720 n

end A262720

/-! ## A262720.P12532937210987946943

`A082601(A090288(n)+1)-a(n-1)` with `a(0)=1`
-/

namespace A262720.P12532937210987946943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082601 (A090288 n + 1).toNat - a (n - 1)

end

end A262720.P12532937210987946943

namespace A262720

/-- `A082601(A090288(n)+1)-a(n-1)` -/
def P12532937210987946943.Spec : Prop :=
  ∀ n, P12532937210987946943.a n = A262720 n

end A262720

/-! ## A262720.P8633935771720213210

`A180562(A090288(n+1))`
-/

namespace A262720.P8633935771720213210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A090288 (n + 1)).toNat

end

end A262720.P8633935771720213210

namespace A262720

/-- `A180562(A090288(n+1))` -/
def P8633935771720213210.Spec : Prop :=
  ∀ n, P8633935771720213210.a n = A262720 n

end A262720

/-! ## A262720.P14770122192917159472

`record[A180562(A004275(A129889(n)))]`
-/

namespace A262720.P14770122192917159472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A004275 (A129889 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262720.P14770122192917159472

namespace A262720

/-- `record[A180562(A004275(A129889(n)))]` -/
def P14770122192917159472.Spec : Prop :=
  ∀ n, P14770122192917159472.a n = A262720 n

end A262720

/-! ## A262720.P13448211403593791074

`record[A180562(A090288(A253092(n)))]`
-/

namespace A262720.P13448211403593791074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A090288 (A253092 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262720.P13448211403593791074

namespace A262720

/-- `record[A180562(A090288(A253092(n)))]` -/
def P13448211403593791074.Spec : Prop :=
  ∀ n, P13448211403593791074.a n = A262720 n

end A262720

/-! ## A262720.P5754258332039017660

`record[A180562(A034856(n+1)+A003602(n+1))]`
-/

namespace A262720.P5754258332039017660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A034856 (n + 1) + A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262720.P5754258332039017660

namespace A262720

/-- `record[A180562(A034856(n+1)+A003602(n+1))]` -/
def P5754258332039017660.Spec : Prop :=
  ∀ n, P5754258332039017660.a n = A262720 n

end A262720

/-!
# A262721: Modified Look and Say sequence: compute sum of digits of previous term, square it, and apply the "Say What You See" process.

The programs for A262721, there is no canonical definition to state claims against.
-/

/-! ## A262721.P14648619180364763428

`A045918(A118881(a(n-1)))` with `a(0)=1`
-/

namespace A262721.P14648619180364763428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045918 (A118881 (a (n - 1)).toNat).toNat

end

end A262721.P14648619180364763428

/-!
# A262723: Products of three distinct primes that form an arithmetic progression.

The programs for A262723, there is no canonical definition to state claims against.
-/

/-! ## A262723.P7686063136046719970

`∩[A167629(n+1), A229094(n+1)]`
-/

namespace A262723.P7686063136046719970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P7686063136046719970

/-! ## A262723.P9845299353750408377

`∩[A167629(n+1), A203614(n+1)]`
-/

namespace A262723.P9845299353750408377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P9845299353750408377

/-! ## A262723.P8862266204155402894

`∩[A088595(n+1), A167629(n+1)]`
-/

namespace A262723.P8862266204155402894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P8862266204155402894

/-! ## A262723.P14008611055778818891

`∩[A088949(n+1), A167629(n+1)]`
-/

namespace A262723.P14008611055778818891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P14008611055778818891

/-! ## A262723.P2519990231609109701

`∩[A162651(n+1), A167629(n+1)]`
-/

namespace A262723.P2519990231609109701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P2519990231609109701

/-! ## A262723.P12261997713361804171

`∩[A088595(n+1), A381736(n+1)]`
-/

namespace A262723.P12261997713361804171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P12261997713361804171

/-! ## A262723.P9915273846379046914

`∩[A088949(n+1), A381736(n+1)]`
-/

namespace A262723.P9915273846379046914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P9915273846379046914

/-! ## A262723.P9477477504594815455

`∩[A229094(n+1), A381736(n+1)]`
-/

namespace A262723.P9477477504594815455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P9477477504594815455

/-! ## A262723.P8404790097346612463

`∩[A088595(n+1), A379872(n+1)]`
-/

namespace A262723.P8404790097346612463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P8404790097346612463

/-! ## A262723.P4077588631938429749

`∩[A229094(n+1), A379872(n+1)]`
-/

namespace A262723.P4077588631938429749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262723.P4077588631938429749

/-!
# A262724: Triangular numbers representable as 3^x + y^3.

The programs for A262724, there is no canonical definition to state claims against.
-/

/-! ## A262724.P14271564554439221384

`∩[A250483(n+1), A000217(n)]`
-/

namespace A262724.P14271564554439221384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262724.P14271564554439221384

/-! ## A262724.P1460574072059268598

`record[A127773(A250483(n+1))]`
-/

namespace A262724.P1460574072059268598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127773 (A250483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262724.P1460574072059268598

/-! ## A262724.P4979834199026363652

`A127773(∩[C(n+1, 2), A250483(n+1)])`
-/

namespace A262724.P4979834199026363652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127773 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A262724.P4979834199026363652

/-!
# A262725: The unique function f with f(1)=1 and f(jD!+k)=(-1)^j f(k) for all D, j=1..D, and k=1..D!.

The programs for A262725, the canonical program `A262725.P4929212033244102736` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262725 has offset 1).

The definition of A262725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262725.P4929212033244102736

`(-1)^A034968(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A262725

/-- `(-1)^A034968(n)` -/
def P4929212033244102736.Spec : Prop :=
  ∀ n, P4929212033244102736.a n = (A262725 (n + 1) : ℚ)

end A262725

/-!
# A262726: Expansion of phi(-x) * psi(x^6) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A262726, the canonical program `A262726.P18314210768648216299` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262726 has offset 0).

The definition of A262726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262780, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262726.P4415699527605717267

`(-1)^n*A112605(n)`
-/

namespace A262726.P4415699527605717267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112605 n

end

end A262726.P4415699527605717267

namespace A262726

/-- `(-1)^n*A112605(n)` -/
def P4415699527605717267.Spec : Prop :=
  ∀ n, P4415699527605717267.a n = A262726 n

end A262726

/-! ## A262726.P18314210768648216299

`A262780(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262726

/-- `A262780(2*n+1)` -/
def P18314210768648216299.Spec : Prop :=
  ∀ n, P18314210768648216299.a n = A262726 n

theorem P18314210768648216299.correct : P18314210768648216299.Spec := by
  intro n
  simp only [A262726]

end A262726

/-! ## A262726.P13212874685492463312

`A057079(n)*A246838(n)`
-/

namespace A262726.P13212874685492463312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A246838 n

end

end A262726.P13212874685492463312

namespace A262726

/-- `A057079(n)*A246838(n)` -/
def P13212874685492463312.Spec : Prop :=
  ∀ n, P13212874685492463312.a n = A262726 n

end A262726

/-! ## A262726.P585510241814981310

`A132954(n)*A246838(n)`
-/

namespace A262726.P585510241814981310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A246838 n

end

end A262726.P585510241814981310

namespace A262726

/-- `A132954(n)*A246838(n)` -/
def P585510241814981310.Spec : Prop :=
  ∀ n, P585510241814981310.a n = A262726 n

end A262726

/-! ## A262726.P16974853490156518791

`A033762(2*n+1)*A033999(n)`
-/

namespace A262726.P16974853490156518791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n + 1) * A033999 n

end

end A262726.P16974853490156518791

namespace A262726

/-- `A033762(2*n+1)*A033999(n)` -/
def P16974853490156518791.Spec : Prop :=
  ∀ n, P16974853490156518791.a n = A262726 n

end A262726

/-! ## A262726.P1304211138561065956

`A033762(Δ[n²])*A057077(2*n)`
-/

namespace A262726.P1304211138561065956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A057077 (2 * n)

end

end A262726.P1304211138561065956

namespace A262726

/-- `A033762(Δ[n²])*A057077(2*n)` -/
def P1304211138561065956.Spec : Prop :=
  ∀ n, P1304211138561065956.a n = A262726 n

end A262726

/-! ## A262726.P3609099116859946437

`A033999(n+1)*A129449(2*n+1)`
-/

namespace A262726.P3609099116859946437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A129449 (2 * n + 1)

end

end A262726.P3609099116859946437

namespace A262726

/-- `A033999(n+1)*A129449(2*n+1)` -/
def P3609099116859946437.Spec : Prop :=
  ∀ n, P3609099116859946437.a n = A262726 n

end A262726

/-! ## A262726.P5960667196487645030

`A033762(2*n+1)/A057077(2*n)`
-/

namespace A262726.P5960667196487645030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (2 * n + 1) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A262726.P5960667196487645030

namespace A262726

/-- `A033762(2*n+1)/A057077(2*n)` -/
def P5960667196487645030.Spec : Prop :=
  ∀ n, P5960667196487645030.a n = (A262726 n : ℚ)

end A262726

/-! ## A262726.P352315639536178663

`A009531(2*n+1)*A033762(2*n+1)`
-/

namespace A262726.P352315639536178663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A033762 (2 * n + 1)

end

end A262726.P352315639536178663

namespace A262726

/-- `A009531(2*n+1)*A033762(2*n+1)` -/
def P352315639536178663.Spec : Prop :=
  ∀ n, P352315639536178663.a n = A262726 n

end A262726

/-! ## A262726.P15575603316722878044

`A087960(2*n+1)*A129449(2*n+1)`
-/

namespace A262726.P15575603316722878044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n + 1) * A129449 (2 * n + 1)

end

end A262726.P15575603316722878044

namespace A262726

/-- `A087960(2*n+1)*A129449(2*n+1)` -/
def P15575603316722878044.Spec : Prop :=
  ∀ n, P15575603316722878044.a n = A262726 n

end A262726

/-! ## A262726.P14282369966363028147

`A112605(n)/A057077(A005408(n))`
-/

namespace A262726.P14282369966363028147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A262726.P14282369966363028147

namespace A262726

/-- `A112605(n)/A057077(A005408(n))` -/
def P14282369966363028147.Spec : Prop :=
  ∀ n, P14282369966363028147.a n = (A262726 n : ℚ)

end A262726

/-! ## A262726.P4984180528606911346

`A057077(2*n+1)*A096936(A005408(2*n+1))`
-/

namespace A262726.P4984180528606911346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n + 1) * A096936 (A005408 (2 * n + 1)).toNat

end

end A262726.P4984180528606911346

namespace A262726

/-- `A057077(2*n+1)*A096936(A005408(2*n+1))` -/
def P4984180528606911346.Spec : Prop :=
  ∀ n, P4984180528606911346.a n = A262726 n

end A262726

/-! ## A262726.P16260881655084733159

`A262774(3*n+2)`
-/

namespace A262726.P16260881655084733159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 (3 * n + 2)

end

end A262726.P16260881655084733159

namespace A262726

/-- `A262774(3*n+2)` -/
def P16260881655084733159.Spec : Prop :=
  ∀ n, P16260881655084733159.a n = A262726 n

end A262726

/-! ## A262726.P5506102141254609333

`A002324(4*n+3)*A057077(2*n)`
-/

namespace A262726.P5506102141254609333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (4 * n + 3) * A057077 (2 * n)

end

end A262726.P5506102141254609333

namespace A262726

/-- `A002324(4*n+3)*A057077(2*n)` -/
def P5506102141254609333.Spec : Prop :=
  ∀ n, P5506102141254609333.a n = A262726 n

end A262726

/-! ## A262726.P8115224804629989263

`A113447(A059617(2*n+1))`
-/

namespace A262726.P8115224804629989263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A059617 (2 * n + 1)).toNat

end

end A262726.P8115224804629989263

namespace A262726

/-- `A113447(A059617(2*n+1))` -/
def P8115224804629989263.Spec : Prop :=
  ∀ n, P8115224804629989263.a n = A262726 n

end A262726

/-!
# A262727: Strong (2,3,5)-primes (see comments).

The programs for A262727, there is no canonical definition to state claims against.
-/

/-! ## A262727.P11907413660060658278

`p?[∑[A138588(A225632(n+1))]]`
-/

namespace A262727.P11907413660060658278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138588 (A225632 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262727.P11907413660060658278

/-!
# A262730: Primes p such that p^2 = pi(x^3) + pi(y^3) for some positive integers x and y, where pi(m) denotes the number of primes not exceeding m.

The programs for A262730, there is no canonical definition to state claims against.
-/

/-! ## A262730.P6611989677862284373

`A086472(A056105(n))`
-/

namespace A262730.P6611989677862284373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (A056105 n).toNat

end

end A262730.P6611989677862284373

/-!
# A262731: Primes p in the form pi(q^2)+pi(r^2) with q and r both prime, where pi(x) denotes the number of primes not exceeding x.

The programs for A262731, there is no canonical definition to state claims against.
-/

/-! ## A262731.P16084149461324919770

`p?[eq[2, abs(A120854(n))]]`
-/

namespace A262731.P16084149461324919770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120854 n|

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262731.P16084149461324919770

/-! ## A262731.P4108929878645359803

`filter[A226217(n+1), A089829(#)]`
-/

namespace A262731.P4108929878645359803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A262731.P4108929878645359803

/-! ## A262731.P4949686855137753598

`∩[A098414(n+1), A246705(n+1)]`
-/

namespace A262731.P4949686855137753598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262731.P4949686855137753598

/-! ## A262731.P10593274866521183140

`∩[A132247(n+1), A246705(n+1)]`
-/

namespace A262731.P10593274866521183140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262731.P10593274866521183140

/-!
# A262732: a(n) = (1/n!) * (5*n)!/(5*n/2)! * (3*n/2)!/(3*n)!.

The programs for A262732, there is no canonical definition to state claims against.
-/

/-! ## A262732.P3522345552656685543

`A016777(n)*A245112(n)`
-/

namespace A262732.P3522345552656685543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A245112 n

end

end A262732.P3522345552656685543

/-! ## A262732.P15025638998973804671

`record[A330843(A052905(n))]`
-/

namespace A262732.P15025638998973804671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262732.P15025638998973804671

/-! ## A262732.P12584346922614567627

`A330843(A052905(n+2))`
-/

namespace A262732.P12584346922614567627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (A052905 (n + 2)).toNat

end

end A262732.P12584346922614567627

/-! ## A262732.P18360129742251280896

`A330843(eq[3, A129713(n)])`
-/

namespace A262732.P18360129742251280896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262732.P18360129742251280896

/-! ## A262732.P5340652679964573884

`A330843(eq[4, A025581(n)])`
-/

namespace A262732.P5340652679964573884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262732.P5340652679964573884

/-!
# A262733: a(n) = (1/n!) * (7*n)!/(7*n/2)! * (5*n/2)!/(5*n)!.

The programs for A262733, there is no canonical definition to state claims against.
-/

/-! ## A262733.P442323347547812810

`A330843(eq[6, A025581(n)])`
-/

namespace A262733.P442323347547812810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262733.P442323347547812810

/-! ## A262733.P13023622667579607467

`A330843(eq[8, A129713(n)])`
-/

namespace A262733.P13023622667579607467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262733.P13023622667579607467

/-! ## A262733.P5743672384766721450

`A330843(A000217(n+6)+n)`
-/

namespace A262733.P5743672384766721450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (A000217 (n + 6) + (n : ℤ)).toNat

end

end A262733.P5743672384766721450

/-! ## A262733.P701334391143284111

`A091527(n)/A091496(n)*A276098(n)`
-/

namespace A262733.P701334391143284111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A091496 n : ℚ) * (A276098 n : ℚ)

end

end A262733.P701334391143284111

/-! ## A262733.P18143180595184129977

`A000984(n)/A262732(n)*A276098(n)`
-/

namespace A262733.P18143180595184129977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A262732 n : ℚ) * (A276098 n : ℚ)

end

end A262733.P18143180595184129977

/-!
# A262734: Period 16: repeat (1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2).

The programs for A262734, the canonical program `A262734.P16686318871991034352` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262734 has offset 0).

The definition of A262734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262734.P16686318871991034352

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262734

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P16686318871991034352.Spec : Prop :=
  ∀ n, P16686318871991034352.a n = A262734 n

theorem P16686318871991034352.correct : P16686318871991034352.Spec := by
  intro n
  simp only [A262734]

end A262734

/-!
# A262735: Expansion of x*(1-x-x^2)/((1-x)*(1-x-2*x^2-x^3)).

The programs for A262735, the canonical program `A262735.P6872622287192626767` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262735 has offset 0).

The definition of A262735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262735.P6872622287192626767

`a(n-1)+2*a(n-2)+a(n-3)-1` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262735

/-- `a(n-1)+2*a(n-2)+a(n-3)-1` -/
def P6872622287192626767.Spec : Prop :=
  ∀ n, P6872622287192626767.a n = A262735 n

theorem P6872622287192626767.correct : P6872622287192626767.Spec := by
  intro n
  simp only [A262735]

end A262735

/-! ## A262735.P7779121013063789316

`A077864(n+1)-2*A077864(n)`
-/

namespace A262735.P7779121013063789316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077864 (n + 1) - 2 * A077864 n

end

end A262735.P7779121013063789316

namespace A262735

/-- `A077864(n+1)-2*A077864(n)` -/
def P7779121013063789316.Spec : Prop :=
  ∀ n, P7779121013063789316.a n = A262735 n

end A262735

/-! ## A262735.P15340241053203091199

`A107458(2*(n+1))`
-/

namespace A262735.P15340241053203091199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (2 * (n + 1))

end

end A262735.P15340241053203091199

namespace A262735

/-- `A107458(2*(n+1))` -/
def P15340241053203091199.Spec : Prop :=
  ∀ n, P15340241053203091199.a n = A262735 n

end A262735

/-! ## A262735.P14835001224804069260

`∑[A135851(2*n)]+1`
-/

namespace A262735.P14835001224804069260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262735.P14835001224804069260

namespace A262735

/-- `∑[A135851(2*n)]+1` -/
def P14835001224804069260.Spec : Prop :=
  ∀ n, P14835001224804069260.a n = A262735 n

end A262735

/-! ## A262735.P6628704823022149388

`A142474(n)+a(n-1)` with `a(0)=0`
-/

namespace A262735.P6628704823022149388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A142474 n + a (n - 1)

end

end A262735.P6628704823022149388

namespace A262735

/-- `A142474(n)+a(n-1)` -/
def P6628704823022149388.Spec : Prop :=
  ∀ n, P6628704823022149388.a n = A262735 n

end A262735

/-! ## A262735.P12915669141594794598

`∑[A078012(abs(2*(1-n)))]`
-/

namespace A262735.P12915669141594794598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262735.P12915669141594794598

namespace A262735

/-- `∑[A078012(abs(2*(1-n)))]` -/
def P12915669141594794598.Spec : Prop :=
  ∀ n, P12915669141594794598.a n = A262735 n

end A262735

/-! ## A262735.P6180187722221835208

`A013979(A004271(n+1))`
-/

namespace A262735.P6180187722221835208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (A004271 (n + 1)).toNat

end

end A262735.P6180187722221835208

namespace A262735

/-- `A013979(A004271(n+1))` -/
def P6180187722221835208.Spec : Prop :=
  ∀ n, P6180187722221835208.a n = A262735 n

end A262735

/-! ## A262735.P793761368855655059

`A013979(A004278(n+1))`
-/

namespace A262735.P793761368855655059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (A004278 (n + 1)).toNat

end

end A262735.P793761368855655059

namespace A262735

/-- `A013979(A004278(n+1))` -/
def P793761368855655059.Spec : Prop :=
  ∀ n, P793761368855655059.a n = A262735 n

end A262735

/-! ## A262735.P8498831747580565705

`A013979(A300576(n+1))`
-/

namespace A262735.P8498831747580565705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (A300576 (n + 1)).toNat

end

end A262735.P8498831747580565705

namespace A262735

/-- `A013979(A300576(n+1))` -/
def P8498831747580565705.Spec : Prop :=
  ∀ n, P8498831747580565705.a n = A262735 n

end A262735

/-! ## A262735.P9350062768309919980

`A192805(n+2)-A013979(2*n)`
-/

namespace A262735.P9350062768309919980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192805 (n + 2) - A013979 (2 * n)

end

end A262735.P9350062768309919980

namespace A262735

/-- `A192805(n+2)-A013979(2*n)` -/
def P9350062768309919980.Spec : Prop :=
  ∀ n, P9350062768309919980.a n = A262735 n

end A262735

/-! ## A262735.P4599188757187463205

`A013979(2*n)-A078012(2*n)`
-/

namespace A262735.P4599188757187463205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n) - A078012 (2 * n)

end

end A262735.P4599188757187463205

namespace A262735

/-- `A013979(2*n)-A078012(2*n)` -/
def P4599188757187463205.Spec : Prop :=
  ∀ n, P4599188757187463205.a n = A262735 n

end A262735

/-! ## A262735.P10458811254663584293

`∑[A142474(n+1)]-A142474(n+1)`
-/

namespace A262735.P10458811254663584293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142474 (n + 1)

end

end A262735.P10458811254663584293

namespace A262735

/-- `∑[A142474(n+1)]-A142474(n+1)` -/
def P10458811254663584293.Spec : Prop :=
  ∀ n, P10458811254663584293.a n = A262735 n

end A262735

/-! ## A262735.P3341545118323185663

`A013979(2*n)-A135851(2*(n+1))`
-/

namespace A262735.P3341545118323185663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n) - A135851 (2 * (n + 1))

end

end A262735.P3341545118323185663

namespace A262735

/-- `A013979(2*n)-A135851(2*(n+1))` -/
def P3341545118323185663.Spec : Prop :=
  ∀ n, P3341545118323185663.a n = A262735 n

end A262735

/-! ## A262735.P9787017891027646920

`A013979(2*n+1)+1-A013979(2*n)`
-/

namespace A262735.P9787017891027646920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n + 1) + (1 - A013979 (2 * n))

end

end A262735.P9787017891027646920

namespace A262735

/-- `A013979(2*n+1)+1-A013979(2*n)` -/
def P9787017891027646920.Spec : Prop :=
  ∀ n, P9787017891027646920.a n = A262735 n

end A262735

/-! ## A262735.P6103732414422699313

`A277253(2*n+1)-A078012(2*n+1)`
-/

namespace A262735.P6103732414422699313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (2 * n + 1) - A078012 (2 * n + 1)

end

end A262735.P6103732414422699313

namespace A262735

/-- `A277253(2*n+1)-A078012(2*n+1)` -/
def P6103732414422699313.Spec : Prop :=
  ∀ n, P6103732414422699313.a n = A262735 n

end A262735

/-! ## A262735.P9194863893435620437

`A277252(2*n)+A277253(2*n)-A277252(2*n+1)`
-/

namespace A262735.P9194863893435620437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (2 * n) + (A277253 (2 * n) - A277252 (2 * n + 1))

end

end A262735.P9194863893435620437

namespace A262735

/-- `A277252(2*n)+A277253(2*n)-A277252(2*n+1)` -/
def P9194863893435620437.Spec : Prop :=
  ∀ n, P9194863893435620437.a n = A262735 n

end A262735

/-! ## A262735.P11929491119628830866

`A023435(A289207(2*n+1))-A023435(A289207(2*n))`
-/

namespace A262735.P11929491119628830866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (A289207 (2 * n + 1)).toNat - A023435 (A289207 (2 * n)).toNat

end

end A262735.P11929491119628830866

namespace A262735

/-- `A023435(A289207(2*n+1))-A023435(A289207(2*n))` -/
def P11929491119628830866.Spec : Prop :=
  ∀ n, P11929491119628830866.a n = A262735 n

end A262735

/-! ## A262735.P15628090158947385064

`A002478(n)-A277252(2*n+1)`
-/

namespace A262735.P15628090158947385064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n - A277252 (2 * n + 1)

end

end A262735.P15628090158947385064

namespace A262735

/-- `A002478(n)-A277252(2*n+1)` -/
def P15628090158947385064.Spec : Prop :=
  ∀ n, P15628090158947385064.a n = A262735 n

end A262735

/-! ## A262735.P881047538261521768

`A023435(2*n)+1-A000930(2*n)`
-/

namespace A262735.P881047538261521768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (2 * n) + (1 - A000930 (2 * n))

end

end A262735.P881047538261521768

namespace A262735

/-- `A023435(2*n)+1-A000930(2*n)` -/
def P881047538261521768.Spec : Prop :=
  ∀ n, P881047538261521768.a n = A262735 n

end A262735

/-!
# A262736: Expansion of Product_{k>=1} (1 + x^(2*k-1))^(2*k-1).

The programs for A262736, there is no canonical definition to state claims against.
-/

/-! ## A262736.P4697786673782708592

`abs(A285069(n))`
-/

namespace A262736.P4697786673782708592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285069 n|

end

end A262736.P4697786673782708592

/-! ## A262736.P15591541239022399578

`A033999(n)*A285069(n)`
-/

namespace A262736.P15591541239022399578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A285069 n

end

end A262736.P15591541239022399578

/-! ## A262736.P10495269814663230874

`gcd(A000038(n), A285069(n))`
-/

namespace A262736.P10495269814663230874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285069 n)

end

end A262736.P10495269814663230874

/-! ## A262736.P10683957679816358539

`lcm(A020985(n), A285069(n))`
-/

namespace A262736.P10683957679816358539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A285069 n)

end

end A262736.P10683957679816358539

/-! ## A262736.P13727691032434094728

`(A000035(n+1)-A000035(n))*A285069(n)`
-/

namespace A262736.P13727691032434094728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A285069 n

end

end A262736.P13727691032434094728

/-! ## A262736.P8445342972151118271

`A262811(n)/A284628(n)*A285069(n)`
-/

namespace A262736.P8445342972151118271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A284628 n : ℚ) * (A285069 n : ℚ)

end

end A262736.P8445342972151118271

/-! ## A262736.P9905184847754344465

`A224364(n)/A281683(n)*A285069(n)`
-/

namespace A262736.P9905184847754344465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224364 n : ℚ) / (A281683 n : ℚ) * (A285069 n : ℚ)

end

end A262736.P9905184847754344465

/-!
# A262744: Remainder when sum of first n primes is divided by n-th triangular number.

The programs for A262744, the canonical program `A262744.P6698205093612242273` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262744 has offset 1).

The definition of A262744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262744.P14663091646837350224

`A007504(n+1)%∑[n+1]`
-/

namespace A262744.P14663091646837350224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A262744.P14663091646837350224

namespace A262744

/-- `A007504(n+1)%∑[n+1]` -/
def P14663091646837350224.Spec : Prop :=
  ∀ n, P14663091646837350224.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P6698205093612242273

`∑[A000040(n+1)]%∑[n+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262744

/-- `∑[A000040(n+1)]%∑[n+1]` -/
def P6698205093612242273.Spec : Prop :=
  ∀ n, P6698205093612242273.a n = A262744 (n + 1)

theorem P6698205093612242273.correct : P6698205093612242273.Spec := by
  intro n
  simp only [A262744, Nat.add_sub_cancel]

end A262744

/-! ## A262744.P9720785874897026075

`∑[A006093(n+1)+1]%∑[n+1]`
-/

namespace A262744.P9720785874897026075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262744.P9720785874897026075

namespace A262744

/-- `∑[A006093(n+1)+1]%∑[n+1]` -/
def P9720785874897026075.Spec : Prop :=
  ∀ n, P9720785874897026075.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P3199640164640091731

`∑[A008864(n+1)+n]%∑[n+1]`
-/

namespace A262744.P3199640164640091731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262744.P3199640164640091731

namespace A262744

/-- `∑[A008864(n+1)+n]%∑[n+1]` -/
def P3199640164640091731.Spec : Prop :=
  ∀ n, P3199640164640091731.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P2422824342444562154

`A112997(n+1)%A089594(n+1)`
-/

namespace A262744.P2422824342444562154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112997 (n + 1)) (A089594 (n + 1))

end

end A262744.P2422824342444562154

namespace A262744

/-- `A112997(n+1)%A089594(n+1)` -/
def P2422824342444562154.Spec : Prop :=
  ∀ n, P2422824342444562154.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P13813867855774304568

`∑[p?[xor(1, n)]]%∑[n+1]`
-/

namespace A262744.P13813867855774304568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A262744.P13813867855774304568

namespace A262744

/-- `∑[p?[xor(1, n)]]%∑[n+1]` -/
def P13813867855774304568.Spec : Prop :=
  ∀ n, (P13813867855774304568.a n : ℤ) = A262744 (n + 1)

end A262744

/-! ## A262744.P15749295528044905825

`∑[record[A000010(n+1)]+1]%∑[n+1]`
-/

namespace A262744.P15749295528044905825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A262744.P15749295528044905825

namespace A262744

/-- `∑[record[A000010(n+1)]+1]%∑[n+1]` -/
def P15749295528044905825.Spec : Prop :=
  ∀ n, P15749295528044905825.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P4985193909712660245

`∑[p?[A206074(n+1)]+n+1]%∑[n+1]`
-/

namespace A262744.P4985193909712660245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A262744.P4985193909712660245

namespace A262744

/-- `∑[p?[A206074(n+1)]+n+1]%∑[n+1]` -/
def P4985193909712660245.Spec : Prop :=
  ∀ n, P4985193909712660245.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P4518219683147344484

`∑[record[A014963(n+2)]]%∑[n+1]`
-/

namespace A262744.P4518219683147344484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A262744.P4518219683147344484

namespace A262744

/-- `∑[record[A014963(n+2)]]%∑[n+1]` -/
def P4518219683147344484.Spec : Prop :=
  ∀ n, P4518219683147344484.a n = A262744 (n + 1)

end A262744

/-! ## A262744.P8021107389202691957

`∑[record[A051664(n+1)]]%A000217(n+1)`
-/

namespace A262744.P8021107389202691957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000217 (n + 1))

end

end A262744.P8021107389202691957

namespace A262744

/-- `∑[record[A051664(n+1)]]%A000217(n+1)` -/
def P8021107389202691957.Spec : Prop :=
  ∀ n, P8021107389202691957.a n = A262744 (n + 1)

end A262744

/-!
# A262745: Number of permutations of [n] with an odd number of rises.

The programs for A262745, there is no canonical definition to state claims against.
-/

/-! ## A262745.P16604971371493399955

`A000142(n)-A128103(n)`
-/

namespace A262745.P16604971371493399955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A128103 n

end

end A262745.P16604971371493399955

/-! ## A262745.P11419637951950600811

`A128103(n)-A155585(n)`
-/

namespace A262745.P11419637951950600811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128103 n - A155585 n

end

end A262745.P11419637951950600811

/-! ## A262745.P4433099565219778923

`A028310(n)!-A128103(n)`
-/

namespace A262745.P4433099565219778923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A028310 n).toNat : ℤ) - A128103 n

end

end A262745.P4433099565219778923

/-! ## A262745.P7840842633529734678

`(A000142(n)-A155585(n))/2`
-/

namespace A262745.P7840842633529734678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n - A155585 n : ℚ) / 2

end

end A262745.P7840842633529734678

/-! ## A262745.P17328612253793907332

`∏[A007318(A000124(n))]-A128103(n)`
-/

namespace A262745.P17328612253793907332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A128103 n

end

end A262745.P17328612253793907332

/-! ## A262745.P17741918285379615685

`A117936(∑[n+1])-A128103(n)`
-/

namespace A262745.P17741918285379615685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117936 (∑ j ∈ Finset.range (n + 1), f1 j) - A128103 n

end

end A262745.P17741918285379615685

/-!
# A262746: Number of ordered ways to write n as x^2 + y^2 + pi(z^2) with 0 <= x <= y and z > 0 such that 2*x*y + 3 is prime, where pi(m) denotes the number of primes not exceeding m.

The programs for A262746, there is no canonical definition to state claims against.
-/

/-! ## A262746.P2372166541935535683

`A247349((n+2)*A299701(n+1))`
-/

namespace A262746.P2372166541935535683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247349 ((n + 2 : ℤ) * A299701 (n + 1)).toNat

end

end A262746.P2372166541935535683

/-! ## A262746.P4914764813454426030

`A257023(n*A313688(n))`
-/

namespace A262746.P4914764813454426030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 ((n : ℤ) * A313688 n).toNat

end

end A262746.P4914764813454426030

/-! ## A262746.P3952406746076493484

`A001221(A055394(n+1)*A119851(n))`
-/

namespace A262746.P3952406746076493484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055394 (n + 1) * A119851 n).toNat

end

end A262746.P3952406746076493484

/-! ## A262746.P6222842410632927587

`A001221(lcm(A055394(n+1), A119851(n)))`
-/

namespace A262746.P6222842410632927587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A055394 (n + 1)) (A119851 n))

end

end A262746.P6222842410632927587

/-! ## A262746.P17771416277597121386

`A064547(A257113(n+1)+A059376(n+1))`
-/

namespace A262746.P17771416277597121386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A257113 (n + 1) + A059376 (n + 1)).toNat

end

end A262746.P17771416277597121386

/-!
# A262747: Number of ordered ways to write n as x^2 + y^2 + phi(z^2) with 0 <= x <= y, z > 0, 2 | x*y*z, and phi(k^2) < n for all 0 < k < z, where phi(.) is Euler's totient function given by A000010.

The programs for A262747, there is no canonical definition to state claims against.
-/

/-! ## A262747.P1927190026938057994

`A262766(n+1)+A014376(A289816(n))`
-/

namespace A262747.P1927190026938057994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262766 (n + 1) + A014376 (A289816 n).toNat

end

end A262747.P1927190026938057994

/-! ## A262747.P6098286384408858489

`A262766(and(1, A113860(n))+n)`
-/

namespace A262747.P6098286384408858489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262766 (Int.land 1 (A113860 n) + (n : ℤ)).toNat

end

end A262747.P6098286384408858489

/-! ## A262747.P34113605432203445

`gcd(A011254(n+1), A262766(n+1))`
-/

namespace A262747.P34113605432203445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011254 (n + 1)) (A262766 (n + 1))

end

end A262747.P34113605432203445

/-! ## A262747.P17375135607560756037

`and(A249511(n+1), A262766(n+1))`
-/

namespace A262747.P17375135607560756037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249511 (n + 1)) (A262766 (n + 1))

end

end A262747.P17375135607560756037

/-! ## A262747.P10196881983474220585

`A327928(A055500(n))+A262766(n+1)`
-/

namespace A262747.P10196881983474220585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A055500 n).toNat + A262766 (n + 1)

end

end A262747.P10196881983474220585

/-!
# A262748: Composite odd numbers m such that q is not equal to -1 (mod p) for every pair p,q

The programs for A262748, there is no canonical definition to state claims against.
-/

/-! ## A262748.P13298188035487292001

`∩[A247431(n+1), A390760(n+1)]`
-/

namespace A262748.P13298188035487292001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262748.P13298188035487292001

/-! ## A262748.P7383690875584870295

`∩[A194403(n+1), A390760(n+1)]`
-/

namespace A262748.P7383690875584870295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262748.P7383690875584870295

/-! ## A262748.P12596600053434763302

`lt[A099403(n+1), A098984(n)]`
-/

namespace A262748.P12596600053434763302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262748.P12596600053434763302

/-! ## A262748.P9119137787929358275

`lt[n+1, A118759(A098987(n))]`
-/

namespace A262748.P9119137787929358275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A098987 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A262748.P9119137787929358275

/-! ## A262748.P14408057892447386254

`filter[A131516(2*n+1), A354920(#)]`
-/

namespace A262748.P14408057892447386254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354920 (f1 j).toNat = 1) n)

end

end A262748.P14408057892447386254

/-!
# A262749: Numbers that are the sum of two distinct nonzero triangular numbers in more than one way.

The programs for A262749, there is no canonical definition to state claims against.
-/

/-! ## A262749.P2475302219247278824

`lt[1, A307597(n)]`
-/

namespace A262749.P2475302219247278824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A262749.P2475302219247278824

/-! ## A262749.P7016175099148329149

`lt[3, A053603(n)]`
-/

namespace A262749.P7016175099148329149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A262749.P7016175099148329149

/-! ## A262749.P11620339313492233307

`eq[1, A052344(A307597(n)²)]`
-/

namespace A262749.P11620339313492233307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A307597 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P11620339313492233307

/-! ## A262749.P4918708470304013260

`eq[1, A224326(A307597(n)²)]`
-/

namespace A262749.P4918708470304013260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 (A307597 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P4918708470304013260

/-! ## A262749.P214868075375901486

`eq[1, A307597(A307597(n)²)]`
-/

namespace A262749.P214868075375901486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A307597 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P214868075375901486

/-! ## A262749.P2216099854544834997

`eq[2, A055642(A053603(n)²)]`
-/

namespace A262749.P2216099854544834997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A053603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P2216099854544834997

/-! ## A262749.P5387640271834947268

`eq[2, A000010(A307597(n)+1)]`
-/

namespace A262749.P5387640271834947268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A307597 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P5387640271834947268

/-! ## A262749.P6907236771205285036

`eq[1, A281081(A307597(n)+2)]`
-/

namespace A262749.P6907236771205285036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281081 (A307597 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P6907236771205285036

/-! ## A262749.P4693786255116185584

`eq[2, A000001(2*A307597(n))]`
-/

namespace A262749.P4693786255116185584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (2 * A307597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262749.P4693786255116185584

/-! ## A262749.P9617856246393530096

`∪[A064828(n+1), A265134(n+1)]`
-/

namespace A262749.P9617856246393530096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262749.P9617856246393530096

/-!
# A262750: Least positive integer z such that n - phi(z^2) = x^2 + y^2 for some integers x and y with x*y*z even and phi(k^2) < n for all 0 < k < z, or 0 if no such z exists, where phi(.) is Euler's totient function given by A000010.

The programs for A262750, there is no canonical definition to state claims against.
-/

/-! ## A262750.P14722757526862408541

`gcd(4, A002419(A056504(n)))`
-/

namespace A262750.P14722757526862408541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A002419 (A056504 n).toNat)

end

end A262750.P14722757526862408541

/-! ## A262750.P5699788999115932526

`A000005(A005578(and(n, A319432(n+1))))`
-/

namespace A262750.P5699788999115932526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005578 (Int.land (n : ℤ) (A319432 (n + 1))).toNat).toNat

end

end A262750.P5699788999115932526

/-! ## A262750.P16681124370306256980

`A289676(A053824(3*(n+1))%A325270(3*n+4))`
-/

namespace A262750.P16681124370306256980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289676 (Int.tmod (A053824 (3 * (n + 1))) (A325270 (3 * n + 4))).toNat

end

end A262750.P16681124370306256980

/-! ## A262750.P17313452318955590763

`A289676(A053824(3*(n+1)))%A289676(3*n+1)`
-/

namespace A262750.P17313452318955590763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289676 (A053824 (3 * (n + 1))).toNat) (A289676 (3 * n + 1))

end

end A262750.P17313452318955590763

/-! ## A262750.P18272067412589962537

`A056624(A006011(n)+A000161(n))`
-/

namespace A262750.P18272067412589962537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A006011 n + A000161 n).toNat

end

end A262750.P18272067412589962537

/-!
# A262752: Number of (n+2) X (n+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262752, there is no canonical definition to state claims against.
-/

/-! ## A262752.P6491557689013110735

`A262759(∑[4*n]+1)`
-/

namespace A262752.P6491557689013110735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262752.P6491557689013110735

/-!
# A262753: Number of (n+2) X (2+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262753, the canonical program `A262753.P6017615502018050101` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262753 has offset 1).

The definition of A262753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262753.P6017615502018050101

`ceil(2^(n+3)/7)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262753

/-- `ceil(2^(n+3)/7)²` -/
def P6017615502018050101.Spec : Prop :=
  ∀ n, P6017615502018050101.a n = A262753 (n + 1)

theorem P6017615502018050101.correct : P6017615502018050101.Spec := by
  intro n
  simp only [A262753, Nat.add_sub_cancel]

end A262753

/-! ## A262753.P49997690074904463

`record[A046630(A008612(n))²]`
-/

namespace A262753.P49997690074904463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A008612 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P49997690074904463

namespace A262753

/-- `record[A046630(A008612(n))²]` -/
def P49997690074904463.Spec : Prop :=
  ∀ n, P49997690074904463.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P16055198967379810616

`record[A046630(A028242(n))²]`
-/

namespace A262753.P16055198967379810616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A028242 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P16055198967379810616

namespace A262753

/-- `record[A046630(A028242(n))²]` -/
def P16055198967379810616.Spec : Prop :=
  ∀ n, P16055198967379810616.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P3729409517093976472

`record[A046630(A109785(n))²]`
-/

namespace A262753.P3729409517093976472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A109785 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P3729409517093976472

namespace A262753

/-- `record[A046630(A109785(n))²]` -/
def P3729409517093976472.Spec : Prop :=
  ∀ n, P3729409517093976472.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P8275949888278930927

`record[A046630(A103391(n+1))²]`
-/

namespace A262753.P8275949888278930927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A103391 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P8275949888278930927

namespace A262753

/-- `record[A046630(A103391(n+1))²]` -/
def P8275949888278930927.Spec : Prop :=
  ∀ n, P8275949888278930927.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P10952863112519355744

`A046630(n+1)*A046630(n+1)`
-/

namespace A262753.P10952863112519355744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (n + 1) * A046630 (n + 1)

end

end A262753.P10952863112519355744

namespace A262753

/-- `A046630(n+1)*A046630(n+1)` -/
def P10952863112519355744.Spec : Prop :=
  ∀ n, P10952863112519355744.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P17709184921962139991

`∑{e}[A000040(n+1), A046630((n+1)/#)²]`
-/

namespace A262753.P17709184921962139991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat ^ 2

end

end A262753.P17709184921962139991

namespace A262753

/-- `∑{e}[A000040(n+1), A046630((n+1)/#)²]` -/
def P17709184921962139991.Spec : Prop :=
  ∀ n, P17709184921962139991.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P949191548185344301

`record[A046630(A004736(n+1))²]`
-/

namespace A262753.P949191548185344301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A004736 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P949191548185344301

namespace A262753

/-- `record[A046630(A004736(n+1))²]` -/
def P949191548185344301.Spec : Prop :=
  ∀ n, P949191548185344301.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P14979506028979365767

`record[A046630(A131818(n+1))²]`
-/

namespace A262753.P14979506028979365767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A131818 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P14979506028979365767

namespace A262753

/-- `record[A046630(A131818(n+1))²]` -/
def P14979506028979365767.Spec : Prop :=
  ∀ n, P14979506028979365767.a n = A262753 (n + 1)

end A262753

/-! ## A262753.P7587446623199771082

`record[A046630(A193592(n))²]`
-/

namespace A262753.P7587446623199771082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262753.P7587446623199771082

namespace A262753

/-- `record[A046630(A193592(n))²]` -/
def P7587446623199771082.Spec : Prop :=
  ∀ n, P7587446623199771082.a n = A262753 (n + 1)

end A262753

/-!
# A262754: Number of (n+2)X(3+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262754, there is no canonical definition to state claims against.
-/

/-! ## A262754.P16998704128809279421

`A262759(∑[n+3]+1)`
-/

namespace A262754.P16998704128809279421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262754.P16998704128809279421

/-! ## A262754.P6888097629752710607

`A262759(A034856(n+2))*A319694(A000010(n+1))`
-/

namespace A262754.P6888097629752710607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A034856 (n + 2)).toNat * A319694 (A000010 (n + 1)).toNat

end

end A262754.P6888097629752710607

/-!
# A262755: Number of (n+2)X(4+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262755, there is no canonical definition to state claims against.
-/

/-! ## A262755.P10676002421558502447

`A262759(Δ[n²]+∑[n+2]+4)`
-/

namespace A262755.P10676002421558502447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A262755.P10676002421558502447

/-! ## A262755.P9037515818474455653

`A146291(n+1)*A262759(A055998(n+2))`
-/

namespace A262755.P9037515818474455653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146291 (n + 1) * A262759 (A055998 (n + 2)).toNat

end

end A262755.P9037515818474455653

/-!
# A262756: Number of (n+2)X(5+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262756, there is no canonical definition to state claims against.
-/

/-! ## A262756.P18135526052370314998

`A262759(∑[n+5]+6)`
-/

namespace A262756.P18135526052370314998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A262756.P18135526052370314998

/-! ## A262756.P8653197490870536218

`A262759(A046691(n+3))+A185013(2*n)`
-/

namespace A262756.P8653197490870536218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A046691 (n + 3)).toNat + A185013 (2 * n)

end

end A262756.P8653197490870536218

/-! ## A262756.P8485242283486281355

`A262759(A046691(n+3))%A005548(n+6)`
-/

namespace A262756.P8485242283486281355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262759 (A046691 (n + 3)).toNat) (A005548 (n + 6))

end

end A262756.P8485242283486281355

/-!
# A262757: Number of (n+2) X (6+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262757, there is no canonical definition to state claims against.
-/

/-! ## A262757.P7322056161134010023

`A262759(C(n+6, 2)+n+1)`
-/

namespace A262757.P7322056161134010023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (Nat.choose (n + 6) 2 + (n + 1))

end

end A262757.P7322056161134010023

/-! ## A262757.P5716017747518232057

`A262759(A052905(n+3))`
-/

namespace A262757.P5716017747518232057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A052905 (n + 3)).toNat

end

end A262757.P5716017747518232057

/-! ## A262757.P232908809977069651

`A262759(A302537(n)+15)`
-/

namespace A262757.P232908809977069651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A302537 n + 15).toNat

end

end A262757.P232908809977069651

/-!
# A262758: Number of (n+2)X(7+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262758, there is no canonical definition to state claims against.
-/

/-! ## A262758.P12253977800809344220

`A262759(A055999(n+4))`
-/

namespace A262758.P12253977800809344220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A055999 (n + 4)).toNat

end

end A262758.P12253977800809344220

/-!
# A262760: Number of (3+2)X(n+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262760, there is no canonical definition to state claims against.
-/

/-! ## A262760.P11064899905735064455

`A262759(∑[n+2]+4)`
-/

namespace A262760.P11064899905735064455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262760.P11064899905735064455

/-! ## A262760.P15716377829301086137

`or(1, A262759(A167614(n+1)))`
-/

namespace A262760.P15716377829301086137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262759 (A167614 (n + 1)).toNat)

end

end A262760.P15716377829301086137

/-! ## A262760.P900187581682200658

`record[A262759(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A262760.P900187581682200658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262760.P900187581682200658

/-! ## A262760.P5297329045871162880

`A262759(A167614(n+1))+A025439(n)`
-/

namespace A262760.P5297329045871162880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167614 (n + 1)).toNat + A025439 n

end

end A262760.P5297329045871162880

/-! ## A262760.P14558077952646427016

`A262759(A167614(n+1))+A025442(n)`
-/

namespace A262760.P14558077952646427016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167614 (n + 1)).toNat + A025442 n

end

end A262760.P14558077952646427016

/-!
# A262761: Number of (4+2)X(n+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262761, there is no canonical definition to state claims against.
-/

/-! ## A262761.P16283551368971354963

`A262759(∑[n+3]+7)`
-/

namespace A262761.P16283551368971354963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A262761.P16283551368971354963

/-!
# A262762: Number of (5+2)X(n+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262762, there is no canonical definition to state claims against.
-/

/-! ## A262762.P1549663215553099603

`A262759(A167499(n+3))`
-/

namespace A262762.P1549663215553099603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167499 (n + 3)).toNat

end

end A262762.P1549663215553099603

/-! ## A262762.P9815437798117264211

`A262759(A155212(n)+13)`
-/

namespace A262762.P9815437798117264211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A155212 n + 13).toNat

end

end A262762.P9815437798117264211

/-! ## A262762.P1474508992736640517

`A262759(A056000(n)+15)`
-/

namespace A262762.P1474508992736640517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A056000 n + 15).toNat

end

end A262762.P1474508992736640517

/-! ## A262762.P13308282481743020482

`A262759(eq[7, A066657(n)])`
-/

namespace A262762.P13308282481743020482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262762.P13308282481743020482

/-! ## A262762.P12005579173729778022

`A262759(A167614(n+3)+2)`
-/

namespace A262762.P12005579173729778022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167614 (n + 3) + 2).toNat

end

end A262762.P12005579173729778022

/-!
# A262763: Number of (6+2)X(n+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262763, there is no canonical definition to state claims against.
-/

/-! ## A262763.P11637766929739026308

`A262759(A056115(n)+21)`
-/

namespace A262763.P11637766929739026308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A056115 n + 21).toNat

end

end A262763.P11637766929739026308

/-! ## A262763.P2429325101288919313

`A262759(A168105(n)-n)`
-/

namespace A262763.P2429325101288919313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A168105 n - (n : ℤ)).toNat

end

end A262763.P2429325101288919313

/-! ## A262763.P14155923579516309520

`A262759(A167499(n+4)+1)`
-/

namespace A262763.P14155923579516309520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167499 (n + 4) + 1).toNat

end

end A262763.P14155923579516309520

/-! ## A262763.P6869096420029987908

`A262759(A167614(n+4)+3)`
-/

namespace A262763.P6869096420029987908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A167614 (n + 4) + 3).toNat

end

end A262763.P6869096420029987908

/-!
# A262764: Number of (7+2)X(n+2) 0..1 arrays with each row divisible by 5 and each column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262764, there is no canonical definition to state claims against.
-/

/-! ## A262764.P17795624246192722855

`A262759(∑[n+6]+22)`
-/

namespace A262764.P17795624246192722855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A262764.P17795624246192722855

/-!
# A262765: a(n) = the number of ways that at least two distinct primes <= prime(n) sum to a prime.

The programs for A262765, there is no canonical definition to state claims against.
-/

/-! ## A262765.P13479857928026610069

`A071810(n+2)-(n+2)`
-/

namespace A262765.P13479857928026610069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (n + 2) - (n + 2 : ℤ)

end

end A262765.P13479857928026610069

/-! ## A262765.P16299918850893043850

`∑[-(Δ[-A071810(n+1)]+1)]`
-/

namespace A262765.P16299918850893043850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A071810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262765.P16299918850893043850

/-! ## A262765.P38705811024352723

`record[A071810(A028310(n))-n]`
-/

namespace A262765.P38705811024352723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (A028310 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262765.P38705811024352723

/-! ## A262765.P688809739147667432

`∑[A339613(n+2)-1]`
-/

namespace A262765.P688809739147667432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339613 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262765.P688809739147667432

/-! ## A262765.P15520203437368804466

`∑[A023443(Δ[A071810(n+1)])]`
-/

namespace A262765.P15520203437368804466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262765.P15520203437368804466

/-!
# A262766: Number of positive integers z such that n - phi(z^2) = x^2 + y^2 for some integers x and y with x*y*z even and phi(k^2) < n for all 0 < k < z.

The programs for A262766, there is no canonical definition to state claims against.
-/

/-! ## A262766.P1616314665698443293

`A262747(n+1)-A014376(A289816(n))`
-/

namespace A262766.P1616314665698443293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262747 (n + 1) - A014376 (A289816 n).toNat

end

end A262766.P1616314665698443293

/-!
# A262767: Minimum perimeter of a rectangle with area n and integer sides.

The programs for A262767, there is no canonical definition to state claims against.
-/

/-! ## A262767.P14284123201784402691

`2*A063655(n+1)`
-/

namespace A262767.P14284123201784402691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063655 (n + 1)

end

end A262767.P14284123201784402691

/-! ## A262767.P6784208941361447215

`2*(A387830(n+1)+2)`
-/

namespace A262767.P6784208941361447215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A387830 (n + 1) + 2)

end

end A262767.P6784208941361447215

/-! ## A262767.P14055345741684468524

`2*(n+1-A220114(n+1))`
-/

namespace A262767.P14055345741684468524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A220114 (n + 1))

end

end A262767.P14055345741684468524

/-! ## A262767.P16296582626517968250

`2*(A163520(n+1)-(n+2))`
-/

namespace A262767.P16296582626517968250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163520 (n + 1) - (n + 2 : ℤ))

end

end A262767.P16296582626517968250

/-! ## A262767.P8236595208495661541

`2*sqrt(A323728(n+1)+2*(n+1))`
-/

namespace A262767.P8236595208495661541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A323728 (n + 1) + (2 * (n + 1) : ℤ) : ℝ)

end

end A262767.P8236595208495661541

/-! ## A262767.P4959051255289261192

`A004277(A063655(n+1))`
-/

namespace A262767.P4959051255289261192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A063655 (n + 1)).toNat

end

end A262767.P4959051255289261192

/-! ## A262767.P8675359764028094342

`A004275(A063655(n+1)+1)`
-/

namespace A262767.P8675359764028094342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A063655 (n + 1) + 1).toNat

end

end A262767.P8675359764028094342

/-! ## A262767.P11363729269020506758

`A144396(n-A220114(n+1))+1`
-/

namespace A262767.P11363729269020506758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 ((n : ℤ) - A220114 (n + 1)).toNat + 1

end

end A262767.P11363729269020506758

/-! ## A262767.P5642318424470404069

`A163520(n+1)-A385454(n+1)`
-/

namespace A262767.P5642318424470404069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163520 (n + 1) - A385454 (n + 1)

end

end A262767.P5642318424470404069

/-! ## A262767.P1574545242786274734

`2*(A033677(n+1)+A033676(n+1))`
-/

namespace A262767.P1574545242786274734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033677 (n + 1) + A033676 (n + 1))

end

end A262767.P1574545242786274734

/-! ## A262767.P15993641026016104989

`2*(A092510(n+1)+A001414(n+1))`
-/

namespace A262767.P15993641026016104989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092510 (n + 1) + A001414 (n + 1))

end

end A262767.P15993641026016104989

/-! ## A262767.P6240749089526770376

`2*(A162348(2*n+1)+A162348(2*(n+1)))`
-/

namespace A262767.P6240749089526770376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A162348 (2 * n + 1) + A162348 (2 * (n + 1)))

end

end A262767.P6240749089526770376

/-! ## A262767.P12354947240182109618

`A005843(A033677(n+1)+A033676(n+1))`
-/

namespace A262767.P12354947240182109618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A033677 (n + 1) + A033676 (n + 1)).toNat

end

end A262767.P12354947240182109618

/-! ## A262767.P3572082587885281332

`A063655(A000027(n+1))+A063655(n+1)`
-/

namespace A262767.P3572082587885281332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A000027 (n + 1)).toNat + A063655 (n + 1)

end

end A262767.P3572082587885281332

/-! ## A262767.P8918646327805790978

`A033676(n+1)+A063655(n+1)+A033677(n+1)`
-/

namespace A262767.P8918646327805790978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) + (A063655 (n + 1) + A033677 (n + 1))

end

end A262767.P8918646327805790978

/-! ## A262767.P10588316842259938942

`A001414(n+1)+A092510(n+1)+A063655(n+1)`
-/

namespace A262767.P10588316842259938942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A092510 (n + 1) + A063655 (n + 1))

end

end A262767.P10588316842259938942

/-! ## A262767.P17327861905963885711

`2*A306284(A008586(n+1))`
-/

namespace A262767.P17327861905963885711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306284 (A008586 (n + 1)).toNat

end

end A262767.P17327861905963885711

/-! ## A262767.P17828164107550548328

`2*(A060866(n+1)-A323643(n+1))`
-/

namespace A262767.P17828164107550548328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060866 (n + 1) - A323643 (n + 1))

end

end A262767.P17828164107550548328

/-! ## A262767.P12855597696890162774

`A000267(A063655(n+1)²)`
-/

namespace A262767.P12855597696890162774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A063655 (n + 1) ^ 2).toNat

end

end A262767.P12855597696890162774

/-! ## A262767.P16739467915757897071

`A027434(A063655(n+1)²)`
-/

namespace A262767.P16739467915757897071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A063655 (n + 1) ^ 2).toNat

end

end A262767.P16739467915757897071

/-!
# A262768: a(n) = binomial(2*n+2,n) - 2*binomial(2*n,n) + binomial(2*n-2,n).

The programs for A262768, the canonical program `A262768.P87336054763920580` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262768 has offset 0).

The definition of A262768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262768.P8172445902946976343

`A073663(n)-A068875(n)`
-/

namespace A262768.P8172445902946976343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n - A068875 n

end

end A262768.P8172445902946976343

namespace A262768

/-- `A073663(n)-A068875(n)` -/
def P8172445902946976343.Spec : Prop :=
  ∀ n, P8172445902946976343.a n = A262768 n

end A262768

/-! ## A262768.P2676227125796443041

`A073663(n)-A104722(A004273(n))`
-/

namespace A262768.P2676227125796443041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n - A104722 (A004273 n).toNat

end

end A262768.P2676227125796443041

namespace A262768

/-- `A073663(n)-A104722(A004273(n))` -/
def P2676227125796443041.Spec : Prop :=
  ∀ n, P2676227125796443041.a n = A262768 n

end A262768

/-! ## A262768.P10915723713906328324

`A073663(n)-A089408(A103517(n))`
-/

namespace A262768.P10915723713906328324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n - A089408 (A103517 n).toNat

end

end A262768.P10915723713906328324

namespace A262768

/-- `A073663(n)-A089408(A103517(n))` -/
def P10915723713906328324.Spec : Prop :=
  ∀ n, P10915723713906328324.a n = A262768 n

end A262768

/-! ## A262768.P14717778112773133738

`A073663(n)-record[A089408(A014681(n))]`
-/

namespace A262768.P14717778112773133738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262768.P14717778112773133738

namespace A262768

/-- `A073663(n)-record[A089408(A014681(n))]` -/
def P14717778112773133738.Spec : Prop :=
  ∀ n, P14717778112773133738.a n = A262768 n

end A262768

/-! ## A262768.P87336054763920580

`A073663(n)-A104722(record[A026741(n)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262768

/-- `A073663(n)-A104722(record[A026741(n)])` -/
def P87336054763920580.Spec : Prop :=
  ∀ n, P87336054763920580.a n = A262768 n

theorem P87336054763920580.correct : P87336054763920580.Spec := by
  intro n
  simp only [A262768]

end A262768

/-!
# A262769: Integers k such that the concatenation of 2^k and k is prime.

The programs for A262769, there is no canonical definition to state claims against.
-/

/-! ## A262769.P1720337704734905310

`A014092(A352296(n+4))%A088726(A282124(n))`
-/

namespace A262769.P1720337704734905310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014092 (A352296 (n + 4)).toNat) (A088726 (A282124 n).toNat)

end

end A262769.P1720337704734905310

/-!
# A262770: A Beatty sequence: a(n)=floor(n*p) where p=2*cos(Pi/7)=A160389.

The programs for A262770, the canonical program `A262770.P1580842306897957380` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262770 has offset 0).

The definition of A262770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262770.P1580842306897957380

`floor(n*2*cos(π/7))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262770

/-- `floor(n*2*cos(π/7))` -/
def P1580842306897957380.Spec : Prop :=
  ∀ n, P1580842306897957380.a n = A262770 n

theorem P1580842306897957380.correct : P1580842306897957380.Spec := by
  intro n
  simp only [A262770]

end A262770

/-! ## A262770.P3403069975958363960

`-ceil(2*n*cos(8*π/7))`
-/

namespace A262770.P3403069975958363960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(2 * n : ℝ) * Real.cos (8 * (Real.pi / 7))⌉

end

end A262770.P3403069975958363960

namespace A262770

/-- `-ceil(2*n*cos(8*π/7))` -/
def P3403069975958363960.Spec : Prop :=
  ∀ n, P3403069975958363960.a n = A262770 n

end A262770

/-! ## A262770.P7754350159559479679

`comp[A262773(n+1)]`
-/

namespace A262770.P7754350159559479679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A262770.P7754350159559479679

namespace A262770

/-- `comp[A262773(n+1)]` -/
def P7754350159559479679.Spec : Prop :=
  ∀ n, (P7754350159559479679.a n : ℤ) = A262770 n

end A262770

/-!
# A262771: Expansion of f(-x, -x^5) / f(x^2, x^4) in powers of x where f( , ) is Ramanujan's general theta function.

The programs for A262771, there is no canonical definition to state claims against.
-/

/-! ## A262771.P8628828035486232087

`A112186(Δ[n²])`
-/

namespace A262771.P8628828035486232087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262771.P8628828035486232087

/-! ## A262771.P2497013163518241662

`-A112187(2*n+1)`
-/

namespace A262771.P2497013163518241662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112187 (2 * n + 1)

end

end A262771.P2497013163518241662

/-! ## A262771.P12969630488611959656

`A112186(n+1+n)^gcd(n, n+1)`
-/

namespace A262771.P12969630488611959656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112186 (n + 1 + n) ^ Nat.gcd n (n + 1)

end

end A262771.P12969630488611959656

/-! ## A262771.P7683585611078442625

`A033999(n)*A112165(2*n+1)`
-/

namespace A262771.P7683585611078442625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112165 (2 * n + 1)

end

end A262771.P7683585611078442625

/-! ## A262771.P15111801358378254649

`A033999(n+1)*A058574(2*n+1)`
-/

namespace A262771.P15111801358378254649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A058574 (2 * n + 1)

end

end A262771.P15111801358378254649

/-! ## A262771.P12562227757843815440

`A000035(2*n)-A112187(2*n+1)`
-/

namespace A262771.P12562227757843815440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A112187 (2 * n + 1)

end

end A262771.P12562227757843815440

/-! ## A262771.P6013231823791805744

`A056594(2*n)*A112165(2*n+1)`
-/

namespace A262771.P6013231823791805744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A112165 (2 * n + 1)

end

end A262771.P6013231823791805744

/-! ## A262771.P12439970354922903866

`A057077(2*n)*A112165(2*n+1)`
-/

namespace A262771.P12439970354922903866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112165 (2 * n + 1)

end

end A262771.P12439970354922903866

/-! ## A262771.P7834219344834546327

`A087960(2*n)*A112165(2*n+1)`
-/

namespace A262771.P7834219344834546327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112165 (2 * n + 1)

end

end A262771.P7834219344834546327

/-! ## A262771.P3158070225677230968

`1-(A112187(2*n+1)+A000034(2*n))`
-/

namespace A262771.P3158070225677230968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112187 (2 * n + 1) + A000034 (2 * n))

end

end A262771.P3158070225677230968

/-! ## A262771.P2507854123009520917

`1-(A112187(2*n+1)+A033999(2*n))`
-/

namespace A262771.P2507854123009520917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112187 (2 * n + 1) + A033999 (2 * n))

end

end A262771.P2507854123009520917

/-! ## A262771.P15016734425372268938

`A033999(2*n+1)*A112187(2*n+1)`
-/

namespace A262771.P15016734425372268938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A112187 (2 * n + 1)

end

end A262771.P15016734425372268938

/-! ## A262771.P1709050083877549201

`A058574(2*n+1)*A087960(2*n+1)`
-/

namespace A262771.P1709050083877549201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058574 (2 * n + 1) * A087960 (2 * n + 1)

end

end A262771.P1709050083877549201

/-! ## A262771.P6629198156921850719

`(n-A008619(2*n))*A112187(2*n+1)`
-/

namespace A262771.P6629198156921850719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 (2 * n)) * A112187 (2 * n + 1)

end

end A262771.P6629198156921850719

/-! ## A262771.P182627271628506845

`1-(A112187(2*n+1)+A006519(2*n+1))`
-/

namespace A262771.P182627271628506845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112187 (2 * n + 1) + A006519 (2 * n + 1))

end

end A262771.P182627271628506845

/-! ## A262771.P1526354258408668888

`A112187(A006519(2*n+1))*A112187(2*n+1)`
-/

namespace A262771.P1526354258408668888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112187 (A006519 (2 * n + 1)).toNat * A112187 (2 * n + 1)

end

end A262771.P1526354258408668888

/-!
# A262773: A Beatty sequence: a(n)=floor(q*n) where q=A231187.

The programs for A262773, the canonical program `A262773.P3105617784644540738` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262773 has offset 0).

The definition of A262773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262773.P3105617784644540738

`floor(n/(2*cos(3*π/7)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262773

/-- `floor(n/(2*cos(3*π/7)))` -/
def P3105617784644540738.Spec : Prop :=
  ∀ n, P3105617784644540738.a n = A262773 n

theorem P3105617784644540738.correct : P3105617784644540738.Spec := by
  intro n
  simp only [A262773]

end A262773

/-! ## A262773.P8145600945716369673

`lt[A113217(n), A001065(A092911(3*(n+1)))]`
-/

namespace A262773.P8145600945716369673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A092911 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262773.P8145600945716369673

namespace A262773

/-- `lt[A113217(n), A001065(A092911(3*(n+1)))]` -/
def P8145600945716369673.Spec : Prop :=
  ∀ n, (P8145600945716369673.a n : ℤ) = A262773 n

end A262773

/-! ## A262773.P12730859954587751436

`eq[n*dr(n)%2, A087780(A249674(2*(n+1)))]`
-/

namespace A262773.P12730859954587751436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.digitalRoot (n : ℤ) % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A249674 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262773.P12730859954587751436

namespace A262773

/-- `eq[n*dr(n)%2, A087780(A249674(2*(n+1)))]` -/
def P12730859954587751436.Spec : Prop :=
  ∀ n, (P12730859954587751436.a n : ℤ) = A262773 n

end A262773

/-! ## A262773.P7570976880383477725

`A110655(n)+A003056(A000384(n))`
-/

namespace A262773.P7570976880383477725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A003056 (A000384 n).toNat

end

end A262773.P7570976880383477725

namespace A262773

/-- `A110655(n)+A003056(A000384(n))` -/
def P7570976880383477725.Spec : Prop :=
  ∀ n, P7570976880383477725.a n = A262773 n

end A262773

/-! ## A262773.P11414339858681621870

`floor(∑[∑[acot(n!)]])`
-/

namespace A262773.P11414339858681621870
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.factorial n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A262773.P11414339858681621870

namespace A262773

/-- `floor(∑[∑[acot(n!)]])` -/
def P11414339858681621870.Spec : Prop :=
  ∀ n, P11414339858681621870.a n = A262773 n

end A262773

/-! ## A262773.P15963236141433977175

`∑[A091090(A353847(n))]-1+n`
-/

namespace A262773.P15963236141433977175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A353847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A262773.P15963236141433977175

namespace A262773

/-- `∑[A091090(A353847(n))]-1+n` -/
def P15963236141433977175.Spec : Prop :=
  ∀ n, P15963236141433977175.a n = A262773 n

end A262773

/-! ## A262773.P16863280342995974759

`A132292(A096603(n+1))+2*n`
-/

namespace A262773.P16863280342995974759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A096603 (n + 1)).toNat + (2 * n : ℤ)

end

end A262773.P16863280342995974759

namespace A262773

/-- `A132292(A096603(n+1))+2*n` -/
def P16863280342995974759.Spec : Prop :=
  ∀ n, P16863280342995974759.a n = A262773 n

end A262773

/-! ## A262773.P6710746921509444647

`eq[A164555(n)+A113217(n), A164555(n)]`
-/

namespace A262773.P6710746921509444647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + A113217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262773.P6710746921509444647

namespace A262773

/-- `eq[A164555(n)+A113217(n), A164555(n)]` -/
def P6710746921509444647.Spec : Prop :=
  ∀ n, (P6710746921509444647.a n : ℤ) = A262773 n

end A262773

/-!
# A262774: Expansion of psi(x^2) * phi(-x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A262774, the canonical program `A262774.P1314283626335343178` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262774 has offset 0).

The definition of A262774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262774.P1314283626335343178

`(-1)^n*A112604(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262774

/-- `(-1)^n*A112604(n)` -/
def P1314283626335343178.Spec : Prop :=
  ∀ n, P1314283626335343178.a n = A262774 n

theorem P1314283626335343178.correct : P1314283626335343178.Spec := by
  intro n
  simp only [A262774]

end A262774

/-! ## A262774.P3538706959920496533

`A112604(n)*A130151(n)`
-/

namespace A262774.P3538706959920496533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 n * A130151 n

end

end A262774.P3538706959920496533

namespace A262774

/-- `A112604(n)*A130151(n)` -/
def P3538706959920496533.Spec : Prop :=
  ∀ n, P3538706959920496533.a n = A262774 n

end A262774

/-! ## A262774.P7137036356432517049

`A112604(n)*A131556(n)`
-/

namespace A262774.P7137036356432517049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 n * A131556 n

end

end A262774.P7137036356432517049

namespace A262774

/-- `A112604(n)*A131556(n)` -/
def P7137036356432517049.Spec : Prop :=
  ∀ n, P7137036356432517049.a n = A262774 n

end A262774

/-! ## A262774.P4053298046304826778

`A112604(n)*A132951(n)`
-/

namespace A262774.P4053298046304826778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 n * A132951 n

end

end A262774.P4053298046304826778

namespace A262774

/-- `A112604(n)*A132951(n)` -/
def P4053298046304826778.Spec : Prop :=
  ∀ n, P4053298046304826778.a n = A262774 n

end A262774

/-! ## A262774.P10264605950835133657

`A253243(n)/A132419(n)`
-/

namespace A262774.P10264605950835133657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253243 n : ℚ) / (A132419 n : ℚ)

end

end A262774.P10264605950835133657

namespace A262774

/-- `A253243(n)/A132419(n)` -/
def P10264605950835133657.Spec : Prop :=
  ∀ n, P10264605950835133657.a n = (A262774 n : ℚ)

end A262774

/-! ## A262774.P3097230022264263822

`A262780(2*n)`
-/

namespace A262774.P3097230022264263822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (2 * n)

end

end A262774.P3097230022264263822

namespace A262774

/-- `A262780(2*n)` -/
def P3097230022264263822.Spec : Prop :=
  ∀ n, P3097230022264263822.a n = A262774 n

end A262774

/-! ## A262774.P1300365546066081492

`A262780(n+n)%(n+2)`
-/

namespace A262774.P1300365546066081492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262780 (n + n)) (n + 2 : ℤ)

end

end A262774.P1300365546066081492

namespace A262774

/-- `A262780(n+n)%(n+2)` -/
def P1300365546066081492.Spec : Prop :=
  ∀ n, P1300365546066081492.a n = A262774 n

end A262774

/-! ## A262774.P11681612393208971871

`A033762(2*n)*A033999(n)`
-/

namespace A262774.P11681612393208971871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n) * A033999 n

end

end A262774.P11681612393208971871

namespace A262774

/-- `A033762(2*n)*A033999(n)` -/
def P11681612393208971871.Spec : Prop :=
  ∀ n, P11681612393208971871.a n = A262774 n

end A262774

/-! ## A262774.P15942953950362474698

`A009531(2*n+1)*A033762(2*n)`
-/

namespace A262774.P15942953950362474698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A033762 (2 * n)

end

end A262774.P15942953950362474698

namespace A262774

/-- `A009531(2*n+1)*A033762(2*n)` -/
def P15942953950362474698.Spec : Prop :=
  ∀ n, P15942953950362474698.a n = A262774 n

end A262774

/-! ## A262774.P227124223287812419

`A033999(n)*A129449(2*n)`
-/

namespace A262774.P227124223287812419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129449 (2 * n)

end

end A262774.P227124223287812419

namespace A262774

/-- `A033999(n)*A129449(2*n)` -/
def P227124223287812419.Spec : Prop :=
  ∀ n, P227124223287812419.a n = A262774 n

end A262774

/-! ## A262774.P6437629106559127156

`A057079(n)*A129449(2*n)`
-/

namespace A262774.P6437629106559127156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A129449 (2 * n)

end

end A262774.P6437629106559127156

namespace A262774

/-- `A057079(n)*A129449(2*n)` -/
def P6437629106559127156.Spec : Prop :=
  ∀ n, P6437629106559127156.a n = A262774 n

end A262774

/-! ## A262774.P7183119875144490738

`A033762(2*n)*A057077(2*n)`
-/

namespace A262774.P7183119875144490738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n) * A057077 (2 * n)

end

end A262774.P7183119875144490738

namespace A262774

/-- `A033762(2*n)*A057077(2*n)` -/
def P7183119875144490738.Spec : Prop :=
  ∀ n, P7183119875144490738.a n = A262774 n

end A262774

/-! ## A262774.P494173040027683015

`A087960(2*n)*A129449(2*n)`
-/

namespace A262774.P494173040027683015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A129449 (2 * n)

end

end A262774.P494173040027683015

namespace A262774

/-- `A087960(2*n)*A129449(2*n)` -/
def P494173040027683015.Spec : Prop :=
  ∀ n, P494173040027683015.a n = A262774 n

end A262774

/-! ## A262774.P5821942259646946725

`A123530(2*n)/2*A057079(n+1)`
-/

namespace A262774.P5821942259646946725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 (2 * n) : ℚ) / 2 * (A057079 (n + 1) : ℚ)

end

end A262774.P5821942259646946725

namespace A262774

/-- `A123530(2*n)/2*A057079(n+1)` -/
def P5821942259646946725.Spec : Prop :=
  ∀ n, P5821942259646946725.a n = (A262774 n : ℚ)

end A262774

/-! ## A262774.P9338623114936423389

`A123530(2*n)/2*A132954(n+1)`
-/

namespace A262774.P9338623114936423389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 (2 * n) : ℚ) / 2 * (A132954 (n + 1) : ℚ)

end

end A262774.P9338623114936423389

namespace A262774

/-- `A123530(2*n)/2*A132954(n+1)` -/
def P9338623114936423389.Spec : Prop :=
  ∀ n, P9338623114936423389.a n = (A262774 n : ℚ)

end A262774

/-! ## A262774.P12003034657604176091

`A057077(2*n)*A096936(A005408(2*n))`
-/

namespace A262774.P12003034657604176091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A096936 (A005408 (2 * n)).toNat

end

end A262774.P12003034657604176091

namespace A262774

/-- `A057077(2*n)*A096936(A005408(2*n))` -/
def P12003034657604176091.Spec : Prop :=
  ∀ n, P12003034657604176091.a n = A262774 n

end A262774

/-! ## A262774.P6812329537161431530

`A262726(3*n)`
-/

namespace A262774.P6812329537161431530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262726 (3 * n)

end

end A262774.P6812329537161431530

namespace A262774

/-- `A262726(3*n)` -/
def P6812329537161431530.Spec : Prop :=
  ∀ n, P6812329537161431530.a n = A262774 n

end A262774

/-! ## A262774.P15133278127316732142

`A113447(A059617(2*n))`
-/

namespace A262774.P15133278127316732142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A059617 (2 * n)).toNat

end

end A262774.P15133278127316732142

namespace A262774

/-- `A113447(A059617(2*n))` -/
def P15133278127316732142.Spec : Prop :=
  ∀ n, P15133278127316732142.a n = A262774 n

end A262774

/-!
# A262775: For a(n+1), sift out all numbers congruent to a(n-1) mod a(n) except for a(n-1); a(0)=0, a(1)=2.

The programs for A262775, there is no canonical definition to state claims against.
-/

/-! ## A262775.P5330935299820400279

`record[A274568(n+1)]`
-/

namespace A262775.P5330935299820400279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262775.P5330935299820400279

/-! ## A262775.P15896348017799505135

`eq[1, char[A274568(n)]]`
-/

namespace A262775.P15896348017799505135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274568 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262775.P15896348017799505135

/-! ## A262775.P7596080803042683257

`record[A274568(n)-A000038(n)]`
-/

namespace A262775.P7596080803042683257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274568 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262775.P7596080803042683257

/-! ## A262775.P3080517603236400212

`record[A057427(n)*A274568(n)]`
-/

namespace A262775.P3080517603236400212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262775.P3080517603236400212

/-! ## A262775.P15599000277519938622

`record[A274568(n)%A002061(n)]`
-/

namespace A262775.P15599000277519938622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274568 n) (A002061 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262775.P15599000277519938622

/-! ## A262775.P10637334213162910018

`record[and(A260196(n), A274568(n))]`
-/

namespace A262775.P10637334213162910018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A274568 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262775.P10637334213162910018

/-!
# A262777: a(n) = 10^n - prime(n).

The programs for A262777, the canonical program `A262777.P1344275269352665406` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262777 has offset 1).

The definition of A262777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262777.P3082285776066769255

`10^(n+1)-Δ[A007504(n)]`
-/

namespace A262777.P3082285776066769255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - (f1 (n + 1) - f1 n)

end

end A262777.P3082285776066769255

namespace A262777

/-- `10^(n+1)-Δ[A007504(n)]` -/
def P3082285776066769255.Spec : Prop :=
  ∀ n, P3082285776066769255.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P1344275269352665406

`10^(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262777

/-- `10^(n+1)-A000040(n+1)` -/
def P1344275269352665406.Spec : Prop :=
  ∀ n, P1344275269352665406.a n = A262777 (n + 1)

theorem P1344275269352665406.correct : P1344275269352665406.Spec := by
  intro n
  simp only [A262777, Nat.add_sub_cancel]

end A262777

/-! ## A262777.P8087098374610500479

`10^(n+1)-record[A006530(n+2)]`
-/

namespace A262777.P8087098374610500479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262777.P8087098374610500479

namespace A262777

/-- `10^(n+1)-record[A006530(n+2)]` -/
def P8087098374610500479.Spec : Prop :=
  ∀ n, P8087098374610500479.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P9353000403085820692

`10^(n+1)-record[A014963(n+2)]`
-/

namespace A262777.P9353000403085820692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262777.P9353000403085820692

namespace A262777

/-- `10^(n+1)-record[A014963(n+2)]` -/
def P9353000403085820692.Spec : Prop :=
  ∀ n, P9353000403085820692.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P3046381555895417797

`10^(n+1)-record[A020639(n+2)]`
-/

namespace A262777.P3046381555895417797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262777.P3046381555895417797

namespace A262777

/-- `10^(n+1)-record[A020639(n+2)]` -/
def P3046381555895417797.Spec : Prop :=
  ∀ n, P3046381555895417797.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P12062437966588840612

`A011557(n+1)-p?[A014681(n)]`
-/

namespace A262777.P12062437966588840612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262777.P12062437966588840612

namespace A262777

/-- `A011557(n+1)-p?[A014681(n)]` -/
def P12062437966588840612.Spec : Prop :=
  ∀ n, P12062437966588840612.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P13432456133407505217

`abs(A000040(n+1)-A011557(n+1))`
-/

namespace A262777.P13432456133407505217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A011557 (n + 1)|

end

end A262777.P13432456133407505217

namespace A262777

/-- `abs(A000040(n+1)-A011557(n+1))` -/
def P13432456133407505217.Spec : Prop :=
  ∀ n, P13432456133407505217.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P6160521401778148713

`∑[A052268(n+1)]+1-A000040(n+1)`
-/

namespace A262777.P6160521401778148713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000040 (n + 1))

end

end A262777.P6160521401778148713

namespace A262777

/-- `∑[A052268(n+1)]+1-A000040(n+1)` -/
def P6160521401778148713.Spec : Prop :=
  ∀ n, P6160521401778148713.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P10763000250857673624

`A002283(n+1)-∑[A054541(n+1)]+1`
-/

namespace A262777.P10763000250857673624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262777.P10763000250857673624

namespace A262777

/-- `A002283(n+1)-∑[A054541(n+1)]+1` -/
def P10763000250857673624.Spec : Prop :=
  ∀ n, P10763000250857673624.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P1710197768603261267

`A002283(n+1)-p?[A206074(n+1)]+1`
-/

namespace A262777.P1710197768603261267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A262777.P1710197768603261267

namespace A262777

/-- `A002283(n+1)-p?[A206074(n+1)]+1` -/
def P1710197768603261267.Spec : Prop :=
  ∀ n, P1710197768603261267.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P793872438121576514

`A002283(n+1)-(record[A014963(n+2)]-1)`
-/

namespace A262777.P793872438121576514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A262777.P793872438121576514

namespace A262777

/-- `A002283(n+1)-(record[A014963(n+2)]-1)` -/
def P793872438121576514.Spec : Prop :=
  ∀ n, P793872438121576514.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P14450753281918680117

`A001478(record[A006530(n+2)])+10^(n+1)`
-/

namespace A262777.P14450753281918680117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (10 ^ (n + 1) : ℤ)

end

end A262777.P14450753281918680117

namespace A262777

/-- `A001478(record[A006530(n+2)])+10^(n+1)` -/
def P14450753281918680117.Spec : Prop :=
  ∀ n, P14450753281918680117.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P16414433403319069651

`A011557(n+1)-A004086(A004087(n+1))`
-/

namespace A262777.P16414433403319069651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A004086 (A004087 (n + 1)).toNat

end

end A262777.P16414433403319069651

namespace A262777

/-- `A011557(n+1)-A004086(A004087(n+1))` -/
def P16414433403319069651.Spec : Prop :=
  ∀ n, P16414433403319069651.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P12709709621596801964

`A007924(A008578(n+2))-A008578(n+2)`
-/

namespace A262777.P12709709621596801964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 (A008578 (n + 2)).toNat - A008578 (n + 2)

end

end A262777.P12709709621596801964

namespace A262777

/-- `A007924(A008578(n+2))-A008578(n+2)` -/
def P12709709621596801964.Spec : Prop :=
  ∀ n, P12709709621596801964.a n = A262777 (n + 1)

end A262777

/-! ## A262777.P10198259701817172518

`A245806(n+1)-(A008578(n+2)+A000244(n+1))`
-/

namespace A262777.P10198259701817172518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245806 (n + 1) - (A008578 (n + 2) + A000244 (n + 1))

end

end A262777.P10198259701817172518

namespace A262777

/-- `A245806(n+1)-(A008578(n+2)+A000244(n+1))` -/
def P10198259701817172518.Spec : Prop :=
  ∀ n, P10198259701817172518.a n = A262777 (n + 1)

end A262777

/-!
# A262778: a(n) = 10^n + prime(n).

The programs for A262778, the canonical program `A262778.P8229883454937034113` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262778 has offset 1).

The definition of A262778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262778.P8229883454937034113

`A000040(n+1)+10^(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262778

/-- `A000040(n+1)+10^(n+1)` -/
def P8229883454937034113.Spec : Prop :=
  ∀ n, P8229883454937034113.a n = A262778 (n + 1)

theorem P8229883454937034113.correct : P8229883454937034113.Spec := by
  intro n
  simp only [A262778, Nat.add_sub_cancel]

end A262778

/-! ## A262778.P1814601377087332166

`record[A006530(n+2)]+10^(n+1)`
-/

namespace A262778.P1814601377087332166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (10 ^ (n + 1) : ℤ)

end

end A262778.P1814601377087332166

namespace A262778

/-- `record[A006530(n+2)]+10^(n+1)` -/
def P1814601377087332166.Spec : Prop :=
  ∀ n, P1814601377087332166.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P16996950127225316825

`record[A014963(n+2)]+10^(n+1)`
-/

namespace A262778.P16996950127225316825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (10 ^ (n + 1) : ℤ)

end

end A262778.P16996950127225316825

namespace A262778

/-- `record[A014963(n+2)]+10^(n+1)` -/
def P16996950127225316825.Spec : Prop :=
  ∀ n, P16996950127225316825.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P2390425247698016579

`record[A020639(n+2)]+10^(n+1)`
-/

namespace A262778.P2390425247698016579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (10 ^ (n + 1) : ℤ)

end

end A262778.P2390425247698016579

namespace A262778

/-- `record[A020639(n+2)]+10^(n+1)` -/
def P2390425247698016579.Spec : Prop :=
  ∀ n, P2390425247698016579.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P16512524262667970379

`record[A000010(n+1)+1]+10^(n+1)`
-/

namespace A262778.P16512524262667970379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (10 ^ (n + 1) : ℤ)

end

end A262778.P16512524262667970379

namespace A262778

/-- `record[A000010(n+1)+1]+10^(n+1)` -/
def P16512524262667970379.Spec : Prop :=
  ∀ n, P16512524262667970379.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P1125673770146702294

`A011557(n+1)+Δ[A007504(n)]`
-/

namespace A262778.P1125673770146702294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + (f1 (n + 1) - f1 n)

end

end A262778.P1125673770146702294

namespace A262778

/-- `A011557(n+1)+Δ[A007504(n)]` -/
def P1125673770146702294.Spec : Prop :=
  ∀ n, P1125673770146702294.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P17256467919765477914

`A133384(n)+record[A109606(n+1)]`
-/

namespace A262778.P17256467919765477914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133384 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262778.P17256467919765477914

namespace A262778

/-- `A133384(n)+record[A109606(n+1)]` -/
def P17256467919765477914.Spec : Prop :=
  ∀ n, P17256467919765477914.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P16813493532536366093

`A011557(n+1)+p?[A007989(n)]`
-/

namespace A262778.P16813493532536366093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262778.P16813493532536366093

namespace A262778

/-- `A011557(n+1)+p?[A007989(n)]` -/
def P16813493532536366093.Spec : Prop :=
  ∀ n, P16813493532536366093.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P14591769537645095562

`A011557(n+1)+p?[A014681(n)]`
-/

namespace A262778.P14591769537645095562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262778.P14591769537645095562

namespace A262778

/-- `A011557(n+1)+p?[A014681(n)]` -/
def P14591769537645095562.Spec : Prop :=
  ∀ n, P14591769537645095562.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P2285578532647175514

`A011557(n+1)+A000040(n+1)`
-/

namespace A262778.P2285578532647175514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + A000040 (n + 1)

end

end A262778.P2285578532647175514

namespace A262778

/-- `A011557(n+1)+A000040(n+1)` -/
def P2285578532647175514.Spec : Prop :=
  ∀ n, P2285578532647175514.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P14716125089288391179

`A178500(n+1)+A000040(n+1)`
-/

namespace A262778.P14716125089288391179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) + A000040 (n + 1)

end

end A262778.P14716125089288391179

namespace A262778

/-- `A178500(n+1)+A000040(n+1)` -/
def P14716125089288391179.Spec : Prop :=
  ∀ n, P14716125089288391179.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P7722190937021119928

`A178501(n+2)+A000040(n+1)`
-/

namespace A262778.P7722190937021119928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 2) + A000040 (n + 1)

end

end A262778.P7722190937021119928

namespace A262778

/-- `A178501(n+2)+A000040(n+1)` -/
def P7722190937021119928.Spec : Prop :=
  ∀ n, P7722190937021119928.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P14875040192386304457

`A011557(n+1)+record[A014963(n+2)]`
-/

namespace A262778.P14875040192386304457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262778.P14875040192386304457

namespace A262778

/-- `A011557(n+1)+record[A014963(n+2)]` -/
def P14875040192386304457.Spec : Prop :=
  ∀ n, P14875040192386304457.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P4233279170059773263

`A002283(n+1)+A000040(n+1)+1`
-/

namespace A262778.P4233279170059773263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) + (A000040 (n + 1) + 1)

end

end A262778.P4233279170059773263

namespace A262778

/-- `A002283(n+1)+A000040(n+1)+1` -/
def P4233279170059773263.Spec : Prop :=
  ∀ n, P4233279170059773263.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P4760153855615963300

`A002283(n+1)+p?[A000430(n+1)]+1`
-/

namespace A262778.P4760153855615963300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A262778.P4760153855615963300

namespace A262778

/-- `A002283(n+1)+p?[A000430(n+1)]+1` -/
def P4760153855615963300.Spec : Prop :=
  ∀ n, P4760153855615963300.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P6030209797833136295

`A011557(n+1)+A004086(A004087(n+1))`
-/

namespace A262778.P6030209797833136295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + A004086 (A004087 (n + 1)).toNat

end

end A262778.P6030209797833136295

namespace A262778

/-- `A011557(n+1)+A004086(A004087(n+1))` -/
def P6030209797833136295.Spec : Prop :=
  ∀ n, P6030209797833136295.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P5930119642821924488

`A008578(n+2)+A007924(A008578(n+2))`
-/

namespace A262778.P5930119642821924488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A007924 (A008578 (n + 2)).toNat

end

end A262778.P5930119642821924488

namespace A262778

/-- `A008578(n+2)+A007924(A008578(n+2))` -/
def P5930119642821924488.Spec : Prop :=
  ∀ n, P5930119642821924488.a n = A262778 (n + 1)

end A262778

/-! ## A262778.P4606619625772182811

`A245806(n+1)+A008578(n+2)-A000244(n+1)`
-/

namespace A262778.P4606619625772182811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245806 (n + 1) + (A008578 (n + 2) - A000244 (n + 1))

end

end A262778.P4606619625772182811

namespace A262778

/-- `A245806(n+1)+A008578(n+2)-A000244(n+1)` -/
def P4606619625772182811.Spec : Prop :=
  ∀ n, P4606619625772182811.a n = A262778 (n + 1)

end A262778

/-!
# A262779: Binary representation of the n-th iteration of the "Rule 175" elementary cellular automaton starting with a single ON (black) cell.

The programs for A262779, there is no canonical definition to state claims against.
-/

/-! ## A262779.P17900532230549850641

`floor(10*(10^n)²/9)-floor(10^(n-1))²`
-/

namespace A262779.P17900532230549850641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

end

end A262779.P17900532230549850641

/-! ## A262779.P3794213150046079244

`A266680(2*n)`
-/

namespace A262779.P3794213150046079244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266680 (2 * n)

end

end A262779.P3794213150046079244

/-! ## A262779.P5985421322838406356

`record[A266680(A014681(n))]`
-/

namespace A262779.P5985421322838406356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266680 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262779.P5985421322838406356

/-! ## A262779.P17186223634621553537

`A104326(A004146(n+1))`
-/

namespace A262779.P17186223634621553537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A004146 (n + 1)).toNat

end

end A262779.P17186223634621553537

/-! ## A262779.P16945800909160602459

`A104326(A014739(2*n))`
-/

namespace A262779.P16945800909160602459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A014739 (2 * n)).toNat

end

end A262779.P16945800909160602459

/-!
# A262780: Expansion of phi(-x^6) * psi(x^4) + x * phi(-x^2) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A262780, the canonical program `A262780.P16622817894387421388` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262780 has offset 0).

The definition of A262780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262780.P16622817894387421388

`(1-and(2, n))*A033762(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262780

/-- `(1-and(2, n))*A033762(n)` -/
def P16622817894387421388.Spec : Prop :=
  ∀ n, P16622817894387421388.a n = A262780 n

theorem P16622817894387421388.correct : P16622817894387421388.Spec := by
  intro n
  simp only [A262780]

end A262780

/-! ## A262780.P2638003854270987846

`A033762(n)*A057077(n)`
-/

namespace A262780.P2638003854270987846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 n * A057077 n

end

end A262780.P2638003854270987846

namespace A262780

/-- `A033762(n)*A057077(n)` -/
def P2638003854270987846.Spec : Prop :=
  ∀ n, P2638003854270987846.a n = A262780 n

end A262780

/-! ## A262780.P9625795830355432446

`A087960(n)*A129449(n)`
-/

namespace A262780.P9625795830355432446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A129449 n

end

end A262780.P9625795830355432446

namespace A262780

/-- `A087960(n)*A129449(n)` -/
def P9625795830355432446.Spec : Prop :=
  ∀ n, P9625795830355432446.a n = A262780 n

end A262780

/-! ## A262780.P677811409597066566

`A057077(n)*A096936(2*n+1)`
-/

namespace A262780.P677811409597066566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A096936 (2 * n + 1)

end

end A262780.P677811409597066566

namespace A262780

/-- `A057077(n)*A096936(2*n+1)` -/
def P677811409597066566.Spec : Prop :=
  ∀ n, P677811409597066566.a n = A262780 n

end A262780

/-! ## A262780.P1347989811563936615

`A096936(A005408(n))/A057077(n)`
-/

namespace A262780.P1347989811563936615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (A005408 n).toNat : ℚ) / (A057077 n : ℚ)

end

end A262780.P1347989811563936615

namespace A262780

/-- `A096936(A005408(n))/A057077(n)` -/
def P1347989811563936615.Spec : Prop :=
  ∀ n, P1347989811563936615.a n = (A262780 n : ℚ)

end A262780

/-! ## A262780.P14214380367653384815

`A262726(A071045(n))`
-/

namespace A262780.P14214380367653384815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262726 (A071045 n).toNat

end

end A262780.P14214380367653384815

namespace A262780

/-- `A262726(A071045(n))` -/
def P14214380367653384815.Spec : Prop :=
  ∀ n, P14214380367653384815.a n = A262780 n

end A262780

/-! ## A262780.P15733141428559827087

`A262774((n²+n)%(2*n+1))`
-/

namespace A262780.P15733141428559827087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 ((n ^ 2 + n) % (2 * n + 1))

end

end A262780.P15733141428559827087

namespace A262780

/-- `A262774((n²+n)%(2*n+1))` -/
def P15733141428559827087.Spec : Prop :=
  ∀ n, P15733141428559827087.a n = A262780 n

end A262780

/-! ## A262780.P17366439361789578018

`A262774(A014682(n))`
-/

namespace A262780.P17366439361789578018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 (A014682 n).toNat

end

end A262780.P17366439361789578018

namespace A262780

/-- `A262774(A014682(n))` -/
def P17366439361789578018.Spec : Prop :=
  ∀ n, P17366439361789578018.a n = A262780 n

end A262780

/-! ## A262780.P1106881658989146151

`A035178(Δ[n²])*A057077(n)`
-/

namespace A262780.P1106881658989146151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A057077 n

end

end A262780.P1106881658989146151

namespace A262780

/-- `A035178(Δ[n²])*A057077(n)` -/
def P1106881658989146151.Spec : Prop :=
  ∀ n, P1106881658989146151.a n = A262780 n

end A262780

/-! ## A262780.P532519962367782515

`A002324(2*n+1)*A057077(n)`
-/

namespace A262780.P532519962367782515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (2 * n + 1) * A057077 n

end

end A262780.P532519962367782515

namespace A262780

/-- `A002324(2*n+1)*A057077(n)` -/
def P532519962367782515.Spec : Prop :=
  ∀ n, P532519962367782515.a n = A262780 n

end A262780

/-! ## A262780.P1973383627417525760

`A002324(2*n+1)*A188510(2*n+1)`
-/

namespace A262780.P1973383627417525760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (2 * n + 1) * A188510 (2 * n + 1)

end

end A262780.P1973383627417525760

namespace A262780

/-- `A002324(2*n+1)*A188510(2*n+1)` -/
def P1973383627417525760.Spec : Prop :=
  ∀ n, P1973383627417525760.a n = A262780 n

end A262780

/-! ## A262780.P16675960195317491223

`A002324(2*n+1)*A257170(2*n+1)`
-/

namespace A262780.P16675960195317491223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (2 * n + 1) * A257170 (2 * n + 1)

end

end A262780.P16675960195317491223

namespace A262780

/-- `A002324(2*n+1)*A257170(2*n+1)` -/
def P16675960195317491223.Spec : Prop :=
  ∀ n, P16675960195317491223.a n = A262780 n

end A262780

/-! ## A262780.P9981886452919240317

`lcm(A143431(n+1), A261884(2*n+1))*A143431(2*n)`
-/

namespace A262780.P9981886452919240317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A143431 (n + 1)) (A261884 (2 * n + 1)) : ℤ) * A143431 (2 * n)

end

end A262780.P9981886452919240317

namespace A262780

/-- `lcm(A143431(n+1), A261884(2*n+1))*A143431(2*n)` -/
def P9981886452919240317.Spec : Prop :=
  ∀ n, P9981886452919240317.a n = A262780 n

end A262780

/-! ## A262780.P10806932389328634439

`A193426(6*n+3)/A057077(n)`
-/

namespace A262780.P10806932389328634439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193426 (6 * n + 3) : ℚ) / (A057077 n : ℚ)

end

end A262780.P10806932389328634439

namespace A262780

/-- `A193426(6*n+3)/A057077(n)` -/
def P10806932389328634439.Spec : Prop :=
  ∀ n, P10806932389328634439.a n = (A262780 n : ℚ)

end A262780

/-! ## A262780.P6840443593166599632

`A113447(A059617(n))`
-/

namespace A262780.P6840443593166599632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A059617 n).toNat

end

end A262780.P6840443593166599632

namespace A262780

/-- `A113447(A059617(n))` -/
def P6840443593166599632.Spec : Prop :=
  ∀ n, P6840443593166599632.a n = A262780 n

end A262780

/-! ## A262780.P7321339989094151457

`A002324(A005408(val(6^n, 2)))/A057077(n)`
-/

namespace A262780.P7321339989094151457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002324 (A005408 (SequenceMachineLib.valuation (6 ^ n) 2)).toNat : ℚ) / (A057077 n : ℚ)

end

end A262780.P7321339989094151457

namespace A262780

/-- `A002324(A005408(val(6^n, 2)))/A057077(n)` -/
def P7321339989094151457.Spec : Prop :=
  ∀ n, P7321339989094151457.a n = (A262780 n : ℚ)

end A262780

/-!
# A262781: Number of ordered ways to write n as x^2 + phi(y^2) + phi(z^2) (x >= 0 and 0 < y <= z) with y or z prime, where phi(.) is Euler's totient function given by A000010.

The programs for A262781, there is no canonical definition to state claims against.
-/

/-! ## A262781.P3142122799460713065

`and(A121341(n+1), A165100(A222175(n+1)))`
-/

namespace A262781.P3142122799460713065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121341 (n + 1)) (A165100 (A222175 (n + 1)).toNat)

end

end A262781.P3142122799460713065

/-! ## A262781.P6766812999373750429

`A102669(A067721(A313079(n))*A306073(n+1))`
-/

namespace A262781.P6766812999373750429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A067721 (A313079 n).toNat * A306073 (n + 1)).toNat

end

end A262781.P6766812999373750429

/-! ## A262781.P14647117977664985895

`A037888(A108412(n)+92)`
-/

namespace A262781.P14647117977664985895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A108412 n + 92).toNat

end

end A262781.P14647117977664985895

/-! ## A262781.P7388964527732180614

`A019269(A139488(n)+A000325(n))`
-/

namespace A262781.P7388964527732180614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A139488 n + A000325 n).toNat

end

end A262781.P7388964527732180614

/-! ## A262781.P2542659363837340051

`A000120(n)-A370813(A248057(n+1))`
-/

namespace A262781.P2542659363837340051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A370813 (A248057 (n + 1)).toNat

end

end A262781.P2542659363837340051

/-!
# A262782: a(n) = sum_{k=1..n} 3^prime(k).

The programs for A262782, there is no canonical definition to state claims against.
-/

/-! ## A262782.P12945847559946409561

`∑[3^p?[comp[n²]]]`
-/

namespace A262782.P12945847559946409561
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262782.P12945847559946409561

/-! ## A262782.P6276034898738774301

`∑[3^eq[1, ∑{e}[n, #]]]`
-/

namespace A262782.P6276034898738774301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262782.P6276034898738774301

/-! ## A262782.P12273142787659372264

`∑[3^eq[n+1, ∑{d}[n, #]]]`
-/

namespace A262782.P12273142787659372264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262782.P12273142787659372264

/-! ## A262782.P11061009955621832143

`∑[A057901(n+1)]`
-/

namespace A262782.P11061009955621832143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262782.P11061009955621832143

/-! ## A262782.P16807802705934895307

`∑[3^A000040(n+1)]`
-/

namespace A262782.P16807802705934895307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262782.P16807802705934895307

/-!
# A262783: Terms of A173143 (partial sums of squarefree numbers) that are square.

The programs for A262783, there is no canonical definition to state claims against.
-/

/-! ## A262783.P9343386243534358657

`∩[A173143(n+1), n²]`
-/

namespace A262783.P9343386243534358657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A262783.P9343386243534358657

/-! ## A262783.P196556782598503273

`∩[A000290(n), A173143(n+1)]`
-/

namespace A262783.P196556782598503273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262783.P196556782598503273

/-! ## A262783.P7046293116216880063

`∩[A001597(n+1), A173143(n+1)]`
-/

namespace A262783.P7046293116216880063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262783.P7046293116216880063

/-! ## A262783.P11572444311271640461

`∩[A005563(n)+1, A173143(n+1)]`
-/

namespace A262783.P11572444311271640461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262783.P11572444311271640461

/-!
# A262784: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(x)^n * (x^n/n) / (1 + x^n) ).

The programs for A262784, there is no canonical definition to state claims against.
-/

/-! ## A262784.P10656024455235862822

`A110656(A051436(n)+A027375(n))`
-/

namespace A262784.P10656024455235862822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A051436 n + A027375 n).toNat

end

end A262784.P10656024455235862822

/-! ## A262784.P4809563256753485458

`A183233(A056364(n))`
-/

namespace A262784.P4809563256753485458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A056364 n).toNat

end

end A262784.P4809563256753485458

/-! ## A262784.P12134067405667951554

`A376635(A279196(n+1))`
-/

namespace A262784.P12134067405667951554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A279196 (n + 1)).toNat

end

end A262784.P12134067405667951554

/-!
# A262785: Number of ordered ways to write n as x^2 + y^2 + p*(p+d)/2, where 0 <= x <= y, d is 1 or -1, and p is prime.

The programs for A262785, there is no canonical definition to state claims against.
-/

/-! ## A262785.P4536319360346406345

`A001221(xor(∑[(2-n)²+n], A076454(n+1)))`
-/

namespace A262785.P4536319360346406345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A076454 (n + 1))).toNat

end

end A262785.P4536319360346406345

/-! ## A262785.P7758617093823177310

`or(A001222(A006958(n+1)), A254114(3*n+2))`
-/

namespace A262785.P7758617093823177310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A006958 (n + 1)).toNat) (A254114 (3 * n + 2))

end

end A262785.P7758617093823177310

/-! ## A262785.P14234494114669225043

`A032741(A208738(A001316(n))+A106141(n+1))`
-/

namespace A262785.P14234494114669225043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A208738 (A001316 n).toNat + A106141 (n + 1)).toNat

end

end A262785.P14234494114669225043

/-! ## A262785.P8783705603322576857

`A230798(A054120(2*(n+2))*A219529(n))`
-/

namespace A262785.P8783705603322576857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230798 (A054120 (2 * (n + 2)) * A219529 n).toNat

end

end A262785.P8783705603322576857

/-! ## A262785.P920176475299128920

`A050604(C(A062279(n), A143544(n+1)))`
-/

namespace A262785.P920176475299128920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 (Nat.choose (A062279 n).toNat (A143544 (n + 1)).toNat)

end

end A262785.P920176475299128920

/-!
# A262786: a(n) = 37^(2*n+1).

The programs for A262786, the canonical program `A262786.P13505729835002432567` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262786 has offset 0).

The definition of A262786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `37^(2*n+1)` (program `A262786.P13505729835002432567`, by `A262786.P13505729835002432567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262786.P13505729835002432567

`37^(2*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262786

/-- `37^(2*n+1)` -/
def P13505729835002432567.Spec : Prop :=
  ∀ n, (P13505729835002432567.a n : ℤ) = A262786 n

theorem P13505729835002432567.correct : P13505729835002432567.Spec := by
  intro n
  simp only [A262786]

end A262786

/-! ## A262786.P10670717211540273920

`record[37^xor(1, n)]`
-/

namespace A262786.P10670717211540273920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262786.P10670717211540273920

namespace A262786

/-- `record[37^xor(1, n)]` -/
def P10670717211540273920.Spec : Prop :=
  ∀ n, (P10670717211540273920.a n : ℤ) = A262786 n

end A262786

/-! ## A262786.P17296953979755208499

`record[37^n^(n%2)]`
-/

namespace A262786.P17296953979755208499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262786.P17296953979755208499

namespace A262786

/-- `record[37^n^(n%2)]` -/
def P17296953979755208499.Spec : Prop :=
  ∀ n, (P17296953979755208499.a n : ℤ) = A262786 n

end A262786

/-! ## A262786.P15335736411413561389

`37*37*a(n-1)` with `a(0)=37`
-/

namespace A262786.P15335736411413561389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [37] fun n a =>
  37 * (37 * a (n - 1))

end

end A262786.P15335736411413561389

namespace A262786

/-- `37*37*a(n-1)` -/
def P15335736411413561389.Spec : Prop :=
  ∀ n, (P15335736411413561389.a n : ℤ) = A262786 n

end A262786

/-! ## A262786.P18116493281432547390

`record[37^(lcm(4, n+1)/4)]`
-/

namespace A262786.P18116493281432547390
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (37 : ℝ) ^ ((Nat.lcm 4 (n + 1) : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262786.P18116493281432547390

namespace A262786

/-- `record[37^(lcm(4, n+1)/4)]` -/
def P18116493281432547390.Spec : Prop :=
  ∀ n, P18116493281432547390.a n = (A262786 n : ℝ)

end A262786

/-!
# A262787: a(n) = 41^(2*n+1).

The programs for A262787, the canonical program `A262787.P7501018576982216242` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262787 has offset 0).

The definition of A262787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `41^(2*n+1)` (program `A262787.P7501018576982216242`, by `A262787.P7501018576982216242.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262787.P7501018576982216242

`41^(2*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262787

/-- `41^(2*n+1)` -/
def P7501018576982216242.Spec : Prop :=
  ∀ n, (P7501018576982216242.a n : ℤ) = A262787 n

theorem P7501018576982216242.correct : P7501018576982216242.Spec := by
  intro n
  simp only [A262787]

end A262787

/-! ## A262787.P12664341117827040848

`record[41^xor(1, n)]`
-/

namespace A262787.P12664341117827040848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262787.P12664341117827040848

namespace A262787

/-- `record[41^xor(1, n)]` -/
def P12664341117827040848.Spec : Prop :=
  ∀ n, (P12664341117827040848.a n : ℤ) = A262787 n

end A262787

/-! ## A262787.P8962094260656014592

`41*41*a(n-1)` with `a(0)=41`
-/

namespace A262787.P8962094260656014592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [41] fun n a =>
  41 * (41 * a (n - 1))

end

end A262787.P8962094260656014592

namespace A262787

/-- `41*41*a(n-1)` -/
def P8962094260656014592.Spec : Prop :=
  ∀ n, (P8962094260656014592.a n : ℤ) = A262787 n

end A262787

/-! ## A262787.P659459103928747677

`record[41^((n+1)/2^val(n+1, 2))]`
-/

namespace A262787.P659459103928747677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (41 : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262787.P659459103928747677

namespace A262787

/-- `record[41^((n+1)/2^val(n+1, 2))]` -/
def P659459103928747677.Spec : Prop :=
  ∀ n, P659459103928747677.a n = (A262787 n : ℝ)

end A262787

/-! ## A262787.P14077811421845620565

`record[41^A004442(n)]`
-/

namespace A262787.P14077811421845620565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (41 : ℚ) ^ (A004442 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262787.P14077811421845620565

namespace A262787

/-- `record[41^A004442(n)]` -/
def P14077811421845620565.Spec : Prop :=
  ∀ n, P14077811421845620565.a n = (A262787 n : ℚ)

end A262787

/-!
# A262788: Number of (n+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262788, there is no canonical definition to state claims against.
-/

/-! ## A262788.P18290139982994575637

`A262795(∑[4*n]+1)`
-/

namespace A262788.P18290139982994575637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262788.P18290139982994575637

/-!
# A262789: Number of (n+2) X (2+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262789, the canonical program `A262789.P7255478999232444171` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262789 has offset 1).

The definition of A262789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262789.P7255478999232444171

`floor(2^(n+5)/5)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A262789

/-- `floor(2^(n+5)/5)²` -/
def P7255478999232444171.Spec : Prop :=
  ∀ n, P7255478999232444171.a n = A262789 (n + 1)

theorem P7255478999232444171.correct : P7255478999232444171.Spec := by
  intro n
  simp only [A262789, Nat.add_sub_cancel]

end A262789

/-! ## A262789.P5334258860818403807

`A077854(n+2)^2`
-/

namespace A262789.P5334258860818403807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (n + 2) ^ 2

end

end A262789.P5334258860818403807

namespace A262789

/-- `A077854(n+2)^2` -/
def P5334258860818403807.Spec : Prop :=
  ∀ n, P5334258860818403807.a n = A262789 (n + 1)

end A262789

/-! ## A262789.P13516429291064119635

`record[A077854(A028242(n)+1)²]`
-/

namespace A262789.P13516429291064119635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (A028242 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262789.P13516429291064119635

namespace A262789

/-- `record[A077854(A028242(n)+1)²]` -/
def P13516429291064119635.Spec : Prop :=
  ∀ n, P13516429291064119635.a n = A262789 (n + 1)

end A262789

/-! ## A262789.P6768827045320553964

`record[A077854(A153881(n+1)+n+1)²]`
-/

namespace A262789.P6768827045320553964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (A153881 (n + 1) + (n + 1 : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262789.P6768827045320553964

namespace A262789

/-- `record[A077854(A153881(n+1)+n+1)²]` -/
def P6768827045320553964.Spec : Prop :=
  ∀ n, P6768827045320553964.a n = A262789 (n + 1)

end A262789

/-! ## A262789.P7425599789882359518

`record[A077854(A028310(n)+A000007(n))²]`
-/

namespace A262789.P7425599789882359518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (A028310 n + A000007 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262789.P7425599789882359518

namespace A262789

/-- `record[A077854(A028310(n)+A000007(n))²]` -/
def P7425599789882359518.Spec : Prop :=
  ∀ n, P7425599789882359518.a n = A262789 (n + 1)

end A262789

/-! ## A262789.P123475751038426313

`A077854(n+2)²%A250080(n+1)`
-/

namespace A262789.P123475751038426313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077854 (n + 2) ^ 2) (A250080 (n + 1))

end

end A262789.P123475751038426313

namespace A262789

/-- `A077854(n+2)²%A250080(n+1)` -/
def P123475751038426313.Spec : Prop :=
  ∀ n, P123475751038426313.a n = A262789 (n + 1)

end A262789

/-! ## A262789.P16689535709014035659

`record[A077854(A004736(n+2))²]`
-/

namespace A262789.P16689535709014035659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (A004736 (n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262789.P16689535709014035659

namespace A262789

/-- `record[A077854(A004736(n+2))²]` -/
def P16689535709014035659.Spec : Prop :=
  ∀ n, P16689535709014035659.a n = A262789 (n + 1)

end A262789

/-!
# A262790: Number of (n+2)X(3+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262790, there is no canonical definition to state claims against.
-/

/-! ## A262790.P11073545120455236268

`A262795(∑[n+3]+1)`
-/

namespace A262790.P11073545120455236268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262790.P11073545120455236268

/-! ## A262790.P9387480177807762775

`record[Δ[A262795(A130297(n+1))]]`
-/

namespace A262790.P9387480177807762775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262790.P9387480177807762775

/-! ## A262790.P17371780966313453534

`A262795(A034856(n+2))+C(2, n)*A131852(5*n)`
-/

namespace A262790.P17371780966313453534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A034856 (n + 2)).toNat + (Nat.choose 2 n : ℤ) * A131852 (5 * n)

end

end A262790.P17371780966313453534

/-! ## A262790.P5563848400606188308

`A262795(A034856(n+2))+A026816(A002126(n))`
-/

namespace A262790.P5563848400606188308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A034856 (n + 2)).toNat + A026816 (A002126 n).toNat

end

end A262790.P5563848400606188308

/-! ## A262790.P16138970902587793737

`A262795(A034856(n+2))+A084904(A006047(n))`
-/

namespace A262790.P16138970902587793737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A034856 (n + 2)).toNat + A084904 (A006047 n).toNat

end

end A262790.P16138970902587793737

/-!
# A262791: Number of (n+2) X (4+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262791, there is no canonical definition to state claims against.
-/

/-! ## A262791.P4653545725021918876

`A262795(A141214(n+1))`
-/

namespace A262791.P4653545725021918876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A141214 (n + 1)).toNat

end

end A262791.P4653545725021918876

/-! ## A262791.P3919884582525825248

`A262795(A027379(n+2))`
-/

namespace A262791.P3919884582525825248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A027379 (n + 2)).toNat

end

end A262791.P3919884582525825248

/-! ## A262791.P2655936776280053163

`A262795(A055998(n+2))`
-/

namespace A262791.P2655936776280053163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A055998 (n + 2)).toNat

end

end A262791.P2655936776280053163

/-! ## A262791.P4698734572430727153

`A262795(A155212(n)+5)`
-/

namespace A262791.P4698734572430727153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A155212 n + 5).toNat

end

end A262791.P4698734572430727153

/-! ## A262791.P9911412492127681805

`A262795(A056000(n)+7)`
-/

namespace A262791.P9911412492127681805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A056000 n + 7).toNat

end

end A262791.P9911412492127681805

/-!
# A262792: Number of (n+2)X(5+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262792, there is no canonical definition to state claims against.
-/

/-! ## A262792.P16775714937695164286

`A262795(∑[n+5]+6)`
-/

namespace A262792.P16775714937695164286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A262792.P16775714937695164286

/-!
# A262793: Number of (n+2)X(6+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262793, there is no canonical definition to state claims against.
-/

/-! ## A262793.P11659579254611466913

`A262795(A052905(n+3))`
-/

namespace A262793.P11659579254611466913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A052905 (n + 3)).toNat

end

end A262793.P11659579254611466913

/-! ## A262793.P17361603515210004653

`A262795(A056119(n)+16)`
-/

namespace A262793.P17361603515210004653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A056119 n + 16).toNat

end

end A262793.P17361603515210004653

/-! ## A262793.P13366286227935990403

`A262795(eq[3, A219347(n)])`
-/

namespace A262793.P13366286227935990403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262793.P13366286227935990403

/-!
# A262794: Number of (n+2)X(7+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262794, there is no canonical definition to state claims against.
-/

/-! ## A262794.P4354544375292931014

`A262795(A055999(n+4))`
-/

namespace A262794.P4354544375292931014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A055999 (n + 4)).toNat

end

end A262794.P4354544375292931014

/-! ## A262794.P6531693721235680303

`A262795(eq[4, A219347(n)])`
-/

namespace A262794.P6531693721235680303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262794.P6531693721235680303

/-!
# A262795: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262795, there is no canonical definition to state claims against.
-/

/-! ## A262795.P15580518674009014155

`and(36*n, A173275(A126596(n)))`
-/

namespace A262795.P15580518674009014155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (36 * n : ℤ) (A173275 (A126596 n).toNat)

end

end A262795.P15580518674009014155

/-!
# A262796: Number of (1+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262796, there is no canonical definition to state claims against.
-/

/-! ## A262796.P16087475573224272276

`A262795(∑[n]+1)`
-/

namespace A262796.P16087475573224272276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262796.P16087475573224272276

/-! ## A262796.P3335434588994399454

`record[A262795(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A262796.P3335434588994399454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262796.P3335434588994399454

/-! ## A262796.P1748120698132002478

`lcm(2, A262795(A000124(n)))`
-/

namespace A262796.P1748120698132002478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262795 (A000124 n).toNat)

end

end A262796.P1748120698132002478

/-! ## A262796.P14495800199475971806

`record[A262795(∑[A057979(n)])]`
-/

namespace A262796.P14495800199475971806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262796.P14495800199475971806

/-! ## A262796.P6866741763452352671

`record[A262795(A134519(n+1))]`
-/

namespace A262796.P6866741763452352671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262796.P6866741763452352671

/-!
# A262797: Number of (2+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262797, there is no canonical definition to state claims against.
-/

/-! ## A262797.P8669390440694060395

`A262795(∑[n+1]+2)`
-/

namespace A262797.P8669390440694060395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262797.P8669390440694060395

/-! ## A262797.P6432269566161861230

`record[A262795(n+1)*A326822(n)]`
-/

namespace A262797.P6432269566161861230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262797.P6432269566161861230

/-! ## A262797.P4006969733623091979

`record[A262795(n+3)/A107865(n)]`
-/

namespace A262797.P4006969733623091979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262795 (n + 3) : ℚ) / (A107865 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262797.P4006969733623091979

/-!
# A262798: Number of (3+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262798, there is no canonical definition to state claims against.
-/

/-! ## A262798.P13069794388213163049

`A262795(∑[n+2]+4)`
-/

namespace A262798.P13069794388213163049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262798.P13069794388213163049

/-! ## A262798.P17243476202979359342

`record[A010054(n+2)*A262795(n+5)]`
-/

namespace A262798.P17243476202979359342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A262795 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262798.P17243476202979359342

/-! ## A262798.P11654355207297851947

`and(C(2, n+2)-1, A262795(A046691(n)+7))`
-/

namespace A262798.P11654355207297851947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.choose 2 (n + 2) : ℤ) - 1) (A262795 (A046691 n + 7).toNat)

end

end A262798.P11654355207297851947

/-! ## A262798.P7181682761561725071

`A262795(A167614(n+1))+A011737(n)`
-/

namespace A262798.P7181682761561725071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A167614 (n + 1)).toNat + A011737 n

end

end A262798.P7181682761561725071

/-! ## A262798.P8618670038687632957

`A262795(A167614(n+1))+A011738(n)`
-/

namespace A262798.P8618670038687632957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A167614 (n + 1)).toNat + A011738 n

end

end A262798.P8618670038687632957

/-!
# A262799: Number of (4+2)X(n+2) 0..1 arrays with each row divisible by 5 and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262799, there is no canonical definition to state claims against.
-/

/-! ## A262799.P2515338197580477786

`A262795(A141214(n)+7)`
-/

namespace A262799.P2515338197580477786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A141214 n + 7).toNat

end

end A262799.P2515338197580477786

/-! ## A262799.P7167869359246327838

`A262795(A052905(n)+9)`
-/

namespace A262799.P7167869359246327838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A052905 n + 9).toNat

end

end A262799.P7167869359246327838

/-! ## A262799.P9861200794880450927

`A262795(A055999(n)+10)`
-/

namespace A262799.P9861200794880450927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A055999 n + 10).toNat

end

end A262799.P9861200794880450927

/-! ## A262799.P1085914869477203825

`A262795(A167614(n+2)+1)`
-/

namespace A262799.P1085914869477203825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (A167614 (n + 2) + 1).toNat

end

end A262799.P1085914869477203825

/-! ## A262799.P4761950856732504004

`A262795(eq[5, A131818(n+1)])`
-/

namespace A262799.P4761950856732504004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262799.P4761950856732504004

