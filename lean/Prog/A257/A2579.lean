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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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
# A257900: Expansion of 1/2 - (phi(-q)^2 + phi(-q^9)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A257900, the canonical program `A257900.P5839440756912760088` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257900 has offset 1).

The definition of A257900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257900.P5839440756912760088

`A107751(n)*A113652(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257900

/-- `A107751(n)*A113652(n+1)` -/
def P5839440756912760088.Spec : Prop :=
  ∀ n, P5839440756912760088.a n = A257900 (n + 1)

theorem P5839440756912760088.correct : P5839440756912760088.Spec := by
  intro n
  simp only [A257900, Nat.add_sub_cancel]

end A257900

/-! ## A257900.P3512195326676733004

`A113652(n+1)*A177702(n)`
-/

namespace A257900.P3512195326676733004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (n + 1) * A177702 n

end

end A257900.P3512195326676733004

namespace A257900

/-- `A113652(n+1)*A177702(n)` -/
def P3512195326676733004.Spec : Prop :=
  ∀ n, P3512195326676733004.a n = A257900 (n + 1)

end A257900

/-! ## A257900.P7936868213147740678

`Δ[A004773(n)]*A113652(n+1)`
-/

namespace A257900.P7936868213147740678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A113652 (n + 1)

end

end A257900.P7936868213147740678

namespace A257900

/-- `Δ[A004773(n)]*A113652(n+1)` -/
def P7936868213147740678.Spec : Prop :=
  ∀ n, P7936868213147740678.a n = A257900 (n + 1)

end A257900

/-! ## A257900.P9553866794536912985

`gcd(2, A007306(n))*A113652(n+1)`
-/

namespace A257900.P9553866794536912985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A007306 n) : ℤ) * A113652 (n + 1)

end

end A257900.P9553866794536912985

namespace A257900

/-- `gcd(2, A007306(n))*A113652(n+1)` -/
def P9553866794536912985.Spec : Prop :=
  ∀ n, P9553866794536912985.a n = A257900 (n + 1)

end A257900

/-! ## A257900.P1797816210095429617

`(2-A010892(n)²)*A113652(n+1)`
-/

namespace A257900.P1797816210095429617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010892 n ^ 2) * A113652 (n + 1)

end

end A257900.P1797816210095429617

namespace A257900

/-- `(2-A010892(n)²)*A113652(n+1)` -/
def P1797816210095429617.Spec : Prop :=
  ∀ n, P1797816210095429617.a n = A257900 (n + 1)

end A257900

/-! ## A257900.P696697819418481361

`(Δ[A008620(n)]+1)*A113652(n+1)`
-/

namespace A257900.P696697819418481361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A113652 (n + 1)

end

end A257900.P696697819418481361

namespace A257900

/-- `(Δ[A008620(n)]+1)*A113652(n+1)` -/
def P696697819418481361.Spec : Prop :=
  ∀ n, P696697819418481361.a n = A257900 (n + 1)

end A257900

/-! ## A257900.P2273190188048449967

`A004277(Δ[A008620(n)])*A113652(n+1)`
-/

namespace A257900.P2273190188048449967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat * A113652 (n + 1)

end

end A257900.P2273190188048449967

namespace A257900

/-- `A004277(Δ[A008620(n)])*A113652(n+1)` -/
def P2273190188048449967.Spec : Prop :=
  ∀ n, P2273190188048449967.a n = A257900 (n + 1)

end A257900

/-!
# A257903: Sequence (a(n)) generated by Algorithm (in Comments) with a(1) = 0 and d(1) = 3.

The programs for A257903, there is no canonical definition to state claims against.
-/

/-! ## A257903.P15938004516772300000

`∑[A257904(n+1)]-3`
-/

namespace A257903.P15938004516772300000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A257903.P15938004516772300000

/-! ## A257903.P3016609425558261060

`∑[A057427(n)*A257904(n+1)]`
-/

namespace A257903.P3016609425558261060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257903.P3016609425558261060

/-! ## A257903.P7648164620711967191

`∑[A257904(n+1)%A000124(n)]`
-/

namespace A257903.P7648164620711967191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257904 (n + 1)) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257903.P7648164620711967191

/-! ## A257903.P7436012735913712721

`∑[and(A057428(n), A257904(n+1))]`
-/

namespace A257903.P7436012735913712721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A257904 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257903.P7436012735913712721

/-! ## A257903.P11137126976893228232

`∑[A000040(n+1)%2*A257904(n+1)]`
-/

namespace A257903.P11137126976893228232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A257904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257903.P11137126976893228232

/-! ## A257903.P16020892712955006729

`∑[A178334(A178334(n))*A257904(n+1)]`
-/

namespace A257903.P16020892712955006729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat * A257904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257903.P16020892712955006729

/-!
# A257904: Sequence (d(n)) generated by Algorithm (in Comments) with a(1) = 0 and d(1) = 2.

The programs for A257904, there is no canonical definition to state claims against.
-/

/-! ## A257904.P8264626007377340150

`A257915(n+1)-A305354(A001009(n+1))`
-/

namespace A257904.P8264626007377340150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257915 (n + 1) - A305354 (A001009 (n + 1)).toNat

end

end A257904.P8264626007377340150

/-! ## A257904.P3523598310676413244

`A057427(A251415(n+1))*A257915(n+1)-A346607(n+1)`
-/

namespace A257904.P3523598310676413244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A251415 (n + 1)).toNat * A257915 (n + 1) - A346607 (n + 1)

end

end A257904.P3523598310676413244

/-!
# A257905: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 0 and d(1) = 0.

The programs for A257905, there is no canonical definition to state claims against.
-/

/-! ## A257905.P8753965692852564474

`A258046(n+1)-1`
-/

namespace A257905.P8753965692852564474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) - 1

end

end A257905.P8753965692852564474

/-! ## A257905.P6532783131966538983

`∑[A258047(n+1)]`
-/

namespace A257905.P6532783131966538983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257905.P6532783131966538983

/-! ## A257905.P17137425653439552387

`A257985(n+1)-2`
-/

namespace A257905.P17137425653439552387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257985 (n + 1) - 2

end

end A257905.P17137425653439552387

/-! ## A257905.P12254643928007016781

`A258047(n+1)+a(A023443(n))` with `a(0)=0, a(1)=1`
-/

namespace A257905.P12254643928007016781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A258047 (n + 1) + a (A023443 n).toNat

end

end A257905.P12254643928007016781

/-! ## A257905.P14040835677220848891

`A023444(A257985(n+1))`
-/

namespace A257905.P14040835677220848891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A257985 (n + 1)).toNat

end

end A257905.P14040835677220848891

/-! ## A257905.P16410439926541525481

`A023443(A258046(n+1))`
-/

namespace A257905.P16410439926541525481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A258046 (n + 1)).toNat

end

end A257905.P16410439926541525481

/-!
# A257906: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 0 and d(1) = 1.

The programs for A257906, there is no canonical definition to state claims against.
-/

/-! ## A257906.P6814455330174411059

`∑[A257907(n+1)]-1`
-/

namespace A257906.P6814455330174411059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A257906.P6814455330174411059

/-! ## A257906.P16670514536361603096

`∑[A057427(n)*A257907(n+1)]`
-/

namespace A257906.P16670514536361603096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257906.P16670514536361603096

/-! ## A257906.P14543162329393167979

`∑[A257907(n+1)%A005408(n)]`
-/

namespace A257906.P14543162329393167979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257907 (n + 1)) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257906.P14543162329393167979

/-! ## A257906.P11826909932318554339

`∑[xor(A000007(n), A257907(n+1))]`
-/

namespace A257906.P11826909932318554339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A257907 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257906.P11826909932318554339

/-! ## A257906.P17276914304143796915

`A004526(A004273(∑[A257907(n+1)]))`
-/

namespace A257906.P17276914304143796915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A257906.P17276914304143796915

/-!
# A257907: After 1, the first differences of A257906 (its d-sequence).

The programs for A257907, there is no canonical definition to state claims against.
-/

/-! ## A257907.P15805046579124317320

`Δ[A257906(A028310(n))]+C(2, n+2)`
-/

namespace A257907.P15805046579124317320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A257907.P15805046579124317320

/-! ## A257907.P12781711445927280432

`A000007(n)+Δ[A257906(A028310(n))]`
-/

namespace A257907.P12781711445927280432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A257907.P12781711445927280432

/-! ## A257907.P17720633262198411826

`Δ[A257906(A028310(n))]+A008458(n)%2`
-/

namespace A257907.P17720633262198411826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A008458 n) 2

end

end A257907.P17720633262198411826

/-! ## A257907.P14052903491056644502

`A257906(n+1)+A000007(n)-A257906(A028310(n))`
-/

namespace A257907.P14052903491056644502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (n + 1) + (A000007 n - A257906 (A028310 n).toNat)

end

end A257907.P14052903491056644502

/-! ## A257907.P12089219231699794412

`Δ[A257906(A028310(n))+A057427(n)]`
-/

namespace A257907.P12089219231699794412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257907.P12089219231699794412

/-! ## A257907.P6264144390240611154

`Δ[A257906(A028310(n))-A057428(n)]`
-/

namespace A257907.P6264144390240611154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257907.P6264144390240611154

/-! ## A257907.P15658410269326539061

`Δ[A257906(A028310(n))+A159075(n+1)]`
-/

namespace A257907.P15658410269326539061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (A028310 n).toNat + A159075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257907.P15658410269326539061

/-! ## A257907.P572673777539680734

`A028310(A257906(n+1))-A257906(A028310(n))`
-/

namespace A257907.P572673777539680734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A257906 (n + 1)).toNat - A257906 (A028310 n).toNat

end

end A257907.P572673777539680734

/-!
# A257908: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 0 and d(1) = 2.

The programs for A257908, there is no canonical definition to state claims against.
-/

/-! ## A257908.P10798983699473321883

`A257983(n+1)-1`
-/

namespace A257908.P10798983699473321883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257983 (n + 1) - 1

end

end A257908.P10798983699473321883

/-! ## A257908.P1935825380618465333

`A257987(n+1)-2`
-/

namespace A257908.P1935825380618465333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257987 (n + 1) - 2

end

end A257908.P1935825380618465333

/-! ## A257908.P18062859365057189404

`∑[A257909(n+1)]-2`
-/

namespace A257908.P18062859365057189404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A257908.P18062859365057189404

/-! ## A257908.P6104609499464323852

`∑[n*A257909(n+1)/A028310(n)]`
-/

namespace A257908.P6104609499464323852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A257909 (n + 1) : ℚ) / (A028310 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257908.P6104609499464323852

/-! ## A257908.P15874262457799666882

`A023443(A257983(n+1))`
-/

namespace A257908.P15874262457799666882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257983 (n + 1)).toNat

end

end A257908.P15874262457799666882

/-! ## A257908.P13601941029635100250

`A023444(A257987(n+1))`
-/

namespace A257908.P13601941029635100250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A257987 (n + 1)).toNat

end

end A257908.P13601941029635100250

/-! ## A257908.P5769329104854061945

`∑[A257909(n+1)%A112417(n+2)]`
-/

namespace A257908.P5769329104854061945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257909 (n + 1)) (A112417 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257908.P5769329104854061945

/-!
# A257909: Sequence (d(n)) generated by Rule 3 (in Comments) with a(1) = 0 and d(1) = 2.

The programs for A257909, there is no canonical definition to state claims against.
-/

/-! ## A257909.P7441549997736578182

`A257987(n+1)-A057427(n)*A257987(A028310(n))`
-/

namespace A257909.P7441549997736578182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257987 (n + 1) - A057427 n * A257987 (A028310 n).toNat

end

end A257909.P7441549997736578182

/-! ## A257909.P1164743063404688886

`Δ[A057427(n)*A257987(A028310(n))]`
-/

namespace A257909.P1164743063404688886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257987 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257909.P1164743063404688886

/-! ## A257909.P8540030950221260849

`Δ[A257987(A028310(n))%A000040(n+1)]`
-/

namespace A257909.P8540030950221260849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257987 (A028310 n).toNat) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257909.P8540030950221260849

/-! ## A257909.P4020877331990150564

`Δ[A257987(A028310(n))%A001937(n)]`
-/

namespace A257909.P4020877331990150564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257987 (A028310 n).toNat) (A001937 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257909.P4020877331990150564

/-!
# A257910: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 0 and d(1) = 3.

The programs for A257910, there is no canonical definition to state claims against.
-/

/-! ## A257910.P2224331666186843858

`∑[A257980(n+1)]-3`
-/

namespace A257910.P2224331666186843858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A257910.P2224331666186843858

/-! ## A257910.P12656368359695513674

`∑[A257980(n+1)%A000124(n)]`
-/

namespace A257910.P12656368359695513674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257980 (n + 1)) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257910.P12656368359695513674

/-! ## A257910.P9065844150137425406

`∑[and(A057428(n), A257980(n+1))]`
-/

namespace A257910.P9065844150137425406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A257980 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257910.P9065844150137425406

/-! ## A257910.P14202789943824727157

`∑[A165481(n)²*A257980(n+1)]`
-/

namespace A257910.P14202789943824727157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n ^ 2 * A257980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257910.P14202789943824727157

/-! ## A257910.P13059606135212819566

`∑[A001222(A008578(n+1))*A257980(n+1)]`
-/

namespace A257910.P13059606135212819566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A257980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257910.P13059606135212819566

/-! ## A257910.P7757950187585240465

`∑[A054008(A088175(n+1))*A257980(n+1)]`
-/

namespace A257910.P7757950187585240465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (A088175 (n + 1)).toNat * A257980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257910.P7757950187585240465

/-!
# A257911: Sequence (a(n)) generated by Algorithm (in Comments) with a(1) = 2 and d(1) = 2.

The programs for A257911, there is no canonical definition to state claims against.
-/

/-! ## A257911.P9493802652945772306

`∑[A257912(n+1)]`
-/

namespace A257911.P9493802652945772306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257911.P9493802652945772306

/-! ## A257911.P6471261811504582951

`A257912(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A257911.P6471261811504582951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A257912 (n + 1) + a (A023443 n).toNat

end

end A257911.P6471261811504582951

/-! ## A257911.P17931263514719613438

`a(n-1)+A257912(n+1)%A000040(n+1)` with `a(0)=2`
-/

namespace A257911.P17931263514719613438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.tmod (A257912 (n + 1)) (A000040 (n + 1))

end

end A257911.P17931263514719613438

/-! ## A257911.P14534687576023686462

`a(n-1)+A345951(A006530(n+1))+A257912(n+1)` with `a(0)=2`
-/

namespace A257911.P14534687576023686462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A345951 (A006530 (n + 1)).toNat + A257912 (n + 1))

end

end A257911.P14534687576023686462

/-! ## A257911.P6844712724557571872

`a(n-1)+A257912(n+1)+A003982(A121250(n+1)/3)` with `a(0)=2`
-/

namespace A257911.P6844712724557571872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A257912 (n + 1) + A003982 (SequenceMachineLib.roundAway ((A121250 (n + 1) : ℚ) / 3)).toNat)

end

end A257911.P6844712724557571872

/-!
# A257912: Sequence (d(n)) generated by Algorithm (in Comments) with a(1) = 2 and d(1) = 2.

The programs for A257912, there is no canonical definition to state claims against.
-/

/-! ## A257912.P12546817371073254663

`Δ[A257911(A028310(n))%(2*(n+1))]`
-/

namespace A257912.P12546817371073254663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257911 (A028310 n).toNat) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257912.P12546817371073254663

/-! ## A257912.P15641865613891209916

`A000038(n)+Δ[A257911(A028310(n))]`
-/

namespace A257912.P15641865613891209916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A257912.P15641865613891209916

/-! ## A257912.P1431232919081531046

`A257911(n+1)+A000038(n)-A257911(A028310(n))`
-/

namespace A257912.P1431232919081531046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257911 (n + 1) + (A000038 n - A257911 (A028310 n).toNat)

end

end A257912.P1431232919081531046

/-! ## A257912.P884814037801945132

`A257911(n+1)-A057427(n)*A257911(A028310(n))`
-/

namespace A257912.P884814037801945132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257911 (n + 1) - A057427 n * A257911 (A028310 n).toNat

end

end A257912.P884814037801945132

/-! ## A257912.P3612532306428741471

`Δ[A057427(n)*A257911(A028310(n))]`
-/

namespace A257912.P3612532306428741471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257912.P3612532306428741471

/-! ## A257912.P1287881435052987087

`Δ[(1-A000007(n))*A257911(A028310(n))]`
-/

namespace A257912.P1287881435052987087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A257911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257912.P1287881435052987087

/-! ## A257912.P360683388377156898

`Δ[A051904(n²+1)*A257911(A028310(n))]`
-/

namespace A257912.P360683388377156898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n ^ 2 + 1) * A257911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257912.P360683388377156898

/-!
# A257915: Sequence (d(n)) generated by Rule 1 (in Comments) with a(1) = 0 and d(1) = 3.

The programs for A257915, there is no canonical definition to state claims against.
-/

/-! ## A257915.P6724819782352586959

`A305354(A001009(n+1))+A257904(n+1)`
-/

namespace A257915.P6724819782352586959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305354 (A001009 (n + 1)).toNat + A257904 (n + 1)

end

end A257915.P6724819782352586959

/-!
# A257916: a(n) is the largest x that is a member of a pair (x, y) of integers with x - y > 1 such that x^2 - y^2 is equal to the Fermat number 2^(2^n) + 1, or 0 if no such number exists.

The programs for A257916, there is no canonical definition to state claims against.
-/

/-! ## A257916.P17780609530454532269

`A257917(n)+A093179(n)%A070592(n)`
-/

namespace A257916.P17780609530454532269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257917 n + Int.tmod (A093179 n) (A070592 n)

