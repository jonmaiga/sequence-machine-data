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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A157000: Triangle T(n,k) = (n/k)*binomial(n-k-1, k-1) read by rows.

The programs for A157000, the canonical program `A157000.P11256171497413587724` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157000 has offset 2).

The definition of A157000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157000.P15805483495149096456

`A034807(ceil(2*sqrt(n+1))+n+1)`
-/

namespace A157000.P15805483495149096456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (⌈2 * Real.sqrt (n + 1 : ℝ)⌉ + (n + 1 : ℤ)).toNat

end

end A157000.P15805483495149096456

namespace A157000

/-- `A034807(ceil(2*sqrt(n+1))+n+1)` -/
def P15805483495149096456.Spec : Prop :=
  ∀ n, P15805483495149096456.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P11256171497413587724

`A011973(A049068(n+1))+A011973(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157000

/-- `A011973(A049068(n+1))+A011973(n)` -/
def P11256171497413587724.Spec : Prop :=
  ∀ n, P11256171497413587724.a n = A157000 (n + 2)

theorem P11256171497413587724.correct : P11256171497413587724.Spec := by
  intro n
  simp only [A157000, Nat.add_sub_cancel]

end A157000

/-! ## A157000.P11053803937390595652

`A011973(A000037(A000037(n+1)))+A011973(n)`
-/

namespace A157000.P11053803937390595652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A000037 (A000037 (n + 1)).toNat).toNat + A011973 n

end

end A157000.P11053803937390595652

namespace A157000

/-- `A011973(A000037(A000037(n+1)))+A011973(n)` -/
def P11053803937390595652.Spec : Prop :=
  ∀ n, P11053803937390595652.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P3048044754585669218

`A074909(A056536(n+1))+A011973(n)`
-/

namespace A157000.P3048044754585669218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056536 (n + 1)).toNat + A011973 n

end

end A157000.P3048044754585669218

namespace A157000

/-- `A074909(A056536(n+1))+A011973(n)` -/
def P3048044754585669218.Spec : Prop :=
  ∀ n, P3048044754585669218.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P3477957933456446509

`A029638(A091018(n)+2)`
-/

namespace A157000.P3477957933456446509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (A091018 n + 2).toNat

end

end A157000.P3477957933456446509

namespace A157000

/-- `A029638(A091018(n)+2)` -/
def P3477957933456446509.Spec : Prop :=
  ∀ n, P3477957933456446509.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P18111751831474749059

`A135278(A091018(n))+A011973(n)`
-/

namespace A157000.P18111751831474749059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A091018 n).toNat + A011973 n

end

end A157000.P18111751831474749059

namespace A157000

/-- `A135278(A091018(n))+A011973(n)` -/
def P18111751831474749059.Spec : Prop :=
  ∀ n, P18111751831474749059.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P11676533209143830811

`A162514(lt[n, n*A162514(n)])`
-/

namespace A157000.P11676533209143830811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A157000.P11676533209143830811

namespace A157000

/-- `A162514(lt[n, n*A162514(n)])` -/
def P11676533209143830811.Spec : Prop :=
  ∀ n, P11676533209143830811.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P8616410654454949765

`A162514(A049068(n+1)+A000037(n+1))`
-/

namespace A157000.P8616410654454949765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A049068 (n + 1) + A000037 (n + 1)).toNat

end

end A157000.P8616410654454949765

namespace A157000

/-- `A162514(A049068(n+1)+A000037(n+1))` -/
def P8616410654454949765.Spec : Prop :=
  ∀ n, P8616410654454949765.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P4591299558576954396

`A162514(lt[1, A163626(n)])`
-/

namespace A157000.P4591299558576954396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A157000.P4591299558576954396

namespace A157000

/-- `A162514(lt[1, A163626(n)])` -/
def P4591299558576954396.Spec : Prop :=
  ∀ n, P4591299558576954396.a n = A157000 (n + 2)

end A157000

/-! ## A157000.P2967410087386402711

`A034807(A049068(n+1)²)*A034807(A049068(n+1))`
-/

namespace A157000.P2967410087386402711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A049068 (n + 1) ^ 2).toNat * A034807 (A049068 (n + 1)).toNat

end

end A157000.P2967410087386402711

namespace A157000

/-- `A034807(A049068(n+1)²)*A034807(A049068(n+1))` -/
def P2967410087386402711.Spec : Prop :=
  ∀ n, P2967410087386402711.a n = A157000 (n + 2)

end A157000

/-!
# A157001: Fractions x/y, with 1<=x, y<=n, that reduce to (odd)/(even).

The programs for A157001, there is no canonical definition to state claims against.
-/

/-! ## A157001.P3949847466092364882

`∑[n-floor(n/(xor(n, n+1)+1))]`
-/

namespace A157001.P3949847466092364882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P3949847466092364882

/-! ## A157001.P9149188523041428367

`∑[n-round(n/(xor(n, n+1)+1))]`
-/

namespace A157001.P9149188523041428367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P9149188523041428367

/-! ## A157001.P15638572749316058387

`∑[n]-∑[-ceil(n/xor(n, -(n+2)))]`
-/

namespace A157001.P15638572749316058387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A157001.P15638572749316058387

/-! ## A157001.P21723553634777247

`∑[n-floor(n/2^val(n+1, 2))/2]`
-/

namespace A157001.P21723553634777247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P21723553634777247

/-! ## A157001.P10699191918633698841

`∑[n-floor(n/and(n+1, -(n+1)))/2]`
-/

namespace A157001.P10699191918633698841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P10699191918633698841

/-! ## A157001.P10277271428813955038

`∑[n+1-ceil((n+1)/(xor(n, n+1)+1))]`
-/

namespace A157001.P10277271428813955038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P10277271428813955038

/-! ## A157001.P11197666989281400015

`∑[n-((n+1)/2^val(n+1, 2)-1)/2]`
-/

namespace A157001.P11197666989281400015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P11197666989281400015

/-! ## A157001.P18219594542596211407

`∑[n-lcm(n+1, and(n, n+1))/(2*(n+1))]`
-/

namespace A157001.P18219594542596211407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm (n + 1) (Nat.land n (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P18219594542596211407

/-! ## A157001.P7787269914507795541

`∑[n-and((n+1)/and(n+1, -(n+1)), -2)/2]`
-/

namespace A157001.P7787269914507795541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (-2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P7787269914507795541

/-! ## A157001.P8373605703652044191

`∑[n-A025480(n)]`
-/

namespace A157001.P8373605703652044191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157001.P8373605703652044191

/-!
# A157002: Transform of Catalan numbers whose Hankel transform gives the Somos-4 sequence.

The programs for A157002, there is no canonical definition to state claims against.
-/

/-! ## A157002.P17321108663925592139

`A025262(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A157002.P17321108663925592139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025262 (n + 1) - a (n - 1)

end

end A157002.P17321108663925592139

/-! ## A157002.P2915065453043468237

`A056010(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A157002.P2915065453043468237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056010 (n - 1) - a (n - 1)

end

end A157002.P2915065453043468237

/-! ## A157002.P10119477174807740203

`A056010(n)-Δ[A157003(n)]`
-/

namespace A157002.P10119477174807740203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 n - (f1 (n + 1) - f1 n)

end

end A157002.P10119477174807740203

/-! ## A157002.P3204051698198222187

`2*A157003(n)-A157100(n)`
-/

namespace A157002.P3204051698198222187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157003 n - A157100 n

end

end A157002.P3204051698198222187

/-! ## A157002.P2900762560672855045

`A025262(n+2)-Δ[A157003(n)]`
-/

namespace A157002.P2900762560672855045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025262 (n + 2) - (f1 (n + 1) - f1 n)

end

end A157002.P2900762560672855045

/-! ## A157002.P10936699574719800679

`A056010(n)+A157003(n)-A157003(n+1)`
-/

namespace A157002.P10936699574719800679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 n + (A157003 n - A157003 (n + 1))

end

end A157002.P10936699574719800679

/-! ## A157002.P8293958560290595351

`A025262(n+2)+A157003(n)-A157003(n+1)`
-/

namespace A157002.P8293958560290595351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025262 (n + 2) + (A157003 n - A157003 (n + 1))

end

end A157002.P8293958560290595351

/-! ## A157002.P7766642633783359303

`Δ[A157100(n)-A157003(n)]`
-/

namespace A157002.P7766642633783359303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 n - A157003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157002.P7766642633783359303

/-!
# A157003: Transform of Catalan numbers whose Hankel transform gives the Somos-4 sequence.

The programs for A157003, there is no canonical definition to state claims against.
-/

/-! ## A157003.P4033373367081251364

`∑[A157002(n)]`
-/

namespace A157003.P4033373367081251364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157003.P4033373367081251364

/-! ## A157003.P1611643461452613848

`A056010(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A157003.P1611643461452613848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A056010 (n - 1) + a (n - 2)

end

end A157003.P1611643461452613848

/-! ## A157003.P12219462235228329750

`∑[A025262(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A157003.P12219462235228329750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025262 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157003.P12219462235228329750

/-! ## A157003.P11916871547583467527

`A157100(n)-a(n-1)` with `a(0)=1`
-/

namespace A157003.P11916871547583467527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157100 n - a (n - 1)

end

end A157003.P11916871547583467527

/-! ## A157003.P11637878893738506659

`2*A157004(n)-A261058(n+1)`
-/

namespace A157003.P11637878893738506659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157004 n - A261058 (n + 1)

end

end A157003.P11637878893738506659

/-!
# A157004: Transform of central binomial coefficients A000984 whose Hankel transform obeys a Somos-4 recurrence.

The programs for A157004, there is no canonical definition to state claims against.
-/

/-! ## A157004.P7075950999258423688

`(A261058(n+1)+A157003(n))/2`
-/

namespace A157004.P7075950999258423688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261058 (n + 1) + A157003 n : ℚ) / 2

end

end A157004.P7075950999258423688

/-! ## A157004.P11007870587486682938

`A168151(∑[n])`
-/

namespace A157004.P11007870587486682938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157004.P11007870587486682938

/-! ## A157004.P16974916617601660143

`A213221(∑[n])`
-/

namespace A157004.P16974916617601660143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157004.P16974916617601660143

/-! ## A157004.P9693765559178164337

`record[A168151(n)]`
-/

namespace A157004.P9693765559178164337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157004.P9693765559178164337

/-! ## A157004.P17075333414495891595

`record[A213221(n)]`
-/

namespace A157004.P17075333414495891595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157004.P17075333414495891595

/-!
# A157005: A Somos-4 variant.

The programs for A157005, the canonical program `A157005.P3245455919645198880` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157005 has offset 0).

The definition of A157005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157005.P3245455919645198880

`2^n*A006720(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157005

/-- `2^n*A006720(n+2)` -/
def P3245455919645198880.Spec : Prop :=
  ∀ n, P3245455919645198880.a n = A157005 n

theorem P3245455919645198880.correct : P3245455919645198880.Spec := by
  intro n
  simp only [A157005]

end A157005

/-! ## A157005.P6326864578784286293

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=24`
-/

namespace A157005.P6326864578784286293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 8, 24] fun n a =>
  (a (n - 1) * a (n - 3) + a (n - 2) ^ 2) / a (n - 4)

end

end A157005.P6326864578784286293

namespace A157005

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P6326864578784286293.Spec : Prop :=
  ∀ n, P6326864578784286293.a n = (A157005 n : ℚ)

end A157005

/-! ## A157005.P13753885814092794476

`A165905(n+1)/2`
-/

namespace A157005.P13753885814092794476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165905 (n + 1) : ℚ) / 2

end

end A157005.P13753885814092794476

namespace A157005

/-- `A165905(n+1)/2` -/
def P13753885814092794476.Spec : Prop :=
  ∀ n, P13753885814092794476.a n = (A157005 n : ℚ)

end A157005

/-! ## A157005.P7511186769756019721

`A165904(n+2)/4`
-/

namespace A157005.P7511186769756019721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165904 (n + 2) : ℚ) / 4

end

end A157005.P7511186769756019721

namespace A157005

/-- `A165904(n+2)/4` -/
def P7511186769756019721.Spec : Prop :=
  ∀ n, P7511186769756019721.a n = (A157005 n : ℚ)

end A157005

/-! ## A157005.P750884568727524157

`Δ[∑[A165905(n)]/2]`
-/

namespace A157005.P750884568727524157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165905 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157005.P750884568727524157

namespace A157005

/-- `Δ[∑[A165905(n)]/2]` -/
def P750884568727524157.Spec : Prop :=
  ∀ n, P750884568727524157.a n = (A157005 n : ℚ)

end A157005

/-!
# A157006: Numbers k such that 2^k + 25 is prime.

The programs for A157006, there is no canonical definition to state claims against.
-/

/-! ## A157006.P17122327514666179104

`2*A204388(n+1)`
-/

namespace A157006.P17122327514666179104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204388 (n + 1)

end

end A157006.P17122327514666179104

/-! ## A157006.P15997040025789370430

`A204388(A000027(n+1))+A204388(n+1)`
-/

namespace A157006.P15997040025789370430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204388 (A000027 (n + 1)).toNat + A204388 (n + 1)

end

end A157006.P15997040025789370430

/-! ## A157006.P7042283533372100015

`A204388(A028310(n+1))+A204388(n+1)`
-/

namespace A157006.P7042283533372100015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204388 (A028310 (n + 1)).toNat + A204388 (n + 1)

end

end A157006.P7042283533372100015

/-! ## A157006.P11304345764432294463

`A204388(A122079(n+1))+A204388(n+1)`
-/

namespace A157006.P11304345764432294463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204388 (A122079 (n + 1)).toNat + A204388 (n + 1)

end

end A157006.P11304345764432294463

/-! ## A157006.P12171565918255054465

`A204388(n+1)+A204388(A296882(n+1))`
-/

namespace A157006.P12171565918255054465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204388 (n + 1) + A204388 (A296882 (n + 1)).toNat

end

end A157006.P12171565918255054465

/-!
# A157008: Four-digit primes that have at least 4 permutations (without leading zeros) that are primes.

The programs for A157008, there is no canonical definition to state claims against.
-/

/-! ## A157008.P12656521689324104794

`p?[A074940(A171121(n+1))]`
-/

namespace A157008.P12656521689324104794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (A171121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157008.P12656521689324104794

/-!
# A157009: Primes p such that 3 = abs(largest digit of p - sum of all the other digits of p).

The programs for A157009, there is no canonical definition to state claims against.
-/

/-! ## A157009.P13724456674809135034

`A065091(eq[3, A041000(n+1)])`
-/

namespace A157009.P13724456674809135034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157009.P13724456674809135034

/-! ## A157009.P7298770477844978690

`A000040(eq[3, A041000(n+1)]+1)`
-/

namespace A157009.P7298770477844978690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157009.P7298770477844978690

/-! ## A157009.P12204649064552129464

`A008578(eq[3, A041000(n+1)]+2)`
-/

namespace A157009.P12204649064552129464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A157009.P12204649064552129464

/-! ## A157009.P5102072920504346145

`A006093(eq[3, A041000(n+1)]+1)+1`
-/

namespace A157009.P5102072920504346145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A157009.P5102072920504346145

/-! ## A157009.P13076875308200591453

`p?[(A041000(n+1)-2)*A000040(n+1)]`
-/

namespace A157009.P13076875308200591453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041000 (n + 1) - 2) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157009.P13076875308200591453

/-!
# A157010: a(n) = 1681*n^2 - 756*n + 85.

The programs for A157010, there is no canonical definition to state claims against.
-/

/-! ## A157010.P4787906684640409927

`round((A157106(n+1)/A157105(n+1))²)`
-/

namespace A157010.P4787906684640409927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157106 (n + 1) : ℚ) / (A157105 (n + 1) : ℚ)) ^ 2)

end

end A157010.P4787906684640409927

/-! ## A157010.P10573306809841168496

`A017282(record[xor(3, n)])+A017246(n)`
-/

namespace A157010.P10573306809841168496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + A017246 n

end

end A157010.P10573306809841168496

/-! ## A157010.P10391156971138634979

`A017282(A004767(n))+(9*n+7)²`
-/

namespace A157010.P10391156971138634979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 (A004767 n).toNat + ((9 * n + 7) ^ 2 : ℤ)

end

end A157010.P10391156971138634979

/-! ## A157010.P13834761814848623843

`A017246(n)+A004767(A017353(n))²`
-/

namespace A157010.P13834761814848623843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n + A004767 (A017353 n).toNat ^ 2

end

end A157010.P13834761814848623843

/-!
# A157011: Triangle T(n,k) read by rows: T(n,k) = (k-1)*T(n-1,k) + (n-k+2)*T(n-1, k-1), with T(n,1)=1, for 1 <= k <= n, n >= 1.

The programs for A157011, there is no canonical definition to state claims against.
-/

/-! ## A157011.P15343221402970379768

`or(A059995(A112360(n)), A112358(n))`
-/

namespace A157011.P15343221402970379768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059995 (A112360 n).toNat) (A112358 n)

end

end A157011.P15343221402970379768

/-! ## A157011.P17851799034812062037

`or(A059995(A112360(n)), A126351(n+1))`
-/

namespace A157011.P17851799034812062037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059995 (A112360 n).toNat) (A126351 (n + 1))

end

end A157011.P17851799034812062037

/-! ## A157011.P6337956684150149873

`or(A126351(n+1), A228347(A076868(n)))`
-/

namespace A157011.P6337956684150149873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126351 (n + 1)) (A228347 (A076868 n).toNat)

end

end A157011.P6337956684150149873

/-! ## A157011.P8050205941308187427

`A032555(A056242(n+1))%A320348(2*n+5)`
-/

namespace A157011.P8050205941308187427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032555 (A056242 (n + 1)).toNat) (A320348 (2 * n + 5))

end

end A157011.P8050205941308187427

/-!
# A157012: Riordan's general Eulerian recursion: T(n,k) = (k+2)*T(n-1, k) + (n-k) * T(n-1, k-1), with T(n,0) = 1, T(n,n) = 0.

The programs for A157012, there is no canonical definition to state claims against.
-/

/-! ## A157012.P6455715285566998572

`A102365(n)+A016389(A022166(n))`
-/

namespace A157012.P6455715285566998572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n + A016389 (A022166 n).toNat

end

end A157012.P6455715285566998572

/-! ## A157012.P10098261041104759019

`A102365(n)+A014034(A157149(n))`
-/

namespace A157012.P10098261041104759019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n + A014034 (A157149 n).toNat

end

end A157012.P10098261041104759019

/-! ## A157012.P17097022466022943949

`A102365(n)+A016389(A176561(n))`
-/

namespace A157012.P17097022466022943949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n + A016389 (A176561 n).toNat

end

end A157012.P17097022466022943949

/-! ## A157012.P13741617925419949943

`A102365(n)-A025466(A001296(n))`
-/

namespace A157012.P13741617925419949943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n - A025466 (A001296 n).toNat

end

end A157012.P13741617925419949943

/-! ## A157012.P10559896656575646933

`A102365(n)-A014707(A022171(n))`
-/

namespace A157012.P10559896656575646933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n - A014707 (A022171 n).toNat

end

end A157012.P10559896656575646933

/-!
# A157014: Expansion of x*(1-x)/(1 - 22*x + x^2).

The programs for A157014, the canonical program `A157014.P8795387441008685881` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157014 has offset 1).

The definition of A157014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-22x+x^2))` (program `A157014.P8795387441008685881`, by `A157014.P8795387441008685881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157014.P8795387441008685881

`ogf((1-x)/(1-22x+x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157014

/-- `ogf((1-x)/(1-22x+x^2))` -/
def P8795387441008685881.Spec : Prop :=
  ∀ n, P8795387441008685881.a n = A157014 (n + 1)

theorem P8795387441008685881.correct : P8795387441008685881.Spec := by
  intro n
  simp only [A157014, Nat.add_sub_cancel]

end A157014

/-! ## A157014.P13309115723144647808

`22*a(n-1)-a(n-2)` with `a(0)=1, a(1)=21`
-/

namespace A157014.P13309115723144647808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  22 * a (n - 1) - a (n - 2)

end

end A157014.P13309115723144647808

namespace A157014

/-- `22*a(n-1)-a(n-2)` -/
def P13309115723144647808.Spec : Prop :=
  ∀ n, P13309115723144647808.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P2234448553347889772

`A041049(2*n)`
-/

namespace A157014.P2234448553347889772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (2 * n)

end

end A157014.P2234448553347889772

namespace A157014

/-- `A041049(2*n)` -/
def P2234448553347889772.Spec : Prop :=
  ∀ n, P2234448553347889772.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P11115671625210355997

`A041219(2*n)`
-/

namespace A157014.P11115671625210355997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 (2 * n)

end

end A157014.P11115671625210355997

namespace A157014

/-- `A041219(2*n)` -/
def P11115671625210355997.Spec : Prop :=
  ∀ n, P11115671625210355997.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P5088425040953756565

`A153317(2*n)`
-/

namespace A157014.P5088425040953756565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153317 (2 * n)

end

end A157014.P5088425040953756565

namespace A157014

/-- `A153317(2*n)` -/
def P5088425040953756565.Spec : Prop :=
  ∀ n, P5088425040953756565.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P8867644378562171815

`floor(A157097(n)/3)`
-/

namespace A157014.P8867644378562171815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157097 n : ℚ) / 3⌋

end

end A157014.P8867644378562171815

namespace A157014

/-- `floor(A157097(n)/3)` -/
def P8867644378562171815.Spec : Prop :=
  ∀ n, P8867644378562171815.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P12150374323081118500

`A133275(n+1)/3`
-/

namespace A157014.P12150374323081118500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133275 (n + 1) : ℚ) / 3

end

end A157014.P12150374323081118500

namespace A157014

/-- `A133275(n+1)/3` -/
def P12150374323081118500.Spec : Prop :=
  ∀ n, P12150374323081118500.a n = (A157014 (n + 1) : ℚ)

end A157014

/-! ## A157014.P7114352099059829557

`2*A254782(n+1)-1`
-/

namespace A157014.P7114352099059829557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254782 (n + 1) - 1

end

end A157014.P7114352099059829557

namespace A157014

/-- `2*A254782(n+1)-1` -/
def P7114352099059829557.Spec : Prop :=
  ∀ n, P7114352099059829557.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P12104375200993749868

`A090730(n)-a(n-1)` with `a(0)=1`
-/

namespace A157014.P12104375200993749868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090730 n - a (n - 1)

end

end A157014.P12104375200993749868

namespace A157014

/-- `A090730(n)-a(n-1)` -/
def P12104375200993749868.Spec : Prop :=
  ∀ n, P12104375200993749868.a n = A157014 (n + 1)

end A157014

/-! ## A157014.P1490752305831702520

`record[A041049(A014681(n))]`
-/

namespace A157014.P1490752305831702520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157014.P1490752305831702520

namespace A157014

/-- `record[A041049(A014681(n))]` -/
def P1490752305831702520.Spec : Prop :=
  ∀ n, P1490752305831702520.a n = A157014 (n + 1)

end A157014

/-!
# A157015: Number of graphs with n vertices having a bipartite connected component.

The programs for A157015, there is no canonical definition to state claims against.
-/

/-! ## A157015.P6674379947568878576

`A000088(n)-A157016(n)`
-/

namespace A157015.P6674379947568878576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A157016 n

end

end A157015.P6674379947568878576

/-! ## A157015.P7129765468326037985

`∑[A002494(n)]-A157016(n)`
-/

namespace A157015.P7129765468326037985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157016 n

end

end A157015.P7129765468326037985

/-! ## A157015.P10814746416347062685

`A361404(∑[n])-A157016(n)`
-/

namespace A157015.P10814746416347062685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j) - A157016 n

end

end A157015.P10814746416347062685

/-! ## A157015.P18120074465141217118

`A000719(n)+A001349(n)-A157016(n)`
-/

namespace A157015.P18120074465141217118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n + (A001349 n - A157016 n)

end

end A157015.P18120074465141217118

/-! ## A157015.P10237927441442809833

`A304311(∑[n])+A000719(n)-A157016(n)`
-/

namespace A157015.P10237927441442809833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) + A000719 n - A157016 n

end

end A157015.P10237927441442809833

/-!
# A157016: Number of graphs with n vertices such that a bipartite connected component doesn't exist.

The programs for A157016, there is no canonical definition to state claims against.
-/

/-! ## A157016.P2530544987839607736

`A000088(n)-A157015(n)`
-/

namespace A157016.P2530544987839607736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A157015 n

end

end A157016.P2530544987839607736

/-! ## A157016.P5357724802697324499

`∑[A002494(n)]-A157015(n)`
-/

namespace A157016.P5357724802697324499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157015 n

end

end A157016.P5357724802697324499

/-! ## A157016.P9758269108002803863

`A000719(n)+A001349(n)-A157015(n)`
-/

namespace A157016.P9758269108002803863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n + (A001349 n - A157015 n)

end

end A157016.P9758269108002803863

/-! ## A157016.P7529616119561305068

`A304311(∑[n])+A000719(n)-A157015(n)`
-/

namespace A157016.P7529616119561305068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) + A000719 n - A157015 n

end

end A157016.P7529616119561305068

/-! ## A157016.P2410667862214692029

`A294217(A000124(n))-A157015(n)`
-/

namespace A157016.P2410667862214692029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294217 (A000124 n).toNat - A157015 n

end

end A157016.P2410667862214692029

/-!
# A157017: Numbers n such that n! can be written as a product of distinct factors in the range from n+1 to 2n, inclusive.

The programs for A157017, there is no canonical definition to state claims against.
-/

/-! ## A157017.P12213610330460044943

`∑[A036582(A152163(n)²)]`
-/

namespace A157017.P12213610330460044943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 (A152163 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157017.P12213610330460044943

/-! ## A157017.P7924161069142252142

`∑[A316828(A027038(n))+1]`
-/

namespace A157017.P7924161069142252142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A027038 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157017.P7924161069142252142

/-! ## A157017.P4206040768394716666

`∑[A083953(∑[A009293(3*n+4)])]`
-/

namespace A157017.P4206040768394716666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009293 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157017.P4206040768394716666

/-! ## A157017.P18353485751289191853

`∑[A316828(A001519(n))+1]`
-/

namespace A157017.P18353485751289191853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A001519 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157017.P18353485751289191853

/-!
# A157018: Triangle T(n,k) read by rows: number of k-lists (ordered k-sets) of disjoint 2-subsets of an n-set, n>1, 0

The programs for A157018, the canonical program `A157018.P3626897528591336089` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157018 has offset 2).

The definition of A157018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157018.P3626897528591336089

`A122197(n+1)!*A100861(A049068(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157018

/-- `A122197(n+1)!*A100861(A049068(n+1))` -/
def P3626897528591336089.Spec : Prop :=
  ∀ n, P3626897528591336089.a n = A157018 (n + 2)

theorem P3626897528591336089.correct : P3626897528591336089.Spec := by
  intro n
  simp only [A157018, Nat.add_sub_cancel]

end A157018

/-! ## A157018.P6081164328480404641

`A100861(A049068(n+1))/A055151(n)*A059344(n)`
-/

namespace A157018.P6081164328480404641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100861 (A049068 (n + 1)).toNat : ℚ) / (A055151 n : ℚ) * (A059344 n : ℚ)

end

end A157018.P6081164328480404641

namespace A157018

/-- `A100861(A049068(n+1))/A055151(n)*A059344(n)` -/
def P6081164328480404641.Spec : Prop :=
  ∀ n, P6081164328480404641.a n = (A157018 (n + 2) : ℚ)

end A157018

/-! ## A157018.P17285435194150353353

`A135610(n+1)/A055151(n)*A100861(n)`
-/

namespace A157018.P17285435194150353353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135610 (n + 1) : ℚ) / (A055151 n : ℚ) * (A100861 n : ℚ)

end

end A157018.P17285435194150353353

namespace A157018

/-- `A135610(n+1)/A055151(n)*A100861(n)` -/
def P17285435194150353353.Spec : Prop :=
  ∀ n, P17285435194150353353.a n = (A157018 (n + 2) : ℚ)

end A157018

/-! ## A157018.P12797172342433562112

`A390552(A032424(n+1))`
-/

namespace A157018.P12797172342433562112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390552 (A032424 (n + 1)).toNat

end

end A157018.P12797172342433562112

namespace A157018

/-- `A390552(A032424(n+1))` -/
def P12797172342433562112.Spec : Prop :=
  ∀ n, P12797172342433562112.a n = A157018 (n + 2)

end A157018

/-! ## A157018.P1409454996012771018

`A135610(A276142(n+1)-A316869(n))`
-/

namespace A157018.P1409454996012771018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135610 (A276142 (n + 1) - A316869 n).toNat

end

end A157018.P1409454996012771018

namespace A157018

/-- `A135610(A276142(n+1)-A316869(n))` -/
def P1409454996012771018.Spec : Prop :=
  ∀ n, P1409454996012771018.a n = A157018 (n + 2)

end A157018

/-!
# A157019: a(n) = Sum_{d|n} binomial(n/d+d-2, d-1).

The programs for A157019, there is no canonical definition to state claims against.
-/

/-! ## A157019.P7679481423210980788

`A081543(n+1)-A366974(n+1)`
-/

namespace A157019.P7679481423210980788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081543 (n + 1) - A366974 (n + 1)

end

end A157019.P7679481423210980788

/-! ## A157019.P2421408845481698890

`2*A157020(n+1)-A338658(n+1)`
-/

namespace A157019.P2421408845481698890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157020 (n + 1) - A338658 (n + 1)

end

end A157019.P2421408845481698890

/-! ## A157019.P17678707192908273325

`2*A340626(n+1)-A338682(n+1)-A366974(n+1)`
-/

namespace A157019.P17678707192908273325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340626 (n + 1) - A338682 (n + 1) - A366974 (n + 1)

end

end A157019.P17678707192908273325

/-! ## A157019.P16258635229682473484

`A004277(A366974(n+1)-A366975(n+1))`
-/

namespace A157019.P16258635229682473484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A366974 (n + 1) - A366975 (n + 1)).toNat

end

end A157019.P16258635229682473484

/-! ## A157019.P9991323312348156257

`A004277(A340626(n+1))-A338682(n+1)-A366974(n+1)`
-/

namespace A157019.P9991323312348156257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340626 (n + 1)).toNat - A338682 (n + 1) - A366974 (n + 1)

end

end A157019.P9991323312348156257

/-!
# A157020: a(n) = Sum_{d|n} d*binomial(n/d+d-2,d-1).

The programs for A157020, there is no canonical definition to state claims against.
-/

/-! ## A157020.P9725091985756311378

`(A338658(n+1)+A157019(n+1))/2`
-/

namespace A157020.P9725091985756311378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338658 (n + 1) + A157019 (n + 1) : ℚ) / 2

end

end A157020.P9725091985756311378

/-! ## A157020.P2805497921057852864

`A014682(A338658(n+1)+A157019(n+1))`
-/

namespace A157020.P2805497921057852864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338658 (n + 1) + A157019 (n + 1)).toNat

end

end A157020.P2805497921057852864

/-! ## A157020.P11953334363947463360

`∑{d}[n+1, A156833(#)]`
-/

namespace A157020.P11953334363947463360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156833 d

end

end A157020.P11953334363947463360

/-! ## A157020.P17309947120712942851

`A038572(A338658(n+1)+A157019(n+1))`
-/

namespace A157020.P17309947120712942851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A338658 (n + 1) + A157019 (n + 1)).toNat

end

end A157020.P17309947120712942851

/-! ## A157020.P12195252516110320357

`A175126(A338658(n+1)-A157019(n+1))+A157019(n+1)`
-/

namespace A157020.P12195252516110320357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A338658 (n + 1) - A157019 (n + 1)).toNat + A157019 (n + 1)

end

end A157020.P12195252516110320357

/-!
# A157021: a(n)=sum{k=0..floor(n/2), C(n,2k)*A000108(floor(k/2))}. Inverse binomial transform is aeration of doubled Catalan numbers.

The programs for A157021, there is no canonical definition to state claims against.
-/

/-! ## A157021.P1502372670399039300

`A141023(A179959(n))+A084638(n)`
-/

namespace A157021.P1502372670399039300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 (A179959 n).toNat + A084638 n

end

end A157021.P1502372670399039300

/-! ## A157021.P5666694540404903496

`A340999(A167499(n))+A084638(n)`
-/

namespace A157021.P5666694540404903496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A167499 n).toNat + 204) + A084638 n

