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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A206300: Expand the real root of y^3 - y + x in powers of x, then multiply coefficient of x^n by -4^n to get integers.

The programs for A206300, there is no canonical definition to state claims against.
-/

/-! ## A206300.P144822667230621469

`abs(A224884(n))-A000038(n)`
-/

namespace A206300.P144822667230621469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224884 n| - A000038 n

end

end A206300.P144822667230621469

/-! ## A206300.P5534027713204156382

`abs(A224884(n))*A158388(n)`
-/

namespace A206300.P5534027713204156382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224884 n| * A158388 n

end

end A206300.P5534027713204156382

/-! ## A206300.P12904543833251003694

`-(A033999(n)*A224884(n))`
-/

namespace A206300.P12904543833251003694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 n * A224884 n)

end

end A206300.P12904543833251003694

/-! ## A206300.P7489702374680967011

`A033999(n+1)*A224884(n)`
-/

namespace A206300.P7489702374680967011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A224884 n

end

end A206300.P7489702374680967011

/-! ## A206300.P6246642283364650330

`A165326(n+2)*A224884(n)`
-/

namespace A206300.P6246642283364650330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 2) * A224884 n

end

end A206300.P6246642283364650330

/-!
# A206301: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} A(x^k).

The programs for A206301, there is no canonical definition to state claims against.
-/

/-! ## A206301.P11581011363966134236

`or(A167865(A321312(2*n+1)), A193021(n))`
-/

namespace A206301.P11581011363966134236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167865 (A321312 (2 * n + 1)).toNat) (A193021 n)

end

end A206301.P11581011363966134236

/-! ## A206301.P14933136756247606820

`A347011(n^(1-∑{digits}[n, #]+n))`
-/

namespace A206301.P14933136756247606820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A206301.P14933136756247606820

/-! ## A206301.P16909180146839149325

`A347011(A046469(n))`
-/

namespace A206301.P16909180146839149325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 (A046469 n).toNat

end

end A206301.P16909180146839149325

/-! ## A206301.P10089593463143080727

`A347011(A087036(n))`
-/

namespace A206301.P10089593463143080727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 (A087036 n).toNat

end

end A206301.P10089593463143080727

/-! ## A206301.P16725864565078585500

`A347011(A087051(n))`
-/

namespace A206301.P16725864565078585500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 (A087051 n).toNat

end

end A206301.P16725864565078585500

/-!
# A206302: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{d|n} A(x^d)^(n/d).

The programs for A206302, there is no canonical definition to state claims against.
-/

/-! ## A206302.P14189874573101769490

`A069693(A000055(n))+A000108(n)`
-/

namespace A206302.P14189874573101769490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069693 (A000055 n).toNat + A000108 n

end

end A206302.P14189874573101769490

/-! ## A206302.P574038319849084820

`A156562(A151412(n)-A240314(n))`
-/

namespace A206302.P574038319849084820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A151412 n - A240314 n).toNat

end

end A206302.P574038319849084820

/-! ## A206302.P6322697922345432807

`A360272(n)-A241457(A231145(n+2))`
-/

namespace A206302.P6322697922345432807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360272 n - A241457 (A231145 (n + 2)).toNat

end

end A206302.P6322697922345432807

/-!
# A206303: Expansion of e.g.f.: Product_{n>=1} (1 - x^(2*n-1))^(-1/(2*n-1)).

The programs for A206303, there is no canonical definition to state claims against.
-/

/-! ## A206303.P18030479962404731053

`round(A140472((n+1)!)/2)`
-/

namespace A206303.P18030479962404731053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140472 (Nat.factorial (n + 1)) : ℚ) / 2)

end

end A206303.P18030479962404731053

/-! ## A206303.P13090006710927947331

`ceil(A140472(∏[n+1])/2)`
-/

namespace A206303.P13090006710927947331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140472 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A206303.P13090006710927947331

/-! ## A206303.P15367614017841880834

`Δ[floor(∑[A140472(n!)/2])]`
-/

namespace A206303.P15367614017841880834
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (Nat.factorial n) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206303.P15367614017841880834

/-!
# A206304: E.g.f. is series reversion of x - log(1+x)^2.

The programs for A206304, there is no canonical definition to state claims against.
-/

/-! ## A206304.P3054424834192057469

`A283796(2*n²+∑[round(sqrt(2*n))]+1)`
-/

namespace A206304.P3054424834192057469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283796 ((2 * n ^ 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A206304.P3054424834192057469

/-! ## A206304.P10613701632821842993

`A049044(A304386(n))`
-/

namespace A206304.P10613701632821842993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049044 (A304386 n).toNat

end

end A206304.P10613701632821842993

/-!
# A206305: E.g.f. A(x) = Sum_{n>=0} a(n)*x^(2*n+1)/(2*n+1)! is inverse to f(x) = 2*x - tan(x).

The programs for A206305, there is no canonical definition to state claims against.
-/

/-! ## A206305.P12604047667261803098

`ceil(A185320(n)/2)`
-/

namespace A206305.P12604047667261803098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185320 n : ℚ) / 2⌉

end

end A206305.P12604047667261803098

/-! ## A206305.P4324740958798839229

`A185320(n)/A020639(A008574(n))`
-/

namespace A206305.P4324740958798839229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185320 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A206305.P4324740958798839229

/-! ## A206305.P16799760825106246777

`A185320(n)/A014963(A137688(n))`
-/

namespace A206305.P16799760825106246777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185320 n : ℚ) / (A014963 (A137688 n).toNat : ℚ)

end

end A206305.P16799760825106246777

/-! ## A206305.P1315504279409388965

`A185320(n)/A014963(A000079(n))`
-/

namespace A206305.P1315504279409388965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185320 n : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A206305.P1315504279409388965

/-!
# A206306: Riordan array (1, x/(1-3*x+2*x^2)).

The programs for A206306, the canonical program `A206306.P5917772377875077346` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206306 has offset 0).

The definition of A206306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206306.P5917772377875077346

`3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206306

/-- `3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)` -/
def P5917772377875077346.Spec : Prop :=
  ∀ n, P5917772377875077346.a n = A206306 n

theorem P5917772377875077346.correct : P5917772377875077346.Spec := by
  intro n
  simp only [A206306]

end A206306

/-! ## A206306.P16210322067727017062

`2*A181332(n)-A124237(n)`
-/

namespace A206306.P16210322067727017062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181332 n - A124237 n

end

end A206306.P16210322067727017062

namespace A206306

/-- `2*A181332(n)-A124237(n)` -/
def P16210322067727017062.Spec : Prop :=
  ∀ n, P16210322067727017062.a n = A206306 n

end A206306

/-! ## A206306.P5468462950061917882

`A004277(A181332(n))-A124237(n)`
-/

namespace A206306.P5468462950061917882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A181332 n).toNat - A124237 n

end

end A206306.P5468462950061917882

namespace A206306

/-- `A004277(A181332(n))-A124237(n)` -/
def P5468462950061917882.Spec : Prop :=
  ∀ n, P5468462950061917882.a n = A206306 n

end A206306

/-! ## A206306.P7232243895987203354

`or(A111397(A037168(n+1)), A257673(n))`
-/

namespace A206306.P7232243895987203354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111397 (A037168 (n + 1)).toNat) (A257673 n)

end

end A206306.P7232243895987203354

namespace A206306

/-- `or(A111397(A037168(n+1)), A257673(n))` -/
def P7232243895987203354.Spec : Prop :=
  ∀ n, P7232243895987203354.a n = A206306 n

end A206306

/-! ## A206306.P9299736544026020526

`A257673(n)+A025466(A208126(n))`
-/

namespace A206306.P9299736544026020526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 n + A025466 (A208126 n).toNat

end

end A206306.P9299736544026020526

namespace A206306

/-- `A257673(n)+A025466(A208126(n))` -/
def P9299736544026020526.Spec : Prop :=
  ∀ n, P9299736544026020526.a n = A206306 n

end A206306

/-!
# A206307: a(n) = ((2*n+2)*(2*n+3) - 1)*a(n-1) + 2*n*(2*n+1)*a(n-2), a(0)=0, a(1)=6.

The programs for A206307, the canonical program `A206307.P12159469420376832414` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206307 has offset 0).

The definition of A206307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206307.P12159469420376832414

`(4*n²+10*n+5)*a(n-1)+2*n*(2*n+1)*a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206307

/-- `(4*n²+10*n+5)*a(n-1)+2*n*(2*n+1)*a(n-2)` -/
def P12159469420376832414.Spec : Prop :=
  ∀ n, (P12159469420376832414.a n : ℤ) = A206307 n

theorem P12159469420376832414.correct : P12159469420376832414.Spec := by
  intro n
  simp only [A206307]

end A206307

/-! ## A206307.P3245235004952837368

`A009445(n+1)%A206308(n)`
-/

namespace A206307.P3245235004952837368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009445 (n + 1)) (A206308 n)

end

end A206307.P3245235004952837368

namespace A206307

/-- `A009445(n+1)%A206308(n)` -/
def P3245235004952837368.Spec : Prop :=
  ∀ n, P3245235004952837368.a n = A206307 n

end A206307

/-! ## A206307.P2862475558393401318

`A000142(2*n+3)%A206308(n)`
-/

namespace A206307.P2862475558393401318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (2 * n + 3)) (A206308 n)

end

end A206307.P2862475558393401318

namespace A206307

/-- `A000142(2*n+3)%A206308(n)` -/
def P2862475558393401318.Spec : Prop :=
  ∀ n, P2862475558393401318.a n = A206307 n

end A206307

/-! ## A206307.P8063642701344835569

`A074790(n+1)%A186359(2*n+3)`
-/

namespace A206307.P8063642701344835569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074790 (n + 1)) (A186359 (2 * n + 3))

end

end A206307.P8063642701344835569

namespace A206307

/-- `A074790(n+1)%A186359(2*n+3)` -/
def P8063642701344835569.Spec : Prop :=
  ∀ n, P8063642701344835569.a n = A206307 n

end A206307

/-! ## A206307.P15495669541967470585

`A000142(A004274(n+3))%A186359(2*n+3)`
-/

namespace A206307.P15495669541967470585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A004274 (n + 3)).toNat) (A186359 (2 * n + 3))

end

end A206307.P15495669541967470585

namespace A206307

/-- `A000142(A004274(n+3))%A186359(2*n+3)` -/
def P15495669541967470585.Spec : Prop :=
  ∀ n, P15495669541967470585.a n = A206307 n

end A206307

/-!
# A206308: a(n) = ((2*n+2)*(2*n+3) - 1)*a(n-1) + 2*n*(2*n+1)*a(n-2), a(0)=1, a(1)=19.

The programs for A206308, the canonical program `A206308.P13431913507264919544` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206308 has offset 0).

The definition of A206308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206308.P13431913507264919544

`(4*n²+10*n+5)*a(n-1)+2*n*(2*n+1)*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206308

/-- `(4*n²+10*n+5)*a(n-1)+2*n*(2*n+1)*a(n-2)` -/
def P13431913507264919544.Spec : Prop :=
  ∀ n, (P13431913507264919544.a n : ℤ) = A206308 n

theorem P13431913507264919544.correct : P13431913507264919544.Spec := by
  intro n
  simp only [A206308]

end A206308

/-! ## A206308.P13290644271846139883

`A186359(2*n+3)`
-/

namespace A206308.P13290644271846139883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186359 (2 * n + 3)

end

end A206308.P13290644271846139883

namespace A206308

/-- `A186359(2*n+3)` -/
def P13290644271846139883.Spec : Prop :=
  ∀ n, P13290644271846139883.a n = A206308 n

end A206308

/-! ## A206308.P17403024218280496564

`record[A186359(A004273(n))]`
-/

namespace A206308.P17403024218280496564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186359 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206308.P17403024218280496564

namespace A206308

/-- `record[A186359(A004273(n))]` -/
def P17403024218280496564.Spec : Prop :=
  ∀ n, P17403024218280496564.a n = A206308 n

end A206308

/-! ## A206308.P16187078564593470392

`record[A186359(A004274(n))]`
-/

namespace A206308.P16187078564593470392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186359 (A004274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206308.P16187078564593470392

namespace A206308

/-- `record[A186359(A004274(n))]` -/
def P16187078564593470392.Spec : Prop :=
  ∀ n, P16187078564593470392.a n = A206308 n

end A206308

/-! ## A206308.P4676647004574381013

`record[A186359(n*A266070(n))]`
-/

namespace A206308.P4676647004574381013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186359 ((n : ℤ) * A266070 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206308.P4676647004574381013

namespace A206308

/-- `record[A186359(n*A266070(n))]` -/
def P4676647004574381013.Spec : Prop :=
  ∀ n, P4676647004574381013.a n = A206308 n

end A206308

/-!
# A206310: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A206310, there is no canonical definition to state claims against.
-/

/-! ## A206310.P6903241132543250858

`A206318(∑[4*n]+1)`
-/

namespace A206310.P6903241132543250858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206310.P6903241132543250858

/-!
# A206311: Number of (n+1)X2 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A206311, there is no canonical definition to state claims against.
-/

/-! ## A206311.P4900074190807526189

`A206318(∑[n]+1)`
-/

namespace A206311.P4900074190807526189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206311.P4900074190807526189

/-! ## A206311.P15523873154646572303

`record[A206318(n+1)/A022169(n)]`
-/

namespace A206311.P15523873154646572303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206318 (n + 1) : ℚ) / (A022169 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206311.P15523873154646572303

/-! ## A206311.P12929758525660766651

`record[root(A206318(n+1), A009766(n))]`
-/

namespace A206311.P12929758525660766651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206318 (n + 1) : ℝ) ^ (1 / (A009766 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206311.P12929758525660766651

/-! ## A206311.P1525597113012475470

`record[root(A206318(n+1), A076110(n+1))]`
-/

namespace A206311.P1525597113012475470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206318 (n + 1) : ℝ) ^ (1 / (A076110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206311.P1525597113012475470

/-! ## A206311.P16474567940265693690

`record[gcd(A092921(n), A206318(n+1))]`
-/

namespace A206311.P16474567940265693690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A206318 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206311.P16474567940265693690

/-!
# A206312: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A206312, there is no canonical definition to state claims against.
-/

/-! ## A206312.P7491430173559826318

`A205762(n+1)-A205920(n+1)`
-/

namespace A206312.P7491430173559826318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205762 (n + 1) - A205920 (n + 1)

end

end A206312.P7491430173559826318

/-! ## A206312.P10195764913987352942

`A206318(∑[n+1]+2)`
-/

namespace A206312.P10195764913987352942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206312.P10195764913987352942

/-! ## A206312.P5046798102096452310

`A206318(A152948(n+3))+A185238(n)`
-/

namespace A206312.P5046798102096452310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (A152948 (n + 3)).toNat + A185238 n

end

end A206312.P5046798102096452310

/-! ## A206312.P7162414501002478373

`A206318(A000124(n+1)+1)%A180288(3*(n+4))`
-/

namespace A206312.P7162414501002478373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206318 (A000124 (n + 1) + 1).toNat) (A180288 (3 * (n + 4)))

end

end A206312.P7162414501002478373

/-! ## A206312.P11490275348485624428

`A206318(A089071(n+3))+A000332(A045778(n+5))`
-/

namespace A206312.P11490275348485624428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (A089071 (n + 3)).toNat + A000332 (A045778 (n + 5)).toNat

end

end A206312.P11490275348485624428

/-!
# A206313: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A206313, there is no canonical definition to state claims against.
-/

/-! ## A206313.P11050921927016435258

`A206318(∑[n+2]+4)`
-/

namespace A206313.P11050921927016435258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206313.P11050921927016435258

/-! ## A206313.P5385865662197406438

`lcm(A033999(n), A206318(A167614(n+1)))`
-/

namespace A206313.P5385865662197406438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206318 (A167614 (n + 1)).toNat)

end

end A206313.P5385865662197406438

/-! ## A206313.P4114485125386478275

`or(A000007(n), A206318(A167614(n+1)))`
-/

namespace A206313.P4114485125386478275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206318 (A167614 (n + 1)).toNat)

end

end A206313.P4114485125386478275

/-! ## A206313.P13125065647109855802

`or(A000038(n), A206318(A167614(n+1)))`
-/

namespace A206313.P13125065647109855802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206318 (A167614 (n + 1)).toNat)

end

end A206313.P13125065647109855802

/-! ## A206313.P2399643435729034738

`A276183(n+1)+A206318(A167614(n+1))`
-/

namespace A206313.P2399643435729034738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1) + A206318 (A167614 (n + 1)).toNat

end

end A206313.P2399643435729034738

/-!
# A206314: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A206314, there is no canonical definition to state claims against.
-/

/-! ## A206314.P17552900613798275070

`A206318(A167614(n+2)+1)`
-/

namespace A206314.P17552900613798275070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (A167614 (n + 2) + 1).toNat

end

end A206314.P17552900613798275070

/-! ## A206314.P8330650438963231299

`A206318(A155212(n)+5)`
-/

namespace A206314.P8330650438963231299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (A155212 n + 5).toNat

end

end A206314.P8330650438963231299

/-!
# A206315: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A206315, there is no canonical definition to state claims against.
-/

/-! ## A206315.P11695795810796529272

`A206318(A374005(n+1))`
-/

namespace A206315.P11695795810796529272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (A374005 (n + 1)).toNat

end

end A206315.P11695795810796529272

/-! ## A206315.P5802435715239934610

`A206318(eq[2, A092921(n)])`
-/

namespace A206315.P5802435715239934610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206315.P5802435715239934610

/-! ## A206315.P13545446926297245740

`A206318(eq[4, A025581(n)]+1)`
-/

namespace A206315.P13545446926297245740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206315.P13545446926297245740

/-!
# A206319: Number of (n+1)X(n+1) 0..3 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206319, there is no canonical definition to state claims against.
-/

/-! ## A206319.P4677981867570186469

`A206327(∑[4*n]+1)`
-/

namespace A206319.P4677981867570186469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206319.P4677981867570186469

/-! ## A206319.P3160851266998779606

`lcm(2, A206327(A001844(n)))`
-/

namespace A206319.P3160851266998779606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206327 (A001844 n).toNat)

end

end A206319.P3160851266998779606

/-! ## A206319.P4278166682261552452

`A069289(n+1)*A206327(A001844(n))`
-/

namespace A206319.P4278166682261552452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (n + 1) * A206327 (A001844 n).toNat

end

end A206319.P4278166682261552452

/-!
# A206320: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206320, there is no canonical definition to state claims against.
-/

/-! ## A206320.P630709167056495757

`A206327(∑[n]+1)`
-/

namespace A206320.P630709167056495757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206320.P630709167056495757

/-! ## A206320.P3041496372994990346

`lcm(2, A206327(A000124(n)))`
-/

namespace A206320.P3041496372994990346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206327 (A000124 n).toNat)

end

end A206320.P3041496372994990346

/-! ## A206320.P18296710485767907537

`record[A206327(n+1)/A009963(n)]`
-/

namespace A206320.P18296710485767907537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206327 (n + 1) : ℚ) / (A009963 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206320.P18296710485767907537

/-! ## A206320.P6222812383630740860

`record[A206327(n+1)/A118185(n)]`
-/

namespace A206320.P6222812383630740860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206327 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206320.P6222812383630740860

/-! ## A206320.P16681865246171010851

`record[root(A206327(n+1), A007318(n))]`
-/

namespace A206320.P16681865246171010851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206327 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206320.P16681865246171010851

/-!
# A206321: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206321, there is no canonical definition to state claims against.
-/

/-! ## A206321.P5504263746032953950

`A206327(∑[n+1]+2)`
-/

namespace A206321.P5504263746032953950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206321.P5504263746032953950

/-! ## A206321.P7694583101169966384

`record[root(A206327(n+2), A123519(n))]`
-/

namespace A206321.P7694583101169966384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206327 (n + 2) : ℝ) ^ (1 / (A123519 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206321.P7694583101169966384

/-! ## A206321.P11842034971685380064

`record[A206327(abs(A201163(n)))]`
-/

namespace A206321.P11842034971685380064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206321.P11842034971685380064

/-! ## A206321.P390954687297164010

`record[A206327(record[A316669(n+2)])]`
-/

namespace A206321.P390954687297164010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206321.P390954687297164010

/-! ## A206321.P18096020294629310148

`record[root(A206327(n+2), A009963(n+2))]`
-/

namespace A206321.P18096020294629310148
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206327 (n + 2) : ℝ) ^ (1 / (A009963 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206321.P18096020294629310148

/-!
# A206322: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206322, there is no canonical definition to state claims against.
-/

/-! ## A206322.P7080398635427401658

`A206327(∑[n+2]+4)`
-/

namespace A206322.P7080398635427401658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206322.P7080398635427401658

/-! ## A206322.P16172954763494786186

`lcm(2, A206327(A167614(n+1)))`
-/

namespace A206322.P16172954763494786186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206327 (A167614 (n + 1)).toNat)

end

end A206322.P16172954763494786186

/-! ## A206322.P9138386713115981126

`A206327(A167614(n+1))+A181340(n+1)`
-/

namespace A206322.P9138386713115981126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (A167614 (n + 1)).toNat + A181340 (n + 1)

end

end A206322.P9138386713115981126

/-! ## A206322.P8751364432056393230

`A008835(n+1)*A206327(A167614(n+1))`
-/

namespace A206322.P8751364432056393230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A206327 (A167614 (n + 1)).toNat

end

end A206322.P8751364432056393230

/-! ## A206322.P6538838191717369361

`A206327(A167614(n+1))%A251470(n+1)`
-/

namespace A206322.P6538838191717369361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206327 (A167614 (n + 1)).toNat) (A251470 (n + 1))

end

end A206322.P6538838191717369361

/-!
# A206323: Number of (n+1)X5 0..3 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206323, there is no canonical definition to state claims against.
-/

/-! ## A206323.P10752727389422037403

`A206327(A055999(n)+10)`
-/

namespace A206323.P10752727389422037403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (A055999 n + 10).toNat

end

end A206323.P10752727389422037403

/-! ## A206323.P4867575721393757889

`A206327(A167614(n+2)+1)`
-/

namespace A206323.P4867575721393757889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (A167614 (n + 2) + 1).toNat

end

end A206323.P4867575721393757889

/-! ## A206323.P13771877071962586057

`A206327(A155212(n)+5)`
-/

namespace A206323.P13771877071962586057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (A155212 n + 5).toNat

end

end A206323.P13771877071962586057

/-! ## A206323.P5556590103889362830

`A206327(eq[3, A193592(n)])`
-/

namespace A206323.P5556590103889362830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206323.P5556590103889362830

/-!
# A206324: Number of (n+1)X6 0..3 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206324, there is no canonical definition to state claims against.
-/

/-! ## A206324.P2383557435562185686

`A206327(A374005(n+1))`
-/

namespace A206324.P2383557435562185686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (A374005 (n + 1)).toNat

end

end A206324.P2383557435562185686

/-! ## A206324.P973286564012140983

`A206327(Δ[A264443(n)])`
-/

namespace A206324.P973286564012140983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (f1 (n + 1) - f1 n).toNat

end

end A206324.P973286564012140983

/-! ## A206324.P1058789776297892524

`A206327(eq[4, A193592(n)])`
-/

namespace A206324.P1058789776297892524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206324.P1058789776297892524

/-! ## A206324.P8396745804982347072

`A206327(Δ[A023545(n+1)])`
-/

namespace A206324.P8396745804982347072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (f1 (n + 1) - f1 n).toNat

end

end A206324.P8396745804982347072

/-! ## A206324.P13289343309362608261

`A206327(eq[8, A057728(n+1)])`
-/

namespace A206324.P13289343309362608261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206324.P13289343309362608261

/-!
# A206325: 

The programs for A206325, there is no canonical definition to state claims against.
-/

/-! ## A206325.P5911561426507505571

`A206327(eq[5, A193592(n)])`
-/

namespace A206325.P5911561426507505571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206325.P5911561426507505571

/-!
# A206326: 

The programs for A206326, there is no canonical definition to state claims against.
-/

/-! ## A206326.P13778357926882999093

`A206327(eq[6, A193592(n)])`
-/

namespace A206326.P13778357926882999093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206326.P13778357926882999093

/-! ## A206326.P4399687349796460763

`A206327(A052905(n+4)-1)`
-/

namespace A206326.P4399687349796460763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206327 (A052905 (n + 4) - 1).toNat

end

end A206326.P4399687349796460763

/-!
# A206328: Primes of the form n^2+1 such that (n+2)^2+1 is also prime.

The programs for A206328, the canonical program `A206328.P16204761310239543420` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206328 has offset 1).

The definition of A206328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206328.P17413580456382353454

`A096012(n+1)²+1`
-/

namespace A206328.P17413580456382353454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1) ^ 2 + 1

end

end A206328.P17413580456382353454

namespace A206328

/-- `A096012(n+1)²+1` -/
def P17413580456382353454.Spec : Prop :=
  ∀ n, P17413580456382353454.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P7225489709092546299

`(1-A108814(n+1))²+1`
-/

namespace A206328.P7225489709092546299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A108814 (n + 1)) ^ 2 + 1

end

end A206328.P7225489709092546299

namespace A206328

/-- `(1-A108814(n+1))²+1` -/
def P7225489709092546299.Spec : Prop :=
  ∀ n, P7225489709092546299.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P13864495988962774712

`(2*A293621(n+1))²+1`
-/

namespace A206328.P13864495988962774712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A293621 (n + 1)) ^ 2 + 1

end

end A206328.P13864495988962774712

namespace A206328

/-- `(2*A293621(n+1))²+1` -/
def P13864495988962774712.Spec : Prop :=
  ∀ n, P13864495988962774712.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P16204761310239543420

`ceil((1-sqrt(A217583(n+1)))²)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A206328