end

end A257916.P17780609530454532269

/-!
# A257917: a(n) is the largest y that is a member of a pair (x, y) of integers with x - y > 1 such that x^2 - y^2 is equal to the Fermat number 2^(2^n) + 1, or 0 if no such number exists.

The programs for A257917, there is no canonical definition to state claims against.
-/

/-! ## A257917.P18241734474497262890

`(A070592(n)-A093179(n))/2`
-/

namespace A257917.P18241734474497262890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070592 n - A093179 n : ℚ) / 2

end

end A257917.P18241734474497262890

/-! ## A257917.P14098701385686995235

`(A070592(n)-A257916(n))%A070592(n)`
-/

namespace A257917.P14098701385686995235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070592 n - A257916 n) (A070592 n)

end

end A257917.P14098701385686995235

/-! ## A257917.P784008515804074389

`(A070592(n)-A257916(n))*∑[A235046(n)]`
-/

namespace A257917.P784008515804074389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070592 n - A257916 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257917.P784008515804074389

/-!
# A257918: Sequence (d(n)) generated by Rule 1 (in Comments) with a(1) = 2 and d(1) = 2.

The programs for A257918, there is no canonical definition to state claims against.
-/

/-! ## A257918.P7239523643306438562

`Δ[A257882(A028310(n))%(2*n+1)]`
-/

namespace A257918.P7239523643306438562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257882 (A028310 n).toNat) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257918.P7239523643306438562

/-! ## A257918.P16103829136891576948

`A000038(n)+Δ[A257882(A028310(n))]`
-/

namespace A257918.P16103829136891576948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A257918.P16103829136891576948

/-! ## A257918.P5661569705097676716

`Δ[A019431(2*n)*A257882(A028310(n))]`
-/

namespace A257918.P5661569705097676716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n) * A257882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257918.P5661569705097676716

/-! ## A257918.P3346057636505487538

`A257882(n+1)+A000038(n)-A257882(A028310(n))`
-/

namespace A257918.P3346057636505487538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257882 (n + 1) + (A000038 n - A257882 (A028310 n).toNat)

end

end A257918.P3346057636505487538

/-! ## A257918.P16311528237516010765

`A257882(n+1)-A057427(n)*A257882(A028310(n))`
-/

namespace A257918.P16311528237516010765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257882 (n + 1) - A057427 n * A257882 (A028310 n).toNat

end

end A257918.P16311528237516010765

/-! ## A257918.P1121892076941102248

`Δ[A057427(n)*A257882(A028310(n))]`
-/

namespace A257918.P1121892076941102248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A257882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257918.P1121892076941102248

/-! ## A257918.P11583255754911121760

`A014197(2*n+1)+Δ[A257882(A028310(n))]`
-/

namespace A257918.P11583255754911121760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A257918.P11583255754911121760

/-!
# A257920: Expansion of phi(x) * psi(x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A257920, there is no canonical definition to state claims against.
-/

/-! ## A257920.P16205414659292108471

`A129402(4*n+1)`
-/

namespace A257920.P16205414659292108471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (4 * n + 1)

end

end A257920.P16205414659292108471

/-! ## A257920.P13723738216774522399

`A134177(4*n+1)`
-/

namespace A257920.P13723738216774522399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (4 * n + 1)

end

end A257920.P13723738216774522399

/-! ## A257920.P11598542398852767716

`A000377(8*n+3)`
-/

namespace A257920.P11598542398852767716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (8 * n + 3)

end

end A257920.P11598542398852767716

/-! ## A257920.P5446588784630324172

`A192013(8*n+3)`
-/

namespace A257920.P5446588784630324172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (8 * n + 3)

end

end A257920.P5446588784630324172

/-! ## A257920.P16814642800061021642

`A261119(2*n)`
-/

namespace A257920.P16814642800061021642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261119 (2 * n)

end

end A257920.P16814642800061021642

/-! ## A257920.P14758309320304593035

`A257921(2*n)`
-/

namespace A257920.P14758309320304593035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (2 * n)

end

end A257920.P14758309320304593035

/-! ## A257920.P2997992783667515592

`A260308(3*n+1)`
-/

namespace A257920.P2997992783667515592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260308 (3 * n + 1)

end

end A257920.P2997992783667515592

/-! ## A257920.P2436769747739691587

`A261118(6*n+2)`
-/

namespace A257920.P2436769747739691587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261118 (6 * n + 2)

end

end A257920.P2436769747739691587

/-! ## A257920.P13515861265051492747

`A259668(A016933(n))`
-/

namespace A257920.P13515861265051492747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (A016933 n).toNat

end

end A257920.P13515861265051492747

/-! ## A257920.P2700211702641780765

`A259668(A008588(n)+2)`
-/

namespace A257920.P2700211702641780765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (A008588 n + 2).toNat

end

end A257920.P2700211702641780765

/-! ## A257920.P5929019989299183104

`A259668(A016789(2*n))`
-/

namespace A257920.P5929019989299183104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (A016789 (2 * n)).toNat

end

end A257920.P5929019989299183104

/-! ## A257920.P6550520504222598940

`A128580(A017569(n))`
-/

namespace A257920.P6550520504222598940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (A017569 n).toNat

end

end A257920.P6550520504222598940

/-! ## A257920.P5937923114816562771

`A128580(A016957(2*n))`
-/

namespace A257920.P5937923114816562771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (A016957 (2 * n)).toNat

end

end A257920.P5937923114816562771

/-! ## A257920.P6946294718371068156

`A115660(A017137(2*n))`
-/

namespace A257920.P6946294718371068156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A017137 (2 * n)).toNat

end

end A257920.P6946294718371068156

/-! ## A257920.P9029052976203293128

`A115660(A123169(2*(n+1))+2)`
-/

namespace A257920.P9029052976203293128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A123169 (2 * (n + 1)) + 2).toNat

end

end A257920.P9029052976203293128

/-! ## A257920.P9643855835281705074

`A115660(A017629(2*n))`
-/

namespace A257920.P9643855835281705074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A017629 (2 * n)).toNat

end

end A257920.P9643855835281705074

/-! ## A257920.P29856136190685747

`A128581(A098502(2*n+1))`
-/

namespace A257920.P29856136190685747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (A098502 (2 * n + 1)).toNat

end

end A257920.P29856136190685747

/-!
# A257921: Expansion of f(x^2, -x^4) * f(-x, -x^5)^2 / f(-x^12, -x^12) in powers of x where f(, ) is Ramanujan's general theta functions.

The programs for A257921, there is no canonical definition to state claims against.
-/

/-! ## A257921.P8097478838852839712

`(-1)^n*A261119(n)`
-/

namespace A257921.P8097478838852839712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A261119 n

end

end A257921.P8097478838852839712

/-! ## A257921.P2695055811044992514

`A134177(2*n+1)`
-/

namespace A257921.P2695055811044992514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (2 * n + 1)

end

end A257921.P2695055811044992514

/-! ## A257921.P12685467570297793403

`-A128580(2*n+1)`
-/

namespace A257921.P12685467570297793403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128580 (2 * n + 1)

end

end A257921.P12685467570297793403

/-! ## A257921.P3770232852516914386

`-A115660(4*n+3)`
-/

namespace A257921.P3770232852516914386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115660 (4 * n + 3)

end

end A257921.P3770232852516914386

/-! ## A257921.P14523309617915371044

`A033999(n)*A129402(2*n+1)`
-/

namespace A257921.P14523309617915371044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129402 (2 * n + 1)

end

end A257921.P14523309617915371044

/-! ## A257921.P8517345070997084655

`A000007(n+1)-A128580(2*n+1)`
-/

namespace A257921.P8517345070997084655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A128580 (2 * n + 1)

end

end A257921.P8517345070997084655

/-! ## A257921.P13142373562778512430

`A000038(n+1)-A128580(2*n+1)`
-/

namespace A257921.P13142373562778512430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A128580 (2 * n + 1)

end

end A257921.P13142373562778512430

/-! ## A257921.P14541891104026193995

`A033999(n+1)*A190615(2*n+1)`
-/

namespace A257921.P14541891104026193995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A190615 (2 * n + 1)

end

end A257921.P14541891104026193995

/-! ## A257921.P3129951387854816686

`A057077(2*n)*A129402(2*n+1)`
-/

namespace A257921.P3129951387854816686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A129402 (2 * n + 1)

end

end A257921.P3129951387854816686

/-! ## A257921.P4423689058115511075

`A087960(2*n)*A129402(2*n+1)`
-/

namespace A257921.P4423689058115511075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A129402 (2 * n + 1)

end

end A257921.P4423689058115511075

/-! ## A257921.P7176411650795341801

`abs(A128580(2*n+1))*A057077(2*n)`
-/

namespace A257921.P7176411650795341801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128580 (2 * n + 1)| * A057077 (2 * n)

end

end A257921.P7176411650795341801

/-! ## A257921.P11271759985532690562

`abs(A190615(2*n+1))*A057077(2*n)`
-/

namespace A257921.P11271759985532690562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190615 (2 * n + 1)| * A057077 (2 * n)

end

end A257921.P11271759985532690562

/-! ## A257921.P3349242340028599281

`1-(A128580(2*n+1)+A033999(2*n))`
-/

namespace A257921.P3349242340028599281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A128580 (2 * n + 1) + A033999 (2 * n))

end

end A257921.P3349242340028599281

/-! ## A257921.P1050313120824732519

`A259668(3*n+2)`
-/

namespace A257921.P1050313120824732519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (3 * n + 2)

end

end A257921.P1050313120824732519

/-! ## A257921.P17109985943047764294

`A128580(A016957(n))`
-/

namespace A257921.P17109985943047764294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (A016957 n).toNat

end

end A257921.P17109985943047764294

/-! ## A257921.P1868478098069391828

`A115660(A017137(n))`
-/

namespace A257921.P1868478098069391828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A017137 n).toNat

end

end A257921.P1868478098069391828

/-! ## A257921.P5630689883997059976

`A115660(A017629(n))`
-/

namespace A257921.P5630689883997059976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A017629 n).toNat

end

end A257921.P5630689883997059976

/-! ## A257921.P5096757739416713940

`A128581(A098502(n+1))`
-/

namespace A257921.P5096757739416713940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (A098502 (n + 1)).toNat

end

end A257921.P5096757739416713940

/-!
# A257924: Primes p with p-1, p+1, prime(p)-1 and prime(p)+1 all practical.

The programs for A257924, there is no canonical definition to state claims against.
-/

/-! ## A257924.P8986484723684618051

`∩[A210479(n+1), A000720(A210479(n+1))]`
-/

namespace A257924.P8986484723684618051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A210479 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257924.P8986484723684618051

/-!
# A257925: a(n) = (n^2 - n + 1)*(n^2 + n - 1).

The programs for A257925, the canonical program `A257925.P851030566232390717` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257925 has offset 1).

The definition of A257925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257925.P851030566232390717

`(n+1)^4-n²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257925

/-- `(n+1)^4-n²` -/
def P851030566232390717.Spec : Prop :=
  ∀ n, P851030566232390717.a n = A257925 (n + 1)

theorem P851030566232390717.correct : P851030566232390717.Spec := by
  intro n
  simp only [A257925, Nat.add_sub_cancel]

end A257925

/-! ## A257925.P7525322214235293050

`or(1, (n+1)²²-n²)`
-/

namespace A257925.P7525322214235293050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((n + 1) ^ 2) ^ 2 : ℤ) - (n ^ 2 : ℤ))

end

end A257925.P7525322214235293050

namespace A257925

/-- `or(1, (n+1)²²-n²)` -/
def P7525322214235293050.Spec : Prop :=
  ∀ n, P7525322214235293050.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P5065933282799723370

`abs(record[(1-n)^4]-n²)`
-/

namespace A257925.P5065933282799723370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 : ℤ)|

end

end A257925.P5065933282799723370

namespace A257925

/-- `abs(record[(1-n)^4]-n²)` -/
def P5065933282799723370.Spec : Prop :=
  ∀ n, P5065933282799723370.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P14582796390481003553

`abs(xor(n, -1)²²-n²)`
-/

namespace A257925.P14582796390481003553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.xor (n : ℤ) (-1) ^ 2) ^ 2 - (n ^ 2 : ℤ)|

end

end A257925.P14582796390481003553

namespace A257925

/-- `abs(xor(n, -1)²²-n²)` -/
def P14582796390481003553.Spec : Prop :=
  ∀ n, P14582796390481003553.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P5597561587384285201

`abs(record[(n-1)²]²-n²)`
-/

namespace A257925.P5597561587384285201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - (n ^ 2 : ℤ)|

end

end A257925.P5597561587384285201

namespace A257925

/-- `abs(record[(n-1)²]²-n²)` -/
def P5597561587384285201.Spec : Prop :=
  ∀ n, P5597561587384285201.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P15296823562934061856

`lcm(∑[2*n]+1, (n+1)²+n)`
-/

namespace A257925.P15296823562934061856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((n + 1) ^ 2 + n)

end

end A257925.P15296823562934061856

namespace A257925

/-- `lcm(∑[2*n]+1, (n+1)²+n)` -/
def P15296823562934061856.Spec : Prop :=
  ∀ n, (P15296823562934061856.a n : ℤ) = A257925 (n + 1)

end A257925

/-! ## A257925.P16431465642038186637

`floor(∑[a(n-1)+2]²-n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A257925.P16431465642038186637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A257925.P16431465642038186637

namespace A257925

/-- `floor(∑[a(n-1)+2]²-n²)` -/
def P16431465642038186637.Spec : Prop :=
  ∀ n, P16431465642038186637.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P341680281433919558

`floor((n+1)²²-a(n-1)/n²)` with `a(0)=1`
-/

namespace A257925.P341680281433919558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((n + 1) ^ 2) ^ 2 : ℚ) - (a (n - 1) : ℚ) / (n ^ 2 : ℚ)⌋

end

end A257925.P341680281433919558

namespace A257925

/-- `floor((n+1)²²-a(n-1)/n²)` -/
def P341680281433919558.Spec : Prop :=
  ∀ n, P341680281433919558.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P9871263808331266147

`((n+1)²+n)*(∑[a(n-1)+2]+1)` with `a(0)=0`
-/

namespace A257925.P9871263808331266147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257925.P9871263808331266147

namespace A257925

/-- `((n+1)²+n)*(∑[a(n-1)+2]+1)` -/
def P9871263808331266147.Spec : Prop :=
  ∀ n, (P9871263808331266147.a n : ℤ) = A257925 (n + 1)

end A257925

/-! ## A257925.P9778825810552780064

`Δ[A303916(n)+n²]`
-/

namespace A257925.P9778825810552780064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303916 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257925.P9778825810552780064

namespace A257925

/-- `Δ[A303916(n)+n²]` -/
def P9778825810552780064.Spec : Prop :=
  ∀ n, P9778825810552780064.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P4913047144968953066

`(n²+1+n)*A028387(n)`
-/

namespace A257925.P4913047144968953066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * A028387 n

end

end A257925.P4913047144968953066

namespace A257925

/-- `(n²+1+n)*A028387(n)` -/
def P4913047144968953066.Spec : Prop :=
  ∀ n, P4913047144968953066.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P7417667228401099622

`abs((n+1)²²-A000290(n))`
-/

namespace A257925.P7417667228401099622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) ^ 2) ^ 2 : ℤ) - A000290 n|

end

end A257925.P7417667228401099622

namespace A257925

/-- `abs((n+1)²²-A000290(n))` -/
def P7417667228401099622.Spec : Prop :=
  ∀ n, P7417667228401099622.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P11905268686483330424

`((n+1)²+n)*∑[A004277(n)]`
-/

namespace A257925.P11905268686483330424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257925.P11905268686483330424

namespace A257925

/-- `((n+1)²+n)*∑[A004277(n)]` -/
def P11905268686483330424.Spec : Prop :=
  ∀ n, P11905268686483330424.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P18034472326029052628

`A002061(n+1)*((n+1)²+n)`
-/

namespace A257925.P18034472326029052628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * ((n + 1) ^ 2 + n : ℤ)

end

end A257925.P18034472326029052628

namespace A257925

/-- `A002061(n+1)*((n+1)²+n)` -/
def P18034472326029052628.Spec : Prop :=
  ∀ n, P18034472326029052628.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P13150124487794886638

`((n+1)²+n)*(A005563(n)-(n-1))`
-/

namespace A257925.P13150124487794886638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * (A005563 n - ((n : ℤ) - 1))

end

end A257925.P13150124487794886638

namespace A257925

/-- `((n+1)²+n)*(A005563(n)-(n-1))` -/
def P13150124487794886638.Spec : Prop :=
  ∀ n, P13150124487794886638.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P13854581063008458094

`abs(2*∑[lcm(n, A000217(2*n+1))+1]-1)`
-/