end

end A157021.P5666694540404903496

/-! ## A157021.P18160114863581382683

`A084638(n)+A000120(A185284(3*n))`
-/

namespace A157021.P18160114863581382683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n + A000120 (A185284 (3 * n)).toNat

end

end A157021.P18160114863581382683

/-! ## A157021.P178016197778399430

`A065671(A084638(n))`
-/

namespace A157021.P178016197778399430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065671 (A084638 n).toNat

end

end A157021.P178016197778399430

/-! ## A157021.P11887640072998758157

`A084638(A004895(n+1))`
-/

namespace A157021.P11887640072998758157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 (A004895 (n + 1)).toNat

end

end A157021.P11887640072998758157

/-!
# A157022: Expansion of (1+x+x^2+x^7+x^8+x^9)/(1+x^12).

The programs for A157022, the canonical program `A157022.P2157396232254648728` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157022 has offset 0).

The definition of A157022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^7+x^8+x^9)/(1+x^12))` (program `A157022.P2157396232254648728`, by `A157022.P2157396232254648728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157022.P2157396232254648728

`ogf((1+x+x^2+x^7+x^8+x^9)/(1+x^12))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157022

/-- `ogf((1+x+x^2+x^7+x^8+x^9)/(1+x^12))` -/
def P2157396232254648728.Spec : Prop :=
  ∀ n, P2157396232254648728.a n = A157022 n

theorem P2157396232254648728.correct : P2157396232254648728.Spec := by
  intro n
  simp only [A157022]

end A157022

/-!
# A157023: S(n) - the sum of the areas of the polygons constructed from connecting with a straight line all identical members in the multiplicative table modulo n (finite field).

The programs for A157023, there is no canonical definition to state claims against.
-/

/-! ## A157023.P16021673221318011460

`A187108(A187154(n))-A187106(n+1)`
-/

namespace A157023.P16021673221318011460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187108 (A187154 n).toNat - A187106 (n + 1)

end

end A157023.P16021673221318011460

/-! ## A157023.P11672577412926012697

`A065621(A290760(2*(n+1)))%A290760(n+1)`
-/

namespace A157023.P11672577412926012697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065621 (A290760 (2 * (n + 1))).toNat) (A290760 (n + 1))

end

end A157023.P11672577412926012697

/-!
# A157024: a(0)=1, a(n) = (3n-1)*3n*(3n+1)/2 for n>0.

The programs for A157024, the canonical program `A157024.P18198736445193420066` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157024 has offset 0).

The definition of A157024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157024.P18198736445193420066

`record[3*C(n+2, a(n-2))]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157024

/-- `record[3*C(n+2, a(n-2))]` -/
def P18198736445193420066.Spec : Prop :=
  ∀ n, (P18198736445193420066.a n : ℤ) = A157024 n

theorem P18198736445193420066.correct : P18198736445193420066.Spec := by
  intro n
  simp only [A157024]

end A157024

/-! ## A157024.P481581995785980588

`C(abs(1-3*n)+1, 2)*A016777(n)`
-/

namespace A157024.P481581995785980588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (|1 - (3 * n : ℤ)| + 1).toNat 2 : ℤ) * A016777 n

end

end A157024.P481581995785980588

namespace A157024

/-- `C(abs(1-3*n)+1, 2)*A016777(n)` -/
def P481581995785980588.Spec : Prop :=
  ∀ n, P481581995785980588.a n = A157024 n

end A157024

/-! ## A157024.P3418213467921140922

`A000217(A008486(n))*A066182(A008486(n))`
-/

namespace A157024.P3418213467921140922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008486 n).toNat * A066182 (A008486 n).toNat

end

end A157024.P3418213467921140922

namespace A157024

/-- `A000217(A008486(n))*A066182(A008486(n))` -/
def P3418213467921140922.Spec : Prop :=
  ∀ n, P3418213467921140922.a n = A157024 n

end A157024

/-! ## A157024.P12066623771692999476

`A004188(n)+A004188(A008486(n)-n)`
-/

namespace A157024.P12066623771692999476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n + A004188 (A008486 n - (n : ℤ)).toNat

end

end A157024.P12066623771692999476

namespace A157024

/-- `A004188(n)+A004188(A008486(n)-n)` -/
def P12066623771692999476.Spec : Prop :=
  ∀ n, P12066623771692999476.a n = A157024 n

end A157024

/-! ## A157024.P13496504446655686105

`A135503(3*n)+A000007(n)`
-/

namespace A157024.P13496504446655686105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (3 * n) + A000007 n

end

end A157024.P13496504446655686105

namespace A157024

/-- `A135503(3*n)+A000007(n)` -/
def P13496504446655686105.Spec : Prop :=
  ∀ n, P13496504446655686105.a n = A157024 n

end A157024

/-! ## A157024.P4943089267732116257

`record[gcd(A027480(n), A167315(n+1))]`
-/

namespace A157024.P4943089267732116257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027480 n) (A167315 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157024.P4943089267732116257

namespace A157024

/-- `record[gcd(A027480(n), A167315(n+1))]` -/
def P4943089267732116257.Spec : Prop :=
  ∀ n, (P4943089267732116257.a n : ℤ) = A157024 n

end A157024

/-! ## A157024.P16850082353923330233

`sqrt(A000537(abs(1-n-2*n)))*A016777(n)`
-/

namespace A157024.P16850082353923330233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 |1 - (n : ℤ) - (2 * n : ℤ)|.toNat : ℝ) * (A016777 n : ℝ)

end

end A157024.P16850082353923330233

namespace A157024

/-- `sqrt(A000537(abs(1-n-2*n)))*A016777(n)` -/
def P16850082353923330233.Spec : Prop :=
  ∀ n, P16850082353923330233.a n = (A157024 n : ℝ)

end A157024

/-! ## A157024.P3483411996593560204

`A057587(A033627(Δ[n²]))`
-/

namespace A157024.P3483411996593560204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057587 (A033627 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A157024.P3483411996593560204

namespace A157024

/-- `A057587(A033627(Δ[n²]))` -/
def P3483411996593560204.Spec : Prop :=
  ∀ n, P3483411996593560204.a n = A157024 n

end A157024

/-! ## A157024.P11906986456617687252

`A144677(A122709(n)-1)`
-/

namespace A157024.P11906986456617687252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A122709 n - 1).toNat

end

end A157024.P11906986456617687252

namespace A157024

/-- `A144677(A122709(n)-1)` -/
def P11906986456617687252.Spec : Prop :=
  ∀ n, P11906986456617687252.a n = A157024 n

end A157024

/-! ## A157024.P16749270760961408179

`(2-A112335(A000326(n)))*A016777(n)`
-/

namespace A157024.P16749270760961408179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A112335 (A000326 n).toNat) * A016777 n

end

end A157024.P16749270760961408179

namespace A157024

/-- `(2-A112335(A000326(n)))*A016777(n)` -/
def P16749270760961408179.Spec : Prop :=
  ∀ n, P16749270760961408179.a n = A157024 n

end A157024

/-!
# A157026: Primes p with the property that p^3=n^3+m^3+k^3.

The programs for A157026, there is no canonical definition to state claims against.
-/

/-! ## A157026.P16459765959349456484

`p?[A023041(n+1)]`
-/

namespace A157026.P16459765959349456484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157026.P16459765959349456484

/-! ## A157026.P14335201068268520856

`p?[A023042(n+1)]`
-/

namespace A157026.P14335201068268520856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157026.P14335201068268520856

/-! ## A157026.P11269543298688623487

`record[A006530(A023041(n+3))]`
-/

namespace A157026.P11269543298688623487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023041 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157026.P11269543298688623487

/-! ## A157026.P3904609418809850767

`record[A001414(A023042(n+5))]`
-/

namespace A157026.P3904609418809850767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A023042 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157026.P3904609418809850767

/-! ## A157026.P10273510597844043053

`filter[A023041(n+1), A010051(#)]`
-/

namespace A157026.P10273510597844043053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A157026.P10273510597844043053

/-! ## A157026.P16204256549455577359

`filter[A023041(n+1), A080339(#)]`
-/

namespace A157026.P16204256549455577359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A157026.P16204256549455577359

/-! ## A157026.P11875339971618552623

`filter[A023041(n+1), A080545(#)]`
-/

namespace A157026.P11875339971618552623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A157026.P11875339971618552623

/-! ## A157026.P15369041278416417920

`filter[A023041(n+1), A171387(#)]`
-/

namespace A157026.P15369041278416417920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A157026.P15369041278416417920

/-! ## A157026.P5371955261457198536

`filter[A023041(n+1), A257531(#)]`
-/

namespace A157026.P5371955261457198536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A157026.P5371955261457198536