/-- `ceil((1-sqrt(A217583(n+1)))²)` -/
def P16204761310239543420.Spec : Prop :=
  ∀ n, P16204761310239543420.a n = A206328 (n + 1)

theorem P16204761310239543420.correct : P16204761310239543420.Spec := by
  intro n
  simp only [A206328, Nat.add_sub_cancel]

end A206328

/-! ## A206328.P11282459043321147397

`A217583(n+1)-(A108814(n+1)+A096012(n+1))`
-/

namespace A206328.P11282459043321147397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217583 (n + 1) - (A108814 (n + 1) + A096012 (n + 1))

end

end A206328.P11282459043321147397

namespace A206328

/-- `A217583(n+1)-(A108814(n+1)+A096012(n+1))` -/
def P11282459043321147397.Spec : Prop :=
  ∀ n, P11282459043321147397.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P10220823934605925728

`A053755(A293621(n+1))`
-/

namespace A206328.P10220823934605925728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A293621 (n + 1)).toNat

end

end A206328.P10220823934605925728

namespace A206328

/-- `A053755(A293621(n+1))` -/
def P10220823934605925728.Spec : Prop :=
  ∀ n, P10220823934605925728.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P7420228102828676325

`A053755(A096012(n+1)/2)`
-/

namespace A206328.P7420228102828676325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (SequenceMachineLib.roundAway ((A096012 (n + 1) : ℚ) / 2)).toNat

end

end A206328.P7420228102828676325

namespace A206328

/-- `A053755(A096012(n+1)/2)` -/
def P7420228102828676325.Spec : Prop :=
  ∀ n, P7420228102828676325.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P15497895074134604461

`A002522(A096012(n+1))`
-/

namespace A206328.P15497895074134604461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A096012 (n + 1)).toNat

end

end A206328.P15497895074134604461

namespace A206328

/-- `A002522(A096012(n+1))` -/
def P15497895074134604461.Spec : Prop :=
  ∀ n, P15497895074134604461.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P11066761115356953613

`A098749(A108814(n+1))`
-/

namespace A206328.P11066761115356953613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A108814 (n + 1)).toNat

end

end A206328.P11066761115356953613

namespace A206328

/-- `A098749(A108814(n+1))` -/
def P11066761115356953613.Spec : Prop :=
  ∀ n, P11066761115356953613.a n = A206328 (n + 1)

end A206328

/-! ## A206328.P9491529747594107073

`A219586(A096012(n+1)+1)`
-/

namespace A206328.P9491529747594107073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219586 (A096012 (n + 1) + 1).toNat

end

end A206328.P9491529747594107073

namespace A206328

/-- `A219586(A096012(n+1)+1)` -/
def P9491529747594107073.Spec : Prop :=
  ∀ n, P9491529747594107073.a n = A206328 (n + 1)

end A206328

/-!
# A206329: Squarefree sums of 2 successive primes.

The programs for A206329, the canonical program `A206329.P6902662214066965316` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206329 has offset 1).

The definition of A206329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206329.P15733388909450764307

`A206462(n+1)+A151800(A206462(n+1))`
-/

namespace A206329.P15733388909450764307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206462 (n + 1) + A151800 (A206462 (n + 1)).toNat

end

end A206329.P15733388909450764307

namespace A206329

/-- `A206462(n+1)+A151800(A206462(n+1))` -/
def P15733388909450764307.Spec : Prop :=
  ∀ n, P15733388909450764307.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P6902662214066965316

`filter[A001043(n+1), A008966(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A206329

/-- `filter[A001043(n+1), A008966(#)]` -/
def P6902662214066965316.Spec : Prop :=
  ∀ n, P6902662214066965316.a n = A206329 (n + 1)

theorem P6902662214066965316.correct : P6902662214066965316.Spec := by
  intro n
  simp only [A206329, Nat.add_sub_cancel]

end A206329

/-! ## A206329.P15376584908182639861

`filter[A011974(n+2), A008966(#)]`
-/

namespace A206329.P15376584908182639861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206329.P15376584908182639861

namespace A206329

/-- `filter[A011974(n+2), A008966(#)]` -/
def P15376584908182639861.Spec : Prop :=
  ∀ n, P15376584908182639861.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P7140655360695600403

`filter[A069102(n+3), A008966(#)]`
-/

namespace A206329.P7140655360695600403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206329.P7140655360695600403

namespace A206329

/-- `filter[A069102(n+3), A008966(#)]` -/
def P7140655360695600403.Spec : Prop :=
  ∀ n, P7140655360695600403.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P734234505038078300

`filter[A164653(n+3), A008966(#)]`
-/

namespace A206329.P734234505038078300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206329.P734234505038078300

namespace A206329

/-- `filter[A164653(n+3), A008966(#)]` -/
def P734234505038078300.Spec : Prop :=
  ∀ n, P734234505038078300.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P13026879438263380194

`filter[A144043(2*(n+1)), A008966(#)]`
-/

namespace A206329.P13026879438263380194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206329.P13026879438263380194

namespace A206329

/-- `filter[A144043(2*(n+1)), A008966(#)]` -/
def P13026879438263380194.Spec : Prop :=
  ∀ n, P13026879438263380194.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P2666358667825167744

`∩[A001043(n+1), A005117(n+1)]`
-/

namespace A206329.P2666358667825167744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P2666358667825167744

namespace A206329

/-- `∩[A001043(n+1), A005117(n+1)]` -/
def P2666358667825167744.Spec : Prop :=
  ∀ n, (P2666358667825167744.a n : ℤ) = A206329 (n + 1)

end A206329

/-! ## A206329.P5464180969704595992

`∩[A001043(n+1), A365829(n+1)]`
-/

namespace A206329.P5464180969704595992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P5464180969704595992

namespace A206329

/-- `∩[A001043(n+1), A365829(n+1)]` -/
def P5464180969704595992.Spec : Prop :=
  ∀ n, (P5464180969704595992.a n : ℤ) = A206329 (n + 1)

end A206329

/-! ## A206329.P17580553394211405247

`∩[A144043(n+1), A365829(n+1)]`
-/

namespace A206329.P17580553394211405247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P17580553394211405247

namespace A206329

/-- `∩[A144043(n+1), A365829(n+1)]` -/
def P17580553394211405247.Spec : Prop :=
  ∀ n, (P17580553394211405247.a n : ℤ) = A206329 (n + 1)

end A206329

/-! ## A206329.P18296603811122504809

`∩[A001043(n+1), A089269(n+1)]`
-/

namespace A206329.P18296603811122504809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P18296603811122504809

namespace A206329

/-- `∩[A001043(n+1), A089269(n+1)]` -/
def P18296603811122504809.Spec : Prop :=
  ∀ n, (P18296603811122504809.a n : ℤ) = A206329 (n + 1)

end A206329

/-! ## A206329.P15621539016331729666

`A013634(A206462(n+1))`
-/

namespace A206329.P15621539016331729666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A206462 (n + 1)).toNat

end

end A206329.P15621539016331729666

namespace A206329

/-- `A013634(A206462(n+1))` -/
def P15621539016331729666.Spec : Prop :=
  ∀ n, P15621539016331729666.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P8512822450210558012

`record[A055231(A001043(n+1))]`
-/

namespace A206329.P8512822450210558012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206329.P8512822450210558012

namespace A206329

/-- `record[A055231(A001043(n+1))]` -/
def P8512822450210558012.Spec : Prop :=
  ∀ n, P8512822450210558012.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P905147665565506170

`record[A055231(A011974(n+2))]`
-/

namespace A206329.P905147665565506170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A011974 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206329.P905147665565506170

namespace A206329

/-- `record[A055231(A011974(n+2))]` -/
def P905147665565506170.Spec : Prop :=
  ∀ n, P905147665565506170.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P2768334295545608395

`A206462(n+1)+A007918(A206462(n+1)+1)`
-/

namespace A206329.P2768334295545608395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206462 (n + 1) + A007918 (A206462 (n + 1) + 1).toNat

end

end A206329.P2768334295545608395

namespace A206329

/-- `A206462(n+1)+A007918(A206462(n+1)+1)` -/
def P2768334295545608395.Spec : Prop :=
  ∀ n, P2768334295545608395.a n = A206329 (n + 1)

end A206329

/-! ## A206329.P6113806214556245855

`∩[A001043(n+1), A034044(n+1)]`
-/

namespace A206329.P6113806214556245855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P6113806214556245855

namespace A206329

/-- `∩[A001043(n+1), A034044(n+1)]` -/
def P6113806214556245855.Spec : Prop :=
  ∀ n, (P6113806214556245855.a n : ℤ) = A206329 (n + 1)

end A206329

/-! ## A206329.P11852899483465745506

`∩[A001043(n+1), A049197(n+1)]`
-/

namespace A206329.P11852899483465745506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P11852899483465745506

namespace A206329

/-- `∩[A001043(n+1), A049197(n+1)]` -/
def P11852899483465745506.Spec : Prop :=
  ∀ n, (P11852899483465745506.a n : ℤ) = A206329 (n + 1)

end A206329

/-! ## A206329.P900133662150707304

`∩[A011974(n+1), A049197(n+1)]`
-/

namespace A206329.P900133662150707304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206329.P900133662150707304

namespace A206329

/-- `∩[A011974(n+1), A049197(n+1)]` -/
def P900133662150707304.Spec : Prop :=
  ∀ n, (P900133662150707304.a n : ℤ) = A206329 (n + 1)

end A206329

/-!
# A206330: Numbers that match polynomials irreducible over the integers.

The programs for A206330, there is no canonical definition to state claims against.
-/

/-! ## A206330.P13853584780861462981

`comp[A206331(n)]`
-/

namespace A206330.P13853584780861462981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A206330.P13853584780861462981

/-! ## A206330.P1244103728495376391

`eq[char[A206331(n)], A066035(n)]`
-/

namespace A206330.P1244103728495376391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206331 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206330.P1244103728495376391

/-! ## A206330.P16156023690528275586

`∑[A056753(A008243(n)*A216913(n+1))]`
-/

namespace A206330.P16156023690528275586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A008243 n * A216913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206330.P16156023690528275586

/-!
# A206331: Numbers that match polynomials not irreducible over the integers.

The programs for A206331, there is no canonical definition to state claims against.
-/

/-! ## A206331.P16196154357578035360

`comp[A206330(n+1)]`
-/

namespace A206331.P16196154357578035360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A206331.P16196154357578035360

/-!
# A206332: Complement of A092754.

The programs for A206332, the canonical program `A206332.P9847070516523007032` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206332 has offset 1).

The definition of A206332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206332.P9847070516523007032

