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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A374301: Number of growing self-avoiding walks of length n on a half-infinite strip of height 5 with a trapped endpoint.

The programs for A374301, there is no canonical definition to state claims against.
-/

/-! ## A374301.P7652647940374504508

`A324724(n+4)+A001462(A007583(n))`
-/

namespace A374301.P7652647940374504508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324724 (n + 4) + A001462 (A007583 n).toNat

end

end A374301.P7652647940374504508

/-! ## A374301.P17930613802664274228

`A257639(A213093(n+3))+A116127(n+2)`
-/

namespace A374301.P17930613802664274228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A213093 (n + 3)).toNat + A116127 (n + 2)

end

end A374301.P17930613802664274228

/-!
# A374307: Number of Greek-key tours on an 8 X n grid.

The programs for A374307, there is no canonical definition to state claims against.
-/

/-! ## A374307.P3757948394403437322

`A378938(A374009(n+1))`
-/

namespace A374307.P3757948394403437322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A374009 (n + 1)).toNat

end

end A374307.P3757948394403437322

/-!
# A374312: Number of graphs of order n with exactly one Hamiltonian cycle of girth at least 4.

The programs for A374312, there is no canonical definition to state claims against.
-/

/-! ## A374312.P2253489171065055371

`A096080(lt[A000254(n), A318110(3*n+4)])`
-/

namespace A374312.P2253489171065055371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318110 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096080 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374312.P2253489171065055371

/-!
# A374313: Number of graphs of order n with exactly one Hamiltonian cycle of girth at least 5.

The programs for A374313, there is no canonical definition to state claims against.
-/

/-! ## A374313.P4705471518488725420

`A238643(A041899(n))`
-/

namespace A374313.P4705471518488725420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (A041899 n).toNat

end

end A374313.P4705471518488725420

/-! ## A374313.P13680917785268777593

`A165419(A272794(n))`
-/

namespace A374313.P13680917785268777593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165419 (A272794 n).toNat

end

end A374313.P13680917785268777593

/-! ## A374313.P18142519065171509493

`A370809(A005251(n+2))`
-/

namespace A374313.P18142519065171509493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A005251 (n + 2)).toNat

end

end A374313.P18142519065171509493

/-! ## A374313.P17196154927097355259

`A370809(A349800(n)+A326568(2*(n+1)))`
-/

namespace A374313.P17196154927097355259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A349800 n + A326568 (2 * (n + 1))).toNat

end

end A374313.P17196154927097355259

/-!
# A374314: Number of graphs of order n with exactly two Hamiltonian cycles.

The programs for A374314, there is no canonical definition to state claims against.
-/

/-! ## A374314.P7507551992455392029

`A355657(A349404(n))-A378251(n+1)`
-/

namespace A374314.P7507551992455392029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355657 (A349404 n).toNat - A378251 (n + 1)

end

end A374314.P7507551992455392029

/-!
# A374315: Number of graphs of order n with exactly three Hamiltonian cycles.

The programs for A374315, there is no canonical definition to state claims against.
-/

/-! ## A374315.P6451962365112407073

`A212219(A274975(n))`
-/

namespace A374315.P6451962365112407073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212219 (A274975 n).toNat

end

end A374315.P6451962365112407073

/-! ## A374315.P7329182302636120828

`A370807(A377053(n))`
-/

namespace A374315.P7329182302636120828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370807 (A377053 n).toNat

end

end A374315.P7329182302636120828

/-! ## A374315.P11614862199576408112

`A241825(A266108(n+1))`
-/

namespace A374315.P11614862199576408112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (A266108 (n + 1)).toNat

end

end A374315.P11614862199576408112

/-!
# A374316: Number of graphs of order n with at least four Hamiltonian cycles.

The programs for A374316, there is no canonical definition to state claims against.
-/

/-! ## A374316.P3053348049592563252

`A152467(A006366(n))`
-/

namespace A374316.P3053348049592563252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A006366 n).toNat

end

end A374316.P3053348049592563252

/-! ## A374316.P15287054152307162291

`A025480(A383337(n)-1)`
-/

namespace A374316.P15287054152307162291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A383337 n - 1).toNat

end

end A374316.P15287054152307162291

/-!
# A374317: For any n > 0, let b_n(n+1) = 1, and for k = 1..n, if k divides b_n(k+1) then b_n(k) = b_n(k+1) / k otherwise b_n(k) = b_n(k+1) * k; a(n) = b_n(1).

The programs for A374317, there is no canonical definition to state claims against.
-/

/-! ## A374317.P7638163727759209836

`A055204(n+1)*A152977(A034386(n))`
-/

namespace A374317.P7638163727759209836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (n + 1) * A152977 (A034386 n).toNat

end

end A374317.P7638163727759209836

/-! ## A374317.P8219598775251109951

`A321625(∑[A256299(n)])`
-/

namespace A374317.P8219598775251109951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374317.P8219598775251109951

/-! ## A374317.P1672049029762503191

`A038387(A248772(n+1))`
-/

namespace A374317.P1672049029762503191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A248772 (n + 1)).toNat

end

end A374317.P1672049029762503191

/-! ## A374317.P6043945231433388652

`A038387(∏[Δ[A069891(n)]])`
-/

namespace A374317.P6043945231433388652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374317.P6043945231433388652

/-! ## A374317.P8949339203690039090

`A038387(∏[A007913(n+1)])`
-/

namespace A374317.P8949339203690039090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374317.P8949339203690039090

/-!
# A374318: For any n > 0, let b_n(n+1) = 0, and for k = 1..n, if b_n(k+1) >= k then b_n(k) = b_n(k+1) - k otherwise b_n(k) = b_n(k+1) + k; a(n) = b_n(1).

The programs for A374318, there is no canonical definition to state claims against.
-/

/-! ## A374318.P16856487635846751340

`A031124(A348165(n+1))`
-/

namespace A374318.P16856487635846751340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031124 (A348165 (n + 1)).toNat

end

end A374318.P16856487635846751340

/-! ## A374318.P563526419848095707

`1-A014017(A163479(2*n))`
-/

namespace A374318.P563526419848095707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014017 (A163479 (2 * n)).toNat

end

end A374318.P563526419848095707

/-! ## A374318.P2849994636907216091

`A215030(A210970(n+2)-4)`
-/

namespace A374318.P2849994636907216091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215030 (A210970 (n + 2) - 4).toNat

end

end A374318.P2849994636907216091

/-! ## A374318.P17483500135453236943

`A165582(gcd(A000217(n), A211998(n+1)))`
-/

namespace A374318.P17483500135453236943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (Int.gcd (A000217 n) (A211998 (n + 1)))

end

end A374318.P17483500135453236943

/-! ## A374318.P7862521484880721184

`A284620(A360006(3*n+5)+A055999(n+6))`
-/

namespace A374318.P7862521484880721184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A360006 (3 * n + 5) + A055999 (n + 6)).toNat

end

end A374318.P7862521484880721184

/-!
# A374320: Number of partitions of [n] such that the number of blocks of size k is a multiple of k for every k.

The programs for A374320, there is no canonical definition to state claims against.
-/

/-! ## A374320.P5148058070647195931

`A374262(n)%A096511(A067836(n+1))`
-/

namespace A374320.P5148058070647195931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374262 n) (A096511 (A067836 (n + 1)).toNat)

end

end A374320.P5148058070647195931

/-!
# A374321: Number of partitions of [n] such that the number of blocks of size k is zero or equals k for every k.

The programs for A374321, there is no canonical definition to state claims against.
-/

/-! ## A374321.P15635099985820252941

`A106609(A372579(n))`
-/

namespace A374321.P15635099985820252941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A372579 n).toNat

end

end A374321.P15635099985820252941

/-! ## A374321.P12590920307831392813

`A372579(n)%A096511(A067836(n+1))`
-/

namespace A374321.P12590920307831392813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372579 n) (A096511 (A067836 (n + 1)).toNat)

end

end A374321.P12590920307831392813

/-!
# A374324: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is even.

The programs for A374324, the canonical program `A374324.P17751175072152199206` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374324 has offset 1).

The definition of A374324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374324.P17751175072152199206

`A051903(A368714(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374324

/-- `A051903(A368714(n+1))` -/
def P17751175072152199206.Spec : Prop :=
  ∀ n, P17751175072152199206.a n = A374324 (n + 1)

theorem P17751175072152199206.correct : P17751175072152199206.Spec := by
  intro n
  simp only [A374324, Nat.add_sub_cancel]

end A374324

/-! ## A374324.P15733688249183679485

`filter[A051903(n+1), A000034(#)]`
-/

namespace A374324.P15733688249183679485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A374324.P15733688249183679485

namespace A374324

/-- `filter[A051903(n+1), A000034(#)]` -/
def P15733688249183679485.Spec : Prop :=
  ∀ n, P15733688249183679485.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P3142698886902304474

`filter[A051903(n+1), A010685(#)]`
-/

namespace A374324.P3142698886902304474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010685 (f1 j).toNat = 1) n)

end

end A374324.P3142698886902304474

namespace A374324

/-- `filter[A051903(n+1), A010685(#)]` -/
def P3142698886902304474.Spec : Prop :=
  ∀ n, P3142698886902304474.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P12202884357294543738

`filter[A051903(n+1), A010687(#)]`
-/

namespace A374324.P12202884357294543738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010687 (f1 j).toNat = 1) n)

end

end A374324.P12202884357294543738

namespace A374324

/-- `filter[A051903(n+1), A010687(#)]` -/
def P12202884357294543738.Spec : Prop :=
  ∀ n, P12202884357294543738.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P7509003077328457595

`filter[A051903(n+1), A010691(#)]`
-/

namespace A374324.P7509003077328457595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010691 (f1 j).toNat = 1) n)

end

end A374324.P7509003077328457595

namespace A374324

/-- `filter[A051903(n+1), A010691(#)]` -/
def P7509003077328457595.Spec : Prop :=
  ∀ n, P7509003077328457595.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P14369304718432869445

`filter[A051903(n+1), A059841(#)]`
-/

namespace A374324.P14369304718432869445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A374324.P14369304718432869445

namespace A374324

/-- `filter[A051903(n+1), A059841(#)]` -/
def P14369304718432869445.Spec : Prop :=
  ∀ n, P14369304718432869445.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P8473708672279147229

`A051903(eq[1, A376139(n+1)]+1)`
-/

namespace A374324.P8473708672279147229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A374324.P8473708672279147229

namespace A374324

/-- `A051903(eq[1, A376139(n+1)]+1)` -/
def P8473708672279147229.Spec : Prop :=
  ∀ n, P8473708672279147229.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P8987353611259835088

`A051903(lt[A375034(n+1), 1]+1)`
-/

namespace A374324.P8987353611259835088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A374324.P8987353611259835088

namespace A374324

/-- `A051903(lt[A375034(n+1), 1]+1)` -/
def P8987353611259835088.Spec : Prop :=
  ∀ n, P8987353611259835088.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P2927610319865170880

`A375033(A368714(2*n+1-n))`
-/

namespace A374324.P2927610319865170880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375033 (A368714 (2 * n + 1 - n)).toNat

end

end A374324.P2927610319865170880

namespace A374324

/-- `A375033(A368714(2*n+1-n))` -/
def P2927610319865170880.Spec : Prop :=
  ∀ n, P2927610319865170880.a n = A374324 (n + 1)

end A374324

/-! ## A374324.P1606709705707172730

`val(A046523(eq[1, A376139(n+1)]+1), 2)`
-/

namespace A374324.P1606709705707172730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A374324.P1606709705707172730

namespace A374324

/-- `val(A046523(eq[1, A376139(n+1)]+1), 2)` -/
def P1606709705707172730.Spec : Prop :=
  ∀ n, (P1606709705707172730.a n : ℤ) = A374324 (n + 1)

end A374324

/-!
# A374325: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

The programs for A374325, the canonical program `A374325.P10189443371500912035` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374325 has offset 1).

The definition of A374325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374325.P10830908055644995559

`A374326(n+1)²`
-/

namespace A374325.P10830908055644995559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374326 (n + 1) ^ 2

end

end A374325.P10830908055644995559

namespace A374325

/-- `A374326(n+1)²` -/
def P10830908055644995559.Spec : Prop :=
  ∀ n, P10830908055644995559.a n = A374325 (n + 1)

end A374325

/-! ## A374325.P10189443371500912035

`A051903(A369937(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374325

/-- `A051903(A369937(n+1))` -/
def P10189443371500912035.Spec : Prop :=
  ∀ n, P10189443371500912035.a n = A374325 (n + 1)

theorem P10189443371500912035.correct : P10189443371500912035.Spec := by
  intro n
  simp only [A374325, Nat.add_sub_cancel]

end A374325

/-! ## A374325.P12944744546818997981

`A374326(A028310(n+1))^2`
-/

namespace A374325.P12944744546818997981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374326 (A028310 (n + 1)).toNat ^ 2

end

end A374325.P12944744546818997981

namespace A374325

/-- `A374326(A028310(n+1))^2` -/
def P12944744546818997981.Spec : Prop :=
  ∀ n, P12944744546818997981.a n = A374325 (n + 1)

end A374325

/-! ## A374325.P10815191495747124910

`A374326(n+1)^A043529(n)`
-/

namespace A374325.P10815191495747124910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374326 (n + 1) : ℚ) ^ (A043529 n : ℤ)

end

end A374325.P10815191495747124910

namespace A374325

/-- `A374326(n+1)^A043529(n)` -/
def P10815191495747124910.Spec : Prop :=
  ∀ n, P10815191495747124910.a n = (A374325 (n + 1) : ℚ)

end A374325

/-! ## A374325.P9079713176309161684

`filter[A051903(n+1), A010052(#)]`
-/

namespace A374325.P9079713176309161684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A374325.P9079713176309161684

namespace A374325

/-- `filter[A051903(n+1), A010052(#)]` -/
def P9079713176309161684.Spec : Prop :=
  ∀ n, P9079713176309161684.a n = A374325 (n + 1)

end A374325

/-! ## A374325.P12981901510248939472

`A374326(A000027(n+1))*A374326(n+1)`
-/

namespace A374325.P12981901510248939472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374326 (A000027 (n + 1)).toNat * A374326 (n + 1)

end

end A374325.P12981901510248939472

namespace A374325

/-- `A374326(A000027(n+1))*A374326(n+1)` -/
def P12981901510248939472.Spec : Prop :=
  ∀ n, P12981901510248939472.a n = A374325 (n + 1)

end A374325

/-! ## A374325.P12256677617197451431

`A374326(A028310(n+1))*A374326(n+1)`
-/

namespace A374325.P12256677617197451431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374326 (A028310 (n + 1)).toNat * A374326 (n + 1)

end

end A374325.P12256677617197451431

namespace A374325

/-- `A374326(A028310(n+1))*A374326(n+1)` -/
def P12256677617197451431.Spec : Prop :=
  ∀ n, P12256677617197451431.a n = A374325 (n + 1)

end A374325

/-! ## A374325.P9619929525562495820

`A374326(n+1)^A127582(A037213(n))`
-/

namespace A374325.P9619929525562495820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374326 (n + 1) : ℚ) ^ (A127582 (A037213 n).toNat : ℤ)

end

end A374325.P9619929525562495820

namespace A374325

/-- `A374326(n+1)^A127582(A037213(n))` -/
def P9619929525562495820.Spec : Prop :=
  ∀ n, P9619929525562495820.a n = (A374325 (n + 1) : ℚ)

end A374325

/-! ## A374325.P7157817240138909851

`A374326(n+1)^A000005(A053008(n+1))`
-/

namespace A374325.P7157817240138909851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374326 (n + 1) : ℚ) ^ (A000005 (A053008 (n + 1)).toNat : ℤ)