/-!
# A157027: Denominator of Euler(n, 1/26).

The programs for A157027, there is no canonical definition to state claims against.
-/

/-! ## A157027.P9583189550556751504

`13^n*A166444(xor(1, n)+1)`
-/

namespace A157027.P9583189550556751504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 ^ n : ℤ) * A166444 (Nat.xor 1 n + 1)

end

end A157027.P9583189550556751504

/-! ## A157027.P7861987136375500179

`13^n*A011782(A004442(n))`
-/

namespace A157027.P7861987136375500179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 ^ n : ℤ) * A011782 (A004442 n).toNat

end

end A157027.P7861987136375500179

/-! ## A157027.P6875371322548705906

`lcm(A001022(n), A011782(A004442(n)))`
-/

namespace A157027.P6875371322548705906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001022 n) (A011782 (A004442 n).toNat)

end

end A157027.P6875371322548705906

/-! ## A157027.P3943404086867394290

`A000010(A135520(n))*A001022(n)`
-/

namespace A157027.P3943404086867394290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A135520 n).toNat * A001022 n

end

end A157027.P3943404086867394290

/-! ## A157027.P12049526060663482228

`A001022(n)*A028310(A154383(n))`
-/

namespace A157027.P12049526060663482228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n * A028310 (A154383 n).toNat

end

end A157027.P12049526060663482228

/-!
# A157028: Triangle read by rows, A007318 * A156348.

The programs for A157028, there is no canonical definition to state claims against.
-/

/-! ## A157028.P7940998004997946615

`A173636(A008300(n))+A130321(n)`
-/

namespace A157028.P7940998004997946615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A008300 n).toNat + A130321 n

end

end A157028.P7940998004997946615

/-! ## A157028.P5742234511193087046

`A173636(A022167(n))+A130321(n)`
-/

namespace A157028.P5742234511193087046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A022167 n).toNat + A130321 n

end

end A157028.P5742234511193087046

/-! ## A157028.P299957795651871494

`A184963(A085215(n))+A130321(n)`
-/

namespace A157028.P299957795651871494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 (A085215 n).toNat + A130321 n

end

end A157028.P299957795651871494

/-! ## A157028.P17089048666470863225

`A369241(A045912(n))+A130321(n)`
-/

namespace A157028.P17089048666470863225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369241 (A045912 n).toNat + A130321 n

end

end A157028.P17089048666470863225

/-!
# A157029: A007318 * A157019.

The programs for A157029, there is no canonical definition to state claims against.
-/

/-! ## A157029.P3326652801520648045

`∑[A307240(2*n+1)]%A307227(2*(n+1))`
-/

namespace A157029.P3326652801520648045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307240 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A307227 (2 * (n + 1)))

end

end A157029.P3326652801520648045

/-! ## A157029.P14587616405424669468

`∑[A307240(2*n+1)%A307217(3*n+4)]`
-/

namespace A157029.P14587616405424669468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307240 (2 * n + 1)) (A307217 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157029.P14587616405424669468

/-! ## A157029.P3032702271509469070

`A008611(∑[A194960(A001787(n+2))])`
-/

namespace A157029.P3032702271509469070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A001787 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157029.P3032702271509469070

/-!
# A157030: Triangle read by rows, A156834 * A054521.

The programs for A157030, there is no canonical definition to state claims against.
-/

/-! ## A157030.P2311590877219437287

`A053644(A127372(n+1)^A329070(n))`
-/

namespace A157030.P2311590877219437287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((A127372 (n + 1) : ℚ) ^ (A329070 n : ℤ))).toNat

end

end A157030.P2311590877219437287

/-! ## A157030.P479980561880293906

`A053644(A127372(n+1)^A008304(n+1))`
-/

namespace A157030.P479980561880293906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((A127372 (n + 1) : ℚ) ^ (A008304 (n + 1) : ℤ))).toNat

end

end A157030.P479980561880293906

/-! ## A157030.P16008734846479609507

`A053644(A127372(n+1)^A089072(n+1))`
-/

namespace A157030.P16008734846479609507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((A127372 (n + 1) : ℚ) ^ (A089072 (n + 1) : ℤ))).toNat

end

end A157030.P16008734846479609507

/-! ## A157030.P3215150002167147496

`A053644(A127372(n+1)^A179745(n+1))`
-/

namespace A157030.P3215150002167147496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((A127372 (n + 1) : ℚ) ^ (A179745 (n + 1) : ℤ))).toNat

end

end A157030.P3215150002167147496

/-! ## A157030.P12623343758409412525

`A053644(A127372(n+1)^A180281(n+1))`
-/

namespace A157030.P12623343758409412525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((A127372 (n + 1) : ℚ) ^ (A180281 (n + 1) : ℤ))).toNat

end

end A157030.P12623343758409412525

/-!
# A157032: Let d(i) be the i-th digit of the decimal expansion of phi=1.6180339887498948482045868...,so that d(0) = 1, d(1) = 6, d(2) = 1, etc. Then a(0) = 1, thereafter a(n) = d(d(n)).

The programs for A157032, there is no canonical definition to state claims against.
-/

/-! ## A157032.P13521685528412704043

`A001622(lcm((-1)^n, A104457(n)))`
-/

namespace A157032.P13521685528412704043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (Int.lcm ((-1) ^ n) (A104457 (n + 1)) + 1)

end

end A157032.P13521685528412704043

/-! ## A157032.P2174217052047010784

`A001622(xor(C(3, n²), A001622(n)))`
-/

namespace A157032.P2174217052047010784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.xor (Nat.choose 3 (n ^ 2) : ℤ) (A001622 (n + 1))).toNat + 1)

end

end A157032.P2174217052047010784

/-! ## A157032.P12129610657860279136

`A001622(A001622(n)-C(n, n²))`
-/

namespace A157032.P12129610657860279136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001622 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)).toNat + 1)

end

end A157032.P12129610657860279136

/-! ## A157032.P14272698581602637475

`A001622(A296184(n)-C(2, n+2))`
-/

namespace A157032.P14272698581602637475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A296184 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)).toNat + 1)

end

end A157032.P14272698581602637475

/-! ## A157032.P13414943923609772738

`A001622(xor(C(2, n+2), A296184(n)))`
-/

namespace A157032.P13414943923609772738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.xor (Nat.choose 2 (n + 2) : ℤ) (A296184 (n + 1))).toNat + 1)

end

end A157032.P13414943923609772738

/-! ## A157032.P9593785699037420568

`A001622(A001622(n)+round(cos(4)^n))`
-/

namespace A157032.P9593785699037420568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001622 (n + 1) + SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)).toNat + 1)

end

end A157032.P9593785699037420568

/-! ## A157032.P2902158525212215853

`A001622(A001622(n)+floor(1/(n+1)))`
-/

namespace A157032.P2902158525212215853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001622 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat + 1)

end

end A157032.P2902158525212215853

/-! ## A157032.P4219385256702786821

`A001622(C(n, C(n, n²))*A001622(n))`
-/

namespace A157032.P4219385256702786821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (((Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) * A001622 (n + 1)).toNat + 1)

end

end A157032.P4219385256702786821

/-! ## A157032.P17741914930656969205

`A001622(A001622(n)*A178334(n))`
-/

namespace A157032.P17741914930656969205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001622 (n + 1) * A178334 n).toNat + 1)

end

end A157032.P17741914930656969205

/-! ## A157032.P11078809682427695661

`A001622(lcm(A001622(n), A178334(n)))`
-/

namespace A157032.P11078809682427695661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (Int.lcm (A001622 (n + 1)) (A178334 n) + 1)

end

end A157032.P11078809682427695661

/-! ## A157032.P756008238641592328

`A001622(A001622(n)*A019425(2*n))`
-/

namespace A157032.P756008238641592328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001622 (n + 1) * A019425 (2 * n)).toNat + 1)

end

end A157032.P756008238641592328

/-! ## A157032.P4384864296892001597

`A001622(A014963(4*n+2)*A001622(n))`
-/

namespace A157032.P4384864296892001597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A014963 (4 * n + 2) * A001622 (n + 1)).toNat + 1)

end

end A157032.P4384864296892001597

/-! ## A157032.P4913768810060874351

`A001622(A112316(A003056(n))+A001622(n))`
-/

namespace A157032.P4913768810060874351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A112316 (A003056 n).toNat + A001622 (n + 1)).toNat + 1)

end

end A157032.P4913768810060874351

/-! ## A157032.P13466552979180232503

`A001622(A152140(A000217(n))+A001622(n))`
-/

namespace A157032.P13466552979180232503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A152140 (A000217 n).toNat + A001622 (n + 1)).toNat + 1)

end

end A157032.P13466552979180232503

/-! ## A157032.P2073960325546758119

`A001622(A167301(A008574(n))+A001622(n))`
-/

namespace A157032.P2073960325546758119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A167301 (A008574 n).toNat + A001622 (n + 1)).toNat + 1)

end

end A157032.P2073960325546758119

/-! ## A157032.P7931097177612309473

`A001622(A001622(n)*A048766(A048766(n)))`
-/

namespace A157032.P7931097177612309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001622 (n + 1) * A048766 (A048766 n).toNat).toNat + 1)

end

end A157032.P7931097177612309473

/-! ## A157032.P10073891877791772475

`A001622(A004956(n)-(A026351(n)-A001622(n)))`
-/

namespace A157032.P10073891877791772475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A004956 n - (A026351 n - A001622 (n + 1))).toNat + 1)

end

end A157032.P10073891877791772475

/-! ## A157032.P17706852569357612027

`A001622(A004957(n)-(A026352(n)-A001622(n)))`
-/

namespace A157032.P17706852569357612027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A004957 n - (A026352 n - A001622 (n + 1))).toNat + 1)

end

end A157032.P17706852569357612027

/-! ## A157032.P493980796812739361

`A001622(A001622(n)*A004956(n)/A026351(n))`
-/

namespace A157032.P493980796812739361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway ((A001622 (n + 1) * A004956 n : ℚ) / (A026351 n : ℚ))).toNat + 1)

end

end A157032.P493980796812739361

/-! ## A157032.P13879465890654029798

`A001622(A001622(n)*A004957(n)/A026352(n))`
-/

namespace A157032.P13879465890654029798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway ((A001622 (n + 1) * A004957 n : ℚ) / (A026352 n : ℚ))).toNat + 1)

end

end A157032.P13879465890654029798

/-!
# A157033: Smallest prime with 2^n digits.

The programs for A157033, there is no canonical definition to state claims against.
-/

/-! ## A157033.P1198702683036913513

`A003617(2^n)`
-/

namespace A157033.P1198702683036913513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (2 ^ n)

end

end A157033.P1198702683036913513

/-! ## A157033.P13746795675340662470

`A101592(∑[2^n])`
-/

namespace A157033.P13746795675340662470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157033.P13746795675340662470

/-! ## A157033.P5231760161716293508

`A073914(A006516(n))`
-/

namespace A157033.P5231760161716293508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (A006516 n).toNat

end

end A157033.P5231760161716293508

/-!
# A157034: Shorthand for A157033, the smallest prime with 2^n digits.

The programs for A157034, there is no canonical definition to state claims against.
-/

/-! ## A157034.P6072184880534661406

`A033873(2^n-1)`
-/

namespace A157034.P6072184880534661406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 (2 ^ n - 1)

end

end A157034.P6072184880534661406

/-! ## A157034.P11022950327510226925

`or(1, A033873(A000225(n)))`
-/

namespace A157034.P11022950327510226925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033873 (A000225 n).toNat)

end

end A157034.P11022950327510226925

/-! ## A157034.P7279779185005145483

`or(1, A033873(A255047(n)))`
-/

namespace A157034.P7279779185005145483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033873 (A255047 n).toNat)

end

end A157034.P7279779185005145483

/-! ## A157034.P15662841349131321899

`or(1, A033873(abs(A225883(n))))`
-/

namespace A157034.P15662841349131321899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033873 |A225883 n|.toNat)

end

end A157034.P15662841349131321899

/-! ## A157034.P15412235201166871472

`or(1, A033873(record[A365279(n)]))`
-/

namespace A157034.P15412235201166871472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A157034.P15412235201166871472

/-!
# A157035: 

The programs for A157035, there is no canonical definition to state claims against.
-/

/-! ## A157035.P4721126690198459184

`A003618(2^n)`
-/

namespace A157035.P4721126690198459184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (2 ^ n)

end

end A157035.P4721126690198459184

/-! ## A157035.P10115677513250788279

`A101592(2^(n+1))`
-/

namespace A157035.P10115677513250788279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 ^ (n + 1))

end

end A157035.P10115677513250788279

/-! ## A157035.P9565369628419403135

`A132153(2^(n+1))`
-/

namespace A157035.P9565369628419403135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 ^ (n + 1))

end

end A157035.P9565369628419403135

/-!
# A157036: Shorthand for A157035, the largest prime with 2^n digits.

The programs for A157036, there is no canonical definition to state claims against.
-/

/-! ## A157036.P7208414457075229129

`A033874(2^n)`
-/

namespace A157036.P7208414457075229129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (2 ^ n)

end

end A157036.P7208414457075229129

/-! ## A157036.P16375290874795687411

`or(1, A033874(A000079(n)))`
-/

namespace A157036.P16375290874795687411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033874 (A000079 n).toNat)

end

end A157036.P16375290874795687411

/-! ## A157036.P4416104818679320130

`or(1, A033874(A171559(n)))`
-/

namespace A157036.P4416104818679320130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033874 (A171559 n).toNat)

end

end A157036.P4416104818679320130

/-! ## A157036.P1941522413465352922

`or(1, A033874(A050732(n+1)))`
-/

namespace A157036.P1941522413465352922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033874 (A050732 (n + 1)).toNat)

end

end A157036.P1941522413465352922

/-! ## A157036.P10496540955572928017

`or(1, A033874(A131577(n+1)))`
-/

namespace A157036.P10496540955572928017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033874 (A131577 (n + 1)).toNat)

end

end A157036.P10496540955572928017

/-!
# A157037: Numbers with prime arithmetic derivative A003415.

The programs for A157037, the canonical program `A157037.P548713860299042765` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157037 has offset 1).

The definition of A157037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157037.P548713860299042765

`eq[2, A229341(n+2)]+2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A157037

/-- `eq[2, A229341(n+2)]+2` -/
def P548713860299042765.Spec : Prop :=
  ∀ n, (P548713860299042765.a n : ℤ) = A157037 (n + 1)

theorem P548713860299042765.correct : P548713860299042765.Spec := by
  intro n
  simp only [A157037, Nat.add_sub_cancel]

end A157037

/-! ## A157037.P13297454821626318534

`eq[1, A341995(n)]`
-/

namespace A157037.P13297454821626318534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157037.P13297454821626318534

namespace A157037

/-- `eq[1, A341995(n)]` -/
def P13297454821626318534.Spec : Prop :=
  ∀ n, (P13297454821626318534.a n : ℤ) = A157037 (n + 1)

end A157037

/-! ## A157037.P2663336774003069640

`eq[3, A256750(n)]`
-/

namespace A157037.P2663336774003069640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157037.P2663336774003069640

namespace A157037

/-- `eq[3, A256750(n)]` -/
def P2663336774003069640.Spec : Prop :=
  ∀ n, (P2663336774003069640.a n : ℤ) = A157037 (n + 1)

end A157037

/-! ## A157037.P14742731571025154647

`filter[A328244(n+1), A341995(#)]`
-/

namespace A157037.P14742731571025154647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P14742731571025154647

namespace A157037

/-- `filter[A328244(n+1), A341995(#)]` -/
def P14742731571025154647.Spec : Prop :=
  ∀ n, P14742731571025154647.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P4799129517873004287

`filter[A395044(n+1), A341995(#)]`
-/

namespace A157037.P4799129517873004287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P4799129517873004287

namespace A157037

/-- `filter[A395044(n+1), A341995(#)]` -/
def P4799129517873004287.Spec : Prop :=
  ∀ n, P4799129517873004287.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P14271952552453274107

`filter[A328234(n+1), A341995(#)]`
-/

namespace A157037.P14271952552453274107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P14271952552453274107

namespace A157037

/-- `filter[A328234(n+1), A341995(#)]` -/
def P14271952552453274107.Spec : Prop :=
  ∀ n, P14271952552453274107.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P7902064710163809505

`filter[A000469(n+1), A341995(#)]`
-/

namespace A157037.P7902064710163809505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P7902064710163809505

namespace A157037

/-- `filter[A000469(n+1), A341995(#)]` -/
def P7902064710163809505.Spec : Prop :=
  ∀ n, P7902064710163809505.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P5419217244000045757

`filter[A120944(n+1), A341995(#)]`
-/

namespace A157037.P5419217244000045757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P5419217244000045757

namespace A157037

/-- `filter[A120944(n+1), A341995(#)]` -/
def P5419217244000045757.Spec : Prop :=
  ∀ n, P5419217244000045757.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P13573866087297365302

`filter[A182853(n+1), A341995(#)]`
-/

namespace A157037.P13573866087297365302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P13573866087297365302

namespace A157037

/-- `filter[A182853(n+1), A341995(#)]` -/
def P13573866087297365302.Spec : Prop :=
  ∀ n, P13573866087297365302.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P15831580127966115447

`filter[A388427(n+1), A341995(#)]`
-/

namespace A157037.P15831580127966115447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P15831580127966115447

namespace A157037

/-- `filter[A388427(n+1), A341995(#)]` -/
def P15831580127966115447.Spec : Prop :=
  ∀ n, P15831580127966115447.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P1074147704294285550

`filter[A230766(n+1), A341995(#)]`
-/

namespace A157037.P1074147704294285550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P1074147704294285550

namespace A157037

/-- `filter[A230766(n+1), A341995(#)]` -/
def P1074147704294285550.Spec : Prop :=
  ∀ n, P1074147704294285550.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P9285533915404063613

`filter[A362605(n+1), A341995(#)]`
-/

namespace A157037.P9285533915404063613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P9285533915404063613

namespace A157037

/-- `filter[A362605(n+1), A341995(#)]` -/
def P9285533915404063613.Spec : Prop :=
  ∀ n, P9285533915404063613.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P784737652017829473

`filter[A067582(n+1), A341995(#)]`
-/

namespace A157037.P784737652017829473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P784737652017829473

namespace A157037

/-- `filter[A067582(n+1), A341995(#)]` -/
def P784737652017829473.Spec : Prop :=
  ∀ n, P784737652017829473.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P17253946774710691117

`filter[A080365(n+1), A341995(#)]`
-/

namespace A157037.P17253946774710691117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P17253946774710691117

namespace A157037

/-- `filter[A080365(n+1), A341995(#)]` -/
def P17253946774710691117.Spec : Prop :=
  ∀ n, P17253946774710691117.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P16923354630756944255

`filter[A080364(n+1), A341995(#)]`
-/

namespace A157037.P16923354630756944255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P16923354630756944255

namespace A157037

/-- `filter[A080364(n+1), A341995(#)]` -/
def P16923354630756944255.Spec : Prop :=
  ∀ n, P16923354630756944255.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P17495791240436143617

`filter[A344585(n+1), A341995(#)]`
-/

namespace A157037.P17495791240436143617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P17495791240436143617

namespace A157037

/-- `filter[A344585(n+1), A341995(#)]` -/
def P17495791240436143617.Spec : Prop :=
  ∀ n, P17495791240436143617.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P7309563035957636322

`filter[A365535(n+1), A341995(#)]`
-/

namespace A157037.P7309563035957636322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P7309563035957636322

namespace A157037

/-- `filter[A365535(n+1), A341995(#)]` -/
def P7309563035957636322.Spec : Prop :=
  ∀ n, P7309563035957636322.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P3825783248103680146

`filter[A069169(n+1), A341995(#)]`
-/

namespace A157037.P3825783248103680146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P3825783248103680146

namespace A157037

/-- `filter[A069169(n+1), A341995(#)]` -/
def P3825783248103680146.Spec : Prop :=
  ∀ n, P3825783248103680146.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P3055139922027219864

`filter[A005117(n+1), A341995(#)]`
-/

namespace A157037.P3055139922027219864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P3055139922027219864

namespace A157037

/-- `filter[A005117(n+1), A341995(#)]` -/
def P3055139922027219864.Spec : Prop :=
  ∀ n, P3055139922027219864.a n = A157037 (n + 1)

end A157037

/-! ## A157037.P9190992544724066761

`filter[A212168(n+1), A341995(#)]`
-/

namespace A157037.P9190992544724066761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A157037.P9190992544724066761

namespace A157037

/-- `filter[A212168(n+1), A341995(#)]` -/
def P9190992544724066761.Spec : Prop :=
  ∀ n, P9190992544724066761.a n = A157037 (n + 1)

end A157037

/-!
# A157040: a(n) = 121*n^2 - 2*n.

The programs for A157040, the canonical program `A157040.P2897394198211688590` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157040 has offset 1).

The definition of A157040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)²-2*(n+1)` (program `A157040.P2897394198211688590`, by `A157040.P2897394198211688590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157040.P2897394198211688590