namespace A257925.P13854581063008458094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000217 (2 * n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1|

end

end A257925.P13854581063008458094

namespace A257925

/-- `abs(2*∑[lcm(n, A000217(2*n+1))+1]-1)` -/
def P13854581063008458094.Spec : Prop :=
  ∀ n, P13854581063008458094.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P4264534783727246595

`(∑[a(n-1)+2]+1)*abs(n-A028872(n+2))` with `a(0)=0`
-/

namespace A257925.P4264534783727246595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * |(n : ℤ) - A028872 (n + 2)|

end

end A257925.P4264534783727246595

namespace A257925

/-- `(∑[a(n-1)+2]+1)*abs(n-A028872(n+2))` -/
def P4264534783727246595.Spec : Prop :=
  ∀ n, P4264534783727246595.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P8373981768603558697

`record[Δ[A147685(n)]²-A147685(n)]`
-/

namespace A257925.P8373981768603558697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - A147685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257925.P8373981768603558697

namespace A257925

/-- `record[Δ[A147685(n)]²-A147685(n)]` -/
def P8373981768603558697.Spec : Prop :=
  ∀ n, P8373981768603558697.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P10776668254755472651

`A028387(n)*A033638(2*n+1)`
-/

namespace A257925.P10776668254755472651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n * A033638 (2 * n + 1)

end

end A257925.P10776668254755472651

namespace A257925

/-- `A028387(n)*A033638(2*n+1)` -/
def P10776668254755472651.Spec : Prop :=
  ∀ n, P10776668254755472651.a n = A257925 (n + 1)

end A257925

/-! ## A257925.P14670638834943459024

`A130404(2*n+1)*A140144(2*n+1)`
-/

namespace A257925.P14670638834943459024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (2 * n + 1) * A140144 (2 * n + 1)

end

end A257925.P14670638834943459024

namespace A257925

/-- `A130404(2*n+1)*A140144(2*n+1)` -/
def P14670638834943459024.Spec : Prop :=
  ∀ n, P14670638834943459024.a n = A257925 (n + 1)

end A257925

/-!
# A257926: Least positive integer k such that prime(k*n)+2 = prime(i*n)*prime(j*n) for some 0 < i < j.

The programs for A257926, there is no canonical definition to state claims against.
-/

/-! ## A257926.P13055422429240887169

`floor(A223544(A002110(n+1)+1)/(n+1))+3`
-/

namespace A257926.P13055422429240887169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A223544 (A002110 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)⌋ + 3

end

end A257926.P13055422429240887169

/-!
# A257927: Array read by antidiagonals: M[i,j] = j-th decimal digit of (i+1)/(i-1) for i, j = 1,2,3,4,5,... or 0 if undefined.

The programs for A257927, there is no canonical definition to state claims against.
-/

/-! ## A257927.P3475543684943594864

`A265578(n+3)*A265604(A265608(n))`
-/

namespace A257927.P3475543684943594864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265578 (n + 3) * A265604 (A265608 n).toNat

end

end A257927.P3475543684943594864

/-! ## A257927.P4754246266845120396

`A265576(n+5)*A265604(A265608(n))`
-/

namespace A257927.P4754246266845120396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265576 (n + 5) * A265604 (A265608 n).toNat

end

end A257927.P4754246266845120396

/-! ## A257927.P50388232441220573

`A014963(A104249(n))*A265604(A265608(n))`
-/

namespace A257927.P50388232441220573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A104249 n).toNat * A265604 (A265608 n).toNat

end

end A257927.P50388232441220573

/-! ## A257927.P3148407594083809250

`A014963(A265611(n))*A265604(A265608(n))`
-/

namespace A257927.P3148407594083809250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A265611 n).toNat * A265604 (A265608 n).toNat

end

end A257927.P3148407594083809250

/-!
# A257931: Period 24 sequence [0, 1, 1, 0, -2, -1, 0, 1, 0, 0, -1, -1, 0, 1, 1, 0, 0, -1, 0, 1, 2, 0, -1, -1].

The programs for A257931, the canonical program `A257931.P9957961478944527783` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257931 has offset 0).

The definition of A257931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257931.P9957961478944527783

`A128834(n)*A259042(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257931

/-- `A128834(n)*A259042(n)` -/
def P9957961478944527783.Spec : Prop :=
  ∀ n, P9957961478944527783.a n = A257931 n

theorem P9957961478944527783.correct : P9957961478944527783.Spec := by
  intro n
  simp only [A257931]

end A257931

/-!
# A257932: Expansion of 1/(1-x-x^2-x^3+x^5+x^7).

The programs for A257932, the canonical program `A257932.P1210586149485258582` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257932 has offset 0).

The definition of A257932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257932.P1210586149485258582

`a(n-1)+a(n-2)+a(n-3)-a(n-5)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=12, a(6)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257932

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)-a(n-7)` -/
def P1210586149485258582.Spec : Prop :=
  ∀ n, P1210586149485258582.a n = A257932 n

theorem P1210586149485258582.correct : P1210586149485258582.Spec := by
  intro n
  simp only [A257932]

end A257932

/-! ## A257932.P15669929121946854989

`A233522(2*n)`
-/

namespace A257932.P15669929121946854989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (2 * n)

end

end A257932.P15669929121946854989

namespace A257932

/-- `A233522(2*n)` -/
def P15669929121946854989.Spec : Prop :=
  ∀ n, P15669929121946854989.a n = A257932 n

end A257932

/-! ## A257932.P10447027763107067686

`A017830(2*n+5)`
-/

namespace A257932.P10447027763107067686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017830 (2 * n + 5)

end

end A257932.P10447027763107067686

namespace A257932

/-- `A017830(2*n+5)` -/
def P10447027763107067686.Spec : Prop :=
  ∀ n, P10447027763107067686.a n = A257932 n

end A257932

/-! ## A257932.P1801738205108300204

`A193147(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A257932.P1801738205108300204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A193147 n + a (n - 2)

end

end A257932.P1801738205108300204

namespace A257932

/-- `A193147(n)+a(n-2)` -/
def P1801738205108300204.Spec : Prop :=
  ∀ n, P1801738205108300204.a n = A257932 n

end A257932

/-! ## A257932.P14008637836153109290

`A060945(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A257932.P14008637836153109290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A060945 n + a (n - 3)

end

end A257932.P14008637836153109290

namespace A257932

/-- `A060945(n)+a(n-3)` -/
def P14008637836153109290.Spec : Prop :=
  ∀ n, P14008637836153109290.a n = A257932 n

end A257932

/-! ## A257932.P2276779781738015083

`∑[A003520(2*n+1)-A017818(2*n+1)]`
-/

namespace A257932.P2276779781738015083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (2 * n + 1) - A017818 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257932.P2276779781738015083

namespace A257932

/-- `∑[A003520(2*n+1)-A017818(2*n+1)]` -/
def P2276779781738015083.Spec : Prop :=
  ∀ n, P2276779781738015083.a n = A257932 n

end A257932

/-! ## A257932.P14165453031689043729

`A233522(n+n)+A064834(A064834(n))`
-/

namespace A257932.P14165453031689043729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (n + n) + A064834 (A064834 n).toNat

end

end A257932.P14165453031689043729

namespace A257932

/-- `A233522(n+n)+A064834(A064834(n))` -/
def P14165453031689043729.Spec : Prop :=
  ∀ n, P14165453031689043729.a n = A257932 n

end A257932

/-! ## A257932.P7446136117019989764

`round(A247907(2*n)/ratio[A247907(2*n+1)])`
-/

namespace A257932.P7446136117019989764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A247907 (2 * n) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A257932.P7446136117019989764

namespace A257932

/-- `round(A247907(2*n)/ratio[A247907(2*n+1)])` -/
def P7446136117019989764.Spec : Prop :=
  ∀ n, P7446136117019989764.a n = A257932 n

end A257932

/-! ## A257932.P5407403796083026472

`A233522(n+n)/A046854(∑[n])`
-/

namespace A257932.P5407403796083026472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233522 (n + n) : ℚ) / (A046854 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A257932.P5407403796083026472

namespace A257932

/-- `A233522(n+n)/A046854(∑[n])` -/
def P5407403796083026472.Spec : Prop :=
  ∀ n, P5407403796083026472.a n = (A257932 n : ℚ)

end A257932

/-!
# A257933: Prime p such that sqrt(p+2) is semiprime (A001358).

The programs for A257933, the canonical program `A257933.P18337127937814611987` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257933 has offset 1).

The definition of A257933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257933.P11629612828760070996

`record[A059772(A046315(n+1))]`
-/

namespace A257933.P11629612828760070996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A046315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257933.P11629612828760070996

namespace A257933

/-- `record[A059772(A046315(n+1))]` -/
def P11629612828760070996.Spec : Prop :=
  ∀ n, P11629612828760070996.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P13438491333503890699

`record[A059772(sqrt(A075730(n+1)))]`
-/

namespace A257933.P13438491333503890699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (SequenceMachineLib.roundAway (Real.sqrt (A075730 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257933.P13438491333503890699

namespace A257933

/-- `record[A059772(sqrt(A075730(n+1)))]` -/
def P13438491333503890699.Spec : Prop :=
  ∀ n, P13438491333503890699.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P18337127937814611987

`record[A164314(sqrt(A075730(n+1)))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A257933

/-- `record[A164314(sqrt(A075730(n+1)))]` -/
def P18337127937814611987.Spec : Prop :=
  ∀ n, P18337127937814611987.a n = A257933 (n + 1)

theorem P18337127937814611987.correct : P18337127937814611987.Spec := by
  intro n
  simp only [A257933, Nat.add_sub_cancel]

end A257933

/-! ## A257933.P11243101382597407143

`A059772(∩[A001358(n+1), A028870(n+1)])`
-/

namespace A257933.P11243101382597407143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A257933.P11243101382597407143

namespace A257933

/-- `A059772(∩[A001358(n+1), A028870(n+1)])` -/
def P11243101382597407143.Spec : Prop :=
  ∀ n, P11243101382597407143.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P5964371460955858818

`A113425(∩[A001358(n+1), A028870(n+1)])`
-/

namespace A257933.P5964371460955858818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A257933.P5964371460955858818

namespace A257933

/-- `A113425(∩[A001358(n+1), A028870(n+1)])` -/
def P5964371460955858818.Spec : Prop :=
  ∀ n, P5964371460955858818.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P14937583309559510575

`p?[A074985(n+1)-2]`
-/

namespace A257933.P14937583309559510575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257933.P14937583309559510575

namespace A257933

/-- `p?[A074985(n+1)-2]` -/
def P14937583309559510575.Spec : Prop :=
  ∀ n, P14937583309559510575.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P7774957335459863233

`p?[A001358(n+1)²-2]`
-/

namespace A257933.P7774957335459863233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257933.P7774957335459863233

namespace A257933

/-- `p?[A001358(n+1)²-2]` -/
def P7774957335459863233.Spec : Prop :=
  ∀ n, P7774957335459863233.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P12031573462203342200

`p?[A176540(n+1)²-2]`
-/

namespace A257933.P12031573462203342200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257933.P12031573462203342200

namespace A257933

/-- `p?[A176540(n+1)²-2]` -/
def P12031573462203342200.Spec : Prop :=
  ∀ n, P12031573462203342200.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P7924949975984534608

`p?[record[A179312(n+1)²-2]]`
-/

namespace A257933.P7924949975984534608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1) ^ 2 - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257933.P7924949975984534608

namespace A257933

/-- `p?[record[A179312(n+1)²-2]]` -/
def P7924949975984534608.Spec : Prop :=
  ∀ n, P7924949975984534608.a n = A257933 (n + 1)

end A257933

/-! ## A257933.P4200299694351668418

`p?[record[A210615(n+1)²-2]]`
-/

namespace A257933.P4200299694351668418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1) ^ 2 - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257933.P4200299694351668418

namespace A257933

/-- `p?[record[A210615(n+1)²-2]]` -/
def P4200299694351668418.Spec : Prop :=
  ∀ n, P4200299694351668418.a n = A257933 (n + 1)

end A257933

/-!
# A257934: Expansion of 1/(1-x-x^2-x^3-x^4+x^5+x^6+x^7).

The programs for A257934, the canonical program `A257934.P15340406107944310212` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257934 has offset 0).

The definition of A257934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257934.P16171070780000376575

`∑[A283834(n)]`
-/

namespace A257934.P16171070780000376575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257934.P16171070780000376575

namespace A257934

/-- `∑[A283834(n)]` -/
def P16171070780000376575.Spec : Prop :=
  ∀ n, P16171070780000376575.a n = A257934 n

end A257934

/-! ## A257934.P15340406107944310212

`A154949(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257934

/-- `A154949(n)-a(n-2)` -/
def P15340406107944310212.Spec : Prop :=
  ∀ n, P15340406107944310212.a n = A257934 n

theorem P15340406107944310212.correct : P15340406107944310212.Spec := by
  intro n
  simp only [A257934]

end A257934

/-! ## A257934.P1070845851154731088

`∑[A075111(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A257934.P1070845851154731088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A075111 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257934.P1070845851154731088

namespace A257934

/-- `∑[A075111(n+1)-a(n-1)]` -/
def P1070845851154731088.Spec : Prop :=
  ∀ n, P1070845851154731088.a n = A257934 n

end A257934

/-! ## A257934.P16842959048938263524

`ceil(∑[A135491(n)/4])`
-/

namespace A257934.P16842959048938263524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135491 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A257934.P16842959048938263524

namespace A257934

/-- `ceil(∑[A135491(n)/4])` -/
def P16842959048938263524.Spec : Prop :=
  ∀ n, P16842959048938263524.a n = A257934 n

end A257934

/-! ## A257934.P5090032683737451974

`ceil(A008937(n+1)/2)`
-/

namespace A257934.P5090032683737451974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008937 (n + 1) : ℚ) / 2⌉

end

end A257934.P5090032683737451974

namespace A257934

/-- `ceil(A008937(n+1)/2)` -/
def P5090032683737451974.Spec : Prop :=
  ∀ n, P5090032683737451974.a n = A257934 n

end A257934

/-! ## A257934.P1910214132879194415

`floor(A192804(n+3)/2)`
-/

namespace A257934.P1910214132879194415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192804 (n + 3) : ℚ) / 2⌋

end

end A257934.P1910214132879194415

namespace A257934

/-- `floor(A192804(n+3)/2)` -/
def P1910214132879194415.Spec : Prop :=
  ∀ n, P1910214132879194415.a n = A257934 n

end A257934

/-! ## A257934.P3556095060601239992

`ceil(Δ[A062544(n)/2])`
-/

namespace A257934.P3556095060601239992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062544 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A257934.P3556095060601239992

namespace A257934

/-- `ceil(Δ[A062544(n)/2])` -/
def P3556095060601239992.Spec : Prop :=
  ∀ n, P3556095060601239992.a n = A257934 n

end A257934

/-! ## A257934.P9938416366082650751

`floor(A288465(n+1)/4)`
-/

namespace A257934.P9938416366082650751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288465 (n + 1) : ℚ) / 4⌋

end

end A257934.P9938416366082650751

namespace A257934

/-- `floor(A288465(n+1)/4)` -/
def P9938416366082650751.Spec : Prop :=
  ∀ n, P9938416366082650751.a n = A257934 n

end A257934

/-! ## A257934.P4687345938808261434

`ceil(A054668(n+2)/4)`
-/

namespace A257934.P4687345938808261434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054668 (n + 2) : ℚ) / 4⌉

end

end A257934.P4687345938808261434

namespace A257934

/-- `ceil(A054668(n+2)/4)` -/
def P4687345938808261434.Spec : Prop :=
  ∀ n, P4687345938808261434.a n = A257934 n

end A257934

/-! ## A257934.P10184452999616924119

`round(A000213(n+3)/4)`
-/

namespace A257934.P10184452999616924119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000213 (n + 3) : ℚ) / 4)

end

end A257934.P10184452999616924119

namespace A257934

/-- `round(A000213(n+3)/4)` -/
def P10184452999616924119.Spec : Prop :=
  ∀ n, P10184452999616924119.a n = A257934 n

end A257934

/-! ## A257934.P4751872810718599970

`round(Δ[A027053(n+2)]/4)`
-/

namespace A257934.P4751872810718599970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 4)

end

end A257934.P4751872810718599970

namespace A257934

/-- `round(Δ[A027053(n+2)]/4)` -/
def P4751872810718599970.Spec : Prop :=
  ∀ n, P4751872810718599970.a n = A257934 n

end A257934

/-! ## A257934.P8301862565156592072

`ceil(∑[A106522(∑[n])/2])`
-/

namespace A257934.P8301862565156592072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106522 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A257934.P8301862565156592072

namespace A257934

/-- `ceil(∑[A106522(∑[n])/2])` -/
def P8301862565156592072.Spec : Prop :=
  ∀ n, P8301862565156592072.a n = A257934 n

end A257934

/-!
# A257935: Numerators of the inverse binomial transform of the Bernoulli numbers with B(1)=1.

The programs for A257935, there is no canonical definition to state claims against.
-/

/-! ## A257935.P3009754657831845361

`2*A027641(n)*A176591(n)/A027642(n)-A176328(n)`
-/

namespace A257935.P3009754657831845361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027641 n * A176591 n : ℚ) / (A027642 n : ℚ) - (A176328 n : ℚ)

end

end A257935.P3009754657831845361

/-! ## A257935.P16426436861864316152

`A027641(n)+A176289(n)*A176447(n)`
-/

namespace A257935.P16426436861864316152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + A176289 n * A176447 n

end

end A257935.P16426436861864316152

/-! ## A257935.P14216746971912226615

`A027641(n)+A176327(n)-A176328(n)`
-/

namespace A257935.P14216746971912226615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + (A176327 n - A176328 n)

end

end A257935.P14216746971912226615

/-! ## A257935.P2338491652061789056

`A164555(n)+n*A176447(A027642(n))`
-/

namespace A257935.P2338491652061789056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + (n : ℤ) * A176447 (A027642 n).toNat

end

end A257935.P2338491652061789056

/-! ## A257935.P6137836770967371940

`A176447(A164869(n))+A164555(n)`
-/

namespace A257935.P6137836770967371940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (A164869 n).toNat + A164555 n

end

end A257935.P6137836770967371940

/-!
# A257936: Decimal expansion of 11/18.

The programs for A257936, the canonical program `A257936.P1433214307643496463` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257936 has offset 0).

The definition of A257936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257936.P1433214307643496463