end

end A374325.P7157817240138909851

namespace A374325

/-- `A374326(n+1)^A000005(A053008(n+1))` -/
def P7157817240138909851.Spec : Prop :=
  ∀ n, P7157817240138909851.a n = (A374325 (n + 1) : ℚ)

end A374325

/-! ## A374325.P13870355658333174533

`A374326(n+1)^A051903(A071319(n+1))`
-/

namespace A374325.P13870355658333174533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374326 (n + 1) : ℚ) ^ (A051903 (A071319 (n + 1)).toNat : ℤ)

end

end A374325.P13870355658333174533

namespace A374325

/-- `A374326(n+1)^A051903(A071319(n+1))` -/
def P13870355658333174533.Spec : Prop :=
  ∀ n, P13870355658333174533.a n = (A374325 (n + 1) : ℚ)

end A374325

/-!
# A374326: The square root of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

The programs for A374326, the canonical program `A374326.P8962171448566803801` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374326 has offset 1).

The definition of A374326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374326.P8962171448566803801

`sqrt(A374325(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374326

/-- `sqrt(A374325(n+1))` -/
def P8962171448566803801.Spec : Prop :=
  ∀ n, P8962171448566803801.a n = (A374326 (n + 1) : ℝ)

end A374326

/-! ## A374326.P3490344481652141032

`sqrt(A051903(A369937(n+1)))`
-/

namespace A374326.P3490344481652141032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051903 (A369937 (n + 1)).toNat : ℝ)

end

end A374326.P3490344481652141032

namespace A374326

/-- `sqrt(A051903(A369937(n+1)))` -/
def P3490344481652141032.Spec : Prop :=
  ∀ n, P3490344481652141032.a n = (A374326 (n + 1) : ℝ)

end A374326

/-! ## A374326.P4928348851191412416

`A303432(row(A374325(n+1))+1)`
-/

namespace A374326.P4928348851191412416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303432 (SequenceMachineLib.triRow (A374325 (n + 1)).toNat + 1)

end

end A374326.P4928348851191412416

namespace A374326

/-- `A303432(row(A374325(n+1))+1)` -/
def P4928348851191412416.Spec : Prop :=
  ∀ n, P4928348851191412416.a n = A374326 (n + 1)

end A374326

/-! ## A374326.P13677692403688580526

`A003056(A014963(2*(n+1))*A374325(n+1))`
-/

namespace A374326.P13677692403688580526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A014963 (2 * (n + 1)) * A374325 (n + 1)).toNat

end

end A374326.P13677692403688580526

namespace A374326

/-- `A003056(A014963(2*(n+1))*A374325(n+1))` -/
def P13677692403688580526.Spec : Prop :=
  ∀ n, P13677692403688580526.a n = A374326 (n + 1)

end A374326

/-! ## A374326.P15812994970034996069

`A135034(A109768(2*(n+2))*A374325(n+1))`
-/

namespace A374326.P15812994970034996069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A109768 (2 * (n + 2)) * A374325 (n + 1)).toNat

end

end A374326.P15812994970034996069

namespace A374326

/-- `A135034(A109768(2*(n+2))*A374325(n+1))` -/
def P15812994970034996069.Spec : Prop :=
  ∀ n, P15812994970034996069.a n = A374326 (n + 1)

end A374326

/-! ## A374326.P18071005207005050578

`A005811(A374325(n+1)^A109768(n+1))`
-/

namespace A374326.P18071005207005050578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A374325 (n + 1) : ℚ) ^ (A109768 (n + 1) : ℤ))).toNat

end

end A374326.P18071005207005050578

namespace A374326

/-- `A005811(A374325(n+1)^A109768(n+1))` -/
def P18071005207005050578.Spec : Prop :=
  ∀ n, P18071005207005050578.a n = A374326 (n + 1)

end A374326

/-! ## A374326.P12544716439398459

`gcd(A232600(n), A374325(n+1))`
-/

namespace A374326.P12544716439398459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232600 n) (A374325 (n + 1))

end

end A374326.P12544716439398459

namespace A374326

/-- `gcd(A232600(n), A374325(n+1))` -/
def P12544716439398459.Spec : Prop :=
  ∀ n, (P12544716439398459.a n : ℤ) = A374326 (n + 1)

end A374326

/-! ## A374326.P17470844744828779929

`gcd(A036799(n), A374325(n+1))`
-/

namespace A374326.P17470844744828779929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036799 n) (A374325 (n + 1))

end

end A374326.P17470844744828779929

namespace A374326

/-- `gcd(A036799(n), A374325(n+1))` -/
def P17470844744828779929.Spec : Prop :=
  ∀ n, (P17470844744828779929.a n : ℤ) = A374326 (n + 1)

end A374326

/-! ## A374326.P14924019616051677071

`A101979(A374325(n+1)^A003989(n+1))`
-/

namespace A374326.P14924019616051677071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 (SequenceMachineLib.roundAway ((A374325 (n + 1) : ℚ) ^ (A003989 (n + 1) : ℤ))).toNat

end

end A374326.P14924019616051677071

namespace A374326

/-- `A101979(A374325(n+1)^A003989(n+1))` -/
def P14924019616051677071.Spec : Prop :=
  ∀ n, P14924019616051677071.a n = A374326 (n + 1)

end A374326

/-! ## A374326.P14212829259692062243

`gcd(A014334(n), A374325(n+1))`
-/

namespace A374326.P14212829259692062243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014334 n) (A374325 (n + 1))

end

end A374326.P14212829259692062243

namespace A374326

/-- `gcd(A014334(n), A374325(n+1))` -/
def P14212829259692062243.Spec : Prop :=
  ∀ n, (P14212829259692062243.a n : ℤ) = A374326 (n + 1)

end A374326

/-! ## A374326.P16458895474394353530

`A048793(A374325(n+1)^A048793(2*(n+2)))`
-/

namespace A374326.P16458895474394353530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.roundAway ((A374325 (n + 1) : ℚ) ^ (A048793 (2 * (n + 2)) : ℤ))).toNat

end

end A374326.P16458895474394353530

namespace A374326

/-- `A048793(A374325(n+1)^A048793(2*(n+2)))` -/
def P16458895474394353530.Spec : Prop :=
  ∀ n, P16458895474394353530.a n = A374326 (n + 1)

end A374326

/-! ## A374326.P10958175400471986442

`A101979(A374325(n+1)^A000005(2*n+3))`
-/

namespace A374326.P10958175400471986442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 (SequenceMachineLib.roundAway ((A374325 (n + 1) : ℚ) ^ (A000005 (2 * n + 3) : ℤ))).toNat

end

end A374326.P10958175400471986442

namespace A374326

/-- `A101979(A374325(n+1)^A000005(2*n+3))` -/
def P10958175400471986442.Spec : Prop :=
  ∀ n, P10958175400471986442.a n = A374326 (n + 1)

end A374326

/-!
# A374327: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

The programs for A374327, the canonical program `A374327.P9816410102867330981` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374327 has offset 1).

The definition of A374327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374327.P4273896465771546998

`2^A374328(n+1)`
-/

namespace A374327.P4273896465771546998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A374328 (n + 1) : ℤ)

end

end A374327.P4273896465771546998

namespace A374327

/-- `2^A374328(n+1)` -/
def P4273896465771546998.Spec : Prop :=
  ∀ n, P4273896465771546998.a n = (A374327 (n + 1) : ℚ)

end A374327

/-! ## A374327.P9816410102867330981

`A051903(A369938(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374327

/-- `A051903(A369938(n+1))` -/
def P9816410102867330981.Spec : Prop :=
  ∀ n, P9816410102867330981.a n = A374327 (n + 1)

theorem P9816410102867330981.correct : P9816410102867330981.Spec := by
  intro n
  simp only [A374327, Nat.add_sub_cancel]

end A374327

/-! ## A374327.P6386315754642879275

`filter[A051903(n+1), A000120(#)]`
-/

namespace A374327.P6386315754642879275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000120 (f1 j).toNat = 1) n)

end

end A374327.P6386315754642879275

namespace A374327

/-- `filter[A051903(n+1), A000120(#)]` -/
def P6386315754642879275.Spec : Prop :=
  ∀ n, P6386315754642879275.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P6201033011377052314

`filter[A051903(n+1), A002487(#)]`
-/

namespace A374327.P6201033011377052314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A002487 (f1 j).toNat = 1) n)

end

end A374327.P6201033011377052314

namespace A374327

/-- `filter[A051903(n+1), A002487(#)]` -/
def P6201033011377052314.Spec : Prop :=
  ∀ n, P6201033011377052314.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P1430805397662065900

`filter[A051903(n+1), A106617(#)]`
-/

namespace A374327.P1430805397662065900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106617 (f1 j).toNat = 1) n)

end

end A374327.P1430805397662065900

namespace A374327

/-- `filter[A051903(n+1), A106617(#)]` -/
def P1430805397662065900.Spec : Prop :=
  ∀ n, P1430805397662065900.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P1696813156621359784

`filter[A051903(n+1), A209229(#)]`
-/

namespace A374327.P1696813156621359784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A374327.P1696813156621359784

namespace A374327

/-- `filter[A051903(n+1), A209229(#)]` -/
def P1696813156621359784.Spec : Prop :=
  ∀ n, P1696813156621359784.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P14234202589926368123

`filter[A051903(n+2), A076141(#)]`
-/

namespace A374327.P14234202589926368123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A374327.P14234202589926368123

namespace A374327

/-- `filter[A051903(n+2), A076141(#)]` -/
def P14234202589926368123.Spec : Prop :=
  ∀ n, P14234202589926368123.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P10015542030519054077

`A368781(A369938(2*n+1-n))`
-/

namespace A374327.P10015542030519054077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (A369938 (2 * n + 1 - n)).toNat

end

end A374327.P10015542030519054077

namespace A374327

/-- `A368781(A369938(2*n+1-n))` -/
def P10015542030519054077.Spec : Prop :=
  ∀ n, P10015542030519054077.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P12228055589271044830

`A000455(A374328(n+1)+A007814(2*n+1))`
-/

namespace A374327.P12228055589271044830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000455 (A374328 (n + 1) + A007814 (2 * n + 1)).toNat

end

end A374327.P12228055589271044830

namespace A374327

/-- `A000455(A374328(n+1)+A007814(2*n+1))` -/
def P12228055589271044830.Spec : Prop :=
  ∀ n, P12228055589271044830.a n = A374327 (n + 1)

end A374327

/-! ## A374327.P7369742805494080624

`A369933(A383160(A077217(n+1))+n+1)`
-/

namespace A374327.P7369742805494080624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369933 (A383160 (A077217 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A374327.P7369742805494080624

namespace A374327

/-- `A369933(A383160(A077217(n+1))+n+1)` -/
def P7369742805494080624.Spec : Prop :=
  ∀ n, P7369742805494080624.a n = A374327 (n + 1)

end A374327

/-!
# A374328: The base-2 logarithm of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

The programs for A374328, the canonical program `A374328.P3444564986248095601` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374328 has offset 1).

The definition of A374328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374328.P17030888828048919063

`log2(A374327(n+1))`
-/

namespace A374328.P17030888828048919063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A374327 (n + 1) : ℝ)

end

end A374328.P17030888828048919063

namespace A374328

/-- `log2(A374327(n+1))` -/
def P17030888828048919063.Spec : Prop :=
  ∀ n, P17030888828048919063.a n = (A374328 (n + 1) : ℝ)

end A374328

/-! ## A374328.P18329193720050908381

`log2(A051903(A369938(n+1)))`
-/

namespace A374328.P18329193720050908381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A051903 (A369938 (n + 1)).toNat : ℝ)

end

end A374328.P18329193720050908381

namespace A374328

/-- `log2(A051903(A369938(n+1)))` -/
def P18329193720050908381.Spec : Prop :=
  ∀ n, P18329193720050908381.a n = (A374328 (n + 1) : ℝ)

end A374328

/-! ## A374328.P7839416294903318508

`log2(filter[A051903(n+1), A209229(#)])`
-/

namespace A374328.P7839416294903318508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n) : ℝ)

end

end A374328.P7839416294903318508

namespace A374328

/-- `log2(filter[A051903(n+1), A209229(#)])` -/
def P7839416294903318508.Spec : Prop :=
  ∀ n, P7839416294903318508.a n = (A374328 (n + 1) : ℝ)

end A374328

/-! ## A374328.P10544328399245234018

`A375359(filter[A051903(n+1), A209229(#)]²)`
-/

namespace A374328.P10544328399245234018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n) ^ 2).toNat

end

end A374328.P10544328399245234018

namespace A374328

/-- `A375359(filter[A051903(n+1), A209229(#)]²)` -/
def P10544328399245234018.Spec : Prop :=
  ∀ n, P10544328399245234018.a n = A374328 (n + 1)

end A374328

/-! ## A374328.P3444564986248095601

`A003056(filter[A051903(n+1), A209229(#)]-1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A374328

/-- `A003056(filter[A051903(n+1), A209229(#)]-1)` -/
def P3444564986248095601.Spec : Prop :=
  ∀ n, P3444564986248095601.a n = A374328 (n + 1)

theorem P3444564986248095601.correct : P3444564986248095601.Spec := by
  intro n
  simp only [A374328, Nat.add_sub_cancel]

end A374328

/-! ## A374328.P10029374454625123177

`A392281(A369938(n+1))`
-/

namespace A374328.P10029374454625123177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392281 (A369938 (n + 1)).toNat

end

end A374328.P10029374454625123177

namespace A374328

/-- `A392281(A369938(n+1))` -/
def P10029374454625123177.Spec : Prop :=
  ∀ n, P10029374454625123177.a n = A374328 (n + 1)

end A374328

/-!
# A374329: Number of partitions of [n] such that the number of blocks of size k is a multiple or a divisor of k for every k.

The programs for A374329, there is no canonical definition to state claims against.
-/

/-! ## A374329.P6669905668219688483

`A264749(A150581(n))`
-/

namespace A374329.P6669905668219688483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A150581 n).toNat

end

end A374329.P6669905668219688483

/-! ## A374329.P5509401820389911936

`A132015(A337797(n+1))`
-/

namespace A374329.P5509401820389911936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A337797 (n + 1)).toNat

end

end A374329.P5509401820389911936

/-! ## A374329.P11392787503920791514

`A226190(A032172(n+1))`
-/

namespace A374329.P11392787503920791514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A032172 (n + 1)).toNat