`121*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157040

/-- `121*(n+1)²-2*(n+1)` -/
def P2897394198211688590.Spec : Prop :=
  ∀ n, P2897394198211688590.a n = A157040 (n + 1)

theorem P2897394198211688590.correct : P2897394198211688590.Spec := by
  intro n
  simp only [A157040, Nat.add_sub_cancel]

end A157040

/-! ## A157040.P14803249731535831889

`(n+1)*(A158130(n+1)-1)`
-/

namespace A157040.P14803249731535831889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158130 (n + 1) - 1)

end

end A157040.P14803249731535831889

namespace A157040

/-- `(n+1)*(A158130(n+1)-1)` -/
def P14803249731535831889.Spec : Prop :=
  ∀ n, P14803249731535831889.a n = A157040 (n + 1)

end A157040

/-! ## A157040.P10366976171119578905

`(n+1)*(A158131(n+1)-3)`
-/

namespace A157040.P10366976171119578905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158131 (n + 1) - 3)

end

end A157040.P10366976171119578905

namespace A157040

/-- `(n+1)*(A158131(n+1)-3)` -/
def P10366976171119578905.Spec : Prop :=
  ∀ n, P10366976171119578905.a n = A157040 (n + 1)

end A157040

/-! ## A157040.P5831555380993275561

`(Δ[30*A046092(n)]-1+n)*(n+1)`
-/

namespace A157040.P5831555380993275561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 + (n : ℤ)) * (n + 1 : ℤ)

end

end A157040.P5831555380993275561

namespace A157040

/-- `(Δ[30*A046092(n)]-1+n)*(n+1)` -/
def P5831555380993275561.Spec : Prop :=
  ∀ n, P5831555380993275561.a n = A157040 (n + 1)

end A157040

/-! ## A157040.P13126006030509020140

`(Δ[A332243(n)]-1+n)*(n+1)`
-/

namespace A157040.P13126006030509020140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 + (n : ℤ)) * (n + 1 : ℤ)

end

end A157040.P13126006030509020140

namespace A157040

/-- `(Δ[A332243(n)]-1+n)*(n+1)` -/
def P13126006030509020140.Spec : Prop :=
  ∀ n, P13126006030509020140.a n = A157040 (n + 1)

end A157040

/-! ## A157040.P17064773837199433727

`A181679(2*(n+1))%A181679(n+1)`
-/

namespace A157040.P17064773837199433727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181679 (2 * (n + 1))) (A181679 (n + 1))

end

end A157040.P17064773837199433727

namespace A157040

/-- `A181679(2*(n+1))%A181679(n+1)` -/
def P17064773837199433727.Spec : Prop :=
  ∀ n, P17064773837199433727.a n = A157040 (n + 1)

end A157040

/-! ## A157040.P6831206454336775930

`(n+1)*A017497(A017509(n))`
-/

namespace A157040.P6831206454336775930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017497 (A017509 n).toNat

end

end A157040.P6831206454336775930

namespace A157040

/-- `(n+1)*A017497(A017509(n))` -/
def P6831206454336775930.Spec : Prop :=
  ∀ n, P6831206454336775930.a n = A157040 (n + 1)

end A157040

/-! ## A157040.P10184280213667752724

`(n+1)*A017497(A017497(n)+1)`
-/

namespace A157040.P10184280213667752724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017497 (A017497 n + 1).toNat

end

end A157040.P10184280213667752724

namespace A157040

/-- `(n+1)*A017497(A017497(n)+1)` -/
def P10184280213667752724.Spec : Prop :=
  ∀ n, P10184280213667752724.a n = A157040 (n + 1)

end A157040

/-!
# A157041: Indices of 2's in A090822.

The programs for A157041, there is no canonical definition to state claims against.
-/

/-! ## A157041.P665393464194887955

`eq[2, A090822(n+1)]+1`
-/

namespace A157041.P665393464194887955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A157041.P665393464194887955

/-! ## A157041.P6196813841402295465

`record[n/a(A090822(n))]` with `a(0)=3, a(1)=2`
-/

namespace A157041.P6196813841402295465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n : ℚ) / f1 (A090822 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157041.P6196813841402295465

/-! ## A157041.P12825183141333120564

`A344180(eq[2, A090822(A344180(n))])`
-/

namespace A157041.P12825183141333120564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157041.P12825183141333120564

/-! ## A157041.P12295341374968798769

`A020725(eq[2, A090822(n+1)])`
-/

namespace A157041.P12295341374968798769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157041.P12295341374968798769

/-! ## A157041.P4536084731452196536

`A065475(eq[2, A090822(n+1)])`
-/

namespace A157041.P4536084731452196536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157041.P4536084731452196536

/-! ## A157041.P14848193770896127130

`eq[2, A090822(A028310(n))]`
-/

namespace A157041.P14848193770896127130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157041.P14848193770896127130

/-! ## A157041.P11949114217223389520

`eq[2, A090822(A123108(2*n))]`
-/

namespace A157041.P11949114217223389520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157041.P11949114217223389520

/-! ## A157041.P1243111923154186955

`eq[2, A090822(A233583(n+1))]`
-/

namespace A157041.P1243111923154186955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157041.P1243111923154186955

/-! ## A157041.P16592964952454248840

`A157076(n)+a(n-1)` with `a(0)=3`
-/

namespace A157041.P16592964952454248840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A157076 n + a (n - 1)

end

end A157041.P16592964952454248840

/-! ## A157041.P16961594235399754351

`∑[A157076(A028310(n))]`
-/

namespace A157041.P16961594235399754351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157076 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157041.P16961594235399754351

/-! ## A157041.P439968319527854704

`∑[A157076(A000007(n)+n)]`
-/

namespace A157041.P439968319527854704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157041.P439968319527854704

/-!
# A157042: Primes p such that 6p-7, 6p-5, 6p-1 are all prime.

The programs for A157042, the canonical program `A157042.P479054277220309854` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157042 has offset 1).

The definition of A157042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157042.P6751036460799057823

`∩[A089144(n+1), A089151(n+1)]`
-/

namespace A157042.P6751036460799057823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P6751036460799057823

namespace A157042

/-- `∩[A089144(n+1), A089151(n+1)]` -/
def P6751036460799057823.Spec : Prop :=
  ∀ n, (P6751036460799057823.a n : ℤ) = A157042 (n + 1)

end A157042

/-! ## A157042.P15012914130570545447

`p?[A174359(n+1)+1]`
-/

namespace A157042.P15012914130570545447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174359 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157042.P15012914130570545447

namespace A157042

/-- `p?[A174359(n+1)+1]` -/
def P15012914130570545447.Spec : Prop :=
  ∀ n, P15012914130570545447.a n = A157042 (n + 1)

end A157042

/-! ## A157042.P8754711011000701957

`p?[ceil(A073648(n+1)/6)]`
-/

namespace A157042.P8754711011000701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073648 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157042.P8754711011000701957

namespace A157042

/-- `p?[ceil(A073648(n+1)/6)]` -/
def P8754711011000701957.Spec : Prop :=
  ∀ n, P8754711011000701957.a n = A157042 (n + 1)

end A157042

/-! ## A157042.P15799298226105462317

`p?[ceil(A098412(n+1)/6)]`
-/

namespace A157042.P15799298226105462317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098412 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157042.P15799298226105462317

namespace A157042

/-- `p?[ceil(A098412(n+1)/6)]` -/
def P15799298226105462317.Spec : Prop :=
  ∀ n, P15799298226105462317.a n = A157042 (n + 1)

end A157042

/-! ## A157042.P11613338980024175273

`p?[ceil(A022004(n+1)/6)+1]`
-/

namespace A157042.P11613338980024175273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022004 (n + 1) : ℚ) / 6⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157042.P11613338980024175273

namespace A157042

/-- `p?[ceil(A022004(n+1)/6)+1]` -/
def P11613338980024175273.Spec : Prop :=
  ∀ n, P11613338980024175273.a n = A157042 (n + 1)

end A157042

/-! ## A157042.P2723196769702409294

`p?[ceil(((A163635(n+1)-2)/3-2)/6)+1]`
-/

namespace A157042.P2723196769702409294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A163635 (n + 1) - 2 : ℚ) / 3 - 2) / 6⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157042.P2723196769702409294

namespace A157042

/-- `p?[ceil(((A163635(n+1)-2)/3-2)/6)+1]` -/
def P2723196769702409294.Spec : Prop :=
  ∀ n, P2723196769702409294.a n = A157042 (n + 1)

end A157042

/-! ## A157042.P479054277220309854

`∩[A089151(n+1), A158015(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A157042

/-- `∩[A089151(n+1), A158015(n+1)]` -/
def P479054277220309854.Spec : Prop :=
  ∀ n, (P479054277220309854.a n : ℤ) = A157042 (n + 1)

theorem P479054277220309854.correct : P479054277220309854.Spec := by
  intro n
  simp only [A157042, Nat.add_sub_cancel]

end A157042

/-! ## A157042.P15941649676754760107

`∩[A089144(n+1), A153135(n+1)]`
-/

namespace A157042.P15941649676754760107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P15941649676754760107

namespace A157042

/-- `∩[A089144(n+1), A153135(n+1)]` -/
def P15941649676754760107.Spec : Prop :=
  ∀ n, (P15941649676754760107.a n : ℤ) = A157042 (n + 1)

end A157042

/-! ## A157042.P7279477984231227051

`∩[A089151(n+1), A186243(n+1)]`
-/

namespace A157042.P7279477984231227051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P7279477984231227051

namespace A157042

/-- `∩[A089151(n+1), A186243(n+1)]` -/
def P7279477984231227051.Spec : Prop :=
  ∀ n, (P7279477984231227051.a n : ℤ) = A157042 (n + 1)

end A157042

/-! ## A157042.P208821172291242676

`∩[A153135(n+1), A186243(n+1)]`
-/

namespace A157042.P208821172291242676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P208821172291242676

namespace A157042

/-- `∩[A153135(n+1), A186243(n+1)]` -/
def P208821172291242676.Spec : Prop :=
  ∀ n, (P208821172291242676.a n : ℤ) = A157042 (n + 1)

end A157042

/-! ## A157042.P15863574913906372691

`∩[A079310(n+1), A089144(n+1)]`
-/

namespace A157042.P15863574913906372691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P15863574913906372691

namespace A157042

/-- `∩[A079310(n+1), A089144(n+1)]` -/
def P15863574913906372691.Spec : Prop :=
  ∀ n, (P15863574913906372691.a n : ℤ) = A157042 (n + 1)

end A157042

/-! ## A157042.P17916057761723768527

`∩[A079310(n+1), A158015(n+1)]`
-/

namespace A157042.P17916057761723768527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P17916057761723768527

namespace A157042

/-- `∩[A079310(n+1), A158015(n+1)]` -/
def P17916057761723768527.Spec : Prop :=
  ∀ n, (P17916057761723768527.a n : ℤ) = A157042 (n + 1)

end A157042

/-! ## A157042.P17602544825022536269

`record[A020639(A174359(n+1)+1)]`
-/

namespace A157042.P17602544825022536269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174359 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157042.P17602544825022536269

namespace A157042

/-- `record[A020639(A174359(n+1)+1)]` -/
def P17602544825022536269.Spec : Prop :=
  ∀ n, P17602544825022536269.a n = A157042 (n + 1)

end A157042

/-! ## A157042.P10499759910282536560

`record[A020639(ceil(A073648(n+1)/6))]`
-/

namespace A157042.P10499759910282536560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(A073648 (n + 1) : ℚ) / 6⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157042.P10499759910282536560

namespace A157042

/-- `record[A020639(ceil(A073648(n+1)/6))]` -/
def P10499759910282536560.Spec : Prop :=
  ∀ n, P10499759910282536560.a n = A157042 (n + 1)

end A157042

/-!
# A157043: Primes p such that 6p-7, 6p-5, 6p-3, 6p-1 are not prime.

The programs for A157043, the canonical program `A157043.P17041722274976320511` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157043 has offset 1).

The definition of A157043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157043.P17041722274976320511

`∩[A153319(n+1), A199716(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A157043

/-- `∩[A153319(n+1), A199716(n+1)]` -/
def P17041722274976320511.Spec : Prop :=
  ∀ n, (P17041722274976320511.a n : ℤ) = A157043 (n + 1)

theorem P17041722274976320511.correct : P17041722274976320511.Spec := by
  intro n
  simp only [A157043, Nat.add_sub_cancel]

end A157043

/-!
# A157044: Triangle read by rows: T(n,k) = number of partitions of n into exactly k parts, each <= k.

The programs for A157044, there is no canonical definition to state claims against.
-/

/-! ## A157044.P17108825006478448455

`A157045(∑[char[∑[n]]]²-n)`
-/

namespace A157044.P17108825006478448455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157045 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A157044.P17108825006478448455

/-! ## A157044.P11517016268019797947

`A157045(A038722(n+1))%13`
-/

namespace A157044.P11517016268019797947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157045 (A038722 (n + 1)).toNat) 13

end

end A157044.P11517016268019797947

/-! ## A157044.P8513994482314924916

`A157045(A038722(1-char[1]+n))-char[1]`
-/

namespace A157044.P8513994482314924916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157045 (A038722 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A157044.P8513994482314924916

/-! ## A157044.P6792632495080175851

`∑{d}[A157045(A038722(n+1)), A000010(#)]`
-/

namespace A157044.P6792632495080175851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157045 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A157044.P6792632495080175851

/-! ## A157044.P14337802723802885079

`A157045(A038722(n+1))/A007318(C(3, n²))`
-/

namespace A157044.P14337802723802885079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157045 (A038722 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 (n ^ 2)) : ℚ)

end

end A157044.P14337802723802885079

/-! ## A157044.P1792758064891418462

`A014963(∑[n+1])*A157045(A038722(n+1))`
-/

namespace A157044.P1792758064891418462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A157045 (A038722 (n + 1)).toNat

end

end A157044.P1792758064891418462

/-! ## A157044.P17816948431177637914

`A000108(C(2, n+2))*A157045(A038722(n+1))`
-/

namespace A157044.P17816948431177637914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A157045 (A038722 (n + 1)).toNat

end

end A157044.P17816948431177637914

/-! ## A157044.P2682763914786858545

`A157045(A038722(n+1))^gcd(2, A000040(n+1))`
-/

namespace A157044.P2682763914786858545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157045 (A038722 (n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A157044.P2682763914786858545

/-! ## A157044.P13439383809205952610

`A000108(gcd(n, n+1))*A157045(A038722(n+1))`
-/

namespace A157044.P13439383809205952610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A157045 (A038722 (n + 1)).toNat

end

end A157044.P13439383809205952610

/-! ## A157044.P8894020848541441662

`A000005(abs((-1)^n))*A157045(A038722(n+1))`
-/

namespace A157044.P8894020848541441662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |(-1) ^ n|.toNat * A157045 (A038722 (n + 1)).toNat

end

end A157044.P8894020848541441662

/-!
# A157045: Triangular table: number of partitions of n into exactly n-k parts, each <= n-k. Same as A157044 but with rows reversed.

The programs for A157045, there is no canonical definition to state claims against.
-/

/-! ## A157045.P11325998019102621876

`A157044(gcd(A038722(n+1), A151878(n)))`
-/

namespace A157045.P11325998019102621876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 (Int.gcd (A038722 (n + 1)) (A151878 n))

end

end A157045.P11325998019102621876

/-! ## A157045.P7318821742434526349

`A157044(A002378(n)%A080036(n)+1)`
-/

namespace A157045.P7318821742434526349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 (Int.tmod (A002378 n) (A080036 n) + 1).toNat

end

end A157045.P7318821742434526349

/-! ## A157045.P3844560773913410899

`A157044(A061579(n%A123382(n))+1)`
-/

namespace A157045.P3844560773913410899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 (A061579 (Int.tmod (n : ℤ) (A123382 n)).toNat + 1).toNat

end

end A157045.P3844560773913410899

/-! ## A157045.P10433099212163166599

`A157044(∑[char[∑[n]]]²-n)`
-/

namespace A157045.P10433099212163166599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A157045.P10433099212163166599

/-! ## A157045.P3988215953338241443

`A157044(A038722(n+1))%13`
-/

namespace A157045.P3988215953338241443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157044 (A038722 (n + 1)).toNat) 13

end

end A157045.P3988215953338241443

/-! ## A157045.P10973577730561699310

`A157044(A038722(n+1))^A035214(n)`
-/

namespace A157045.P10973577730561699310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157044 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A157045.P10973577730561699310

/-! ## A157045.P10808400634433583872

`and(A126646(n), A157044(A038722(n+1)))`
-/

namespace A157045.P10808400634433583872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A157044 (A038722 (n + 1)).toNat)

end

end A157045.P10808400634433583872

/-!
# A157048: a(n) = the smallest integer > p(n) that is coprime to (p(n+1)-p(n)), where p(n) is the n-th prime.

The programs for A157048, there is no canonical definition to state claims against.
-/

/-! ## A157048.P4590614468917152763

`A058263(A058263(n+1))+A034699(A036689(n+1))`
-/

namespace A157048.P4590614468917152763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (A058263 (n + 1)).toNat + A034699 (A036689 (n + 1)).toNat

end

end A157048.P4590614468917152763

/-! ## A157048.P6145939098500999568

`A327502(A001248(n+1))+A058263(A058263(n+1))`
-/

namespace A157048.P6145939098500999568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A001248 (n + 1)).toNat + A058263 (A058263 (n + 1)).toNat

end

end A157048.P6145939098500999568

/-! ## A157048.P12651800684425460628

`A058263(A058263(n+1))+p?[A336429(n+1)]`
-/

namespace A157048.P12651800684425460628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (A058263 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157048.P12651800684425460628

/-! ## A157048.P16673332324829129474

`A359238(A035522(n))+A000040(n+1)`
-/

namespace A157048.P16673332324829129474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359238 (A035522 n).toNat + A000040 (n + 1)

end

end A157048.P16673332324829129474

/-! ## A157048.P6124048734882814739

`A363853(A049297(n+1))+A000040(n+1)`
-/

namespace A157048.P6124048734882814739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363853 (A049297 (n + 1)).toNat + A000040 (n + 1)

end

end A157048.P6124048734882814739

/-!
# A157049: a(n) = the largest integer < p(n+1) that is coprime to (p(n+1)-p(n)), where p(n) is the n-th prime.

The programs for A157049, there is no canonical definition to state claims against.
-/

/-! ## A157049.P5973861792606145263

`or(A078444(n+1), A267116(A005246(n)))`
-/

namespace A157049.P5973861792606145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078444 (n + 1)) (A267116 (A005246 n).toNat)

end

end A157049.P5973861792606145263

/-! ## A157049.P5055271475455368645

`A065164(∑[A338484(A123667(n+1))])`
-/

namespace A157049.P5055271475455368645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338484 (A123667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157049.P5055271475455368645

/-! ## A157049.P17342534142328534405

`A276812(n+1)+A000040(A077168(n))`
-/

namespace A157049.P17342534142328534405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276812 (n + 1) + A000040 (A077168 n).toNat

end

end A157049.P17342534142328534405

/-! ## A157049.P17201990021875049940

`A000040(n+2)-A003016(A119266(n+3))`
-/

namespace A157049.P17201990021875049940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A003016 (A119266 (n + 3)).toNat

end

end A157049.P17201990021875049940

/-! ## A157049.P7314873529007933601

`A000040(n+2)-A286281(A181312(3*n+1))`
-/

namespace A157049.P7314873529007933601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A286281 (A181312 (3 * n + 1)).toNat

end

end A157049.P7314873529007933601

/-!
# A157050: Array A(n, k) = (1/2)*(2*n+1)!!*(2*k+1)!!*Integral_{x=-1..1} (1-x^(n+1))*(1-x^(k+1))/(1-x)^2 dx, read by antidiagonals.

The programs for A157050, there is no canonical definition to state claims against.
-/

/-! ## A157050.P9503130527071552161

`A003056(A098358(n)^A003990(n+1))`
-/

namespace A157050.P9503130527071552161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A098358 n : ℚ) ^ (A003990 (n + 1) : ℤ))).toNat

end