`floor(cosh(acot(n))²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257936

/-- `floor(cosh(acot(n))²)` -/
def P1433214307643496463.Spec : Prop :=
  ∀ n, P1433214307643496463.a n = A257936 n

theorem P1433214307643496463.correct : P1433214307643496463.Spec := by
  intro n
  simp only [A257936]

end A257936

/-!
# A257939: x-values in the solutions to x^2 + x = 5*y^2 + y.

The programs for A257939, the canonical program `A257939.P9408379655323665726` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257939 has offset 1).

The definition of A257939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257939.P9408379655323665726

`322*a(n-2)-a(n-4)+160` with `a(0)=0, a(1)=2, a(2)=116, a(3)=798`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257939

/-- `322*a(n-2)-a(n-4)+160` -/
def P9408379655323665726.Spec : Prop :=
  ∀ n, P9408379655323665726.a n = A257939 (n + 1)

theorem P9408379655323665726.correct : P9408379655323665726.Spec := by
  intro n
  simp only [A257939, Nat.add_sub_cancel]

end A257939

/-! ## A257939.P13754354885258780708

`floor(sqrt(5)*A257940(n+1))`
-/

namespace A257939.P13754354885258780708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (5 : ℝ) * (A257940 (n + 1) : ℝ)⌋

end

end A257939.P13754354885258780708

namespace A257939

/-- `floor(sqrt(5)*A257940(n+1))` -/
def P13754354885258780708.Spec : Prop :=
  ∀ n, P13754354885258780708.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P11899542644795807321

`A077259(A042948(n))`
-/

namespace A257939.P11899542644795807321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077259 (A042948 n).toNat

end

end A257939.P11899542644795807321

namespace A257939

/-- `A077259(A042948(n))` -/
def P11899542644795807321.Spec : Prop :=
  ∀ n, P11899542644795807321.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P5563108835418236217

`A004695(A087445(n+1))`
-/

namespace A257939.P5563108835418236217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A087445 (n + 1)).toNat

end

end A257939.P5563108835418236217

namespace A257939

/-- `A004695(A087445(n+1))` -/
def P5563108835418236217.Spec : Prop :=
  ∀ n, P5563108835418236217.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P15047778772250523982

`A293014(A092899(n+1))`
-/

namespace A257939.P15047778772250523982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (A092899 (n + 1)).toNat

end

end A257939.P15047778772250523982

namespace A257939

/-- `A293014(A092899(n+1))` -/
def P15047778772250523982.Spec : Prop :=
  ∀ n, P15047778772250523982.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P1599764321057436278

`A293014(or(2, A016921(n)))`
-/

namespace A257939.P1599764321057436278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (Int.lor 2 (A016921 n)).toNat

end

end A257939.P1599764321057436278

namespace A257939

/-- `A293014(or(2, A016921(n)))` -/
def P1599764321057436278.Spec : Prop :=
  ∀ n, P1599764321057436278.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P4733873712851356808

`A293014(or(2, A271114(n)))`
-/

namespace A257939.P4733873712851356808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (Int.lor 2 (A271114 n)).toNat

end

end A257939.P4733873712851356808

namespace A257939

/-- `A293014(or(2, A271114(n)))` -/
def P4733873712851356808.Spec : Prop :=
  ∀ n, P4733873712851356808.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P9344799639478514531

`A293014(or(3, A008458(n)))`
-/

namespace A257939.P9344799639478514531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (Int.lor 3 (A008458 n)).toNat

end

end A257939.P9344799639478514531

namespace A257939

/-- `A293014(or(3, A008458(n)))` -/
def P9344799639478514531.Spec : Prop :=
  ∀ n, P9344799639478514531.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P8513131469834997621

`A293014(or(3, A008588(n)))`
-/

namespace A257939.P8513131469834997621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (Int.lor 3 (A008588 n)).toNat

end

end A257939.P8513131469834997621

namespace A257939

/-- `A293014(or(3, A008588(n)))` -/
def P8513131469834997621.Spec : Prop :=
  ∀ n, P8513131469834997621.a n = A257939 (n + 1)

end A257939

/-! ## A257939.P1248411113543761038

`A201864(A092899(n+1)-2)`
-/

namespace A257939.P1248411113543761038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (A092899 (n + 1) - 2).toNat

end

end A257939.P1248411113543761038

namespace A257939

/-- `A201864(A092899(n+1)-2)` -/
def P1248411113543761038.Spec : Prop :=
  ∀ n, P1248411113543761038.a n = A257939 (n + 1)

end A257939

/-!
# A257940: y-values in the solutions to x^2 + x = 5*y^2 + y.

The programs for A257940, the canonical program `A257940.P16923459079447526993` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257940 has offset 1).

The definition of A257940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257940.P16923459079447526993

`322*a(n-2)-a(n-4)+32` with `a(0)=0, a(1)=1, a(2)=52, a(3)=357`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257940

/-- `322*a(n-2)-a(n-4)+32` -/
def P16923459079447526993.Spec : Prop :=
  ∀ n, P16923459079447526993.a n = A257940 (n + 1)

theorem P16923459079447526993.correct : P16923459079447526993.Spec := by
  intro n
  simp only [A257940, Nat.add_sub_cancel]

end A257940

/-! ## A257940.P11960247134355588563

`round(A257939(n+1)/sqrt(5))`
-/

namespace A257940.P11960247134355588563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257939 (n + 1) : ℝ) / Real.sqrt (5 : ℝ))

end

end A257940.P11960247134355588563

namespace A257940

/-- `round(A257939(n+1)/sqrt(5))` -/
def P11960247134355588563.Spec : Prop :=
  ∀ n, P11960247134355588563.a n = A257940 (n + 1)

end A257940

/-! ## A257940.P9044327048871085472

`A059840(char[2*n]+3*n)/2`
-/

namespace A257940.P9044327048871085472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059840 ((if ∃ j, f1 j = n then 1 else 0) + 3 * n) : ℚ) / 2

end

end A257940.P9044327048871085472

namespace A257940

/-- `A059840(char[2*n]+3*n)/2` -/
def P9044327048871085472.Spec : Prop :=
  ∀ n, P9044327048871085472.a n = (A257940 (n + 1) : ℚ)

end A257940

/-! ## A257940.P7402110732723152951

`floor(A206351(floor((3*n+2)/2))/2)`
-/

namespace A257940.P7402110732723152951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206351 ⌊(3 * n + 2 : ℚ) / 2⌋.toNat : ℚ) / 2⌋

end

end A257940.P7402110732723152951

namespace A257940

/-- `floor(A206351(floor((3*n+2)/2))/2)` -/
def P7402110732723152951.Spec : Prop :=
  ∀ n, P7402110732723152951.a n = A257940 (n + 1)

end A257940

/-! ## A257940.P8852337230630461147

`A343010(A042963(n+1))`
-/

namespace A257940.P8852337230630461147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343010 (A042963 (n + 1)).toNat

end

end A257940.P8852337230630461147

namespace A257940

/-- `A343010(A042963(n+1))` -/
def P8852337230630461147.Spec : Prop :=
  ∀ n, P8852337230630461147.a n = A257940 (n + 1)

end A257940

/-! ## A257940.P16621716959763167747

`A343010(A264120(n+2))`
-/

namespace A257940.P16621716959763167747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343010 (A264120 (n + 2)).toNat

end

end A257940.P16621716959763167747

namespace A257940

/-- `A343010(A264120(n+2))` -/
def P16621716959763167747.Spec : Prop :=
  ∀ n, P16621716959763167747.a n = A257940 (n + 1)

end A257940

/-! ## A257940.P4166201888998272103

`A001654(A047238(n+1))/2`
-/

namespace A257940.P4166201888998272103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 (A047238 (n + 1)).toNat : ℚ) / 2

end

end A257940.P4166201888998272103

namespace A257940

/-- `A001654(A047238(n+1))/2` -/
def P4166201888998272103.Spec : Prop :=
  ∀ n, P4166201888998272103.a n = (A257940 (n + 1) : ℚ)

end A257940

/-! ## A257940.P7360997992265053342

`A000045(xor(1, 3*n))*A001076(n)`
-/

namespace A257940.P7360997992265053342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 (3 * n)) * A001076 n

end

end A257940.P7360997992265053342

namespace A257940

/-- `A000045(xor(1, 3*n))*A001076(n)` -/
def P7360997992265053342.Spec : Prop :=
  ∀ n, P7360997992265053342.a n = A257940 (n + 1)

end A257940

/-!
# A257942: a(n) = (n+1)*(n+2)/A014695(n+1), where A014695 is repeat (1, 2, 2, 1).

The programs for A257942, the canonical program `A257942.P16711899769373221867` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257942 has offset 0).

The definition of A257942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257942.P16711899769373221867

`(n+1)*(n+2)/A014695(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A257942

/-- `(n+1)*(n+2)/A014695(n+1)` -/
def P16711899769373221867.Spec : Prop :=
  ∀ n, P16711899769373221867.a n = (A257942 n : ℚ)

end A257942

/-! ## A257942.P14265850988137162836

`and(2, n)!*∑[n+1]`
-/

namespace A257942.P14265850988137162836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257942.P14265850988137162836

namespace A257942

/-- `and(2, n)!*∑[n+1]` -/
def P14265850988137162836.Spec : Prop :=
  ∀ n, (P14265850988137162836.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P13362446743254404540

`log2(and(2, n)+2)*∑[n+1]`
-/

namespace A257942.P13362446743254404540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.land 2 n + 2 : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A257942.P13362446743254404540

namespace A257942

/-- `log2(and(2, n)+2)*∑[n+1]` -/
def P13362446743254404540.Spec : Prop :=
  ∀ n, P13362446743254404540.a n = (A257942 n : ℝ)

end A257942

/-! ## A257942.P14576807044100837499

`gcd(2, ∑[n+1])*∑[n+1]`
-/

namespace A257942.P14576807044100837499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A257942.P14576807044100837499

namespace A257942

/-- `gcd(2, ∑[n+1])*∑[n+1]` -/
def P14576807044100837499.Spec : Prop :=
  ∀ n, (P14576807044100837499.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P4233077093712953110

`(char[or(2, n)]+1)*∑[n+1]`
-/

namespace A257942.P4233077093712953110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A257942.P4233077093712953110

namespace A257942

/-- `(char[or(2, n)]+1)*∑[n+1]` -/
def P4233077093712953110.Spec : Prop :=
  ∀ n, (P4233077093712953110.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P3681003621490607391

`(and(2, n)+2)*∑[n+1]/2`
-/

namespace A257942.P3681003621490607391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.land 2 n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A257942.P3681003621490607391

namespace A257942

/-- `(and(2, n)+2)*∑[n+1]/2` -/
def P3681003621490607391.Spec : Prop :=
  ∀ n, P3681003621490607391.a n = (A257942 n : ℚ)

end A257942

/-! ## A257942.P1023108795709470706

`gcd(∑[n+1]², ∑[n+2+n])`
-/

namespace A257942.P1023108795709470706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A257942.P1023108795709470706

namespace A257942

/-- `gcd(∑[n+1]², ∑[n+2+n])` -/
def P1023108795709470706.Spec : Prop :=
  ∀ n, (P1023108795709470706.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P18112031715072283458

`(2-∑[n+1]%2)*∑[n+1]`
-/

namespace A257942.P18112031715072283458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A257942.P18112031715072283458

namespace A257942

/-- `(2-∑[n+1]%2)*∑[n+1]` -/
def P18112031715072283458.Spec : Prop :=
  ∀ n, P18112031715072283458.a n = A257942 n

end A257942

/-! ## A257942.P6843365941366922973

`(2-and(1, ∑[n+1]))*∑[n+1]`
-/

namespace A257942.P6843365941366922973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A257942.P6843365941366922973

namespace A257942

/-- `(2-and(1, ∑[n+1]))*∑[n+1]` -/
def P6843365941366922973.Spec : Prop :=
  ∀ n, P6843365941366922973.a n = A257942 n

end A257942

/-! ## A257942.P7075035600486577

`((∑[n]+n)%2+1)*∑[n+1]`
-/

namespace A257942.P7075035600486577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n) % 2 + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A257942.P7075035600486577

namespace A257942

/-- `((∑[n]+n)%2+1)*∑[n+1]` -/
def P7075035600486577.Spec : Prop :=
  ∀ n, (P7075035600486577.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P18379952209363939474

`lcm(∑[n]%2+1+n, ∑[n+1])`
-/

namespace A257942.P18379952209363939474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1 + n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A257942.P18379952209363939474

namespace A257942

/-- `lcm(∑[n]%2+1+n, ∑[n+1])` -/
def P18379952209363939474.Spec : Prop :=
  ∀ n, (P18379952209363939474.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P7888398068958566006

`(2-∑[∑[(-1)^∑[n]]])*∑[n+1]`
-/

namespace A257942.P7888398068958566006
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A257942.P7888398068958566006

namespace A257942

/-- `(2-∑[∑[(-1)^∑[n]]])*∑[n+1]` -/
def P7888398068958566006.Spec : Prop :=
  ∀ n, P7888398068958566006.a n = A257942 n

end A257942

/-! ## A257942.P5654831290540977111

`lcm(n+1, n+2)/and(2, n+2)!`
-/

namespace A257942.P5654831290540977111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℚ) / (Nat.factorial (Nat.land 2 (n + 2)) : ℚ)

end

end A257942.P5654831290540977111

namespace A257942

/-- `lcm(n+1, n+2)/and(2, n+2)!` -/
def P5654831290540977111.Spec : Prop :=
  ∀ n, P5654831290540977111.a n = (A257942 n : ℚ)

end A257942

/-! ## A257942.P15812086407221025074

`∑[n+2+n]/A000041(and(2, n-2))`
-/

namespace A257942.P15812086407221025074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000041 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A257942.P15812086407221025074

namespace A257942

/-- `∑[n+2+n]/A000041(and(2, n-2))` -/
def P15812086407221025074.Spec : Prop :=
  ∀ n, P15812086407221025074.a n = (A257942 n : ℚ)

end A257942

/-! ## A257942.P11402066835581437013

`lcm(A069834(n+1), A098181(n))`
-/

namespace A257942.P11402066835581437013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069834 (n + 1)) (A098181 n)

end

end A257942.P11402066835581437013

namespace A257942

/-- `lcm(A069834(n+1), A098181(n))` -/
def P11402066835581437013.Spec : Prop :=
  ∀ n, (P11402066835581437013.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P3515977955819300393

`A226089(n+1)+A160050(n+1)`
-/

namespace A257942.P3515977955819300393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226089 (n + 1) + A160050 (n + 1)

end

end A257942.P3515977955819300393

namespace A257942

/-- `A226089(n+1)+A160050(n+1)` -/
def P3515977955819300393.Spec : Prop :=
  ∀ n, P3515977955819300393.a n = A257942 n

end A257942

/-! ## A257942.P7133623740658410546

`A130658(n)+2*A160050(n+1)`
-/

namespace A257942.P7133623740658410546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 n + 2 * A160050 (n + 1)

end

end A257942.P7133623740658410546

namespace A257942

/-- `A130658(n)+2*A160050(n+1)` -/
def P7133623740658410546.Spec : Prop :=
  ∀ n, P7133623740658410546.a n = A257942 n

end A257942

/-! ## A257942.P14607278226405072820

`2*A226089(n+1)-A130658(n)`
-/

namespace A257942.P14607278226405072820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226089 (n + 1) - A130658 n

end

end A257942.P14607278226405072820

namespace A257942

/-- `2*A226089(n+1)-A130658(n)` -/
def P14607278226405072820.Spec : Prop :=
  ∀ n, P14607278226405072820.a n = A257942 n

end A257942

/-! ## A257942.P16647433991271222119

`lcm(A089594(n+1), A389244(n+1))`
-/

namespace A257942.P16647433991271222119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089594 (n + 1)) (A389244 (n + 1))

end

end A257942.P16647433991271222119

namespace A257942

/-- `lcm(A089594(n+1), A389244(n+1))` -/
def P16647433991271222119.Spec : Prop :=
  ∀ n, (P16647433991271222119.a n : ℤ) = A257942 n

end A257942

/-! ## A257942.P488498152480499363

`A002378(n+1)/A014695(n+1)`
-/

namespace A257942.P488498152480499363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A014695 (n + 1) : ℚ)

end

end A257942.P488498152480499363

namespace A257942

/-- `A002378(n+1)/A014695(n+1)` -/
def P488498152480499363.Spec : Prop :=
  ∀ n, P488498152480499363.a n = (A257942 n : ℚ)

end A257942

/-!
# A257943: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (1 + 3^(n-1)*(2*k - 1))/2, n,k >= 1.

The programs for A257943, there is no canonical definition to state claims against.
-/

/-! ## A257943.P7165959298648933838

`A279724(A038722(n+1))`
-/

namespace A257943.P7165959298648933838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (A038722 (n + 1)).toNat

end

end A257943.P7165959298648933838

/-! ## A257943.P13326251778615970739

`A279724(A061579(n)+1)`
-/

namespace A257943.P13326251778615970739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (A061579 n + 1).toNat

end

end A257943.P13326251778615970739

/-! ## A257943.P883547515150816649

`A279724(A093995(n+1)-n)`
-/

namespace A257943.P883547515150816649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A257943.P883547515150816649

/-! ## A257943.P10377565706398397493

`A279724(A002024(n+1)²-n)`
-/

namespace A257943.P10377565706398397493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A257943.P10377565706398397493

/-! ## A257943.P11654964143607759295

`A279724(n-(A002260(n+1)-A004736(n+1))+1)`
-/

namespace A257943.P11654964143607759295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 ((n : ℤ) - (A002260 (n + 1) - A004736 (n + 1)) + 1).toNat

end

end A257943.P11654964143607759295

/-! ## A257943.P593211749490600320

`A014682(A140303(n)*A158405(n+1)+1)`
-/

namespace A257943.P593211749490600320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A140303 n * A158405 (n + 1) + 1).toNat

end

end A257943.P593211749490600320

/-!
# A257949: The q-series expansion of an expression related to fermionic systems.

The programs for A257949, there is no canonical definition to state claims against.
-/

/-! ## A257949.P6489305058972948280

`A259825(∑{d}[A094083(n+1), #])`
-/

namespace A257949.P6489305058972948280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A257949.P6489305058972948280

/-! ## A257949.P14795965531691411063

`A000217(n^5-n^3)%A007283(n)`
-/

namespace A257949.P14795965531691411063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n ^ 5 - n ^ 3)) (A007283 n)