end

end A374329.P11392787503920791514

/-!
# A374331: Palindromic squarefree semiprimes such that the sum of the two prime factors is also a palindrome.

The programs for A374331, there is no canonical definition to state claims against.
-/

/-! ## A374331.P10644342045376370762

`∩[A046354(n+1), A046392(n+1)]`
-/

namespace A374331.P10644342045376370762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374331.P10644342045376370762

/-! ## A374331.P6173903850905565309

`∩[A046392(n+1), A363246(n+1)]`
-/

namespace A374331.P6173903850905565309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374331.P6173903850905565309

/-! ## A374331.P8177986168414991758

`∩[A046392(n+1), A363248(n+1)]`
-/

namespace A374331.P8177986168414991758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374331.P8177986168414991758

/-! ## A374331.P6816525003699543220

`filter[A363246(n+3), A374471(#)]`
-/

namespace A374331.P6816525003699543220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374331.P6816525003699543220

/-! ## A374331.P5638186172779775536

`filter[A363248(n+3), A374471(#)]`
-/

namespace A374331.P5638186172779775536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363248 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A374331.P5638186172779775536

/-!
# A374333: a(n) is the denominator of x(n) = (2*x(n-1) + 1/n) mod 1, with x(0) = 0.

The programs for A374333, there is no canonical definition to state claims against.
-/

/-! ## A374333.P6817303845033403058

`A003418(n)/A007953(A288805(n))`
-/

namespace A374333.P6817303845033403058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A007953 (A288805 n).toNat : ℚ)

end

end A374333.P6817303845033403058

/-! ## A374333.P17486449874452554869

`A003418(n)/A329312(A056768(n+1))`
-/

namespace A374333.P17486449874452554869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A329312 (A056768 (n + 1)).toNat : ℚ)

end

end A374333.P17486449874452554869

/-! ## A374333.P2170754880543415827

`A350285(n*A065887(n))`
-/

namespace A374333.P2170754880543415827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350285 ((n : ℤ) * A065887 n).toNat

end

end A374333.P2170754880543415827

/-! ## A374333.P16161220956982639726

`A162246(xor(n², A005706(n)))`
-/

namespace A374333.P16161220956982639726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (Int.xor (n ^ 2 : ℤ) (A005706 n)).toNat

end

end A374333.P16161220956982639726

/-!
# A374336: a(n) is the numerator of x(n) = (2*x(n-1) + c(n)) mod 1, where c(n) = 1/n if n is a power of 3 and 0 otherwise, with x(0) = 0.

The programs for A374336, there is no canonical definition to state claims against.
-/

/-! ## A374336.P9711818071091008481

`A005940(A011782(n))%A105159(n)`
-/

namespace A374336.P9711818071091008481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A011782 n).toNat) (A105159 n)

end

end A374336.P9711818071091008481

/-!
# A374337: Start with two vertices and draw a circle around each whose radius is the distance between the vertices. The sequence gives the number of regions constructed after n iterations of drawing circles with this same radius around every new vertex created from all circles' intersections.

The programs for A374337, there is no canonical definition to state claims against.
-/

/-! ## A374337.P11059627384206432644

`A374339(n+1)-A374338(n+1)+1`
-/

namespace A374337.P11059627384206432644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374339 (n + 1) - A374338 (n + 1) + 1

end

end A374337.P11059627384206432644

/-! ## A374337.P6235791222051766067

`A374339(n+1)+1-A374338(n+1)`
-/

namespace A374337.P6235791222051766067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374339 (n + 1) + 1 - A374338 (n + 1)

end

end A374337.P6235791222051766067

/-! ## A374337.P5263955555148103018

`A374339(n+1)+1-∑[A264788(n+2)]`
-/

namespace A374337.P5263955555148103018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374339 (n + 1) + 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374337.P5263955555148103018

/-! ## A374337.P11357766506233715543

`A374339(n+1)-A023443(∑[∑[2*(n+2)%3]])`
-/

namespace A374337.P11357766506233715543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374339 (n + 1) - A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374337.P11357766506233715543

/-! ## A374337.P13392848481781616100

`A374339(n+1)-A023443(2*(comp[4*n]+∑[n]+1))`
-/

namespace A374337.P13392848481781616100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374339 (n + 1) - A023443 (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A374337.P13392848481781616100

/-!
# A374338: Start with two vertices and draw a circle around each whose radius is the distance between the vertices. The sequence gives the number of vertices constructed after n iterations of drawing circles with this same radius around every new vertex created from all circles' intersections. See the Comments.

The programs for A374338, there is no canonical definition to state claims against.
-/

/-! ## A374338.P10858655328093632738

`A374339(n+1)-A374337(n+1)+1`
-/

namespace A374338.P10858655328093632738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374339 (n + 1) - A374337 (n + 1) + 1

end

end A374338.P10858655328093632738

/-! ## A374338.P7558829463984585661

`∑[Δ[n²]+gcd(3, n)]`
-/

namespace A374338.P7558829463984585661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P7558829463984585661

/-! ## A374338.P15567023519665234885

`∑[∑[2*(2+n)%3]]`
-/

namespace A374338.P15567023519665234885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((2 + n) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P15567023519665234885

/-! ## A374338.P5830648459794621496

`∑[a(n-3)+6]` with `a(0)=4, a(1)=4, a(2)=6`
-/

namespace A374338.P5830648459794621496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 6] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P5830648459794621496

/-! ## A374338.P16617803591187898978

`∑[∑[floor(a(n-3))]]` with `a(0)=4, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A374338.P16617803591187898978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P16617803591187898978

/-! ## A374338.P2064658614431052122

`∑[∑[lcm(2, a(n-3))]]` with `a(0)=4, a(1)=0, a(2)=2`
-/

namespace A374338.P2064658614431052122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 2] fun n f2 =>
  Nat.lcm 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P2064658614431052122

/-! ## A374338.P3680586179588644399

`2*(comp[4*n]+∑[n]+1)`
-/

namespace A374338.P3680586179588644399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A374338.P3680586179588644399

/-! ## A374338.P8616014943563888968

`∑[∑[4-a(a(n-3))]]` with `a(0)=4, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A374338.P8616014943563888968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 2, 4] fun n f2 =>
  4 - f2 (f2 (n - 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P8616014943563888968

/-! ## A374338.P2309674473957050398

`∑[gcd(2*n+3, ∑[n])+2*n+1]`
-/

namespace A374338.P2309674473957050398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 3) (∑ j ∈ Finset.range (n + 1), f2 j) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P2309674473957050398

/-! ## A374338.P7540273339406725689

`∑[A264788(n+2)]`
-/

namespace A374338.P7540273339406725689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374338.P7540273339406725689

/-!
# A374339: Start with two vertices and draw a circle around each whose radius is the distance between the vertices. The sequence gives the number of curved edges constructed after n iterations of drawing circles with this same radius around every new vertex created from all circles' intersections.

The programs for A374339, there is no canonical definition to state claims against.
-/

/-! ## A374339.P6887676548132590711

`A374337(n+1)+A374338(n+1)-1`
-/

namespace A374339.P6887676548132590711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374337 (n + 1) + A374338 (n + 1) - 1

end

end A374339.P6887676548132590711

/-! ## A374339.P9448057862150430434

`A374337(n+1)+A374338(n+1)-1`
-/

namespace A374339.P9448057862150430434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374337 (n + 1) + (A374338 (n + 1) - 1)

end

end A374339.P9448057862150430434

/-! ## A374339.P16867112497813292004

`A374337(n+1)+∑[A264788(n+2)]-1`
-/

namespace A374339.P16867112497813292004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374337 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A374339.P16867112497813292004

/-! ## A374339.P5729634091340267590

`A374337(n+1)+A023443(∑[∑[2*(n+2)%3]])`
-/

namespace A374339.P5729634091340267590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374337 (n + 1) + A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374339.P5729634091340267590

/-! ## A374339.P12189753887822293776

`A374337(n+1)+A023443(2*(comp[4*n]+∑[n]+1))`
-/

namespace A374339.P12189753887822293776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374337 (n + 1) + A023443 (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A374339.P12189753887822293776

/-! ## A374339.P8402112567028043330

`A374337(n+1)-A024000(A374338(n+1))`
-/

namespace A374339.P8402112567028043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374337 (n + 1) - A024000 (A374338 (n + 1)).toNat

end

end A374339.P8402112567028043330

/-!
# A374341: a(n) is the maximal determinant of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374341, there is no canonical definition to state claims against.
-/

/-! ## A374341.P7011088088326233099

`A151552(A254602(n))-A195160(n)`
-/

namespace A374341.P7011088088326233099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A254602 n).toNat - A195160 n

end

end A374341.P7011088088326233099

/-!
# A374342: a(n) is the maximal absolute value of the determinant of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374342, there is no canonical definition to state claims against.
-/

/-! ## A374342.P7264436353238810324

`or(1, A094277(n!))`
-/

namespace A374342.P7264436353238810324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094277 (Nat.factorial n))

end

end A374342.P7264436353238810324

/-!
# A374344: a(n) is the number of ways n can be written as a sum of a practical number and two heptagonal numbers.

The programs for A374344, there is no canonical definition to state claims against.
-/

/-! ## A374344.P2871860041194125607

`A001221(A276085(n+1)+A008367(n+1))`
-/

namespace A374344.P2871860041194125607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276085 (n + 1) + A008367 (n + 1)).toNat

end

end A374344.P2871860041194125607

/-! ## A374344.P17353933953382320314

`A078134(n+1)+A000002(A209981(n))`
-/

namespace A374344.P17353933953382320314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1) + A000002 (A209981 n).toNat

end

end A374344.P17353933953382320314

/-! ## A374344.P8310521818457114344

`A333769(n)+A051628(A022302(n+4))`
-/

namespace A374344.P8310521818457114344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 n + A051628 (A022302 (n + 4)).toNat

end

end A374344.P8310521818457114344

/-! ## A374344.P16276649217080432027

`A001511(lcm(A088569(n+1), A294535(n)))`
-/

namespace A374344.P16276649217080432027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A088569 (n + 1)) (A294535 n))

end

end A374344.P16276649217080432027

/-! ## A374344.P2582141111782391416

`A331048(n+1)+A035263(A357997(n+11))`
-/

namespace A374344.P2582141111782391416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331048 (n + 1) + A035263 (A357997 (n + 11)).toNat

end

end A374344.P2582141111782391416

/-!
# A374345: a(n) is the maximal permanent of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374345, there is no canonical definition to state claims against.
-/

/-! ## A374345.P15101733031878870175

`A171594(A277247(n))`
-/

namespace A374345.P15101733031878870175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171594 (A277247 n).toNat

end

end A374345.P15101733031878870175

/-!
# A374346: E.g.f. A(x) satisfies A(x) = A(x^2)^(1/2) * exp(2*x) with A(0)=1.

The programs for A374346, there is no canonical definition to state claims against.
-/

/-! ## A374346.P6208527092706603766

`A246277(A193778(n)+A000079(n))`
-/

namespace A374346.P6208527092706603766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A193778 n + A000079 n).toNat

end

end A374346.P6208527092706603766

/-! ## A374346.P11117107545417708670

`A011782(n)*A020986(A029766(n))`
-/

namespace A374346.P11117107545417708670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A020986 (A029766 n).toNat

end

end A374346.P11117107545417708670

/-! ## A374346.P452275527844432015

`A011782(n)*A020986(n!*A000700(2*(n+1)))`
-/

namespace A374346.P452275527844432015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A020986 ((Nat.factorial n : ℤ) * A000700 (2 * (n + 1))).toNat

end

end A374346.P452275527844432015

/-!
# A374348: a(n) = k where wt(k) = n and k + wt(k) = a power of two, where wt(n) = A000120(n) = binary weight of n.

The programs for A374348, the canonical program `A374348.P7186734061745376650` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374348 has offset 1).

The definition of A374348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374348.P7186734061745376650