`A004755(n+1)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A206332

/-- `A004755(n+1)-1` -/
def P9847070516523007032.Spec : Prop :=
  ∀ n, P9847070516523007032.a n = A206332 (n + 1)

theorem P9847070516523007032.correct : P9847070516523007032.Spec := by
  intro n
  simp only [A206332, Nat.add_sub_cancel]

end A206332

/-! ## A206332.P6654080674162789129

`A004760(n+3)-1`
-/

namespace A206332.P6654080674162789129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 3) - 1

end

end A206332.P6654080674162789129

namespace A206332

/-- `A004760(n+3)-1` -/
def P6654080674162789129.Spec : Prop :=
  ∀ n, P6654080674162789129.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P12032572639466432781

`lt[xor(n, floor(n/2)), n]-1`
-/

namespace A206332.P12032572639466432781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A206332.P12032572639466432781

namespace A206332

/-- `lt[xor(n, floor(n/2)), n]-1` -/
def P12032572639466432781.Spec : Prop :=
  ∀ n, P12032572639466432781.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P448455734695733982

`lt[n, 2*and(n, 2*n)]-1`
-/

namespace A206332.P448455734695733982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A206332.P448455734695733982

namespace A206332

/-- `lt[n, 2*and(n, 2*n)]-1` -/
def P448455734695733982.Spec : Prop :=
  ∀ n, P448455734695733982.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P14686573901872590149

`lt[n, and(2*n, 4*(n+1))]`
-/

namespace A206332.P14686573901872590149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206332.P14686573901872590149

namespace A206332

/-- `lt[n, and(2*n, 4*(n+1))]` -/
def P14686573901872590149.Spec : Prop :=
  ∀ n, (P14686573901872590149.a n : ℤ) = A206332 (n + 1)

end A206332

/-! ## A206332.P18099844849723640974

`∑[Δ[or(n, a(n-1))]+1]` with `a(0)=0`
-/

namespace A206332.P18099844849723640974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.lor n (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206332.P18099844849723640974

namespace A206332

/-- `∑[Δ[or(n, a(n-1))]+1]` -/
def P18099844849723640974.Spec : Prop :=
  ∀ n, P18099844849723640974.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P14848421689781560867

`∑[C(and(n+1, 2*n), n)+1]`
-/

namespace A206332.P14848421689781560867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206332.P14848421689781560867

namespace A206332

/-- `∑[C(and(n+1, 2*n), n)+1]` -/
def P14848421689781560867.Spec : Prop :=
  ∀ n, (P14848421689781560867.a n : ℤ) = A206332 (n + 1)

end A206332

/-! ## A206332.P2960857606349246342

`or(n+1, a(n-1)+2)-1` with `a(0)=2`
-/

namespace A206332.P2960857606349246342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (n + 1 : ℤ) (a (n - 1) + 2) - 1

end

end A206332.P2960857606349246342

namespace A206332

/-- `or(n+1, a(n-1)+2)-1` -/
def P2960857606349246342.Spec : Prop :=
  ∀ n, P2960857606349246342.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P17158831058564289426

`lt[xor(n, 2*(n+1)), 2*n+1]`
-/

namespace A206332.P17158831058564289426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206332.P17158831058564289426

namespace A206332

/-- `lt[xor(n, 2*(n+1)), 2*n+1]` -/
def P17158831058564289426.Spec : Prop :=
  ∀ n, (P17158831058564289426.a n : ℤ) = A206332 (n + 1)

end A206332

/-! ## A206332.P6167091876947888912

`∑[floor((n+2)/(and(n, n+1)+1))]`
-/

namespace A206332.P6167091876947888912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (Nat.land n (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206332.P6167091876947888912

namespace A206332

/-- `∑[floor((n+2)/(and(n, n+1)+1))]` -/
def P6167091876947888912.Spec : Prop :=
  ∀ n, P6167091876947888912.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P15999471795274257686

`(a(n-1)-n)%(n+1)+2*(n+1)` with `a(0)=2`
-/

namespace A206332.P15999471795274257686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) - (n : ℤ)) (n + 1 : ℤ) + (2 * (n + 1) : ℤ)

end

end A206332.P15999471795274257686

namespace A206332

/-- `(a(n-1)-n)%(n+1)+2*(n+1)` -/
def P15999471795274257686.Spec : Prop :=
  ∀ n, P15999471795274257686.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P824661536416630550

`a(n-1)+gcd(n+2, gcd(n, a(n-1))%n)` with `a(0)=2`
-/

namespace A206332.P824661536416630550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.gcd (n + 2) (Nat.gcd n (a (n - 1)) % n)

end

end A206332.P824661536416630550

namespace A206332

/-- `a(n-1)+gcd(n+2, gcd(n, a(n-1))%n)` -/
def P824661536416630550.Spec : Prop :=
  ∀ n, (P824661536416630550.a n : ℤ) = A206332 (n + 1)

end A206332

/-! ## A206332.P8370994917889769684

`∑[A099894(n)+1]`
-/

namespace A206332.P8370994917889769684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206332.P8370994917889769684

namespace A206332

/-- `∑[A099894(n)+1]` -/
def P8370994917889769684.Spec : Prop :=
  ∀ n, P8370994917889769684.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P909634832312856839

`lt[1, A090996(n+1)]`
-/

namespace A206332.P909634832312856839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206332.P909634832312856839

namespace A206332

/-- `lt[1, A090996(n+1)]` -/
def P909634832312856839.Spec : Prop :=
  ∀ n, (P909634832312856839.a n : ℤ) = A206332 (n + 1)

end A206332

/-! ## A206332.P16658279576951299807

`lt[1, A090996(n)]-1`
-/

namespace A206332.P16658279576951299807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A206332.P16658279576951299807

namespace A206332

/-- `lt[1, A090996(n)]-1` -/
def P16658279576951299807.Spec : Prop :=
  ∀ n, P16658279576951299807.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P400408179334826804

`or(n, 2*A132196(n))`
-/

namespace A206332.P400408179334826804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * A132196 n)

end

end A206332.P400408179334826804

namespace A206332

/-- `or(n, 2*A132196(n))` -/
def P400408179334826804.Spec : Prop :=
  ∀ n, P400408179334826804.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P3118357394879568728

`lt[A003188(n), n]-1`
-/

namespace A206332.P3118357394879568728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A206332.P3118357394879568728

namespace A206332

/-- `lt[A003188(n), n]-1` -/
def P3118357394879568728.Spec : Prop :=
  ∀ n, P3118357394879568728.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P16412074866412760

`lt[A063946(n), n]-1`
-/

namespace A206332.P16412074866412760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A206332.P16412074866412760

namespace A206332

/-- `lt[A063946(n), n]-1` -/
def P16412074866412760.Spec : Prop :=
  ∀ n, P16412074866412760.a n = A206332 (n + 1)

end A206332

/-! ## A206332.P4487733605347007207

`∑[A048298(n+1)+1]`
-/

namespace A206332.P4487733605347007207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206332.P4487733605347007207

namespace A206332

/-- `∑[A048298(n+1)+1]` -/
def P4487733605347007207.Spec : Prop :=
  ∀ n, P4487733605347007207.a n = A206332 (n + 1)

end A206332

/-!
# A206334: Numbers n such that there is a triangle with area n, side n, and the other two sides rational.

The programs for A206334, there is no canonical definition to state claims against.
-/

/-! ## A206334.P13692238175496340117

`A001222(A004771(9*n*∑[n]+1))+1+n+n`
-/

namespace A206334.P13692238175496340117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004771 (9 * (n * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1)).toNat + 1 + (n : ℤ) + (n : ℤ)

end

end A206334.P13692238175496340117

/-! ## A206334.P14290510443154498148

`eq[A353516(A098950(3*(n+1))), A353516(3*n+4)]`
-/

namespace A206334.P14290510443154498148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (A098950 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206334.P14290510443154498148

/-!
# A206335: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206335, there is no canonical definition to state claims against.
-/

/-! ## A206335.P1546552898039585814

`A206343((n+1)²+n²)`
-/

namespace A206335.P1546552898039585814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 ((n + 1) ^ 2 + n ^ 2)

end

end A206335.P1546552898039585814

/-! ## A206335.P14451633378004888541

`abs(A033999(n)*A206343(A001844(n)))`
-/

namespace A206335.P14451633378004888541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A206343 (A001844 n).toNat|

end

end A206335.P14451633378004888541

/-! ## A206335.P17070798600471626587

`A054977(n+1)*A206343(A001844(n))`
-/

namespace A206335.P17070798600471626587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A206343 (A001844 n).toNat

end

end A206335.P17070798600471626587

/-! ## A206335.P1983160928525667580

`A000034(2*n)*A206343(A001844(n))`
-/

namespace A206335.P1983160928525667580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A206343 (A001844 n).toNat

end

end A206335.P1983160928525667580

/-!
# A206336: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206336, there is no canonical definition to state claims against.
-/

/-! ## A206336.P7612104512193416839

`A206343(∑[n]+1)`
-/

namespace A206336.P7612104512193416839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206336.P7612104512193416839

/-! ## A206336.P13919571353591074945

`xor(2, xor(2, A206343(A000124(n))))`
-/

namespace A206336.P13919571353591074945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A206343 (A000124 n).toNat))

end

end A206336.P13919571353591074945

/-! ## A206336.P7305107355784238748

`lcm(A000034(n), A206343(A000124(n)))`
-/

namespace A206336.P7305107355784238748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A206343 (A000124 n).toNat)

end

end A206336.P7305107355784238748

/-! ## A206336.P9243331667916835964

`A033999(n)²*A206343(A000124(n))`
-/

namespace A206336.P9243331667916835964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A206343 (A000124 n).toNat

end

end A206336.P9243331667916835964

/-! ## A206336.P8705235302163888935

`A206343(A000124(n))+A000007(n+1)`
-/

namespace A206336.P8705235302163888935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A000124 n).toNat + A000007 (n + 1)

end

end A206336.P8705235302163888935

/-! ## A206336.P2649269754556405772

`A000034(2*n)*A206343(A000124(n))`
-/

namespace A206336.P2649269754556405772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A206343 (A000124 n).toNat

end

end A206336.P2649269754556405772

/-! ## A206336.P13454183167740759377

`A033999(2*n)*A206343(A000124(n))`
-/

namespace A206336.P13454183167740759377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A206343 (A000124 n).toNat

end

end A206336.P13454183167740759377

/-! ## A206336.P11989164553874599455

`A206343(A000124(n))%A206342(n+1)`
-/

namespace A206336.P11989164553874599455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206343 (A000124 n).toNat) (A206342 (n + 1))

end

end A206336.P11989164553874599455

/-! ## A206336.P14695075348150118025

`A001065(A000040(n+1))*A206343(A000124(n))`
-/

namespace A206336.P14695075348150118025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A206343 (A000124 n).toNat

end

end A206336.P14695075348150118025

/-! ## A206336.P18393184368525268746

`A001221(A002476(n+1))*A206343(A000124(n))`
-/

namespace A206336.P18393184368525268746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 1)).toNat * A206343 (A000124 n).toNat

end

end A206336.P18393184368525268746

/-!
# A206337: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206337, there is no canonical definition to state claims against.
-/

/-! ## A206337.P2067816427256154922

`A206343(∑[n+1]+2)`
-/

namespace A206337.P2067816427256154922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206337.P2067816427256154922

/-! ## A206337.P10284749354380250503

`A206343(A133263(n+1))+A000007(n+1)`
-/

namespace A206337.P10284749354380250503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A206337.P10284749354380250503

/-! ## A206337.P14688234252588329566

`A206343(A133263(n+1))+char[A206343(n+2)]`
-/

namespace A206337.P14688234252588329566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A206337.P14688234252588329566

/-! ## A206337.P5296627983178813409

`A359311(ceil(n/63))+A206343(A133263(n+1))`
-/

namespace A206337.P5296627983178813409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359311 ⌈(n : ℚ) / 63⌉.toNat + A206343 (A133263 (n + 1)).toNat

end

end A206337.P5296627983178813409

/-! ## A206337.P1000415727110914143

`A206343(A133263(n+1))*A359328(ceil(n/63))`
-/

namespace A206337.P1000415727110914143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A133263 (n + 1)).toNat * A359328 ⌈(n : ℚ) / 63⌉.toNat

end

end A206337.P1000415727110914143

/-! ## A206337.P17597521293111272279

`A206343(A133263(n+1))+A045763(ceil(n/63)+1)`
-/

namespace A206337.P17597521293111272279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A133263 (n + 1)).toNat + A045763 (⌈(n : ℚ) / 63⌉ + 1).toNat

end

end A206337.P17597521293111272279

/-! ## A206337.P6132740408513802844

`A206343(A133263(n+1))*A262079(ceil(n/63)+1)`
-/

namespace A206337.P6132740408513802844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A133263 (n + 1)).toNat * A262079 (⌈(n : ℚ) / 63⌉ + 1).toNat

end

end A206337.P6132740408513802844

/-!
# A206338: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206338, there is no canonical definition to state claims against.
-/

/-! ## A206338.P4136826683693352985

`A206343(A167614(n+1))`
-/

namespace A206338.P4136826683693352985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A167614 (n + 1)).toNat

end

end A206338.P4136826683693352985

/-! ## A206338.P2216026504014108002

`A206343(A373663(n+1))`
-/

namespace A206338.P2216026504014108002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A373663 (n + 1)).toNat

end

end A206338.P2216026504014108002

/-! ## A206338.P13447369591072346101

`A206343(A055998(n)+6)`
-/

namespace A206338.P13447369591072346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A055998 n + 6).toNat

end

end A206338.P13447369591072346101

/-! ## A206338.P16066506881492896990

`A206343(A167499(n)+n)`
-/

namespace A206338.P16066506881492896990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A167499 n + (n : ℤ)).toNat

end

end A206338.P16066506881492896990

/-! ## A206338.P11061527390757949377

`A206343(A034856(n+1)+5)`
-/

namespace A206338.P11061527390757949377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A034856 (n + 1) + 5).toNat

end

end A206338.P11061527390757949377

/-! ## A206338.P11061886665783443837

`A206343(∑[n+3]+1)`
-/

namespace A206338.P11061886665783443837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206338.P11061886665783443837

/-!
# A206339: Number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206339, there is no canonical definition to state claims against.
-/

/-! ## A206339.P12444795856916558567

`A206343(∑[n+3]+7)`
-/

namespace A206339.P12444795856916558567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206339.P12444795856916558567

/-! ## A206339.P5796453610539737518

`lcm(A033999(n), A206343(A167614(n+2)+1))`
-/

namespace A206339.P5796453610539737518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206343 (A167614 (n + 2) + 1).toNat)

end

end A206339.P5796453610539737518

/-! ## A206339.P15524847700598008339

`A206343(A167614(n+2)+1)%A206340(n+1)`
-/

namespace A206339.P15524847700598008339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206343 (A167614 (n + 2) + 1).toNat) (A206340 (n + 1))

end

end A206339.P15524847700598008339

/-! ## A206339.P13523054348911485979

`or(A070140(n+1), A206343(A167614(n+2)+1))`
-/

namespace A206339.P13523054348911485979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070140 (n + 1)) (A206343 (A167614 (n + 2) + 1).toNat)

end

end A206339.P13523054348911485979

/-! ## A206339.P10009042887100047999

`A014963(4*n+6)*A206343(A167614(n+2)+1)`
-/

namespace A206339.P10009042887100047999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A206343 (A167614 (n + 2) + 1).toNat

end

end A206339.P10009042887100047999

/-!
# A206340: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206340, there is no canonical definition to state claims against.
-/

/-! ## A206340.P15738069208131348692

`A206343(∑[n+4]+11)`
-/

namespace A206340.P15738069208131348692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A206340.P15738069208131348692

/-! ## A206340.P4696349658123930203

`round(n/(n+1))!*A206343(A000124(n+4)+4)`
-/

namespace A206340.P4696349658123930203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ) * A206343 (A000124 (n + 4) + 4).toNat

end

end A206340.P4696349658123930203

/-! ## A206340.P16765487895110328548

`A028920(2*n)*A206343(A167499(n+3))`
-/

namespace A206340.P16765487895110328548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) * A206343 (A167499 (n + 3)).toNat

end

end A206340.P16765487895110328548

/-! ## A206340.P8914041293598026968

`A206343(A167499(n+3))%A206342(n+1)`
-/

namespace A206340.P8914041293598026968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206343 (A167499 (n + 3)).toNat) (A206342 (n + 1))

end

end A206340.P8914041293598026968

/-! ## A206340.P12049267447699879760

`lcm(A034947(n²+5), A206343(A056000(n)+15))`
-/

namespace A206340.P12049267447699879760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n ^ 2 + 5)) (A206343 (A056000 n + 15).toNat)

end

end A206340.P12049267447699879760

/-! ## A206340.P11823407734188963167

`A001511(2*n+1)*A206343(A167499(n+3))`
-/

namespace A206340.P11823407734188963167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A206343 (A167499 (n + 3)).toNat

end

end A206340.P11823407734188963167

/-! ## A206340.P14863260010371124987

`ceil(2/A000040(n+1))*A206343(A167499(n+3))`
-/

namespace A206340.P14863260010371124987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A000040 (n + 1) : ℚ)⌉ * A206343 (A167499 (n + 3)).toNat

end

end A206340.P14863260010371124987

/-! ## A206340.P4173684990748913306

`A001221(A002476(n+1))*A206343(A000124(n+4)+4)`
-/

namespace A206340.P4173684990748913306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 1)).toNat * A206343 (A000124 (n + 4) + 4).toNat

end

end A206340.P4173684990748913306

/-! ## A206340.P13952452501598654002

`A001221(A005384(n+2))*A206343(A000124(n+4)+4)`
-/

namespace A206340.P13952452501598654002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005384 (n + 2)).toNat * A206343 (A000124 (n + 4) + 4).toNat

end

end A206340.P13952452501598654002

/-! ## A206340.P12824250228085361746

`A001221(A008578(n+2))*A206343(A000124(n+4)+4)`
-/

namespace A206340.P12824250228085361746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 2)).toNat * A206343 (A000124 (n + 4) + 4).toNat

end

end A206340.P12824250228085361746

/-!
# A206341: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206341, there is no canonical definition to state claims against.
-/

/-! ## A206341.P10600159403126010849

`A206343(A374007(n+1))`
-/

namespace A206341.P10600159403126010849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A374007 (n + 1)).toNat

end

end A206341.P10600159403126010849

/-! ## A206341.P17270973614505890345

`or(char[1], A206343(A167499(n+4)+1))`
-/

namespace A206341.P17270973614505890345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A206343 (A167499 (n + 4) + 1).toNat)

end

end A206341.P17270973614505890345

/-! ## A206341.P16162636674191210410

`A165326(n)²*A206343(A167499(n+4)+1)`
-/

namespace A206341.P16162636674191210410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A206343 (A167499 (n + 4) + 1).toNat

end

end A206341.P16162636674191210410

/-! ## A206341.P17535929759739166546

`A210709(A137397(n))+A206343(A167499(n+4)+1)`
-/

namespace A206341.P17535929759739166546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A137397 n).toNat + A206343 (A167499 (n + 4) + 1).toNat

end

end A206341.P17535929759739166546

/-! ## A206341.P14896723822372246855

`A206343((n+4)²-∑[n+1]+1)`
-/

namespace A206341.P14896723822372246855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A206341.P14896723822372246855

/-! ## A206341.P12028985708865116666

`A206343(A052905(n+3))%A235097(n+1)`
-/

namespace A206341.P12028985708865116666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206343 (A052905 (n + 3)).toNat) (A235097 (n + 1))

end

end A206341.P12028985708865116666

/-! ## A206341.P14098154216875570654

`lcm(A034947(n²+5), A206343(A055999(n+3)+1))`
-/

namespace A206341.P14098154216875570654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n ^ 2 + 5)) (A206343 (A055999 (n + 3) + 1).toNat)

end

end A206341.P14098154216875570654

/-!
# A206342: Number of (n+1)X8 0..3 arrays with every 2X2 subblock having nonzero determinant and commuting with every horizontal or vertical neighbor.

The programs for A206342, there is no canonical definition to state claims against.
-/

/-! ## A206342.P11603484868670080714

`A206343(A374008(n+1))`
-/

namespace A206342.P11603484868670080714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A374008 (n + 1)).toNat

end

end A206342.P11603484868670080714

/-! ## A206342.P4324841116803160325

`A206343(A166136(n+5)+1)`
-/

namespace A206342.P4324841116803160325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A166136 (n + 5) + 1).toNat

end

end A206342.P4324841116803160325

/-! ## A206342.P5969169023696934114

`A206343(A167499(n+5)+2)`
-/

namespace A206342.P5969169023696934114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A167499 (n + 5) + 2).toNat

end

end A206342.P5969169023696934114

/-! ## A206342.P10611568715855440105

`A206343(A000124(n+6)+6)`
-/

namespace A206342.P10611568715855440105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A000124 (n + 6) + 6).toNat

end

end A206342.P10611568715855440105

/-! ## A206342.P3463794578624336594

`A206343(A133263(n+4)+A005843(n+8))`
-/

namespace A206342.P3463794578624336594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A133263 (n + 4) + A005843 (n + 8)).toNat

end

end A206342.P3463794578624336594

/-! ## A206342.P6963853711309194130

`A206343(A055999(n+4))`
-/

namespace A206342.P6963853711309194130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A055999 (n + 4)).toNat

end

end A206342.P6963853711309194130

/-! ## A206342.P17378670051186866263

`A206343(A055998(n+5)-3)`
-/

namespace A206342.P17378670051186866263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A055998 (n + 5) - 3).toNat

end

end A206342.P17378670051186866263

/-! ## A206342.P4214354935284651981

`A206343(A005843(n+4)+A000096(n+4))`
-/

namespace A206342.P4214354935284651981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206343 (A005843 (n + 4) + A000096 (n + 4)).toNat

end

end A206342.P4214354935284651981

/-!
# A206344: a(n) = floor(n/2)^n.

The programs for A206344, the canonical program `A206344.P17295113768205150039` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206344 has offset 1).

The definition of A206344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/2)^(n+1)` (program `A206344.P17295113768205150039`, by `A206344.P17295113768205150039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206344.P17295113768205150039

`floor((n+1)/2)^(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206344

/-- `floor((n+1)/2)^(n+1)` -/
def P17295113768205150039.Spec : Prop :=
  ∀ n, P17295113768205150039.a n = A206344 (n + 1)

theorem P17295113768205150039.correct : P17295113768205150039.Spec := by
  intro n
  simp only [A206344, Nat.add_sub_cancel]

end A206344

/-! ## A206344.P6559056919554960933

`abs(∑[n%-2]^(n+1))`
-/

namespace A206344.P6559056919554960933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)|

end

end A206344.P6559056919554960933

namespace A206344

/-- `abs(∑[n%-2]^(n+1))` -/
def P6559056919554960933.Spec : Prop :=
  ∀ n, P6559056919554960933.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P10281766866119691367

`abs(∑[-and(1, n)]^(n+1))`
-/

namespace A206344.P10281766866119691367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)|