end

end A257949.P14795965531691411063

/-! ## A257949.P12421950985732570752

`A004012(gcd(2, ∏{p}[n, #])-A325669(2*n+1))`
-/

namespace A257949.P12421950985732570752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 ((Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) - A325669 (2 * n + 1)).toNat

end

end A257949.P12421950985732570752

/-!
# A257950: Numbers n which are both happy (A007770) and bihappy (A257795) numbers.

The programs for A257950, there is no canonical definition to state claims against.
-/

/-! ## A257950.P15777365076479988451

`∩[A007770(n+1), A257795(n+1)]`
-/

namespace A257950.P15777365076479988451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257950.P15777365076479988451

/-!
# A257952: Number of ways to quarter a 2n X 2n chessboard.

The programs for A257952, there is no canonical definition to state claims against.
-/

/-! ## A257952.P6194237317683067245

`A006067(round(sqrt(n²+1))+n)`
-/

namespace A257952.P6194237317683067245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006067 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (n : ℤ)).toNat

end

end A257952.P6194237317683067245

/-! ## A257952.P11750465372710445060

`A006067(A004277(n))-A326682(n)`
-/

namespace A257952.P11750465372710445060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006067 (A004277 n).toNat - A326682 n

end

end A257952.P11750465372710445060

/-! ## A257952.P12728564752602478053

`or(A006067(A004277(n)), A267417(n))`
-/

namespace A257952.P12728564752602478053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006067 (A004277 n).toNat) (A267417 n)

end

end A257952.P12728564752602478053

/-! ## A257952.P10837059259860835387

`A326682(n+2)+A006067(A004277(n))`
-/

namespace A257952.P10837059259860835387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 (n + 2) + A006067 (A004277 n).toNat

end

end A257952.P10837059259860835387

/-! ## A257952.P12226629961150071994

`∏{e}[A000079(n)², A006067(#)]`
-/

namespace A257952.P12226629961150071994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006067 (Nat.factorization (f1 n).natAbs p)

end

end A257952.P12226629961150071994

/-!
# A257956: Row sums of A232642, when seen as a triangle read by rows.

The programs for A257956, the canonical program `A257956.P14711192361252430162` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257956 has offset 1).

The definition of A257956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257956.P14711192361252430162

`3*a(n-1)+a(n-2)-4*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=74`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257956

/-- `3*a(n-1)+a(n-2)-4*a(n-3)-2*a(n-4)` -/
def P14711192361252430162.Spec : Prop :=
  ∀ n, P14711192361252430162.a n = A257956 (n + 1)

theorem P14711192361252430162.correct : P14711192361252430162.Spec := by
  intro n
  simp only [A257956, Nat.add_sub_cancel]

end A257956

/-!
# A257961: List of permutations of the intervals of numbers [0,F(n)) defined by x -> x*F(n-1) mod F(n), where F(n) is the n-th Fibonacci number A000045.

The programs for A257961, the canonical program `A257961.P6712114334569259527` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257961 has offset 0).

The definition of A257961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257961.P6712114334569259527

`(A087172(n+1)*A194029(n+1))%A130312(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A257961

/-- `(A087172(n+1)*A194029(n+1))%A130312(n+1)` -/
def P6712114334569259527.Spec : Prop :=
  ∀ n, P6712114334569259527.a n = A257961 n

theorem P6712114334569259527.correct : P6712114334569259527.Spec := by
  intro n
  simp only [A257961]

end A257961

/-! ## A257961.P14856953645177158093

`A004396(A131898(n))%A134478(n)`
-/

namespace A257961.P14856953645177158093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A131898 n).toNat) (A134478 n)

end

end A257961.P14856953645177158093

namespace A257961

/-- `A004396(A131898(n))%A134478(n)` -/
def P14856953645177158093.Spec : Prop :=
  ∀ n, P14856953645177158093.a n = A257961 n

end A257961

/-! ## A257961.P11719060496769508639

`A118103(A073603(n+1))%A008619(n)`
-/

namespace A257961.P11719060496769508639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118103 (A073603 (n + 1)).toNat) (A008619 n)

end

end A257961.P11719060496769508639

namespace A257961

/-- `A118103(A073603(n+1))%A008619(n)` -/
def P11719060496769508639.Spec : Prop :=
  ∀ n, P11719060496769508639.a n = A257961 n

end A257961

/-! ## A257961.P6756566944530826587

`and(A027892(n+1), A075120(A027892(n+1)))`
-/

namespace A257961.P6756566944530826587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027892 (n + 1)) (A075120 (A027892 (n + 1)).toNat)

end

end A257961.P6756566944530826587

namespace A257961

/-- `and(A027892(n+1), A075120(A027892(n+1)))` -/
def P6756566944530826587.Spec : Prop :=
  ∀ n, P6756566944530826587.a n = A257961 n

end A257961

/-!
# A257962: List of successive permutations of the numbers [0,F(n)) achieved by writing the numbers in the Fibonacci/Zeckendorf radix in the form of an (n-2)-bit string, reversing that string, and extracting the numerical value according to Fibonacci/Zeckendorf radix.

The programs for A257962, there is no canonical definition to state claims against.
-/

/-! ## A257962.P12723224764201495775

`A193564(A349238(n+2)+1)`
-/

namespace A257962.P12723224764201495775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (A349238 (n + 2) + 1).toNat

end

end A257962.P12723224764201495775

/-! ## A257962.P9780008655513323432

`A019586(A345201(n+2))`
-/

namespace A257962.P9780008655513323432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A345201 (n + 2)).toNat

end

end A257962.P9780008655513323432

/-! ## A257962.P15662600976729238455

`A019586(A349238(n+2))`
-/

namespace A257962.P15662600976729238455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A349238 (n + 2)).toNat

end

end A257962.P15662600976729238455

/-! ## A257962.P9093699061480388991

`A060144(A349238(n+2)+1)`
-/

namespace A257962.P9093699061480388991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A349238 (n + 2) + 1).toNat

end

end A257962.P9093699061480388991

/-! ## A257962.P2482919378114255926

`A066628(A343150(n+2))`
-/

namespace A257962.P2482919378114255926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A343150 (n + 2)).toNat

end

end A257962.P2482919378114255926

/-!
# A257965: Numbers n such that n^3 = a^2 + b^2 and a^3 + b^3 is a square, for some positive integers a and b.

The programs for A257965, there is no canonical definition to state claims against.
-/

/-! ## A257965.P14329459257505493829

`A165775(A345894(n+1))`
-/

namespace A257965.P14329459257505493829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165775 (A345894 (n + 1)).toNat

end

end A257965.P14329459257505493829

/-! ## A257965.P13302836560156938496

`2*A340588(n+1)-A049084(A143600(n))`
-/

namespace A257965.P13302836560156938496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340588 (n + 1) - A049084 (A143600 n).toNat

end

end A257965.P13302836560156938496

/-!
# A257967: Primes in the 11th-order Fibonacci numbers A127624.

The programs for A257967, there is no canonical definition to state claims against.
-/

/-! ## A257967.P9863291143217560657

`A127624(A257966(n+1))`
-/

namespace A257967.P9863291143217560657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127624 (A257966 (n + 1)).toNat

end

end A257967.P9863291143217560657

/-!
# A257969: Numbers m such that the sum of the digits (sod) of m, m^2, m^3, ..., m^9 are in arithmetic progression: sod(m^(k+1)) - sod(m^k) = f for k=1..8.

The programs for A257969, there is no canonical definition to state claims against.
-/

/-! ## A257969.P3831314036196123215

`A290553(n)-A076282(A001006(n))`
-/

namespace A257969.P3831314036196123215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290553 n - A076282 (A001006 n).toNat

end

end A257969.P3831314036196123215

/-!
# A257970: a(1) = 1, a(2) = 2, a(3) = 5; thereafter a(n) = 2 * Sum_{k=1..n-1} a(k).

The programs for A257970, the canonical program `A257970.P17846954330185068187` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257970 has offset 1).

The definition of A257970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257970.P17846954330185068187

`3*a(n-1)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=16`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257970

/-- `3*a(n-1)` -/
def P17846954330185068187.Spec : Prop :=
  ∀ n, (P17846954330185068187.a n : ℤ) = A257970 (n + 1)

theorem P17846954330185068187.correct : P17846954330185068187.Spec := by
  intro n
  simp only [A257970, Nat.add_sub_cancel]

end A257970

/-! ## A257970.P17273728468498451027

`round(16*3^(n-3))`
-/

namespace A257970.P17273728468498451027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

end

end A257970.P17273728468498451027

namespace A257970

/-- `round(16*3^(n-3))` -/
def P17273728468498451027.Spec : Prop :=
  ∀ n, P17273728468498451027.a n = A257970 (n + 1)

end A257970

/-! ## A257970.P1542192386066642249

`A326339(A028310(n))+A025579(n+1)`
-/

namespace A257970.P1542192386066642249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (A028310 n).toNat + A025579 (n + 1)

end

end A257970.P1542192386066642249

namespace A257970

/-- `A326339(A028310(n))+A025579(n+1)` -/
def P1542192386066642249.Spec : Prop :=
  ∀ n, P1542192386066642249.a n = A257970 (n + 1)

end A257970

/-! ## A257970.P13062456931758967640

`A326339(n+1)+A326339(A254667(n))`
-/

namespace A257970.P13062456931758967640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1) + A326339 (A254667 n).toNat

end

end A257970.P13062456931758967640

namespace A257970

/-- `A326339(n+1)+A326339(A254667(n))` -/
def P13062456931758967640.Spec : Prop :=
  ∀ n, P13062456931758967640.a n = A257970 (n + 1)

end A257970

/-! ## A257970.P7884823359163211598

`abs(∏[-a(n-1)])-A118264(n)` with `a(0)=2, a(1)=1, a(2)=4, a(3)=3`
-/

namespace A257970.P7884823359163211598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| - A118264 n

end

end A257970.P7884823359163211598

namespace A257970

/-- `abs(∏[-a(n-1)])-A118264(n)` -/
def P7884823359163211598.Spec : Prop :=
  ∀ n, P7884823359163211598.a n = A257970 (n + 1)

end A257970

/-! ## A257970.P14597727498209735531

`∑[2*A118264(n)]-A118264(n)`
-/

namespace A257970.P14597727498209735531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118264 n

end

end A257970.P14597727498209735531

namespace A257970

/-- `∑[2*A118264(n)]-A118264(n)` -/
def P14597727498209735531.Spec : Prop :=
  ∀ n, P14597727498209735531.a n = A257970 (n + 1)

end A257970

/-! ## A257970.P17549306099067737578

`ceil(A036546(n)/27)`
-/

namespace A257970.P17549306099067737578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036546 n : ℚ) / 27⌉

end

end A257970.P17549306099067737578

namespace A257970

/-- `ceil(A036546(n)/27)` -/
def P17549306099067737578.Spec : Prop :=
  ∀ n, P17549306099067737578.a n = A257970 (n + 1)

end A257970

/-! ## A257970.P2765735207770019770

`ceil(A036547(n)/54)`
-/

namespace A257970.P2765735207770019770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036547 n : ℚ) / 54⌉

end

end A257970.P2765735207770019770

namespace A257970

/-- `ceil(A036547(n)/54)` -/
def P2765735207770019770.Spec : Prop :=
  ∀ n, P2765735207770019770.a n = A257970 (n + 1)

end A257970

/-!
# A257971: First differences of A006921.

The programs for A257971, the canonical program `A257971.P6494718642675388464` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257971 has offset 0).

The definition of A257971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257971.P6494718642675388464

`Δ[xor((2-n%2)*a(n-1), a(n-2))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257971

/-- `Δ[xor((2-n%2)*a(n-1), a(n-2))]` -/
def P6494718642675388464.Spec : Prop :=
  ∀ n, P6494718642675388464.a n = A257971 n

theorem P6494718642675388464.correct : P6494718642675388464.Spec := by
  intro n
  simp only [A257971]

end A257971

/-! ## A257971.P5907366388691902213

`Δ[A006921(n)]`
-/

namespace A257971.P5907366388691902213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257971.P5907366388691902213

namespace A257971

/-- `Δ[A006921(n)]` -/
def P5907366388691902213.Spec : Prop :=
  ∀ n, P5907366388691902213.a n = A257971 n

end A257971

/-! ## A257971.P14186005690792915925

`A006921(n+1)-A006921(n)`
-/

namespace A257971.P14186005690792915925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 (n + 1) - A006921 n

end

end A257971.P14186005690792915925

namespace A257971

/-- `A006921(n+1)-A006921(n)` -/
def P14186005690792915925.Spec : Prop :=
  ∀ n, P14186005690792915925.a n = A257971 n

end A257971

/-! ## A257971.P8632756875443445938

`Δ[A068915(A168081(n+1))]`
-/

namespace A257971.P8632756875443445938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 (A168081 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257971.P8632756875443445938

namespace A257971

/-- `Δ[A068915(A168081(n+1))]` -/
def P8632756875443445938.Spec : Prop :=
  ∀ n, P8632756875443445938.a n = A257971 n

end A257971

/-! ## A257971.P3450309653336233358

`Δ[A068915(A260022(n)-A168081(n))]`
-/

namespace A257971.P3450309653336233358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 (A260022 n - A168081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257971.P3450309653336233358

namespace A257971

/-- `Δ[A068915(A260022(n)-A168081(n))]` -/
def P3450309653336233358.Spec : Prop :=
  ∀ n, P3450309653336233358.a n = A257971 n

end A257971

/-!
# A257974: Prime numbers that are not the sum of one or more consecutive triangular numbers.

The programs for A257974, there is no canonical definition to state claims against.
-/

/-! ## A257974.P1745324832430553394

`p?[A050941(n+1)]`
-/

namespace A257974.P1745324832430553394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257974.P1745324832430553394

/-! ## A257974.P8285606270442076241

`filter[A050941(n+1), A010051(#)]`
-/

namespace A257974.P8285606270442076241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A257974.P8285606270442076241

/-! ## A257974.P896080752535027919

`filter[A050941(n+1), A302777(#)]`
-/

namespace A257974.P896080752535027919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A257974.P896080752535027919

/-! ## A257974.P2196310581004045837

`filter[A050941(n+1), A323153(#)]`
-/

namespace A257974.P2196310581004045837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A257974.P2196310581004045837

/-! ## A257974.P13477303008182023108

`filter[A050941(n+1), A355937(#)]`
-/

namespace A257974.P13477303008182023108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A257974.P13477303008182023108

/-! ## A257974.P13362972754018769435

`∩[A000040(n+1), A050941(n+1)]`
-/

namespace A257974.P13362972754018769435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P13362972754018769435

/-! ## A257974.P3301088468131124524

`∩[A000430(n+1), A050941(n+1)]`
-/

namespace A257974.P3301088468131124524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P3301088468131124524

/-! ## A257974.P1180744460693963995

`∩[A008578(n+1), A050941(n+1)]`
-/

namespace A257974.P1180744460693963995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P1180744460693963995

/-! ## A257974.P2790581113144008515

`∩[A009087(n+1), A050941(n+1)]`
-/

namespace A257974.P2790581113144008515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P2790581113144008515

/-! ## A257974.P4131662205538715525

`∩[A033946(n+1), A050941(n+1)]`
-/

namespace A257974.P4131662205538715525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P4131662205538715525

/-! ## A257974.P15145531877515202534

`∩[A045344(n+1), A050941(n+1)]`
-/

namespace A257974.P15145531877515202534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P15145531877515202534

/-! ## A257974.P5715975225125632955

`∩[A046022(n+1), A050941(n+1)]`
-/

namespace A257974.P5715975225125632955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P5715975225125632955

/-! ## A257974.P7557888804622807490

`∩[A050376(n+1), A050941(n+1)]`
-/

namespace A257974.P7557888804622807490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P7557888804622807490

/-! ## A257974.P7817082528271093370

`∩[A050941(n+1), A053813(n+1)]`
-/

namespace A257974.P7817082528271093370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P7817082528271093370

/-! ## A257974.P15581552024922371037

`∩[A050941(n+1), A062972(n+1)]`
-/

namespace A257974.P15581552024922371037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P15581552024922371037

/-! ## A257974.P2680360023617255677

`∩[A050941(n+1), A066050(n+1)]`
-/

namespace A257974.P2680360023617255677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P2680360023617255677

/-! ## A257974.P12215194158458701382

`∩[A050941(n+1), A067126(n+1)]`
-/

namespace A257974.P12215194158458701382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P12215194158458701382

/-! ## A257974.P16334831869059848599

`∩[A050941(n+1), A084400(n+1)]`
-/

namespace A257974.P16334831869059848599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P16334831869059848599

/-! ## A257974.P17555963438129834926

`∩[A050941(n+1), A089237(n+1)]`
-/

namespace A257974.P17555963438129834926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P17555963438129834926

/-! ## A257974.P15498955025185831595

`∩[A050941(n+1), A116974(n+1)]`
-/

namespace A257974.P15498955025185831595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257974.P15498955025185831595

/-!
# A257977: Largest k such that there are at least k numbers b_i, 1 <= b_i <= n, each having gcd(b_i,n) >= k.

The programs for A257977, there is no canonical definition to state claims against.
-/

/-! ## A257977.P7337189163019981729

`A058318(∑{d}[A095118(n+1), #])`
-/

namespace A257977.P7337189163019981729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A257977.P7337189163019981729

/-! ## A257977.P15528183647645748281

`A210568(∑{d}[A095118(n+1), #])-1`
-/

namespace A257977.P15528183647645748281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210568 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - 1

end

end A257977.P15528183647645748281

/-! ## A257977.P4485641545134529418

`A070966(A058013(3*n+1)*A070966(n+1))`
-/

namespace A257977.P4485641545134529418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070966 (A058013 (3 * n + 1) * A070966 (n + 1)).toNat

end

end A257977.P4485641545134529418

/-!
# A257979: Smallest prime p for which exactly n primes k with k < p exist such that F_p-(p/k) == 0 (mod p), where F_i = A000045(i) and (a/b) denotes the Legendre symbol, or 0 if no such p exists.

The programs for A257979, there is no canonical definition to state claims against.
-/

/-! ## A257979.P5804966362545649153

`A221858(A210875(n+2)+n)`
-/

namespace A257979.P5804966362545649153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221858 (A210875 (n + 2) + (n : ℤ)).toNat

end

end A257979.P5804966362545649153

/-! ## A257979.P14577183880737555224

`A000040(A386482(n+1)+A002372(n+1))`
-/

namespace A257979.P14577183880737555224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A386482 (n + 1) + A002372 (n + 1)).toNat

end

end A257979.P14577183880737555224

/-!
# A257981: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 1 and d(1) = 1.

The programs for A257981, there is no canonical definition to state claims against.
-/

/-! ## A257981.P8620376729125972629

`∑[A257982(n+1)]`
-/

namespace A257981.P8620376729125972629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257981.P8620376729125972629

/-! ## A257981.P16246242514768373487

`A257986(n+1)-1`
-/

namespace A257981.P16246242514768373487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257986 (n + 1) - 1

end

end A257981.P16246242514768373487

/-! ## A257981.P6566111251993553676

`A257982(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A257981.P6566111251993553676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257982 (n + 1) + a (A023443 n).toNat

end

end A257981.P6566111251993553676

/-! ## A257981.P1049419056159124332

`A257982(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A257981.P1049419056159124332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257982 (A028310 n + 1).toNat + a (n - 1)

end

end A257981.P1049419056159124332

/-! ## A257981.P7348096870883529244

`A023443(A257986(n+1))`
-/

namespace A257981.P7348096870883529244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257986 (n + 1)).toNat

end

end A257981.P7348096870883529244

/-! ## A257981.P1175681744828446649

`A023444(A257986(n+1)+1)`
-/

namespace A257981.P1175681744828446649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A257986 (n + 1) + 1).toNat

end

end A257981.P1175681744828446649

/-! ## A257981.P17781289999060930070

`A257943(C(A257986(n+1), 2))`
-/

namespace A257981.P17781289999060930070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257943 (Nat.choose (A257986 (n + 1)).toNat 2)

end

end A257981.P17781289999060930070

/-!
# A257982: Sequence (d(n)) generated by Rule 3 (in Comments) with a(1) = 1 and d(1) = 1.

The programs for A257982, there is no canonical definition to state claims against.
-/

/-! ## A257982.P17628988347510866679

`Δ[A257981(A028310(n))%(n+1)²]`
-/

namespace A257982.P17628988347510866679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257981 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257982.P17628988347510866679

/-! ## A257982.P8570700934172217742

`A000007(n)+Δ[A257981(A028310(n))]`
-/

namespace A257982.P8570700934172217742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A257982.P8570700934172217742

/-! ## A257982.P7071762551504048040

`Δ[A257981(A028310(n))+A040001(2*n)]`
-/

namespace A257982.P7071762551504048040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (A028310 n).toNat + A040001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257982.P7071762551504048040

/-! ## A257982.P7306877466058839180

`A257981(n+1)+A000007(n)-A257981(A028310(n))`
-/

namespace A257982.P7306877466058839180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (n + 1) + (A000007 n - A257981 (A028310 n).toNat)

end

end A257982.P7306877466058839180

/-! ## A257982.P2406307531779056701

`A257981(n+1)+A057428(n)*A257981(A028310(n))`
-/

namespace A257982.P2406307531779056701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (n + 1) + A057428 n * A257981 (A028310 n).toNat

end

end A257982.P2406307531779056701

/-! ## A257982.P914656319870201824

`A054977(n)*A257981(n+1)-A257981(A028310(n))`
-/

namespace A257982.P914656319870201824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A257981 (n + 1) - A257981 (A028310 n).toNat

end

end A257982.P914656319870201824

/-! ## A257982.P6703579416046596063

`A257981(n+1)-A057427(n)*A257981(A028310(n))`
-/

namespace A257982.P6703579416046596063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (n + 1) - A057427 n * A257981 (A028310 n).toNat

end

end A257982.P6703579416046596063

/-! ## A257982.P17237650614266631302

`Δ[A257981(A028310(n))+A057427(n)]`
-/

namespace A257982.P17237650614266631302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257982.P17237650614266631302

/-! ## A257982.P5054900810284010611

`Δ[A257981(A028310(n))-A054977(n)]`
-/

namespace A257982.P5054900810284010611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257982.P5054900810284010611

/-! ## A257982.P11048105900798004806

`Δ[A257981(A028310(n))-A057428(n)]`
-/

namespace A257982.P11048105900798004806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257982.P11048105900798004806

/-!
# A257983: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 1 and d(1) = 2.

The programs for A257983, there is no canonical definition to state claims against.
-/

/-! ## A257983.P5096944343929597295

`A257908(n+1)+1`
-/

namespace A257983.P5096944343929597295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257908 (n + 1) + 1

end

end A257983.P5096944343929597295

/-! ## A257983.P7681123030532524349

`A257987(n+1)-1`
-/

namespace A257983.P7681123030532524349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257987 (n + 1) - 1

end

end A257983.P7681123030532524349

/-! ## A257983.P10089353265142677151

`∑[A257909(n+1)]-1`
-/

namespace A257983.P10089353265142677151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A257983.P10089353265142677151

/-! ## A257983.P9578203309049515112

`∑[A257909(A028310(n)+1)]`
-/

namespace A257983.P9578203309049515112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257909 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257983.P9578203309049515112

/-! ## A257983.P16907287160362450722

`A023443(A257987(n+1))`
-/

namespace A257983.P16907287160362450722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257987 (n + 1)).toNat