`2*A129195(n)-(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A374348

/-- `2*A129195(n)-(n+1)` -/
def P7186734061745376650.Spec : Prop :=
  ∀ n, P7186734061745376650.a n = A374348 (n + 1)

theorem P7186734061745376650.correct : P7186734061745376650.Spec := by
  intro n
  simp only [A374348, Nat.add_sub_cancel]

end A374348

/-! ## A374348.P12740235107416580443

`2^A230300(n+1)-(n+1)`
-/

namespace A374348.P12740235107416580443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A230300 (n + 1) : ℤ) - (n + 1 : ℚ)

end

end A374348.P12740235107416580443

namespace A374348

/-- `2^A230300(n+1)-(n+1)` -/
def P12740235107416580443.Spec : Prop :=
  ∀ n, P12740235107416580443.a n = (A374348 (n + 1) : ℚ)

end A374348

/-! ## A374348.P123764338503151035

`2^(n+1+A000120(n))-(n+1)`
-/

namespace A374348.P123764338503151035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) + A000120 n : ℤ) - (n + 1 : ℚ)

end

end A374348.P123764338503151035

namespace A374348

/-- `2^(n+1+A000120(n))-(n+1)` -/
def P123764338503151035.Spec : Prop :=
  ∀ n, P123764338503151035.a n = (A374348 (n + 1) : ℚ)

end A374348

/-! ## A374348.P5616701493252306527

`A126646(A092391(n))-n`
-/

namespace A374348.P5616701493252306527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A092391 n).toNat - (n : ℤ)

end

end A374348.P5616701493252306527

namespace A374348

/-- `A126646(A092391(n))-n` -/
def P5616701493252306527.Spec : Prop :=
  ∀ n, P5616701493252306527.a n = A374348 (n + 1)

end A374348

/-! ## A374348.P2388191660927454350

`A000225(A230300(n+1))-n`
-/

namespace A374348.P2388191660927454350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A230300 (n + 1)).toNat - (n : ℤ)

end

end A374348.P2388191660927454350

namespace A374348

/-- `A000225(A230300(n+1))-n` -/
def P2388191660927454350.Spec : Prop :=
  ∀ n, P2388191660927454350.a n = A374348 (n + 1)

end A374348

/-! ## A374348.P287623756212289021

`A000225(A000120(n)+n+1)-n`
-/

namespace A374348.P287623756212289021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000120 n + (n + 1 : ℤ)).toNat - (n : ℤ)

end

end A374348.P287623756212289021

namespace A374348

/-- `A000225(A000120(n)+n+1)-n` -/
def P287623756212289021.Spec : Prop :=
  ∀ n, P287623756212289021.a n = A374348 (n + 1)

end A374348

/-! ## A374348.P8977375497210064639

`A000918(n+1)*A001316(n)-A064405(n)`
-/

namespace A374348.P8977375497210064639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) * A001316 n - A064405 n

end

end A374348.P8977375497210064639

namespace A374348

/-- `A000918(n+1)*A001316(n)-A064405(n)` -/
def P8977375497210064639.Spec : Prop :=
  ∀ n, P8977375497210064639.a n = A374348 (n + 1)

end A374348

/-!
# A374352: a(n) = [n>1] * a(n-1) + Sum_{d|n} phi(lcm(d,n/d)) where [] is an Iverson bracket.

The programs for A374352, the canonical program `A374352.P3715974137800976504` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374352 has offset 1).

The definition of A374352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+∑{d}[n+1, A000010(lcm(#, (n+1)/#))]` (program `A374352.P3715974137800976504`, by `A374352.P3715974137800976504.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374352.P3715974137800976504

`a(n-1)+∑{d}[n+1, A000010(lcm(#, (n+1)/#))]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374352

/-- `a(n-1)+∑{d}[n+1, A000010(lcm(#, (n+1)/#))]` -/
def P3715974137800976504.Spec : Prop :=
  ∀ n, P3715974137800976504.a n = A374352 (n + 1)

theorem P3715974137800976504.correct : P3715974137800976504.Spec := by
  intro n
  simp only [A374352, Nat.add_sub_cancel]

end A374352

/-! ## A374352.P4226552267909290266

`∑[A061884(1+n)]`
-/

namespace A374352.P4226552267909290266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061884 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374352.P4226552267909290266

namespace A374352

/-- `∑[A061884(1+n)]` -/
def P4226552267909290266.Spec : Prop :=
  ∀ n, P4226552267909290266.a n = A374352 (n + 1)

end A374352

/-! ## A374352.P4684960644822532392

`∑[∑{d}[n+1, A000010(lcm(#, (n+1)/#))]]`
-/

namespace A374352.P4684960644822532392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (Int.lcm (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374352.P4684960644822532392

namespace A374352

/-- `∑[∑{d}[n+1, A000010(lcm(#, (n+1)/#))]]` -/
def P4684960644822532392.Spec : Prop :=
  ∀ n, P4684960644822532392.a n = A374352 (n + 1)

end A374352

/-! ## A374352.P9349390686611197730

`∑[A000010(n+1)/(n+1)*A057670(n+1)]`
-/

namespace A374352.P9349390686611197730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (n + 1 : ℚ) * (A057670 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374352.P9349390686611197730

namespace A374352

/-- `∑[A000010(n+1)/(n+1)*A057670(n+1)]` -/
def P9349390686611197730.Spec : Prop :=
  ∀ n, P9349390686611197730.a n = (A374352 (n + 1) : ℚ)

end A374352

/-! ## A374352.P10602110547352948598

`A325389(A049792(n+1))`
-/

namespace A374352.P10602110547352948598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A049792 (n + 1)).toNat

end

end A374352.P10602110547352948598

namespace A374352

/-- `A325389(A049792(n+1))` -/
def P10602110547352948598.Spec : Prop :=
  ∀ n, P10602110547352948598.a n = A374352 (n + 1)

end A374352

/-!
# A374354: Irregular table T(n, k), n >= 0, 0 <= k < A277561(n), read by rows; the n-th row lists the fibbinary numbers f <= n such that n - f is also a fibbinary number whose binary expansion has no common 1's with that of f (where fibbinary numbers correspond to A003714).

The programs for A374354, there is no canonical definition to state claims against.
-/

/-! ## A374354.P4922728027164206056

`A341677(A135493(n+1)-n)`
-/

namespace A374354.P4922728027164206056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341677 (A135493 (n + 1) - (n : ℤ)).toNat

end

end A374354.P4922728027164206056

/-! ## A374354.P1137585767360429790

`xor(A112765(A343756(n)), A343757(n))`
-/

namespace A374354.P1137585767360429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112765 (A343756 n).toNat) (A343757 n)

end

end A374354.P1137585767360429790

/-! ## A374354.P15721519046824687871

`A270618(A005195(n))%A048675(n+2)`
-/

namespace A374354.P15721519046824687871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270618 (A005195 n).toNat) (A048675 (n + 2))

end

end A374354.P15721519046824687871

/-! ## A374354.P684555304509128757

`and(A289971(n)+1, A065033(n))`
-/

namespace A374354.P684555304509128757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289971 n + 1) (A065033 n)

end

end A374354.P684555304509128757

/-! ## A374354.P14533460958534384029

`and(∑{e}[A000110(n), #], A046044(2*n+1))`
-/

namespace A374354.P14533460958534384029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A046044 (2 * n + 1))

end

end A374354.P14533460958534384029

/-!
# A374355: a(n) is the least fibbinary number f <= n such that n - f is also a fibbinary number whose binary expansion has no common 1's with that of f (where fibbinary numbers correspond to A003714).

The programs for A374355, the canonical program `A374355.P13826492300412117756` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374355 has offset 0).

The definition of A374355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374355.P14818315037645328696

`n-A374356(n)`
-/

namespace A374355.P14818315037645328696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374356 n

end

end A374355.P14818315037645328696

namespace A374355

/-- `n-A374356(n)` -/
def P14818315037645328696.Spec : Prop :=
  ∀ n, P14818315037645328696.a n = A374355 n

theorem P14818315037645328696.correct : P14818315037645328696.Spec := by
  intro n
  simp only [A374355, Nat.add_sub_cancel, A374355.P14818315037645328696.a, A374355.P13826492300412117756.a, A374356, A374356.P5036985431895007089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374355

/-! ## A374355.P13826492300412117756

`and(n, floor((n-a(n-1))/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374355

/-- `and(n, floor((n-a(n-1))/2))` -/
def P13826492300412117756.Spec : Prop :=
  ∀ n, P13826492300412117756.a n = A374355 n

theorem P13826492300412117756.correct : P13826492300412117756.Spec := by
  intro n
  simp only [A374355]

end A374355

/-! ## A374355.P12480715129252958393

`and(n-a(n-1), 2*n)/2` with `a(0)=0`
-/

namespace A374355.P12480715129252958393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.land (SequenceMachineLib.roundAway ((n : ℚ) - a (n - 1))) (2 * n : ℤ) : ℚ) / 2

end

end A374355.P12480715129252958393

namespace A374355

/-- `and(n-a(n-1), 2*n)/2` -/
def P12480715129252958393.Spec : Prop :=
  ∀ n, P12480715129252958393.a n = (A374355 n : ℚ)

end A374355

/-! ## A374355.P12064419186018137410

`n-and(n, A377355(n))`
-/

namespace A374355.P12064419186018137410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A377355 n)

end

end A374355.P12064419186018137410

namespace A374355

/-- `n-and(n, A377355(n))` -/
def P12064419186018137410.Spec : Prop :=
  ∀ n, P12064419186018137410.a n = A374355 n

end A374355

/-! ## A374355.P9068949132297291347

`A374356(A048735(n))`
-/

namespace A374355.P9068949132297291347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 (A048735 n).toNat

end

end A374355.P9068949132297291347

namespace A374355

/-- `A374356(A048735(n))` -/
def P9068949132297291347.Spec : Prop :=
  ∀ n, P9068949132297291347.a n = A374355 n

end A374355

/-! ## A374355.P1917060041673715656

`n-A361645(A006068(n))`
-/

namespace A374355.P1917060041673715656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A361645 (A006068 n).toNat

end

end A374355.P1917060041673715656

namespace A374355

/-- `n-A361645(A006068(n))` -/
def P1917060041673715656.Spec : Prop :=
  ∀ n, P1917060041673715656.a n = A374355 n

end A374355

/-! ## A374355.P7476741208713792053

`n-A361645(A233279(n))`
-/

namespace A374355.P7476741208713792053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A361645 (A233279 n).toNat

end

end A374355.P7476741208713792053

namespace A374355

/-- `n-A361645(A233279(n))` -/
def P7476741208713792053.Spec : Prop :=
  ∀ n, P7476741208713792053.a n = A374355 n

end A374355

/-! ## A374355.P5288535970473336801

`n-A343228(A371276(n))`
-/

namespace A374355.P5288535970473336801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343228 (A371276 n).toNat

end

end A374355.P5288535970473336801

namespace A374355

/-- `n-A343228(A371276(n))` -/
def P5288535970473336801.Spec : Prop :=
  ∀ n, P5288535970473336801.a n = A374355 n

end A374355

/-! ## A374355.P11030427389589060668

`n-A289814(A043589(n+1))`
-/

namespace A374355.P11030427389589060668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A289814 (A043589 (n + 1)).toNat

end

end A374355.P11030427389589060668

namespace A374355

/-- `n-A289814(A043589(n+1))` -/
def P11030427389589060668.Spec : Prop :=
  ∀ n, P11030427389589060668.a n = A374355 n

end A374355

/-!
# A374356: a(n) is the greatest fibbinary number f <= n such that n - f is also a fibbinary number whose binary expansion has no common 1's with that of f (where fibbinary numbers correspond to A003714).

The programs for A374356, the canonical program `A374356.P5036985431895007089` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374356 has offset 0).

The definition of A374356 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374356.P5036985431895007089

`n-A374355(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A374356

/-- `n-A374355(n)` -/
def P5036985431895007089.Spec : Prop :=
  ∀ n, P5036985431895007089.a n = A374356 n

theorem P5036985431895007089.correct : P5036985431895007089.Spec := by
  intro n
  simp only [A374356]

end A374356

/-! ## A374356.P15421388744419573589

`and(n, xor(n, a(floor(n/2))))` with `a(0)=0`
-/

namespace A374356.P15421388744419573589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land n (Nat.xor n (a ⌊(n : ℚ) / 2⌋.toNat))

end

end A374356.P15421388744419573589

namespace A374356

/-- `and(n, xor(n, a(floor(n/2))))` -/
def P15421388744419573589.Spec : Prop :=
  ∀ n, (P15421388744419573589.a n : ℤ) = A374356 n

end A374356

/-! ## A374356.P7656283698782849439

`n-a(and(n, 2*n)/2)` with `a(0)=0`
-/

namespace A374356.P7656283698782849439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)).toNat

end

end A374356.P7656283698782849439

namespace A374356

/-- `n-a(and(n, 2*n)/2)` -/
def P7656283698782849439.Spec : Prop :=
  ∀ n, P7656283698782849439.a n = A374356 n

end A374356

/-! ## A374356.P13508540174975463949

`n-and(n, floor(a(n-1)/2))` with `a(0)=0`
-/

namespace A374356.P13508540174975463949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.land (n : ℤ) ⌊(a (n - 1) : ℚ) / 2⌋

end

end A374356.P13508540174975463949

namespace A374356

/-- `n-and(n, floor(a(n-1)/2))` -/
def P13508540174975463949.Spec : Prop :=
  ∀ n, P13508540174975463949.a n = A374356 n

end A374356

/-! ## A374356.P2967513813746317687

`and(n, A377355(n))`
-/

namespace A374356.P2967513813746317687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A377355 n)

end

end A374356.P2967513813746317687

namespace A374356

/-- `and(n, A377355(n))` -/
def P2967513813746317687.Spec : Prop :=
  ∀ n, P2967513813746317687.a n = A374356 n

end A374356

/-! ## A374356.P18409121531563832326

`A361645(A006068(n))`
-/

namespace A374356.P18409121531563832326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361645 (A006068 n).toNat

end

end A374356.P18409121531563832326

namespace A374356

/-- `A361645(A006068(n))` -/
def P18409121531563832326.Spec : Prop :=
  ∀ n, P18409121531563832326.a n = A374356 n

end A374356

/-! ## A374356.P10432772328480150024

`A361645(A233279(n))`
-/

namespace A374356.P10432772328480150024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361645 (A233279 n).toNat

end

end A374356.P10432772328480150024

namespace A374356

/-- `A361645(A233279(n))` -/
def P10432772328480150024.Spec : Prop :=
  ∀ n, P10432772328480150024.a n = A374356 n

end A374356

/-! ## A374356.P8493461922302855412

`A377355(A377355(n)+A374355(n))`
-/

namespace A374356.P8493461922302855412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377355 (A377355 n + A374355 n).toNat

end

end A374356.P8493461922302855412

namespace A374356

/-- `A377355(A377355(n)+A374355(n))` -/
def P8493461922302855412.Spec : Prop :=
  ∀ n, P8493461922302855412.a n = A374356 n

end A374356

/-! ## A374356.P8182739213536292348

`xor(2*n, A377355(2*n))`
-/

namespace A374356.P8182739213536292348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A377355 (2 * n))

end

end A374356.P8182739213536292348

namespace A374356

/-- `xor(2*n, A377355(2*n))` -/
def P8182739213536292348.Spec : Prop :=
  ∀ n, P8182739213536292348.a n = A374356 n

end A374356

/-! ## A374356.P10718118311041805548

`A343228(A371276(n))`
-/

namespace A374356.P10718118311041805548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A371276 n).toNat

end

end A374356.P10718118311041805548

namespace A374356

/-- `A343228(A371276(n))` -/
def P10718118311041805548.Spec : Prop :=
  ∀ n, P10718118311041805548.a n = A374356 n

end A374356

/-! ## A374356.P3858439571465496035

`A289814(A043589(n+1))`
-/

namespace A374356.P3858439571465496035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A043589 (n + 1)).toNat

end

end A374356.P3858439571465496035

namespace A374356

/-- `A289814(A043589(n+1))` -/
def P3858439571465496035.Spec : Prop :=
  ∀ n, P3858439571465496035.a n = A374356 n

end A374356

/-!
# A374359: a(1) = 2, a(n) = 5 for n > 1.

The programs for A374359, the canonical program `A374359.P3813628406924281627` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374359 has offset 1).

The definition of A374359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(1)` (program `A374359.P3813628406924281627`, by `A374359.P3813628406924281627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374359.P3813628406924281627