end

end A206344.P10281766866119691367

namespace A206344

/-- `abs(∑[-and(1, n)]^(n+1))` -/
def P10281766866119691367.Spec : Prop :=
  ∀ n, P10281766866119691367.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P16738213112807004140

`∑[and(1, n)]^n*∑[and(1, n)]`
-/

namespace A206344.P16738213112807004140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A206344.P16738213112807004140

namespace A206344

/-- `∑[and(1, n)]^n*∑[and(1, n)]` -/
def P16738213112807004140.Spec : Prop :=
  ∀ n, (P16738213112807004140.a n : ℤ) = A206344 (n + 1)

end A206344

/-! ## A206344.P5002767311618769553

`abs(∑[1-a(n-1)]^(n+1))` with `a(0)=0`
-/

namespace A206344.P5002767311618769553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)|

end

end A206344.P5002767311618769553

namespace A206344

/-- `abs(∑[1-a(n-1)]^(n+1))` -/
def P5002767311618769553.Spec : Prop :=
  ∀ n, P5002767311618769553.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P7322447034665420879

`floor(∑[1-a(n-1)]^(n+1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A206344.P7322447034665420879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A206344.P7322447034665420879

namespace A206344

/-- `floor(∑[1-a(n-1)]^(n+1))` -/
def P7322447034665420879.Spec : Prop :=
  ∀ n, P7322447034665420879.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P11275252681085638118

`ceil(∑[1-a(n-1)]^(n+1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A206344.P11275252681085638118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A206344.P11275252681085638118

namespace A206344

/-- `ceil(∑[1-a(n-1)]^(n+1))` -/
def P11275252681085638118.Spec : Prop :=
  ∀ n, P11275252681085638118.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P14658404891513511826

`round(∑[1-a(n-1)]^(n+1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A206344.P14658404891513511826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A206344.P14658404891513511826

namespace A206344

/-- `round(∑[1-a(n-1)]^(n+1))` -/
def P14658404891513511826.Spec : Prop :=
  ∀ n, P14658404891513511826.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P259069709566124643

`A004248(A210981(n+1))`
-/

namespace A206344.P259069709566124643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A210981 (n + 1)).toNat

end

end A206344.P259069709566124643

namespace A206344

/-- `A004248(A210981(n+1))` -/
def P259069709566124643.Spec : Prop :=
  ∀ n, P259069709566124643.a n = A206344 (n + 1)

end A206344

/-! ## A206344.P14513393754357824932

`A095886(A000982(n+1))`
-/

namespace A206344.P14513393754357824932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095886 (A000982 (n + 1)).toNat

end

end A206344.P14513393754357824932

namespace A206344

/-- `A095886(A000982(n+1))` -/
def P14513393754357824932.Spec : Prop :=
  ∀ n, P14513393754357824932.a n = A206344 (n + 1)

end A206344

/-!
# A206345: Number of solvable clock puzzles with n positions in Final Fantasy XIII-2.

The programs for A206345, there is no canonical definition to state claims against.
-/

/-! ## A206345.P15585074936160815990

`A161924(A151498(n))-A151461(n)`
-/

namespace A206345.P15585074936160815990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161924 (A151498 n).toNat - A151461 n

end

end A206345.P15585074936160815990

/-! ## A206345.P2130203951616159303

`A080100(A070030(n+2))-A238121(2*n)`
-/

namespace A206345.P2130203951616159303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A070030 (n + 2)).toNat - A238121 (2 * n)

end

end A206345.P2130203951616159303

/-!
# A206347: Numbers n such that 10*n+1, 20*n+1, and 30*n+1 are all primes.

The programs for A206347, there is no canonical definition to state claims against.
-/

/-! ## A206347.P668783211005386189

`A325164(A126144(n+1)+1)`
-/

namespace A206347.P668783211005386189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325164 (A126144 (n + 1) + 1).toNat

end

end A206347.P668783211005386189

/-!
# A206349: Even numbers k such that 6k+1, 12k+1, 18k+1, 36k+1 and 72k+1 are all primes.

The programs for A206349, there is no canonical definition to state claims against.
-/

/-! ## A206349.P16293164652138443075

`filter[A257035(n+1), A059841(#)]`
-/

namespace A206349.P16293164652138443075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A206349.P16293164652138443075

/-!
# A206350: Position of 1/n in the canonical bijection from the positive integers to the positive rational numbers.

The programs for A206350, the canonical program `A206350.P761280235204802101` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206350 has offset 1).

The definition of A206350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206350.P14961838386496528440

`floor(2/acot(A002088(n)))`
-/

namespace A206350.P14961838386496528440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A002088 n : ℝ)⌋

end

end A206350.P14961838386496528440

namespace A206350

/-- `floor(2/acot(A002088(n)))` -/
def P14961838386496528440.Spec : Prop :=
  ∀ n, P14961838386496528440.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P761280235204802101

`A140434(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206350

/-- `A140434(n)+a(n-1)` -/
def P761280235204802101.Spec : Prop :=
  ∀ n, P761280235204802101.a n = A206350 (n + 1)

theorem P761280235204802101.correct : P761280235204802101.Spec := by
  intro n
  simp only [A206350, Nat.add_sub_cancel]

end A206350

/-! ## A206350.P5574664561829819521

`a(n-1)+2*A000010(n)` with `a(0)=1, a(1)=2`
-/

namespace A206350.P5574664561829819521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 2 * A000010 n

end

end A206350.P5574664561829819521

namespace A206350

/-- `a(n-1)+2*A000010(n)` -/
def P5574664561829819521.Spec : Prop :=
  ∀ n, P5574664561829819521.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P702417825792547985

`∑[2*A000010(n*a(and(1, n)))]` with `a(0)=1, a(1)=1`
-/

namespace A206350.P702417825792547985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * A000010 ((n : ℤ) * f1 (Nat.land 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206350.P702417825792547985

namespace A206350

/-- `∑[2*A000010(n*a(and(1, n)))]` -/
def P702417825792547985.Spec : Prop :=
  ∀ n, P702417825792547985.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P671165860455145264

`∑[2*A000010(n/a(C(2, n)))]` with `a(0)=1, a(1)=1`
-/

namespace A206350.P671165860455145264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * A000010 (SequenceMachineLib.roundAway ((n : ℚ) / (f1 (Nat.choose 2 n) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206350.P671165860455145264

namespace A206350

/-- `∑[2*A000010(n/a(C(2, n)))]` -/
def P671165860455145264.Spec : Prop :=
  ∀ n, P671165860455145264.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P13766671692388605020

`∑[2*A000010(n*a(C(n, n²)))]` with `a(0)=1, a(1)=1`
-/

namespace A206350.P13766671692388605020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * A000010 ((n : ℤ) * f1 (Nat.choose n (n ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206350.P13766671692388605020

namespace A206350

/-- `∑[2*A000010(n*a(C(n, n²)))]` -/
def P13766671692388605020.Spec : Prop :=
  ∀ n, P13766671692388605020.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P935466286593929209

`A049696(n)+A000007(n)`
-/

namespace A206350.P935466286593929209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + A000007 n

end

end A206350.P935466286593929209

namespace A206350

/-- `A049696(n)+A000007(n)` -/
def P935466286593929209.Spec : Prop :=
  ∀ n, P935466286593929209.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P16839487035109786979

`A049696(n)^abs(A057428(n))`
-/

namespace A206350.P16839487035109786979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) ^ (|A057428 n| : ℤ)

end

end A206350.P16839487035109786979

namespace A206350

/-- `A049696(n)^abs(A057428(n))` -/
def P16839487035109786979.Spec : Prop :=
  ∀ n, P16839487035109786979.a n = (A206350 (n + 1) : ℚ)

end A206350

/-! ## A206350.P17174905686985705794

`A049696(n)+1-A057427(n)`
-/

namespace A206350.P17174905686985705794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (1 - A057427 n)

end

end A206350.P17174905686985705794

namespace A206350

/-- `A049696(n)+1-A057427(n)` -/
def P17174905686985705794.Spec : Prop :=
  ∀ n, P17174905686985705794.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P11058094835956596144

`A000007(n)+2*A002088(n)`
-/

namespace A206350.P11058094835956596144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A002088 n

end

end A206350.P11058094835956596144

namespace A206350

/-- `A000007(n)+2*A002088(n)` -/
def P11058094835956596144.Spec : Prop :=
  ∀ n, P11058094835956596144.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P17824137493904927282

`A028310(n)+A049696(n)-n`
-/

namespace A206350.P17824137493904927282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A049696 n - (n : ℤ))

end

end A206350.P17824137493904927282

namespace A206350

/-- `A028310(n)+A049696(n)-n` -/
def P17824137493904927282.Spec : Prop :=
  ∀ n, P17824137493904927282.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P9256352602275189902

`A018805(n+1)+1-A140434(n+1)`
-/

namespace A206350.P9256352602275189902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (1 - A140434 (n + 1))

end

end A206350.P9256352602275189902

namespace A206350

/-- `A018805(n+1)+1-A140434(n+1)` -/
def P9256352602275189902.Spec : Prop :=
  ∀ n, P9256352602275189902.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P2227982287979178576

`A000010(lcm(2, n))+A000010(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A206350.P2227982287979178576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (Nat.lcm 2 n) + (A000010 n + a (n - 1))

end

end A206350.P2227982287979178576

namespace A206350

/-- `A000010(lcm(2, n))+A000010(n)+a(n-1)` -/
def P2227982287979178576.Spec : Prop :=
  ∀ n, P2227982287979178576.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P12753742965132348728

`a(n-1)+A000010(n%(n+1))+A000010(n)` with `a(0)=1, a(1)=2`
-/

namespace A206350.P12753742965132348728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A000010 (n % (n + 1)) + A000010 n)

end

end A206350.P12753742965132348728

namespace A206350

/-- `a(n-1)+A000010(n%(n+1))+A000010(n)` -/
def P12753742965132348728.Spec : Prop :=
  ∀ n, P12753742965132348728.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P14871022481369463739

`A049696(n)-A008683(A002246(n+1))`
-/

namespace A206350.P14871022481369463739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n - A008683 (A002246 (n + 1)).toNat

end

end A206350.P14871022481369463739

namespace A206350

/-- `A049696(n)-A008683(A002246(n+1))` -/
def P14871022481369463739.Spec : Prop :=
  ∀ n, P14871022481369463739.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P11933863798800754826

`a(n-1)+A000010(n)+A000010(n)%A000203(n)` with `a(0)=1`
-/

namespace A206350.P11933863798800754826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000010 n + Int.tmod (A000010 n) (A000203 n))

end

end A206350.P11933863798800754826

namespace A206350

/-- `a(n-1)+A000010(n)+A000010(n)%A000203(n)` -/
def P11933863798800754826.Spec : Prop :=
  ∀ n, P11933863798800754826.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P7370319343205090558

`xor(1, A049691(n))`
-/

namespace A206350.P7370319343205090558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A049691 n)

end

end A206350.P7370319343205090558

namespace A206350

/-- `xor(1, A049691(n))` -/
def P7370319343205090558.Spec : Prop :=
  ∀ n, P7370319343205090558.a n = A206350 (n + 1)

end A206350

/-! ## A206350.P15990427119121455740

`A100449(n)-A049691(n)`
-/

namespace A206350.P15990427119121455740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - A049691 n

end

end A206350.P15990427119121455740

namespace A206350

/-- `A100449(n)-A049691(n)` -/
def P15990427119121455740.Spec : Prop :=
  ∀ n, P15990427119121455740.a n = A206350 (n + 1)

end A206350

/-!
# A206351: a(n) = 7*a(n-1) - a(n-2) - 4 with a(1)=1, a(2)=3.

The programs for A206351, the canonical program `A206351.P17748833291416380630` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206351 has offset 1).

The definition of A206351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-a(n-2)-4` (program `A206351.P17748833291416380630`, by `A206351.P17748833291416380630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206351.P17748833291416380630