end

end A257983.P16907287160362450722

/-! ## A257983.P15419822219226353713

`A023444(A257987(n+1)+1)`
-/

namespace A257983.P15419822219226353713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A257987 (n + 1) + 1).toNat

end

end A257983.P15419822219226353713

/-! ## A257983.P6663653388806792895

`∑[A257909(A123108(2*n)+1)]`
-/

namespace A257983.P6663653388806792895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257909 (A123108 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257983.P6663653388806792895

/-!
# A257984: Nonhomogeneous Beatty sequence: ceiling((n - 1/2)*Pi).

The programs for A257984, the canonical program `A257984.P11345395512467925832` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257984 has offset 1).

The definition of A257984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257984.P11345395512467925832

`ceil((n+1/2)*π)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A257984

/-- `ceil((n+1/2)*π)` -/
def P11345395512467925832.Spec : Prop :=
  ∀ n, P11345395512467925832.a n = A257984 (n + 1)

theorem P11345395512467925832.correct : P11345395512467925832.Spec := by
  intro n
  simp only [A257984, Nat.add_sub_cancel]

end A257984

/-! ## A257984.P13345780166661759143

`lt[tan(n), tan(12)]`
-/

namespace A257984.P13345780166661759143
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (12 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257984.P13345780166661759143

namespace A257984

/-- `lt[tan(n), tan(12)]` -/
def P13345780166661759143.Spec : Prop :=
  ∀ n, (P13345780166661759143.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P12140223230695146247

`comp[n-floor(sin(2*n))]`
-/

namespace A257984.P12140223230695146247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.sin (2 * n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257984.P12140223230695146247

namespace A257984

/-- `comp[n-floor(sin(2*n))]` -/
def P12140223230695146247.Spec : Prop :=
  ∀ n, (P12140223230695146247.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P8995382674532043240

`comp[ceil(n-sin(2*n))]`
-/

namespace A257984.P8995382674532043240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.sin (2 * n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257984.P8995382674532043240

namespace A257984

/-- `comp[ceil(n-sin(2*n))]` -/
def P8995382674532043240.Spec : Prop :=
  ∀ n, (P8995382674532043240.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P13605375723225158733

`comp[floor(sin(2*n))²+n]`
-/

namespace A257984.P13605375723225158733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 * n : ℝ)⌋ ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257984.P13605375723225158733

namespace A257984

/-- `comp[floor(sin(2*n))²+n]` -/
def P13605375723225158733.Spec : Prop :=
  ∀ n, (P13605375723225158733.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P13584150261361097714

`floor((4*n+2)*atan(1))+1`
-/

namespace A257984.P13584150261361097714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * n + 2 : ℝ) * Real.arctan (1 : ℝ)⌋ + 1

end

end A257984.P13584150261361097714

namespace A257984

/-- `floor((4*n+2)*atan(1))+1` -/
def P13584150261361097714.Spec : Prop :=
  ∀ n, P13584150261361097714.a n = A257984 (n + 1)

end A257984

/-! ## A257984.P5700950829685817821

`A062389(n+1)+1`
-/

namespace A257984.P5700950829685817821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1) + 1

end

end A257984.P5700950829685817821

namespace A257984

/-- `A062389(n+1)+1` -/
def P5700950829685817821.Spec : Prop :=
  ∀ n, P5700950829685817821.a n = A257984 (n + 1)

end A257984

/-! ## A257984.P4548330253320891376

`A246388(n)-A327139(n+1)`
-/

namespace A257984.P4548330253320891376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 n - A327139 (n + 1)

end

end A257984.P4548330253320891376

namespace A257984

/-- `A246388(n)-A327139(n+1)` -/
def P4548330253320891376.Spec : Prop :=
  ∀ n, P4548330253320891376.a n = A257984 (n + 1)

end A257984

/-! ## A257984.P2439484247750432779

`∪[A246393(n), A246394(n)]+1`
-/

namespace A257984.P2439484247750432779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A257984.P2439484247750432779

namespace A257984

/-- `∪[A246393(n), A246394(n)]+1` -/
def P2439484247750432779.Spec : Prop :=
  ∀ n, (P2439484247750432779.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P16836584371112051608

`A140758(Δ[n²])+1`
-/

namespace A257984.P16836584371112051608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A257984.P16836584371112051608

namespace A257984

/-- `A140758(Δ[n²])+1` -/
def P16836584371112051608.Spec : Prop :=
  ∀ n, P16836584371112051608.a n = A257984 (n + 1)

end A257984

/-! ## A257984.P3634841288860085472

`(A132222(2*n+1)+1)/2`
-/

namespace A257984.P3634841288860085472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132222 (2 * n + 1) + 1 : ℚ) / 2

end

end A257984.P3634841288860085472

namespace A257984

/-- `(A132222(2*n+1)+1)/2` -/
def P3634841288860085472.Spec : Prop :=
  ∀ n, P3634841288860085472.a n = (A257984 (n + 1) : ℚ)

end A257984

/-! ## A257984.P3139400283299631797

`∩[A026316(n+1), A140758(n)]+1`
-/

namespace A257984.P3139400283299631797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A257984.P3139400283299631797

namespace A257984

/-- `∩[A026316(n+1), A140758(n)]+1` -/
def P3139400283299631797.Spec : Prop :=
  ∀ n, (P3139400283299631797.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P5362248093930611787

`∩[A327422(n+1), A140758(n)]+1`
-/

namespace A257984.P5362248093930611787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A257984.P5362248093930611787

namespace A257984

/-- `∩[A327422(n+1), A140758(n)]+1` -/
def P5362248093930611787.Spec : Prop :=
  ∀ n, (P5362248093930611787.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P13982694919487724933

`A132222(2*n+1)-A140758(2*n+1)`
-/

namespace A257984.P13982694919487724933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132222 (2 * n + 1) - A140758 (2 * n + 1)

end

end A257984.P13982694919487724933

namespace A257984

/-- `A132222(2*n+1)-A140758(2*n+1)` -/
def P13982694919487724933.Spec : Prop :=
  ∀ n, P13982694919487724933.a n = A257984 (n + 1)

end A257984

/-! ## A257984.P12009342515081269699

`∩[A054386(n+1), A140758(n)]+1`
-/

namespace A257984.P12009342515081269699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A257984.P12009342515081269699

namespace A257984

/-- `∩[A054386(n+1), A140758(n)]+1` -/
def P12009342515081269699.Spec : Prop :=
  ∀ n, (P12009342515081269699.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P10824196242997658326

`lt[ratio[cos(n-1)], 0]`
-/

namespace A257984.P10824196242997658326
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A257984.P10824196242997658326

namespace A257984

/-- `lt[ratio[cos(n-1)], 0]` -/
def P10824196242997658326.Spec : Prop :=
  ∀ n, (P10824196242997658326.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P6017175444727284835

`lt[Δ[A000209(n)], 1]+1`
-/

namespace A257984.P6017175444727284835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A257984.P6017175444727284835

namespace A257984

/-- `lt[Δ[A000209(n)], 1]+1` -/
def P6017175444727284835.Spec : Prop :=
  ∀ n, (P6017175444727284835.a n : ℤ) = A257984 (n + 1)

end A257984

/-! ## A257984.P6587334056414262988

`A020725(A062389(n+1))`
-/

namespace A257984.P6587334056414262988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A062389 (n + 1)).toNat

end

end A257984.P6587334056414262988

namespace A257984

/-- `A020725(A062389(n+1))` -/
def P6587334056414262988.Spec : Prop :=
  ∀ n, P6587334056414262988.a n = A257984 (n + 1)

end A257984

/-!
# A257985: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 2 and d(1) = 0.

The programs for A257985, there is no canonical definition to state claims against.
-/

/-! ## A257985.P17822715215170284741

`A258046(n+1)+1`
-/

namespace A257985.P17822715215170284741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (n + 1) + 1

end

end A257985.P17822715215170284741

/-! ## A257985.P17398371387200526265

`A257905(n+1)+2`
-/

namespace A257985.P17398371387200526265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257905 (n + 1) + 2

end

end A257985.P17398371387200526265

/-! ## A257985.P917010651300926842

`∑[A258047(n+1)]+2`
-/

namespace A257985.P917010651300926842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A257985.P917010651300926842

/-! ## A257985.P9206157091791861032

`A258047(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A257985.P9206157091791861032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A258047 (n + 1) + a (A023443 n).toNat

end

end A257985.P9206157091791861032

/-! ## A257985.P12484639796995866926

`A020725(A258046(n+1))`
-/

namespace A257985.P12484639796995866926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A258046 (n + 1)).toNat

end

end A257985.P12484639796995866926

/-! ## A257985.P1305896264092331692

`1-Δ[a(n-1)-A258046(A065033(2*n))]` with `a(0)=2`
-/

namespace A257985.P1305896264092331692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - A258046 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A257985.P1305896264092331692

/-! ## A257985.P6975548284346255230

`a(n-1)-or(-1, A005180(n+1))*A258047(n+1)` with `a(0)=2`
-/

namespace A257985.P6975548284346255230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - Int.lor (-1) (A005180 (n + 1)) * A258047 (n + 1)

end

end A257985.P6975548284346255230

/-! ## A257985.P11443136532581545306

`A258046(A256283(A258046(A258046(A256283(n)))))`
-/

namespace A257985.P11443136532581545306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258046 (A256283 (A258046 (A258046 (A256283 n).toNat).toNat).toNat).toNat

end

end A257985.P11443136532581545306

/-!
# A257986: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 2 and d(1) = 1.

The programs for A257986, there is no canonical definition to state claims against.
-/

/-! ## A257986.P5713867573336972619

`A257981(n+1)+1`
-/

namespace A257986.P5713867573336972619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (n + 1) + 1

end

end A257986.P5713867573336972619

/-! ## A257986.P13603597985371953354

`∑[A257982(n+1)]+1`
-/

namespace A257986.P13603597985371953354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A257986.P13603597985371953354

/-! ## A257986.P16515014307386251035

`∑[A257982(A028310(n)+1)]`
-/

namespace A257986.P16515014307386251035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257982 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257986.P16515014307386251035

/-! ## A257986.P8420744210366502611