end A157050.P9503130527071552161

/-! ## A157050.P6435433649545228485

`A003056(A098358(n)^A059896(n+1))`
-/

namespace A157050.P6435433649545228485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A098358 n : ℚ) ^ (A059896 (n + 1) : ℤ))).toNat

end

end A157050.P6435433649545228485

/-! ## A157050.P5822529503407052044

`A204022(n+1)*A261070(A342341(2*n+3))`
-/

namespace A157050.P5822529503407052044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) * A261070 (A342341 (2 * n + 3)).toNat

end

end A157050.P5822529503407052044

/-!
# A157051: Number of connected unlabeled non-bipartite graphs on n nodes.

The programs for A157051, there is no canonical definition to state claims against.
-/

/-! ## A157051.P10938659607471725504

`A001349(n)-A005142(n)`
-/

namespace A157051.P10938659607471725504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n - A005142 n

end

end A157051.P10938659607471725504

/-! ## A157051.P5660677511462939063

`A304311(∑[n])-A005142(n)`
-/

namespace A157051.P5660677511462939063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) - A005142 n

end

end A157051.P5660677511462939063

/-! ## A157051.P17807908909901759395

`A201922(C(n, 2)+1)-A005142(n)`
-/

namespace A157051.P17807908909901759395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (Nat.choose n 2 + 1) - A005142 n

end

end A157051.P17807908909901759395

/-! ## A157051.P4821166021644739585

`abs(A304311(A000217(n))-A005142(n))`
-/

namespace A157051.P4821166021644739585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304311 (A000217 n).toNat - A005142 n|

end

end A157051.P4821166021644739585

/-! ## A157051.P13329026524524551579

`A201922(A152947(n+1))-A005142(n)`
-/

namespace A157051.P13329026524524551579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A152947 (n + 1)).toNat - A005142 n

end

end A157051.P13329026524524551579

/-!
# A157052: Number of integer sequences of length n+1 with sum zero and sum of absolute values 6.

The programs for A157052, the canonical program `A157052.P10261944934413184806` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157052 has offset 1).

The definition of A157052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157052.P10261944934413184806

`(n+1)*(n+2)*((n+1)^4+2*(n+1)^3+11*(n+1)²+10*(n+1)+12)/36`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157052

/-- `(n+1)*(n+2)*((n+1)^4+2*(n+1)^3+11*(n+1)²+10*(n+1)+12)/36` -/
def P10261944934413184806.Spec : Prop :=
  ∀ n, P10261944934413184806.a n = (A157052 (n + 1) : ℚ)

end A157052

/-! ## A157052.P14946652502395705998

`A198833(n+1)+∑[∑[A008498(n)]]`
-/

namespace A157052.P14946652502395705998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157052.P14946652502395705998

namespace A157052

/-- `A198833(n+1)+∑[∑[A008498(n)]]` -/
def P14946652502395705998.Spec : Prop :=
  ∀ n, P14946652502395705998.a n = A157052 (n + 1)

end A157052

/-! ## A157052.P1359212928021367582

`∑[A260513(n+1)+∑[A008498(n)]]`
-/

namespace A157052.P1359212928021367582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157052.P1359212928021367582

namespace A157052

/-- `∑[A260513(n+1)+∑[A008498(n)]]` -/
def P1359212928021367582.Spec : Prop :=
  ∀ n, P1359212928021367582.a n = A157052 (n + 1)

end A157052

/-! ## A157052.P17588537916234686833

`A008911(n+1)+A000125(n+1)*A000292(n+1)`
-/

namespace A157052.P17588537916234686833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + A000125 (n + 1) * A000292 (n + 1)

end

end A157052.P17588537916234686833

namespace A157052

/-- `A008911(n+1)+A000125(n+1)*A000292(n+1)` -/
def P17588537916234686833.Spec : Prop :=
  ∀ n, P17588537916234686833.a n = A157052 (n + 1)

end A157052

/-! ## A157052.P15933024939723764712

`A033547(n+1)+A003600(n+1)*A283551(n+1)`
-/

namespace A157052.P15933024939723764712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 (n + 1) + A003600 (n + 1) * A283551 (n + 1)

end

end A157052.P15933024939723764712

namespace A157052

/-- `A033547(n+1)+A003600(n+1)*A283551(n+1)` -/
def P15933024939723764712.Spec : Prop :=
  ∀ n, P15933024939723764712.a n = A157052 (n + 1)

end A157052

/-! ## A157052.P871747270482773129

`(n+1)*A000292(n)+A000125(n+1)*A000292(n+1)`
-/

namespace A157052.P871747270482773129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000292 n + A000125 (n + 1) * A000292 (n + 1)

end

end A157052.P871747270482773129

namespace A157052

/-- `(n+1)*A000292(n)+A000125(n+1)*A000292(n+1)` -/
def P871747270482773129.Spec : Prop :=
  ∀ n, P871747270482773129.a n = A157052 (n + 1)

end A157052

/-! ## A157052.P5642282525235547349

`A004006(n+1)*A004006(n+2)-A000217(n+1)`
-/

namespace A157052.P5642282525235547349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 1) * A004006 (n + 2) - A000217 (n + 1)

end

end A157052.P5642282525235547349

namespace A157052

/-- `A004006(n+1)*A004006(n+2)-A000217(n+1)` -/
def P5642282525235547349.Spec : Prop :=
  ∀ n, P5642282525235547349.a n = A157052 (n + 1)

end A157052

/-! ## A157052.P6656473090137160843

`A103881(∑[n+3]+7)`
-/

namespace A157052.P6656473090137160843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A157052.P6656473090137160843

namespace A157052

/-- `A103881(∑[n+3]+7)` -/
def P6656473090137160843.Spec : Prop :=
  ∀ n, P6656473090137160843.a n = A157052 (n + 1)

end A157052

/-!
# A157053: Number of integer sequences of length n+1 with sum zero and sum of absolute values 8.

The programs for A157053, there is no canonical definition to state claims against.
-/

/-! ## A157053.P4794261973576554773

`A103881(A167499(n+3))`
-/

namespace A157053.P4794261973576554773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167499 (n + 3)).toNat

end

end A157053.P4794261973576554773

/-! ## A157053.P6717716826747672407

`A103881(A145018(n+5)+1)`
-/

namespace A157053.P6717716826747672407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A145018 (n + 5) + 1).toNat

end

end A157053.P6717716826747672407

/-! ## A157053.P10296265172928080372

`A103881(A133263(n+4)+3)`
-/

namespace A157053.P10296265172928080372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 4) + 3).toNat

end

end A157053.P10296265172928080372

/-! ## A157053.P12897962046668683094

`A103881(A000217(n+4)+5)`
-/

namespace A157053.P12897962046668683094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 4) + 5).toNat

end

end A157053.P12897962046668683094

/-! ## A157053.P9622475665487275500

`A103881(A052905(n+1)+10)`
-/

namespace A157053.P9622475665487275500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A052905 (n + 1) + 10).toNat

end

end A157053.P9622475665487275500

/-! ## A157053.P4127501769735998114

`A103881(A000096(n+2)+n+10)`
-/

namespace A157053.P4127501769735998114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000096 (n + 2) + (n + 10 : ℤ)).toNat

end

end A157053.P4127501769735998114

/-!
# A157054: Number of integer sequences of length n+1 with sum zero and sum of absolute values 10.

The programs for A157054, there is no canonical definition to state claims against.
-/

/-! ## A157054.P15326958426719132721

`A103881(A056115(n)+21)`
-/

namespace A157054.P15326958426719132721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056115 n + 21).toNat

end

end A157054.P15326958426719132721

/-! ## A157054.P1268016079685549544

`A103881(A000124(n+5)+5)`
-/

namespace A157054.P1268016079685549544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 5) + 5).toNat

end

end A157054.P1268016079685549544

/-! ## A157054.P1800491809237887734

`A103881(A000217(n+5)+6)`
-/

namespace A157054.P1800491809237887734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 5) + 6).toNat

end

end A157054.P1800491809237887734

/-! ## A157054.P7227465628608020377

`A103881(A000096(n+5)-(n-1))`
-/

namespace A157054.P7227465628608020377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A157054.P7227465628608020377

/-! ## A157054.P7350736154165279497

`A103881((n+5)²-A055999(n+1))`
-/

namespace A157054.P7350736154165279497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (((n + 5) ^ 2 : ℤ) - A055999 (n + 1)).toNat

end

end A157054.P7350736154165279497

/-! ## A157054.P3370778203030262576

`A103881(A103517(n+7)+A000096(n+2))`
-/

namespace A157054.P3370778203030262576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A103517 (n + 7) + A000096 (n + 2)).toNat

end

end A157054.P3370778203030262576

/-!
# A157055: Number of integer sequences of length n+1 with sum zero and sum of absolute values 12.

The programs for A157055, there is no canonical definition to state claims against.
-/

/-! ## A157055.P14110743379954576274

`A103881(A167499(n+5)+2)`
-/

namespace A157055.P14110743379954576274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167499 (n + 5) + 2).toNat

end

end A157055.P14110743379954576274

/-! ## A157055.P1639162520989452110

`A103881(A145018(n+7)+3)`
-/

namespace A157055.P1639162520989452110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A145018 (n + 7) + 3).toNat

end

end A157055.P1639162520989452110

/-! ## A157055.P12319521033539811247

`A103881(A000124(n+6)+6)`
-/

namespace A157055.P12319521033539811247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 6) + 6).toNat

end

end A157055.P12319521033539811247

/-! ## A157055.P12037483068310722835

`A103881(A000096(n+5)+8)`
-/

namespace A157055.P12037483068310722835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000096 (n + 5) + 8).toNat

end

end A157055.P12037483068310722835

/-! ## A157055.P15329875187394189059

`A103881(A000217(n+6)+7)`
-/

namespace A157055.P15329875187394189059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 6) + 7).toNat

end

end A157055.P15329875187394189059

/-! ## A157055.P6203552477032513519

`A103881(A173036(n+6)-6)`
-/

namespace A157055.P6203552477032513519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A173036 (n + 6) - 6).toNat

end

end A157055.P6203552477032513519

/-! ## A157055.P1937943788976775399

`A103881(A133263(n+7)+A024000(n+3))`
-/

namespace A157055.P1937943788976775399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 7) + A024000 (n + 3)).toNat

end

end A157055.P1937943788976775399

/-! ## A157055.P13218831622742625989

`A103881(A133263(n+10)-A016813(n+7))`
-/

namespace A157055.P13218831622742625989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 10) - A016813 (n + 7)).toNat

end

end A157055.P13218831622742625989

/-!
# A157056: Number of integer sequences of length n+1 with sum zero and sum of absolute values 14.

The programs for A157056, there is no canonical definition to state claims against.
-/

/-! ## A157056.P2677664506089438681

`A103881(A167499(n+6)+3)`
-/

namespace A157056.P2677664506089438681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167499 (n + 6) + 3).toNat

end

end A157056.P2677664506089438681

/-! ## A157056.P11406520456888832083

`A103881(A167614(n+6)+5)`
-/

namespace A157056.P11406520456888832083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167614 (n + 6) + 5).toNat

end

end A157056.P11406520456888832083

/-! ## A157056.P5058785713751479373

`A103881(A000217(n+7)+8)`
-/

namespace A157056.P5058785713751479373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 7) + 8).toNat

end

end A157056.P5058785713751479373

/-! ## A157056.P10849689059236396265

`A103881(6*(n+6)+A000096(n))`
-/

namespace A157056.P10849689059236396265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 ((6 * (n + 6) : ℤ) + A000096 n).toNat

end

end A157056.P10849689059236396265

/-! ## A157056.P16340564102494825059

`A103881(A133263(n+8)+A024000(n+3))`
-/

namespace A157056.P16340564102494825059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 8) + A024000 (n + 3)).toNat

end

end A157056.P16340564102494825059

/-! ## A157056.P9185670004304315637

`A103881(A034856(n+8)-A005408(n+3))`
-/

namespace A157056.P9185670004304315637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A034856 (n + 8) - A005408 (n + 3)).toNat

end

end A157056.P9185670004304315637

/-! ## A157056.P13436607645101421954

`A103881(A152950(n+6)+A005843(n+9))`
-/

namespace A157056.P13436607645101421954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A152950 (n + 6) + A005843 (n + 9)).toNat

end

end A157056.P13436607645101421954

/-!
# A157057: Number of integer sequences of length n+1 with sum zero and sum of absolute values 16.

The programs for A157057, there is no canonical definition to state claims against.
-/

/-! ## A157057.P9365588927106086446

`A103881(A145018(n+9)+5)`
-/

namespace A157057.P9365588927106086446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A145018 (n + 9) + 5).toNat

end

end A157057.P9365588927106086446

/-! ## A157057.P3788423482547834139

`A103881(A000217(n+8)+9)`
-/

namespace A157057.P3788423482547834139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 8) + 9).toNat

end

end A157057.P3788423482547834139

/-! ## A157057.P9391832398885911610

`A103881(A161680(n+9)+9)`
-/

namespace A157057.P9391832398885911610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A161680 (n + 9) + 9).toNat

end

end A157057.P9391832398885911610

/-! ## A157057.P15723054835215650110

`A103881(A167499(n+8)-(n+5))`
-/

namespace A157057.P15723054835215650110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167499 (n + 8) - (n + 5 : ℤ)).toNat

end

end A157057.P15723054835215650110

/-! ## A157057.P5281334212813086084

`A103881(A133263(n+4)+A016813(n+8))`
-/

namespace A157057.P5281334212813086084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 4) + A016813 (n + 8)).toNat

end

end A157057.P5281334212813086084

/-! ## A157057.P10438288588185277396

`A103881(A034856(n+9)-A005843(n+4))`
-/

namespace A157057.P10438288588185277396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A034856 (n + 9) - A005843 (n + 4)).toNat

end

end A157057.P10438288588185277396

/-!
# A157058: Number of integer sequences of length n+1 with sum zero and sum of absolute values 18.

The programs for A157058, there is no canonical definition to state claims against.
-/

/-! ## A157058.P1704734741407597748

`A103881(A167499(n+8)+5)`
-/

namespace A157058.P1704734741407597748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167499 (n + 8) + 5).toNat

end

end A157058.P1704734741407597748

/-! ## A157058.P12705120612092160724

`A103881(A167614(n+8)+7)`
-/

namespace A157058.P12705120612092160724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A167614 (n + 8) + 7).toNat

end

end A157058.P12705120612092160724

/-! ## A157058.P15323959009343098512

`A103881(A000217(n+9)+10)`
-/

namespace A157058.P15323959009343098512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 9) + 10).toNat

end

end A157058.P15323959009343098512

/-! ## A157058.P12119082754729567118

`A103881(A161680(n+10)+10)`
-/

namespace A157058.P12119082754729567118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A161680 (n + 10) + 10).toNat

end

end A157058.P12119082754729567118

/-! ## A157058.P5763260244046351311

`A103881(A004766(n+10)+A000096(n+4))`
-/

namespace A157058.P5763260244046351311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A004766 (n + 10) + A000096 (n + 4)).toNat

end

end A157058.P5763260244046351311

/-!
# A157059: Number of integer sequences of length n+1 with sum zero and sum of absolute values 20.

The programs for A157059, there is no canonical definition to state claims against.
-/

/-! ## A157059.P11944393365002472998

`A103881(A133263(n+10)+9)`
-/

namespace A157059.P11944393365002472998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 10) + 9).toNat

end

end A157059.P11944393365002472998

/-! ## A157059.P7659258766795203467

`A103881(A000096(n+9)+12)`
-/

namespace A157059.P7659258766795203467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000096 (n + 9) + 12).toNat

end

end A157059.P7659258766795203467

/-! ## A157059.P13300497975778854454

`A103881(A000217(n+10)+11)`
-/

namespace A157059.P13300497975778854454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 10) + 11).toNat

end

end A157059.P13300497975778854454

/-! ## A157059.P6840648073857639517

`A103881(A161680(n+11)+11)`
-/

namespace A157059.P6840648073857639517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A161680 (n + 11) + 11).toNat

end

end A157059.P6840648073857639517

/-! ## A157059.P12498781494112712303

`A103881(A056121(n+7)-A004767(n+2))`
-/

namespace A157059.P12498781494112712303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056121 (n + 7) - A004767 (n + 2)).toNat

end

end A157059.P12498781494112712303

/-!
# A157060: Number of integer sequences of length n+1 with sum zero and sum of absolute values 22.

The programs for A157060, there is no canonical definition to state claims against.
-/

/-! ## A157060.P12576667863439585278

`A103881(eq[23, A066657(n)])`
-/

namespace A157060.P12576667863439585278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157060.P12576667863439585278

/-! ## A157060.P13561957718166475000

`A103881(A000217(n+11)+12)`
-/

namespace A157060.P13561957718166475000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 11) + 12).toNat

end

end A157060.P13561957718166475000

/-! ## A157060.P4073360438048958877

`A103881(A161680(n+12)+12)`
-/

namespace A157060.P4073360438048958877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A161680 (n + 12) + 12).toNat

end

end A157060.P4073360438048958877

/-! ## A157060.P2328680254997372740

`A103881(eq[13, A131818(n+1)])`
-/

namespace A157060.P2328680254997372740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157060.P2328680254997372740

/-! ## A157060.P7637111886933674469

`A103881(eq[13, A123229(n+1)])`
-/

namespace A157060.P7637111886933674469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157060.P7637111886933674469

/-!
# A157061: Number of integer sequences of length n+1 with sum zero and sum of absolute values 24.

The programs for A157061, there is no canonical definition to state claims against.
-/

/-! ## A157061.P10330718066155109223

`A103881(A000217(n+12)+13)`
-/

namespace A157061.P10330718066155109223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 12) + 13).toNat

end

end A157061.P10330718066155109223

/-! ## A157061.P12063996856650182524

`A103881(eq[14, A131818(n+1)])`
-/

namespace A157061.P12063996856650182524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157061.P12063996856650182524

/-! ## A157061.P5112126014343707123

`A103881(A161680(n+14)-n)`
-/

namespace A157061.P5112126014343707123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A161680 (n + 14) - (n : ℤ)).toNat

end

end A157061.P5112126014343707123

/-! ## A157061.P8899030986562256243

`A103881(A000096(n+12)-n+1)`
-/

namespace A157061.P8899030986562256243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000096 (n + 12) - (n : ℤ) + 1).toNat

end

end A157061.P8899030986562256243

/-! ## A157061.P5236984559854238783

`A103881(A133263(n+8)+A016813(n+13))`
-/

namespace A157061.P5236984559854238783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A133263 (n + 8) + A016813 (n + 13)).toNat

end

end A157061.P5236984559854238783

/-!
# A157062: Number of integer sequences of length n+1 with sum zero and sum of absolute values 26.

The programs for A157062, there is no canonical definition to state claims against.
-/

/-! ## A157062.P4946890095292588259

`A103881(eq[31, A066657(n)])`
-/

namespace A157062.P4946890095292588259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157062.P4946890095292588259

/-! ## A157062.P9842189727067973121

`A103881(eq[15, A131818(n+1)])`
-/

namespace A157062.P9842189727067973121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157062.P9842189727067973121

/-! ## A157062.P16918210119298000998

`A103881(A000217(n+14)-n)`
-/

namespace A157062.P16918210119298000998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 14) - (n : ℤ)).toNat

end

end A157062.P16918210119298000998

/-! ## A157062.P465574573725126837

`A103881(A161680(n+15)-n)`
-/

namespace A157062.P465574573725126837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A161680 (n + 15) - (n : ℤ)).toNat

end

end A157062.P465574573725126837

/-! ## A157062.P11085587561278194977

`A103881(A056115(n+10)-A005843(n))`
-/

namespace A157062.P11085587561278194977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A056115 (n + 10) - A005843 n).toNat

end

end A157062.P11085587561278194977

/-!
# A157063: Number of integer sequences of length n+1 with sum zero and sum of absolute values 28.

The programs for A157063, there is no canonical definition to state claims against.
-/

/-! ## A157063.P4977797113898233013

`A103881(eq[15, A130270(n+1)])`
-/

namespace A157063.P4977797113898233013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157063.P4977797113898233013

/-! ## A157063.P1327658078063106103

`A103881(eq[16, A131818(n+1)])`
-/

namespace A157063.P1327658078063106103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157063.P1327658078063106103

/-! ## A157063.P18196835622829569490

`A103881(A000217(n+15)-n)`
-/

namespace A157063.P18196835622829569490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (n + 15) - (n : ℤ)).toNat

end

end A157063.P18196835622829569490