`7*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206351

/-- `7*a(n-1)-a(n-2)-4` -/
def P17748833291416380630.Spec : Prop :=
  ∀ n, P17748833291416380630.a n = A206351 (n + 1)

theorem P17748833291416380630.correct : P17748833291416380630.Spec := by
  intro n
  simp only [A206351, Nat.add_sub_cancel]

end A206351

/-! ## A206351.P5081704842341882459

`A081018(n)+1`
-/

namespace A206351.P5081704842341882459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n + 1

end

end A206351.P5081704842341882459

namespace A206351

/-- `A081018(n)+1` -/
def P5081704842341882459.Spec : Prop :=
  ∀ n, P5081704842341882459.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P780586688887874018

`(A000045(2*(n+1)-2)+1/A000032(2*(n+1)-2))*(A000045(2*(n+1)-1)+1/A000032(2*(n+1)-1))`
-/

namespace A206351.P780586688887874018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (2 * (n + 1) - 2) : ℚ) + 1 / (A000032 (2 * (n + 1) - 2) : ℚ)) * ((A000045 (2 * (n + 1) - 1) : ℚ) + 1 / (A000032 (2 * (n + 1) - 1) : ℚ))

end

end A206351.P780586688887874018

namespace A206351

/-- `(A000045(2*(n+1)-2)+1/A000032(2*(n+1)-2))*(A000045(2*(n+1)-1)+1/A000032(2*(n+1)-1))` -/
def P780586688887874018.Spec : Prop :=
  ∀ n, P780586688887874018.a n = (A206351 (n + 1) : ℚ)

end A206351

/-! ## A206351.P4225237246141521382

`∑[ogf((1-5x)/(1-7x+x^2))]`
-/

namespace A206351.P4225237246141521382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P4225237246141521382

namespace A206351

/-- `∑[ogf((1-5x)/(1-7x+x^2))]` -/
def P4225237246141521382.Spec : Prop :=
  ∀ n, P4225237246141521382.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P2601095161620076751

`ogf((1-5x)/(1-8x+8x^2-x^3))`
-/

namespace A206351.P2601095161620076751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -8, 8, -1] n

end

end A206351.P2601095161620076751

namespace A206351

/-- `ogf((1-5x)/(1-8x+8x^2-x^3))` -/
def P2601095161620076751.Spec : Prop :=
  ∀ n, P2601095161620076751.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P8514677556384756585

`∑[floor(ϕ²²*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A206351.P8514677556384756585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P8514677556384756585

namespace A206351

/-- `∑[floor(ϕ²²*a(n-1))]` -/
def P8514677556384756585.Spec : Prop :=
  ∀ n, P8514677556384756585.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P15560300598695148412

`∑[7*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A206351.P15560300598695148412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P15560300598695148412

namespace A206351

/-- `∑[7*a(n-1)-a(n-2)]` -/
def P15560300598695148412.Spec : Prop :=
  ∀ n, P15560300598695148412.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P7003160008305229046

`∑[A172968(n)]`
-/

namespace A206351.P7003160008305229046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P7003160008305229046

namespace A206351

/-- `∑[A172968(n)]` -/
def P7003160008305229046.Spec : Prop :=
  ∀ n, P7003160008305229046.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P6534884628005094846

`A226205(Δ[n²])`
-/

namespace A206351.P6534884628005094846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206351.P6534884628005094846

namespace A206351

/-- `A226205(Δ[n²])` -/
def P6534884628005094846.Spec : Prop :=
  ∀ n, P6534884628005094846.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P8669213838824046762

`∑[A001519(2*n)]`
-/

namespace A206351.P8669213838824046762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P8669213838824046762

namespace A206351

/-- `∑[A001519(2*n)]` -/
def P8669213838824046762.Spec : Prop :=
  ∀ n, P8669213838824046762.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P7463485326366589211

`∑[A212804(4*n)]`
-/

namespace A206351.P7463485326366589211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P7463485326366589211

namespace A206351

/-- `∑[A212804(4*n)]` -/
def P7463485326366589211.Spec : Prop :=
  ∀ n, P7463485326366589211.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P9775081557102246404

`abs(A121646(Δ[n²]))`
-/

namespace A206351.P9775081557102246404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121646 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A206351.P9775081557102246404

namespace A206351

/-- `abs(A121646(Δ[n²]))` -/
def P9775081557102246404.Spec : Prop :=
  ∀ n, P9775081557102246404.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P13263942301298739072

`A001654(2*n)+1`
-/

namespace A206351.P13263942301298739072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n) + 1

end

end A206351.P13263942301298739072

namespace A206351

/-- `A001654(2*n)+1` -/
def P13263942301298739072.Spec : Prop :=
  ∀ n, P13263942301298739072.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P16294000353150542532

`A107387(2*(n+1))`
-/

namespace A206351.P16294000353150542532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (2 * (n + 1))

end

end A206351.P16294000353150542532

namespace A206351

/-- `A107387(2*(n+1))` -/
def P16294000353150542532.Spec : Prop :=
  ∀ n, P16294000353150542532.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P6767644347733608683

`A260259(2*n)+2`
-/

namespace A206351.P6767644347733608683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (2 * n) + 2

end

end A206351.P6767644347733608683

namespace A206351

/-- `A260259(2*n)+2` -/
def P6767644347733608683.Spec : Prop :=
  ∀ n, P6767644347733608683.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P16981693223445117863

`A392838(n)+1-n`
-/

namespace A206351.P16981693223445117863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392838 n + (1 - (n : ℤ))

end

end A206351.P16981693223445117863

namespace A206351

/-- `A392838(n)+1-n` -/
def P16981693223445117863.Spec : Prop :=
  ∀ n, P16981693223445117863.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P9153017224084925544

`A392839(n)-1+n`
-/

namespace A206351.P9153017224084925544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392839 n - 1 + (n : ℤ)

end

end A206351.P9153017224084925544

namespace A206351

/-- `A392839(n)-1+n` -/
def P9153017224084925544.Spec : Prop :=
  ∀ n, P9153017224084925544.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P10848973844966313392

`A059840(Δ[n²])+1`
-/

namespace A206351.P10848973844966313392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A206351.P10848973844966313392

namespace A206351

/-- `A059840(Δ[n²])+1` -/
def P10848973844966313392.Spec : Prop :=
  ∀ n, P10848973844966313392.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P2054214085530417652

`∑[A032908(2*n)-1]`
-/

namespace A206351.P2054214085530417652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206351.P2054214085530417652

namespace A206351

/-- `∑[A032908(2*n)-1]` -/
def P2054214085530417652.Spec : Prop :=
  ∀ n, P2054214085530417652.a n = A206351 (n + 1)

end A206351

/-! ## A206351.P6433888577661428982

`A236165(3*n+n+1)`
-/

namespace A206351.P6433888577661428982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (3 * n + (n + 1))

end

end A206351.P6433888577661428982

namespace A206351

/-- `A236165(3*n+n+1)` -/
def P6433888577661428982.Spec : Prop :=
  ∀ n, P6433888577661428982.a n = A206351 (n + 1)

end A206351

/-!
# A206352: Number of n X n 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206352, there is no canonical definition to state claims against.
-/

/-! ## A206352.P1691243248889991604

`A206359(∑[4*n]+1)`
-/

namespace A206352.P1691243248889991604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206352.P1691243248889991604

/-!
# A206353: Number of n X 2 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206353, the canonical program `A206353.P16807038738254068546` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206353 has offset 1).

The definition of A206353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206353.P16807038738254068546

`6*a(n-1)+13*a(n-2)-18*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=120, a(4)=884`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206353

/-- `6*a(n-1)+13*a(n-2)-18*a(n-3)` -/
def P16807038738254068546.Spec : Prop :=
  ∀ n, P16807038738254068546.a n = A206353 (n + 1)

theorem P16807038738254068546.correct : P16807038738254068546.Spec := by
  intro n
  simp only [A206353, Nat.add_sub_cancel]

end A206353

/-! ## A206353.P7494671445267932805

`A206359(∑[n+1]+2)`
-/

namespace A206353.P7494671445267932805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206353.P7494671445267932805

namespace A206353

/-- `A206359(∑[n+1]+2)` -/
def P7494671445267932805.Spec : Prop :=
  ∀ n, P7494671445267932805.a n = A206353 (n + 1)

end A206353

/-! ## A206353.P8603229885011720843

`record[A103451(n)*A206359(n+2)]`
-/

namespace A206353.P8603229885011720843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A206359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206353.P8603229885011720843

namespace A206353

/-- `record[A103451(n)*A206359(n+2)]` -/
def P8603229885011720843.Spec : Prop :=
  ∀ n, P8603229885011720843.a n = A206353 (n + 1)

end A206353

/-! ## A206353.P1534869435240351300

`record[A206359(n+1)/A179454(n)]`
-/

namespace A206353.P1534869435240351300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206359 (n + 1) : ℚ) / (A179454 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206353.P1534869435240351300

namespace A206353

/-- `record[A206359(n+1)/A179454(n)]` -/
def P1534869435240351300.Spec : Prop :=
  ∀ n, P1534869435240351300.a n = (A206353 (n + 1) : ℚ)

end A206353

/-! ## A206353.P8280852240969436045

`record[A206359(n+1)/A208615(n)]`
-/

namespace A206353.P8280852240969436045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206359 (n + 1) : ℚ) / (A208615 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206353.P8280852240969436045

namespace A206353

/-- `record[A206359(n+1)/A208615(n)]` -/
def P8280852240969436045.Spec : Prop :=
  ∀ n, P8280852240969436045.a n = (A206353 (n + 1) : ℚ)

end A206353

/-!
# A206354: Number of n X 3 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206354, there is no canonical definition to state claims against.
-/

/-! ## A206354.P12694545199528612141

`A206359(∑[n+2]+4)`
-/

namespace A206354.P12694545199528612141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206354.P12694545199528612141

/-! ## A206354.P17247312044306463843

`record[A010054(n)*A206359(n+3)]`
-/

namespace A206354.P17247312044306463843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206359 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206354.P17247312044306463843

/-! ## A206354.P16556720780010814535

`record[gcd(A206306(n+2), A206359(n+5))]`
-/

namespace A206354.P16556720780010814535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206306 (n + 2)) (A206359 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206354.P16556720780010814535

/-! ## A206354.P4222324745144959980

`A206359(A167614(n+1))+A061858(n)`
-/

namespace A206354.P4222324745144959980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A167614 (n + 1)).toNat + A061858 n

end

end A206354.P4222324745144959980

/-! ## A206354.P17329289059649963302

`A206359(A167614(n+1))+A107846(n)`
-/

namespace A206354.P17329289059649963302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A167614 (n + 1)).toNat + A107846 n

end

end A206354.P17329289059649963302

/-!
# A206355: Number of nX4 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206355, there is no canonical definition to state claims against.
-/

/-! ## A206355.P2123176237019900035

`A206359(A374004(n+1))`
-/

namespace A206355.P2123176237019900035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A374004 (n + 1)).toNat

end

end A206355.P2123176237019900035

/-! ## A206355.P7574565284029799596

`A206359(A141214(n)+7)`
-/

namespace A206355.P7574565284029799596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A141214 n + 7).toNat

end

end A206355.P7574565284029799596

/-! ## A206355.P10127244197275027221

`A206359(A052905(n)+9)`
-/

namespace A206355.P10127244197275027221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A052905 n + 9).toNat

end

end A206355.P10127244197275027221

/-! ## A206355.P6359942440946665925

`A206359(A055999(n)+10)`
-/

namespace A206355.P6359942440946665925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A055999 n + 10).toNat

end

end A206355.P6359942440946665925

/-! ## A206355.P7365031521775625570

`A206359(eq[5, A066657(n)])`
-/

namespace A206355.P7365031521775625570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206355.P7365031521775625570

/-!
# A206356: Number of nX5 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206356, there is no canonical definition to state claims against.
-/

/-! ## A206356.P18433905451734637603

`A206359(∑[n+4]+11)`
-/

namespace A206356.P18433905451734637603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A206356.P18433905451734637603

/-!
# A206357: Number of nX6 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206357, there is no canonical definition to state claims against.
-/

/-! ## A206357.P8377656905336807626

`A206359(A374007(n+1))`
-/

namespace A206357.P8377656905336807626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A374007 (n + 1)).toNat

end

end A206357.P8377656905336807626

/-! ## A206357.P2317661853164387421

`A206359(A056115(n)+21)`
-/

namespace A206357.P2317661853164387421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A056115 n + 21).toNat

end

end A206357.P2317661853164387421

/-! ## A206357.P1845933820998351493

`A206359(A167499(n+4)+1)`
-/

namespace A206357.P1845933820998351493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A167499 (n + 4) + 1).toNat

end

end A206357.P1845933820998351493

/-! ## A206357.P2061092484734391295

`A206359(A167614(n+4)+3)`
-/

namespace A206357.P2061092484734391295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A167614 (n + 4) + 3).toNat

end

end A206357.P2061092484734391295

/-!
# A206358: Number of nX7 0..4 arrays with no element equal to another within two positions in the same row or column, and new values 0..4 introduced in row major order.

The programs for A206358, there is no canonical definition to state claims against.
-/

/-! ## A206358.P15894502910077815082

`A206359(A374008(n+1))`
-/

namespace A206358.P15894502910077815082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206359 (A374008 (n + 1)).toNat

end

end A206358.P15894502910077815082

/-!
# A206360: 

The programs for A206360, there is no canonical definition to state claims against.
-/

/-! ## A206360.P10744143865339421456

`A206366((n+1)²+n²)`
-/

namespace A206360.P10744143865339421456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 ((n + 1) ^ 2 + n ^ 2)

end

end A206360.P10744143865339421456

/-!
# A206361: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having no more than two equal edges, and new values 0..3 introduced in row major order.

The programs for A206361, there is no canonical definition to state claims against.
-/

/-! ## A206361.P14158325780848414366

`A206366(∑[n]+1)`
-/

namespace A206361.P14158325780848414366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206361.P14158325780848414366

/-! ## A206361.P5215829452124137789

`record[A010054(n)*A206366(n+1)]`
-/

namespace A206361.P5215829452124137789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206361.P5215829452124137789

/-! ## A206361.P7898159464194784412

`record[A103451(n)*A206366(n+1)]`
-/

namespace A206361.P7898159464194784412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A206366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206361.P7898159464194784412

/-! ## A206361.P12775299925128361034

`record[gcd(A004247(n), A206366(n+1))]`
-/

namespace A206361.P12775299925128361034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A206366 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206361.P12775299925128361034

/-! ## A206361.P15307311731633848065

`record[A054524(n+1)*A206366(n+1)]`
-/

namespace A206361.P15307311731633848065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A206366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206361.P15307311731633848065

/-!
# A206362: Number of (n+1)X3 0..3 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..3 introduced in row major order.

The programs for A206362, there is no canonical definition to state claims against.
-/

/-! ## A206362.P7604333659894472815

`A206366(∑[n+1]+2)`
-/

namespace A206362.P7604333659894472815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206362.P7604333659894472815

/-! ## A206362.P403024536155738804

`record[A206366(A133825(n)+2)]`
-/

namespace A206362.P403024536155738804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206362.P403024536155738804

/-! ## A206362.P15467394800867327888

`record[A010054(n)*A206366(n+2)]`
-/

namespace A206362.P15467394800867327888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206362.P15467394800867327888

/-! ## A206362.P15283636540611260287

`record[gcd(A122284(n), A206366(n+3))]`
-/

namespace A206362.P15283636540611260287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122284 n) (A206366 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206362.P15283636540611260287

/-! ## A206362.P13888596282457821433

`record[A054524(n+1)*A206366(n+2)]`
-/

namespace A206362.P13888596282457821433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A206366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206362.P13888596282457821433

/-!
# A206363: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..3 introduced in row major order.

The programs for A206363, there is no canonical definition to state claims against.
-/

/-! ## A206363.P7590548436436985792

`A206366(A167614(n+1))`
-/

namespace A206363.P7590548436436985792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (A167614 (n + 1)).toNat

end

end A206363.P7590548436436985792

/-! ## A206363.P7663303587735009292

`A206366(∑[n+3]+1)`
-/

namespace A206363.P7663303587735009292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206363.P7663303587735009292

/-!
# A206364: Number of (n+1)X5 0..3 arrays with every 2X3 or 3X2 subblock having no more than two equal edges, and new values 0..3 introduced in row major order.

The programs for A206364, there is no canonical definition to state claims against.
-/

/-! ## A206364.P15348059423424560565

`A206366(A167614(n+2)+1)`
-/

namespace A206364.P15348059423424560565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (A167614 (n + 2) + 1).toNat

end

end A206364.P15348059423424560565

/-! ## A206364.P14172767405401749317

`A206366(A020752(n+1))`
-/

namespace A206364.P14172767405401749317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (A020752 (n + 1)).toNat

end

end A206364.P14172767405401749317

/-!
# A206365: 

The programs for A206365, there is no canonical definition to state claims against.
-/

/-! ## A206365.P1803358316530563772

`A206366(A133825(n)+∑[n+5]+5)`
-/

namespace A206365.P1803358316530563772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206366 (A133825 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ)).toNat

end

end A206365.P1803358316530563772

/-!
# A206368: Numbers k such that A206369(k) = A206369(k + 1).

The programs for A206368, there is no canonical definition to state claims against.
-/

/-! ## A206368.P14572508302941184216

`eq[0, A206475(n+1)]+1`
-/

namespace A206368.P14572508302941184216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206368.P14572508302941184216

/-! ## A206368.P8529884221644914577

`eq[A206369(n+1), A206369(n+2)]+1`
-/

namespace A206368.P8529884221644914577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A206368.P8529884221644914577

/-! ## A206368.P10820411341965870117

`eq[A000007(n), A206475(A028310(n))]`
-/

namespace A206368.P10820411341965870117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206368.P10820411341965870117

/-! ## A206368.P3720226671615790555

`eq[A000038(n), A206475(A028310(n))]`
-/

namespace A206368.P3720226671615790555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206368.P3720226671615790555

/-!
# A206369: a(p^k) = p^k - p^(k-1) + p^(k-2) - ... +- 1, and then extend by multiplicativity.

The programs for A206369, the canonical program `A206369.P2534442500048428716` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206369 has offset 1).

The definition of A206369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206369.P2534442500048428716

`abs(A061020(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206369

/-- `abs(A061020(n+1))` -/
def P2534442500048428716.Spec : Prop :=
  ∀ n, P2534442500048428716.a n = A206369 (n + 1)

theorem P2534442500048428716.correct : P2534442500048428716.Spec := by
  intro n
  simp only [A206369, Nat.add_sub_cancel]

end A206369

/-! ## A206369.P9073946353916370087

`(n+1)*∑{d}[n+1, A008836(#)/#]`
-/

namespace A206369.P9073946353916370087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A008836 d : ℚ) / (d : ℚ))

end

end A206369.P9073946353916370087

namespace A206369

/-- `(n+1)*∑{d}[n+1, A008836(#)/#]` -/
def P9073946353916370087.Spec : Prop :=
  ∀ n, P9073946353916370087.a n = (A206369 (n + 1) : ℚ)

end A206369

/-! ## A206369.P16715618914514004647

`∑{d}[n+1, A074722(#)]`
-/

namespace A206369.P16715618914514004647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d

end

end A206369.P16715618914514004647

namespace A206369

/-- `∑{d}[n+1, A074722(#)]` -/
def P16715618914514004647.Spec : Prop :=
  ∀ n, P16715618914514004647.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P14807575184713960073

`1-A344439(n+1)+n`
-/

namespace A206369.P14807575184713960073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344439 (n + 1) + (n : ℤ)

end

end A206369.P14807575184713960073

namespace A206369

/-- `1-A344439(n+1)+n` -/
def P14807575184713960073.Spec : Prop :=
  ∀ n, P14807575184713960073.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P2071966546892448474

`A206475(n)+a(n-1)` with `a(0)=1`
-/

namespace A206369.P2071966546892448474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206475 n + a (n - 1)

end

end A206369.P2071966546892448474

namespace A206369

/-- `A206475(n)+a(n-1)` -/
def P2071966546892448474.Spec : Prop :=
  ∀ n, P2071966546892448474.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P16167432541943342413

`abs(∑{d}[n+1, #*A008836(#)])`
-/

namespace A206369.P16167432541943342413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008836 d|

end

end A206369.P16167432541943342413

namespace A206369

/-- `abs(∑{d}[n+1, #*A008836(#)])` -/
def P16167432541943342413.Spec : Prop :=
  ∀ n, P16167432541943342413.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P17373065022673162902

`gcd(A000038(n), A061020(n+1))`
-/

namespace A206369.P17373065022673162902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A061020 (n + 1))

end

end A206369.P17373065022673162902

namespace A206369

/-- `gcd(A000038(n), A061020(n+1))` -/
def P17373065022673162902.Spec : Prop :=
  ∀ n, (P17373065022673162902.a n : ℤ) = A206369 (n + 1)

end A206369

/-! ## A206369.P6507219102530351562

`lcm(A014709(n), A061020(n+1))`
-/

namespace A206369.P6507219102530351562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A061020 (n + 1))

end

end A206369.P6507219102530351562

namespace A206369

/-- `lcm(A014709(n), A061020(n+1))` -/
def P6507219102530351562.Spec : Prop :=
  ∀ n, (P6507219102530351562.a n : ℤ) = A206369 (n + 1)

end A206369

/-! ## A206369.P16837432626047224602

`abs(∑{d}[A061019(n+1), A061019(#)])`
-/

namespace A206369.P16837432626047224602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n).natAbs, A061019 d|

end

end A206369.P16837432626047224602

namespace A206369

/-- `abs(∑{d}[A061019(n+1), A061019(#)])` -/
def P16837432626047224602.Spec : Prop :=
  ∀ n, P16837432626047224602.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P16583743879766350133

`A344441(n+1)-A061020(n+1)`
-/

namespace A206369.P16583743879766350133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344441 (n + 1) - A061020 (n + 1)

end

end A206369.P16583743879766350133

namespace A206369

/-- `A344441(n+1)-A061020(n+1)` -/
def P16583743879766350133.Spec : Prop :=
  ∀ n, P16583743879766350133.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P17415662045637801358

`A071324(n+1)-A345060(n+1)`
-/

namespace A206369.P17415662045637801358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - A345060 (n + 1)

end

end A206369.P17415662045637801358

namespace A206369

/-- `A071324(n+1)-A345060(n+1)` -/
def P17415662045637801358.Spec : Prop :=
  ∀ n, P17415662045637801358.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P1562938904765707399

`A378542(n+1)-A378543(n+1)`
-/

namespace A206369.P1562938904765707399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378542 (n + 1) - A378543 (n + 1)

end

end A206369.P1562938904765707399

namespace A206369

/-- `A378542(n+1)-A378543(n+1)` -/
def P1562938904765707399.Spec : Prop :=
  ∀ n, P1562938904765707399.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P11962235582435473098

`A008836(n+1)*A061020(n+1)`
-/

namespace A206369.P11962235582435473098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A061020 (n + 1)

end

end A206369.P11962235582435473098

namespace A206369

/-- `A008836(n+1)*A061020(n+1)` -/
def P11962235582435473098.Spec : Prop :=
  ∀ n, P11962235582435473098.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P15390414505978832357

`A345061(n+1)*A345063(n+1)`
-/

namespace A206369.P15390414505978832357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1) * A345063 (n + 1)

end

end A206369.P15390414505978832357

namespace A206369

/-- `A345061(n+1)*A345063(n+1)` -/
def P15390414505978832357.Spec : Prop :=
  ∀ n, P15390414505978832357.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P11385835282734555606

`∑{d}[A061020(n+1), #-A051953(#)]`
-/

namespace A206369.P11385835282734555606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A051953 d)

end

end A206369.P11385835282734555606

namespace A206369

/-- `∑{d}[A061020(n+1), #-A051953(#)]` -/
def P11385835282734555606.Spec : Prop :=
  ∀ n, P11385835282734555606.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P9445690937367860914

`abs(A318676(n+1)-A318677(n+1))`
-/

namespace A206369.P9445690937367860914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318676 (n + 1) - A318677 (n + 1)|

end

end A206369.P9445690937367860914

namespace A206369

/-- `abs(A318676(n+1)-A318677(n+1))` -/
def P9445690937367860914.Spec : Prop :=
  ∀ n, P9445690937367860914.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P4378545852177838058

`2*A378542(n+1)-A000203(n+1)`
-/

namespace A206369.P4378545852177838058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378542 (n + 1) - A000203 (n + 1)

end

end A206369.P4378545852177838058

namespace A206369

/-- `2*A378542(n+1)-A000203(n+1)` -/
def P4378545852177838058.Spec : Prop :=
  ∀ n, P4378545852177838058.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P14057299151604485313

`A000203(n+1)-2*A378543(n+1)`
-/

namespace A206369.P14057299151604485313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A378543 (n + 1)

end

end A206369.P14057299151604485313

namespace A206369

/-- `A000203(n+1)-2*A378543(n+1)` -/
def P14057299151604485313.Spec : Prop :=
  ∀ n, P14057299151604485313.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P16159722533787367081

`∑{d}[n+1, A000010(#)*A010052((n+1)/#)]`
-/

namespace A206369.P16159722533787367081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A206369.P16159722533787367081

namespace A206369

/-- `∑{d}[n+1, A000010(#)*A010052((n+1)/#)]` -/
def P16159722533787367081.Spec : Prop :=
  ∀ n, P16159722533787367081.a n = A206369 (n + 1)