`A257982(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A257986.P8420744210366502611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A257982 (n + 1) + a (A023443 n).toNat

end

end A257986.P8420744210366502611

/-! ## A257986.P4472677529934196938

`∑[A257982(A254667(n+1))]`
-/

namespace A257986.P4472677529934196938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257982 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257986.P4472677529934196938

/-! ## A257986.P3695122002425293053

`A020725(A257981(n+1))`
-/

namespace A257986.P3695122002425293053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A257981 (n + 1)).toNat

end

end A257986.P3695122002425293053

/-! ## A257986.P1327968388471485099

`∑[A257982(A233583(n+2))]`
-/

namespace A257986.P1327968388471485099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257982 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257986.P1327968388471485099

/-!
# A257987: Sequence (a(n)) generated by Rule 3 (in Comments) with a(1) = 2 and d(1) = 2.

The programs for A257987, there is no canonical definition to state claims against.
-/

/-! ## A257987.P5963754270459588863

`∑[A257909(n+1)]`
-/

namespace A257987.P5963754270459588863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257987.P5963754270459588863

/-! ## A257987.P6436392430587613580

`A257983(n+1)+1`
-/

namespace A257987.P6436392430587613580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257983 (n + 1) + 1

end

end A257987.P6436392430587613580

/-! ## A257987.P3330017791500486763

`A257908(n+1)+2`
-/

namespace A257987.P3330017791500486763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257908 (n + 1) + 2

end

end A257987.P3330017791500486763

/-! ## A257987.P8338913107736172392

`abs(∑[A257909(1-(n-2*n))])`
-/

namespace A257987.P8338913107736172392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257909 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A257987.P8338913107736172392

/-! ## A257987.P4950656656399379408

`A020725(A257983(n+1))`
-/

namespace A257987.P4950656656399379408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A257983 (n + 1)).toNat

end

end A257987.P4950656656399379408

/-!
# A257988: Number of parts that are larger than the number of 1's in the partition having Heinz number n.

The programs for A257988, there is no canonical definition to state claims against.
-/

/-! ## A257988.P6673535852907935476

`val(A181811(n+1), A337376(A160467(n+1)))`
-/

namespace A257988.P6673535852907935476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181811 (n + 1)).toNat (A337376 (A160467 (n + 1)).toNat).toNat

end

end A257988.P6673535852907935476

/-! ## A257988.P13257456134514670777

`val(A108951(n+1), A000040(val(n+1, 2)+1))`
-/

namespace A257988.P13257456134514670777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108951 (n + 1)).toNat (A000040 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A257988.P13257456134514670777

/-! ## A257988.P2493843221657898502

`val(A108951(n+1), A002110(val(n+1, 2)+1))`
-/

namespace A257988.P2493843221657898502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108951 (n + 1)).toNat (A002110 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A257988.P2493843221657898502

/-! ## A257988.P5852195255834496859

`val(A108951(n+1), A000040(A001511(n+1)))`
-/

namespace A257988.P5852195255834496859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108951 (n + 1)).toNat (A000040 (A001511 (n + 1)).toNat).toNat

end

end A257988.P5852195255834496859

/-! ## A257988.P2031224764813990693

`val(A108951(n+1), A019565(A038712(n+1)))`
-/

namespace A257988.P2031224764813990693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108951 (n + 1)).toNat (A019565 (A038712 (n + 1)).toNat).toNat

end

end A257988.P2031224764813990693

/-! ## A257988.P14160353280319345442

`val(A108951(n+1), A283477(A006519(n+1)))`
-/

namespace A257988.P14160353280319345442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108951 (n + 1)).toNat (A283477 (A006519 (n + 1)).toNat).toNat

end

end A257988.P14160353280319345442

/-! ## A257988.P3485492800036445690

`val(A108951(n+1), A020639(A005940(3*n+4)))`
-/

namespace A257988.P3485492800036445690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108951 (n + 1)).toNat (A020639 (A005940 (3 * n + 4)).toNat).toNat

end

end A257988.P3485492800036445690

/-!
# A257990: The side-length of the Durfee square of the partition having Heinz number n.

The programs for A257990, there is no canonical definition to state claims against.
-/

/-! ## A257990.P2125078117225993032

`a(A325133(n+1)-1)+1` with `a(0)=0`
-/

namespace A257990.P2125078117225993032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A325133 (n + 1) - 1).toNat + 1

end

end A257990.P2125078117225993032

/-! ## A257990.P16967006942515399710

`a(A023443(A325133(n+1)))+1` with `a(0)=0`
-/

namespace A257990.P16967006942515399710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A023443 (A325133 (n + 1)).toNat).toNat + 1

end

end A257990.P16967006942515399710

/-! ## A257990.P1918032848428005313

`A001221(A052126(A052126(2*3*(n+1))))`
-/

namespace A257990.P1918032848428005313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052126 (A052126 (2 * (3 * (n + 1)))).toNat).toNat

end

end A257990.P1918032848428005313

/-! ## A257990.P13799522124040244433

`A347523(∑[n+1])+A214566(A325133(n+1))`
-/

namespace A257990.P13799522124040244433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (∑ j ∈ Finset.range (n + 1), f1 j) + A214566 (A325133 (n + 1)).toNat

end

end A257990.P13799522124040244433

/-! ## A257990.P2926424111546651904

`A001221(A322865(3*A322865(3*(n+1))))`
-/

namespace A257990.P2926424111546651904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322865 (3 * A322865 (3 * (n + 1))).toNat).toNat

end

end A257990.P2926424111546651904

/-! ## A257990.P6959045575633244931

`A214566(A325133(n+1))+A001221(A137688(n))`
-/

namespace A257990.P6959045575633244931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A325133 (n + 1)).toNat + A001221 (A137688 n).toNat

end

end A257990.P6959045575633244931

/-! ## A257990.P15113875962148857584

`A020639(A325133(n+1)!)%(n+1)`
-/

namespace A257990.P15113875962148857584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (Nat.factorial (A325133 (n + 1)).toNat)) (n + 1 : ℤ)

end

end A257990.P15113875962148857584

/-! ## A257990.P12385993441389344635

`A020639(A325133(n+1)!)-A000007(n)`
-/

namespace A257990.P12385993441389344635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A325133 (n + 1)).toNat) - A000007 n

end

end A257990.P12385993441389344635

/-! ## A257990.P3908829051485409705

`A214566(A087039(2*(n+1))²)`
-/

namespace A257990.P3908829051485409705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A087039 (2 * (n + 1)) ^ 2).toNat

end

end A257990.P3908829051485409705

/-! ## A257990.P1923944569022796496

`A324884(A087039(A051755(n+2))!)`
-/

namespace A257990.P1923944569022796496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (Nat.factorial (A087039 (A051755 (n + 2)).toNat).toNat)

end

end A257990.P1923944569022796496

/-! ## A257990.P193641033491302151

`A001221(A087039(n+1)*A319862(n))`
-/

namespace A257990.P193641033491302151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A087039 (n + 1) * A319862 n).toNat

end

end A257990.P193641033491302151

/-! ## A257990.P13999260056214679444

`A001221(A122921(A087039(2*(n+1))²²))`
-/

namespace A257990.P13999260056214679444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A122921 ((A087039 (2 * (n + 1)) ^ 2) ^ 2).toNat).toNat

end

end A257990.P13999260056214679444

/-! ## A257990.P1799003137125274331

`A214566(A325133(n+1))+A001221(A025475(n+1))`
-/

namespace A257990.P1799003137125274331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A325133 (n + 1)).toNat + A001221 (A025475 (n + 1)).toNat

end

end A257990.P1799003137125274331

/-! ## A257990.P11209873071098075497

`A178334(A104515(n+1))+A178334(n)`
-/

namespace A257990.P11209873071098075497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A104515 (n + 1)).toNat + A178334 n

end

end A257990.P11209873071098075497

/-!
# A257991: Number of odd parts in the partition having Heinz number n.

The programs for A257991, the canonical program `A257991.P9003885035180655311` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257991 has offset 1).

The definition of A257991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257991.P5255965531657741017

`A257992(n+1)+A195017(n+1)`
-/

namespace A257991.P5255965531657741017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1) + A195017 (n + 1)

end

end A257991.P5255965531657741017

namespace A257991

/-- `A257992(n+1)+A195017(n+1)` -/
def P5255965531657741017.Spec : Prop :=
  ∀ n, P5255965531657741017.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P7671713962455781936

`∑{e}[A247503(n+1), #]`
-/

namespace A257991.P7671713962455781936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257991.P7671713962455781936

namespace A257991

/-- `∑{e}[A247503(n+1), #]` -/
def P7671713962455781936.Spec : Prop :=
  ∀ n, (P7671713962455781936.a n : ℤ) = A257991 (n + 1)

end A257991

/-! ## A257991.P8172264916488667798

`∑{e}[A319521(n+1), #]`
-/

namespace A257991.P8172264916488667798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257991.P8172264916488667798

namespace A257991

/-- `∑{e}[A319521(n+1), #]` -/
def P8172264916488667798.Spec : Prop :=
  ∀ n, (P8172264916488667798.a n : ℤ) = A257991 (n + 1)

end A257991

/-! ## A257991.P8269796836761363770

`A001222(A247503(n+1))`
-/

namespace A257991.P8269796836761363770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1)).toNat

end

end A257991.P8269796836761363770

namespace A257991

/-- `A001222(A247503(n+1))` -/
def P8269796836761363770.Spec : Prop :=
  ∀ n, P8269796836761363770.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P15340078388758259797

`A001222(A319521(n+1))`
-/

namespace A257991.P15340078388758259797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319521 (n + 1)).toNat

end

end A257991.P15340078388758259797

namespace A257991

/-- `A001222(A319521(n+1))` -/
def P15340078388758259797.Spec : Prop :=
  ∀ n, P15340078388758259797.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P2015358004255938498

`A001222(n+1)-A257992(n+1)`
-/

namespace A257991.P2015358004255938498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A257992 (n + 1)

end

end A257991.P2015358004255938498

namespace A257991

/-- `A001222(n+1)-A257992(n+1)` -/
def P2015358004255938498.Spec : Prop :=
  ∀ n, P2015358004255938498.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P4733017390340516280

`A001222((n+1)/A248101(n+1))`
-/

namespace A257991.P4733017390340516280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A248101 (n + 1) : ℚ))).toNat

end

end A257991.P4733017390340516280

namespace A257991

/-- `A001222((n+1)/A248101(n+1))` -/
def P4733017390340516280.Spec : Prop :=
  ∀ n, P4733017390340516280.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P9003885035180655311

`∑{d}[n+1, and(1, A000720(A014963(#)))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257991

/-- `∑{d}[n+1, and(1, A000720(A014963(#)))]` -/
def P9003885035180655311.Spec : Prop :=
  ∀ n, P9003885035180655311.a n = A257991 (n + 1)

theorem P9003885035180655311.correct : P9003885035180655311.Spec := by
  intro n
  simp only [A257991, Nat.add_sub_cancel]

end A257991

/-! ## A257991.P6096461291412797981

`(A195017(n+1)+A001222(n+1))/2`
-/

namespace A257991.P6096461291412797981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195017 (n + 1) + A001222 (n + 1) : ℚ) / 2

end

end A257991.P6096461291412797981

namespace A257991

/-- `(A195017(n+1)+A001222(n+1))/2` -/
def P6096461291412797981.Spec : Prop :=
  ∀ n, P6096461291412797981.a n = (A257991 (n + 1) : ℚ)

end A257991

/-! ## A257991.P10437203672941544097

`A001222(n+1)-A001222(A248101(n+1))`
-/

namespace A257991.P10437203672941544097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A248101 (n + 1)).toNat

end

end A257991.P10437203672941544097

namespace A257991

/-- `A001222(n+1)-A001222(A248101(n+1))` -/
def P10437203672941544097.Spec : Prop :=
  ∀ n, P10437203672941544097.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P3774592354556391244

`A001222(n+1)-A001222(A319522(n+1))`
-/

namespace A257991.P3774592354556391244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A319522 (n + 1)).toNat

end

end A257991.P3774592354556391244

namespace A257991

/-- `A001222(n+1)-A001222(A319522(n+1))` -/
def P3774592354556391244.Spec : Prop :=
  ∀ n, P3774592354556391244.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P5985712238976987183

`A001222((n+1)/A297002(A319522(n+1)))`
-/

namespace A257991.P5985712238976987183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A297002 (A319522 (n + 1)).toNat : ℚ))).toNat

end

end A257991.P5985712238976987183

namespace A257991

/-- `A001222((n+1)/A297002(A319522(n+1)))` -/
def P5985712238976987183.Spec : Prop :=
  ∀ n, P5985712238976987183.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P15806619970354451828

`A073093(A007421(n+1)*A247503(n+1))-A007421(n+1)`
-/

namespace A257991.P15806619970354451828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A007421 (n + 1) * A247503 (n + 1)).toNat - A007421 (n + 1)

end

end A257991.P15806619970354451828

namespace A257991

/-- `A073093(A007421(n+1)*A247503(n+1))-A007421(n+1)` -/
def P15806619970354451828.Spec : Prop :=
  ∀ n, P15806619970354451828.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P5205028552340329543

`A073093(2*A247503(n+1))-2`
-/

namespace A257991.P5205028552340329543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (2 * A247503 (n + 1)).toNat - 2

end

end A257991.P5205028552340329543

namespace A257991

/-- `A073093(2*A247503(n+1))-2` -/
def P5205028552340329543.Spec : Prop :=
  ∀ n, P5205028552340329543.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P13812380540777254595

`A257992(A061898(n+1))`
-/

namespace A257991.P13812380540777254595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A061898 (n + 1)).toNat

end

end A257991.P13812380540777254595

namespace A257991

/-- `A257992(A061898(n+1))` -/
def P13812380540777254595.Spec : Prop :=
  ∀ n, P13812380540777254595.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P12576450906970102438

`A257992(A003961(n+1))`
-/

namespace A257991.P12576450906970102438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A003961 (n + 1)).toNat

end

end A257991.P12576450906970102438

namespace A257991

/-- `A257992(A003961(n+1))` -/
def P12576450906970102438.Spec : Prop :=
  ∀ n, P12576450906970102438.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P11386838596896103606

`A257992(A045965(n+1))`
-/

namespace A257991.P11386838596896103606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A045965 (n + 1)).toNat

end

end A257991.P11386838596896103606

namespace A257991

/-- `A257992(A045965(n+1))` -/
def P11386838596896103606.Spec : Prop :=
  ∀ n, P11386838596896103606.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P9926775578494206616

`A257992(A118306(n+1))`
-/

namespace A257991.P9926775578494206616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A118306 (n + 1)).toNat

end

end A257991.P9926775578494206616

namespace A257991

/-- `A257992(A118306(n+1))` -/
def P9926775578494206616.Spec : Prop :=
  ∀ n, P9926775578494206616.a n = A257991 (n + 1)

end A257991

/-! ## A257991.P10340518042653818098

`A073093(A247503(n+1)²)-A073093(A247503(n+1))`
-/

namespace A257991.P10340518042653818098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A247503 (n + 1) ^ 2).toNat - A073093 (A247503 (n + 1)).toNat

end

end A257991.P10340518042653818098

namespace A257991

/-- `A073093(A247503(n+1)²)-A073093(A247503(n+1))` -/
def P10340518042653818098.Spec : Prop :=
  ∀ n, P10340518042653818098.a n = A257991 (n + 1)

end A257991

/-!
# A257992: Number of even parts in the partition having Heinz number n.

The programs for A257992, the canonical program `A257992.P14262373692572386717` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257992 has offset 1).

The definition of A257992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257992.P7480273034983026953

`A257991(n+1)-A195017(n+1)`
-/

namespace A257992.P7480273034983026953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) - A195017 (n + 1)

end

end A257992.P7480273034983026953

namespace A257992

/-- `A257991(n+1)-A195017(n+1)` -/
def P7480273034983026953.Spec : Prop :=
  ∀ n, P7480273034983026953.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P10877069564315501216

`val(A371285(n+1), 3)`
-/

namespace A257992.P10877069564315501216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A371285 (n + 1)).toNat 3

end

end A257992.P10877069564315501216

namespace A257992

/-- `val(A371285(n+1), 3)` -/
def P10877069564315501216.Spec : Prop :=
  ∀ n, (P10877069564315501216.a n : ℤ) = A257992 (n + 1)

end A257992

/-! ## A257992.P5390468366168888684

`∑{e}[A248101(n+1), #]`
-/

namespace A257992.P5390468366168888684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257992.P5390468366168888684

namespace A257992

/-- `∑{e}[A248101(n+1), #]` -/
def P5390468366168888684.Spec : Prop :=
  ∀ n, (P5390468366168888684.a n : ℤ) = A257992 (n + 1)

end A257992

/-! ## A257992.P4612794036544398153

`∑{e}[A319522(n+1), #]`
-/

namespace A257992.P4612794036544398153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257992.P4612794036544398153

namespace A257992

/-- `∑{e}[A319522(n+1), #]` -/
def P4612794036544398153.Spec : Prop :=
  ∀ n, (P4612794036544398153.a n : ℤ) = A257992 (n + 1)

end A257992

/-! ## A257992.P15376025832933590465

`A001222(A248101(n+1))`
-/

namespace A257992.P15376025832933590465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248101 (n + 1)).toNat

end

end A257992.P15376025832933590465

namespace A257992

/-- `A001222(A248101(n+1))` -/
def P15376025832933590465.Spec : Prop :=
  ∀ n, P15376025832933590465.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P14779811626968411031

`A001222(A319522(n+1))`
-/

namespace A257992.P14779811626968411031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319522 (n + 1)).toNat

end

end A257992.P14779811626968411031

namespace A257992

/-- `A001222(A319522(n+1))` -/
def P14779811626968411031.Spec : Prop :=
  ∀ n, P14779811626968411031.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P3342269418079430904

`A257991(A064989(n+1))`
-/

namespace A257992.P3342269418079430904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A064989 (n + 1)).toNat

end

end A257992.P3342269418079430904

namespace A257992

/-- `A257991(A064989(n+1))` -/
def P3342269418079430904.Spec : Prop :=
  ∀ n, P3342269418079430904.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P14262373692572386717