/-! ## A157063.P13141638072721769294

`A103881(eq[15, A256910(n)])`
-/

namespace A157063.P13141638072721769294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157063.P13141638072721769294

/-!
# A157064: Number of integer sequences of length n+1 with sum zero and sum of absolute values 30.

The programs for A157064, there is no canonical definition to state claims against.
-/

/-! ## A157064.P9721726576276003550

`A103881(eq[41, A066657(n)])`
-/

namespace A157064.P9721726576276003550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157064.P9721726576276003550

/-! ## A157064.P1937775444735042348

`A103881(eq[17, A131818(n+1)])`
-/

namespace A157064.P1937775444735042348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157064.P1937775444735042348

/-! ## A157064.P4915627337574901549

`A103881(eq[17, A123229(n+1)])`
-/

namespace A157064.P4915627337574901549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157064.P4915627337574901549

/-!
# A157065: Number of integer sequences of length n+1 with sum zero and sum of absolute values 32.

The programs for A157065, there is no canonical definition to state claims against.
-/

/-! ## A157065.P10345852105503819546

`A103881(eq[43, A066657(n)])`
-/

namespace A157065.P10345852105503819546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157065.P10345852105503819546

/-! ## A157065.P12554154881374716111

`A103881(eq[18, A131818(n+1)])`
-/

namespace A157065.P12554154881374716111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157065.P12554154881374716111

/-!
# A157066: Number of integer sequences of length n+1 with sum zero and sum of absolute values 34.

The programs for A157066, there is no canonical definition to state claims against.
-/

/-! ## A157066.P4417825098857744387

`A103881(eq[19, A131818(n+1)])`
-/

namespace A157066.P4417825098857744387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157066.P4417825098857744387

/-! ## A157066.P16492594850553202388

`A103881(eq[19, A123229(n+1)])`
-/

namespace A157066.P16492594850553202388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157066.P16492594850553202388

/-!
# A157067: Number of integer sequences of length n+1 with sum zero and sum of absolute values 36.

The programs for A157067, there is no canonical definition to state claims against.
-/

/-! ## A157067.P11413717944134693527

`A103881(eq[20, A131818(n+1)])`
-/

namespace A157067.P11413717944134693527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157067.P11413717944134693527

/-!
# A157069: Number of integer sequences of length n+1 with sum zero and sum of absolute values 40.

The programs for A157069, there is no canonical definition to state claims against.
-/

/-! ## A157069.P845977102409723350

`A103881(eq[22, A131818(n+1)])`
-/

namespace A157069.P845977102409723350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157069.P845977102409723350

/-!
# A157070: Number of integer sequences of length n+1 with sum zero and sum of absolute values 42.

The programs for A157070, there is no canonical definition to state claims against.
-/

/-! ## A157070.P14114250253559655712

`A103881(eq[23, A131818(n+1)])`
-/

namespace A157070.P14114250253559655712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157070.P14114250253559655712

/-!
# A157072: Number of integer sequences of length n+1 with sum zero and sum of absolute values 46.

The programs for A157072, there is no canonical definition to state claims against.
-/

/-! ## A157072.P2288767187241424441

`A103881(eq[25, A131818(n+1)])`
-/

namespace A157072.P2288767187241424441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157072.P2288767187241424441

/-!
# A157075: Positive integers n for which the Diophantine equation x^2 + y^2 = n^2/2 has relatively prime solutions.

The programs for A157075, the canonical program `A157075.P6307101692987451821` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157075 has offset 1).

The definition of A157075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157075.P6307101692987451821

`2*A008846(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157075

/-- `2*A008846(n+1)` -/
def P6307101692987451821.Spec : Prop :=
  ∀ n, P6307101692987451821.a n = A157075 (n + 1)

theorem P6307101692987451821.correct : P6307101692987451821.Spec := by
  intro n
  simp only [A157075, Nat.add_sub_cancel]

end A157075

/-! ## A157075.P9064822591996225711

`2*sqrt(A360280(n+1))`
-/

namespace A157075.P9064822591996225711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A360280 (n + 1) : ℝ)

end

end A157075.P9064822591996225711

namespace A157075

/-- `2*sqrt(A360280(n+1))` -/
def P9064822591996225711.Spec : Prop :=
  ∀ n, P9064822591996225711.a n = (A157075 (n + 1) : ℝ)

end A157075

/-! ## A157075.P7616274270279662194

`2*(4*A094178(n+1)+1)`
-/

namespace A157075.P7616274270279662194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A094178 (n + 1) + 1)

end

end A157075.P7616274270279662194

namespace A157075

/-- `2*(4*A094178(n+1)+1)` -/
def P7616274270279662194.Spec : Prop :=
  ∀ n, P7616274270279662194.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P8627837758569092286

`lcm(2, A008846(A000027(n+1)))`
-/

namespace A157075.P8627837758569092286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008846 (A000027 (n + 1)).toNat)

end

end A157075.P8627837758569092286

namespace A157075

/-- `lcm(2, A008846(A000027(n+1)))` -/
def P8627837758569092286.Spec : Prop :=
  ∀ n, (P8627837758569092286.a n : ℤ) = A157075 (n + 1)

end A157075

/-! ## A157075.P9500237091093497723

`A008846(n+1)+sqrt(A360280(n+1))`
-/

namespace A157075.P9500237091093497723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008846 (n + 1) : ℝ) + Real.sqrt (A360280 (n + 1) : ℝ)

end

end A157075.P9500237091093497723

namespace A157075

/-- `A008846(n+1)+sqrt(A360280(n+1))` -/
def P9500237091093497723.Spec : Prop :=
  ∀ n, P9500237091093497723.a n = (A157075 (n + 1) : ℝ)

end A157075

/-! ## A157075.P14959390474866679245

`A008846(A000027(n+1))+A008846(n+1)`
-/

namespace A157075.P14959390474866679245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (A000027 (n + 1)).toNat + A008846 (n + 1)

end

end A157075.P14959390474866679245

namespace A157075

/-- `A008846(A000027(n+1))+A008846(n+1)` -/
def P14959390474866679245.Spec : Prop :=
  ∀ n, P14959390474866679245.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P11940866819955199095

`A008846(n+1)+A008846(n+2)-A141614(n+1)`
-/

namespace A157075.P11940866819955199095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) + (A008846 (n + 2) - A141614 (n + 1))

end

end A157075.P11940866819955199095

namespace A157075

/-- `A008846(n+1)+A008846(n+2)-A141614(n+1)` -/
def P11940866819955199095.Spec : Prop :=
  ∀ n, P11940866819955199095.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P12815587208524960570

`2*A004613(n+2)`
-/

namespace A157075.P12815587208524960570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004613 (n + 2)

end

end A157075.P12815587208524960570

namespace A157075

/-- `2*A004613(n+2)` -/
def P12815587208524960570.Spec : Prop :=
  ∀ n, P12815587208524960570.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P14115465799162577903

`A008846(n+1)+A004613(n+2)`
-/

namespace A157075.P14115465799162577903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) + A004613 (n + 2)

end

end A157075.P14115465799162577903

namespace A157075

/-- `A008846(n+1)+A004613(n+2)` -/
def P14115465799162577903.Spec : Prop :=
  ∀ n, P14115465799162577903.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P11928487998407668065

`∩[2*A020668(n+1), A174051(n+1)]`
-/

namespace A157075.P11928487998407668065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157075.P11928487998407668065

namespace A157075

/-- `∩[2*A020668(n+1), A174051(n+1)]` -/
def P11928487998407668065.Spec : Prop :=
  ∀ n, (P11928487998407668065.a n : ℤ) = A157075 (n + 1)

end A157075

/-! ## A157075.P11614654128273225277

`∩[2*n, A174051(n+1)]`
-/

namespace A157075.P11614654128273225277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157075.P11614654128273225277

namespace A157075

/-- `∩[2*n, A174051(n+1)]` -/
def P11614654128273225277.Spec : Prop :=
  ∀ n, (P11614654128273225277.a n : ℤ) = A157075 (n + 1)

end A157075

/-! ## A157075.P18029775947419964869

`filter[A174051(n+1), A120325(#)]`
-/

namespace A157075.P18029775947419964869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A157075.P18029775947419964869

namespace A157075

/-- `filter[A174051(n+1), A120325(#)]` -/
def P18029775947419964869.Spec : Prop :=
  ∀ n, P18029775947419964869.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P9561925603395945960

`filter[A174051(n+1), A182582(#)]`
-/

namespace A157075.P9561925603395945960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A157075.P9561925603395945960

namespace A157075

/-- `filter[A174051(n+1), A182582(#)]` -/
def P9561925603395945960.Spec : Prop :=
  ∀ n, P9561925603395945960.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P4633453177962592918

`filter[A174051(n+1), A373260(#)]`
-/

namespace A157075.P4633453177962592918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A157075.P4633453177962592918

namespace A157075

/-- `filter[A174051(n+1), A373260(#)]` -/
def P4633453177962592918.Spec : Prop :=
  ∀ n, P4633453177962592918.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P13924402927474686992

`2*A004766(A094178(n+1))`
-/

namespace A157075.P13924402927474686992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004766 (A094178 (n + 1)).toNat

end

end A157075.P13924402927474686992

namespace A157075

/-- `2*A004766(A094178(n+1))` -/
def P13924402927474686992.Spec : Prop :=
  ∀ n, P13924402927474686992.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P4282487479356536335

`A016825(2*A094178(n+1))`
-/

namespace A157075.P4282487479356536335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * A094178 (n + 1)).toNat

end

end A157075.P4282487479356536335

namespace A157075

/-- `A016825(2*A094178(n+1))` -/
def P4282487479356536335.Spec : Prop :=
  ∀ n, P4282487479356536335.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P112486030392938923

`A017089(A094178(n+1))`
-/

namespace A157075.P112486030392938923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A094178 (n + 1)).toNat

end

end A157075.P112486030392938923

namespace A157075

/-- `A017089(A094178(n+1))` -/
def P112486030392938923.Spec : Prop :=
  ∀ n, P112486030392938923.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P2795225039362615589

`2*A004766(lt[1, A031358(n)])`
-/

namespace A157075.P2795225039362615589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A157075.P2795225039362615589

namespace A157075

/-- `2*A004766(lt[1, A031358(n)])` -/
def P2795225039362615589.Spec : Prop :=
  ∀ n, P2795225039362615589.a n = A157075 (n + 1)

end A157075

/-! ## A157075.P5146744994081549965

`∩[A174051(n+1), A017089(n)]`
-/

namespace A157075.P5146744994081549965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157075.P5146744994081549965

namespace A157075

/-- `∩[A174051(n+1), A017089(n)]` -/
def P5146744994081549965.Spec : Prop :=
  ∀ n, (P5146744994081549965.a n : ℤ) = A157075 (n + 1)

end A157075

/-!
# A157076: First differences of A157041.

The programs for A157076, there is no canonical definition to state claims against.
-/

/-! ## A157076.P8961326717803447472

`Δ[A157041(n+1)]`
-/

namespace A157076.P8961326717803447472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157076.P8961326717803447472

/-! ## A157076.P14840728708344260529

`Δ[eq[0, A217206(n+1)]]`
-/

namespace A157076.P14840728708344260529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217206 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157076.P14840728708344260529

/-! ## A157076.P13512525117155161351

`Δ[eq[1, A093955(n+1)]]`
-/

namespace A157076.P13512525117155161351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157076.P13512525117155161351

/-! ## A157076.P9231620001011447272

`Δ[eq[2, A090822(n+1)]]`
-/

namespace A157076.P9231620001011447272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157076.P9231620001011447272

/-! ## A157076.P3875568506117404561

`A157041(n+2)-A157041(n+1)`
-/

namespace A157076.P3875568506117404561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157041 (n + 2) - A157041 (n + 1)

end

end A157076.P3875568506117404561

/-!
# A157077: Triangle read by rows, coefficients of the Legendre polynomials P(n, x) times 2^n: T(n, k) = 2^n * [x^k] P(n, x), n >= 0, 0 <= k <= n.

The programs for A157077, there is no canonical definition to state claims against.
-/

/-! ## A157077.P3725022113068438385

`A001405(A051162(n))*A049310(n)`
-/

namespace A157077.P3725022113068438385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A051162 n).toNat * A049310 n

end

end A157077.P3725022113068438385

/-! ## A157077.P16036628037850933421

`A001316(A003056(n))*A100258(n)`
-/

namespace A157077.P16036628037850933421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A003056 n).toNat * A100258 n

end

end A157077.P16036628037850933421

/-! ## A157077.P17583891474094380389

`A001405(A134478(n))*A049310(n)`
-/

namespace A157077.P17583891474094380389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A134478 n).toNat * A049310 n

end

end A157077.P17583891474094380389

/-! ## A157077.P6410272396787755455

`A126869(A051162(n))*A130777(n)`
-/

namespace A157077.P6410272396787755455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A051162 n).toNat * A130777 n

end

end A157077.P6410272396787755455

/-! ## A157077.P5648982963610145483

`A000984(A332104(n))*A049310(n)`
-/

namespace A157077.P5648982963610145483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A332104 n).toNat * A049310 n

end

end A157077.P5648982963610145483

/-! ## A157077.P309857026382868698

`A126869(A051162(n))*A267482(n)`
-/

namespace A157077.P309857026382868698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A051162 n).toNat * A267482 n

end

end A157077.P309857026382868698

/-! ## A157077.P513831583300831474

`A120616(n)*A130595(A245300(n))`
-/

namespace A157077.P513831583300831474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120616 n * A130595 (A245300 n).toNat

end

end A157077.P513831583300831474

/-! ## A157077.P15969739755402635114

`A047074(A094727(n+1))*A049310(n)`
-/

namespace A157077.P15969739755402635114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 (A094727 (n + 1)).toNat * A049310 n

end

end A157077.P15969739755402635114

/-!
# A157078: a(n) = 32805000*n^2 - 55096200*n + 23133601.

The programs for A157078, there is no canonical definition to state claims against.
-/

/-! ## A157078.P12568984133195240235

`round(sqrt(A156854(n+1))*A156865(n+1))`
-/

namespace A157078.P12568984133195240235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A156854 (n + 1) : ℝ) * (A156865 (n + 1) : ℝ))

end

end A157078.P12568984133195240235

/-! ## A157078.P8960648947723361263

`A157506(A053742(n)-17)`
-/

namespace A157078.P8960648947723361263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157506 (A053742 n - 17).toNat

end

end A157078.P8960648947723361263

/-! ## A157078.P5636209680006748179

`∩[A157516(3*n+1), A157506(n+1)]`
-/

namespace A157078.P5636209680006748179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157078.P5636209680006748179

/-!
# A157079: a(n) = 32805000*n^2 - 10513800*n + 842401.

The programs for A157079, the canonical program `A157079.P4834609474634695311` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157079 has offset 1).

The definition of A157079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157079.P4834609474634695311