`a(1)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374359

/-- `a(1)` -/
def P3813628406924281627.Spec : Prop :=
  ∀ n, (P3813628406924281627.a n : ℤ) = A374359 (n + 1)

theorem P3813628406924281627.correct : P3813628406924281627.Spec := by
  intro n
  simp only [A374359, Nat.add_sub_cancel]

end A374359

/-!
# A374361: Irregular table T(n, k), n >= 0, 0 <= k < A120880(n), read by rows; the n-th row contains the terms t of A005836 such that n - t also belongs to A005836.

The programs for A374361, there is no canonical definition to state claims against.
-/

/-! ## A374361.P7572748559886968892

`A071943(n)%A011776(A340385(3*n+5))`
-/

namespace A374361.P7572748559886968892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071943 n) (A011776 (A340385 (3 * n + 5)).toNat)

end

end A374361.P7572748559886968892

/-! ## A374361.P12238203864808627107

`and(A088512(A100570(n+1)), A225102(2*n+5))`
-/

namespace A374361.P12238203864808627107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088512 (A100570 (n + 1)).toNat) (A225102 (2 * n + 5))

end

end A374361.P12238203864808627107

/-!
# A374362: a(n) is the least term t of A005836 such that n - t also belongs to A005836.

The programs for A374362, the canonical program `A374362.P13095679311797135054` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374362 has offset 0).

The definition of A374362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374362.P13095679311797135054

`A005836(1+A289814(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A374362

/-- `A005836(1+A289814(n))` -/
def P13095679311797135054.Spec : Prop :=
  ∀ n, P13095679311797135054.a n = A374362 n

theorem P13095679311797135054.correct : P13095679311797135054.Spec := by
  intro n
  simp only [A374362]

end A374362

/-! ## A374362.P15798276218174989766

`n-A374363(n)`
-/

namespace A374362.P15798276218174989766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374363 n

end

end A374362.P15798276218174989766

namespace A374362

/-- `n-A374363(n)` -/
def P15798276218174989766.Spec : Prop :=
  ∀ n, P15798276218174989766.a n = A374362 n

theorem P15798276218174989766.correct : P15798276218174989766.Spec := by
  intro n
  simp only [A374362, Nat.add_sub_cancel, A374362.P15798276218174989766.a, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A374363, A374363.P4006744609650702107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374362

/-! ## A374362.P6563313550872083414

`A300222(n)/2`
-/

namespace A374362.P6563313550872083414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300222 n : ℚ) / 2

end

end A374362.P6563313550872083414

namespace A374362

/-- `A300222(n)/2` -/
def P6563313550872083414.Spec : Prop :=
  ∀ n, P6563313550872083414.a n = (A374362 n : ℚ)

theorem P6563313550872083414.correct : P6563313550872083414.Spec := by
  intro n
  simp only [A374362, Nat.add_sub_cancel, A374362.P6563313550872083414.a, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374362

/-! ## A374362.P7607938342413669579

`(n-A244042(n))/2`
-/

namespace A374362.P7607938342413669579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A244042 n : ℚ) / 2

end

end A374362.P7607938342413669579

namespace A374362

/-- `(n-A244042(n))/2` -/
def P7607938342413669579.Spec : Prop :=
  ∀ n, P7607938342413669579.a n = (A374362 n : ℚ)

theorem P7607938342413669579.correct : P7607938342413669579.Spec := by
  intro n
  simp only [A374362, Nat.add_sub_cancel, A374362.P7607938342413669579.a, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A244042, A244042.P9314766524248185345.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374362

/-! ## A374362.P12613056798262673382

`(n-A117966(n))/3`
-/

namespace A374362.P12613056798262673382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A117966 n : ℚ) / 3

end

end A374362.P12613056798262673382

namespace A374362

/-- `(n-A117966(n))/3` -/
def P12613056798262673382.Spec : Prop :=
  ∀ n, P12613056798262673382.a n = (A374362 n : ℚ)

theorem P12613056798262673382.correct : P12613056798262673382.Spec := by
  intro n
  simp only [A374362, Nat.add_sub_cancel, A374362.P12613056798262673382.a, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A117966, A117966.P11599160912576478646.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374362

/-! ## A374362.P1303884399686305476

`∑{d}[n, A300822(#)]/2`
-/

namespace A374362.P1303884399686305476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A300822 d : ℤ) : ℚ) / 2

end

end A374362.P1303884399686305476

namespace A374362

/-- `∑{d}[n, A300822(#)]/2` -/
def P1303884399686305476.Spec : Prop :=
  ∀ n, P1303884399686305476.a n = (A374362 n : ℚ)

end A374362

/-! ## A374362.P8281014424142510855

`(n-(A004488(n)-n))/3`
-/

namespace A374362.P8281014424142510855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (A004488 n - (n : ℤ)) : ℚ) / 3

end

end A374362.P8281014424142510855

namespace A374362

/-- `(n-(A004488(n)-n))/3` -/
def P8281014424142510855.Spec : Prop :=
  ∀ n, P8281014424142510855.a n = (A374362 n : ℚ)

end A374362

/-! ## A374362.P4959851441320945470

`A001281(A300222(n))`
-/

namespace A374362.P4959851441320945470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A300222 n).toNat

end

end A374362.P4959851441320945470

namespace A374362

/-- `A001281(A300222(n))` -/
def P4959851441320945470.Spec : Prop :=
  ∀ n, P4959851441320945470.a n = A374362 n

end A374362

/-! ## A374362.P1586227494437519402

`A004526(n-A244042(n))`
-/

namespace A374362.P1586227494437519402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A244042 n).toNat

end

end A374362.P1586227494437519402

namespace A374362

/-- `A004526(n-A244042(n))` -/
def P1586227494437519402.Spec : Prop :=
  ∀ n, P1586227494437519402.a n = A374362 n

end A374362

/-! ## A374362.P12438303831083318143

`A244042(n)-A117966(n)`
-/

namespace A374362.P12438303831083318143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n - A117966 n

end

end A374362.P12438303831083318143

namespace A374362

/-- `A244042(n)-A117966(n)` -/
def P12438303831083318143.Spec : Prop :=
  ∀ n, P12438303831083318143.a n = A374362 n

theorem P12438303831083318143.correct : P12438303831083318143.Spec := by
  intro n
  simp only [A374362, Nat.add_sub_cancel, A374362.P12438303831083318143.a, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A117966, A117966.P11599160912576478646.a, A244042, A244042.P9314766524248185345.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374362

/-! ## A374362.P14182248590377075875

`A343766(n-A244042(n))`
-/

namespace A374362.P14182248590377075875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 ((n : ℤ) - A244042 n).toNat

end

end A374362.P14182248590377075875

namespace A374362

/-- `A343766(n-A244042(n))` -/
def P14182248590377075875.Spec : Prop :=
  ∀ n, P14182248590377075875.a n = A374362 n

end A374362

/-! ## A374362.P14448967561131855678

`A330740(A300222(2*n-n))`
-/

namespace A374362.P14448967561131855678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (A300222 (2 * n - n)).toNat

end

end A374362.P14448967561131855678

namespace A374362

/-- `A330740(A300222(2*n-n))` -/
def P14448967561131855678.Spec : Prop :=
  ∀ n, P14448967561131855678.a n = A374362 n

end A374362

/-! ## A374362.P1398208404845031662

`n-(A300222(n)+A117966(n))`
-/

namespace A374362.P1398208404845031662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A300222 n + A117966 n)

end

end A374362.P1398208404845031662

namespace A374362

/-- `n-(A300222(n)+A117966(n))` -/
def P1398208404845031662.Spec : Prop :=
  ∀ n, P1398208404845031662.a n = A374362 n

theorem P1398208404845031662.correct : P1398208404845031662.Spec := by
  intro n
  simp only [A374362, Nat.add_sub_cancel, A374362.P1398208404845031662.a, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A117966, A117966.P11599160912576478646.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374362

/-! ## A374362.P14754952128519416853

`A343766(A341055(n-A117966(n)))`
-/

namespace A374362.P14754952128519416853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 (A341055 ((n : ℤ) - A117966 n).toNat).toNat

end

end A374362.P14754952128519416853

namespace A374362

/-- `A343766(A341055(n-A117966(n)))` -/
def P14754952128519416853.Spec : Prop :=
  ∀ n, P14754952128519416853.a n = A374362 n

end A374362

/-! ## A374362.P6201632623166497018

`A244042(A004488(n))`
-/

namespace A374362.P6201632623166497018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A004488 n).toNat

end

end A374362.P6201632623166497018

namespace A374362

/-- `A244042(A004488(n))` -/
def P6201632623166497018.Spec : Prop :=
  ∀ n, P6201632623166497018.a n = A374362 n

end A374362

/-! ## A374362.P14835149285335643719

`A060373(A338242(n))`
-/

namespace A374362.P14835149285335643719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (A338242 n).toNat

end

end A374362.P14835149285335643719

namespace A374362

/-- `A060373(A338242(n))` -/
def P14835149285335643719.Spec : Prop :=
  ∀ n, P14835149285335643719.a n = A374362 n

end A374362

/-! ## A374362.P9131516997640767128

`A244042(A117966(n)+n)`
-/

namespace A374362.P9131516997640767128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A117966 n + (n : ℤ)).toNat

end

end A374362.P9131516997640767128

namespace A374362

/-- `A244042(A117966(n)+n)` -/
def P9131516997640767128.Spec : Prop :=
  ∀ n, P9131516997640767128.a n = A374362 n

end A374362

/-! ## A374362.P17382309462160608656

`A060372(n)-A338242(n)`
-/

namespace A374362.P17382309462160608656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - A338242 n

end

end A374362.P17382309462160608656

namespace A374362

/-- `A060372(n)-A338242(n)` -/
def P17382309462160608656.Spec : Prop :=
  ∀ n, P17382309462160608656.a n = A374362 n

end A374362

/-! ## A374362.P2882280029520445951

`A380350(A380349(A300222(A380349(A380349(n)))))`
-/

namespace A374362.P2882280029520445951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A380349 (A300222 (A380349 (A380349 n).toNat).toNat).toNat).toNat

end

end A374362.P2882280029520445951

namespace A374362

/-- `A380350(A380349(A300222(A380349(A380349(n)))))` -/
def P2882280029520445951.Spec : Prop :=
  ∀ n, P2882280029520445951.a n = A374362 n

end A374362

/-! ## A374362.P12260444758029817534

`A380352(A380351(A300222(A380350(A380350(n)))))`
-/

namespace A374362.P12260444758029817534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380351 (A300222 (A380350 (A380350 n).toNat).toNat).toNat).toNat

end

end A374362.P12260444758029817534

namespace A374362

/-- `A380352(A380351(A300222(A380350(A380350(n)))))` -/
def P12260444758029817534.Spec : Prop :=
  ∀ n, P12260444758029817534.a n = A374362 n

end A374362

/-!
# A374363: a(n) is the greatest term t <= n of A005836 such that n - t also belongs to A005836.

The programs for A374363, the canonical program `A374363.P4006744609650702107` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374363 has offset 0).

The definition of A374363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374362, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374363.P4006744609650702107