end A206369

/-! ## A206369.P17161947656330039908

`∑{d}[n+1, A008683(#)*A076752((n+1)/#)]`
-/

namespace A206369.P17161947656330039908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A206369.P17161947656330039908

namespace A206369

/-- `∑{d}[n+1, A008683(#)*A076752((n+1)/#)]` -/
def P17161947656330039908.Spec : Prop :=
  ∀ n, P17161947656330039908.a n = A206369 (n + 1)

end A206369

/-!
# A206370: Related to number of cyclotomic classes in GF(2^(2n)).

The programs for A206370, there is no canonical definition to state claims against.
-/

/-! ## A206370.P14190549400687553541

`A033676(lcm(A000031(n), A056953(n)))`
-/

namespace A206370.P14190549400687553541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.lcm (A000031 n) (A056953 n))

end

end A206370.P14190549400687553541

/-! ## A206370.P3781617739934531413

`A236102(n+1)-A001221(A266255(n))`
-/

namespace A206370.P3781617739934531413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236102 (n + 1) - A001221 (A266255 n).toNat

end

end A206370.P3781617739934531413

/-! ## A206370.P5229935027501641614

`A381894(A355871(n)-A381884(n+1))`
-/

namespace A206370.P5229935027501641614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381894 (A355871 n - A381884 (n + 1)).toNat

end

end A206370.P5229935027501641614

/-! ## A206370.P895844736866308591

`A085152(n+2)-A351112(A327704(n+1))`
-/

namespace A206370.P895844736866308591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085152 (n + 2) - A351112 (A327704 (n + 1)).toNat

end

end A206370.P895844736866308591

/-!
# A206371: a(n) = 31*2^n + 1.

The programs for A206371, the canonical program `A206371.P7906890999942794315` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206371 has offset 0).

The definition of A206371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31*2^n+1` (program `A206371.P7906890999942794315`, by `A206371.P7906890999942794315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206371.P15104690831110085750

`1+31*2^n`
-/

namespace A206371.P15104690831110085750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 31 * 2 ^ n

end

end A206371.P15104690831110085750

namespace A206371

/-- `1+31*2^n` -/
def P15104690831110085750.Spec : Prop :=
  ∀ n, (P15104690831110085750.a n : ℤ) = A206371 n

theorem P15104690831110085750.correct : P15104690831110085750.Spec := by
  intro n
  simp only [A206371, Nat.add_sub_cancel, A206371.P15104690831110085750.a, A206371.P7906890999942794315.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A206371

/-! ## A206371.P7906890999942794315

`31*2^n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206371

/-- `31*2^n+1` -/
def P7906890999942794315.Spec : Prop :=
  ∀ n, (P7906890999942794315.a n : ℤ) = A206371 n

theorem P7906890999942794315.correct : P7906890999942794315.Spec := by
  intro n
  simp only [A206371]

end A206371

/-! ## A206371.P15956503755747947665

`abs(2*a(n-1)-1)` with `a(0)=32`
-/

namespace A206371.P15956503755747947665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  |2 * a (n - 1) - 1|

end

end A206371.P15956503755747947665

namespace A206371

/-- `abs(2*a(n-1)-1)` -/
def P15956503755747947665.Spec : Prop :=
  ∀ n, P15956503755747947665.a n = A206371 n

end A206371

/-! ## A206371.P1172754989405968497

`2*(a(n-1)-1/2)` with `a(0)=32`
-/

namespace A206371.P1172754989405968497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [32] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2)

end

end A206371.P1172754989405968497

namespace A206371

/-- `2*(a(n-1)-1/2)` -/
def P1172754989405968497.Spec : Prop :=
  ∀ n, P1172754989405968497.a n = (A206371 n : ℚ)

theorem P1172754989405968497.correct : P1172754989405968497.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A206371, Nat.add_sub_cancel, A206371.P1172754989405968497.a, A206371.P7906890999942794315.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A206371, Nat.add_sub_cancel, A206371.P1172754989405968497.a, A206371.P7906890999942794315.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A206371

/-! ## A206371.P580181451878993671

`floor(2*a(n-1)-A057427(n))` with `a(0)=32`

`floor` is left out, it is the identity on integers.
-/

namespace A206371.P580181451878993671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  2 * a (n - 1) - A057427 n

end

end A206371.P580181451878993671

namespace A206371

/-- `floor(2*a(n-1)-A057427(n))` -/
def P580181451878993671.Spec : Prop :=
  ∀ n, P580181451878993671.a n = A206371 n

theorem P580181451878993671.correct : P580181451878993671.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A206371, Nat.add_sub_cancel, A206371.P580181451878993671.a, A206371.P7906890999942794315.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A206371, Nat.add_sub_cancel, A206371.P580181451878993671.a, A206371.P7906890999942794315.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A206371

/-! ## A206371.P10743644902944477600

`(2*a(n-1)-1)*A054977(n)` with `a(0)=32`
-/

namespace A206371.P10743644902944477600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  (2 * a (n - 1) - 1) * A054977 n

end

end A206371.P10743644902944477600

namespace A206371

/-- `(2*a(n-1)-1)*A054977(n)` -/
def P10743644902944477600.Spec : Prop :=
  ∀ n, P10743644902944477600.a n = A206371 n

end A206371

/-! ## A206371.P4774029031858793764

`round(2*a(n-1)-A057427(n+1))` with `a(0)=32`

`round` is left out, it is the identity on integers.
-/

namespace A206371.P4774029031858793764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  2 * a (n - 1) - A057427 (n + 1)

end

end A206371.P4774029031858793764

namespace A206371

/-- `round(2*a(n-1)-A057427(n+1))` -/
def P4774029031858793764.Spec : Prop :=
  ∀ n, P4774029031858793764.a n = A206371 n

theorem P4774029031858793764.correct : P4774029031858793764.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A206371, Nat.add_sub_cancel, A206371.P4774029031858793764.a, A206371.P7906890999942794315.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A206371, Nat.add_sub_cancel, A206371.P4774029031858793764.a, A206371.P7906890999942794315.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A206371

/-! ## A206371.P6190181285142313015

`floor(2*a(n-1)-A209615(n+1)²)` with `a(0)=32`

`floor` is left out, it is the identity on integers.
-/

namespace A206371.P6190181285142313015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  2 * a (n - 1) - A209615 (n + 1) ^ 2

end

end A206371.P6190181285142313015

namespace A206371

/-- `floor(2*a(n-1)-A209615(n+1)²)` -/
def P6190181285142313015.Spec : Prop :=
  ∀ n, P6190181285142313015.a n = A206371 n

end A206371

/-! ## A206371.P1805479196945573508

`abs(A198275(n+1)-A033484(n))`
-/

namespace A206371.P1805479196945573508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198275 (n + 1) - A033484 n|

end

end A206371.P1805479196945573508

namespace A206371

/-- `abs(A198275(n+1)-A033484(n))` -/
def P1805479196945573508.Spec : Prop :=
  ∀ n, P1805479196945573508.a n = A206371 n

end A206371

/-! ## A206371.P18068438349823310721

`abs(A020707(n+3)-A000225(n))`
-/

namespace A206371.P18068438349823310721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020707 (n + 3) - A000225 n|

end

end A206371.P18068438349823310721

namespace A206371

/-- `abs(A020707(n+3)-A000225(n))` -/
def P18068438349823310721.Spec : Prop :=
  ∀ n, P18068438349823310721.a n = A206371 n

end A206371

/-! ## A206371.P5955842414089635687

`abs(A198633(n+4)-A000225(n))`
-/

namespace A206371.P5955842414089635687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198633 (n + 4) - A000225 n|

end

end A206371.P5955842414089635687

namespace A206371

/-- `abs(A198633(n+4)-A000225(n))` -/
def P5955842414089635687.Spec : Prop :=
  ∀ n, P5955842414089635687.a n = A206371 n

end A206371

/-! ## A206371.P6924990550896518160

`abs(A258935(n+5)-A000225(n))`
-/

namespace A206371.P6924990550896518160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258935 (n + 5) - A000225 n|

end

end A206371.P6924990550896518160

namespace A206371

/-- `abs(A258935(n+5)-A000225(n))` -/
def P6924990550896518160.Spec : Prop :=
  ∀ n, P6924990550896518160.a n = A206371 n

end A206371

/-! ## A206371.P12272517252195994611

`floor(2*a(n-1)-A038712(A038712(n+1)))` with `a(0)=32`

`floor` is left out, it is the identity on integers.
-/

namespace A206371.P12272517252195994611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  2 * a (n - 1) - A038712 (A038712 (n + 1)).toNat

end

end A206371.P12272517252195994611

namespace A206371

/-- `floor(2*a(n-1)-A038712(A038712(n+1)))` -/
def P12272517252195994611.Spec : Prop :=
  ∀ n, P12272517252195994611.a n = A206371 n

end A206371

/-! ## A206371.P18205459367010858555

`Δ[2*a(n-1)-(n-1)]` with `a(0)=32`
-/

namespace A206371.P18205459367010858555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32] fun n f1 =>
  2 * f1 (n - 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206371.P18205459367010858555

namespace A206371

/-- `Δ[2*a(n-1)-(n-1)]` -/
def P18205459367010858555.Spec : Prop :=
  ∀ n, P18205459367010858555.a n = A206371 n

end A206371

/-! ## A206371.P17881890744472837808

`Δ[A166118(n+1)-A000295(n)]`
-/

namespace A206371.P17881890744472837808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166118 (n + 1) - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206371.P17881890744472837808

namespace A206371

/-- `Δ[A166118(n+1)-A000295(n)]` -/
def P17881890744472837808.Spec : Prop :=
  ∀ n, P17881890744472837808.a n = A206371 n

theorem P17881890744472837808.correct : P17881890744472837808.Spec := by
  intro n
  simp only [A206371, Nat.add_sub_cancel, A206371.P17881890744472837808.f1, A206371.P17881890744472837808.a, A206371.P7906890999942794315.a, A000295, A000295.P9955939544913215267.a, A166118, A166118.P6969598070021077412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A206371

/-! ## A206371.P12817383868023689322

`Δ[A145071(n+4)-A062709(n)]`
-/

namespace A206371.P12817383868023689322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145071 (n + 4) - A062709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206371.P12817383868023689322

namespace A206371

/-- `Δ[A145071(n+4)-A062709(n)]` -/
def P12817383868023689322.Spec : Prop :=
  ∀ n, P12817383868023689322.a n = A206371 n

theorem P12817383868023689322.correct : P12817383868023689322.Spec := by
  intro n
  simp only [A206371, Nat.add_sub_cancel, A206371.P12817383868023689322.f1, A206371.P12817383868023689322.a, A206371.P7906890999942794315.a, A062709, A062709.P9130590619411367143.a, A145071, A145071.P13247220487925818536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A206371

/-! ## A206371.P17356676199047576722

`(A195744(n+1)+A000051(n+1))/2`
-/

namespace A206371.P17356676199047576722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195744 (n + 1) + A000051 (n + 1) : ℚ) / 2

end

end A206371.P17356676199047576722

namespace A206371

/-- `(A195744(n+1)+A000051(n+1))/2` -/
def P17356676199047576722.Spec : Prop :=
  ∀ n, P17356676199047576722.a n = (A206371 n : ℚ)

theorem P17356676199047576722.correct : P17356676199047576722.Spec := by
  intro n
  simp only [A206371, Nat.add_sub_cancel, A206371.P17356676199047576722.a, A206371.P7906890999942794315.a, A000051, A000051.P14067217022188782580.a, A195744, A195744.P16037549295852236584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A206371

/-! ## A206371.P4423233733860616851

`(A122041(n+2)+A083705(n+1))/2`
-/

namespace A206371.P4423233733860616851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122041 (n + 2) + A083705 (n + 1) : ℚ) / 2

end

end A206371.P4423233733860616851

namespace A206371

/-- `(A122041(n+2)+A083705(n+1))/2` -/
def P4423233733860616851.Spec : Prop :=
  ∀ n, P4423233733860616851.a n = (A206371 n : ℚ)

end A206371

/-!
# A206372: a(n) = 14 * 4^n - 1.

The programs for A206372, the canonical program `A206372.P15026317867364783864` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206372 has offset 0).

The definition of A206372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*4^n-1` (program `A206372.P15026317867364783864`, by `A206372.P15026317867364783864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206372.P15026317867364783864

`14*4^n-1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206372

/-- `14*4^n-1` -/
def P15026317867364783864.Spec : Prop :=
  ∀ n, P15026317867364783864.a n = A206372 n

theorem P15026317867364783864.correct : P15026317867364783864.Spec := by
  intro n
  simp only [A206372]

end A206372

/-! ## A206372.P1067117677414191712

`(A199207(n+1)-3)/2`
-/

namespace A206372.P1067117677414191712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199207 (n + 1) - 3 : ℚ) / 2

end

end A206372.P1067117677414191712

namespace A206372

/-- `(A199207(n+1)-3)/2` -/
def P1067117677414191712.Spec : Prop :=
  ∀ n, P1067117677414191712.a n = (A206372 n : ℚ)

theorem P1067117677414191712.correct : P1067117677414191712.Spec := by
  intro n
  simp only [A206372, Nat.add_sub_cancel, A206372.P1067117677414191712.a, A206372.P15026317867364783864.a, A199207, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A206372

/-! ## A206372.P7015866248430634281

`ogf((13-10x)/(1-5x+4x^2))`
-/

namespace A206372.P7015866248430634281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -10] [1, -5, 4] n

end

end A206372.P7015866248430634281

namespace A206372

/-- `ogf((13-10x)/(1-5x+4x^2))` -/
def P7015866248430634281.Spec : Prop :=
  ∀ n, P7015866248430634281.a n = A206372 n

end A206372

/-! ## A206372.P5709666023843412330

`or(3, 4*a(n-1))` with `a(0)=13`
-/

namespace A206372.P5709666023843412330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A206372.P5709666023843412330

namespace A206372

/-- `or(3, 4*a(n-1))` -/
def P5709666023843412330.Spec : Prop :=
  ∀ n, (P5709666023843412330.a n : ℤ) = A206372 n

end A206372

/-! ## A206372.P2027414354777172658

`xor(3, 4*a(n-1))` with `a(0)=13`
-/

namespace A206372.P2027414354777172658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A206372.P2027414354777172658

namespace A206372

/-- `xor(3, 4*a(n-1))` -/
def P2027414354777172658.Spec : Prop :=
  ∀ n, (P2027414354777172658.a n : ℤ) = A206372 n

end A206372

/-! ## A206372.P13132247289468606805

`or(3, lcm(4, a(n-1)))` with `a(0)=13`
-/

namespace A206372.P13132247289468606805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  Nat.lor 3 (Nat.lcm 4 (a (n - 1)))

end

end A206372.P13132247289468606805

namespace A206372

/-- `or(3, lcm(4, a(n-1)))` -/
def P13132247289468606805.Spec : Prop :=
  ∀ n, (P13132247289468606805.a n : ℤ) = A206372 n

end A206372

/-! ## A206372.P7002987209435802751

`∑[4*a(n-1)]` with `a(0)=13, a(1)=42`
-/

namespace A206372.P7002987209435802751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 42] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206372.P7002987209435802751

namespace A206372

/-- `∑[4*a(n-1)]` -/
def P7002987209435802751.Spec : Prop :=
  ∀ n, (P7002987209435802751.a n : ℤ) = A206372 n

end A206372

/-! ## A206372.P18125339887637832393

`4*(a(n-1)+3/4)` with `a(0)=13`
-/

namespace A206372.P18125339887637832393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [13] fun n a =>
  4 * (a (n - 1) + (3 : ℚ) / 4)

end

end A206372.P18125339887637832393

namespace A206372

/-- `4*(a(n-1)+3/4)` -/
def P18125339887637832393.Spec : Prop :=
  ∀ n, P18125339887637832393.a n = (A206372 n : ℚ)

theorem P18125339887637832393.correct : P18125339887637832393.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A206372, Nat.add_sub_cancel, A206372.P18125339887637832393.a, A206372.P15026317867364783864.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A206372, Nat.add_sub_cancel, A206372.P18125339887637832393.a, A206372.P15026317867364783864.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A206372

/-! ## A206372.P13827187283274674136

`record[-(2*a(n-1)+3)]` with `a(0)=13`
-/

namespace A206372.P13827187283274674136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  -(2 * f1 (n - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206372.P13827187283274674136

namespace A206372

/-- `record[-(2*a(n-1)+3)]` -/
def P13827187283274674136.Spec : Prop :=
  ∀ n, P13827187283274674136.a n = A206372 n

end A206372

/-! ## A206372.P11264730264857466578

`A086224(Δ[n²])`
-/

namespace A206372.P11264730264857466578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206372.P11264730264857466578

namespace A206372

/-- `A086224(Δ[n²])` -/
def P11264730264857466578.Spec : Prop :=
  ∀ n, P11264730264857466578.a n = A206372 n

end A206372

/-! ## A206372.P8549315379046330297

`A321483(Δ[n²])`
-/

namespace A206372.P8549315379046330297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321483 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206372.P8549315379046330297

namespace A206372

/-- `A321483(Δ[n²])` -/
def P8549315379046330297.Spec : Prop :=
  ∀ n, P8549315379046330297.a n = A206372 n

end A206372

/-! ## A206372.P3456207556446172124

`A322417(Δ[n²])`
-/

namespace A206372.P3456207556446172124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322417 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206372.P3456207556446172124

namespace A206372

/-- `A322417(Δ[n²])` -/
def P3456207556446172124.Spec : Prop :=
  ∀ n, P3456207556446172124.a n = A206372 n

end A206372

/-! ## A206372.P5956038101312221224

`A267604(2*n+3)`
-/

namespace A206372.P5956038101312221224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 (2 * n + 3)

end

end A206372.P5956038101312221224

namespace A206372

/-- `A267604(2*n+3)` -/
def P5956038101312221224.Spec : Prop :=
  ∀ n, P5956038101312221224.a n = A206372 n

end A206372

/-! ## A206372.P278388258744048904

`or(1, 2*A086224(2*n))`
-/

namespace A206372.P278388258744048904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A086224 (2 * n))

end

end A206372.P278388258744048904

namespace A206372

/-- `or(1, 2*A086224(2*n))` -/
def P278388258744048904.Spec : Prop :=
  ∀ n, P278388258744048904.a n = A206372 n

end A206372

/-! ## A206372.P7422326477215627513

`A010737(3*(n+1)+n)`
-/

namespace A206372.P7422326477215627513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (3 * (n + 1) + n)

end

end A206372.P7422326477215627513

namespace A206372

/-- `A010737(3*(n+1)+n)` -/
def P7422326477215627513.Spec : Prop :=
  ∀ n, P7422326477215627513.a n = A206372 n

end A206372

/-! ## A206372.P14754042525011828332

`or(n, A321483(2*n+1))`
-/

namespace A206372.P14754042525011828332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A321483 (2 * n + 1))

end

end A206372.P14754042525011828332

namespace A206372

/-- `or(n, A321483(2*n+1))` -/
def P14754042525011828332.Spec : Prop :=
  ∀ n, P14754042525011828332.a n = A206372 n

end A206372

/-! ## A206372.P7049699511394322430

`or(n, A322417(2*n+1))`
-/

namespace A206372.P7049699511394322430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A322417 (2 * n + 1))

end

end A206372.P7049699511394322430