`A157509(A053742(n)+17)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157079

/-- `A157509(A053742(n)+17)` -/
def P4834609474634695311.Spec : Prop :=
  ∀ n, P4834609474634695311.a n = A157079 (n + 1)

theorem P4834609474634695311.correct : P4834609474634695311.Spec := by
  intro n
  simp only [A157079, Nat.add_sub_cancel]

end A157079

/-! ## A157079.P5509993000645302958

`∩[A157511(3*n+5), A157509(n+1)]`
-/

namespace A157079.P5509993000645302958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157079.P5509993000645302958

namespace A157079

/-- `∩[A157511(3*n+5), A157509(n+1)]` -/
def P5509993000645302958.Spec : Prop :=
  ∀ n, (P5509993000645302958.a n : ℤ) = A157079 (n + 1)

end A157079

/-! ## A157079.P6857468390700623261

`A157511(A135659(4*n+3)-(5*A016789(n)+1))`
-/

namespace A157079.P6857468390700623261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (A135659 (4 * n + 3) - (5 * A016789 n + 1)).toNat

end

end A157079.P6857468390700623261

namespace A157079

/-- `A157511(A135659(4*n+3)-(5*A016789(n)+1))` -/
def P6857468390700623261.Spec : Prop :=
  ∀ n, P6857468390700623261.a n = A157079 (n + 1)

end A157079

/-! ## A157079.P16969298186067105552

`A157511(A008619(Δ[A017198(n)]))`
-/

namespace A157079.P16969298186067105552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A157079.P16969298186067105552

namespace A157079

/-- `A157511(A008619(Δ[A017198(n)]))` -/
def P16969298186067105552.Spec : Prop :=
  ∀ n, P16969298186067105552.a n = A157079 (n + 1)

end A157079

/-!
# A157080: a(n) = 32805000*n^2 - 16200*n + 1.

The programs for A157080, the canonical program `A157080.P15307887305720561026` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157080 has offset 1).

The definition of A157080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157080.P15307887305720561026

`round(sqrt(A156855(n+1))*A156867(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157080

/-- `round(sqrt(A156855(n+1))*A156867(n+1))` -/
def P15307887305720561026.Spec : Prop :=
  ∀ n, P15307887305720561026.a n = A157080 (n + 1)

theorem P15307887305720561026.correct : P15307887305720561026.Spec := by
  intro n
  simp only [A157080, Nat.add_sub_cancel]

end A157080

/-! ## A157080.P5173122572433441593

`A157509(25*2*(n+1))`
-/

namespace A157080.P5173122572433441593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157509 (25 * (2 * (n + 1)))

end

end A157080.P5173122572433441593

namespace A157080

/-- `A157509(25*2*(n+1))` -/
def P5173122572433441593.Spec : Prop :=
  ∀ n, P5173122572433441593.a n = A157080 (n + 1)

end A157080

/-! ## A157080.P7379988722368182323

`A157516(81*(n+1))`
-/

namespace A157080.P7379988722368182323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (81 * (n + 1))

end

end A157080.P7379988722368182323

namespace A157080

/-- `A157516(81*(n+1))` -/
def P7379988722368182323.Spec : Prop :=
  ∀ n, P7379988722368182323.a n = A157080 (n + 1)

end A157080

/-! ## A157080.P18117255590469927791

`A154514(A158227(n+1)+1)`
-/

namespace A157080.P18117255590469927791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (A158227 (n + 1) + 1).toNat

end

end A157080.P18117255590469927791

namespace A157080

/-- `A154514(A158227(n+1)+1)` -/
def P18117255590469927791.Spec : Prop :=
  ∀ n, P18117255590469927791.a n = A157080 (n + 1)

end A157080

/-! ## A157080.P9344336203125488809

`A154514(5*A008597(3*(n+1)))`
-/

namespace A157080.P9344336203125488809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (5 * A008597 (3 * (n + 1))).toNat

end

end A157080.P9344336203125488809

namespace A157080

/-- `A154514(5*A008597(3*(n+1)))` -/
def P9344336203125488809.Spec : Prop :=
  ∀ n, P9344336203125488809.a n = A157080 (n + 1)

end A157080

/-!
# A157081: a(n) = 32805000*n^2 + 16200*n + 1.

The programs for A157081, there is no canonical definition to state claims against.
-/

/-! ## A157081.P2551072375573776899

`A157506(5*10*(n+1))`
-/

namespace A157081.P2551072375573776899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157506 (5 * (10 * (n + 1)))

end

end A157081.P2551072375573776899

/-! ## A157081.P8970495771111561588

`A157511(Δ[9*A027468(n)])`
-/

namespace A157081.P8970495771111561588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A027468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (f1 (n + 1) - f1 n).toNat

end

end A157081.P8970495771111561588

/-! ## A157081.P6674544841001414223

`A157511(Δ[9*A062123(n)])`
-/

namespace A157081.P6674544841001414223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A062123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (f1 (n + 1) - f1 n).toNat

end

end A157081.P6674544841001414223

/-! ## A157081.P18419456543829534661

`A157511(Δ[9*A164013(n)])`
-/

namespace A157081.P18419456543829534661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A164013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (f1 (n + 1) - f1 n).toNat

end

end A157081.P18419456543829534661

/-! ## A157081.P8530745754731383145

`A157511(Δ[A000124(A017209(n))])`
-/

namespace A157081.P8530745754731383145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (f1 (n + 1) - f1 n).toNat

end

end A157081.P8530745754731383145

/-! ## A157081.P15485279918353539878

`A157511(Δ[A000217(A017209(n))])`
-/

namespace A157081.P15485279918353539878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (f1 (n + 1) - f1 n).toNat

end

end A157081.P15485279918353539878

/-! ## A157081.P16600240228427181683

`A157511(Δ[A133263(A017209(n))])`
-/

namespace A157081.P16600240228427181683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (f1 (n + 1) - f1 n).toNat

end

end A157081.P16600240228427181683

/-!
# A157084: Consider all consecutive integer Pythagorean quintuples (X, X+1, X+2, Z-1, Z) ordered by increasing Z; sequence gives X values.

The programs for A157084, the canonical program `A157084.P1974733518547052363` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157084 has offset 0).

The definition of A157084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157084.P1974733518547052363

`10*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157084

/-- `10*a(n-1)-a(n-2)+8` -/
def P1974733518547052363.Spec : Prop :=
  ∀ n, P1974733518547052363.a n = A157084 n

theorem P1974733518547052363.correct : P1974733518547052363.Spec := by
  intro n
  simp only [A157084]

end A157084

/-! ## A157084.P8626209611163239138

`A054320(n)-1`
-/

namespace A157084.P8626209611163239138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - 1

end

end A157084.P8626209611163239138

namespace A157084

/-- `A054320(n)-1` -/
def P8626209611163239138.Spec : Prop :=
  ∀ n, P8626209611163239138.a n = A157084 n

end A157084

/-! ## A157084.P13789532512446375054

`2*A087125(n)`
-/

namespace A157084.P13789532512446375054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087125 n

end

end A157084.P13789532512446375054

namespace A157084

/-- `2*A087125(n)` -/
def P13789532512446375054.Spec : Prop :=
  ∀ n, P13789532512446375054.a n = A157084 n

end A157084

/-! ## A157084.P543290552506735143

`∑[ogf((10x-2x^2)/(1-10x+x^2))]`
-/

namespace A157084.P543290552506735143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -2] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157084.P543290552506735143

namespace A157084

/-- `∑[ogf((10x-2x^2)/(1-10x+x^2))]` -/
def P543290552506735143.Spec : Prop :=
  ∀ n, P543290552506735143.a n = A157084 n

end A157084

/-! ## A157084.P13626139718211153418

`∑[10*a(n-1)-a(n-2)]-2` with `a(0)=2, a(1)=10`
-/

namespace A157084.P13626139718211153418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A157084.P13626139718211153418

namespace A157084

/-- `∑[10*a(n-1)-a(n-2)]-2` -/
def P13626139718211153418.Spec : Prop :=
  ∀ n, P13626139718211153418.a n = A157084 n

end A157084

/-! ## A157084.P12073411630192808863

`∑[A087799(n)]-2`
-/

namespace A157084.P12073411630192808863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A157084.P12073411630192808863

namespace A157084

/-- `∑[A087799(n)]-2` -/
def P12073411630192808863.Spec : Prop :=
  ∀ n, P12073411630192808863.a n = A157084 n

end A157084

/-! ## A157084.P2741435214409993403

`Δ[A098297(n)]-1`
-/

namespace A157084.P2741435214409993403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A157084.P2741435214409993403

namespace A157084

/-- `Δ[A098297(n)]-1` -/
def P2741435214409993403.Spec : Prop :=
  ∀ n, P2741435214409993403.a n = A157084 n

end A157084

/-! ## A157084.P156564429598066624

`A142238(2*n)-1`
-/

namespace A157084.P156564429598066624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (2 * n) - 1

end

end A157084.P156564429598066624

namespace A157084

/-- `A142238(2*n)-1` -/
def P156564429598066624.Spec : Prop :=
  ∀ n, P156564429598066624.a n = A157084 n

end A157084

/-! ## A157084.P11538047389171607521

`A259594(2*n)-1`
-/

namespace A157084.P11538047389171607521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (2 * n) - 1

end

end A157084.P11538047389171607521

namespace A157084

/-- `A259594(2*n)-1` -/
def P11538047389171607521.Spec : Prop :=
  ∀ n, P11538047389171607521.a n = A157084 n

end A157084

/-! ## A157084.P2141987940121551565

`A350965(n)/2-1`
-/

namespace A157084.P2141987940121551565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350965 n : ℚ) / 2 - 1

end

end A157084.P2141987940121551565

namespace A157084

/-- `A350965(n)/2-1` -/
def P2141987940121551565.Spec : Prop :=
  ∀ n, P2141987940121551565.a n = (A157084 n : ℚ)

end A157084

/-! ## A157084.P17319250339648072764

`A085376(Δ[n²])-1`
-/

namespace A157084.P17319250339648072764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A157084.P17319250339648072764

namespace A157084

/-- `A085376(Δ[n²])-1` -/
def P17319250339648072764.Spec : Prop :=
  ∀ n, P17319250339648072764.a n = A157084 n

end A157084

/-! ## A157084.P8883149828663812397

`A152448(Δ[n²])-1`
-/

namespace A157084.P8883149828663812397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A157084.P8883149828663812397

namespace A157084

/-- `A152448(Δ[n²])-1` -/
def P8883149828663812397.Spec : Prop :=
  ∀ n, P8883149828663812397.a n = A157084 n

end A157084

/-! ## A157084.P16808519690143724488

`2*(∑[A001079(n)]-1)`
-/

namespace A157084.P16808519690143724488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A157084.P16808519690143724488

namespace A157084

/-- `2*(∑[A001079(n)]-1)` -/
def P16808519690143724488.Spec : Prop :=
  ∀ n, P16808519690143724488.a n = A157084 n

end A157084

/-! ## A157084.P14419940333825701531

`Δ[A132596(n)/2]-1`
-/

namespace A157084.P14419940333825701531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A157084.P14419940333825701531

namespace A157084

/-- `Δ[A132596(n)/2]-1` -/
def P14419940333825701531.Spec : Prop :=
  ∀ n, P14419940333825701531.a n = (A157084 n : ℚ)

end A157084

/-! ## A157084.P17350802812470577763

`∑[lcm(2, A146311(n))]-2`
-/

namespace A157084.P17350802812470577763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A146311 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A157084.P17350802812470577763

namespace A157084

/-- `∑[lcm(2, A146311(n))]-2` -/
def P17350802812470577763.Spec : Prop :=
  ∀ n, P17350802812470577763.a n = A157084 n

end A157084

/-! ## A157084.P10040881485823152667

`2*(A253475(n+1)-1)`
-/

namespace A157084.P10040881485823152667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253475 (n + 1) - 1)

end

end A157084.P10040881485823152667

namespace A157084

/-- `2*(A253475(n+1)-1)` -/
def P10040881485823152667.Spec : Prop :=
  ∀ n, P10040881485823152667.a n = A157084 n

end A157084

/-! ## A157084.P16057090950631176581

`A041006(2*n)/2-1`
-/

namespace A157084.P16057090950631176581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 (2 * n) : ℚ) / 2 - 1

end

end A157084.P16057090950631176581

namespace A157084

/-- `A041006(2*n)/2-1` -/
def P16057090950631176581.Spec : Prop :=
  ∀ n, P16057090950631176581.a n = (A157084 n : ℚ)

end A157084

/-! ## A157084.P13461237397227454879

`Δ[A171640(n+1)/2]-1`
-/

namespace A157084.P13461237397227454879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171640 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A157084.P13461237397227454879

namespace A157084

/-- `Δ[A171640(n+1)/2]-1` -/
def P13461237397227454879.Spec : Prop :=
  ∀ n, P13461237397227454879.a n = (A157084 n : ℚ)

end A157084

/-! ## A157084.P16491665101104707510

`xor(char[A004442(n)], A054320(n))`
-/

namespace A157084.P16491665101104707510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A054320 n)

end

end A157084.P16491665101104707510

namespace A157084

/-- `xor(char[A004442(n)], A054320(n))` -/
def P16491665101104707510.Spec : Prop :=
  ∀ n, P16491665101104707510.a n = A157084 n

end A157084

/-! ## A157084.P2891149361020964975

`A077251(n)-(A004189(n)+1)`
-/

namespace A157084.P2891149361020964975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077251 n - (A004189 n + 1)

end

end A157084.P2891149361020964975

namespace A157084

/-- `A077251(n)-(A004189(n)+1)` -/
def P2891149361020964975.Spec : Prop :=
  ∀ n, P2891149361020964975.a n = A157084 n

end A157084

/-!
# A157085: Consider all Consecutive Integer Pythagorean quintuples (X, X+1, X+2, Z-1, Z) ordered by increasing Z; sequence gives Z values.

The programs for A157085, the canonical program `A157085.P5187364223744641889` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157085 has offset 0).

The definition of A157085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157085.P5187364223744641889

`10*a(n-1)-a(n-2)-4` with `a(0)=2, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157085

/-- `10*a(n-1)-a(n-2)-4` -/
def P5187364223744641889.Spec : Prop :=
  ∀ n, P5187364223744641889.a n = A157085 n

theorem P5187364223744641889.correct : P5187364223744641889.Spec := by
  intro n
  simp only [A157085]

end A157085

/-! ## A157085.P15199784641482573750

`2*A253175(n+1)`
-/

namespace A157085.P15199784641482573750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253175 (n + 1)

end

end A157085.P15199784641482573750

namespace A157085

/-- `2*A253175(n+1)` -/
def P15199784641482573750.Spec : Prop :=
  ∀ n, P15199784641482573750.a n = A157085 n

end A157085

/-! ## A157085.P13901634670398925144

`∑[ogf((2-8x+2x^2)/(1-10x+x^2))]`
-/

namespace A157085.P13901634670398925144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8, 2] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157085.P13901634670398925144

namespace A157085

/-- `∑[ogf((2-8x+2x^2)/(1-10x+x^2))]` -/
def P13901634670398925144.Spec : Prop :=
  ∀ n, P13901634670398925144.a n = A157085 n

end A157085

/-! ## A157085.P12447393866596639426

`A350923(n+1)`
-/

namespace A157085.P12447393866596639426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350923 (n + 1)

end

end A157085.P12447393866596639426

namespace A157085

/-- `A350923(n+1)` -/
def P12447393866596639426.Spec : Prop :=
  ∀ n, P12447393866596639426.a n = A157085 n

end A157085

/-! ## A157085.P2818426411683746922

`∑[A004291(n)]+1`
-/

namespace A157085.P2818426411683746922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157085.P2818426411683746922

namespace A157085

/-- `∑[A004291(n)]+1` -/
def P2818426411683746922.Spec : Prop :=
  ∀ n, P2818426411683746922.a n = A157085 n

end A157085

/-! ## A157085.P11431015069784614092

`A031138(n+1)+1`
-/

namespace A157085.P11431015069784614092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031138 (n + 1) + 1

end

end A157085.P11431015069784614092

namespace A157085

/-- `A031138(n+1)+1` -/
def P11431015069784614092.Spec : Prop :=
  ∀ n, P11431015069784614092.a n = A157085 n

end A157085

/-! ## A157085.P4812376954671278121

`3*A105038(n)+2`
-/

namespace A157085.P4812376954671278121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105038 n + 2

end

end A157085.P4812376954671278121

namespace A157085

/-- `3*A105038(n)+2` -/
def P4812376954671278121.Spec : Prop :=
  ∀ n, P4812376954671278121.a n = A157085 n

end A157085

/-! ## A157085.P1132721061362385057

`2*(∑[A122653(n)]+1)`
-/

namespace A157085.P1132721061362385057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A157085.P1132721061362385057

namespace A157085

/-- `2*(∑[A122653(n)]+1)` -/
def P1132721061362385057.Spec : Prop :=
  ∀ n, P1132721061362385057.a n = A157085 n

end A157085

/-! ## A157085.P4756460032902385689

`∑[3*A122652(n)]+2`
-/

namespace A157085.P4756460032902385689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A157085.P4756460032902385689

namespace A157085

/-- `∑[3*A122652(n)]+2` -/
def P4756460032902385689.Spec : Prop :=
  ∀ n, P4756460032902385689.a n = A157085 n

end A157085

/-! ## A157085.P440121634151348569

`3*A054318(n+1)-1`
-/

namespace A157085.P440121634151348569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054318 (n + 1) - 1

end

end A157085.P440121634151348569

namespace A157085

/-- `3*A054318(n+1)-1` -/
def P440121634151348569.Spec : Prop :=
  ∀ n, P440121634151348569.a n = A157085 n

end A157085

/-! ## A157085.P7602793089913409746

`(A259595(2*n)+1)/2`
-/

namespace A157085.P7602793089913409746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259595 (2 * n) + 1 : ℚ) / 2

end

end A157085.P7602793089913409746

namespace A157085

/-- `(A259595(2*n)+1)/2` -/
def P7602793089913409746.Spec : Prop :=
  ∀ n, P7602793089913409746.a n = (A157085 n : ℚ)

end A157085

/-! ## A157085.P9926953134023268446

`A054320(n)+A132596(n)+1`
-/

namespace A157085.P9926953134023268446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n + (A132596 n + 1)

end

end A157085.P9926953134023268446

namespace A157085

/-- `A054320(n)+A132596(n)+1` -/
def P9926953134023268446.Spec : Prop :=
  ∀ n, P9926953134023268446.a n = A157085 n

end A157085

/-! ## A157085.P3553722385928806063

`A105038(n)+A138288(n)+1`
-/

namespace A157085.P3553722385928806063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105038 n + (A138288 n + 1)

end

end A157085.P3553722385928806063

namespace A157085

/-- `A105038(n)+A138288(n)+1` -/
def P3553722385928806063.Spec : Prop :=
  ∀ n, P3553722385928806063.a n = A157085 n

end A157085

/-! ## A157085.P15287520279782913861

`∑[A054320(n)]+A098297(n)+1`
-/

namespace A157085.P15287520279782913861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A098297 n + 1)

end

end A157085.P15287520279782913861

namespace A157085

/-- `∑[A054320(n)]+A098297(n)+1` -/
def P15287520279782913861.Spec : Prop :=
  ∀ n, P15287520279782913861.a n = A157085 n

end A157085

/-! ## A157085.P9629369791650231084

`∑[A122652(n)]+A138288(n)+1`
-/

namespace A157085.P9629369791650231084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A138288 n + 1)

end

end A157085.P9629369791650231084

namespace A157085

/-- `∑[A122652(n)]+A138288(n)+1` -/
def P9629369791650231084.Spec : Prop :=
  ∀ n, P9629369791650231084.a n = A157085 n

end A157085

/-! ## A157085.P9956961880817300708

`Δ[A004189(n)]+A105038(n)+1`
-/

namespace A157085.P9956961880817300708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A105038 n + 1)

end

end A157085.P9956961880817300708

namespace A157085

/-- `Δ[A004189(n)]+A105038(n)+1` -/
def P9956961880817300708.Spec : Prop :=
  ∀ n, P9956961880817300708.a n = A157085 n

end A157085

/-! ## A157085.P5467541645980854790

`Δ[A098297(n)]+A132596(n)+1`
-/

namespace A157085.P5467541645980854790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A132596 n + 1)

end

end A157085.P5467541645980854790

namespace A157085

/-- `Δ[A098297(n)]+A132596(n)+1` -/
def P5467541645980854790.Spec : Prop :=
  ∀ n, P5467541645980854790.a n = A157085 n

end A157085

/-! ## A157085.P9108156510532773930

`A171640(n+1)+Δ[A098297(n)]`
-/

namespace A157085.P9108156510532773930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171640 (n + 1) + (f1 (n + 1) - f1 n)

end

end A157085.P9108156510532773930

namespace A157085

/-- `A171640(n+1)+Δ[A098297(n)]` -/
def P9108156510532773930.Spec : Prop :=
  ∀ n, P9108156510532773930.a n = A157085 n

end A157085

/-! ## A157085.P10780859343278061797

`2*(A098297(n)+∑[A001079(n)])`
-/

namespace A157085.P10780859343278061797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098297 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157085.P10780859343278061797

namespace A157085

/-- `2*(A098297(n)+∑[A001079(n)])` -/
def P10780859343278061797.Spec : Prop :=
  ∀ n, P10780859343278061797.a n = A157085 n

end A157085

/-! ## A157085.P2934169707001625277

`∑[2*(A004291(n)-A122653(n))]`
-/

namespace A157085.P2934169707001625277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004291 n - A122653 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157085.P2934169707001625277

namespace A157085

/-- `∑[2*(A004291(n)-A122653(n))]` -/
def P2934169707001625277.Spec : Prop :=
  ∀ n, P2934169707001625277.a n = A157085 n

end A157085

/-!
# A157088: Consider all consecutive integer Pythagorean septuples (X, X+1, X+2, X+3, Z-2, Z-1, Z) ordered by increasing Z; sequence gives X values.

The programs for A157088, the canonical program `A157088.P14653849048235496610` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157088 has offset 0).

The definition of A157088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157088.P14653849048235496610

`14*a(n-1)-a(n-2)+18` with `a(0)=0, a(1)=21`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157088

/-- `14*a(n-1)-a(n-2)+18` -/
def P14653849048235496610.Spec : Prop :=
  ∀ n, P14653849048235496610.a n = A157088 n

theorem P14653849048235496610.correct : P14653849048235496610.Spec := by
  intro n
  simp only [A157088]

end A157088

/-! ## A157088.P14576274856467325378

`3*A001921(n)`
-/

namespace A157088.P14576274856467325378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001921 n

end

end A157088.P14576274856467325378

namespace A157088

/-- `3*A001921(n)` -/
def P14576274856467325378.Spec : Prop :=
  ∀ n, P14576274856467325378.a n = A157088 n

end A157088

/-! ## A157088.P17588460445749621390

`3*floor(∑[round(((sqrt(3)+2)^n)²)]/2)`
-/

namespace A157088.P17588460445749621390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A157088.P17588460445749621390

namespace A157088

/-- `3*floor(∑[round(((sqrt(3)+2)^n)²)]/2)` -/
def P17588460445749621390.Spec : Prop :=
  ∀ n, P17588460445749621390.a n = A157088 n

end A157088

/-! ## A157088.P8144737156985205329

`A028231(n)-1`
-/

namespace A157088.P8144737156985205329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028231 n - 1

end

end A157088.P8144737156985205329

namespace A157088

/-- `A028231(n)-1` -/
def P8144737156985205329.Spec : Prop :=
  ∀ n, P8144737156985205329.a n = A157088 n

end A157088

/-! ## A157088.P8012444153809116401

`∑[ceil((sqrt(3)+2)^n)]²-A055793(n+2)`
-/

namespace A157088.P8012444153809116401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A055793 (n + 2)

end

end A157088.P8012444153809116401

namespace A157088

/-- `∑[ceil((sqrt(3)+2)^n)]²-A055793(n+2)` -/
def P8012444153809116401.Spec : Prop :=
  ∀ n, P8012444153809116401.a n = A157088 n

end A157088

/-! ## A157088.P1461944609387614802

`record[A108946(n)+A082840(n)]`
-/

namespace A157088.P1461944609387614802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108946 n + A082840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157088.P1461944609387614802

namespace A157088

/-- `record[A108946(n)+A082840(n)]` -/
def P1461944609387614802.Spec : Prop :=
  ∀ n, P1461944609387614802.a n = A157088 n

end A157088

/-! ## A157088.P11478902365642545680

`record[A082840(n)-A097948(n)]`
-/

namespace A157088.P11478902365642545680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n - A097948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157088.P11478902365642545680

namespace A157088

/-- `record[A082840(n)-A097948(n)]` -/
def P11478902365642545680.Spec : Prop :=
  ∀ n, P11478902365642545680.a n = A157088 n

end A157088

/-! ## A157088.P322983967767950479

`A001834(n)²-A001075(n)²`
-/

namespace A157088.P322983967767950479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n ^ 2 - A001075 n ^ 2

end

end A157088.P322983967767950479

namespace A157088

/-- `A001834(n)²-A001075(n)²` -/
def P322983967767950479.Spec : Prop :=
  ∀ n, P322983967767950479.a n = A157088 n

end A157088

/-! ## A157088.P8345811847544868709

`A005320(2*n)+A005320(n)²`
-/

namespace A157088.P8345811847544868709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 (2 * n) + A005320 n ^ 2

end

end A157088.P8345811847544868709

namespace A157088

/-- `A005320(2*n)+A005320(n)²` -/
def P8345811847544868709.Spec : Prop :=
  ∀ n, P8345811847544868709.a n = A157088 n

end A157088

/-! ## A157088.P7679893612527611149

`record[A001571(n)-(A097948(n)+1)]`
-/

namespace A157088.P7679893612527611149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n - (A097948 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157088.P7679893612527611149

namespace A157088

/-- `record[A001571(n)-(A097948(n)+1)]` -/
def P7679893612527611149.Spec : Prop :=
  ∀ n, P7679893612527611149.a n = A157088 n

end A157088

/-!
# A157089: Consider all consecutive integer Pythagorean septuples (X, X+1, X+2, X+3, Z-2, Z-1, Z) ordered by increasing Z; sequence gives Z values.

The programs for A157089, the canonical program `A157089.P17147884835939823664` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157089 has offset 0).