`n-A374362(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374363

/-- `n-A374362(n)` -/
def P4006744609650702107.Spec : Prop :=
  ∀ n, P4006744609650702107.a n = A374363 n

theorem P4006744609650702107.correct : P4006744609650702107.Spec := by
  intro n
  simp only [A374363]

end A374363

/-! ## A374363.P16839541496916711290

`A005836(1+A289831(n))`
-/

namespace A374363.P16839541496916711290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (1 + A289831 n).toNat

end

end A374363.P16839541496916711290

namespace A374363

/-- `A005836(1+A289831(n))` -/
def P16839541496916711290.Spec : Prop :=
  ∀ n, P16839541496916711290.a n = A374363 n

end A374363

/-! ## A374363.P10464020167449801037

`(A244042(n)+n)/2`
-/

namespace A374363.P10464020167449801037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244042 n + (n : ℤ) : ℚ) / 2

end

end A374363.P10464020167449801037

namespace A374363

/-- `(A244042(n)+n)/2` -/
def P10464020167449801037.Spec : Prop :=
  ∀ n, P10464020167449801037.a n = (A374363 n : ℚ)

theorem P10464020167449801037.correct : P10464020167449801037.Spec := by
  intro n
  simp only [A374363, Nat.add_sub_cancel, A374363.P10464020167449801037.a, A374363.P4006744609650702107.a, A244042, A244042.P9314766524248185345.a, A374362, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374363

/-! ## A374363.P15714910949224712610

`(A004488(n)+n)/3`
-/

namespace A374363.P15714910949224712610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004488 n + (n : ℤ) : ℚ) / 3

end

end A374363.P15714910949224712610

namespace A374363

/-- `(A004488(n)+n)/3` -/
def P15714910949224712610.Spec : Prop :=
  ∀ n, P15714910949224712610.a n = (A374363 n : ℚ)

end A374363

/-! ## A374363.P4433692792410829489

`n-A300222(n)/2`
-/

namespace A374363.P4433692792410829489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A300222 n : ℚ) / 2

end

end A374363.P4433692792410829489

namespace A374363

/-- `n-A300222(n)/2` -/
def P4433692792410829489.Spec : Prop :=
  ∀ n, P4433692792410829489.a n = (A374363 n : ℚ)

theorem P4433692792410829489.correct : P4433692792410829489.Spec := by
  intro n
  simp only [A374363, Nat.add_sub_cancel, A374363.P4433692792410829489.a, A374363.P4006744609650702107.a, A300222, A300222.P16406266268068730929.a, A374362, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374363

/-! ## A374363.P4537055755089829647

`(A117966(n)+n+n)/3`
-/

namespace A374363.P4537055755089829647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117966 n + (n : ℤ) + (n : ℤ) : ℚ) / 3

end

end A374363.P4537055755089829647

namespace A374363

/-- `(A117966(n)+n+n)/3` -/
def P4537055755089829647.Spec : Prop :=
  ∀ n, P4537055755089829647.a n = (A374363 n : ℚ)

theorem P4537055755089829647.correct : P4537055755089829647.Spec := by
  intro n
  simp only [A374363, Nat.add_sub_cancel, A374363.P4537055755089829647.a, A374363.P4006744609650702107.a, A117966, A117966.P11599160912576478646.a, A374362, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374363

/-! ## A374363.P8202604686584630419

`A002264(A004488(n)+n)`
-/

namespace A374363.P8202604686584630419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004488 n + (n : ℤ)).toNat

end

end A374363.P8202604686584630419

namespace A374363

/-- `A002264(A004488(n)+n)` -/
def P8202604686584630419.Spec : Prop :=
  ∀ n, P8202604686584630419.a n = A374363 n

end A374363

/-! ## A374363.P5030086916410180943

`A004488(A244042(n)+n)`
-/

namespace A374363.P5030086916410180943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A244042 n + (n : ℤ)).toNat

end

end A374363.P5030086916410180943

namespace A374363

/-- `A004488(A244042(n)+n)` -/
def P5030086916410180943.Spec : Prop :=
  ∀ n, P5030086916410180943.a n = A374363 n

end A374363

/-! ## A374363.P338083789479122493

`A004526(A244042(n)+n)`
-/

namespace A374363.P338083789479122493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244042 n + (n : ℤ)).toNat

end

end A374363.P338083789479122493

namespace A374363

/-- `A004526(A244042(n)+n)` -/
def P338083789479122493.Spec : Prop :=
  ∀ n, P338083789479122493.a n = A374363 n

end A374363

/-! ## A374363.P13449721798096728655

`A300222(n)+A117966(n)`
-/

namespace A374363.P13449721798096728655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n + A117966 n

end

end A374363.P13449721798096728655

namespace A374363

/-- `A300222(n)+A117966(n)` -/
def P13449721798096728655.Spec : Prop :=
  ∀ n, P13449721798096728655.a n = A374363 n

theorem P13449721798096728655.correct : P13449721798096728655.Spec := by
  intro n
  simp only [A374363, Nat.add_sub_cancel, A374363.P13449721798096728655.a, A374363.P4006744609650702107.a, A117966, A117966.P11599160912576478646.a, A300222, A300222.P16406266268068730929.a, A374362, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374363

/-! ## A374363.P4810013197257153305

`A343766(A244042(n)+n)`
-/

namespace A374363.P4810013197257153305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 (A244042 n + (n : ℤ)).toNat

end

end A374363.P4810013197257153305

namespace A374363

/-- `A343766(A244042(n)+n)` -/
def P4810013197257153305.Spec : Prop :=
  ∀ n, P4810013197257153305.a n = A374363 n

end A374363

/-! ## A374363.P3822695959047748653

`A374362(A244042(n)+n)`
-/

namespace A374363.P3822695959047748653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A244042 n + (n : ℤ)).toNat

end

end A374363.P3822695959047748653

namespace A374363

/-- `A374362(A244042(n)+n)` -/
def P3822695959047748653.Spec : Prop :=
  ∀ n, P3822695959047748653.a n = A374363 n

end A374363

/-! ## A374363.P5493032282000560770

`A004488(n)-A244042(n)`
-/

namespace A374363.P5493032282000560770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - A244042 n

end

end A374363.P5493032282000560770

namespace A374363

/-- `A004488(n)-A244042(n)` -/
def P5493032282000560770.Spec : Prop :=
  ∀ n, P5493032282000560770.a n = A374363 n

end A374363

/-! ## A374363.P12711624901243330189

`n-A060373(A338242(n))`
-/

namespace A374363.P12711624901243330189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060373 (A338242 n).toNat

end

end A374363.P12711624901243330189

namespace A374363

/-- `n-A060373(A338242(n))` -/
def P12711624901243330189.Spec : Prop :=
  ∀ n, P12711624901243330189.a n = A374363 n

end A374363

/-! ## A374363.P12658634232763705686

`A117966(n)+2*A374362(n)`
-/

namespace A374363.P12658634232763705686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n + 2 * A374362 n

end

end A374363.P12658634232763705686

namespace A374363

/-- `A117966(n)+2*A374362(n)` -/
def P12658634232763705686.Spec : Prop :=
  ∀ n, P12658634232763705686.a n = A374363 n

theorem P12658634232763705686.correct : P12658634232763705686.Spec := by
  intro n
  simp only [A374363, Nat.add_sub_cancel, A374363.P12658634232763705686.a, A374363.P4006744609650702107.a, A117966, A117966.P11599160912576478646.a, A374362, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374363

/-! ## A374363.P13348771200053864816

`A004488(2*n-A300222(n))`
-/

namespace A374363.P13348771200053864816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 ((2 * n : ℤ) - A300222 n).toNat

end

end A374363.P13348771200053864816

namespace A374363

/-- `A004488(2*n-A300222(n))` -/
def P13348771200053864816.Spec : Prop :=
  ∀ n, P13348771200053864816.a n = A374363 n

end A374363

/-! ## A374363.P15550711579385312042

`2*A244042(n)-A117966(n)`
-/

namespace A374363.P15550711579385312042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244042 n - A117966 n

end

end A374363.P15550711579385312042

namespace A374363

/-- `2*A244042(n)-A117966(n)` -/
def P15550711579385312042.Spec : Prop :=
  ∀ n, P15550711579385312042.a n = A374363 n

theorem P15550711579385312042.correct : P15550711579385312042.Spec := by
  intro n
  simp only [A374363, Nat.add_sub_cancel, A374363.P15550711579385312042.a, A374363.P4006744609650702107.a, A117966, A117966.P11599160912576478646.a, A244042, A244042.P9314766524248185345.a, A374362, A374362.P13095679311797135054.a, A005836, A005836.P12367569128854000442.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374363

/-! ## A374363.P3875511231923728473

`A330740(2*n-A300222(n))`
-/

namespace A374363.P3875511231923728473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 ((2 * n : ℤ) - A300222 n).toNat

end

end A374363.P3875511231923728473

namespace A374363

/-- `A330740(2*n-A300222(n))` -/
def P3875511231923728473.Spec : Prop :=
  ∀ n, P3875511231923728473.a n = A374363 n

end A374363

/-! ## A374363.P15841712951221058247

`A004488(n)+A300222(n)-n`
-/

namespace A374363.P15841712951221058247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n + (A300222 n - (n : ℤ))

end

end A374363.P15841712951221058247

namespace A374363

/-- `A004488(n)+A300222(n)-n` -/
def P15841712951221058247.Spec : Prop :=
  ∀ n, P15841712951221058247.a n = A374363 n

end A374363

/-! ## A374363.P1407629760076625641

`A338242(n)+n-A060372(n)`
-/

namespace A374363.P1407629760076625641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 n + ((n : ℤ) - A060372 n)

end

end A374363.P1407629760076625641

namespace A374363

/-- `A338242(n)+n-A060372(n)` -/
def P1407629760076625641.Spec : Prop :=
  ∀ n, P1407629760076625641.a n = A374363 n

end A374363

/-!
# A374364: Expansion of e.g.f. exp( x - Sum_{k>=1} x^(2^k)/2^k ).

The programs for A374364, there is no canonical definition to state claims against.
-/

/-! ## A374364.P6226414996005857975

`A005843(A001472(n)-A061136(n))-A005388(n)`
-/

namespace A374364.P6226414996005857975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001472 n - A061136 n).toNat - A005388 n

end

end A374364.P6226414996005857975

/-!
# A374365: Numbers m such that abs(Sum_{k=1..m} [k|m]*A008683(k)*(-1)^(2*k/5)) = 0.

The programs for A374365, there is no canonical definition to state claims against.
-/

/-! ## A374365.P17879335893334079234

`eq[5, gcd(5, A023900(n+1))]+1`
-/

namespace A374365.P17879335893334079234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A023900 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374365.P17879335893334079234

/-! ## A374365.P6126771249026543728

`eq[10, gcd(10, A003958(n+1))]+1`
-/

namespace A374365.P6126771249026543728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A003958 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374365.P6126771249026543728

/-! ## A374365.P17424073885065731807

`eq[1, (6+A173557(n+1))%5]+1`
-/

namespace A374365.P17424073885065731807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 + A173557 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374365.P17424073885065731807

/-! ## A374365.P14992869025972683830

`lt[1, A319099(A007947(n+1))]+1`
-/

namespace A374365.P14992869025972683830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319099 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374365.P14992869025972683830

/-! ## A374365.P4475972820631562552

`∩[A066500(n+1), A068191(n+1)]`
-/

namespace A374365.P4475972820631562552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374365.P4475972820631562552

/-! ## A374365.P12829380821972108461

`eq[1, A274206(A003958(n+1)+1)]+1`
-/

namespace A374365.P12829380821972108461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A003958 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374365.P12829380821972108461

/-! ## A374365.P6895076169165715162

`lt[A205791(n+1), A007947(n+1)]+1`
-/

namespace A374365.P6895076169165715162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A374365.P6895076169165715162

/-!
# A374366: a(n) = Im(Sum_{d|n} mu(d)*(i^d)).

The programs for A374366, the canonical program `A374366.P5923631771151618344` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374366 has offset 1).

The definition of A374366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374366.P5923631771151618344

`∏{p}[n+1, (#-1)%4]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374366

/-- `∏{p}[n+1, (#-1)%4]` -/
def P5923631771151618344.Spec : Prop :=
  ∀ n, P5923631771151618344.a n = A374366 (n + 1)

theorem P5923631771151618344.correct : P5923631771151618344.Spec := by
  intro n
  simp only [A374366, Nat.add_sub_cancel]

end A374366

/-! ## A374366.P4753638367393534991

`∏{p}[n+1, and(3, #-1)]`
-/

namespace A374366.P4753638367393534991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land 3 ((p : ℤ) - 1)

end

end A374366.P4753638367393534991

namespace A374366

/-- `∏{p}[n+1, and(3, #-1)]` -/
def P4753638367393534991.Spec : Prop :=
  ∀ n, P4753638367393534991.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P7810931037267672237

`∏{p}[n+1, or(#, -4)+3]`
-/

namespace A374366.P7810931037267672237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.lor (p : ℤ) (-4) + 3)

end

end A374366.P7810931037267672237

namespace A374366

/-- `∏{p}[n+1, or(#, -4)+3]` -/
def P7810931037267672237.Spec : Prop :=
  ∀ n, P7810931037267672237.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P15602667724597335668

`∑{d}[n+1, A374367(#)]`
-/

namespace A374366.P15602667724597335668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A374367 d

end

end A374366.P15602667724597335668

namespace A374366

/-- `∑{d}[n+1, A374367(#)]` -/
def P15602667724597335668.Spec : Prop :=
  ∀ n, P15602667724597335668.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P17789846857820118018

`∏{p}[n+1, A112658(#)]`
-/

namespace A374366.P17789846857820118018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A112658 p

end

end A374366.P17789846857820118018

namespace A374366

/-- `∏{p}[n+1, A112658(#)]` -/
def P17789846857820118018.Spec : Prop :=
  ∀ n, P17789846857820118018.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P9048295844137260631

`A284059(∏{p}[n+1, #])`
-/

namespace A374366.P9048295844137260631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A374366.P9048295844137260631

namespace A374366

/-- `A284059(∏{p}[n+1, #])` -/
def P9048295844137260631.Spec : Prop :=
  ∀ n, P9048295844137260631.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P1786018133657458284

`∏{p}[n+1, A353768(#)]`
-/

namespace A374366.P1786018133657458284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A353768 p

end

end A374366.P1786018133657458284

namespace A374366

/-- `∏{p}[n+1, A353768(#)]` -/
def P1786018133657458284.Spec : Prop :=
  ∀ n, P1786018133657458284.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P15178589187911251966

`A284059(A000265(n+1))`
-/

namespace A374366.P15178589187911251966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A000265 (n + 1)).toNat

end

end A374366.P15178589187911251966

namespace A374366

/-- `A284059(A000265(n+1))` -/
def P15178589187911251966.Spec : Prop :=
  ∀ n, P15178589187911251966.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P17751449545779986914

`A284059(A007947(n+1))`
-/

namespace A374366.P17751449545779986914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A007947 (n + 1)).toNat

end

end A374366.P17751449545779986914

namespace A374366

/-- `A284059(A007947(n+1))` -/
def P17751449545779986914.Spec : Prop :=
  ∀ n, P17751449545779986914.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P11963630305009390705

`A284059(A065883(n+1))`
-/

namespace A374366.P11963630305009390705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A065883 (n + 1)).toNat

end

end A374366.P11963630305009390705

namespace A374366

/-- `A284059(A065883(n+1))` -/
def P11963630305009390705.Spec : Prop :=
  ∀ n, P11963630305009390705.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P17342510251579726318

`A091379(A332819(n+1))`
-/

namespace A374366.P17342510251579726318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (A332819 (n + 1)).toNat

end

end A374366.P17342510251579726318

namespace A374366

/-- `A091379(A332819(n+1))` -/
def P17342510251579726318.Spec : Prop :=
  ∀ n, P17342510251579726318.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P11155477454401861950

`A284059(A204455(n+1))`
-/

namespace A374366.P11155477454401861950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A204455 (n + 1)).toNat

end

end A374366.P11155477454401861950

namespace A374366

/-- `A284059(A204455(n+1))` -/
def P11155477454401861950.Spec : Prop :=
  ∀ n, P11155477454401861950.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P17945434761448753628

`A284059(A259445(n+1))`
-/

namespace A374366.P17945434761448753628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A259445 (n + 1)).toNat

end

end A374366.P17945434761448753628

namespace A374366

/-- `A284059(A259445(n+1))` -/
def P17945434761448753628.Spec : Prop :=
  ∀ n, P17945434761448753628.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P7886515551393679840

`A284059(A327937(n+1))`
-/

namespace A374366.P7886515551393679840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A327937 (n + 1)).toNat

end

end A374366.P7886515551393679840

namespace A374366

/-- `A284059(A327937(n+1))` -/
def P7886515551393679840.Spec : Prop :=
  ∀ n, P7886515551393679840.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P7754011334323666541

`A284059(A377515(n+1))`
-/

namespace A374366.P7754011334323666541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (A377515 (n + 1)).toNat

end

end A374366.P7754011334323666541

namespace A374366

/-- `A284059(A377515(n+1))` -/
def P7754011334323666541.Spec : Prop :=
  ∀ n, P7754011334323666541.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P11731210399475760580

`A006874(n+1)%A100008(n+1)`
-/

namespace A374366.P11731210399475760580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006874 (n + 1)) (A100008 (n + 1))

end

end A374366.P11731210399475760580

namespace A374366

/-- `A006874(n+1)%A100008(n+1)` -/
def P11731210399475760580.Spec : Prop :=
  ∀ n, P11731210399475760580.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P10498167656173263148

`A173557(n+1)%A100008(n+1)`
-/

namespace A374366.P10498167656173263148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173557 (n + 1)) (A100008 (n + 1))

end

end A374366.P10498167656173263148

namespace A374366

/-- `A173557(n+1)%A100008(n+1)` -/
def P10498167656173263148.Spec : Prop :=
  ∀ n, P10498167656173263148.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P12255030513296586762

`A380839(n+1)%A100008(n+1)`
-/

namespace A374366.P12255030513296586762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380839 (n + 1)) (A100008 (n + 1))

end

end A374366.P12255030513296586762

namespace A374366

/-- `A380839(n+1)%A100008(n+1)` -/
def P12255030513296586762.Spec : Prop :=
  ∀ n, P12255030513296586762.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P8433483716359779205

`and(A006874(n+1), A068068(n+1))`
-/

namespace A374366.P8433483716359779205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006874 (n + 1)) (A068068 (n + 1))

end

end A374366.P8433483716359779205

namespace A374366

/-- `and(A006874(n+1), A068068(n+1))` -/
def P8433483716359779205.Spec : Prop :=
  ∀ n, P8433483716359779205.a n = A374366 (n + 1)

end A374366

/-! ## A374366.P16930800647100481232

`and(A023900(n+1), A068068(n+1))`
-/

namespace A374366.P16930800647100481232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023900 (n + 1)) (A068068 (n + 1))

end

end A374366.P16930800647100481232

namespace A374366

/-- `and(A023900(n+1), A068068(n+1))` -/
def P16930800647100481232.Spec : Prop :=
  ∀ n, P16930800647100481232.a n = A374366 (n + 1)

end A374366

/-!
# A374367: a(n) = Im(A008683(n)*(i^n)).

The programs for A374367, the canonical program `A374367.P11517469690837664522` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374367 has offset 1).

The definition of A374367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374367.P11517469690837664522

`A008683(n+1)*A101455(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A374367

/-- `A008683(n+1)*A101455(n+1)` -/
def P11517469690837664522.Spec : Prop :=
  ∀ n, P11517469690837664522.a n = A374367 (n + 1)

theorem P11517469690837664522.correct : P11517469690837664522.Spec := by
  intro n
  simp only [A374367, Nat.add_sub_cancel]

end A374367

/-! ## A374367.P15605377556706272789

`∏{e}[n+1, -floor(1/#)]%gcd(4, n)*∏[(-1)^n]`
-/

namespace A374367.P15605377556706272789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) (Nat.gcd 4 n : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A374367.P15605377556706272789

namespace A374367

/-- `∏{e}[n+1, -floor(1/#)]%gcd(4, n)*∏[(-1)^n]` -/
def P15605377556706272789.Spec : Prop :=
  ∀ n, P15605377556706272789.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P130225777042748062

`(-1)^∑[n]*(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2`
-/

namespace A374367.P130225777042748062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)))) 2