namespace A206372

/-- `or(n, A322417(2*n+1))` -/
def P7049699511394322430.Spec : Prop :=
  ∀ n, P7049699511394322430.a n = A206372 n

end A206372

/-! ## A206372.P16261283814049991536

`A385396(A004769(n))`
-/

namespace A206372.P16261283814049991536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A004769 n).toNat

end

end A206372.P16261283814049991536

namespace A206372

/-- `A385396(A004769(n))` -/
def P16261283814049991536.Spec : Prop :=
  ∀ n, P16261283814049991536.a n = A206372 n

end A206372

/-! ## A206372.P16033526055982738887

`A385396(A017101(n+1))`
-/

namespace A206372.P16033526055982738887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A017101 (n + 1)).toNat

end

end A206372.P16033526055982738887

namespace A206372

/-- `A385396(A017101(n+1))` -/
def P16033526055982738887.Spec : Prop :=
  ∀ n, P16033526055982738887.a n = A206372 n

end A206372

/-! ## A206372.P2183512936238254521

`xor(A002063(n), A156760(n))`
-/

namespace A206372.P2183512936238254521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002063 n) (A156760 n)

end

end A206372.P2183512936238254521

namespace A206372

/-- `xor(A002063(n), A156760(n))` -/
def P2183512936238254521.Spec : Prop :=
  ∀ n, P2183512936238254521.a n = A206372 n

end A206372

/-!
# A206373: a(n) = (14*4^n + 1)/3.

The programs for A206373, the canonical program `A206373.P7508251975136867852` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206373 has offset 0).

The definition of A206373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(14*4^n+1)/3` (program `A206373.P7766550260098582480`, by `A206373.P7766550260098582480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206373.P7766550260098582480

`(14*4^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A206373.P7766550260098582480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 * 4 ^ n + 1 : ℚ) / 3

end

end A206373.P7766550260098582480

namespace A206373

/-- `(14*4^n+1)/3` -/
def P7766550260098582480.Spec : Prop :=
  ∀ n, P7766550260098582480.a n = (A206373 n : ℚ)

theorem P7766550260098582480.correct : P7766550260098582480.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A206373, Nat.add_sub_cancel, A206373.P7766550260098582480.a, A206373.P7508251975136867852.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A206373, Nat.add_sub_cancel, A206373.P7766550260098582480.a, A206373.P7508251975136867852.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A206373

/-! ## A206373.P7508251975136867852

`5*a(n-1)-4*a(n-2)` with `a(0)=5, a(1)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206373

/-- `5*a(n-1)-4*a(n-2)` -/
def P7508251975136867852.Spec : Prop :=
  ∀ n, P7508251975136867852.a n = A206373 n

theorem P7508251975136867852.correct : P7508251975136867852.Spec := by
  intro n
  simp only [A206373]

end A206373

/-! ## A206373.P404751936282477734

`ogf((5-6x)/(1-5x+4x^2))`
-/

namespace A206373.P404751936282477734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6] [1, -5, 4] n

end

end A206373.P404751936282477734

namespace A206373

/-- `ogf((5-6x)/(1-5x+4x^2))` -/
def P404751936282477734.Spec : Prop :=
  ∀ n, P404751936282477734.a n = A206373 n

end A206373

/-! ## A206373.P6248764578635529638

`4*a(n-1)-1` with `a(0)=5`
-/

namespace A206373.P6248764578635529638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) - 1

end

end A206373.P6248764578635529638

namespace A206373

/-- `4*a(n-1)-1` -/
def P6248764578635529638.Spec : Prop :=
  ∀ n, P6248764578635529638.a n = A206373 n

end A206373

/-! ## A206373.P4884764900802770199

`lcm(4, a(n-1))-1` with `a(0)=5`
-/

namespace A206373.P4884764900802770199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 1

end

end A206373.P4884764900802770199

namespace A206373

/-- `lcm(4, a(n-1))-1` -/
def P4884764900802770199.Spec : Prop :=
  ∀ n, P4884764900802770199.a n = A206373 n

end A206373

/-! ## A206373.P16935015824874759368

`or(1, floor(14/3*4^n))`
-/

namespace A206373.P16935015824874759368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(14 : ℚ) / 3 * (4 ^ n : ℚ)⌋

end

end A206373.P16935015824874759368

namespace A206373

/-- `or(1, floor(14/3*4^n))` -/
def P16935015824874759368.Spec : Prop :=
  ∀ n, P16935015824874759368.a n = A206373 n

end A206373

/-! ## A206373.P11653809112169142785

`xor(1, floor(14/3*4^n))`
-/

namespace A206373.P11653809112169142785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(14 : ℚ) / 3 * (4 ^ n : ℚ)⌋

end

end A206373.P11653809112169142785

namespace A206373

/-- `xor(1, floor(14/3*4^n))` -/
def P11653809112169142785.Spec : Prop :=
  ∀ n, P11653809112169142785.a n = A206373 n

end A206373

/-! ## A206373.P4179532751974454684

`a(n-1)/(1/2)²-1` with `a(0)=5`
-/

namespace A206373.P4179532751974454684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1

end

end A206373.P4179532751974454684

namespace A206373

/-- `a(n-1)/(1/2)²-1` -/
def P4179532751974454684.Spec : Prop :=
  ∀ n, P4179532751974454684.a n = (A206373 n : ℚ)

end A206373

/-! ## A206373.P14281642707756854933

`record[1-a(n-1)-a(n-1)]` with `a(0)=5`
-/

namespace A206373.P14281642707756854933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206373.P14281642707756854933

namespace A206373

/-- `record[1-a(n-1)-a(n-1)]` -/
def P14281642707756854933.Spec : Prop :=
  ∀ n, P14281642707756854933.a n = A206373 n

end A206373

/-! ## A206373.P626174160631164537

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=5`
-/

namespace A206373.P626174160631164537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 1)))

end

end A206373.P626174160631164537

namespace A206373

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` -/
def P626174160631164537.Spec : Prop :=
  ∀ n, P626174160631164537.a n = A206373 n

end A206373

/-! ## A206373.P11825368747863737479

`a(n-1)-(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=5`
-/

namespace A206373.P11825368747863737479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A206373.P11825368747863737479

namespace A206373

/-- `a(n-1)-(1-a(n-1)-a(n-1)-a(n-1))` -/
def P11825368747863737479.Spec : Prop :=
  ∀ n, P11825368747863737479.a n = A206373 n

end A206373

/-! ## A206373.P5697778922770360475

`A062092(Δ[n²])`
-/

namespace A206373.P5697778922770360475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206373.P5697778922770360475

namespace A206373

/-- `A062092(Δ[n²])` -/
def P5697778922770360475.Spec : Prop :=
  ∀ n, P5697778922770360475.a n = A206373 n

end A206373

/-! ## A206373.P12317959625434135655

`A266753(n+1)+1`
-/

namespace A206373.P12317959625434135655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266753 (n + 1) + 1

end

end A206373.P12317959625434135655

namespace A206373

/-- `A266753(n+1)+1` -/
def P12317959625434135655.Spec : Prop :=
  ∀ n, P12317959625434135655.a n = A206373 n

end A206373

/-! ## A206373.P11997552815067737867

`2*A206374(n)+1`
-/

namespace A206373.P11997552815067737867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206374 n + 1

end

end A206373.P11997552815067737867

namespace A206373

/-- `2*A206374(n)+1` -/
def P11997552815067737867.Spec : Prop :=
  ∀ n, P11997552815067737867.a n = A206373 n

end A206373

/-! ## A206373.P284305162777047464

`2*A308124(n)-1`
-/

namespace A206373.P284305162777047464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308124 n - 1

end

end A206373.P284305162777047464

namespace A206373

/-- `2*A308124(n)-1` -/
def P284305162777047464.Spec : Prop :=
  ∀ n, P284305162777047464.a n = A206373 n

end A206373

/-! ## A206373.P3222765903815987979

`2*A083597(n)+3`
-/

namespace A206373.P3222765903815987979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083597 n + 3

end

end A206373.P3222765903815987979

namespace A206373

/-- `2*A083597(n)+3` -/
def P3222765903815987979.Spec : Prop :=
  ∀ n, P3222765903815987979.a n = A206373 n

end A206373

/-! ## A206373.P5089544676723797324

`A309792(4*n+2)`
-/

namespace A206373.P5089544676723797324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309792 (4 * n + 2)

end

end A206373.P5089544676723797324

namespace A206373

/-- `A309792(4*n+2)` -/
def P5089544676723797324.Spec : Prop :=
  ∀ n, P5089544676723797324.a n = A206373 n

end A206373

/-! ## A206373.P4705081137840529822

`A171160(Δ[n²])+1`
-/

namespace A206373.P4705081137840529822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171160 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A206373.P4705081137840529822

namespace A206373

/-- `A171160(Δ[n²])+1` -/
def P4705081137840529822.Spec : Prop :=
  ∀ n, P4705081137840529822.a n = A206373 n

end A206373

/-! ## A206373.P825602574073331237

`A083595(Δ[n²])-1`
-/

namespace A206373.P825602574073331237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A206373.P825602574073331237

namespace A206373

/-- `A083595(Δ[n²])-1` -/
def P825602574073331237.Spec : Prop :=
  ∀ n, P825602574073331237.a n = A206373 n

end A206373

/-! ## A206373.P7859937751383932549

`A290604(Δ[n²])+3`
-/

namespace A206373.P7859937751383932549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290604 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A206373.P7859937751383932549

namespace A206373

/-- `A290604(Δ[n²])+3` -/
def P7859937751383932549.Spec : Prop :=
  ∀ n, P7859937751383932549.a n = A206373 n

end A206373

/-!
# A206374: a(n) = (7*4^n - 1)/3.

The programs for A206374, the canonical program `A206374.P5162162185000166084` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206374 has offset 0).

The definition of A206374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*4^n-1)/3` (program `A206374.P6613426354625362368`, by `A206374.P6613426354625362368.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206374.P5162162185000166084

`4*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206374

/-- `4*a(n-1)+1` -/
def P5162162185000166084.Spec : Prop :=
  ∀ n, (P5162162185000166084.a n : ℤ) = A206374 n

theorem P5162162185000166084.correct : P5162162185000166084.Spec := by
  intro n
  simp only [A206374]

end A206374

/-! ## A206374.P3812175016377803260

`A083597(n)+1`
-/

namespace A206374.P3812175016377803260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083597 n + 1

end

end A206374.P3812175016377803260

namespace A206374

/-- `A083597(n)+1` -/
def P3812175016377803260.Spec : Prop :=
  ∀ n, P3812175016377803260.a n = A206374 n

end A206374

/-! ## A206374.P1322933151527671328

`7*A002450(n)+2`
-/

namespace A206374.P1322933151527671328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002450 n + 2

end

end A206374.P1322933151527671328

namespace A206374

/-- `7*A002450(n)+2` -/
def P1322933151527671328.Spec : Prop :=
  ∀ n, P1322933151527671328.a n = A206374 n

end A206374

/-! ## A206374.P6613426354625362368

`(7*4^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A206374.P6613426354625362368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A206374.P6613426354625362368

namespace A206374

/-- `(7*4^n-1)/3` -/
def P6613426354625362368.Spec : Prop :=
  ∀ n, P6613426354625362368.a n = (A206374 n : ℚ)

theorem P6613426354625362368.correct : P6613426354625362368.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A206374, Nat.add_sub_cancel, A206374.P6613426354625362368.a, A206374.P5162162185000166084.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A206374, Nat.add_sub_cancel, A206374.P6613426354625362368.a, A206374.P5162162185000166084.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A206374

/-! ## A206374.P13513800081944975209

`ogf((2-x)/(1-5x+4x^2))`
-/

namespace A206374.P13513800081944975209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -5, 4] n

end

end A206374.P13513800081944975209

namespace A206374

/-- `ogf((2-x)/(1-5x+4x^2))` -/
def P13513800081944975209.Spec : Prop :=
  ∀ n, P13513800081944975209.a n = A206374 n

end A206374

/-! ## A206374.P15583045179122719120

`or(1, 4*a(n-1))` with `a(0)=2`
-/

namespace A206374.P15583045179122719120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A206374.P15583045179122719120

namespace A206374

/-- `or(1, 4*a(n-1))` -/
def P15583045179122719120.Spec : Prop :=
  ∀ n, (P15583045179122719120.a n : ℤ) = A206374 n

end A206374

/-! ## A206374.P3747015473883815690

`xor(1, 4*a(n-1))` with `a(0)=2`
-/

namespace A206374.P3747015473883815690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A206374.P3747015473883815690

namespace A206374

/-- `xor(1, 4*a(n-1))` -/
def P3747015473883815690.Spec : Prop :=
  ∀ n, (P3747015473883815690.a n : ℤ) = A206374 n

end A206374

/-! ## A206374.P12446798250414992397

`∑[4*a(n-1)]` with `a(0)=2, a(1)=7`
-/

namespace A206374.P12446798250414992397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206374.P12446798250414992397

namespace A206374

/-- `∑[4*a(n-1)]` -/
def P12446798250414992397.Spec : Prop :=
  ∀ n, (P12446798250414992397.a n : ℤ) = A206374 n

end A206374

/-! ## A206374.P2181698434795575865

`lcm(4, a(n-1))+1` with `a(0)=2, a(1)=9`
-/

namespace A206374.P2181698434795575865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A206374.P2181698434795575865

namespace A206374

/-- `lcm(4, a(n-1))+1` -/
def P2181698434795575865.Spec : Prop :=
  ∀ n, (P2181698434795575865.a n : ℤ) = A206374 n

end A206374

/-! ## A206374.P3049735359609805895

`5-4*(1-a(n-1))` with `a(0)=2`
-/

namespace A206374.P3049735359609805895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 - 4 * (1 - a (n - 1))

end

end A206374.P3049735359609805895

namespace A206374

/-- `5-4*(1-a(n-1))` -/
def P3049735359609805895.Spec : Prop :=
  ∀ n, P3049735359609805895.a n = A206374 n

end A206374

/-! ## A206374.P9133344603996099856

`a(n-1)/(1/2)²+1` with `a(0)=2`
-/

namespace A206374.P9133344603996099856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 1

end

end A206374.P9133344603996099856

namespace A206374

/-- `a(n-1)/(1/2)²+1` -/
def P9133344603996099856.Spec : Prop :=
  ∀ n, P9133344603996099856.a n = (A206374 n : ℚ)

end A206374

/-! ## A206374.P6264825718067809244

`∑[a(n-1)/(1/2)²]` with `a(0)=2, a(1)=7`
-/

namespace A206374.P6264825718067809244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206374.P6264825718067809244

namespace A206374

/-- `∑[a(n-1)/(1/2)²]` -/
def P6264825718067809244.Spec : Prop :=
  ∀ n, P6264825718067809244.a n = (A206374 n : ℚ)

end A206374

/-! ## A206374.P8054718477153052780

`1-a(n-1)/(3/4-1)` with `a(0)=2`
-/

namespace A206374.P8054718477153052780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  1 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A206374.P8054718477153052780

namespace A206374

/-- `1-a(n-1)/(3/4-1)` -/
def P8054718477153052780.Spec : Prop :=
  ∀ n, P8054718477153052780.a n = (A206374 n : ℚ)

end A206374

/-! ## A206374.P9867000589835491911

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=2`
-/

namespace A206374.P9867000589835491911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 1)))

end

end A206374.P9867000589835491911

namespace A206374

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+1` -/
def P9867000589835491911.Spec : Prop :=
  ∀ n, (P9867000589835491911.a n : ℤ) = A206374 n

theorem P9867000589835491911.correct : P9867000589835491911.Spec := by
  intro n
  simp only [A206374, Nat.add_sub_cancel, A206374.P9867000589835491911.a, A206374.P5162162185000166084.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A206374

/-! ## A206374.P9807993038330367279

`2-floor(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A206374.P9807993038330367279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A206374.P9807993038330367279

namespace A206374

/-- `2-floor(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P9807993038330367279.Spec : Prop :=
  ∀ n, P9807993038330367279.a n = A206374 n

end A206374

/-! ## A206374.P12995425553314585208

`A308124(n)-1`
-/

namespace A206374.P12995425553314585208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308124 n - 1

end

end A206374.P12995425553314585208

namespace A206374

/-- `A308124(n)-1` -/
def P12995425553314585208.Spec : Prop :=
  ∀ n, P12995425553314585208.a n = A206374 n

end A206374

/-! ## A206374.P18273714420115377181

`A062092(2*n)`
-/

namespace A206374.P18273714420115377181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 (2 * n)

end

end A206374.P18273714420115377181

namespace A206374

/-- `A062092(2*n)` -/
def P18273714420115377181.Spec : Prop :=
  ∀ n, P18273714420115377181.a n = A206374 n

end A206374

/-! ## A206374.P3340230069884160312

`A290604(2*n)`
-/

namespace A206374.P3340230069884160312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290604 (2 * n)

end

end A206374.P3340230069884160312

namespace A206374

/-- `A290604(2*n)` -/
def P3340230069884160312.Spec : Prop :=
  ∀ n, P3340230069884160312.a n = A206374 n

end A206374

/-! ## A206374.P14069823425579689288

`A081253(Δ[n²])`
-/

namespace A206374.P14069823425579689288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206374.P14069823425579689288

namespace A206374

/-- `A081253(Δ[n²])` -/
def P14069823425579689288.Spec : Prop :=
  ∀ n, P14069823425579689288.a n = A206374 n

end A206374

/-! ## A206374.P9411712179848666232

`A097163(Δ[n²])`
-/

namespace A206374.P9411712179848666232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206374.P9411712179848666232

namespace A206374

/-- `A097163(Δ[n²])` -/
def P9411712179848666232.Spec : Prop :=
  ∀ n, P9411712179848666232.a n = A206374 n

end A206374

/-!
# A206375: Vinogradov's constants arising in enumeration of solutions to Waring's problem in the evil numbers (A001969).

The programs for A206375, there is no canonical definition to state claims against.
-/

/-! ## A206375.P8401440147174517968

`2^C(n+3, gcd(5, n+2))`
-/

namespace A206375.P8401440147174517968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (n + 3) (Nat.gcd 5 (n + 2))

end

end A206375.P8401440147174517968

/-! ## A206375.P8208337482080801118

`∑{p}[4^(n+2), #^(n+3)]`
-/

namespace A206375.P8208337482080801118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ (n + 3)

end

end A206375.P8208337482080801118

/-! ## A206375.P9835822542527821299

`∏{p}[4^(n+2), #^(n+3)]`
-/

namespace A206375.P9835822542527821299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ (n + 3)

end

end A206375.P9835822542527821299

/-! ## A206375.P9836459844450336791

`2^A054760(∑[n])`
-/

namespace A206375.P9836459844450336791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054760 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A206375.P9836459844450336791

/-!
# A206376: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A206376, there is no canonical definition to state claims against.
-/

/-! ## A206376.P12541204591380375263

`A206383(∑[4*n]+1)`
-/

namespace A206376.P12541204591380375263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206376.P12541204591380375263

/-!
# A206377: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A206377, there is no canonical definition to state claims against.
-/

/-! ## A206377.P14002032442616242668

`A206383(∑[n+1]+2)`
-/

namespace A206377.P14002032442616242668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206377.P14002032442616242668

/-! ## A206377.P16253449428435323428

`record[A010054(n)*A206383(n+2)]`
-/

namespace A206377.P16253449428435323428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206377.P16253449428435323428

/-! ## A206377.P15398746957531852174

`record[root(A206383(n+2), A213999(n))]`
-/

namespace A206377.P15398746957531852174
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206383 (n + 2) : ℝ) ^ (1 / (A213999 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206377.P15398746957531852174

/-! ## A206377.P16422218924777936818

`record[gcd(A168068(n), A206383(n+2))]`
-/

namespace A206377.P16422218924777936818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168068 n) (A206383 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206377.P16422218924777936818

/-! ## A206377.P16349249511538301348

`A206383(A000096(n)+3)%A206378(n+1)`
-/

namespace A206377.P16349249511538301348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206383 (A000096 n + 3).toNat) (A206378 (n + 1))

end

end A206377.P16349249511538301348

/-!
# A206378: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A206378, there is no canonical definition to state claims against.
-/

/-! ## A206378.P12603217044598373479

`A206383(∑[n+2]+4)`
-/

namespace A206378.P12603217044598373479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206378.P12603217044598373479

/-! ## A206378.P11583275453788329505

`or(1, A206383(A167614(n+1)))`
-/

namespace A206378.P11583275453788329505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206383 (A167614 (n + 1)).toNat)

end

end A206378.P11583275453788329505

/-! ## A206378.P1109061222678289696

`A326685(n)+A206383(A167614(n+1))`
-/

namespace A206378.P1109061222678289696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A206383 (A167614 (n + 1)).toNat

end

end A206378.P1109061222678289696

/-! ## A206378.P10068883676912580238

`A016126(n)*A206383(A167614(n+1))`
-/

namespace A206378.P10068883676912580238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016126 n * A206383 (A167614 (n + 1)).toNat

end

end A206378.P10068883676912580238

/-! ## A206378.P8603832474818093067

`lcm(A033999(n), A206383(A167614(n+1)))`
-/

namespace A206378.P8603832474818093067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206383 (A167614 (n + 1)).toNat)