`A001222(n+1)-A257991(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A257992

/-- `A001222(n+1)-A257991(n+1)` -/
def P14262373692572386717.Spec : Prop :=
  ∀ n, P14262373692572386717.a n = A257992 (n + 1)

theorem P14262373692572386717.correct : P14262373692572386717.Spec := by
  intro n
  simp only [A257992, Nat.add_sub_cancel]

end A257992

/-! ## A257992.P5893622068072016365

`A001222((n+1)/A247503(n+1))`
-/

namespace A257992.P5893622068072016365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A247503 (n + 1) : ℚ))).toNat

end

end A257992.P5893622068072016365

namespace A257992

/-- `A001222((n+1)/A247503(n+1))` -/
def P5893622068072016365.Spec : Prop :=
  ∀ n, P5893622068072016365.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P800282459372135836

`(A001222(n+1)-A195017(n+1))/2`
-/

namespace A257992.P800282459372135836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - A195017 (n + 1) : ℚ) / 2

end

end A257992.P800282459372135836

namespace A257992

/-- `(A001222(n+1)-A195017(n+1))/2` -/
def P800282459372135836.Spec : Prop :=
  ∀ n, P800282459372135836.a n = (A257992 (n + 1) : ℚ)

end A257992

/-! ## A257992.P10321894473248892812

`val(A165825(n%A248101(n+1)+1), 4)`
-/

namespace A257992.P10321894473248892812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165825 (Int.tmod (n : ℤ) (A248101 (n + 1)) + 1).toNat).toNat 4

end

end A257992.P10321894473248892812

namespace A257992

/-- `val(A165825(n%A248101(n+1)+1), 4)` -/
def P10321894473248892812.Spec : Prop :=
  ∀ n, (P10321894473248892812.a n : ℤ) = A257992 (n + 1)

end A257992

/-! ## A257992.P16356326341653596801

`A001222(n+1)-A001222(A247503(n+1))`
-/

namespace A257992.P16356326341653596801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A247503 (n + 1)).toNat

end

end A257992.P16356326341653596801

namespace A257992

/-- `A001222(n+1)-A001222(A247503(n+1))` -/
def P16356326341653596801.Spec : Prop :=
  ∀ n, P16356326341653596801.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P508400394933981816

`A001222(n+1)-A001222(A319521(n+1))`
-/

namespace A257992.P508400394933981816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A319521 (n + 1)).toNat

end

end A257992.P508400394933981816

namespace A257992

/-- `A001222(n+1)-A001222(A319521(n+1))` -/
def P508400394933981816.Spec : Prop :=
  ∀ n, P508400394933981816.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P12587022719228720885

`A073093(n+1)-A073093(A247503(n+1))`
-/

namespace A257992.P12587022719228720885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A073093 (A247503 (n + 1)).toNat

end

end A257992.P12587022719228720885

namespace A257992

/-- `A073093(n+1)-A073093(A247503(n+1))` -/
def P12587022719228720885.Spec : Prop :=
  ∀ n, P12587022719228720885.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P16924636646019953261

`A001222((n+1)/A319525(A319521(n+1)))`
-/

namespace A257992.P16924636646019953261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A319525 (A319521 (n + 1)).toNat : ℚ))).toNat

end

end A257992.P16924636646019953261

namespace A257992

/-- `A001222((n+1)/A319525(A319521(n+1)))` -/
def P16924636646019953261.Spec : Prop :=
  ∀ n, P16924636646019953261.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P18404713452792361165

`A379306(n+1)+A379310(n+1)-A257991(n+1)`
-/

namespace A257992.P18404713452792361165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (n + 1) + (A379310 (n + 1) - A257991 (n + 1))

end

end A257992.P18404713452792361165

namespace A257992

/-- `A379306(n+1)+A379310(n+1)-A257991(n+1)` -/
def P18404713452792361165.Spec : Prop :=
  ∀ n, P18404713452792361165.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P18424585436512867282

`A065339(A108548(n+1))`
-/

namespace A257992.P18424585436512867282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A108548 (n + 1)).toNat

end

end A257992.P18424585436512867282

namespace A257992

/-- `A065339(A108548(n+1))` -/
def P18424585436512867282.Spec : Prop :=
  ∀ n, P18424585436512867282.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P15901663650776488017

`A257991(A061898(n+1))`
-/

namespace A257992.P15901663650776488017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A061898 (n + 1)).toNat

end

end A257992.P15901663650776488017

namespace A257992

/-- `A257991(A061898(n+1))` -/
def P15901663650776488017.Spec : Prop :=
  ∀ n, P15901663650776488017.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P10498652665417483208

`A257991(A003961(n+1))`
-/

namespace A257992.P10498652665417483208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A003961 (n + 1)).toNat

end

end A257992.P10498652665417483208

namespace A257992

/-- `A257991(A003961(n+1))` -/
def P10498652665417483208.Spec : Prop :=
  ∀ n, P10498652665417483208.a n = A257992 (n + 1)

end A257992

/-! ## A257992.P11597769516840334094

`A257991(A118306(n+1))`
-/

namespace A257992.P11597769516840334094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A118306 (n + 1)).toNat

end

end A257992.P11597769516840334094

namespace A257992

/-- `A257991(A118306(n+1))` -/
def P11597769516840334094.Spec : Prop :=
  ∀ n, P11597769516840334094.a n = A257992 (n + 1)

end A257992

/-!
# A257993: Least gap in the partition having Heinz number n; index of the least prime not dividing n.

The programs for A257993, there is no canonical definition to state claims against.
-/

/-! ## A257993.P4875891948761463308

`1+A276084(n+1)`
-/

namespace A257993.P4875891948761463308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A276084 (n + 1)

end

end A257993.P4875891948761463308

/-!
# A257994: Number of prime parts in the partition having Heinz number n.

The programs for A257994, the canonical program `A257994.P4784514902892986246` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257994 has offset 1).

The definition of A257994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257994.P2400260916794139634

`∑{e}[A295665(n+1), #]`
-/

namespace A257994.P2400260916794139634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257994.P2400260916794139634

namespace A257994

/-- `∑{e}[A295665(n+1), #]` -/
def P2400260916794139634.Spec : Prop :=
  ∀ n, (P2400260916794139634.a n : ℤ) = A257994 (n + 1)

end A257994

/-! ## A257994.P2988282149380347887

`∑{e}[A360325(n+1), #]`
-/

namespace A257994.P2988282149380347887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257994.P2988282149380347887

namespace A257994

/-- `∑{e}[A360325(n+1), #]` -/
def P2988282149380347887.Spec : Prop :=
  ∀ n, (P2988282149380347887.a n : ℤ) = A257994 (n + 1)

end A257994

/-! ## A257994.P2007838709374335514

`A001222(A295665(n+1))`
-/

namespace A257994.P2007838709374335514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295665 (n + 1)).toNat

end

end A257994.P2007838709374335514

namespace A257994

/-- `A001222(A295665(n+1))` -/
def P2007838709374335514.Spec : Prop :=
  ∀ n, P2007838709374335514.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P12259087212690186505

`A001222(A360325(n+1))`
-/

namespace A257994.P12259087212690186505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A360325 (n + 1)).toNat

end

end A257994.P12259087212690186505

namespace A257994

/-- `A001222(A360325(n+1))` -/
def P12259087212690186505.Spec : Prop :=
  ∀ n, P12259087212690186505.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P8721015194391469743

`A379311(A000265(n+1))`
-/

namespace A257994.P8721015194391469743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (A000265 (n + 1)).toNat

end

end A257994.P8721015194391469743

namespace A257994

/-- `A379311(A000265(n+1))` -/
def P8721015194391469743.Spec : Prop :=
  ∀ n, P8721015194391469743.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P10372876715527919186

`A073093(2*A295665(n+1))-2`
-/

namespace A257994.P10372876715527919186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (2 * A295665 (n + 1)).toNat - 2

end

end A257994.P10372876715527919186

namespace A257994

/-- `A073093(2*A295665(n+1))-2` -/
def P10372876715527919186.Spec : Prop :=
  ∀ n, P10372876715527919186.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P8449335104126460358

`A379311(n+1)-A007814(n+1)`
-/

namespace A257994.P8449335104126460358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (n + 1) - A007814 (n + 1)

end

end A257994.P8449335104126460358

namespace A257994

/-- `A379311(n+1)-A007814(n+1)` -/
def P8449335104126460358.Spec : Prop :=
  ∀ n, P8449335104126460358.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P7883958839473540718

`A087436(n+1)-A379300(n+1)`
-/

namespace A257994.P7883958839473540718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A379300 (n + 1)

end

end A257994.P7883958839473540718

namespace A257994

/-- `A087436(n+1)-A379300(n+1)` -/
def P7883958839473540718.Spec : Prop :=
  ∀ n, P7883958839473540718.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P2229633431479195038

`A302242((n+1)/A360329(n+1))`
-/

namespace A257994.P2229633431479195038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360329 (n + 1) : ℚ))).toNat

end

end A257994.P2229633431479195038

namespace A257994

/-- `A302242((n+1)/A360329(n+1))` -/
def P2229633431479195038.Spec : Prop :=
  ∀ n, P2229633431479195038.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P9121879578297986035

`A001222(n+1)-A001222(A360329(n+1))`
-/

namespace A257994.P9121879578297986035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A360329 (n + 1)).toNat

end

end A257994.P9121879578297986035

namespace A257994

/-- `A001222(n+1)-A001222(A360329(n+1))` -/
def P9121879578297986035.Spec : Prop :=
  ∀ n, P9121879578297986035.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P4047215027817542878

`A302242(n+1)-A302242(A360329(n+1))`
-/

namespace A257994.P4047215027817542878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) - A302242 (A360329 (n + 1)).toNat

end

end A257994.P4047215027817542878

namespace A257994

/-- `A302242(n+1)-A302242(A360329(n+1))` -/
def P4047215027817542878.Spec : Prop :=
  ∀ n, P4047215027817542878.a n = A257994 (n + 1)

end A257994

/-! ## A257994.P4784514902892986246

`∑{d}[n+1, A279952(A014963(#))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A257994

/-- `∑{d}[n+1, A279952(A014963(#))]` -/
def P4784514902892986246.Spec : Prop :=
  ∀ n, P4784514902892986246.a n = A257994 (n + 1)

theorem P4784514902892986246.correct : P4784514902892986246.Spec := by
  intro n
  simp only [A257994, Nat.add_sub_cancel]

end A257994

/-! ## A257994.P10040100145775295988

`A028242(A073093(A295665(n+1)²))`
-/

namespace A257994.P10040100145775295988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A073093 (A295665 (n + 1) ^ 2).toNat).toNat

end

end A257994.P10040100145775295988

namespace A257994

/-- `A028242(A073093(A295665(n+1)²))` -/
def P10040100145775295988.Spec : Prop :=
  ∀ n, P10040100145775295988.a n = A257994 (n + 1)

end A257994

/-!
# A257997: Numbers of the form (2^i)*(3^j) or (2^i)*(5^j) or (3^i)*(5^j).

The programs for A257997, there is no canonical definition to state claims against.
-/

/-! ## A257997.P14152236620051040732

`∪[A003592(n+1), A258023(n+1)]`
-/

namespace A257997.P14152236620051040732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P14152236620051040732

/-! ## A257997.P7893173877270543258

`∪[A033846(n+1), A258023(n+1)]`
-/

namespace A257997.P7893173877270543258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P7893173877270543258

/-! ## A257997.P16058101279294806239

`∪[A036311(n+1), A258023(n+1)]`
-/

namespace A257997.P16058101279294806239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P16058101279294806239

/-! ## A257997.P2258553229175269495

`∪[A003586(n+1), A337801(n+1)]`
-/

namespace A257997.P2258553229175269495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P2258553229175269495

/-! ## A257997.P16650858825443135595

`∪[A003593(n+1), A337800(n+1)]`
-/

namespace A257997.P16650858825443135595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P16650858825443135595

/-! ## A257997.P10376984164866989575

`∪[A086761(n+1), A258023(n+1)]`
-/

namespace A257997.P10376984164866989575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P10376984164866989575

/-! ## A257997.P14450409506450897266

`∪[A007694(n+1), A337801(n+1)]`
-/

namespace A257997.P14450409506450897266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P14450409506450897266

/-! ## A257997.P2266847048255117817

`∪[A033845(n+1), A337801(n+1)]`
-/

namespace A257997.P2266847048255117817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P2266847048255117817

/-! ## A257997.P6178975410379203383

`∪[A033849(n+1), A337800(n+1)]`
-/

namespace A257997.P6178975410379203383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P6178975410379203383

/-! ## A257997.P5612080877090524406

`∪[A065119(n+1), A337801(n+1)]`
-/

namespace A257997.P5612080877090524406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P5612080877090524406

/-! ## A257997.P583594253006092494

`∪[A187778(n+1), A337801(n+1)]`
-/

namespace A257997.P583594253006092494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P583594253006092494

/-! ## A257997.P18074703641882515078

`∪[A258023(n+1), A337800(n+1)]`
-/

namespace A257997.P18074703641882515078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P18074703641882515078

/-! ## A257997.P18305631755726701585

`∪[A258023(n+1), A337801(n+1)]`
-/

namespace A257997.P18305631755726701585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P18305631755726701585

/-! ## A257997.P10454984922725042999

`∩[A051037(n+1), A070915(n+1)]`
-/

namespace A257997.P10454984922725042999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257997.P10454984922725042999

/-! ## A257997.P17784498126564438538

`eq[1, A214685(n+1)]+1`
-/

namespace A257997.P17784498126564438538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257997.P17784498126564438538

/-! ## A257997.P14547446944740693977

`record[(n+1)/A011371(A214685(n+1)+1)]`
-/

namespace A257997.P14547446944740693977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A011371 (A214685 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257997.P14547446944740693977

/-! ## A257997.P6173514346562100795

`record[(n+1)/A058359(A214685(n+1)+1)]`
-/

namespace A257997.P6173514346562100795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A058359 (A214685 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257997.P6173514346562100795

/-! ## A257997.P11918122175031166680

`record[A004273(n+1)-n*A214685(n+1)]`
-/

namespace A257997.P11918122175031166680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - (n : ℤ) * A214685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257997.P11918122175031166680

/-! ## A257997.P6140667306806855514

`record[(n+1)/A214685(A004273(n+1)-n)]`
-/

namespace A257997.P6140667306806855514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214685 (A004273 (n + 1) - (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257997.P6140667306806855514

/-! ## A257997.P10987104454364370629

`record[(n+1)/A214685((n+1)%A017341(n))]`
-/

namespace A257997.P10987104454364370629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214685 (Int.tmod (n + 1 : ℤ) (A017341 n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257997.P10987104454364370629

/-!
# A257998: Partial sums of A188967.

The programs for A257998, there is no canonical definition to state claims against.
-/

/-! ## A257998.P14854108063575521656

`∑[A188967(n+1)]`
-/

namespace A257998.P14854108063575521656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P14854108063575521656

/-! ## A257998.P16315984717790266861

`∑[char[A188969(n+1)-1]]`
-/

namespace A257998.P16315984717790266861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188969 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P16315984717790266861

/-! ## A257998.P11879609185674239226

`A188967(n*A188967(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A257998.P11879609185674239226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188967 ((n : ℤ) * A188967 (n + 1) + 1).toNat + a (n - 1)

end

end A257998.P11879609185674239226

/-! ## A257998.P18286713386929553506

`n-∑[A188967(A114119(n))]`
-/

namespace A257998.P18286713386929553506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A114119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P18286713386929553506

/-! ## A257998.P3910649902331612282

`A188967(3*n+1)+a(n-1)` with `a(0)=0`
-/

namespace A257998.P3910649902331612282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188967 (3 * n + 1) + a (n - 1)

end

end A257998.P3910649902331612282

/-! ## A257998.P14160377529843188271

`∑[A188967(A016777(n))]%A016777(n)`
-/

namespace A257998.P14160377529843188271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016777 n)

end

end A257998.P14160377529843188271

/-! ## A257998.P3891816428344259609

`∑[A126792(A051176(n))%2]`
-/

namespace A257998.P3891816428344259609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126792 (A051176 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P3891816428344259609

/-! ## A257998.P8565251593786450083

`∑[A126792(n)%2]`
-/

namespace A257998.P8565251593786450083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126792 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P8565251593786450083

/-! ## A257998.P8869605646831729293

`∑[A000035(A126792(n))]`
-/

namespace A257998.P8869605646831729293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A126792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P8869605646831729293

/-! ## A257998.P12560769132366319763

`∑[and(A000337(n), A126792(n))]`
-/

namespace A257998.P12560769132366319763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A126792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P12560769132366319763

/-! ## A257998.P16332972935145111567

`∑[and(A016760(n), A126792(n))]`
-/

namespace A257998.P16332972935145111567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A126792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257998.P16332972935145111567

/-!
# A257999: Numbers of the form, 2^i*3^j, i+j odd.

The programs for A257999, there is no canonical definition to state claims against.
-/

/-! ## A257999.P15882025848591112898

`A003586(record[(n+1)*A069352(n+2)%2]+1)`
-/

namespace A257999.P15882025848591112898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A069352 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A257999.P15882025848591112898

/-! ## A257999.P8506777433389871177

`∩[A003586(n+1), A249096(n+1)]`
-/

namespace A257999.P8506777433389871177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257999.P8506777433389871177

/-! ## A257999.P2754933784298749993

`∩[A122254(n+1), A249096(n+1)]`
-/

namespace A257999.P2754933784298749993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257999.P2754933784298749993

/-! ## A257999.P14830474718117184020

`filter[A003586(n+1), A066829(#)]`
-/

namespace A257999.P14830474718117184020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A257999.P14830474718117184020

/-! ## A257999.P12905480243840427986

`filter[A003586(n+1), A182582(#)]`
-/

namespace A257999.P12905480243840427986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A257999.P12905480243840427986

/-! ## A257999.P9933974846330106823

`filter[A081061(n+1), A182582(#)]`
-/

namespace A257999.P9933974846330106823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A257999.P9933974846330106823

/-! ## A257999.P13615433456623654310

`filter[A003586(n+1), A358769(#)]`
-/

namespace A257999.P13615433456623654310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A257999.P13615433456623654310

/-! ## A257999.P9636644504829640909

`∩[A072303(n+1), A249096(n+1)]`
-/

namespace A257999.P9636644504829640909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257999.P9636644504829640909

/-! ## A257999.P6674950387041371713

`∩[A081061(n+1), A249096(n+1)]`
-/

namespace A257999.P6674950387041371713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257999.P6674950387041371713