end

end A374367.P130225777042748062

namespace A374367

/-- `(-1)^∑[n]*(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2` -/
def P130225777042748062.Spec : Prop :=
  ∀ n, P130225777042748062.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P14087858628135622073

`(-1)^C(n, 2)*((n+1)*round(1/∏{e}[n+1, -#²]))%2`
-/

namespace A374367.P14087858628135622073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose n 2 * Int.tmod ((n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))) 2

end

end A374367.P14087858628135622073

namespace A374367

/-- `(-1)^C(n, 2)*((n+1)*round(1/∏{e}[n+1, -#²]))%2` -/
def P14087858628135622073.Spec : Prop :=
  ∀ n, P14087858628135622073.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P14599648450410410255

`∑{d}[n+1, A120630(#)]`
-/

namespace A374367.P14599648450410410255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d

end

end A374367.P14599648450410410255

namespace A374367

/-- `∑{d}[n+1, A120630(#)]` -/
def P14599648450410410255.Spec : Prop :=
  ∀ n, P14599648450410410255.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P14760958077174291771

`A008683((n+1)*4/gcd(4, n))`
-/

namespace A374367.P14760958077174291771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (4 / (Nat.gcd 4 n : ℚ)))).toNat

end

end A374367.P14760958077174291771

namespace A374367

/-- `A008683((n+1)*4/gcd(4, n))` -/
def P14760958077174291771.Spec : Prop :=
  ∀ n, P14760958077174291771.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P8952773302012394764

`∑[(-1)^∑[n]]*A067856(n+1)`
-/

namespace A374367.P8952773302012394764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A067856 (n + 1)

end

end A374367.P8952773302012394764

namespace A374367

/-- `∑[(-1)^∑[n]]*A067856(n+1)` -/
def P8952773302012394764.Spec : Prop :=
  ∀ n, P8952773302012394764.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P16718183024375824944

`-((1-and(2, n))*A008683(2*(n+1)))`
-/

namespace A374367.P16718183024375824944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - (Nat.land 2 n : ℤ)) * A008683 (2 * (n + 1)))

end

end A374367.P16718183024375824944

namespace A374367

/-- `-((1-and(2, n))*A008683(2*(n+1)))` -/
def P16718183024375824944.Spec : Prop :=
  ∀ n, P16718183024375824944.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P3772426423884862651

`A101455(A003966(n+1))`
-/

namespace A374367.P3772426423884862651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A003966 (n + 1)).toNat

end

end A374367.P3772426423884862651

namespace A374367

/-- `A101455(A003966(n+1))` -/
def P3772426423884862651.Spec : Prop :=
  ∀ n, P3772426423884862651.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P9720656979306237869

`A087003(A371015(n+1))`
-/

namespace A374367.P9720656979306237869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A371015 (n + 1)).toNat

end

end A374367.P9720656979306237869

namespace A374367

/-- `A087003(A371015(n+1))` -/
def P9720656979306237869.Spec : Prop :=
  ∀ n, P9720656979306237869.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P14814664809923769816

`A401407(A254503(n+1))`
-/

namespace A374367.P14814664809923769816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401407 (A254503 (n + 1)).toNat

end

end A374367.P14814664809923769816

namespace A374367

/-- `A401407(A254503(n+1))` -/
def P14814664809923769816.Spec : Prop :=
  ∀ n, P14814664809923769816.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P4820412710918921346

`A401407(A293303(n+1))`
-/

namespace A374367.P4820412710918921346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401407 (A293303 (n + 1)).toNat

end

end A374367.P4820412710918921346

namespace A374367

/-- `A401407(A293303(n+1))` -/
def P4820412710918921346.Spec : Prop :=
  ∀ n, P4820412710918921346.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P8480171659958012452

`A008683((n+1)*A014695(n))`
-/

namespace A374367.P8480171659958012452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1 : ℤ) * A014695 n).toNat

end

end A374367.P8480171659958012452

namespace A374367

/-- `A008683((n+1)*A014695(n))` -/
def P8480171659958012452.Spec : Prop :=
  ∀ n, P8480171659958012452.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P895713713850666207

`A008683(n+1)*A056594(n)`
-/

namespace A374367.P895713713850666207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A056594 n

end

end A374367.P895713713850666207

namespace A374367

/-- `A008683(n+1)*A056594(n)` -/
def P895713713850666207.Spec : Prop :=
  ∀ n, P895713713850666207.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P13723827032685249929

`A009001(n)*A087003(n+1)`
-/

namespace A374367.P13723827032685249929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A087003 (n + 1)

end

end A374367.P13723827032685249929

namespace A374367

/-- `A009001(n)*A087003(n+1)` -/
def P13723827032685249929.Spec : Prop :=
  ∀ n, P13723827032685249929.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P479551660753764669

`A056594(n)*A080323(n+1)`
-/

namespace A374367.P479551660753764669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A080323 (n + 1)

end

end A374367.P479551660753764669

namespace A374367

/-- `A056594(n)*A080323(n+1)` -/
def P479551660753764669.Spec : Prop :=
  ∀ n, P479551660753764669.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P3404649911205174154

`A008683(n+1)*A131379(n)`
-/

namespace A374367.P3404649911205174154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A131379 n

end

end A374367.P3404649911205174154

namespace A374367

/-- `A008683(n+1)*A131379(n)` -/
def P3404649911205174154.Spec : Prop :=
  ∀ n, P3404649911205174154.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P13622303938266122145

`A056594(n)*A085384(n+1)`
-/

namespace A374367.P13622303938266122145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A085384 (n + 1)

end

end A374367.P13622303938266122145

namespace A374367

/-- `A056594(n)*A085384(n+1)` -/
def P13622303938266122145.Spec : Prop :=
  ∀ n, P13622303938266122145.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P7552174153384972261

`A056594(n)*A086831(n+1)`
-/

namespace A374367.P7552174153384972261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A086831 (n + 1)

end

end A374367.P7552174153384972261

namespace A374367

/-- `A056594(n)*A086831(n+1)` -/
def P7552174153384972261.Spec : Prop :=
  ∀ n, P7552174153384972261.a n = A374367 (n + 1)

end A374367

/-! ## A374367.P13270849906697014482

`A056594(n)*A087003(n+1)`
-/

namespace A374367.P13270849906697014482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A087003 (n + 1)

end

end A374367.P13270849906697014482

namespace A374367

/-- `A056594(n)*A087003(n+1)` -/
def P13270849906697014482.Spec : Prop :=
  ∀ n, P13270849906697014482.a n = A374367 (n + 1)

end A374367

/-!
# A374369: Triangle T(n, k), n > 0, k = 0..n-1, read by rows; T(n, k) is the least m such that n and k differ modulo m.

The programs for A374369, there is no canonical definition to state claims against.
-/

/-! ## A374369.P1915278446352909681

`A007978(row(n)+1-col(n))`
-/

namespace A374369.P1915278446352909681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A374369.P1915278446352909681

/-! ## A374369.P1642202340434945367

`A007978(1+row(n)-col(n))`
-/

namespace A374369.P1642202340434945367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A374369.P1642202340434945367

/-! ## A374369.P6457346117541661194

`A007978(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A374369.P6457346117541661194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A374369.P6457346117541661194

/-! ## A374369.P3734353169530195062

`A055874(row(n)+1-col(n))+1`
-/

namespace A374369.P3734353169530195062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n) + 1

end

end A374369.P3734353169530195062

/-! ## A374369.P13821017434118524011

`A129308(row(n)+1-col(n))+2`
-/

namespace A374369.P13821017434118524011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n) + 2

end

end A374369.P13821017434118524011

/-! ## A374369.P8534063959752307229

`A055874(C(row(n)+2, 2)-n)+1`
-/

namespace A374369.P8534063959752307229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 - n) + 1

end

end A374369.P8534063959752307229

/-! ## A374369.P3494854506845053787

`A055874(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A374369.P3494854506845053787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A374369.P3494854506845053787

/-! ## A374369.P16725954389320997401

`A195155(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A374369.P16725954389320997401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A374369.P16725954389320997401

/-! ## A374369.P11921144644699624184

`A232098(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A374369.P11921144644699624184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232098 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A374369.P11921144644699624184

/-! ## A374369.P15172853767700836482

`A129308(C(comp[∑[n]]-n, 2)-n)+2`
-/

namespace A374369.P15172853767700836482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 2

end

end A374369.P15172853767700836482

/-!
# A374371: Least n-gonal number that can be written as a product of two or more smaller n-gonal numbers, or 0 if no such number exists.

The programs for A374371, there is no canonical definition to state claims against.
-/

/-! ## A374371.P18252619665730973971

`A374370(C(n+3, 2))`
-/

namespace A374371.P18252619665730973971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (Nat.choose (n + 3) 2)

end

end A374371.P18252619665730973971

/-! ## A374371.P7088225923797376860

`A374370(∑[n+2]+1)`
-/

namespace A374371.P7088225923797376860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374371.P7088225923797376860

/-!
# A374372: Pentagonal numbers that are products of smaller pentagonal numbers.

The programs for A374372, there is no canonical definition to state claims against.
-/

/-! ## A374372.P17831209899905282869

`A374370(A052905(n)+10)`
-/

namespace A374372.P17831209899905282869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (A052905 n + 10).toNat

end

end A374372.P17831209899905282869

/-! ## A374372.P6119915655893933939

`A374370(A167614(n+2)+2)`
-/

namespace A374372.P6119915655893933939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (A167614 (n + 2) + 2).toNat

end

end A374372.P6119915655893933939

/-! ## A374372.P17587545454609748241

`A374370(A000217(n+3)+5)`
-/

namespace A374372.P17587545454609748241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (A000217 (n + 3) + 5).toNat

end

end A374372.P17587545454609748241

/-!
# A374373: Hexagonal numbers that are products of smaller hexagonal numbers.

The programs for A374373, there is no canonical definition to state claims against.
-/

/-! ## A374373.P6253127330178373021

`A374370(A167614(n+3)+3)`
-/

namespace A374373.P6253127330178373021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374370 (A167614 (n + 3) + 3).toNat

end

end A374373.P6253127330178373021

/-!
# A374378: Iterated rascal triangle R2: T(n,k) = Sum_{m=0..2} binomial(n-k,m)*binomial(k,m).

The programs for A374378, there is no canonical definition to state claims against.
-/

/-! ## A374378.P14343207583126622346

`A119326(n)+A055941(A117401(n))`
-/

namespace A374378.P14343207583126622346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 n + A055941 (A117401 n).toNat

end

end A374378.P14343207583126622346

/-! ## A374378.P7237309970842622135

`A105209(A238743(n))`
-/

namespace A374378.P7237309970842622135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A238743 n).toNat

end

end A374378.P7237309970842622135

/-! ## A374378.P1754922284643479480

`A333432(A088925(n))`
-/

namespace A374378.P1754922284643479480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A088925 n).toNat

end

end A374378.P1754922284643479480

/-! ## A374378.P3322722799210159668

`A007318(n)-A010894(A051137(n))`
-/

namespace A374378.P3322722799210159668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A010894 ((A051137 n).toNat + 21)

end

end A374378.P3322722799210159668

/-! ## A374378.P1229516283504392001

`A007318(n)-A030315(A056940(n))`
-/

namespace A374378.P1229516283504392001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A030315 (A056940 n).toNat

end

end A374378.P1229516283504392001

/-!
# A374382: Number of ways to write n as an ordered sum of a triangular number, a square and an odd square.

The programs for A374382, there is no canonical definition to state claims against.
-/

/-! ## A374382.P1251488476120423043

`A077267(A129912(n+1)+A114562(n+1))`
-/

namespace A374382.P1251488476120423043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A129912 (n + 1) + A114562 (n + 1)).toNat

end

end A374382.P1251488476120423043

/-! ## A374382.P7244176215218566964

`gcd(A007895(A222254(3*n)), A194278(n+1))`
-/

namespace A374382.P7244176215218566964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007895 (A222254 (3 * n)).toNat) (A194278 (n + 1))

end

end A374382.P7244176215218566964

/-! ## A374382.P7954657945006273760

`A001221(A198708(2*(n+2))+A198708(n+1))`
-/

namespace A374382.P7954657945006273760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A198708 (2 * (n + 2)) + A198708 (n + 1)).toNat

end

end A374382.P7954657945006273760

/-! ## A374382.P12526224500065250558

`A001221(A371761(n+2)+A219078(2*n+3))`
-/

namespace A374382.P12526224500065250558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A371761 (n + 2) + A219078 (2 * n + 3)).toNat

end

end A374382.P12526224500065250558

/-! ## A374382.P11837552091903446316

`A300358(n+1)-A143466(A372957(n))`
-/

namespace A374382.P11837552091903446316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300358 (n + 1) - A143466 (A372957 n).toNat

end

end A374382.P11837552091903446316

/-!
# A374383: Triangle T(n, k), n > 0, k = 0..n-1, read by rows; T(n, k) is the least base b >= 2 where n and k have different sums of digits.

The programs for A374383, there is no canonical definition to state claims against.
-/

/-! ## A374383.P459929561031989856

`A327664(A401246(n+1))%A116012(n+1)`
-/

namespace A374383.P459929561031989856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327664 (A401246 (n + 1)).toNat) (A116012 (n + 1))

end

end A374383.P459929561031989856

/-!
# A374384: a(n) = floor(Sum_{k=n^3..(n+1)^3} k^(1/3)).

The programs for A374384, the canonical program `A374384.P5265661916592348643` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374384 has offset 0).