end

end A206378.P8603832474818093067

/-!
# A206379: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A206379, there is no canonical definition to state claims against.
-/

/-! ## A206379.P8572979824426601192

`A206383(A141214(n)+7)`
-/

namespace A206379.P8572979824426601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A141214 n + 7).toNat

end

end A206379.P8572979824426601192

/-! ## A206379.P1181651252657601356

`A206383(A167614(n+2)+1)`
-/

namespace A206379.P1181651252657601356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A167614 (n + 2) + 1).toNat

end

end A206379.P1181651252657601356

/-! ## A206379.P1442036897413960074

`A206383(A000217(n+3)+n+1)`
-/

namespace A206379.P1442036897413960074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A206379.P1442036897413960074

/-!
# A206380: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A206380, there is no canonical definition to state claims against.
-/

/-! ## A206380.P14621081219997041745

`A206383(A374005(n+1))`
-/

namespace A206380.P14621081219997041745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A374005 (n + 1)).toNat

end

end A206380.P14621081219997041745

/-! ## A206380.P12653130145401814796

`A206383(Δ[A023545(n+1)])`
-/

namespace A206380.P12653130145401814796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (f1 (n + 1) - f1 n).toNat

end

end A206380.P12653130145401814796

/-!
# A206381: 

The programs for A206381, there is no canonical definition to state claims against.
-/

/-! ## A206381.P2616456526957653595

`A206383(A000217(n+5)+6)`
-/

namespace A206381.P2616456526957653595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A000217 (n + 5) + 6).toNat

end

end A206381.P2616456526957653595

/-! ## A206381.P17036246527817827196

`A206383(A000124(n+6)-6)`
-/

namespace A206381.P17036246527817827196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A000124 (n + 6) - 6).toNat

end

end A206381.P17036246527817827196

/-!
# A206382: 

The programs for A206382, there is no canonical definition to state claims against.
-/

/-! ## A206382.P11730992535937462713

`A206383(A000124(n+6)+6)`
-/

namespace A206382.P11730992535937462713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (A000124 (n + 6) + 6).toNat

end

end A206382.P11730992535937462713

/-!
# A206384: Number of n X 3 0..6 arrays with no element equal to another within a city block distance of two, and new values 0..6 introduced in row major order.

The programs for A206384, there is no canonical definition to state claims against.
-/

/-! ## A206384.P6752069169233969128

`A206389(∑[n+2]+4)`
-/

namespace A206384.P6752069169233969128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206384.P6752069169233969128

/-! ## A206384.P17004911392256908392

`record[gcd(A143398(n), A206389(n+3))]`
-/

namespace A206384.P17004911392256908392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143398 n) (A206389 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206384.P17004911392256908392

/-! ## A206384.P59483052376575907

`A206389(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A206384.P59483052376575907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206389 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A206384.P59483052376575907

/-! ## A206384.P6416618998020441452

`A206389(A167614(n+1))+A025465(n)`
-/

namespace A206384.P6416618998020441452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A167614 (n + 1)).toNat + A025465 n

end

end A206384.P6416618998020441452

/-! ## A206384.P837194616087370341

`A206389(A167614(n+1))+A025469(n)`
-/

namespace A206384.P837194616087370341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A167614 (n + 1)).toNat + A025469 n

end

end A206384.P837194616087370341

/-!
# A206385: Number of n X 4 0..6 arrays with no element equal to another within a city block distance of two, and new values 0..6 introduced in row major order.

The programs for A206385, there is no canonical definition to state claims against.
-/

/-! ## A206385.P17857252095505150549

`A206389(A374004(n+1))`
-/

namespace A206385.P17857252095505150549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A374004 (n + 1)).toNat

end

end A206385.P17857252095505150549

/-! ## A206385.P2983540595062841250

`A206389(A141214(n)+7)`
-/

namespace A206385.P2983540595062841250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A141214 n + 7).toNat

end

end A206385.P2983540595062841250

/-! ## A206385.P2677372925245284969

`A206389(A052905(n)+9)`
-/

namespace A206385.P2677372925245284969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A052905 n + 9).toNat

end

end A206385.P2677372925245284969

/-! ## A206385.P1827051014309520779

`A206389(A055999(n)+10)`
-/

namespace A206385.P1827051014309520779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A055999 n + 10).toNat

end

end A206385.P1827051014309520779

/-!
# A206386: Number of n X 5 0..6 arrays with no element equal to another within a city block distance of two, and new values 0..6 introduced in row major order.

The programs for A206386, there is no canonical definition to state claims against.
-/

/-! ## A206386.P8496195878004339860

`A206389(A374005(n+1))`
-/

namespace A206386.P8496195878004339860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A374005 (n + 1)).toNat

end

end A206386.P8496195878004339860

/-! ## A206386.P17252285207478942952

`A206389(A167499(n+3))`
-/

namespace A206386.P17252285207478942952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A167499 (n + 3)).toNat

end

end A206386.P17252285207478942952

/-! ## A206386.P15755975819258522013

`A206389(A077169(n+5))`
-/

namespace A206386.P15755975819258522013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A077169 (n + 5)).toNat

end

end A206386.P15755975819258522013

/-!
# A206387: Number of nX6 0..6 arrays with no element equal to another within a city block distance of two, and new values 0..6 introduced in row major order.

The programs for A206387, there is no canonical definition to state claims against.
-/

/-! ## A206387.P17058086745717572774

`A206389(A374007(n+1))`
-/

namespace A206387.P17058086745717572774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A374007 (n + 1)).toNat

end

end A206387.P17058086745717572774

/-!
# A206388: Number of nX7 0..6 arrays with no element equal to another within a city block distance of two, and new values 0..6 introduced in row major order.

The programs for A206388, there is no canonical definition to state claims against.
-/

/-! ## A206388.P1615242976562909299

`A206389(A055999(n+4))`
-/

namespace A206388.P1615242976562909299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (A055999 (n + 4)).toNat

end

end A206388.P1615242976562909299

/-!
# A206389: T(n,k)=Number of nXk 0..6 arrays with no element equal to another within a city block distance of two, and new values 0..6 introduced in row major order.

The programs for A206389, there is no canonical definition to state claims against.
-/

/-! ## A206389.P11919122551319233524

`A085516(A206503(n+1))`
-/

namespace A206389.P11919122551319233524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A206503 (n + 1)).toNat

end

end A206389.P11919122551319233524

/-! ## A206389.P4086534005440970142

`A206503(n+1)-A025469(n²²)`
-/

namespace A206389.P4086534005440970142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (n + 1) - A025469 ((n ^ 2) ^ 2)

end

end A206389.P4086534005440970142

/-! ## A206389.P10641509935674682869

`A206503(n+1)-A011746(A022179(n))`
-/

namespace A206389.P10641509935674682869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (n + 1) - A011746 (A022179 n).toNat

end

end A206389.P10641509935674682869

/-! ## A206389.P9797586653832626945

`A069554(A206503(n+1)-A084904(n))`
-/

namespace A206389.P9797586653832626945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069554 (A206503 (n + 1) - A084904 n).toNat

end

end A206389.P9797586653832626945

/-!
# A206390: Number of n X n 0..5 arrays with no element equal to another within a city block distance of two, and new values 0..5 introduced in row major order.

The programs for A206390, there is no canonical definition to state claims against.
-/

/-! ## A206390.P1294162542649930326

`A206396(∑[4*n]+1)`
-/

namespace A206390.P1294162542649930326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206390.P1294162542649930326

/-! ## A206390.P11907455045332080849

`A206396(A001844(n))+char[14]`
-/

namespace A206390.P11907455045332080849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A206390.P11907455045332080849

/-! ## A206390.P16560776469638696670

`or(A156817(n), A206396(A001844(n)))`
-/

namespace A206390.P16560776469638696670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156817 n) (A206396 (A001844 n).toNat)

end

end A206390.P16560776469638696670

/-! ## A206390.P3249939227026084785

`A217155(n+1)+A206396(A001844(n))`
-/

namespace A206390.P3249939227026084785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + A206396 (A001844 n).toNat

end

end A206390.P3249939227026084785

/-!
# A206391: Number of n X 3 0..5 arrays with no element equal to another within a city block distance of two, and new values 0..5 introduced in row major order.

The programs for A206391, there is no canonical definition to state claims against.
-/

/-! ## A206391.P15294071868041320025

`ceil(A180374(n+1)/6)`
-/

namespace A206391.P15294071868041320025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180374 (n + 1) : ℚ) / 6⌉

end

end A206391.P15294071868041320025

/-! ## A206391.P17567645174031549130

`A206396(∑[n+2]+4)`
-/

namespace A206391.P17567645174031549130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206391.P17567645174031549130

/-! ## A206391.P12946730444985192953

`record[A010054(n)*A206396(n+3)]`
-/

namespace A206391.P12946730444985192953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206396 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206391.P12946730444985192953

/-! ## A206391.P10817898258857609573

`A206396(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A206391.P10817898258857609573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206396 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A206391.P10817898258857609573

/-! ## A206391.P16715703701079020449

`A206396(A167614(n+1))+A011745(n)`
-/

namespace A206391.P16715703701079020449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A167614 (n + 1)).toNat + A011745 n

end

end A206391.P16715703701079020449

/-!
# A206392: Number of n X 4 0..5 arrays with no element equal to another within a city block distance of two, and new values 0..5 introduced in row major order.

The programs for A206392, there is no canonical definition to state claims against.
-/

/-! ## A206392.P13105851326460248871

`A206396(∑[2*a(n-1)-a(n-2)])` with `a(0)=10, a(1)=4, a(2)=5`
-/

namespace A206392.P13105851326460248871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 4, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206392.P13105851326460248871

/-! ## A206392.P9944325197347367842

`A206396(A141214(n)+7)`
-/

namespace A206392.P9944325197347367842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A141214 n + 7).toNat

end

end A206392.P9944325197347367842

/-! ## A206392.P1559505050553264884

`A206396(A052905(n)+9)`
-/

namespace A206392.P1559505050553264884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A052905 n + 9).toNat

end

end A206392.P1559505050553264884

/-! ## A206392.P6274367914921737304

`A206396(A055999(n)+10)`
-/

namespace A206392.P6274367914921737304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A055999 n + 10).toNat

end

end A206392.P6274367914921737304

/-! ## A206392.P16946348537755972482

`A206396(eq[5, A066657(n)])`
-/

namespace A206392.P16946348537755972482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206392.P16946348537755972482

/-!
# A206393: Number of nX5 0..5 arrays with no element equal to another within a city block distance of two, and new values 0..5 introduced in row major order.

The programs for A206393, there is no canonical definition to state claims against.
-/

/-! ## A206393.P13462228275828605322

`A206396(A155212(n)+13)`
-/

namespace A206393.P13462228275828605322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A155212 n + 13).toNat

end

end A206393.P13462228275828605322

/-! ## A206393.P16603650927300155624

`A206396(A056000(n)+15)`
-/

namespace A206393.P16603650927300155624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A056000 n + 15).toNat

end

end A206393.P16603650927300155624

/-! ## A206393.P8654814180598927046

`A206396(eq[7, A066657(n)])`
-/

namespace A206393.P8654814180598927046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206393.P8654814180598927046

/-! ## A206393.P883654117210538983

`A206396(A167614(n+3)+2)`
-/

namespace A206393.P883654117210538983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A167614 (n + 3) + 2).toNat

end

end A206393.P883654117210538983

/-! ## A206393.P7552803579493364963

`A206396(A000217(n+4)+5)`
-/

namespace A206393.P7552803579493364963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A000217 (n + 4) + 5).toNat

end

end A206393.P7552803579493364963

/-!
# A206394: Number of nX6 0..5 arrays with no element equal to another within a city block distance of two, and new values 0..5 introduced in row major order.

The programs for A206394, there is no canonical definition to state claims against.
-/

/-! ## A206394.P4037758108770923289

`A206396(A167499(n+4)+1)`
-/

namespace A206394.P4037758108770923289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A167499 (n + 4) + 1).toNat

end

end A206394.P4037758108770923289

/-! ## A206394.P12959190460111645894

`A206396(A167487(n+4)-1)`
-/

namespace A206394.P12959190460111645894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A167487 (n + 4) - 1).toNat

end

end A206394.P12959190460111645894

/-! ## A206394.P12094318429503617037

`A206396(A000217(n+5)+6)`
-/

namespace A206394.P12094318429503617037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A000217 (n + 5) + 6).toNat

end

end A206394.P12094318429503617037

/-! ## A206394.P16188122100751506821

`A206396(eq[7, A131818(n+1)])`
-/

namespace A206394.P16188122100751506821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206394.P16188122100751506821

/-! ## A206394.P8609343167304838487

`A206396(A374007(n+1))`
-/

namespace A206394.P8609343167304838487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A374007 (n + 1)).toNat

end

end A206394.P8609343167304838487

/-!
# A206395: Number of nX7 0..5 arrays with no element equal to another within a city block distance of two, and new values 0..5 introduced in row major order.

The programs for A206395, there is no canonical definition to state claims against.
-/

/-! ## A206395.P5010109358272428470

`A206396(A167487(n+5))`
-/

namespace A206395.P5010109358272428470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A167487 (n + 5)).toNat

end

end A206395.P5010109358272428470

/-! ## A206395.P4506369651918867731

`A206396(A056119(n)+28)`
-/

namespace A206395.P4506369651918867731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A056119 n + 28).toNat

end

end A206395.P4506369651918867731

/-! ## A206395.P13979846065941426009

`A206396(eq[11, A066657(n)])`
-/

namespace A206395.P13979846065941426009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206395.P13979846065941426009

/-! ## A206395.P3538237660363913714

`A206396(A167499(n+5)+2)`
-/

namespace A206395.P3538237660363913714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A167499 (n + 5) + 2).toNat

end

end A206395.P3538237660363913714

/-! ## A206395.P17504408711488952102

`A206396(A027379(n+4)+10)`
-/

namespace A206395.P17504408711488952102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (A027379 (n + 4) + 10).toNat

end

end A206395.P17504408711488952102

/-!
# A206399: a(0) = 1; for n > 0, a(n) = 41*n^2 + 2.

The programs for A206399, the canonical program `A206399.P7623707064412880944` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206399 has offset 0).

The definition of A206399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206399.P7623707064412880944

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=43, a(2)=166, a(3)=371`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A206399

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7623707064412880944.Spec : Prop :=
  ∀ n, P7623707064412880944.a n = A206399 n

theorem P7623707064412880944.correct : P7623707064412880944.Spec := by
  intro n
  simp only [A206399]

end A206399

/-! ## A206399.P1434784367639810483

`(4*n)²+Δ[floor((2*n)²/(2*n+1))^3]+n²`
-/

namespace A206399.P1434784367639810483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ))

end

end A206399.P1434784367639810483

namespace A206399

/-- `(4*n)²+Δ[floor((2*n)²/(2*n+1))^3]+n²` -/
def P1434784367639810483.Spec : Prop :=
  ∀ n, P1434784367639810483.a n = A206399 n

end A206399

/-! ## A206399.P627721783896281148

`abs(record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]+n²)`
-/

namespace A206399.P627721783896281148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((2 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2) * (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)|

end

end A206399.P627721783896281148

namespace A206399

/-- `abs(record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]+n²)` -/
def P627721783896281148.Spec : Prop :=
  ∀ n, P627721783896281148.a n = A206399 n

end A206399

/-! ## A206399.P11836746533089609938

`abs(n²-A010023(n))`
-/

namespace A206399.P11836746533089609938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A010023 n|

end

end A206399.P11836746533089609938

namespace A206399

/-- `abs(n²-A010023(n))` -/
def P11836746533089609938.Spec : Prop :=
  ∀ n, P11836746533089609938.a n = A206399 n

end A206399

/-! ## A206399.P3128130355286784232

`abs(A010001(3*n)-(2*n)²)`
-/

namespace A206399.P3128130355286784232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010001 (3 * n) - ((2 * n) ^ 2 : ℤ)|

end

end A206399.P3128130355286784232

namespace A206399

/-- `abs(A010001(3*n)-(2*n)²)` -/
def P3128130355286784232.Spec : Prop :=
  ∀ n, P3128130355286784232.a n = A206399 n

end A206399

/-! ## A206399.P13322362136007840040

`abs(A016742(n)-A010001(3*n))`
-/

namespace A206399.P13322362136007840040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016742 n - A010001 (3 * n)|

end

end A206399.P13322362136007840040

namespace A206399

/-- `abs(A016742(n)-A010001(3*n))` -/
def P13322362136007840040.Spec : Prop :=
  ∀ n, P13322362136007840040.a n = A206399 n

end A206399

/-! ## A206399.P727527229956247419

`A000027(A007899(2*n)-n²)`
-/

namespace A206399.P727527229956247419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007899 (2 * n) - (n ^ 2 : ℤ)).toNat

end

end A206399.P727527229956247419

namespace A206399

/-- `A000027(A007899(2*n)-n²)` -/
def P727527229956247419.Spec : Prop :=
  ∀ n, P727527229956247419.a n = A206399 n

end A206399

/-! ## A206399.P8924313783631446269

`A000027((6*n)²+A010001(n))`
-/

namespace A206399.P8924313783631446269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((6 * n) ^ 2 : ℤ) + A010001 n).toNat

end

end A206399.P8924313783631446269

namespace A206399

/-- `A000027((6*n)²+A010001(n))` -/
def P8924313783631446269.Spec : Prop :=
  ∀ n, P8924313783631446269.a n = A206399 n

end A206399