The definition of A157089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157089.P17147884835939823664

`14*a(n-1)-a(n-2)-12` with `a(0)=3, a(1)=27`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157089

/-- `14*a(n-1)-a(n-2)-12` -/
def P17147884835939823664.Spec : Prop :=
  ∀ n, P17147884835939823664.a n = A157089 n

theorem P17147884835939823664.correct : P17147884835939823664.Spec := by
  intro n
  simp only [A157089]

end A157089

/-! ## A157089.P10398970168271582189

`((1+sqrt(3))^(2*n+1)-(1-sqrt(3))^(2*n+1))²/4^(n+1)`
-/

namespace A157089.P10398970168271582189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) ^ (2 * n + 1) - (1 - Real.sqrt (3 : ℝ)) ^ (2 * n + 1)) ^ 2 / (4 ^ (n + 1) : ℝ)

end

end A157089.P10398970168271582189

namespace A157089

/-- `((1+sqrt(3))^(2*n+1)-(1-sqrt(3))^(2*n+1))²/4^(n+1)` -/
def P10398970168271582189.Spec : Prop :=
  ∀ n, P10398970168271582189.a n = (A157089 n : ℝ)

end A157089

/-! ## A157089.P1461254948613791031

`Δ[ogf(2x/(1-14x+x^2))]+1`
-/

namespace A157089.P1461254948613791031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A157089.P1461254948613791031

namespace A157089

/-- `Δ[ogf(2x/(1-14x+x^2))]+1` -/
def P1461254948613791031.Spec : Prop :=
  ∀ n, P1461254948613791031.a n = A157089 n

end A157089

/-! ## A157089.P8272341220100671273

`A102206(2*n)`
-/

namespace A157089.P8272341220100671273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102206 (2 * n)

end

end A157089.P8272341220100671273

namespace A157089

/-- `A102206(2*n)` -/
def P8272341220100671273.Spec : Prop :=
  ∀ n, P8272341220100671273.a n = A157089 n

end A157089

/-! ## A157089.P180832110848845108

`A121401(Δ[n²])`
-/

namespace A157089.P180832110848845108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A157089.P180832110848845108

namespace A157089

/-- `A121401(Δ[n²])` -/
def P180832110848845108.Spec : Prop :=
  ∀ n, P180832110848845108.a n = A157089 n

end A157089

/-! ## A157089.P2936728486698957875

`A001834(n)²+2`
-/

namespace A157089.P2936728486698957875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n ^ 2 + 2

end

end A157089.P2936728486698957875

namespace A157089

/-- `A001834(n)²+2` -/
def P2936728486698957875.Spec : Prop :=
  ∀ n, P2936728486698957875.a n = A157089 n

end A157089

/-! ## A157089.P10918057161817483183

`Δ[A011944(n)]+1`
-/

namespace A157089.P10918057161817483183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A157089.P10918057161817483183

namespace A157089

/-- `Δ[A011944(n)]+1` -/
def P10918057161817483183.Spec : Prop :=
  ∀ n, P10918057161817483183.a n = A157089 n

end A157089

/-! ## A157089.P2819168866799981764

`A094347(n+1)+1`
-/

namespace A157089.P2819168866799981764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094347 (n + 1) + 1

end

end A157089.P2819168866799981764

namespace A157089

/-- `A094347(n+1)+1` -/
def P2819168866799981764.Spec : Prop :=
  ∀ n, P2819168866799981764.a n = A157089 n

end A157089

/-! ## A157089.P7510533376272945644

`3*A046184(n+1)`
-/

namespace A157089.P7510533376272945644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046184 (n + 1)

end

end A157089.P7510533376272945644

namespace A157089

/-- `3*A046184(n+1)` -/
def P7510533376272945644.Spec : Prop :=
  ∀ n, P7510533376272945644.a n = A157089 n

end A157089

/-! ## A157089.P9722518784268563942

`3*A006253(2*n)`
-/

namespace A157089.P9722518784268563942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006253 (2 * n)

end

end A157089.P9722518784268563942

namespace A157089

/-- `3*A006253(2*n)` -/
def P9722518784268563942.Spec : Prop :=
  ∀ n, P9722518784268563942.a n = A157089 n

end A157089

/-!
# A157092: Consider all consecutive integer Pythagorean 9-tuples (X, X+1, X+2, X+3, X+4, Z-3, Z-2, Z-1, Z) ordered by increasing Z; sequence gives X values.

The programs for A157092, the canonical program `A157092.P10112749460315924815` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157092 has offset 0).

The definition of A157092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157092.P10112749460315924815

`18*a(n-1)-a(n-2)+32` with `a(0)=0, a(1)=36`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157092

/-- `18*a(n-1)-a(n-2)+32` -/
def P10112749460315924815.Spec : Prop :=
  ∀ n, P10112749460315924815.a n = A157092 n

theorem P10112749460315924815.correct : P10112749460315924815.Spec := by
  intro n
  simp only [A157092]

end A157092

/-! ## A157092.P10064803008104397794

`4*A119032(n+1)`
-/

namespace A157092.P10064803008104397794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A119032 (n + 1)

end

end A157092.P10064803008104397794

namespace A157092

/-- `4*A119032(n+1)` -/
def P10064803008104397794.Spec : Prop :=
  ∀ n, P10064803008104397794.a n = A157092 n

end A157092

/-! ## A157092.P4147326751875840659

`A075796(n+1)-2`
-/

namespace A157092.P4147326751875840659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075796 (n + 1) - 2

end

end A157092.P4147326751875840659

namespace A157092

/-- `A075796(n+1)-2` -/
def P4147326751875840659.Spec : Prop :=
  ∀ n, P4147326751875840659.a n = A157092 n

end A157092

/-! ## A157092.P10334432461187908064

`2*(A049629(n)-1)`
-/

namespace A157092.P10334432461187908064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049629 n - 1)

end

end A157092.P10334432461187908064

namespace A157092

/-- `2*(A049629(n)-1)` -/
def P10334432461187908064.Spec : Prop :=
  ∀ n, P10334432461187908064.a n = A157092 n

end A157092

/-! ## A157092.P11061405376136545599

`A110528(2*n)-1`
-/

namespace A157092.P11061405376136545599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110528 (2 * n) - 1

end

end A157092.P11061405376136545599

namespace A157092

/-- `A110528(2*n)-1` -/
def P11061405376136545599.Spec : Prop :=
  ∀ n, P11061405376136545599.a n = A157092 n

end A157092

/-! ## A157092.P2009204862384137867

`A199935(6*n+3)`
-/

namespace A157092.P2009204862384137867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (6 * n + 3)

end

end A157092.P2009204862384137867

namespace A157092

/-- `A199935(6*n+3)` -/
def P2009204862384137867.Spec : Prop :=
  ∀ n, P2009204862384137867.a n = A157092 n

end A157092

/-! ## A157092.P2517268366600319929

`A001077(Δ[n²])-2`
-/

namespace A157092.P2517268366600319929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A157092.P2517268366600319929

namespace A157092

/-- `A001077(Δ[n²])-2` -/
def P2517268366600319929.Spec : Prop :=
  ∀ n, P2517268366600319929.a n = A157092 n

end A157092

/-! ## A157092.P10809213275126831602

`2*(Δ[A049683(n)]-1)`
-/

namespace A157092.P10809213275126831602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A157092.P10809213275126831602

namespace A157092

/-- `2*(Δ[A049683(n)]-1)` -/
def P10809213275126831602.Spec : Prop :=
  ∀ n, P10809213275126831602.a n = A157092 n

end A157092

/-! ## A157092.P15236856788798937305

`2*(∑[A087215(n)]-2)`
-/

namespace A157092.P15236856788798937305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A157092.P15236856788798937305

namespace A157092

/-- `2*(∑[A087215(n)]-2)` -/
def P15236856788798937305.Spec : Prop :=
  ∀ n, P15236856788798937305.a n = A157092 n

end A157092

/-! ## A157092.P17067663233058897816

`Δ[A132584(n)/2]-2`
-/

namespace A157092.P17067663233058897816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132584 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A157092.P17067663233058897816

namespace A157092

/-- `Δ[A132584(n)/2]-2` -/
def P17067663233058897816.Spec : Prop :=
  ∀ n, P17067663233058897816.a n = (A157092 n : ℚ)

end A157092

/-!
# A157093: Consider all Consecutive Integer Pythagorean 9-tuples (X,X+1,X+2,X+3,X+4,Z-3,Z-2,Z-1,Z) ordered by increasing Z; sequence gives Z values.

The programs for A157093, the canonical program `A157093.P15066128868496699469` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157093 has offset 0).

The definition of A157093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157093.P15066128868496699469

`18*a(n-1)-a(n-2)-24` with `a(0)=4, a(1)=44`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157093

/-- `18*a(n-1)-a(n-2)-24` -/
def P15066128868496699469.Spec : Prop :=
  ∀ n, P15066128868496699469.a n = A157093 n

theorem P15066128868496699469.correct : P15066128868496699469.Spec := by
  intro n
  simp only [A157093]

end A157093

/-! ## A157093.P13294143779387698079

`A246642(n)+3`
-/

namespace A157093.P13294143779387698079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246642 n + 3

end

end A157093.P13294143779387698079

namespace A157093

/-- `A246642(n)+3` -/
def P13294143779387698079.Spec : Prop :=
  ∀ n, P13294143779387698079.a n = A157093 n

end A157093

/-! ## A157093.P6312580929265166238

`4*A280070(n+1)`
-/

namespace A157093.P6312580929265166238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A280070 (n + 1)

end

end A157093.P6312580929265166238

namespace A157093

/-- `4*A280070(n+1)` -/
def P6312580929265166238.Spec : Prop :=
  ∀ n, P6312580929265166238.a n = A157093 n

end A157093

/-! ## A157093.P462384811580301978

`5*A246641(n)-1`
-/

namespace A157093.P462384811580301978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A246641 n - 1

end

end A157093.P462384811580301978

namespace A157093

/-- `5*A246641(n)-1` -/
def P462384811580301978.Spec : Prop :=
  ∀ n, P462384811580301978.a n = A157093 n

end A157093

/-! ## A157093.P12203251567413731736

`5*A053606(n)+4`
-/

namespace A157093.P12203251567413731736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A053606 n + 4

end

end A157093.P12203251567413731736

namespace A157093

/-- `5*A053606(n)+4` -/
def P12203251567413731736.Spec : Prop :=
  ∀ n, P12203251567413731736.a n = A157093 n

end A157093

/-! ## A157093.P8982605419099062129

`2*(∑[A004292(n)]+1)`
-/

namespace A157093.P8982605419099062129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A157093.P8982605419099062129

namespace A157093

/-- `2*(∑[A004292(n)]+1)` -/
def P8982605419099062129.Spec : Prop :=
  ∀ n, P8982605419099062129.a n = A157093 n

end A157093

/-! ## A157093.P6978966466507998956

`(Δ[5*A049660(n)]+3)/2`
-/

namespace A157093.P6978966466507998956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049660 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 3 : ℚ) / 2

end

end A157093.P6978966466507998956

namespace A157093

/-- `(Δ[5*A049660(n)]+3)/2` -/
def P6978966466507998956.Spec : Prop :=
  ∀ n, P6978966466507998956.a n = (A157093 n : ℚ)

end A157093

/-! ## A157093.P10043825940946245641

`5*∑[A000045(6*n)]+4`
-/

namespace A157093.P10043825940946245641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A157093.P10043825940946245641

namespace A157093

/-- `5*∑[A000045(6*n)]+4` -/
def P10043825940946245641.Spec : Prop :=
  ∀ n, P10043825940946245641.a n = A157093 n

end A157093

/-! ## A157093.P13017773869601045425

`2*(A049663(n)-A049660(n)+1)`
-/

namespace A157093.P13017773869601045425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049663 n - A049660 n + 1)

end

end A157093.P13017773869601045425

namespace A157093

/-- `2*(A049663(n)-A049660(n)+1)` -/
def P13017773869601045425.Spec : Prop :=
  ∀ n, P13017773869601045425.a n = A157093 n

end A157093

/-! ## A157093.P4241727441473913693

`A254962(2*n+1)+A254962(2*(n+1))+1`
-/

namespace A157093.P4241727441473913693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254962 (2 * n + 1) + (A254962 (2 * (n + 1)) + 1)

end

end A157093.P4241727441473913693

namespace A157093

/-- `A254962(2*n+1)+A254962(2*(n+1))+1` -/
def P4241727441473913693.Spec : Prop :=
  ∀ n, P4241727441473913693.a n = A157093 n

end A157093

/-!
# A157094: Denominator of Euler(n, 1/27).

The programs for A157094, there is no canonical definition to state claims against.
-/

/-! ## A157094.P9883834735675207299

`2^val(n+1, 2)*3^(3*n)`
-/

namespace A157094.P9883834735675207299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ (3 * n)

end

end A157094.P9883834735675207299

/-! ## A157094.P11867288985584534591

`3^n*A156218(n)`
-/

namespace A157094.P11867288985584534591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A156218 n

end

end A157094.P11867288985584534591

/-! ## A157094.P1842194255256434106

`27^n*A006519(n+1)`
-/

namespace A157094.P1842194255256434106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 ^ n : ℤ) * A006519 (n + 1)

end

end A157094.P1842194255256434106

/-! ## A157094.P17225306903209566580

`27^n*A000010(xor(n, n+1)+1)`
-/

namespace A157094.P17225306903209566580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 ^ n : ℤ) * A000010 (Nat.xor n (n + 1) + 1)

end

end A157094.P17225306903209566580

/-! ## A157094.P10857547781195274582

`2^A007814(n+1)*3^n*3^n*3^n`
-/

namespace A157094.P10857547781195274582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 ^ n : ℚ) * (3 ^ n : ℚ) * (3 ^ n : ℚ)

end

end A157094.P10857547781195274582

/-! ## A157094.P10439002486678009144

`A000244(n)²*A156180(n)`
-/

namespace A157094.P10439002486678009144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A156180 n

end

end A157094.P10439002486678009144

/-! ## A157094.P18345050375222175377

`A000244(2*n)*A156180(n)`
-/

namespace A157094.P18345050375222175377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) * A156180 n

end

end A157094.P18345050375222175377

/-! ## A157094.P10118003735135235632

`A156180(2*n)*A156180(n)`
-/

namespace A157094.P10118003735135235632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156180 (2 * n) * A156180 n

end

end A157094.P10118003735135235632

/-! ## A157094.P1372387956608001173

`A006519(n+1)*A017913(A008458(n))`
-/

namespace A157094.P1372387956608001173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A017913 (A008458 n).toNat

end

end A157094.P1372387956608001173

/-! ## A157094.P5724851188135258662

`A000244(n)*A006519(n+1)*A000244(n)²`
-/

namespace A157094.P5724851188135258662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A006519 (n + 1) * A000244 n ^ 2

end

end A157094.P5724851188135258662

/-!
# A157096: Consider all consecutive integer Pythagorean 11-tuples (X, X+1, X+2, X+3, X+4, X+5, Z-4, Z-3, Z-2, Z-1, Z) ordered by increasing Z; sequence gives X values.

The programs for A157096, the canonical program `A157096.P15113346258787831631` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157096 has offset 0).

The definition of A157096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157096.P15113346258787831631

`22*a(n-1)-a(n-2)+50` with `a(0)=0, a(1)=55`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157096

/-- `22*a(n-1)-a(n-2)+50` -/
def P15113346258787831631.Spec : Prop :=
  ∀ n, P15113346258787831631.a n = A157096 n

theorem P15113346258787831631.correct : P15113346258787831631.Spec := by
  intro n
  simp only [A157096]

end A157096

/-! ## A157096.P11386447977179251203

`5*(∑[A077422(n)]-1)`
-/

namespace A157096.P11386447977179251203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A157096.P11386447977179251203

namespace A157096

/-- `5*(∑[A077422(n)]-1)` -/
def P11386447977179251203.Spec : Prop :=
  ∀ n, P11386447977179251203.a n = A157096 n

end A157096

/-! ## A157096.P5983230954015376901

`5*(A133285(n+1)-1)`
-/

namespace A157096.P5983230954015376901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A133285 (n + 1) - 1)

end

end A157096.P5983230954015376901

namespace A157096

/-- `5*(A133285(n+1)-1)` -/
def P5983230954015376901.Spec : Prop :=
  ∀ n, P5983230954015376901.a n = A157096 n

end A157096

/-! ## A157096.P13369756046714976594

`(A041048(2*n)-5)/2`
-/

namespace A157096.P13369756046714976594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041048 (2 * n) - 5 : ℚ) / 2

end

end A157096.P13369756046714976594

namespace A157096

/-- `(A041048(2*n)-5)/2` -/
def P13369756046714976594.Spec : Prop :=
  ∀ n, P13369756046714976594.a n = (A157096 n : ℚ)

end A157096

/-! ## A157096.P1004057032649956991

`5*(A077421(n)-A254782(n+1))`
-/

namespace A157096.P1004057032649956991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A077421 n - A254782 (n + 1))

end

end A157096.P1004057032649956991

namespace A157096

/-- `5*(A077421(n)-A254782(n+1))` -/
def P1004057032649956991.Spec : Prop :=
  ∀ n, P1004057032649956991.a n = A157096 n

end A157096

/-!
# A157097: Consider all Consecutive Integer Pythagorean 11-tuples (X, X+1, X+2, X+3, X+4, X+5, Z-4, Z-3, Z-2, Z-1, Z) ordered by increasing Z; sequence gives Z values.

The programs for A157097, the canonical program `A157097.P4482997832414026540` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157097 has offset 0).

The definition of A157097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157097.P4482997832414026540

`22*a(n-1)-a(n-2)-40` with `a(0)=5, a(1)=65`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A157097

/-- `22*a(n-1)-a(n-2)-40` -/
def P4482997832414026540.Spec : Prop :=
  ∀ n, P4482997832414026540.a n = A157097 n

theorem P4482997832414026540.correct : P4482997832414026540.Spec := by
  intro n
  simp only [A157097]

end A157097

/-! ## A157097.P8928213074054003676

`A133275(n+1)+2`
-/

namespace A157097.P8928213074054003676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133275 (n + 1) + 2

end

end A157097.P8928213074054003676

namespace A157097

/-- `A133275(n+1)+2` -/
def P8928213074054003676.Spec : Prop :=
  ∀ n, P8928213074054003676.a n = A157097 n

end A157097

/-! ## A157097.P1558470846155863368

`5*A133284(n+1)`
-/

namespace A157097.P1558470846155863368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A133284 (n + 1)

end

end A157097.P1558470846155863368

namespace A157097

/-- `5*A133284(n+1)` -/
def P1558470846155863368.Spec : Prop :=
  ∀ n, P1558470846155863368.a n = A157097 n

end A157097

/-! ## A157097.P5430462014044711839

`3*A157014(n+1)+2`
-/

namespace A157097.P5430462014044711839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157014 (n + 1) + 2

end

end A157097.P5430462014044711839

namespace A157097

/-- `3*A157014(n+1)+2` -/
def P5430462014044711839.Spec : Prop :=
  ∀ n, P5430462014044711839.a n = A157097 n

end A157097

/-! ## A157097.P7920587681272074739

`3*A041049(2*n)+2`
-/

namespace A157097.P7920587681272074739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041049 (2 * n) + 2

end

end A157097.P7920587681272074739

namespace A157097

/-- `3*A041049(2*n)+2` -/
def P7920587681272074739.Spec : Prop :=
  ∀ n, P7920587681272074739.a n = A157097 n

end A157097

/-! ## A157097.P8357422273169355234

`6*A254782(n+1)-1`
-/

namespace A157097.P8357422273169355234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A254782 (n + 1) - 1

end

end A157097.P8357422273169355234

namespace A157097

/-- `6*A254782(n+1)-1` -/
def P8357422273169355234.Spec : Prop :=
  ∀ n, P8357422273169355234.a n = A157097 n

end A157097

/-! ## A157097.P8378748522758159766

`A157014(n+1)+lcm(4, A254782(n+1))`
-/

namespace A157097.P8378748522758159766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157014 (n + 1) + (Int.lcm 4 (A254782 (n + 1)) : ℤ)

end

end A157097.P8378748522758159766

namespace A157097

/-- `A157014(n+1)+lcm(4, A254782(n+1))` -/
def P8378748522758159766.Spec : Prop :=
  ∀ n, P8378748522758159766.a n = A157097 n

end A157097