The definition of A374384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(∑{#}[(n+1)^3-n^3, (#+n^3)^(1/3)])` (program `A374384.P5265661916592348643`, by `A374384.P5265661916592348643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374384.P5265661916592348643

`floor(∑{#}[(n+1)^3-n^3, (#+n^3)^(1/3)])`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374384

/-- `floor(∑{#}[(n+1)^3-n^3, (#+n^3)^(1/3)])` -/
def P5265661916592348643.Spec : Prop :=
  ∀ n, P5265661916592348643.a n = A374384 n

theorem P5265661916592348643.correct : P5265661916592348643.Spec := by
  intro n
  simp only [A374384]

end A374384

/-! ## A374384.P14430164804007572557

`∑[or(1, A010002(n))]`
-/

namespace A374384.P14430164804007572557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010002 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374384.P14430164804007572557

namespace A374384

/-- `∑[or(1, A010002(n))]` -/
def P14430164804007572557.Spec : Prop :=
  ∀ n, P14430164804007572557.a n = A374384 n

end A374384

/-! ## A374384.P9981692024133834174

`A063491(n+1)+floor(n/2)`
-/

namespace A374384.P9981692024133834174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) + ⌊(n : ℚ) / 2⌋

end

end A374384.P9981692024133834174

namespace A374384

/-- `A063491(n+1)+floor(n/2)` -/
def P9981692024133834174.Spec : Prop :=
  ∀ n, P9981692024133834174.a n = A374384 n

end A374384

/-! ## A374384.P8550118917188238012

`A100583(n)+A016777(n)`
-/

namespace A374384.P8550118917188238012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100583 n + A016777 n

end

end A374384.P8550118917188238012

namespace A374384

/-- `A100583(n)+A016777(n)` -/
def P8550118917188238012.Spec : Prop :=
  ∀ n, P8550118917188238012.a n = A374384 n

end A374384

/-! ## A374384.P12600222420913862772

`A005902(n)-A087035(n)`
-/

namespace A374384.P12600222420913862772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n - A087035 n

end

end A374384.P12600222420913862772

namespace A374384

/-- `A005902(n)-A087035(n)` -/
def P12600222420913862772.Spec : Prop :=
  ∀ n, P12600222420913862772.a n = A374384 n

end A374384

/-! ## A374384.P3350794065783981245

`A007202(n)-A212684(n)`
-/

namespace A374384.P3350794065783981245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n - A212684 n

end

end A374384.P3350794065783981245

namespace A374384

/-- `A007202(n)-A212684(n)` -/
def P3350794065783981245.Spec : Prop :=
  ∀ n, P3350794065783981245.a n = A374384 n

end A374384

/-! ## A374384.P10101585819914335367

`A220443(n)+A047219(n+1)`
-/

namespace A374384.P10101585819914335367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A047219 (n + 1)

end

end A374384.P10101585819914335367

namespace A374384

/-- `A220443(n)+A047219(n+1)` -/
def P10101585819914335367.Spec : Prop :=
  ∀ n, P10101585819914335367.a n = A374384 n

end A374384

/-! ## A374384.P11099941944196172433

`A248575(n)+A042963(n+1)`
-/

namespace A374384.P11099941944196172433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248575 n + A042963 (n + 1)

end

end A374384.P11099941944196172433

namespace A374384

/-- `A248575(n)+A042963(n+1)` -/
def P11099941944196172433.Spec : Prop :=
  ∀ n, P11099941944196172433.a n = A374384 n

end A374384

/-! ## A374384.P16280349430699074023

`A005915(n)-A238410(n+1)`
-/

namespace A374384.P16280349430699074023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n - A238410 (n + 1)

end

end A374384.P16280349430699074023

namespace A374384

/-- `A005915(n)-A238410(n+1)` -/
def P16280349430699074023.Spec : Prop :=
  ∀ n, P16280349430699074023.a n = A374384 n

end A374384

/-! ## A374384.P1230271655508345712

`2*A007202(n)-A050492(n+1)`
-/

namespace A374384.P1230271655508345712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007202 n - A050492 (n + 1)

end

end A374384.P1230271655508345712

namespace A374384

/-- `2*A007202(n)-A050492(n+1)` -/
def P1230271655508345712.Spec : Prop :=
  ∀ n, P1230271655508345712.a n = A374384 n

end A374384

/-! ## A374384.P7117450387374341178

`A319006(2*n+1)+A147656(n)`
-/

namespace A374384.P7117450387374341178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319006 (2 * n + 1) + A147656 n

end

end A374384.P7117450387374341178

namespace A374384

/-- `A319006(2*n+1)+A147656(n)` -/
def P7117450387374341178.Spec : Prop :=
  ∀ n, P7117450387374341178.a n = A374384 n

end A374384

/-! ## A374384.P6573340319450190710

`A212578(2*n+1)-A087035(n)`
-/

namespace A374384.P6573340319450190710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 (2 * n + 1) - A087035 n

end

end A374384.P6573340319450190710

namespace A374384

/-- `A212578(2*n+1)-A087035(n)` -/
def P6573340319450190710.Spec : Prop :=
  ∀ n, P6573340319450190710.a n = A374384 n

end A374384

/-! ## A374384.P2875843478495932112

`Δ[A077043(n²)]+n`
-/

namespace A374384.P2875843478495932112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A374384.P2875843478495932112

namespace A374384

/-- `Δ[A077043(n²)]+n` -/
def P2875843478495932112.Spec : Prop :=
  ∀ n, P2875843478495932112.a n = A374384 n

end A374384

/-! ## A374384.P7239870798281487763

`Δ[A084684(n²)]+n`
-/

namespace A374384.P7239870798281487763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A374384.P7239870798281487763

namespace A374384

/-- `Δ[A084684(n²)]+n` -/
def P7239870798281487763.Spec : Prop :=
  ∀ n, P7239870798281487763.a n = A374384 n

end A374384

/-!
# A374385: Irregular triangle read by rows: coefficients of polynomial P(n,x) (exponents in increasing order).

The programs for A374385, there is no canonical definition to state claims against.
-/

/-! ## A374385.P5649639043132430518

`A165326(A107277(n))^A107277(n+4)`
-/

namespace A374385.P5649639043132430518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165326 (A107277 n).toNat : ℚ) ^ (A107277 (n + 4) : ℤ)

end

end A374385.P5649639043132430518

/-! ## A374385.P13431732126342504556

`A071936(A323199(n+2))`
-/

namespace A374385.P13431732126342504556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A323199 (n + 2)).toNat

end

end A374385.P13431732126342504556

/-! ## A374385.P857443641226420679

`A057077(and(A122312(2*(n+2)), A126178(n)))`
-/

namespace A374385.P857443641226420679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (Int.land (A122312 (2 * (n + 2))) (A126178 n)).toNat

end

end A374385.P857443641226420679

/-! ## A374385.P4458886513067374567

`1-A000122(A356314(2*(n+2)))`
-/

namespace A374385.P4458886513067374567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000122 (A356314 (2 * (n + 2))).toNat

end

end A374385.P4458886513067374567

/-! ## A374385.P131624228056220321

`((-1)^∑{e}[n+1, #])^A049310(A114826(2*(n+2)))`
-/

namespace A374385.P131624228056220321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) ^ (A049310 (A114826 (2 * (n + 2))).toNat : ℤ)

end

end A374385.P131624228056220321

/-!
# A374386: a(n) is the minimal determinant of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374386, there is no canonical definition to state claims against.
-/

/-! ## A374386.P13952090917169832197

`A059332(n)-A144402(A175254(n+1))`
-/

namespace A374386.P13952090917169832197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059332 n - A144402 (A175254 (n + 1)).toNat

end

end A374386.P13952090917169832197

/-!
# A374387: a(n) is the maximal determinant of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374387, there is no canonical definition to state claims against.
-/

/-! ## A374387.P4006769434973121630

`A003603(A093842(n+1))-A000578(n)`
-/

namespace A374387.P4006769434973121630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A093842 (n + 1)).toNat - A000578 n

end

end A374387.P4006769434973121630

/-!
# A374388: a(n) is the maximal absolute value of the determinant of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374388, there is no canonical definition to state claims against.
-/

/-! ## A374388.P6094071651136503918

`A362719(10^n)²`
-/

namespace A374388.P6094071651136503918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362719 (10 ^ n) ^ 2

end

end A374388.P6094071651136503918

/-!
# A374390: a(n) is the maximal permanent of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374390, there is no canonical definition to state claims against.
-/

/-! ## A374390.P5707019580444890928

`(A329732(a(n-1))-n)²` with `a(0)=1`
-/

namespace A374390.P5707019580444890928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A329732 (a (n - 1)).toNat - (n : ℤ)) ^ 2

end

end A374390.P5707019580444890928

/-!
# A374393: Triangular numbers such that the three numbers before it and the three numbers after it are squarefree.

The programs for A374393, there is no canonical definition to state claims against.
-/

/-! ## A374393.P8435903274434353907

`filter[A068088(n+1), A073424(#)]`
-/

namespace A374393.P8435903274434353907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A374393.P8435903274434353907

/-!
# A374394: Irregular table T(n, k), n >= 0, 0 <= k < A277561(1+A003754(n)), read by rows; the n-th row lists the numbers z <= n such that the Zeckendorf representations of z and n-z have no common Fibonacci numbers and when combined together correspond to the lazy Fibonacci representation of n.

The programs for A374394, there is no canonical definition to state claims against.
-/

/-! ## A374394.P15152718575101921352

`A077267(or(24*n, A077643(n)))`
-/

namespace A374394.P15152718575101921352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (Int.lor (24 * n : ℤ) (A077643 n)).toNat

end

end A374394.P15152718575101921352

/-! ## A374394.P16783191236690980975

`A194835(A290674(n))%A054071(n+1)`
-/

namespace A374394.P16783191236690980975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194835 (A290674 n).toNat) (A054071 (n + 1))

end

end A374394.P16783191236690980975

/-! ## A374394.P902981714240902530

`col(record[A400185(A400111(n+1))])`
-/

namespace A374394.P902981714240902530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400185 (A400111 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374394.P902981714240902530

/-! ## A374394.P5627342955270451079

`col(lt[A137759(3*n+5), 16])`
-/

namespace A374394.P5627342955270451079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137759 (3 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A374394.P5627342955270451079

/-! ## A374394.P14498652186491318198

`A037890(A153952(n+1))`
-/

namespace A374394.P14498652186491318198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037890 (A153952 (n + 1)).toNat

end

end A374394.P14498652186491318198

/-!
# A374395: a(n) is the first term in the n-th row of A374394.

The programs for A374395, there is no canonical definition to state claims against.
-/

/-! ## A374395.P7489886318707565388

`n-A374396(n)`
-/

namespace A374395.P7489886318707565388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374396 n

end

end A374395.P7489886318707565388

/-! ## A374395.P12983397726213447077

`n%A374396(A028310(n))`
-/

namespace A374395.P12983397726213447077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A374396 (A028310 n).toNat)

end

end A374395.P12983397726213447077

/-! ## A374395.P17830582360711843812

`A361989(A374396(n)+A361989(n))`
-/

namespace A374395.P17830582360711843812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 (A374396 n + A361989 n).toNat

end

end A374395.P17830582360711843812

/-! ## A374395.P16167512819147079974

`A022290(A374355(A003754(n+1)))`
-/

namespace A374395.P16167512819147079974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A374355 (A003754 (n + 1)).toNat).toNat

end

end A374395.P16167512819147079974

/-! ## A374395.P18416445430671398916

`A255120(n)+A079978(A016018(n))`
-/

namespace A374395.P18416445430671398916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255120 n + A079978 (A016018 n).toNat

end

end A374395.P18416445430671398916

/-!
# A374396: a(n) is the last term in the n-th row of A374394.

The programs for A374396, there is no canonical definition to state claims against.
-/

/-! ## A374396.P205915326338389282

`n-A374395(n)`
-/

namespace A374396.P205915326338389282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374395 n

end

end A374396.P205915326338389282

/-! ## A374396.P11779472458774444316

`A022290(A374356(A003754(n+1)))`
-/

namespace A374396.P11779472458774444316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A374356 (A003754 (n + 1)).toNat).toNat

end

end A374396.P11779472458774444316

/-! ## A374396.P6939762208134693313

`A133512(n+1)-A000120(A127581(n))`
-/

namespace A374396.P6939762208134693313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133512 (n + 1) - A000120 (A127581 n).toNat

end

end A374396.P6939762208134693313

/-!
# A374397: a(n) is the number of 4-step self avoiding walks in the n-dimensional hypercubic lattice that start at the origin.

The programs for A374397, the canonical program `A374397.P5115694170055107392` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374397 has offset 1).

The definition of A374397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374397.P11150726739973692963

`ogf((2+90x+246x^2+46x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A374397.P11150726739973692963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 90, 246, 46] [1, -5, 10, -10, 5, -1] n

end

end A374397.P11150726739973692963

namespace A374397

/-- `ogf((2+90x+246x^2+46x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11150726739973692963.Spec : Prop :=
  ∀ n, P11150726739973692963.a n = A374397 (n + 1)

end A374397

/-! ## A374397.P5115694170055107392

`2*(n+1)*(4*(n+1)*n*(2*(n+1)-1)+1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374397

/-- `2*(n+1)*(4*(n+1)*n*(2*(n+1)-1)+1)` -/
def P5115694170055107392.Spec : Prop :=
  ∀ n, P5115694170055107392.a n = A374397 (n + 1)

theorem P5115694170055107392.correct : P5115694170055107392.Spec := by
  intro n
  simp only [A374397, Nat.add_sub_cancel]

end A374397

/-! ## A374397.P15956421264974742568

`∑[2*A056578(2*n)]`
-/

namespace A374397.P15956421264974742568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056578 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374397.P15956421264974742568

namespace A374397

/-- `∑[2*A056578(2*n)]` -/
def P15956421264974742568.Spec : Prop :=
  ∀ n, P15956421264974742568.a n = A374397 (n + 1)

end A374397

/-! ## A374397.P3208784037628419054

`A053699(2*n+1)-A014105(2*n+1)`
-/

namespace A374397.P3208784037628419054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (2 * n + 1) - A014105 (2 * n + 1)

end

end A374397.P3208784037628419054

namespace A374397

/-- `A053699(2*n+1)-A014105(2*n+1)` -/
def P3208784037628419054.Spec : Prop :=
  ∀ n, P3208784037628419054.a n = A374397 (n + 1)

theorem P3208784037628419054.correct : P3208784037628419054.Spec := by
  intro n
  simp only [A374397, Nat.add_sub_cancel, A374397.P3208784037628419054.a, A374397.P5115694170055107392.a, A014105, A014105.P182524374866796289.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374397

/-! ## A374397.P13308369934550675542

`A304160(2*(n+1))-A002943(2*n+1)`
-/

namespace A374397.P13308369934550675542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304160 (2 * (n + 1)) - A002943 (2 * n + 1)

end

end A374397.P13308369934550675542

namespace A374397

/-- `A304160(2*(n+1))-A002943(2*n+1)` -/
def P13308369934550675542.Spec : Prop :=
  ∀ n, P13308369934550675542.a n = A374397 (n + 1)

end A374397

/-! ## A374397.P2768148163773615800

`A317300(2*n+1)+A074377(2*n+1)²`
-/

namespace A374397.P2768148163773615800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 (2 * n + 1) + A074377 (2 * n + 1) ^ 2

end

end A374397.P2768148163773615800

namespace A374397

/-- `A317300(2*n+1)+A074377(2*n+1)²` -/
def P2768148163773615800.Spec : Prop :=
  ∀ n, P2768148163773615800.a n = A374397 (n + 1)

end A374397

/-!
# A374399: Number of inequivalent nondegenerate unate functions of n or fewer variables.

The programs for A374399, there is no canonical definition to state claims against.
-/

/-! ## A374399.P14125644587396769211

`lcm(2, A304996(n))`
-/

namespace A374399.P14125644587396769211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A304996 n)

end

end A374399.P14125644587396769211

/-! ## A374399.P12555322273688933466

`A304996(∑[n!]%2+n)`
-/

namespace A374399.P12555322273688933466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304996 ((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + n)

end

end A374399.P12555322273688933466

/-! ## A374399.P13388379381228530548

`A304997(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A374399.P13388379381228530548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A304997 n + a (n - 1)

end

end A374399.P13388379381228530548

