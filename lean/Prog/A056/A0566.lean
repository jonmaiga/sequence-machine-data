import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A056600: a(n) is smallest number A such that there is an equality of the form (A=Product of n distinct primes) = (B=Product of n distinct primes) + (C=Product of n distinct primes) with gcd(A,B) = gcd(B,C) = gcd(A,C) = 1, B < C.

The programs for A056600, there is no canonical definition to state claims against.
-/

/-! ## A056600.P5151773031075279432

`A069718(n+1)+A069717(n+1)`
-/

namespace A056600.P5151773031075279432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069718 (n + 1) + A069717 (n + 1)

end

end A056600.P5151773031075279432

/-!
# A056601: Series for 2nd perpendicular moment of square lattice bond percolation near a wall (eventually goes negative).

The programs for A056601, there is no canonical definition to state claims against.
-/

/-! ## A056601.P11024989333006648189

`∑[A265359(record[A110613(n)])]`
-/

namespace A056601.P11024989333006648189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056601.P11024989333006648189

/-! ## A056601.P7788757249813565783

`∑[A265359(A110613(n+1))]+1`
-/

namespace A056601.P7788757249813565783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A110613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A056601.P7788757249813565783

/-! ## A056601.P3089576027811818527

`∑[∑[A175857(2^n)]]`
-/

namespace A056601.P3089576027811818527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175857 (2 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056601.P3089576027811818527

/-!
# A056603: Squarefree kernels of distinct values of lcm(1,...,m) (A051451).

The programs for A056603, there is no canonical definition to state claims against.
-/

/-! ## A056603.P6740600888065854441

`lcm(a(n-1), A025473(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A056603.P6740600888065854441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A025473 (n + 1))

end

end A056603.P6740600888065854441

/-! ## A056603.P7580379065832027097

`A034386(A000961(n+1))`
-/

namespace A056603.P7580379065832027097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A000961 (n + 1)).toNat

end

end A056603.P7580379065832027097

/-! ## A056603.P11888138542643244931

`A034386(A081217(n+1))`
-/

namespace A056603.P11888138542643244931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A081217 (n + 1)).toNat

end

end A056603.P11888138542643244931

/-! ## A056603.P11713430979665853830

`A300951(A138929(n+1))`
-/

namespace A056603.P11713430979665853830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A138929 (n + 1)).toNat

end

end A056603.P11713430979665853830

/-! ## A056603.P5227886497061397439

`A300951(A309269(n+1))`
-/

namespace A056603.P5227886497061397439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A309269 (n + 1)).toNat

end

end A056603.P5227886497061397439

/-! ## A056603.P7111396529926601780

`A034386(A181062(n+2))`
-/

namespace A056603.P7111396529926601780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A181062 (n + 2)).toNat

end

end A056603.P7111396529926601780

/-! ## A056603.P8865598969401332662

`A034386(eq[1, A066882(n)])`
-/

namespace A056603.P8865598969401332662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056603.P8865598969401332662

/-! ## A056603.P11624713889017412480

`A034386(record[A028233(n+1)])`
-/

namespace A056603.P11624713889017412480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056603.P11624713889017412480

/-! ## A056603.P16540530430533112849

`A034386(record[A100994(n+1)])`
-/

namespace A056603.P16540530430533112849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056603.P16540530430533112849

/-! ## A056603.P7170057243266794292

`A034386(A246655(n+1)-1)`
-/

namespace A056603.P7170057243266794292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A246655 (n + 1) - 1).toNat

end

end A056603.P7170057243266794292

/-!
# A056604: a(0)=1; thereafter a(n) = lcm(1, 2, 3, 4, ..., prime(n)).

The programs for A056604, there is no canonical definition to state claims against.
-/

/-! ## A056604.P8433428652853456933

`A003418(A008578(n+1))`
-/

namespace A056604.P8433428652853456933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A008578 (n + 1)).toNat

end

end A056604.P8433428652853456933

/-! ## A056604.P9079606012050343988

`A003418(A015919(n+1))`
-/

namespace A056604.P9079606012050343988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A015919 (n + 1)).toNat

end

end A056604.P9079606012050343988

/-! ## A056604.P3405069365585833410

`A003418(A064555(n+1))`
-/

namespace A056604.P3405069365585833410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A064555 (n + 1)).toNat

end

end A056604.P3405069365585833410

/-! ## A056604.P6860200781743249879

`A139550(A001747(n+1))`
-/

namespace A056604.P6860200781743249879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A001747 (n + 1)).toNat

end

end A056604.P6860200781743249879

/-! ## A056604.P5076924930667213600

`A003418(A182986(n+1))`
-/

namespace A056604.P5076924930667213600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A182986 (n + 1)).toNat

end

end A056604.P5076924930667213600

/-! ## A056604.P1207775198667965554

`A003418(A324050(n+1))`
-/

namespace A056604.P1207775198667965554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A324050 (n + 1)).toNat

end

end A056604.P1207775198667965554

/-! ## A056604.P16428646262254222455

`A003418(A158611(n+2))`
-/

namespace A056604.P16428646262254222455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A158611 (n + 2)).toNat

end

end A056604.P16428646262254222455

/-! ## A056604.P6660071108044890374

`A003418(record[A006530(n+1)])`
-/

namespace A056604.P6660071108044890374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056604.P6660071108044890374

/-! ## A056604.P7930628073688680879

`A003418(record[A020639(n+1)])`
-/

namespace A056604.P7930628073688680879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056604.P7930628073688680879

/-! ## A056604.P10262162172719293406

`A309233(record[A006530(n+1)])`
-/

namespace A056604.P10262162172719293406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056604.P10262162172719293406

/-!
# A056606: Squarefree kernel of lcm(binomial(n,0), ..., binomial(n,n)).

The programs for A056606, the canonical program `A056606.P13726235353481560659` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056606 has offset 0).

The definition of A056606 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056606.P13726235353481560659

`A007947(A002944(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056606

/-- `A007947(A002944(n+1))` -/
def P13726235353481560659.Spec : Prop :=
  ∀ n, P13726235353481560659.a n = A056606 n

theorem P13726235353481560659.correct : P13726235353481560659.Spec := by
  intro n
  simp only [A056606]

end A056606

/-! ## A056606.P7086717874217873886

`A034386(n)/A056609(A028310(n))`
-/

namespace A056606.P7086717874217873886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A056609 (A028310 n).toNat : ℚ)

end

end A056606.P7086717874217873886

namespace A056606

/-- `A034386(n)/A056609(A028310(n))` -/
def P7086717874217873886.Spec : Prop :=
  ∀ n, P7086717874217873886.a n = (A056606 n : ℚ)

end A056606

/-! ## A056606.P12710580838786631998

`gcd(A002944(n+1), A034386(n))`
-/

namespace A056606.P12710580838786631998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1)) (A034386 n)

end

end A056606.P12710580838786631998

namespace A056606

/-- `gcd(A002944(n+1), A034386(n))` -/
def P12710580838786631998.Spec : Prop :=
  ∀ n, (P12710580838786631998.a n : ℤ) = A056606 n

end A056606

/-! ## A056606.P1387478229402334012

`gcd(A068510(n+1)+A002944(n+1), A068510(n+1))`
-/

namespace A056606.P1387478229402334012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1) + A002944 (n + 1)) (A068510 (n + 1))

end

end A056606.P1387478229402334012

namespace A056606

/-- `gcd(A068510(n+1)+A002944(n+1), A068510(n+1))` -/
def P1387478229402334012.Spec : Prop :=
  ∀ n, (P1387478229402334012.a n : ℤ) = A056606 n

end A056606

/-! ## A056606.P10089749045379265941

`A066838(n+1)*A293810(A256017(n+1))`
-/

namespace A056606.P10089749045379265941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (n + 1) * A293810 (A256017 (n + 1)).toNat

end

end A056606.P10089749045379265941

namespace A056606

/-- `A066838(n+1)*A293810(A256017(n+1))` -/
def P10089749045379265941.Spec : Prop :=
  ∀ n, P10089749045379265941.a n = A056606 n

end A056606

/-! ## A056606.P7600777964229226046

`gcd(A002944(n+1)², A300951(A014601(n)))`
-/

namespace A056606.P7600777964229226046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1) ^ 2) (A300951 (A014601 n).toNat)

end

end A056606.P7600777964229226046

namespace A056606

/-- `gcd(A002944(n+1)², A300951(A014601(n)))` -/
def P7600777964229226046.Spec : Prop :=
  ∀ n, (P7600777964229226046.a n : ℤ) = A056606 n

end A056606

/-! ## A056606.P12358247055845046950

`gcd(A002944(n+1)², A002110(n))`
-/

namespace A056606.P12358247055845046950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1) ^ 2) (A002110 n)

end

end A056606.P12358247055845046950

namespace A056606

/-- `gcd(A002944(n+1)², A002110(n))` -/
def P12358247055845046950.Spec : Prop :=
  ∀ n, (P12358247055845046950.a n : ℤ) = A056606 n

end A056606

/-!
# A056607: a(n) is the n-th primorial divided by squarefree kernel of corresponding central binomial coefficient.

The programs for A056607, there is no canonical definition to state claims against.
-/

/-! ## A056607.P17725274653819121326

`A002110(n+1)/A048633(n+1)`
-/

namespace A056607.P17725274653819121326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056607.P17725274653819121326

/-! ## A056607.P11460136640085629868

`Δ[A143293(n)]/A048633(n+1)`
-/

namespace A056607.P11460136640085629868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056607.P11460136640085629868

/-! ## A056607.P10111201223584210341

`A002110(n+1)/(A048681(n+1)-A048682(n+1))`
-/

namespace A056607.P10111201223584210341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A048681 (n + 1) - A048682 (n + 1) : ℚ)

end

end A056607.P10111201223584210341

/-! ## A056607.P17821397405584840915

`A002110(n+1)/A007947(A001405(n+1))`
-/

namespace A056607.P17821397405584840915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A007947 (A001405 (n + 1)).toNat : ℚ)

end

end A056607.P17821397405584840915

/-!
# A056608: Least prime factor of the n-th composite number.

The programs for A056608, there is no canonical definition to state claims against.
-/

/-! ## A056608.P12256704911818935102

`A020639(A002808(n+1))`
-/

namespace A056608.P12256704911818935102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002808 (n + 1)).toNat

end

end A056608.P12256704911818935102

/-! ## A056608.P11162108009125595694

`A000040(A118663(n+1))`
-/

namespace A056608.P11162108009125595694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A118663 (n + 1)).toNat

end

end A056608.P11162108009125595694

/-! ## A056608.P3597614966379816026

`p?[A107286(n)]`
-/

namespace A056608.P3597614966379816026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056608.P3597614966379816026

/-! ## A056608.P11140664846834867642

`p?[A074828(n+1)]`
-/

namespace A056608.P11140664846834867642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056608.P11140664846834867642

/-! ## A056608.P1377337050816738389

`p?[A020639(n+2)%(n+1)]`
-/

namespace A056608.P1377337050816738389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056608.P1377337050816738389

/-! ## A056608.P15568829890147882021

`A020639(Δ[A053767(n)])`
-/

namespace A056608.P15568829890147882021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A056608.P15568829890147882021

/-! ## A056608.P10689075562471603898

`A107286(Δ[A053767(n)])`
-/

namespace A056608.P10689075562471603898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (f1 (n + 1) - f1 n).toNat

end

end A056608.P10689075562471603898

/-! ## A056608.P3654444688489981325

`A020639(comp[A351078(n)])`
-/

namespace A056608.P3654444688489981325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A056608.P3654444688489981325

/-! ## A056608.P5726480739298330518

`A007918(A073813(n+1))`
-/

namespace A056608.P5726480739298330518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A073813 (n + 1)).toNat

end

end A056608.P5726480739298330518

/-! ## A056608.P5949339366025732798

`A020639(A161003(n+1))`
-/

namespace A056608.P5949339366025732798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161003 (n + 1)).toNat

end

end A056608.P5949339366025732798

/-! ## A056608.P14705650920780778341

`A073813(A348776(n+1))`
-/

namespace A056608.P14705650920780778341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073813 (A348776 (n + 1)).toNat

end

end A056608.P14705650920780778341

/-! ## A056608.P7456279318593058024

`A020639(A018252(n+2))`
-/

namespace A056608.P7456279318593058024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 2)).toNat

end

end A056608.P7456279318593058024

/-! ## A056608.P254470255887048926

`A020639(A141468(n+3))`
-/

namespace A056608.P254470255887048926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141468 (n + 3)).toNat

end

end A056608.P254470255887048926

/-! ## A056608.P4730128219511825715

`A020639(lt[1, A107286(n)])`
-/

namespace A056608.P4730128219511825715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P4730128219511825715

/-! ## A056608.P5273342154523931560

`A074828(lt[1, A107286(n)])`
-/

namespace A056608.P5273342154523931560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P5273342154523931560

/-! ## A056608.P16871836953838755939

`A020639(lt[1, A175126(n)])`
-/

namespace A056608.P16871836953838755939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P16871836953838755939

/-! ## A056608.P2038875570159055079

`A107286(lt[1, A107286(n)])`
-/

namespace A056608.P2038875570159055079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P2038875570159055079

/-! ## A056608.P16075680172361777574

`A020639(lt[1, A328847(n)])`
-/

namespace A056608.P16075680172361777574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P16075680172361777574

/-! ## A056608.P11089019740575615440

`A020639(lt[2, A077462(n)])`
-/

namespace A056608.P11089019740575615440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P11089019740575615440

/-! ## A056608.P12320513392119579707

`A074828(lt[2, A077462(n)])`
-/

namespace A056608.P12320513392119579707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A056608.P12320513392119579707

/-!
# A056609: a(n) = rad(n!)/rad(A001142(n)) where rad(n) is the squarefree kernel of n, A007947(n).

The programs for A056609, the canonical program `A056609.P7907893811472579024` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056609 has offset 1).

The definition of A056609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A056606, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056609.P7907893811472579024

`A034386(n+1)/A056606(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056609

/-- `A034386(n+1)/A056606(n+1)` -/
def P7907893811472579024.Spec : Prop :=
  ∀ n, P7907893811472579024.a n = (A056609 (n + 1) : ℚ)

end A056609

/-! ## A056609.P13875269911200528986

`((n+1)%A256267(n+2))%(n+1)+1`
-/

namespace A056609.P13875269911200528986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A256267 (n + 2))) (n + 1 : ℤ) + 1

end

end A056609.P13875269911200528986

namespace A056609

/-- `((n+1)%A256267(n+2))%(n+1)+1` -/
def P13875269911200528986.Spec : Prop :=
  ∀ n, P13875269911200528986.a n = A056609 (n + 1)

end A056609

/-! ## A056609.P17493075644880643491

`gcd(A144845(n), A256267(n+2))`
-/

namespace A056609.P17493075644880643491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A256267 (n + 2))

end

end A056609.P17493075644880643491

namespace A056609

/-- `gcd(A144845(n), A256267(n+2))` -/
def P17493075644880643491.Spec : Prop :=
  ∀ n, (P17493075644880643491.a n : ℤ) = A056609 (n + 1)

end A056609

/-! ## A056609.P15166522117420756436

`gcd(A195441(n), A256267(A020725(n+1)))`
-/

namespace A056609.P15166522117420756436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195441 n) (A256267 (A020725 (n + 1)).toNat)

end

end A056609.P15166522117420756436

namespace A056609

/-- `gcd(A195441(n), A256267(A020725(n+1)))` -/
def P15166522117420756436.Spec : Prop :=
  ∀ n, (P15166522117420756436.a n : ℤ) = A056609 (n + 1)

end A056609

/-! ## A056609.P12659670343781013699

`A056610(n+1)/A056611(n+1)`
-/

namespace A056609.P12659670343781013699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056610 (n + 1) : ℚ) / (A056611 (n + 1) : ℚ)

end

end A056609.P12659670343781013699

namespace A056609

/-- `A056610(n+1)/A056611(n+1)` -/
def P12659670343781013699.Spec : Prop :=
  ∀ n, P12659670343781013699.a n = (A056609 (n + 1) : ℚ)

end A056609

/-! ## A056609.P18063127892053022869

`A048633(n+1)/A056606(n+1)*A056610(n+1)`
-/

namespace A056609.P18063127892053022869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048633 (n + 1) : ℚ) / (A056606 (n + 1) : ℚ) * (A056610 (n + 1) : ℚ)

end

end A056609.P18063127892053022869

namespace A056609

/-- `A048633(n+1)/A056606(n+1)*A056610(n+1)` -/
def P18063127892053022869.Spec : Prop :=
  ∀ n, P18063127892053022869.a n = (A056609 (n + 1) : ℚ)

end A056609

/-! ## A056609.P15348529400785769412

`lcm(A056606(n+1), A085392(n+2))/A056606(n+1)`
-/

namespace A056609.P15348529400785769412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A056606 (n + 1)) (A085392 (n + 2)) : ℚ) / (A056606 (n + 1) : ℚ)

end

end A056609.P15348529400785769412

namespace A056609

/-- `lcm(A056606(n+1), A085392(n+2))/A056606(n+1)` -/
def P15348529400785769412.Spec : Prop :=
  ∀ n, P15348529400785769412.a n = (A056609 (n + 1) : ℚ)

end A056609

/-! ## A056609.P17764341260246865786

`A056610(n+1)/gcd(A056610(n+1), A093432(n+1))`
-/

namespace A056609.P17764341260246865786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056610 (n + 1) : ℚ) / (Int.gcd (A056610 (n + 1)) (A093432 (n + 1)) : ℚ)

end

end A056609.P17764341260246865786

namespace A056609

/-- `A056610(n+1)/gcd(A056610(n+1), A093432(n+1))` -/
def P17764341260246865786.Spec : Prop :=
  ∀ n, P17764341260246865786.a n = (A056609 (n + 1) : ℚ)

end A056609

/-! ## A056609.P17664089356965658329

`A034386(n+1)/gcd(A002944(n+2), A034386(n+1))`
-/

namespace A056609.P17664089356965658329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (Int.gcd (A002944 (n + 2)) (A034386 (n + 1)) : ℚ)

end

end A056609.P17664089356965658329

namespace A056609

/-- `A034386(n+1)/gcd(A002944(n+2), A034386(n+1))` -/
def P17664089356965658329.Spec : Prop :=
  ∀ n, P17664089356965658329.a n = (A056609 (n + 1) : ℚ)

end A056609

/-!
# A056610: Quotient: squarefree kernel of lcm(1,..,n) (or of n!) divided by kernel of central binomial coefficient.

The programs for A056610, the canonical program `A056610.P1504894740398831934` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056610 has offset 1).

The definition of A056610 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A048633, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056610.P1504894740398831934

`A034386(n+1)/A048633(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056610

/-- `A034386(n+1)/A048633(n+1)` -/
def P1504894740398831934.Spec : Prop :=
  ∀ n, P1504894740398831934.a n = (A056610 (n + 1) : ℚ)

end A056610

/-! ## A056610.P731364225588410373

`A056609(n+1)*A056611(n+1)`
-/

namespace A056610.P731364225588410373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (n + 1) * A056611 (n + 1)

end

end A056610.P731364225588410373

namespace A056610

/-- `A056609(n+1)*A056611(n+1)` -/
def P731364225588410373.Spec : Prop :=
  ∀ n, P731364225588410373.a n = A056610 (n + 1)

end A056610

/-! ## A056610.P1408482693120679362

`lcm(A056609(n+1), A056611(Δ[n²]-n))`
-/

namespace A056610.P1408482693120679362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056609 (n + 1)) (A056611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A056610.P1408482693120679362

namespace A056610

/-- `lcm(A056609(n+1), A056611(Δ[n²]-n))` -/
def P1408482693120679362.Spec : Prop :=
  ∀ n, (P1408482693120679362.a n : ℤ) = A056610 (n + 1)

end A056610

/-! ## A056610.P2183281257970725507

`∏[A089026(n+1)]/A048633(n+1)`
-/

namespace A056610.P2183281257970725507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056610.P2183281257970725507

namespace A056610

/-- `∏[A089026(n+1)]/A048633(n+1)` -/
def P2183281257970725507.Spec : Prop :=
  ∀ n, P2183281257970725507.a n = (A056610 (n + 1) : ℚ)

end A056610

/-! ## A056610.P13447054302786528938

`lcm(A007947(n+1), A056606(n))/A048633(n+1)`
-/

namespace A056610.P13447054302786528938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007947 (n + 1)) (A056606 n) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056610.P13447054302786528938

namespace A056610

/-- `lcm(A007947(n+1), A056606(n))/A048633(n+1)` -/
def P13447054302786528938.Spec : Prop :=
  ∀ n, P13447054302786528938.a n = (A056610 (n + 1) : ℚ)

end A056610

/-! ## A056610.P6872144786934843740

`A034386(n+1)/gcd(A001405(n+1), A034386(n+1))`
-/

namespace A056610.P6872144786934843740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (Int.gcd (A001405 (n + 1)) (A034386 (n + 1)) : ℚ)

end

end A056610.P6872144786934843740

namespace A056610

/-- `A034386(n+1)/gcd(A001405(n+1), A034386(n+1))` -/
def P6872144786934843740.Spec : Prop :=
  ∀ n, P6872144786934843740.a n = (A056610 (n + 1) : ℚ)

end A056610

/-! ## A056610.P16897603312596666339

`gcd(n!, A056607(n+1))`
-/

namespace A056610.P16897603312596666339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A056607 (n + 1))

end

end A056610.P16897603312596666339

namespace A056610

/-- `gcd(n!, A056607(n+1))` -/
def P16897603312596666339.Spec : Prop :=
  ∀ n, (P16897603312596666339.a n : ℤ) = A056610 (n + 1)

end A056610

/-!
# A056611: Quotient: squarefree kernel of A002944(n) divided by that of A001405.

The programs for A056611, the canonical program `A056611.P9328325300768638059` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056611 has offset 1).

The definition of A056611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056611.P9328325300768638059

`A056610(n+1)/A056609(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056611

/-- `A056610(n+1)/A056609(n+1)` -/
def P9328325300768638059.Spec : Prop :=
  ∀ n, P9328325300768638059.a n = (A056611 (n + 1) : ℚ)

end A056611

/-! ## A056611.P15738812742961705297

`A056606(n+1)/A048633(n+1)`
-/

namespace A056611.P15738812742961705297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056606 (n + 1) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056611.P15738812742961705297

namespace A056611

/-- `A056606(n+1)/A048633(n+1)` -/
def P15738812742961705297.Spec : Prop :=
  ∀ n, P15738812742961705297.a n = (A056611 (n + 1) : ℚ)

end A056611

/-! ## A056611.P7778021069952368078

`A056606(n+1)/(A048681(n+1)-A048682(n+1))`
-/

namespace A056611.P7778021069952368078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056606 (n + 1) : ℚ) / (A048681 (n + 1) - A048682 (n + 1) : ℚ)

end

end A056611.P7778021069952368078

namespace A056611

/-- `A056606(n+1)/(A048681(n+1)-A048682(n+1))` -/
def P7778021069952368078.Spec : Prop :=
  ∀ n, P7778021069952368078.a n = (A056611 (n + 1) : ℚ)

end A056611

/-! ## A056611.P15889673545495655837

`A056606(n+1)/gcd(A001405(n+1), A056606(n+1))`
-/

namespace A056611.P15889673545495655837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056606 (n + 1) : ℚ) / (Int.gcd (A001405 (n + 1)) (A056606 (n + 1)) : ℚ)

end

end A056611.P15889673545495655837

namespace A056611

/-- `A056606(n+1)/gcd(A001405(n+1), A056606(n+1))` -/
def P15889673545495655837.Spec : Prop :=
  ∀ n, P15889673545495655837.a n = (A056611 (n + 1) : ℚ)

end A056611

/-! ## A056611.P9855379480130732325

`gcd(A056610(n+1), A093432(n+1))`
-/

namespace A056611.P9855379480130732325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056610 (n + 1)) (A093432 (n + 1))

end

end A056611.P9855379480130732325

namespace A056611

/-- `gcd(A056610(n+1), A093432(n+1))` -/
def P9855379480130732325.Spec : Prop :=
  ∀ n, (P9855379480130732325.a n : ℤ) = A056611 (n + 1)

end A056611

/-!
# A056612: a(n) = gcd(n!, n!*(1 + 1/2 + 1/3 + ... + 1/n)).

The programs for A056612, the canonical program `A056612.P14448878183547563608` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056612 has offset 1).

The definition of A056612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002805, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056612.P17675194826868392623

`A000254(n+1)/A001008(n+1)`
-/

namespace A056612.P17675194826868392623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ)

end

end A056612.P17675194826868392623

namespace A056612

/-- `A000254(n+1)/A001008(n+1)` -/
def P17675194826868392623.Spec : Prop :=
  ∀ n, P17675194826868392623.a n = (A056612 (n + 1) : ℚ)

end A056612

/-! ## A056612.P14448878183547563608

`A000142(n+1)/A002805(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A056612

/-- `A000142(n+1)/A002805(n+1)` -/
def P14448878183547563608.Spec : Prop :=
  ∀ n, P14448878183547563608.a n = (A056612 (n + 1) : ℚ)

end A056612

/-! ## A056612.P5258413646816468748

`a(n-1)*A335024(n)` with `a(0)=1`
-/

namespace A056612.P5258413646816468748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A335024 n

end

end A056612.P5258413646816468748

namespace A056612

/-- `a(n-1)*A335024(n)` -/
def P5258413646816468748.Spec : Prop :=
  ∀ n, P5258413646816468748.a n = A056612 (n + 1)

end A056612

/-! ## A056612.P1641834341102528766

`∏[A335024(abs(1-n)+1)]`
-/

namespace A056612.P1641834341102528766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056612.P1641834341102528766

namespace A056612

/-- `∏[A335024(abs(1-n)+1)]` -/
def P1641834341102528766.Spec : Prop :=
  ∀ n, P1641834341102528766.a n = A056612 (n + 1)

end A056612

/-! ## A056612.P12301673325778099408

`A025527(n+1)*A110566(n+1)`
-/

namespace A056612.P12301673325778099408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A110566 (n + 1)

end

end A056612.P12301673325778099408

namespace A056612

/-- `A025527(n+1)*A110566(n+1)` -/
def P12301673325778099408.Spec : Prop :=
  ∀ n, P12301673325778099408.a n = A056612 (n + 1)

end A056612

/-! ## A056612.P12587707922160275624

`∏[A048671(n+1)]*A110566(n+1)`
-/

namespace A056612.P12587707922160275624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A110566 (n + 1)

end

end A056612.P12587707922160275624

namespace A056612

/-- `∏[A048671(n+1)]*A110566(n+1)` -/
def P12587707922160275624.Spec : Prop :=
  ∀ n, P12587707922160275624.a n = A056612 (n + 1)

end A056612

/-! ## A056612.P15337341291389601374

`A003418(n+1)/A002805(n+1)*A025527(n+1)`
-/

namespace A056612.P15337341291389601374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ) * (A025527 (n + 1) : ℚ)

end

end A056612.P15337341291389601374

namespace A056612

/-- `A003418(n+1)/A002805(n+1)*A025527(n+1)` -/
def P15337341291389601374.Spec : Prop :=
  ∀ n, P15337341291389601374.a n = (A056612 (n + 1) : ℚ)

end A056612

/-! ## A056612.P10927119612020349306

`A025527(n+1)/A001008(n+1)*A025529(n+1)`
-/

namespace A056612.P10927119612020349306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025527 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ) * (A025529 (n + 1) : ℚ)

end

end A056612.P10927119612020349306

namespace A056612

/-- `A025527(n+1)/A001008(n+1)*A025529(n+1)` -/
def P10927119612020349306.Spec : Prop :=
  ∀ n, P10927119612020349306.a n = (A056612 (n + 1) : ℚ)

end A056612

/-! ## A056612.P9140045205818624878

`∏[A335024(n+1)]/A335024(n+1)`
-/

namespace A056612.P9140045205818624878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A335024 (n + 1) : ℚ)

end

end A056612.P9140045205818624878

namespace A056612

/-- `∏[A335024(n+1)]/A335024(n+1)` -/
def P9140045205818624878.Spec : Prop :=
  ∀ n, P9140045205818624878.a n = (A056612 (n + 1) : ℚ)

end A056612

/-! ## A056612.P4399512865845511681

`Δ[A007489(n)]/A002805(n+1)`
-/

namespace A056612.P4399512865845511681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A002805 (n + 1) : ℚ)

end

end A056612.P4399512865845511681

namespace A056612

/-- `Δ[A007489(n)]/A002805(n+1)` -/
def P4399512865845511681.Spec : Prop :=
  ∀ n, P4399512865845511681.a n = (A056612 (n + 1) : ℚ)

end A056612

/-!
# A056613: Number of n-celled pseudo still lifes in Conway's Game of Life, up to rotation and reflection.

The programs for A056613, there is no canonical definition to state claims against.
-/

/-! ## A056613.P8996756906276405242

`A085863(A116584(n+1)+A000065(n))`
-/

namespace A056613.P8996756906276405242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (A116584 (n + 1) + A000065 n).toNat

end

end A056613.P8996756906276405242

/-! ## A056613.P9221245346673074492

`A085863(A000065(n)+∑[A002863(n+1)])`
-/

namespace A056613.P9221245346673074492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (A000065 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056613.P9221245346673074492

/-! ## A056613.P14309887519821696138

`A000045(A146660(n+1))%A146686(n+1)`
-/

namespace A056613.P14309887519821696138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A146660 (n + 1)).toNat) (A146686 (n + 1))

end

end A056613.P14309887519821696138

/-! ## A056613.P1682349422149447420

`A257726(A006926(n))%A023631(3*n+1)`
-/

namespace A056613.P1682349422149447420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257726 (A006926 n).toNat) (A023631 (3 * n + 1))

end

end A056613.P1682349422149447420

/-!
# A056615: Binomial(2*n - 1, n - 1) - 1 (mod n^2).

The programs for A056615, the canonical program `A056615.P1407836327564812227` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056615 has offset 1).

The definition of A056615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056615.P1407836327564812227

`(A099908(n+1)-1)%(n+1)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056615

/-- `(A099908(n+1)-1)%(n+1)²` -/
def P1407836327564812227.Spec : Prop :=
  ∀ n, P1407836327564812227.a n = A056615 (n + 1)

theorem P1407836327564812227.correct : P1407836327564812227.Spec := by
  intro n
  simp only [A056615, Nat.add_sub_cancel]

end A056615

/-! ## A056615.P8400695506653428197

`(A099906(n+1)-1)%A063673(n+1)`
-/

namespace A056615.P8400695506653428197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099906 (n + 1) - 1) (A063673 (n + 1))

end

end A056615.P8400695506653428197

namespace A056615

/-- `(A099906(n+1)-1)%A063673(n+1)` -/
def P8400695506653428197.Spec : Prop :=
  ∀ n, P8400695506653428197.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P3066484873814149150

`A099906(n+1)-A011558(∑{d}[n, A000010(#²)])`
-/

namespace A056615.P3066484873814149150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1) - A011558 (∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ 2)).toNat

end

end A056615.P3066484873814149150

namespace A056615

/-- `A099906(n+1)-A011558(∑{d}[n, A000010(#²)])` -/
def P3066484873814149150.Spec : Prop :=
  ∀ n, P3066484873814149150.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P15684820970028562073

`A099906(n+1)-A001221(A213178(n))`
-/

namespace A056615.P15684820970028562073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1) - A001221 (A213178 n).toNat

end

end A056615.P15684820970028562073

namespace A056615

/-- `A099906(n+1)-A001221(A213178(n))` -/
def P15684820970028562073.Spec : Prop :=
  ∀ n, P15684820970028562073.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P7953983865992835133

`A099906(n+1)+A322860(A213178(n)+1)-1`
-/

namespace A056615.P7953983865992835133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1) + (A322860 (A213178 n + 1).toNat - 1)

end

end A056615.P7953983865992835133

namespace A056615

/-- `A099906(n+1)+A322860(A213178(n)+1)-1` -/
def P7953983865992835133.Spec : Prop :=
  ∀ n, P7953983865992835133.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P17888936812888108527

`A099906(n+1)-A195150(A005384(n+1))`
-/

namespace A056615.P17888936812888108527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1) - A195150 (A005384 (n + 1)).toNat

end

end A056615.P17888936812888108527

namespace A056615

/-- `A099906(n+1)-A195150(A005384(n+1))` -/
def P17888936812888108527.Spec : Prop :=
  ∀ n, P17888936812888108527.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P16345734463909580879

`(A001700(n)-1)%(n+1)²`
-/

namespace A056615.P16345734463909580879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001700 n - 1) ((n + 1) ^ 2 : ℤ)

end

end A056615.P16345734463909580879

namespace A056615

/-- `(A001700(n)-1)%(n+1)²` -/
def P16345734463909580879.Spec : Prop :=
  ∀ n, P16345734463909580879.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P16778669554426361533

`A014495(2*n+1)%(n+1)²`
-/

namespace A056615.P16778669554426361533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014495 (2 * n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A056615.P16778669554426361533

namespace A056615

/-- `A014495(2*n+1)%(n+1)²` -/
def P16778669554426361533.Spec : Prop :=
  ∀ n, P16778669554426361533.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P5099646875590553855

`A047171(2*n+1)%(n+1)²`
-/

namespace A056615.P5099646875590553855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047171 (2 * n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A056615.P5099646875590553855

namespace A056615

/-- `A047171(2*n+1)%(n+1)²` -/
def P5099646875590553855.Spec : Prop :=
  ∀ n, P5099646875590553855.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P17707571522164414327

`(A006481(2*(n+1))-2)%(n+1)²`
-/

namespace A056615.P17707571522164414327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006481 (2 * (n + 1)) - 2) ((n + 1) ^ 2 : ℤ)

end

end A056615.P17707571522164414327

namespace A056615

/-- `(A006481(2*(n+1))-2)%(n+1)²` -/
def P17707571522164414327.Spec : Prop :=
  ∀ n, P17707571522164414327.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P9872983908510308359

`A010763(n)%∑[A005408(n)]`
-/

namespace A056615.P9872983908510308359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010763 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056615.P9872983908510308359

namespace A056615

/-- `A010763(n)%∑[A005408(n)]` -/
def P9872983908510308359.Spec : Prop :=
  ∀ n, P9872983908510308359.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P16518713967727983922

`(A079309(n+1)-A024718(n))%(n+1)²`
-/

namespace A056615.P16518713967727983922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079309 (n + 1) - A024718 n) ((n + 1) ^ 2 : ℤ)

end

end A056615.P16518713967727983922

namespace A056615

/-- `(A079309(n+1)-A024718(n))%(n+1)²` -/
def P16518713967727983922.Spec : Prop :=
  ∀ n, P16518713967727983922.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P2833308000510651961

`A028310(A099906(n+1))-1`
-/

namespace A056615.P2833308000510651961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099906 (n + 1)).toNat - 1

end

end A056615.P2833308000510651961

namespace A056615

/-- `A028310(A099906(n+1))-1` -/
def P2833308000510651961.Spec : Prop :=
  ∀ n, P2833308000510651961.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P597509934657050815

`A023443(A099906(n+1))%A064987(n+1)`
-/

namespace A056615.P597509934657050815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A099906 (n + 1)).toNat) (A064987 (n + 1))

end

end A056615.P597509934657050815

namespace A056615

/-- `A023443(A099906(n+1))%A064987(n+1)` -/
def P597509934657050815.Spec : Prop :=
  ∀ n, P597509934657050815.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P4282018062053770838

`A099906(n+1)+A057428(n²)`
-/

namespace A056615.P4282018062053770838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1) + A057428 (n ^ 2)

end

end A056615.P4282018062053770838

namespace A056615

/-- `A099906(n+1)+A057428(n²)` -/
def P4282018062053770838.Spec : Prop :=
  ∀ n, P4282018062053770838.a n = A056615 (n + 1)

end A056615

/-! ## A056615.P1648952529806680846

`A099906(n+1)-A057427(n²)`
-/

namespace A056615.P1648952529806680846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1) - A057427 (n ^ 2)

end

end A056615.P1648952529806680846

namespace A056615

/-- `A099906(n+1)-A057427(n²)` -/
def P1648952529806680846.Spec : Prop :=
  ∀ n, P1648952529806680846.a n = A056615 (n + 1)

end A056615

/-!
# A056616: Numerator of binomial(2n,n)/(2n+1).

The programs for A056616, the canonical program `A056616.P529159178269024505` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056616 has offset 0).

The definition of A056616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056616.P529159178269024505

`A001316(n)*A055786(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056616

/-- `A001316(n)*A055786(n)` -/
def P529159178269024505.Spec : Prop :=
  ∀ n, P529159178269024505.a n = A056616 n

theorem P529159178269024505.correct : P529159178269024505.Spec := by
  intro n
  simp only [A056616]

end A056616

/-! ## A056616.P11275744233242051288

`A048896(2*n)*A055786(n)`
-/

namespace A056616.P11275744233242051288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) * A055786 n

end

end A056616.P11275744233242051288

namespace A056616

/-- `A048896(2*n)*A055786(n)` -/
def P11275744233242051288.Spec : Prop :=
  ∀ n, P11275744233242051288.a n = A056616 n

end A056616

/-! ## A056616.P3084594550611567025

`A055786(n)*A060632(2*n)`
-/

namespace A056616.P3084594550611567025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n * A060632 (2 * n)

end

end A056616.P3084594550611567025

namespace A056616

/-- `A055786(n)*A060632(2*n)` -/
def P3084594550611567025.Spec : Prop :=
  ∀ n, P3084594550611567025.a n = A056616 n

end A056616

/-! ## A056616.P14843272303303315686

`lcm(A001316(A005843(n)), A055786(n))`
-/

namespace A056616.P14843272303303315686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A005843 n).toNat) (A055786 n)

end

end A056616.P14843272303303315686

namespace A056616

/-- `lcm(A001316(A005843(n)), A055786(n))` -/
def P14843272303303315686.Spec : Prop :=
  ∀ n, (P14843272303303315686.a n : ℤ) = A056616 n

end A056616

/-! ## A056616.P16278949136104176855

`A001405(2*n)/gcd(A001405(2*n), 2*n+1)`
-/

namespace A056616.P16278949136104176855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) : ℚ) / (Int.gcd (A001405 (2 * n)) (2 * n + 1 : ℤ) : ℚ)

end

end A056616.P16278949136104176855

namespace A056616

/-- `A001405(2*n)/gcd(A001405(2*n), 2*n+1)` -/
def P16278949136104176855.Spec : Prop :=
  ∀ n, P16278949136104176855.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P18165074678419617307

`A000984(n)/A001790(n)*A055786(n)`
-/

namespace A056616.P18165074678419617307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A001790 n : ℚ) * (A055786 n : ℚ)

end

end A056616.P18165074678419617307

namespace A056616

/-- `A000984(n)/A001790(n)*A055786(n)` -/
def P18165074678419617307.Spec : Prop :=
  ∀ n, P18165074678419617307.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P8784128637717670288

`A000984(n)/gcd(A000984(n), A005408(n))`
-/

namespace A056616.P8784128637717670288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A000984 n) (A005408 n) : ℚ)

end

end A056616.P8784128637717670288

namespace A056616

/-- `A000984(n)/gcd(A000984(n), A005408(n))` -/
def P8784128637717670288.Spec : Prop :=
  ∀ n, P8784128637717670288.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P7773740101457351601

`A126869(2*n)/gcd(A004273(n+1), A126869(2*n))`
-/

namespace A056616.P7773740101457351601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 (2 * n) : ℚ) / (Int.gcd (A004273 (n + 1)) (A126869 (2 * n)) : ℚ)

end

end A056616.P7773740101457351601

namespace A056616

/-- `A126869(2*n)/gcd(A004273(n+1), A126869(2*n))` -/
def P7773740101457351601.Spec : Prop :=
  ∀ n, P7773740101457351601.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P13255072263403933651

`(n+1)*lcm(2*n+1, A000108(n))/(2*n+1)`
-/

namespace A056616.P13255072263403933651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Int.lcm (2 * n + 1 : ℤ) (A000108 n) : ℚ) / (2 * n + 1 : ℚ))

end

end A056616.P13255072263403933651

namespace A056616

/-- `(n+1)*lcm(2*n+1, A000108(n))/(2*n+1)` -/
def P13255072263403933651.Spec : Prop :=
  ∀ n, P13255072263403933651.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P15905840708992582207

`A056040(2*n)/gcd(A000027(2*n+1), A056040(2*n))`
-/

namespace A056616.P15905840708992582207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n) : ℚ) / (Int.gcd (A000027 (2 * n + 1)) (A056040 (2 * n)) : ℚ)

end

end A056616.P15905840708992582207

namespace A056616

/-- `A056040(2*n)/gcd(A000027(2*n+1), A056040(2*n))` -/
def P15905840708992582207.Spec : Prop :=
  ∀ n, P15905840708992582207.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P5491578335063192941

`A056040(2*n+1)/A181861(2*n+1)`
-/

namespace A056616.P5491578335063192941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n + 1) : ℚ) / (A181861 (2 * n + 1) : ℚ)

end

end A056616.P5491578335063192941

namespace A056616

/-- `A056040(2*n+1)/A181861(2*n+1)` -/
def P5491578335063192941.Spec : Prop :=
  ∀ n, P5491578335063192941.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P15509289119601110988

`A056040(2*n+1)/gcd(A000290(2*n+1), A056040(2*n+1))`
-/

namespace A056616.P15509289119601110988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n + 1) : ℚ) / (Int.gcd (A000290 (2 * n + 1)) (A056040 (2 * n + 1)) : ℚ)

end

end A056616.P15509289119601110988

namespace A056616

/-- `A056040(2*n+1)/gcd(A000290(2*n+1), A056040(2*n+1))` -/
def P15509289119601110988.Spec : Prop :=
  ∀ n, P15509289119601110988.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P14979205948111084966

`A181860(2*n+1)/(2*n+1)²`
-/

namespace A056616.P14979205948111084966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181860 (2 * n + 1) : ℚ) / ((2 * n + 1) ^ 2 : ℚ)

end

end A056616.P14979205948111084966

namespace A056616

/-- `A181860(2*n+1)/(2*n+1)²` -/
def P14979205948111084966.Spec : Prop :=
  ∀ n, P14979205948111084966.a n = (A056616 n : ℚ)

end A056616

/-! ## A056616.P15874785805874334207

`lcm(2*n+1, C(2*n, n))/Δ[n²]`
-/

namespace A056616.P15874785805874334207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (Nat.choose (2 * n) n) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A056616.P15874785805874334207

namespace A056616

/-- `lcm(2*n+1, C(2*n, n))/Δ[n²]` -/
def P15874785805874334207.Spec : Prop :=
  ∀ n, P15874785805874334207.a n = (A056616 n : ℚ)

end A056616

/-!
# A056617: Denominator of binomial(2*n,n) / (2*n+1).

The programs for A056617, the canonical program `A056617.P8542448468284843582` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056617 has offset 0).

The definition of A056617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056617.P8542448468284843582

`(2*n+1)²/A181861(2*n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056617

/-- `(2*n+1)²/A181861(2*n+1)` -/
def P8542448468284843582.Spec : Prop :=
  ∀ n, P8542448468284843582.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P6260744840467003577

`1/A181861(2*n+1)*A000290(2*n+1)`
-/

namespace A056617.P6260744840467003577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A181861 (2 * n + 1) : ℚ) * (A000290 (2 * n + 1) : ℚ)

end

end A056617.P6260744840467003577

namespace A056617

/-- `1/A181861(2*n+1)*A000290(2*n+1)` -/
def P6260744840467003577.Spec : Prop :=
  ∀ n, P6260744840467003577.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P7992203185033241538

`(2*n+1)/A181861(2*n+1)*A109613(2*n)`
-/

namespace A056617.P7992203185033241538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A181861 (2 * n + 1) : ℚ) * (A109613 (2 * n) : ℚ)

end

end A056617.P7992203185033241538

namespace A056617

/-- `(2*n+1)/A181861(2*n+1)*A109613(2*n)` -/
def P7992203185033241538.Spec : Prop :=
  ∀ n, P7992203185033241538.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P11054080707384491003

`A005408(n)/A181861(2*n+1)*A005408(n)`
-/

namespace A056617.P11054080707384491003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A181861 (2 * n + 1) : ℚ) * (A005408 n : ℚ)

end

end A056617.P11054080707384491003

namespace A056617

/-- `A005408(n)/A181861(2*n+1)*A005408(n)` -/
def P11054080707384491003.Spec : Prop :=
  ∀ n, P11054080707384491003.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P627618074202344514

`A065530(2*n+1)/A181861(2*n+1)*A065530(2*n+1)`
-/

namespace A056617.P627618074202344514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065530 (2 * n + 1) : ℚ) / (A181861 (2 * n + 1) : ℚ) * (A065530 (2 * n + 1) : ℚ)

end

end A056617.P627618074202344514

namespace A056617

/-- `A065530(2*n+1)/A181861(2*n+1)*A065530(2*n+1)` -/
def P627618074202344514.Spec : Prop :=
  ∀ n, P627618074202344514.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P11558040201771457594

`A005408(n)/gcd(A002596(n), A005408(n))`
-/

namespace A056617.P11558040201771457594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (Int.gcd (A002596 n) (A005408 n) : ℚ)

end

end A056617.P11558040201771457594

namespace A056617

/-- `A005408(n)/gcd(A002596(n), A005408(n))` -/
def P11558040201771457594.Spec : Prop :=
  ∀ n, P11558040201771457594.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P9290615164790723627

`(2*n+1)/gcd(2*n+1, A000108(n))`
-/

namespace A056617.P9290615164790723627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd (2 * n + 1 : ℤ) (A000108 n) : ℚ)

end

end A056617.P9290615164790723627

namespace A056617

/-- `(2*n+1)/gcd(2*n+1, A000108(n))` -/
def P9290615164790723627.Spec : Prop :=
  ∀ n, P9290615164790723627.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P10685072081219026820

`A000027(2*n+1)/gcd(A000027(2*n+1), A028304(2*n))`
-/

namespace A056617.P10685072081219026820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * n + 1) : ℚ) / (Int.gcd (A000027 (2 * n + 1)) (A028304 (2 * n)) : ℚ)

end

end A056617.P10685072081219026820

namespace A056617

/-- `A000027(2*n+1)/gcd(A000027(2*n+1), A028304(2*n))` -/
def P10685072081219026820.Spec : Prop :=
  ∀ n, P10685072081219026820.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P10971117023378077267

`A028310(2*n+1)/gcd(A028310(2*n+1), A097331(2*n+1))`
-/

namespace A056617.P10971117023378077267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (2 * n + 1) : ℚ) / (Int.gcd (A028310 (2 * n + 1)) (A097331 (2 * n + 1)) : ℚ)

end

end A056617.P10971117023378077267

namespace A056617

/-- `A028310(2*n+1)/gcd(A028310(2*n+1), A097331(2*n+1))` -/
def P10971117023378077267.Spec : Prop :=
  ∀ n, P10971117023378077267.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P10595213985269947210

`(8*n+4)/gcd(8*n+4, A135863(2*n+1))`
-/

namespace A056617.P10595213985269947210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℚ) / (Int.gcd (8 * n + 4 : ℤ) (A135863 (2 * n + 1)) : ℚ)

end

end A056617.P10595213985269947210

namespace A056617

/-- `(8*n+4)/gcd(8*n+4, A135863(2*n+1))` -/
def P10595213985269947210.Spec : Prop :=
  ∀ n, P10595213985269947210.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P17420606790924954824

`A004273(n+1)/gcd(A004273(n+1), A126869(2*n))`
-/

namespace A056617.P17420606790924954824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 (n + 1) : ℚ) / (Int.gcd (A004273 (n + 1)) (A126869 (2 * n)) : ℚ)

end

end A056617.P17420606790924954824

namespace A056617

/-- `A004273(n+1)/gcd(A004273(n+1), A126869(2*n))` -/
def P17420606790924954824.Spec : Prop :=
  ∀ n, P17420606790924954824.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P9334456604531803901

`(2*n+1)²/gcd((2*n+1)², A000984(n+1))`
-/

namespace A056617.P9334456604531803901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) / (Int.gcd ((2 * n + 1) ^ 2 : ℤ) (A000984 (n + 1)) : ℚ)

end

end A056617.P9334456604531803901

namespace A056617

/-- `(2*n+1)²/gcd((2*n+1)², A000984(n+1))` -/
def P9334456604531803901.Spec : Prop :=
  ∀ n, P9334456604531803901.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P16713631201827742615

`A214394(2*n+1)/gcd(A206771(n+1), A214394(2*n+1))`
-/

namespace A056617.P16713631201827742615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214394 (2 * n + 1) : ℚ) / (Int.gcd (A206771 (n + 1)) (A214394 (2 * n + 1)) : ℚ)

end

end A056617.P16713631201827742615

namespace A056617

/-- `A214394(2*n+1)/gcd(A206771(n+1), A214394(2*n+1))` -/
def P16713631201827742615.Spec : Prop :=
  ∀ n, P16713631201827742615.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P8034312301081268673

`gcd(2*n+1, A054388(n))`
-/

namespace A056617.P8034312301081268673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A054388 n)

end

end A056617.P8034312301081268673

namespace A056617

/-- `gcd(2*n+1, A054388(n))` -/
def P8034312301081268673.Spec : Prop :=
  ∀ n, (P8034312301081268673.a n : ℤ) = A056617 n

end A056617

/-! ## A056617.P3767499158358236186

`lcm(2*n+1, A056040(2*n))/A056040(2*n)`
-/

namespace A056617.P3767499158358236186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 1 : ℤ) (A056040 (2 * n)) : ℚ) / (A056040 (2 * n) : ℚ)

end

end A056617.P3767499158358236186

namespace A056617

/-- `lcm(2*n+1, A056040(2*n))/A056040(2*n)` -/
def P3767499158358236186.Spec : Prop :=
  ∀ n, P3767499158358236186.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P10254518824786186064

`lcm(A000217(2*n+1), A126869(2*n))/A126869(2*n)`
-/

namespace A056617.P10254518824786186064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (2 * n + 1)) (A126869 (2 * n)) : ℚ) / (A126869 (2 * n) : ℚ)

end

end A056617.P10254518824786186064

namespace A056617

/-- `lcm(A000217(2*n+1), A126869(2*n))/A126869(2*n)` -/
def P10254518824786186064.Spec : Prop :=
  ∀ n, P10254518824786186064.a n = (A056617 n : ℚ)

end A056617

/-! ## A056617.P7663853541980950596

`lcm(A210736(2*n), A274922(2*n+1))/A210736(2*n)`
-/

namespace A056617.P7663853541980950596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A210736 (2 * n)) (A274922 (2 * n + 1)) : ℚ) / (A210736 (2 * n) : ℚ)

end

end A056617.P7663853541980950596

namespace A056617

/-- `lcm(A210736(2*n), A274922(2*n+1))/A210736(2*n)` -/
def P7663853541980950596.Spec : Prop :=
  ∀ n, P7663853541980950596.a n = (A056617 n : ℚ)

end A056617

/-!
# A056619: Smallest prime with primitive root n, or 0 if no such prime exists.

The programs for A056619, there is no canonical definition to state claims against.
-/

/-! ## A056619.P16789669446442321350

`A020639(A000975(n+4))%A143865(n+5)`
-/

namespace A056619.P16789669446442321350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A000975 (n + 4)).toNat) (A143865 (n + 5))

end

end A056619.P16789669446442321350

/-! ## A056619.P11216548129450125712

`A271419(A101374(n)+38)`
-/

namespace A056619.P11216548129450125712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (A101374 n + 38).toNat

end

end A056619.P11216548129450125712

/-! ## A056619.P3506767512865960402

`A347772(A175631(n+2)+2)`
-/

namespace A056619.P3506767512865960402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347772 (A175631 (n + 2) + 2).toNat

end

end A056619.P3506767512865960402

/-!
# A056620: Partition function coefficients for square lattice spin 3 Ising model.

The programs for A056620, there is no canonical definition to state claims against.
-/

/-! ## A056620.P2859465540282155052

`A016232(5*A008611(A174099(n+1)))`
-/

namespace A056620.P2859465540282155052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (5 * A008611 (A174099 (n + 1)).toNat).toNat

end

end A056620.P2859465540282155052

/-! ## A056620.P2819319231079363797

`round(A159041(n)/A260522(n))`
-/

namespace A056620.P2819319231079363797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159041 n : ℚ) / (A260522 n : ℚ))

end

end A056620.P2819319231079363797

/-! ## A056620.P14138526699767478404

`A017888(n)*A324681(A007064(n+1))`
-/

namespace A056620.P14138526699767478404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 n * A324681 (A007064 (n + 1)).toNat

end

end A056620.P14138526699767478404

/-!
# A056622: a(n) = A000188(n)/A055229(n).

The programs for A056622, the canonical program `A056622.P16381478984900438318` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056622 has offset 1).

The definition of A056622 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056623, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056622.P16381478984900438318

`sqrt(A056623(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056622

/-- `sqrt(A056623(n+1))` -/
def P16381478984900438318.Spec : Prop :=
  ∀ n, P16381478984900438318.a n = (A056622 (n + 1) : ℝ)

end A056622

/-! ## A056622.P100513506761217764

`A000188(n+1)/A055229(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056622.P100513506761217764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A056622.P100513506761217764

namespace A056622

/-- `A000188(n+1)/A055229(n+1)` -/
def P100513506761217764.Spec : Prop :=
  ∀ n, P100513506761217764.a n = (A056622 (n + 1) : ℚ)

end A056622

/-! ## A056622.P8830180054842979486

`A000188(A056192(n+1))`
-/

namespace A056622.P8830180054842979486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A056192 (n + 1)).toNat

end

end A056622.P8830180054842979486

namespace A056622

/-- `A000188(A056192(n+1))` -/
def P8830180054842979486.Spec : Prop :=
  ∀ n, P8830180054842979486.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P1842650802743647577

`A295658(n+1)*A336643(n+1)`
-/

namespace A056622.P1842650802743647577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (n + 1) * A336643 (n + 1)

end

end A056622.P1842650802743647577

namespace A056622

/-- `A295658(n+1)*A336643(n+1)` -/
def P1842650802743647577.Spec : Prop :=
  ∀ n, P1842650802743647577.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P16510542360982812797

`A000188((n+1)/A056191(n+1))`
-/

namespace A056622.P16510542360982812797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056191 (n + 1) : ℚ))).toNat

end

end A056622.P16510542360982812797

namespace A056622

/-- `A000188((n+1)/A056191(n+1))` -/
def P16510542360982812797.Spec : Prop :=
  ∀ n, P16510542360982812797.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P13848252966569666041

`A033676(A056623(2*n+1-n))`
-/

namespace A056622.P13848252966569666041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A056623 (2 * n + 1 - n)).toNat

end

end A056622.P13848252966569666041

namespace A056622

/-- `A033676(A056623(2*n+1-n))` -/
def P13848252966569666041.Spec : Prop :=
  ∀ n, P13848252966569666041.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P5321540582000459736

`A071974(A056192(2*n+1-n))`
-/

namespace A056622.P5321540582000459736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A056192 (2 * n + 1 - n)).toNat

end

end A056622.P5321540582000459736

namespace A056622

/-- `A071974(A056192(2*n+1-n))` -/
def P5321540582000459736.Spec : Prop :=
  ∀ n, P5321540582000459736.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P13431517231337656005

`A071974(gcd(∑[n]², A056623(n+1)))`
-/

namespace A056622.P13431517231337656005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A056623 (n + 1)))

end

end A056622.P13431517231337656005

namespace A056622

/-- `A071974(gcd(∑[n]², A056623(n+1)))` -/
def P13431517231337656005.Spec : Prop :=
  ∀ n, P13431517231337656005.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P11806058401440265139

`A071974(A062379(n+1))*A071974(n+1)`
-/

namespace A056622.P11806058401440265139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A062379 (n + 1)).toNat * A071974 (n + 1)

end

end A056622.P11806058401440265139

namespace A056622

/-- `A071974(A062379(n+1))*A071974(n+1)` -/
def P11806058401440265139.Spec : Prop :=
  ∀ n, P11806058401440265139.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P8175412127032780655

`A000188(n+1)/A007913(A057521(n+1))`
-/

namespace A056622.P8175412127032780655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A007913 (A057521 (n + 1)).toNat : ℚ)

end

end A056622.P8175412127032780655

namespace A056622

/-- `A000188(n+1)/A007913(A057521(n+1))` -/
def P8175412127032780655.Spec : Prop :=
  ∀ n, P8175412127032780655.a n = (A056622 (n + 1) : ℚ)

end A056622

/-! ## A056622.P17200138255495696360

`A071974(lcm(A055229(n+1), A056623(n+1)))`
-/

namespace A056622.P17200138255495696360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (Int.lcm (A055229 (n + 1)) (A056623 (n + 1)))

end

end A056622.P17200138255495696360

namespace A056622

/-- `A071974(lcm(A055229(n+1), A056623(n+1)))` -/
def P17200138255495696360.Spec : Prop :=
  ∀ n, P17200138255495696360.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P6105337255709042964

`lcm(A071974(A056623(n+1)), A071974(n+1))`
-/

namespace A056622.P6105337255709042964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071974 (A056623 (n + 1)).toNat) (A071974 (n + 1))

end

end A056622.P6105337255709042964

namespace A056622

/-- `lcm(A071974(A056623(n+1)), A071974(n+1))` -/
def P6105337255709042964.Spec : Prop :=
  ∀ n, (P6105337255709042964.a n : ℤ) = A056622 (n + 1)

end A056622

/-! ## A056622.P18385911096851355158

`A000188(A000188(n+1)²²/A057521(n+1))`
-/

namespace A056622.P18385911096851355158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway (((A000188 (n + 1) ^ 2) ^ 2 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A056622.P18385911096851355158

namespace A056622

/-- `A000188(A000188(n+1)²²/A057521(n+1))` -/
def P18385911096851355158.Spec : Prop :=
  ∀ n, P18385911096851355158.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P15321641249914532252

`A000188(n+1)/A007913(n+1)*A055231(n+1)`
-/

namespace A056622.P15321641249914532252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ) * (A055231 (n + 1) : ℚ)

end

end A056622.P15321641249914532252

namespace A056622

/-- `A000188(n+1)/A007913(n+1)*A055231(n+1)` -/
def P15321641249914532252.Spec : Prop :=
  ∀ n, P15321641249914532252.a n = (A056622 (n + 1) : ℚ)

end A056622

/-! ## A056622.P7269342789438097322

`sqrt((n+1)/A007913(n+1))/A007913(A057521(n+1))`
-/

namespace A056622.P7269342789438097322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ) / (A007913 (A057521 (n + 1)).toNat : ℝ)

end

end A056622.P7269342789438097322

namespace A056622

/-- `sqrt((n+1)/A007913(n+1))/A007913(A057521(n+1))` -/
def P7269342789438097322.Spec : Prop :=
  ∀ n, P7269342789438097322.a n = (A056622 (n + 1) : ℝ)

end A056622

/-! ## A056622.P8950821596641908377

`A003557(A000188(n+1)²)/A000188(A003557(n+1))`
-/

namespace A056622.P8950821596641908377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (A000188 (n + 1) ^ 2).toNat : ℚ) / (A000188 (A003557 (n + 1)).toNat : ℚ)

end

end A056622.P8950821596641908377

namespace A056622

/-- `A003557(A000188(n+1)²)/A000188(A003557(n+1))` -/
def P8950821596641908377.Spec : Prop :=
  ∀ n, P8950821596641908377.a n = (A056622 (n + 1) : ℚ)

end A056622

/-! ## A056622.P17988480997896152948

`A071974(lcm(2, A056623(n+1)))`
-/

namespace A056622.P17988480997896152948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (Int.lcm 2 (A056623 (n + 1)))

end

end A056622.P17988480997896152948

namespace A056622

/-- `A071974(lcm(2, A056623(n+1)))` -/
def P17988480997896152948.Spec : Prop :=
  ∀ n, P17988480997896152948.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P376893054740225916

`A295657(A011264(n+1))`
-/

namespace A056622.P376893054740225916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A011264 (n + 1)).toNat

end

end A056622.P376893054740225916

namespace A056622

/-- `A295657(A011264(n+1))` -/
def P376893054740225916.Spec : Prop :=
  ∀ n, P376893054740225916.a n = A056622 (n + 1)

end A056622

/-! ## A056622.P233195556379209451

`A000188(n+1)/A007913(A197863(n+1))`
-/

namespace A056622.P233195556379209451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A007913 (A197863 (n + 1)).toNat : ℚ)

end

end A056622.P233195556379209451

namespace A056622

/-- `A000188(n+1)/A007913(A197863(n+1))` -/
def P233195556379209451.Spec : Prop :=
  ∀ n, P233195556379209451.a n = (A056622 (n + 1) : ℚ)

end A056622

/-! ## A056622.P3477438004886401667

`A071974(A071974(A056623(n+1)²))`
-/

namespace A056622.P3477438004886401667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A071974 (A056623 (n + 1) ^ 2).toNat).toNat

end

end A056622.P3477438004886401667

namespace A056622

/-- `A071974(A071974(A056623(n+1)²))` -/
def P3477438004886401667.Spec : Prop :=
  ∀ n, P3477438004886401667.a n = A056622 (n + 1)

end A056622

/-!
# A056623: If n=LLgggf (see A056192) and a(n) = LL, then its complementary divisor n/LL = gggf and gcd(L^2, n/LL) = 1.

The programs for A056623, the canonical program `A056623.P4042659177706060418` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056623 has offset 1).

The definition of A056623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A055229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056623.P10349782677236102055

`A056622(n+1)²`
-/

namespace A056623.P10349782677236102055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (n + 1) ^ 2

end

end A056623.P10349782677236102055

namespace A056623

/-- `A056622(n+1)²` -/
def P10349782677236102055.Spec : Prop :=
  ∀ n, P10349782677236102055.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P4042659177706060418

`A008833(n+1)/A055229(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056623

/-- `A008833(n+1)/A055229(n+1)²` -/
def P4042659177706060418.Spec : Prop :=
  ∀ n, P4042659177706060418.a n = (A056623 (n + 1) : ℚ)

end A056623

/-! ## A056623.P18027272978169952866

`A008833(A056192(n+1))`
-/

namespace A056623.P18027272978169952866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A056192 (n + 1)).toNat

end

end A056623.P18027272978169952866

namespace A056623

/-- `A008833(A056192(n+1))` -/
def P18027272978169952866.Spec : Prop :=
  ∀ n, P18027272978169952866.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P18087677859766049759

`A056192(A057521(n+1))`
-/

namespace A056623.P18087677859766049759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A057521 (n + 1)).toNat

end

end A056623.P18087677859766049759

namespace A056623

/-- `A056192(A057521(n+1))` -/
def P18087677859766049759.Spec : Prop :=
  ∀ n, P18087677859766049759.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P11022094328375293650

`A008833((n+1)/A056191(n+1))`
-/

namespace A056623.P11022094328375293650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056191 (n + 1) : ℚ))).toNat

end

end A056623.P11022094328375293650

namespace A056623

/-- `A008833((n+1)/A056191(n+1))` -/
def P11022094328375293650.Spec : Prop :=
  ∀ n, P11022094328375293650.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P12606582631519218646

`A056192((n+1)/A055231(n+1))`
-/

namespace A056623.P12606582631519218646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A056623.P12606582631519218646

namespace A056623

/-- `A056192((n+1)/A055231(n+1))` -/
def P12606582631519218646.Spec : Prop :=
  ∀ n, P12606582631519218646.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P17790367218505534653

`A057521((n+1)/A056191(n+1))`
-/

namespace A056623.P17790367218505534653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056191 (n + 1) : ℚ))).toNat

end

end A056623.P17790367218505534653

namespace A056623

/-- `A057521((n+1)/A056191(n+1))` -/
def P17790367218505534653.Spec : Prop :=
  ∀ n, P17790367218505534653.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P14803936271348946328

`A350388((n+1)/A056191(n+1))`
-/

namespace A056623.P14803936271348946328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056191 (n + 1) : ℚ))).toNat

end

end A056623.P14803936271348946328

namespace A056623

/-- `A350388((n+1)/A056191(n+1))` -/
def P14803936271348946328.Spec : Prop :=
  ∀ n, P14803936271348946328.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P14076282443366221368

`A350388(A056192(2*n+1-n))`
-/

namespace A056623.P14076282443366221368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A056192 (2 * n + 1 - n)).toNat

end

end A056623.P14076282443366221368

namespace A056623

/-- `A350388(A056192(2*n+1-n))` -/
def P14076282443366221368.Spec : Prop :=
  ∀ n, P14076282443366221368.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P8952809232345433464

`lcm(A062379(n+1), A350388(n+1))`
-/

namespace A056623.P8952809232345433464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062379 (n + 1)) (A350388 (n + 1))

end

end A056623.P8952809232345433464

namespace A056623

/-- `lcm(A062379(n+1), A350388(n+1))` -/
def P8952809232345433464.Spec : Prop :=
  ∀ n, (P8952809232345433464.a n : ℤ) = A056623 (n + 1)

end A056623

/-! ## A056623.P12072699713701455990

`(A295658(n+1)*A336643(n+1))²`
-/

namespace A056623.P12072699713701455990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295658 (n + 1) * A336643 (n + 1)) ^ 2

end

end A056623.P12072699713701455990

namespace A056623

/-- `(A295658(n+1)*A336643(n+1))²` -/
def P12072699713701455990.Spec : Prop :=
  ∀ n, P12072699713701455990.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P11200499005365556543

`(A000188(n+1)/A055229(n+1))²`
-/

namespace A056623.P11200499005365556543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000188 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)) ^ 2

end

end A056623.P11200499005365556543

namespace A056623

/-- `(A000188(n+1)/A055229(n+1))²` -/
def P11200499005365556543.Spec : Prop :=
  ∀ n, P11200499005365556543.a n = (A056623 (n + 1) : ℚ)

end A056623

/-! ## A056623.P6839368071523524259

`gcd(A000188(n+1)², A056192(n+1))`
-/

namespace A056623.P6839368071523524259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1) ^ 2) (A056192 (n + 1))

end

end A056623.P6839368071523524259

namespace A056623

/-- `gcd(A000188(n+1)², A056192(n+1))` -/
def P6839368071523524259.Spec : Prop :=
  ∀ n, (P6839368071523524259.a n : ℤ) = A056623 (n + 1)

end A056623

/-! ## A056623.P8857217498666687390

`A056192(A000188(A056192(n+1))²)`
-/

namespace A056623.P8857217498666687390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A000188 (A056192 (n + 1)).toNat ^ 2).toNat

end

end A056623.P8857217498666687390

namespace A056623

/-- `A056192(A000188(A056192(n+1))²)` -/
def P8857217498666687390.Spec : Prop :=
  ∀ n, P8857217498666687390.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P16209444457080427139

`A056192(A071974(A056192(n+1))²)`
-/

namespace A056623.P16209444457080427139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A071974 (A056192 (n + 1)).toNat ^ 2).toNat

end

end A056623.P16209444457080427139

namespace A056623

/-- `A056192(A071974(A056192(n+1))²)` -/
def P16209444457080427139.Spec : Prop :=
  ∀ n, P16209444457080427139.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P10916132193409709193

`A008833(A000188(n+1)*A056622(n+1))`
-/

namespace A056623.P10916132193409709193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000188 (n + 1) * A056622 (n + 1)).toNat

end

end A056623.P10916132193409709193

namespace A056623

/-- `A008833(A000188(n+1)*A056622(n+1))` -/
def P10916132193409709193.Spec : Prop :=
  ∀ n, P10916132193409709193.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P10309850885252455705

`A000188(A056192(n+1))*A056622(n+1)`
-/

namespace A056623.P10309850885252455705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A056192 (n + 1)).toNat * A056622 (n + 1)

end

end A056623.P10309850885252455705

namespace A056623

/-- `A000188(A056192(n+1))*A056622(n+1)` -/
def P10309850885252455705.Spec : Prop :=
  ∀ n, P10309850885252455705.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P10522527058512107839

`A056192(A056622(n+1)*A056622(n+1))`
-/

namespace A056623.P10522527058512107839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A056622 (n + 1) * A056622 (n + 1)).toNat

end

end A056623.P10522527058512107839

namespace A056623

/-- `A056192(A056622(n+1)*A056622(n+1))` -/
def P10522527058512107839.Spec : Prop :=
  ∀ n, P10522527058512107839.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P5386470272155558013

`A350388(A056622(n+1)*A056622(n+1))`
-/

namespace A056623.P5386470272155558013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A056622 (n + 1) * A056622 (n + 1)).toNat

end

end A056623.P5386470272155558013

namespace A056623

/-- `A350388(A056622(n+1)*A056622(n+1))` -/
def P5386470272155558013.Spec : Prop :=
  ∀ n, P5386470272155558013.a n = A056623 (n + 1)

end A056623

/-! ## A056623.P9458495828389512654

`A008833((n+1)/A000578(A055229(n+1)))`
-/

namespace A056623.P9458495828389512654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000578 (A055229 (n + 1)).toNat : ℚ))).toNat

end

end A056623.P9458495828389512654

namespace A056623

/-- `A008833((n+1)/A000578(A055229(n+1)))` -/
def P9458495828389512654.Spec : Prop :=
  ∀ n, P9458495828389512654.a n = A056623 (n + 1)

end A056623

/-!
# A056624: Number of unitary square divisors of n.

The programs for A056624, the canonical program `A056624.P6960691784658607954` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056624 has offset 1).

The definition of A056624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056624.P6960691784658607954

`2^A162641(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056624

/-- `2^A162641(n+1)` -/
def P6960691784658607954.Spec : Prop :=
  ∀ n, P6960691784658607954.a n = (A056624 (n + 1) : ℚ)

end A056624

/-! ## A056624.P9908536857330016486

`A034444(A350388(n+1))`
-/

namespace A056624.P9908536857330016486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A350388 (n + 1)).toNat

end

end A056624.P9908536857330016486

namespace A056624

/-- `A034444(A350388(n+1))` -/
def P9908536857330016486.Spec : Prop :=
  ∀ n, P9908536857330016486.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P7387243159793262194

`∏{e}[n+1, gcd(2, #)]`
-/

namespace A056624.P7387243159793262194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (Nat.factorization (f1 n) p)

end

end A056624.P7387243159793262194

namespace A056624

/-- `∏{e}[n+1, gcd(2, #)]` -/
def P7387243159793262194.Spec : Prop :=
  ∀ n, (P7387243159793262194.a n : ℤ) = A056624 (n + 1)

end A056624

/-! ## A056624.P12680272756026518865

`∏{e}[n+1, 2-#%2]`
-/

namespace A056624.P12680272756026518865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - ((Nat.factorization (f1 n) p % 2 : ℕ) : ℤ))

end

end A056624.P12680272756026518865

namespace A056624

/-- `∏{e}[n+1, 2-#%2]` -/
def P12680272756026518865.Spec : Prop :=
  ∀ n, P12680272756026518865.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P1568048652169197909

`∏{e}[n+1, 2-and(1, #)]`
-/

namespace A056624.P1568048652169197909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.land 1 (Nat.factorization (f1 n) p) : ℤ))

end

end A056624.P1568048652169197909

namespace A056624

/-- `∏{e}[n+1, 2-and(1, #)]` -/
def P1568048652169197909.Spec : Prop :=
  ∀ n, P1568048652169197909.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P11997196299857964365

`∏{e}[n+1, -or(#, -2)]`
-/

namespace A056624.P11997196299857964365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-Int.lor (Nat.factorization (f1 n) p : ℤ) (-2))

end

end A056624.P11997196299857964365

namespace A056624

/-- `∏{e}[n+1, -or(#, -2)]` -/
def P11997196299857964365.Spec : Prop :=
  ∀ n, P11997196299857964365.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P1577622563728909337

`∏{e}[n+1, (#+1)%2+1]`
-/

namespace A056624.P1577622563728909337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p + 1) % 2 + 1)

end

end A056624.P1577622563728909337

namespace A056624

/-- `∏{e}[n+1, (#+1)%2+1]` -/
def P1577622563728909337.Spec : Prop :=
  ∀ n, (P1577622563728909337.a n : ℤ) = A056624 (n + 1)

end A056624

/-! ## A056624.P15734001917548047469

`gcd(8, A358223(n+1))`
-/

namespace A056624.P15734001917548047469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A358223 (n + 1))

end

end A056624.P15734001917548047469

namespace A056624

/-- `gcd(8, A358223(n+1))` -/
def P15734001917548047469.Spec : Prop :=
  ∀ n, (P15734001917548047469.a n : ℤ) = A056624 (n + 1)

end A056624

/-! ## A056624.P8258792613145775415

`∑{d}[n+1, A307423(#)]`
-/

namespace A056624.P8258792613145775415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307423 d

end

end A056624.P8258792613145775415

namespace A056624

/-- `∑{d}[n+1, A307423(#)]` -/
def P8258792613145775415.Spec : Prop :=
  ∀ n, P8258792613145775415.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P14211328251113975322

`∏{e}[n+1, A022927(#)]`
-/

namespace A056624.P14211328251113975322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A022927 (Nat.factorization (f1 n) p)

end

end A056624.P14211328251113975322

namespace A056624

/-- `∏{e}[n+1, A022927(#)]` -/
def P14211328251113975322.Spec : Prop :=
  ∀ n, P14211328251113975322.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P2858317535565753153

`∏{e}[n+1, A040001(#)]`
-/

namespace A056624.P2858317535565753153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A040001 (Nat.factorization (f1 n) p)

end

end A056624.P2858317535565753153

namespace A056624

/-- `∏{e}[n+1, A040001(#)]` -/
def P2858317535565753153.Spec : Prop :=
  ∀ n, P2858317535565753153.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P17540651496356291799

`∏{e}[A066990(n+1), #]`
-/

namespace A056624.P17540651496356291799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A056624.P17540651496356291799

namespace A056624

/-- `∏{e}[A066990(n+1), #]` -/
def P17540651496356291799.Spec : Prop :=
  ∀ n, (P17540651496356291799.a n : ℤ) = A056624 (n + 1)

end A056624

/-! ## A056624.P15924930524306553823

`∏{e}[n+1, A000032(#²)%5]`
-/

namespace A056624.P15924930524306553823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000032 (Nat.factorization (f1 n) p ^ 2)) 5

end

end A056624.P15924930524306553823

namespace A056624

/-- `∏{e}[n+1, A000032(#²)%5]` -/
def P15924930524306553823.Spec : Prop :=
  ∀ n, P15924930524306553823.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P1451580582005420693

`∏{e}[n+1, 4-A020639(3*#)]`
-/

namespace A056624.P1451580582005420693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 - A020639 (3 * Nat.factorization (f1 n) p))

end

end A056624.P1451580582005420693

namespace A056624

/-- `∏{e}[n+1, 4-A020639(3*#)]` -/
def P1451580582005420693.Spec : Prop :=
  ∀ n, P1451580582005420693.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P12519485711782273944

`A055076(A003557(n+1))`
-/

namespace A056624.P12519485711782273944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A003557 (n + 1)).toNat

end

end A056624.P12519485711782273944

namespace A056624

/-- `A055076(A003557(n+1))` -/
def P12519485711782273944.Spec : Prop :=
  ∀ n, P12519485711782273944.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P5908344775943996026

`A000688(A066990(n+1))`
-/

namespace A056624.P5908344775943996026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A066990 (n + 1)).toNat

end

end A056624.P5908344775943996026

namespace A056624

/-- `A000688(A066990(n+1))` -/
def P5908344775943996026.Spec : Prop :=
  ∀ n, P5908344775943996026.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P11284420707082926459

`A034444(A071974(n+1))`
-/

namespace A056624.P11284420707082926459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A071974 (n + 1)).toNat

end

end A056624.P11284420707082926459

namespace A056624

/-- `A034444(A071974(n+1))` -/
def P11284420707082926459.Spec : Prop :=
  ∀ n, P11284420707082926459.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P3354109980216647972

`A000005(A336643(n+1))`
-/

namespace A056624.P3354109980216647972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336643 (n + 1)).toNat

end

end A056624.P3354109980216647972

namespace A056624

/-- `A000005(A336643(n+1))` -/
def P3354109980216647972.Spec : Prop :=
  ∀ n, P3354109980216647972.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P10594879467566398128

`A278908(A365296(n+1))`
-/

namespace A056624.P10594879467566398128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A365296 (n + 1)).toNat

end

end A056624.P10594879467566398128

namespace A056624

/-- `A278908(A365296(n+1))` -/
def P10594879467566398128.Spec : Prop :=
  ∀ n, P10594879467566398128.a n = A056624 (n + 1)

end A056624

/-! ## A056624.P1630011062656677344

`A392447(A338782(n+1))`
-/

namespace A056624.P1630011062656677344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A338782 (n + 1)).toNat

end

end A056624.P1630011062656677344

namespace A056624

/-- `A392447(A338782(n+1))` -/
def P1630011062656677344.Spec : Prop :=
  ∀ n, P1630011062656677344.a n = A056624 (n + 1)

end A056624

/-!
# A056625: a(n) is the total area of all self-avoiding polygons of length 2n on the square lattice.

The programs for A056625, there is no canonical definition to state claims against.
-/

/-! ## A056625.P4877702148170083716

`A255072(∑[A254602(n)])`
-/

namespace A056625.P4877702148170083716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056625.P4877702148170083716

/-!
# A056626: Number of non-unitary square divisors of n.

The programs for A056626, the canonical program `A056626.P14476168144276018779` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056626 has offset 1).

The definition of A056626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A056624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056626.P14476168144276018779

`A046951(n+1)-A056624(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056626

/-- `A046951(n+1)-A056624(n+1)` -/
def P14476168144276018779.Spec : Prop :=
  ∀ n, P14476168144276018779.a n = A056626 (n + 1)

theorem P14476168144276018779.correct : P14476168144276018779.Spec := by
  intro n
  simp only [A056626, Nat.add_sub_cancel]

end A056626

/-! ## A056626.P1791051235283012342

`A046951(n+1)-2^A162641(n+1)`
-/

namespace A056626.P1791051235283012342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) - (2 : ℚ) ^ (A162641 (n + 1) : ℤ)

end

end A056626.P1791051235283012342

namespace A056626

/-- `A046951(n+1)-2^A162641(n+1)` -/
def P1791051235283012342.Spec : Prop :=
  ∀ n, P1791051235283012342.a n = (A056626 (n + 1) : ℚ)

end A056626

/-! ## A056626.P3674403848770718283

`A071325(n+1)+1-A056624(n+1)`
-/

namespace A056626.P3674403848770718283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + 1 - A056624 (n + 1)

end

end A056626.P3674403848770718283

namespace A056626

/-- `A071325(n+1)+1-A056624(n+1)` -/
def P3674403848770718283.Spec : Prop :=
  ∀ n, P3674403848770718283.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P451815397920458263

`A000005(A000188(n+1))-A056624(n+1)`
-/

namespace A056626.P451815397920458263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat - A056624 (n + 1)

end

end A056626.P451815397920458263

namespace A056626

/-- `A000005(A000188(n+1))-A056624(n+1)` -/
def P451815397920458263.Spec : Prop :=
  ∀ n, P451815397920458263.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P8248412583046440960

`A046951(n+1)-A034444(A071974(n+1))`
-/

namespace A056626.P8248412583046440960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A034444 (A071974 (n + 1)).toNat

end

end A056626.P8248412583046440960

namespace A056626

/-- `A046951(n+1)-A034444(A071974(n+1))` -/
def P8248412583046440960.Spec : Prop :=
  ∀ n, P8248412583046440960.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P11568582286395830745

`A046951(n+1)-A000005(A336643(n+1))`
-/

namespace A056626.P11568582286395830745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A000005 (A336643 (n + 1)).toNat

end

end A056626.P11568582286395830745

namespace A056626

/-- `A046951(n+1)-A000005(A336643(n+1))` -/
def P11568582286395830745.Spec : Prop :=
  ∀ n, P11568582286395830745.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P7742410900314571854

`A046951(n+1)-A034444(A350388(n+1))`
-/

namespace A056626.P7742410900314571854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A034444 (A350388 (n + 1)).toNat

end

end A056626.P7742410900314571854

namespace A056626

/-- `A046951(n+1)-A034444(A350388(n+1))` -/
def P7742410900314571854.Spec : Prop :=
  ∀ n, P7742410900314571854.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P2533859451728213865

`A046951(n+1)-A034444(n+1)/A055076(n+1)`
-/

namespace A056626.P2533859451728213865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A055076 (n + 1) : ℚ)

end

end A056626.P2533859451728213865

namespace A056626

/-- `A046951(n+1)-A034444(n+1)/A055076(n+1)` -/
def P2533859451728213865.Spec : Prop :=
  ∀ n, P2533859451728213865.a n = (A056626 (n + 1) : ℚ)

end A056626

/-! ## A056626.P18199063571383621834

`A072000(A344180(A056673(n+1))+A157754(n+1))`
-/

namespace A056626.P18199063571383621834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A344180 (A056673 (n + 1)).toNat + A157754 (n + 1)).toNat

end

end A056626.P18199063571383621834

namespace A056626

/-- `A072000(A344180(A056673(n+1))+A157754(n+1))` -/
def P18199063571383621834.Spec : Prop :=
  ∀ n, P18199063571383621834.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P8424626632526785736

`A000005(A321167((n+1)²)+2)-2`
-/

namespace A056626.P8424626632526785736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A321167 ((n + 1) ^ 2) + 2).toNat - 2

end

end A056626.P8424626632526785736

namespace A056626

/-- `A000005(A321167((n+1)²)+2)-2` -/
def P8424626632526785736.Spec : Prop :=
  ∀ n, P8424626632526785736.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P2420442149322091366

`∏{e}[A000188((n+1)²), #]-A159631(n+1)`
-/

namespace A056626.P2420442149322091366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A159631 (n + 1)

end

end A056626.P2420442149322091366

namespace A056626

/-- `∏{e}[A000188((n+1)²), #]-A159631(n+1)` -/
def P2420442149322091366.Spec : Prop :=
  ∀ n, P2420442149322091366.a n = A056626 (n + 1)

end A056626

/-! ## A056626.P3325264487312316770

`A072411(n+1)-A008621(A072411((n+1)²))`
-/

namespace A056626.P3325264487312316770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1) - A008621 (A072411 ((n + 1) ^ 2)).toNat

end

end A056626.P3325264487312316770

namespace A056626

/-- `A072411(n+1)-A008621(A072411((n+1)²))` -/
def P3325264487312316770.Spec : Prop :=
  ∀ n, P3325264487312316770.a n = A056626 (n + 1)

end A056626

/-!
# A056627: a(n) = A056622(n!).

The programs for A056627, the canonical program `A056627.P7295245360470113496` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056627 has offset 1).

The definition of A056627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055230, A055772, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056627.P7295245360470113496

`A055772(n+1)/A055230(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056627

/-- `A055772(n+1)/A055230(n+1)` -/
def P7295245360470113496.Spec : Prop :=
  ∀ n, P7295245360470113496.a n = (A056627 (n + 1) : ℚ)

end A056627

/-! ## A056627.P2070557619319596116

`sqrt(A056628(n+1))`
-/

namespace A056627.P2070557619319596116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056628 (n + 1) : ℝ)

end

end A056627.P2070557619319596116

namespace A056627

/-- `sqrt(A056628(n+1))` -/
def P2070557619319596116.Spec : Prop :=
  ∀ n, P2070557619319596116.a n = (A056627 (n + 1) : ℝ)

end A056627

/-! ## A056627.P9196276718424797837

`A055772(n+1)/A055204(n+1)*A055773(n+1)`
-/

namespace A056627.P9196276718424797837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A055204 (n + 1) : ℚ) * (A055773 (n + 1) : ℚ)

end

end A056627.P9196276718424797837

namespace A056627

/-- `A055772(n+1)/A055204(n+1)*A055773(n+1)` -/
def P9196276718424797837.Spec : Prop :=
  ∀ n, P9196276718424797837.a n = (A056627 (n + 1) : ℚ)

end A056627

/-! ## A056627.P8502152928047817048

`root(A056628(n+1), ratio[A000079(n)])`
-/

namespace A056627.P8502152928047817048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056628 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A056627.P8502152928047817048

namespace A056627

/-- `root(A056628(n+1), ratio[A000079(n)])` -/
def P8502152928047817048.Spec : Prop :=
  ∀ n, P8502152928047817048.a n = (A056627 (n + 1) : ℝ)

end A056627

/-! ## A056627.P3744603434905796364

`root(A056628(n+1), A034444(p?[4*n+1]))`
-/

namespace A056627.P3744603434905796364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056628 (n + 1) : ℝ) ^ (1 / (A034444 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ))

end

end A056627.P3744603434905796364

namespace A056627

/-- `root(A056628(n+1), A034444(p?[4*n+1]))` -/
def P3744603434905796364.Spec : Prop :=
  ∀ n, P3744603434905796364.a n = (A056627 (n + 1) : ℝ)

end A056627

/-! ## A056627.P3102774065013810425

`root(A056628(n+1), A034444(A034444(n+1)))`
-/

namespace A056627.P3102774065013810425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056628 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A056627.P3102774065013810425

namespace A056627

/-- `root(A056628(n+1), A034444(A034444(n+1)))` -/
def P3102774065013810425.Spec : Prop :=
  ∀ n, P3102774065013810425.a n = (A056627 (n + 1) : ℝ)

end A056627

/-! ## A056627.P12423897820329732866

`sqrt(A055071(n+1))/A055230(n+1)`
-/

namespace A056627.P12423897820329732866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055071 (n + 1) : ℝ) / (A055230 (n + 1) : ℝ)

end

end A056627.P12423897820329732866

namespace A056627

/-- `sqrt(A055071(n+1))/A055230(n+1)` -/
def P12423897820329732866.Spec : Prop :=
  ∀ n, P12423897820329732866.a n = (A056627 (n + 1) : ℝ)

end A056627

/-! ## A056627.P15794002577213904992

`sqrt(A056195(n+1)/A055773(n+1))`
-/

namespace A056627.P15794002577213904992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056195 (n + 1) : ℚ) / (A055773 (n + 1) : ℚ) : ℝ)

end

end A056627.P15794002577213904992

namespace A056627

/-- `sqrt(A056195(n+1)/A055773(n+1))` -/
def P15794002577213904992.Spec : Prop :=
  ∀ n, P15794002577213904992.a n = (A056627 (n + 1) : ℝ)

end A056627

/-! ## A056627.P6783687333617088610

`sqrt(gcd(A055071(n+1), A056195(n+1)))`
-/

namespace A056627.P6783687333617088610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A055071 (n + 1)) (A056195 (n + 1)) : ℝ)

end

end A056627.P6783687333617088610

namespace A056627

/-- `sqrt(gcd(A055071(n+1), A056195(n+1)))` -/
def P6783687333617088610.Spec : Prop :=
  ∀ n, P6783687333617088610.a n = (A056627 (n + 1) : ℝ)

end A056627

/-!
# A056628: a(n) = A056623(n!).

The programs for A056628, the canonical program `A056628.P2818062882459124441` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056628 has offset 1).

The definition of A056628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056627, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056628.P2818062882459124441

`A056627(n+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056628

/-- `A056627(n+1)²` -/
def P2818062882459124441.Spec : Prop :=
  ∀ n, P2818062882459124441.a n = A056628 (n + 1)

theorem P2818062882459124441.correct : P2818062882459124441.Spec := by
  intro n
  simp only [A056628, Nat.add_sub_cancel]

end A056628

/-! ## A056628.P9888598697535124968

`(A055772(n+1)/A055230(n+1))²`
-/

namespace A056628.P9888598697535124968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055772 (n + 1) : ℚ) / (A055230 (n + 1) : ℚ)) ^ 2

end

end A056628.P9888598697535124968

namespace A056628

/-- `(A055772(n+1)/A055230(n+1))²` -/
def P9888598697535124968.Spec : Prop :=
  ∀ n, P9888598697535124968.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P16059200747731141305

`A056627(n+1)^A056619(A056617(n))`
-/

namespace A056628.P16059200747731141305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056627 (n + 1) : ℚ) ^ (A056619 (A056617 n).toNat : ℤ)

end

end A056628.P16059200747731141305

namespace A056628

/-- `A056627(n+1)^A056619(A056617(n))` -/
def P16059200747731141305.Spec : Prop :=
  ∀ n, P16059200747731141305.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P7613956902172392501

`A056627(A000027(n+1))*A056627(n+1)`
-/

namespace A056628.P7613956902172392501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056627 (A000027 (n + 1)).toNat * A056627 (n + 1)

end

end A056628.P7613956902172392501

namespace A056628

/-- `A056627(A000027(n+1))*A056627(n+1)` -/
def P7613956902172392501.Spec : Prop :=
  ∀ n, P7613956902172392501.a n = A056628 (n + 1)

end A056628

/-! ## A056628.P13144417737625394307

`A056627(n+1)^A000005(A056608(n+1))`
-/

namespace A056628.P13144417737625394307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056627 (n + 1) : ℚ) ^ (A000005 (A056608 (n + 1)).toNat : ℤ)

end

end A056628.P13144417737625394307

namespace A056628

/-- `A056627(n+1)^A000005(A056608(n+1))` -/
def P13144417737625394307.Spec : Prop :=
  ∀ n, P13144417737625394307.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P11624002586931607151

`A056627(n+1)^A006530(A056629(n+1))`
-/

namespace A056628.P11624002586931607151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056627 (n + 1) : ℚ) ^ (A006530 (A056629 (n + 1)).toNat : ℤ)

end

end A056628.P11624002586931607151

namespace A056628

/-- `A056627(n+1)^A006530(A056629(n+1))` -/
def P11624002586931607151.Spec : Prop :=
  ∀ n, P11624002586931607151.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P10008130956852714594

`A056627(n+1)^A000005(A155552(n+1))`
-/

namespace A056628.P10008130956852714594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056627 (n + 1) : ℚ) ^ (A000005 (A155552 (n + 1)).toNat : ℤ)

end

end A056628.P10008130956852714594

namespace A056628

/-- `A056627(n+1)^A000005(A155552(n+1))` -/
def P10008130956852714594.Spec : Prop :=
  ∀ n, P10008130956852714594.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P13207062603501684156

`A056627(n+1)^A278523(A093350(n+1))`
-/

namespace A056628.P13207062603501684156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056627 (n + 1) : ℚ) ^ (A278523 (A093350 (n + 1)).toNat : ℤ)

end

end A056628.P13207062603501684156

namespace A056628

/-- `A056627(n+1)^A278523(A093350(n+1))` -/
def P13207062603501684156.Spec : Prop :=
  ∀ n, P13207062603501684156.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P17156613874925662018

`A055772(n+1)/A055230(n+1)*A056627(n+1)`
-/

namespace A056628.P17156613874925662018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A055230 (n + 1) : ℚ) * (A056627 (n + 1) : ℚ)

end

end A056628.P17156613874925662018

namespace A056628

/-- `A055772(n+1)/A055230(n+1)*A056627(n+1)` -/
def P17156613874925662018.Spec : Prop :=
  ∀ n, P17156613874925662018.a n = (A056628 (n + 1) : ℚ)

end A056628

/-! ## A056628.P10420655563718394668

`(A055772(n+1)/gcd(A055204(n+1), A055772(n+1)))²`
-/

namespace A056628.P10420655563718394668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055772 (n + 1) : ℚ) / (Int.gcd (A055204 (n + 1)) (A055772 (n + 1)) : ℚ)) ^ 2

end

end A056628.P10420655563718394668

namespace A056628

/-- `(A055772(n+1)/gcd(A055204(n+1), A055772(n+1)))²` -/
def P10420655563718394668.Spec : Prop :=
  ∀ n, P10420655563718394668.a n = (A056628 (n + 1) : ℚ)

end A056628

/-!
# A056629: a(n) = A034444(A056627(n)).

The programs for A056629, the canonical program `A056629.P11889635236478649752` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056629 has offset 1).

The definition of A056629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056629.P11889635236478649752

`A055993(n+1)-A056630(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056629

/-- `A055993(n+1)-A056630(n+1)` -/
def P11889635236478649752.Spec : Prop :=
  ∀ n, P11889635236478649752.a n = A056629 (n + 1)

theorem P11889635236478649752.correct : P11889635236478649752.Spec := by
  intro n
  simp only [A056629, Nat.add_sub_cancel]

end A056629

/-! ## A056629.P2751321938903044584

`A055993(n+1)+A056630(n+1)*A260196(n)`
-/

namespace A056629.P2751321938903044584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (n + 1) + A056630 (n + 1) * A260196 n

end

end A056629.P2751321938903044584

namespace A056629

/-- `A055993(n+1)+A056630(n+1)*A260196(n)` -/
def P2751321938903044584.Spec : Prop :=
  ∀ n, P2751321938903044584.a n = A056629 (n + 1)

end A056629

/-! ## A056629.P10014609595410368941

`A375187(n+1)+A375188(n+1)-A056630(n+1)`
-/

namespace A056629.P10014609595410368941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375187 (n + 1) + (A375188 (n + 1) - A056630 (n + 1))

end

end A056629.P10014609595410368941

namespace A056629

/-- `A375187(n+1)+A375188(n+1)-A056630(n+1)` -/
def P10014609595410368941.Spec : Prop :=
  ∀ n, P10014609595410368941.a n = A056629 (n + 1)

end A056629

/-! ## A056629.P6609243033041346827

`A027423(n+1)-A056596(n+1)-A056630(n+1)`
-/

namespace A056629.P6609243033041346827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A056596 (n + 1) - A056630 (n + 1)

end

end A056629.P6609243033041346827

namespace A056629

/-- `A027423(n+1)-A056596(n+1)-A056630(n+1)` -/
def P6609243033041346827.Spec : Prop :=
  ∀ n, P6609243033041346827.a n = A056629 (n + 1)

end A056629

/-! ## A056629.P685882116147670515

`∑[A038024(n+1)]-(A056630(n+1)+A056596(n+1))`
-/

namespace A056629.P685882116147670515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A056630 (n + 1) + A056596 (n + 1))

end

end A056629.P685882116147670515

namespace A056629

/-- `∑[A038024(n+1)]-(A056630(n+1)+A056596(n+1))` -/
def P685882116147670515.Spec : Prop :=
  ∀ n, P685882116147670515.a n = A056629 (n + 1)

end A056629

/-! ## A056629.P4729523284053170219

`A006519(xor(A055993(n+1), A056630(n+1)))`
-/

namespace A056629.P4729523284053170219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.xor (A055993 (n + 1)) (A056630 (n + 1))).toNat

end

end A056629.P4729523284053170219

namespace A056629

/-- `A006519(xor(A055993(n+1), A056630(n+1)))` -/
def P4729523284053170219.Spec : Prop :=
  ∀ n, P4729523284053170219.a n = A056629 (n + 1)

end A056629

/-!
# A056630: a(n) = A055993(n) - A034444(A056627(n)).

The programs for A056630, the canonical program `A056630.P5612160869139664206` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056630 has offset 1).

The definition of A056630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A055993, A056627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056630.P5612160869139664206

`A055993(n+1)-A034444(A056627(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056630

/-- `A055993(n+1)-A034444(A056627(n+1))` -/
def P5612160869139664206.Spec : Prop :=
  ∀ n, P5612160869139664206.a n = A056630 (n + 1)

theorem P5612160869139664206.correct : P5612160869139664206.Spec := by
  intro n
  simp only [A056630, Nat.add_sub_cancel]

end A056630

/-! ## A056630.P13945817608459010274

`A055993(n+1)-A056629(n+1)`
-/

namespace A056630.P13945817608459010274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (n + 1) - A056629 (n + 1)

end

end A056630.P13945817608459010274

namespace A056630

/-- `A055993(n+1)-A056629(n+1)` -/
def P13945817608459010274.Spec : Prop :=
  ∀ n, P13945817608459010274.a n = A056630 (n + 1)

end A056630

/-! ## A056630.P13235431635402141415

`A375187(n+1)+A375188(n+1)-A056629(n+1)`
-/

namespace A056630.P13235431635402141415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375187 (n + 1) + (A375188 (n + 1) - A056629 (n + 1))

end

end A056630.P13235431635402141415

namespace A056630

/-- `A375187(n+1)+A375188(n+1)-A056629(n+1)` -/
def P13235431635402141415.Spec : Prop :=
  ∀ n, P13235431635402141415.a n = A056630 (n + 1)

end A056630

/-! ## A056630.P660004020654904352

`A027423(n+1)-A056596(n+1)-A056629(n+1)`
-/

namespace A056630.P660004020654904352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A056596 (n + 1) - A056629 (n + 1)

end

end A056630.P660004020654904352

namespace A056630

/-- `A027423(n+1)-A056596(n+1)-A056629(n+1)` -/
def P660004020654904352.Spec : Prop :=
  ∀ n, P660004020654904352.a n = A056630 (n + 1)

end A056630

/-! ## A056630.P4724718971485669202

`∑[A038024(n+1)]-(A056629(n+1)+A056596(n+1))`
-/

namespace A056630.P4724718971485669202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A056629 (n + 1) + A056596 (n + 1))

end

end A056630.P4724718971485669202

namespace A056630

/-- `∑[A038024(n+1)]-(A056629(n+1)+A056596(n+1))` -/
def P4724718971485669202.Spec : Prop :=
  ∀ n, P4724718971485669202.a n = A056630 (n + 1)

end A056630

/-! ## A056630.P9142958448482049433

`A055993(A028310(n)+1)+A001489(A056629(n+1))`
-/

namespace A056630.P9142958448482049433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (A028310 n + 1).toNat + A001489 (A056629 (n + 1)).toNat

end

end A056630.P9142958448482049433

namespace A056630

/-- `A055993(A028310(n)+1)+A001489(A056629(n+1))` -/
def P9142958448482049433.Spec : Prop :=
  ∀ n, P9142958448482049433.a n = A056630 (n + 1)

end A056630

/-!
# A056632: a(n) is the total perimeter of all self-avoiding polygons of area n on the square lattice.

The programs for A056632, there is no canonical definition to state claims against.
-/

/-! ## A056632.P3656428680495977595

`A008574(A077828(n)-A208740(n+1))`
-/

namespace A056632.P3656428680495977595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A077828 n - A208740 (n + 1)).toNat

end

end A056632.P3656428680495977595

/-!
# A056635: Difference between length (A005341) and sum of digits (A004977) of n-th term in Look and Say Sequence (A005150).

The programs for A056635, there is no canonical definition to state claims against.
-/

/-! ## A056635.P4462831282906575689

`A022467(n+1)+2*A022468(n+1)`
-/

namespace A056635.P4462831282906575689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022467 (n + 1) + 2 * A022468 (n + 1)

end

end A056635.P4462831282906575689

/-! ## A056635.P9836970533432997980

`A005341(n+1)+A022468(n+1)-A022466(n+1)`
-/

namespace A056635.P9836970533432997980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) + (A022468 (n + 1) - A022466 (n + 1))

end

end A056635.P9836970533432997980

/-! ## A056635.P12009366957351734086

`A004977(n+1)-A005341(n+1)`
-/

namespace A056635.P12009366957351734086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 1) - A005341 (n + 1)

end

end A056635.P12009366957351734086

/-! ## A056635.P4951289242387880736

`A004977(A000027(n+1))%A005341(n+1)`
-/

namespace A056635.P4951289242387880736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004977 (A000027 (n + 1)).toNat) (A005341 (n + 1))

end

end A056635.P4951289242387880736

/-! ## A056635.P3288700577290719637

`and(A004977(n+1), A057428(n))%A005341(n+1)`
-/

namespace A056635.P3288700577290719637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A004977 (n + 1)) (A057428 n)) (A005341 (n + 1))

end

end A056635.P3288700577290719637

/-!
# A056636: Conjecturally largest even integer which is the sum of two primes in at most n ways.

The programs for A056636, there is no canonical definition to state claims against.
-/

/-! ## A056636.P14527577979601806029

`A174327(∑[char[A174328(n+1)]])`
-/

namespace A056636.P14527577979601806029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174328 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056636.P14527577979601806029

/-! ## A056636.P14762145617385684988

`A000954(A227549(n+1)-A186748(n))`
-/

namespace A056636.P14762145617385684988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (A227549 (n + 1) - A186748 n).toNat

end

end A056636.P14762145617385684988

/-! ## A056636.P12218488891163775368

`A000954(A227549(n+1)-A198318(n))`
-/

namespace A056636.P12218488891163775368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (A227549 (n + 1) - A198318 n).toNat

end

end A056636.P12218488891163775368

/-! ## A056636.P7496830876751963388

`A000954(A032555(n+1)-A256067(n))`
-/

namespace A056636.P7496830876751963388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (A032555 (n + 1) - A256067 n).toNat

end

end A056636.P7496830876751963388

/-! ## A056636.P12009601657616499618

`A000954(A032559(n+1)-A256067(n))`
-/

namespace A056636.P12009601657616499618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (A032559 (n + 1) - A256067 n).toNat

end

end A056636.P12009601657616499618

/-!
# A056637: a(n) is the least prime of class n-, according to the Erdős-Selfridge classification of primes.

The programs for A056637, there is no canonical definition to state claims against.
-/

/-! ## A056637.P3400341587181379218

`A246491(floor((n+2)*(n/(a(n-1)+2)+1)))` with `a(0)=2`
-/

namespace A056637.P3400341587181379218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A246491 ⌊(n + 2 : ℚ) * ((n : ℚ) / (a (n - 1) + 2 : ℚ) + 1)⌋.toNat

end

end A056637.P3400341587181379218

/-! ## A056637.P13666218916105351895

`A246491(n+2)%A134491(n)`
-/

namespace A056637.P13666218916105351895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246491 (n + 2)) (A134491 n)

end

end A056637.P13666218916105351895

/-! ## A056637.P15340742311611696020

`floor(A246491(n+2)/A054977(n))`
-/

namespace A056637.P15340742311611696020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246491 (n + 2) : ℚ) / (A054977 n : ℚ)⌋

end

end A056637.P15340742311611696020

/-! ## A056637.P15057532682142080226

`record[xor(A154955(n+1), A246491(n+1))]`
-/

namespace A056637.P15057532682142080226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154955 (n + 1)) (A246491 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056637.P15057532682142080226

/-! ## A056637.P7280072820960335033

`A246491((n+2)*(a(A000038(n))-1))` with `a(0)=2`
-/

namespace A056637.P7280072820960335033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A246491 ((n + 2 : ℤ) * (a (A000038 n).toNat - 1)).toNat

end

end A056637.P7280072820960335033

/-!
# A056640: At stage 1, start with a unit square. At each successive stage add 4*(n-1) new squares around outside with edge-to-edge contacts. Sequence gives number of squares (regardless of size) at n-th stage.

The programs for A056640, the canonical program `A056640.P17995523251844866536` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056640 has offset 1).

The definition of A056640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056640.P934674855063178583

`(8*(n+1)^3-2*(n+1)+3-3*(-1)^(n+1))/12`
-/

namespace A056640.P934674855063178583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1) ^ 3 : ℤ) - (2 * (n + 1) : ℤ) + (3 - 3 * (-1) ^ (n + 1)) : ℚ) / 12

end

end A056640.P934674855063178583

namespace A056640

/-- `(8*(n+1)^3-2*(n+1)+3-3*(-1)^(n+1))/12` -/
def P934674855063178583.Spec : Prop :=
  ∀ n, P934674855063178583.a n = (A056640 (n + 1) : ℚ)

theorem P934674855063178583.correct : P934674855063178583.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A056640, Nat.add_sub_cancel, A056640.P934674855063178583.a, A056640.P17995523251844866536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A056640, Nat.add_sub_cancel, A056640.P934674855063178583.a, A056640.P17995523251844866536.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056640

/-! ## A056640.P17995523251844866536

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=18, a(3)=42, a(4)=83`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056640

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P17995523251844866536.Spec : Prop :=
  ∀ n, P17995523251844866536.a n = A056640 (n + 1)

theorem P17995523251844866536.correct : P17995523251844866536.Spec := by
  intro n
  simp only [A056640, Nat.add_sub_cancel]

end A056640

/-! ## A056640.P14459832723761673307

`∑[∑[record[or(5, n)-4]]]`
-/

namespace A056640.P14459832723761673307
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P14459832723761673307

namespace A056640

/-- `∑[∑[record[or(5, n)-4]]]` -/
def P14459832723761673307.Spec : Prop :=
  ∀ n, P14459832723761673307.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P2268091456872901714

`∑[∑[record[xor(5, n)-4]]]`
-/

namespace A056640.P2268091456872901714
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℤ) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P2268091456872901714

namespace A056640

/-- `∑[∑[record[xor(5, n)-4]]]` -/
def P2268091456872901714.Spec : Prop :=
  ∀ n, P2268091456872901714.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P4932249305614100170

`∑[∑[record[and(n, -6)+1]]]`
-/

namespace A056640.P4932249305614100170
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P4932249305614100170

namespace A056640

/-- `∑[∑[record[and(n, -6)+1]]]` -/
def P4932249305614100170.Spec : Prop :=
  ∀ n, P4932249305614100170.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P5041144111629909098

`∑[∑[xor(1, 3*n)+n]]`
-/

namespace A056640.P5041144111629909098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P5041144111629909098

namespace A056640

/-- `∑[∑[xor(1, 3*n)+n]]` -/
def P5041144111629909098.Spec : Prop :=
  ∀ n, (P5041144111629909098.a n : ℤ) = A056640 (n + 1)

end A056640

/-! ## A056640.P12620894238278100119

`round(C(2*n+3, 3)/2)`
-/

namespace A056640.P12620894238278100119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 3) 3 : ℚ) / 2)

end

end A056640.P12620894238278100119

namespace A056640

/-- `round(C(2*n+3, 3)/2)` -/
def P12620894238278100119.Spec : Prop :=
  ∀ n, P12620894238278100119.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P13639047097994824206

`∑[∑[a(n-2)+8]]` with `a(0)=1, a(1)=3`
-/

namespace A056640.P13639047097994824206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P13639047097994824206

namespace A056640

/-- `∑[∑[a(n-2)+8]]` -/
def P13639047097994824206.Spec : Prop :=
  ∀ n, (P13639047097994824206.a n : ℤ) = A056640 (n + 1)

end A056640

/-! ## A056640.P13720644774394486983

`floor(∑[cosh(log((2*n+1)²))])`
-/

namespace A056640.P13720644774394486983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log ((2 * n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A056640.P13720644774394486983

namespace A056640

/-- `floor(∑[cosh(log((2*n+1)²))])` -/
def P13720644774394486983.Spec : Prop :=
  ∀ n, P13720644774394486983.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P10581089481359632771

`round(cosh(log(∑[(2*n+1)²])))`
-/

namespace A056640.P10581089481359632771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A056640.P10581089481359632771

namespace A056640

/-- `round(cosh(log(∑[(2*n+1)²])))` -/
def P10581089481359632771.Spec : Prop :=
  ∀ n, P10581089481359632771.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P14746350431196385971

`∑[∑[∑[8-a(n-1)]]]` with `a(0)=1, a(1)=2`
-/

namespace A056640.P14746350431196385971
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  8 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P14746350431196385971

namespace A056640

/-- `∑[∑[∑[8-a(n-1)]]]` -/
def P14746350431196385971.Spec : Prop :=
  ∀ n, P14746350431196385971.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P14868397695605394644

`∑[and(1, n+1)+∑[4*n]]`
-/

namespace A056640.P14868397695605394644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P14868397695605394644

namespace A056640

/-- `∑[and(1, n+1)+∑[4*n]]` -/
def P14868397695605394644.Spec : Prop :=
  ∀ n, (P14868397695605394644.a n : ℤ) = A056640 (n + 1)

end A056640

/-! ## A056640.P7009201544643566356

`∑[or(1, n*(2*n+1))+n]`
-/

namespace A056640.P7009201544643566356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (2 * n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P7009201544643566356

namespace A056640

/-- `∑[or(1, n*(2*n+1))+n]` -/
def P7009201544643566356.Spec : Prop :=
  ∀ n, (P7009201544643566356.a n : ℤ) = A056640 (n + 1)

end A056640

/-! ## A056640.P14733761686836478249

`(2*n)²+a(n-2)+1` with `a(0)=1, a(1)=5`
-/

namespace A056640.P14733761686836478249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 * n) ^ 2 + (a (n - 2) + 1)

end

end A056640.P14733761686836478249

namespace A056640

/-- `(2*n)²+a(n-2)+1` -/
def P14733761686836478249.Spec : Prop :=
  ∀ n, (P14733761686836478249.a n : ℤ) = A056640 (n + 1)

end A056640

/-! ## A056640.P5407003222609685934

`∑[(n+1)%2+(n+1)*2*n]`
-/

namespace A056640.P5407003222609685934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + (n + 1) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P5407003222609685934

namespace A056640

/-- `∑[(n+1)%2+(n+1)*2*n]` -/
def P5407003222609685934.Spec : Prop :=
  ∀ n, (P5407003222609685934.a n : ℤ) = A056640 (n + 1)

end A056640

/-! ## A056640.P6525564737363897864

`∑[A317298(n)+n]`
-/

namespace A056640.P6525564737363897864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P6525564737363897864

namespace A056640

/-- `∑[A317298(n)+n]` -/
def P6525564737363897864.Spec : Prop :=
  ∀ n, P6525564737363897864.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P1560314069654256640

`A213388(n)-∑[n]`
-/

namespace A056640.P1560314069654256640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213388 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A056640.P1560314069654256640

namespace A056640

/-- `A213388(n)-∑[n]` -/
def P1560314069654256640.Spec : Prop :=
  ∀ n, P1560314069654256640.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P14297054605181104463

`∑[∑[A047471(n+1)]]`
-/

namespace A056640.P14297054605181104463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P14297054605181104463

namespace A056640

/-- `∑[∑[A047471(n+1)]]` -/
def P14297054605181104463.Spec : Prop :=
  ∀ n, P14297054605181104463.a n = A056640 (n + 1)

end A056640

/-! ## A056640.P73172256656135292

`∑[A139592(n)+1+n]`
-/

namespace A056640.P73172256656135292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056640.P73172256656135292

namespace A056640

/-- `∑[A139592(n)+1+n]` -/
def P73172256656135292.Spec : Prop :=
  ∀ n, P73172256656135292.a n = A056640 (n + 1)

end A056640

/-!
# A056641: Least positive integer k for which (b+1)^k is not palindromic in base b, b = 2, 3, 4, ...

The programs for A056641, the canonical program `A056641.P8807853742238268131` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056641 has offset 2).

The definition of A056641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056641.P8807853742238268131

`A305233(abs(1-n)+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056641

/-- `A305233(abs(1-n)+3)` -/
def P8807853742238268131.Spec : Prop :=
  ∀ n, P8807853742238268131.a n = A056641 (n + 2)

theorem P8807853742238268131.correct : P8807853742238268131.Spec := by
  intro n
  simp only [A056641, Nat.add_sub_cancel]

end A056641

/-! ## A056641.P13065124990505625917

`A305233(n+2)+A000038(n)`
-/

namespace A056641.P13065124990505625917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (n + 2) + A000038 n

end

end A056641.P13065124990505625917

namespace A056641

/-- `A305233(n+2)+A000038(n)` -/
def P13065124990505625917.Spec : Prop :=
  ∀ n, P13065124990505625917.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P1052682124401751485

`A054977(n)*A305233(n+2)`
-/

namespace A056641.P1052682124401751485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A305233 (n + 2)

end

end A056641.P1052682124401751485

namespace A056641

/-- `A054977(n)*A305233(n+2)` -/
def P1052682124401751485.Spec : Prop :=
  ∀ n, P1052682124401751485.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P4616516243209689291

`A000034(A005875(n))*A305233(n+2)`
-/

namespace A056641.P4616516243209689291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A005875 n).toNat * A305233 (n + 2)

end

end A056641.P4616516243209689291

namespace A056641

/-- `A000034(A005875(n))*A305233(n+2)` -/
def P4616516243209689291.Spec : Prop :=
  ∀ n, P4616516243209689291.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P445445040977398881

`A000034(A014452(n))*A305233(n+2)`
-/

namespace A056641.P445445040977398881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A014452 n).toNat * A305233 (n + 2)

end

end A056641.P445445040977398881

namespace A056641

/-- `A000034(A014452(n))*A305233(n+2)` -/
def P445445040977398881.Spec : Prop :=
  ∀ n, P445445040977398881.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P16470311960452562872

`A027642(Δ[n²])*A305233(n+2)`
-/

namespace A056641.P16470311960452562872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A305233 (n + 2)

end

end A056641.P16470311960452562872

namespace A056641

/-- `A027642(Δ[n²])*A305233(n+2)` -/
def P16470311960452562872.Spec : Prop :=
  ∀ n, P16470311960452562872.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P2251928596859704601

`A014963(4*n+2)*A305233(n+2)`
-/

namespace A056641.P2251928596859704601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A305233 (n + 2)

end

end A056641.P2251928596859704601

namespace A056641

/-- `A014963(4*n+2)*A305233(n+2)` -/
def P2251928596859704601.Spec : Prop :=
  ∀ n, P2251928596859704601.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P5742187233526850593

`A070939(A031466(n+1))+A000038(n)`
-/

namespace A056641.P5742187233526850593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A031466 (n + 1)).toNat + A000038 n

end

end A056641.P5742187233526850593

namespace A056641

/-- `A070939(A031466(n+1))+A000038(n)` -/
def P5742187233526850593.Spec : Prop :=
  ∀ n, P5742187233526850593.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P2792018197816484682

`A000034(A000118(n))*A305233(n+2)`
-/

namespace A056641.P2792018197816484682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000118 n).toNat * A305233 (n + 2)

end

end A056641.P2792018197816484682

namespace A056641

/-- `A000034(A000118(n))*A305233(n+2)` -/
def P2792018197816484682.Spec : Prop :=
  ∀ n, P2792018197816484682.a n = A056641 (n + 2)

end A056641

/-! ## A056641.P3375050487590176256

`A000034(A004011(n))*A305233(n+2)`
-/

namespace A056641.P3375050487590176256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004011 n).toNat * A305233 (n + 2)

end

end A056641.P3375050487590176256

namespace A056641

/-- `A000034(A004011(n))*A305233(n+2)` -/
def P3375050487590176256.Spec : Prop :=
  ∀ n, P3375050487590176256.a n = A056641 (n + 2)

end A056641

/-!
# A056642: Number of linear spaces on n (labeled) points.

The programs for A056642, there is no canonical definition to state claims against.
-/

/-! ## A056642.P4041452493083248335

`A332276(floor(n^n/n!))%(21*2^n-1)`
-/

namespace A056642.P4041452493083248335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332276 ⌊(n ^ n : ℚ) / (Nat.factorial n : ℚ)⌋.toNat) ((21 * 2 ^ n : ℤ) - 1)

end

end A056642.P4041452493083248335

/-! ## A056642.P11370113727791505805

`A211964(A114296(n))`
-/

namespace A056642.P11370113727791505805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A114296 n).toNat

end

end A056642.P11370113727791505805

/-!
# A056643: Numbers n such that n | 4^n + 3^n + 2^n + 1^n.

The programs for A056643, there is no canonical definition to state claims against.
-/

/-! ## A056643.P14184961882326692023

`eq[0, A341410(n+1)]+1`
-/

namespace A056643.P14184961882326692023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056643.P14184961882326692023

/-! ## A056643.P14186789514061150058

`record[gcd(A000027(n+1), A341410(n+1))]`
-/

namespace A056643.P14186789514061150058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A341410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056643.P14186789514061150058

/-! ## A056643.P4111345195961241793

`lt[A341410(n+1)%A008486(n), 1]+1`
-/

namespace A056643.P4111345195961241793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341410 (n + 1)) (A008486 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056643.P4111345195961241793

/-! ## A056643.P17959262775690203812

`eq[A003982(n), A341410(A028310(n))]`
-/

namespace A056643.P17959262775690203812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056643.P17959262775690203812

/-! ## A056643.P12043823122873201402

`eq[A005925(n), A341410(A028310(n))]`
-/

namespace A056643.P12043823122873201402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056643.P12043823122873201402

/-!
# A056645: Numbers n such that n | 3^n + 2^n + 1^n.

The programs for A056645, there is no canonical definition to state claims against.
-/

/-! ## A056645.P345960264543813270

`filter[A057844(n+1), A166486(#)]`
-/

namespace A056645.P345960264543813270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A056645.P345960264543813270

/-! ## A056645.P15331018462532969035

`record[A065883(A057844(n+1))]`
-/

namespace A056645.P15331018462532969035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A057844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056645.P15331018462532969035

/-! ## A056645.P15799912565457495934

`eq[0, A341409(n+1)]+1`
-/

namespace A056645.P15799912565457495934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056645.P15799912565457495934

/-! ## A056645.P8335408642672309844

`eq[A000007(n), A341409(A028310(n))]`
-/

namespace A056645.P8335408642672309844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341409 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056645.P8335408642672309844

/-! ## A056645.P4151741226638875043

`eq[A000038(n), A341409(A028310(n))]`
-/

namespace A056645.P4151741226638875043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341409 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056645.P4151741226638875043

/-!
# A056646: a(n) = A056622(A001405(n)).

The programs for A056646, there is no canonical definition to state claims against.
-/

/-! ## A056646.P9869723870759470455

`A056056(n+1)/A056059(n+1)`
-/

namespace A056646.P9869723870759470455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056056 (n + 1) : ℚ) / (A056059 (n + 1) : ℚ)

end

end A056646.P9869723870759470455

/-! ## A056646.P10904229046666297112

`sqrt(A056647(n+1))`
-/

namespace A056646.P10904229046666297112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056647 (n + 1) : ℝ)

end

end A056646.P10904229046666297112

/-! ## A056646.P8915368189681223726

`sqrt(A056057(n+1))/A056059(n+1)`
-/

namespace A056646.P8915368189681223726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ) / (A056059 (n + 1) : ℝ)

end

end A056646.P8915368189681223726

/-! ## A056646.P590553627436544717

`A056056(n+1)/A007947(A056201(n+1))`
-/

namespace A056646.P590553627436544717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056056 (n + 1) : ℚ) / (A007947 (A056201 (n + 1)).toNat : ℚ)

end

end A056646.P590553627436544717

/-! ## A056646.P15266355509092993275

`sqrt(A056057(n+1))/A007913(A056201(n+1))`
-/

namespace A056646.P15266355509092993275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ) / (A007913 (A056201 (n + 1)).toNat : ℝ)

end

end A056646.P15266355509092993275

/-! ## A056646.P14415712153550743376

`A056056(n+1)/A056058(n+1)*A056060(n+1)`
-/

namespace A056646.P14415712153550743376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056056 (n + 1) : ℚ) / (A056058 (n + 1) : ℚ) * (A056060 (n + 1) : ℚ)

end

end A056646.P14415712153550743376

/-! ## A056646.P1545246968435034294

`A000188(2*A056647(n+1))`
-/

namespace A056646.P1545246968435034294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A056647 (n + 1)).toNat

end

end A056646.P1545246968435034294

/-! ## A056646.P6508196052063529261

`A162401(2*A056647(n+1))`
-/

namespace A056646.P6508196052063529261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (2 * A056647 (n + 1)).toNat

end

end A056646.P6508196052063529261

/-! ## A056646.P8556376092197942729

`A004736(2*A056647(n+1)+1)`
-/

namespace A056646.P8556376092197942729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (2 * A056647 (n + 1) + 1).toNat

end

end A056646.P8556376092197942729

/-! ## A056646.P5523475758734968137

`A019554(A056647(2*n+1-n))`
-/

namespace A056646.P5523475758734968137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A056647 (2 * n + 1 - n)).toNat

end

end A056646.P5523475758734968137

/-!
# A056647: a(n) = A056623(A001405(n)).

The programs for A056647, there is no canonical definition to state claims against.
-/

/-! ## A056647.P4149429294727355530

`(A056056(n+1)/A056059(n+1))²`
-/

namespace A056647.P4149429294727355530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056056 (n + 1) : ℚ) / (A056059 (n + 1) : ℚ)) ^ 2

end

end A056647.P4149429294727355530

/-! ## A056647.P7372399994133923626

`A056057(n+1)/A056059(n+1)²`
-/

namespace A056647.P7372399994133923626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056057 (n + 1) : ℚ) / (A056059 (n + 1) ^ 2 : ℚ)

end

end A056647.P7372399994133923626

/-! ## A056647.P17499915502649684131

`A056646(n+1)²`
-/

namespace A056647.P17499915502649684131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056646 (n + 1) ^ 2

end

end A056647.P17499915502649684131

/-! ## A056647.P11446493556816307580

`A056646(n+1)^(2%A016969(n))`
-/

namespace A056647.P11446493556816307580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056646 (n + 1) : ℚ) ^ (Int.tmod 2 (A016969 n) : ℤ)

end

end A056647.P11446493556816307580

/-! ## A056647.P8865638969540824500

`A056646(n+1)^A020639(2*(n+1))`
-/

namespace A056647.P8865638969540824500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056646 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A056647.P8865638969540824500

/-! ## A056647.P1066849213228989385

`A056646(n+1)^(2*n-A004275(n))`
-/

namespace A056647.P1066849213228989385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056646 (n + 1) : ℚ) ^ ((2 * n : ℤ) - A004275 n : ℤ)

end

end A056647.P1066849213228989385

/-! ## A056647.P584190875938756930

`A056646(n+1)^A006530(A001316(n))`
-/

namespace A056647.P584190875938756930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056646 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A056647.P584190875938756930

/-! ## A056647.P8797976264876437996

`A056056(n+1)/A056059(n+1)*A056646(n+1)`
-/

namespace A056647.P8797976264876437996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056056 (n + 1) : ℚ) / (A056059 (n + 1) : ℚ) * (A056646 (n + 1) : ℚ)

end

end A056647.P8797976264876437996

/-! ## A056647.P13750533621894072340

`A056057(n+1)/A008833(A056201(n+1))`
-/

namespace A056647.P13750533621894072340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056057 (n + 1) : ℚ) / (A008833 (A056201 (n + 1)).toNat : ℚ)

end

end A056647.P13750533621894072340

/-! ## A056647.P13948032111505552088

`(A056056(n+1)/A007947(A056201(n+1)))²`
-/

namespace A056647.P13948032111505552088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056056 (n + 1) : ℚ) / (A007947 (A056201 (n + 1)).toNat : ℚ)) ^ 2

end

end A056647.P13948032111505552088

/-! ## A056647.P11518989703114701297

`A056202(n+1)/A056060(n+1)`
-/

namespace A056647.P11518989703114701297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056202 (n + 1) : ℚ) / (A056060 (n + 1) : ℚ)

end

end A056647.P11518989703114701297

/-! ## A056647.P11549771267663083529

`gcd(A056057(n+1), A056202(n+1))`
-/

namespace A056647.P11549771267663083529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056057 (n + 1)) (A056202 (n + 1))

end

end A056647.P11549771267663083529

/-! ## A056647.P10830016459384220058

`A001405(n+1)/(A056060(n+1)*A056201(n+1))`
-/

namespace A056647.P10830016459384220058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056060 (n + 1) * A056201 (n + 1) : ℚ)

end

end A056647.P10830016459384220058

/-! ## A056647.P8389712024575471583

`A002620(2*A056646(n+1))`
-/

namespace A056647.P8389712024575471583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A056646 (n + 1)).toNat

end

end A056647.P8389712024575471583

/-! ## A056647.P606949486277598040

`A008833(A056056(n+1)*A056646(n+1))`
-/

namespace A056647.P606949486277598040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A056056 (n + 1) * A056646 (n + 1)).toNat

end

end A056647.P606949486277598040

/-! ## A056647.P13647940974414177344

`A008833(A056646(n+1)*A056646(n+1))`
-/

namespace A056647.P13647940974414177344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A056646 (n + 1) * A056646 (n + 1)).toNat

end

end A056647.P13647940974414177344

/-! ## A056647.P6283759912590352943

`A008833(A056057(n+1)/A056059(n+1))`
-/

namespace A056647.P6283759912590352943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((A056057 (n + 1) : ℚ) / (A056059 (n + 1) : ℚ))).toNat

end

end A056647.P6283759912590352943

/-!
# A056648: a(n) = A034444(A056647(n)).

The programs for A056648, there is no canonical definition to state claims against.
-/

/-! ## A056648.P10741861672592662009

`A034444(A056647(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056648.P10741861672592662009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A056647 (n + 1)).toNat

end

end A056648.P10741861672592662009

/-! ## A056648.P6961681369802977561

`A056061(n+1)-A056649(n+1)`
-/

namespace A056648.P6961681369802977561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (n + 1) - A056649 (n + 1)

end

end A056648.P6961681369802977561

/-! ## A056648.P9143974501104151950

`∏{p}[A056646(n+1), A000005(#)]`
-/

namespace A056648.P9143974501104151950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p

end

end A056648.P9143974501104151950

/-! ## A056648.P16032549408143756860

`∏{p}[A056646(n+1), A020639(2*#)]`
-/

namespace A056648.P16032549408143756860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (2 * p)

end

end A056648.P16032549408143756860

/-! ## A056648.P8318698492181257912

`(char[A057509(n)-1]+1)^A001221(A056646(n+1))`
-/

namespace A056648.P8318698492181257912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 n - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) ^ (A001221 (A056646 (n + 1)).toNat : ℤ)

end

end A056648.P8318698492181257912

/-! ## A056648.P2184492675462561225

`A341619(2*n+5)+2^A001221(A056646(n+1))`
-/

namespace A056648.P2184492675462561225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341619 (2 * n + 5) : ℚ) + (2 : ℚ) ^ (A001221 (A056646 (n + 1)).toNat : ℤ)

end

end A056648.P2184492675462561225

/-! ## A056648.P3724445691298819287

`(char[A065770(n+1)-1]+1)^A001221(A056646(n+1))`
-/

namespace A056648.P3724445691298819287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) ^ (A001221 (A056646 (n + 1)).toNat : ℤ)

end

end A056648.P3724445691298819287

/-! ## A056648.P8832545601801122819

`A034444(A034444(n+3))^A001221(A056646(n+1))`
-/

namespace A056648.P8832545601801122819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (A034444 (n + 3)).toNat : ℚ) ^ (A001221 (A056646 (n + 1)).toNat : ℤ)

end

end A056648.P8832545601801122819

/-! ## A056648.P15560393181385941157

`A034444(A056646(n+1))`
-/

namespace A056648.P15560393181385941157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A056646 (n + 1)).toNat

end

end A056648.P15560393181385941157

/-! ## A056648.P15624782361142389638

`A000005(A056056(n+1))-A056649(n+1)`
-/

namespace A056648.P15624782361142389638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056056 (n + 1)).toNat - A056649 (n + 1)

end

end A056648.P15624782361142389638

/-! ## A056648.P12585416571845303175

`A034444(A056056(n+1)/A056059(n+1))`
-/

namespace A056648.P12585416571845303175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((A056056 (n + 1) : ℚ) / (A056059 (n + 1) : ℚ))).toNat

end

end A056648.P12585416571845303175

/-! ## A056648.P1738188085913328083

`A000005(sqrt(A056057(n+1)))-A056649(n+1)`
-/

namespace A056648.P1738188085913328083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A056057 (n + 1) : ℝ))).toNat - A056649 (n + 1)

end

end A056648.P1738188085913328083

/-! ## A056648.P13365937015459762655

`∏{p}[A056647(n+1), A000040(A024994(#))]`
-/

namespace A056648.P13365937015459762655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A024994 p).toNat

end

end A056648.P13365937015459762655

/-! ## A056648.P6136497074630493404

`∏{p}[A056647(n+1), A000040(A056647(#))]`
-/

namespace A056648.P6136497074630493404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A056647 p).toNat

end

end A056648.P6136497074630493404

/-! ## A056648.P7405533782456127138

`∏{p}[A056647(n+1), A024959(A097242(#))]`
-/

namespace A056648.P7405533782456127138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024959 (A097242 p).toNat

end

end A056648.P7405533782456127138

/-! ## A056648.P5458529159808749120

`∏{p}[A056647(n+1), A328795(A196008(#))]`
-/

namespace A056648.P5458529159808749120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A328795 (A196008 p).toNat

end

end A056648.P5458529159808749120

/-!
# A056649: a(n) = A056061(n) - A034444(A056647(n)).

The programs for A056649, there is no canonical definition to state claims against.
-/

/-! ## A056649.P14769137294727313307

`A056061(n+1)-A034444(A056647(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056649.P14769137294727313307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (n + 1) - A034444 (A056647 (n + 1)).toNat

end

end A056649.P14769137294727313307

/-! ## A056649.P6632989358602924854

`A056061(n+1)-A056648(n+1)`
-/

namespace A056649.P6632989358602924854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (n + 1) - A056648 (n + 1)

end

end A056649.P6632989358602924854

/-! ## A056649.P2556277395834839661

`A000005(A056056(n+1))-A056648(n+1)`
-/

namespace A056649.P2556277395834839661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056056 (n + 1)).toNat - A056648 (n + 1)

end

end A056649.P2556277395834839661

/-! ## A056649.P12677781716748956994

`A056061(n+1)-A034444(A056646(n+1))`
-/

namespace A056649.P12677781716748956994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (n + 1) - A034444 (A056646 (n + 1)).toNat

end

end A056649.P12677781716748956994

/-! ## A056649.P12826693172295041783

`A000005(sqrt(A056057(n+1)))-A056648(n+1)`
-/

namespace A056649.P12826693172295041783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A056057 (n + 1) : ℝ))).toNat - A056648 (n + 1)

end

end A056649.P12826693172295041783

/-! ## A056649.P11561923188303491151

`A046951(A056057(n+1))-A056648(n+1)`
-/

namespace A056649.P11561923188303491151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A056057 (n + 1)).toNat - A056648 (n + 1)

end

end A056649.P11561923188303491151

/-!
# A056650: a(n) is the greatest prime factor of a(n-1)^2+a(n-1)+1.

The programs for A056650, there is no canonical definition to state claims against.
-/

/-! ## A056650.P7974377476677284764

`A081257(a(n-1))` with `a(0)=2`
-/

namespace A056650.P7974377476677284764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A081257 (a (n - 1)).toNat

end

end A056650.P7974377476677284764

/-! ## A056650.P583351619903933749

`A081257(floor(a(A023443(n))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A056650.P583351619903933749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A081257 (a (A023443 n).toNat).toNat

end

end A056650.P583351619903933749

/-!
# A056651: Numbers k such that binomial(k,floor(k/2)) has no non-unitary square divisors: all of their square divisors are unitary ones.

The programs for A056651, there is no canonical definition to state claims against.
-/

/-! ## A056651.P298549413469898172

`eq[0, A376556(n)]`
-/

namespace A056651.P298549413469898172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056651.P298549413469898172

/-! ## A056651.P8456425657631563022

`eq[0, A056649(round(acot(n)+n))]`
-/

namespace A056651.P8456425657631563022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056651.P8456425657631563022

/-! ## A056651.P14083271948759886668

`lt[A056649(abs(1-n)+1), 1]`
-/

namespace A056651.P14083271948759886668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056651.P14083271948759886668

/-! ## A056651.P13219749693660163800

`eq[0, A056649(round(sqrt(n²+1)))]`
-/

namespace A056651.P13219749693660163800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056651.P13219749693660163800

/-! ## A056651.P3943674852510615368

`eq[A056649(A028310(n)), A061397(2*(n+2))]`
-/

namespace A056651.P3943674852510615368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056651.P3943674852510615368

/-! ## A056651.P7606258962585662902

`eq[1, A057353(n)^A056649(A028310(n))]`
-/

namespace A056651.P7606258962585662902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057353 n : ℚ) ^ (A056649 (A028310 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A056651.P7606258962585662902

/-!
# A056652: Integers > 1 whose prime divisors are all Mersenne primes (i.e., of the form (2^p - 1)).

The programs for A056652, there is no canonical definition to state claims against.
-/

/-! ## A056652.P12691913570734012199

`∩[A219174(n+2), A282572(n+2)]`
-/

namespace A056652.P12691913570734012199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056652.P12691913570734012199

/-! ## A056652.P4452773413581665545

`∩[A219174(n+2), A342572(n+2)]`
-/

namespace A056652.P4452773413581665545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056652.P4452773413581665545

/-! ## A056652.P1511021708788391658

`∩[A219174(n+2), A305409(n+2)]`
-/

namespace A056652.P1511021708788391658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056652.P1511021708788391658

/-! ## A056652.P6591973804755408181

`filter[A219174(n+2), A360113(#)]`
-/

namespace A056652.P6591973804755408181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A056652.P6591973804755408181

/-! ## A056652.P12737670078985743450

`filter[A219174(n+2), A374134(#)]`
-/

namespace A056652.P12737670078985743450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A056652.P12737670078985743450

/-! ## A056652.P10809495236272108007

`filter[A282572(n+2), A364252(#)]`
-/

namespace A056652.P10809495236272108007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A056652.P10809495236272108007

/-! ## A056652.P1648441979283549790

`filter[A305409(n+2), A364252(#)]`
-/

namespace A056652.P1648441979283549790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A056652.P1648441979283549790

/-! ## A056652.P382235399530857980

`filter[A342572(n+2), A364252(#)]`
-/

namespace A056652.P382235399530857980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A056652.P382235399530857980

/-! ## A056652.P3899987187010122980

`filter[A376857(n+2), A364252(#)]`
-/

namespace A056652.P3899987187010122980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A056652.P3899987187010122980

/-! ## A056652.P19787382936230044

`filter[A364614(n+2), A364252(#)]`
-/

namespace A056652.P19787382936230044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A056652.P19787382936230044

/-!
# A056653: Composite numbers together with 1 but excluding 4.

The programs for A056653, the canonical program `A056653.P4720559690192011754` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056653 has offset 1).

The definition of A056653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056653.P4720559690192011754

`A118742(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056653

/-- `A118742(n)+1` -/
def P4720559690192011754.Spec : Prop :=
  ∀ n, P4720559690192011754.a n = A056653 (n + 1)

theorem P4720559690192011754.correct : P4720559690192011754.Spec := by
  intro n
  simp only [A056653, Nat.add_sub_cancel]

end A056653

/-! ## A056653.P4709140915070723597

`lt[0, A072480(n)]`
-/

namespace A056653.P4709140915070723597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A056653.P4709140915070723597

namespace A056653

/-- `lt[0, A072480(n)]` -/
def P4709140915070723597.Spec : Prop :=
  ∀ n, (P4709140915070723597.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P57040474281341982

`comp[record[A001414(n+1)]]`
-/

namespace A056653.P57040474281341982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A056653.P57040474281341982

namespace A056653

/-- `comp[record[A001414(n+1)]]` -/
def P57040474281341982.Spec : Prop :=
  ∀ n, (P57040474281341982.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P5196676508266160673

`comp[record[A085729(n+1)]]`
-/

namespace A056653.P5196676508266160673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A056653.P5196676508266160673

namespace A056653

/-- `comp[record[A085729(n+1)]]` -/
def P5196676508266160673.Spec : Prop :=
  ∀ n, (P5196676508266160673.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P16527200419193059524

`comp[A068499(n+1)]+1`
-/

namespace A056653.P16527200419193059524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A056653.P16527200419193059524

namespace A056653

/-- `comp[A068499(n+1)]+1` -/
def P16527200419193059524.Spec : Prop :=
  ∀ n, (P16527200419193059524.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P17012488850941515052

`comp[A151800(a(n-1))]` with `a(0)=4, a(1)=0`
-/

namespace A056653.P17012488850941515052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  A151800 (f1 (n - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A056653.P17012488850941515052

namespace A056653

/-- `comp[A151800(a(n-1))]` -/
def P17012488850941515052.Spec : Prop :=
  ∀ n, (P17012488850941515052.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P12410004840315726277

`A018252(ceil(atan(n+1)+n))`
-/

namespace A056653.P12410004840315726277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ⌈Real.arctan (n + 1 : ℝ) + (n : ℝ)⌉.toNat

end

end A056653.P12410004840315726277

namespace A056653

/-- `A018252(ceil(atan(n+1)+n))` -/
def P12410004840315726277.Spec : Prop :=
  ∀ n, P12410004840315726277.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P13112074526612672236

`A018252(2-floor(acot(n))+n)`
-/

namespace A056653.P13112074526612672236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A056653.P13112074526612672236

namespace A056653

/-- `A018252(2-floor(acot(n))+n)` -/
def P13112074526612672236.Spec : Prop :=
  ∀ n, P13112074526612672236.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P16583346344503076012

`A018252(ceil(2-acot(n)+n))`
-/

namespace A056653.P16583346344503076012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ⌈2 - SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A056653.P16583346344503076012

namespace A056653

/-- `A018252(ceil(2-acot(n)+n))` -/
def P16583346344503076012.Spec : Prop :=
  ∀ n, P16583346344503076012.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P10849091953636468522

`A018252((n+2)/ceil(acot(n)))`
-/

namespace A056653.P10849091953636468522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A056653.P10849091953636468522

namespace A056653

/-- `A018252((n+2)/ceil(acot(n)))` -/
def P10849091953636468522.Spec : Prop :=
  ∀ n, P10849091953636468522.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P11656221491832439409

`A018252(C(n+2, ceil(acot(n))))`
-/

namespace A056653.P11656221491832439409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.choose (n + 2) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat)

end

end A056653.P11656221491832439409

namespace A056653

/-- `A018252(C(n+2, ceil(acot(n))))` -/
def P11656221491832439409.Spec : Prop :=
  ∀ n, P11656221491832439409.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P16360826611288743412

`A018252(round(∑[ratio[atan(n+1)]]))`
-/

namespace A056653.P16360826611288743412
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A056653.P16360826611288743412

namespace A056653

/-- `A018252(round(∑[ratio[atan(n+1)]]))` -/
def P16360826611288743412.Spec : Prop :=
  ∀ n, P16360826611288743412.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P16714141267478154305

`A018252(n+2)%∑[n+3]`
-/

namespace A056653.P16714141267478154305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A056653.P16714141267478154305

namespace A056653

/-- `A018252(n+2)%∑[n+3]` -/
def P16714141267478154305.Spec : Prop :=
  ∀ n, P16714141267478154305.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P13524501350560915184

`A018252(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A056653.P13524501350560915184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A056653.P13524501350560915184

namespace A056653

/-- `A018252(ceil(sqrt(∑[2*n]))+1)` -/
def P13524501350560915184.Spec : Prop :=
  ∀ n, P13524501350560915184.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P4955878438644846089

`∪[(n+1)^3, A018252(n+3)]`
-/

namespace A056653.P4955878438644846089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056653.P4955878438644846089

namespace A056653

/-- `∪[(n+1)^3, A018252(n+3)]` -/
def P4955878438644846089.Spec : Prop :=
  ∀ n, (P4955878438644846089.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P2109018264476639342

`comp[xor(1, comp[A018252(n+1)])]+1`
-/

namespace A056653.P2109018264476639342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A056653.P2109018264476639342

namespace A056653

/-- `comp[xor(1, comp[A018252(n+1)])]+1` -/
def P2109018264476639342.Spec : Prop :=
  ∀ n, (P2109018264476639342.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P3430237045076067071

`lt[A020639(n+1), abs(2-n)]+1`
-/

namespace A056653.P3430237045076067071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A056653.P3430237045076067071

namespace A056653

/-- `lt[A020639(n+1), abs(2-n)]+1` -/
def P3430237045076067071.Spec : Prop :=
  ∀ n, (P3430237045076067071.a n : ℤ) = A056653 (n + 1)

end A056653

/-! ## A056653.P11929002459460947512

`record[A018252(n+1-3%(n+1))]`
-/

namespace A056653.P11929002459460947512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1 - 3 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056653.P11929002459460947512

namespace A056653

/-- `record[A018252(n+1-3%(n+1))]` -/
def P11929002459460947512.Spec : Prop :=
  ∀ n, P11929002459460947512.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P17972941041965807565

`record[A018252(n-a(2%n))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A056653.P17972941041965807565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f1 =>
  A018252 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056653.P17972941041965807565

namespace A056653

/-- `record[A018252(n-a(2%n))]` -/
def P17972941041965807565.Spec : Prop :=
  ∀ n, P17972941041965807565.a n = A056653 (n + 1)

end A056653

/-! ## A056653.P10236893071591146167

`lt[n, (n-2)^A001222(n+1)]+1`
-/

namespace A056653.P10236893071591146167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A056653.P10236893071591146167

namespace A056653

/-- `lt[n, (n-2)^A001222(n+1)]+1` -/
def P10236893071591146167.Spec : Prop :=
  ∀ n, (P10236893071591146167.a n : ℤ) = A056653 (n + 1)

end A056653

/-!
# A056654: Numbers k such that 10*R_k + 3 is prime, where R_k is the repunit (A002275) of length k.

The programs for A056654, there is no canonical definition to state claims against.
-/

/-! ## A056654.P11250507560391363239

`A097683(n+2)-1`
-/

namespace A056654.P11250507560391363239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097683 (n + 2) - 1

end

end A056654.P11250507560391363239

/-! ## A056654.P10443715279748687692

`A375389(n+1)+A097683(n+2)`
-/

namespace A056654.P10443715279748687692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (n + 1) + A097683 (n + 2)

end

end A056654.P10443715279748687692

/-! ## A056654.P9507174508368327552

`A153881(n+2)+A097683(n+2)`
-/

namespace A056654.P9507174508368327552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A097683 (n + 2)

end

end A056654.P9507174508368327552

/-! ## A056654.P16493353126628310841

`∑[Δ[A097683(n+1)]%A047855(n)]`
-/

namespace A056654.P16493353126628310841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A047855 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056654.P16493353126628310841

/-! ## A056654.P15787882991197773778

`abs(A097683(n+2)+A057428(n+1))`
-/

namespace A056654.P15787882991197773778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097683 (n + 2) + A057428 (n + 1)|

end

end A056654.P15787882991197773778

/-!
# A056655: Numbers k such that 10*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056655, there is no canonical definition to state claims against.
-/

/-! ## A056655.P3246871851512515501

`A097684(n+1)-1`
-/

namespace A056655.P3246871851512515501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097684 (n + 1) - 1

end

end A056655.P3246871851512515501

/-! ## A056655.P3832986358170002430

`record[Δ[A097684(A152271(n))]]`
-/

namespace A056655.P3832986358170002430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097684 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056655.P3832986358170002430

/-! ## A056655.P2086457228841699412

`record[Δ[A097684(A158416(n))]]`
-/

namespace A056655.P2086457228841699412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097684 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056655.P2086457228841699412

/-! ## A056655.P6822432085284871244

`record[A097684(A086742(n))-1]`
-/

namespace A056655.P6822432085284871244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097684 (A086742 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056655.P6822432085284871244

/-! ## A056655.P14598870701275881427

`A153881(n+2)+A097684(n+1)`
-/

namespace A056655.P14598870701275881427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A097684 (n + 1)

end

end A056655.P14598870701275881427

/-!
# A056656: Numbers k such that 20*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056656, there is no canonical definition to state claims against.
-/

/-! ## A056656.P3714671984773880639

`A096506(n+1)-1`
-/

namespace A056656.P3714671984773880639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096506 (n + 1) - 1

end

end A056656.P3714671984773880639

/-! ## A056656.P3515686970583955392

`record[Δ[A096506(A158416(n))]]`
-/

namespace A056656.P3515686970583955392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096506 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056656.P3515686970583955392

/-! ## A056656.P10114068591532520569

`record[A096506(A133310(n))-1]`
-/

namespace A056656.P10114068591532520569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096506 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056656.P10114068591532520569

/-! ## A056656.P16700297294220992654

`A153881(n+2)+A096506(n+1)`
-/

namespace A056656.P16700297294220992654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A096506 (n + 1)

end

end A056656.P16700297294220992654

/-! ## A056656.P580744846048146657

`A123335(gcd(n, n+1))+A096506(n+1)`
-/

namespace A056656.P580744846048146657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (Nat.gcd n (n + 1)) + A096506 (n + 1)

end

end A056656.P580744846048146657

/-!
# A056657: Numbers k such that 60*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056657, there is no canonical definition to state claims against.
-/

/-! ## A056657.P4785817043067518325

`A096507(n+1)-1`
-/

namespace A056657.P4785817043067518325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096507 (n + 1) - 1

end

end A056657.P4785817043067518325

/-! ## A056657.P889224927635455903

`record[Δ[A096507(A158416(n))]]`
-/

namespace A056657.P889224927635455903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096507 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056657.P889224927635455903

/-! ## A056657.P12877488938089091405

`record[A096507(A086742(n))-1]`
-/

namespace A056657.P12877488938089091405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096507 (A086742 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056657.P12877488938089091405

/-! ## A056657.P7008128016806182149

`A134824(n+2)+A096507(n+1)`
-/

namespace A056657.P7008128016806182149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A096507 (n + 1)

end

end A056657.P7008128016806182149

/-! ## A056657.P4951830789246831212

`A153881(n+2)+A096507(n+1)`
-/

namespace A056657.P4951830789246831212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A096507 (n + 1)

end

end A056657.P4951830789246831212

/-!
# A056658: Numbers k such that 60*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056658, there is no canonical definition to state claims against.
-/

/-! ## A056658.P14844352407785293399

`A098088(n+1)-1`
-/

namespace A056658.P14844352407785293399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098088 (n + 1) - 1

end

end A056658.P14844352407785293399

/-! ## A056658.P12104810696874867055

`A134824(n+2)+A098088(n+1)`
-/

namespace A056658.P12104810696874867055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A098088 (n + 1)

end

end A056658.P12104810696874867055

/-! ## A056658.P16608896042505440235

`abs(A098088(n+1)+A057428(n+1))`
-/

namespace A056658.P16608896042505440235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098088 (n + 1) + A057428 (n + 1)|

end

end A056658.P16608896042505440235

/-! ## A056658.P3361212754335989564

`A300547(2*n+1)+A098088(n+1)`
-/

namespace A056658.P3361212754335989564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (2 * n + 1) + A098088 (n + 1)

end

end A056658.P3361212754335989564

/-! ## A056658.P12875964257978142098

`A321800(A033687(n))+A098088(n+1)`
-/

namespace A056658.P12875964257978142098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A033687 n).toNat + A098088 (n + 1)

end

end A056658.P12875964257978142098

/-!
# A056659: Numbers k such that 10*R_k + 9 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056659, there is no canonical definition to state claims against.
-/

/-! ## A056659.P4731262810358841006

`A097685(n+1)-1`
-/

namespace A056659.P4731262810358841006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097685 (n + 1) - 1

end

end A056659.P4731262810358841006

/-! ## A056659.P5869931110486306532

`record[A097685(A344180(n))-1]`
-/

namespace A056659.P5869931110486306532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097685 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056659.P5869931110486306532

/-! ## A056659.P9469004567659000641

`A260196(n+2)+A097685(n+1)`
-/

namespace A056659.P9469004567659000641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A097685 (n + 1)

end

end A056659.P9469004567659000641

/-! ## A056659.P7578950111166479341

`A153881(2*n+3)+A097685(n+1)`
-/

namespace A056659.P7578950111166479341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * n + 3) + A097685 (n + 1)

end

end A056659.P7578950111166479341

/-! ## A056659.P7022476753280195792

`A106400(2^n)+A097685(n+1)`
-/

namespace A056659.P7022476753280195792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (2 ^ n) + A097685 (n + 1)

end

end A056659.P7022476753280195792

/-!
# A056660: Numbers k such that 20*R_k + 1 is a prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056660, there is no canonical definition to state claims against.
-/

/-! ## A056660.P10113022150304459728

`A084832(n+1)-1`
-/

namespace A056660.P10113022150304459728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084832 (n + 1) - 1

end

end A056660.P10113022150304459728

/-! ## A056660.P1201830258609748121

`A023443(A084832(n+1))`
-/

namespace A056660.P1201830258609748121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084832 (n + 1)).toNat

end

end A056660.P1201830258609748121

/-! ## A056660.P13267471360569455730

`record[A084832(A053632(n))-1]`
-/

namespace A056660.P13267471360569455730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084832 (A053632 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056660.P13267471360569455730

/-! ## A056660.P14299863917955535038

`record[A084832(A371092(n))-1]`
-/

namespace A056660.P14299863917955535038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084832 (A371092 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056660.P14299863917955535038

/-! ## A056660.P8414504692798844708

`A023444(A084832(n+1)+1)`
-/

namespace A056660.P8414504692798844708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A084832 (n + 1) + 1).toNat

end

end A056660.P8414504692798844708

/-!
# A056661: Numbers k such that 40*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056661, there is no canonical definition to state claims against.
-/

/-! ## A056661.P18309833070500365633

`A096845(n+1)-1`
-/

namespace A056661.P18309833070500365633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096845 (n + 1) - 1

end

end A056661.P18309833070500365633

/-! ## A056661.P4986441730605613706

`record[Δ[A096845(A100727(n))]]`
-/

namespace A056661.P4986441730605613706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096845 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056661.P4986441730605613706

/-! ## A056661.P2919997011338721100

`record[Δ[A096845(A152271(n))]]`
-/

namespace A056661.P2919997011338721100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096845 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056661.P2919997011338721100

/-! ## A056661.P3999019508806426160

`record[Δ[A096845(A193592(n))]]`
-/

namespace A056661.P3999019508806426160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096845 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056661.P3999019508806426160

/-! ## A056661.P18370623011954475967

`record[Δ[A096845(A193739(n))]]`
-/

namespace A056661.P18370623011954475967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096845 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056661.P18370623011954475967

/-!
# A056662: Numbers k such that 90*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056662, there is no canonical definition to state claims against.
-/

/-! ## A056662.P12610081962145372082

`A089675(n+1)-1`
-/

namespace A056662.P12610081962145372082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089675 (n + 1) - 1

end

end A056662.P12610081962145372082

/-! ## A056662.P7719449363957951799

`record[Δ[A089675(A152271(n))]]`
-/

namespace A056662.P7719449363957951799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089675 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056662.P7719449363957951799

/-! ## A056662.P7094303296784940406

`record[Δ[A089675(A158416(n))]]`
-/

namespace A056662.P7094303296784940406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089675 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056662.P7094303296784940406

/-! ## A056662.P12502787917675663392

`record[Δ[A089675(A278538(n+1))]]`
-/

namespace A056662.P12502787917675663392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089675 (A278538 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056662.P12502787917675663392

/-! ## A056662.P11227284529613429646

`A134824(n+2)+A089675(n+1)`
-/

namespace A056662.P11227284529613429646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A089675 (n + 1)

end

end A056662.P11227284529613429646

/-!
# A056663: Numbers k such that 80*R_k + 9 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056663, there is no canonical definition to state claims against.
-/

/-! ## A056663.P11738228918034174997

`A096508(n+1)-1`
-/

namespace A056663.P11738228918034174997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096508 (n + 1) - 1

end

end A056663.P11738228918034174997

/-! ## A056663.P5375224562775625513

`record[A096508(A257213(n))-1]`
-/

namespace A056663.P5375224562775625513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096508 (A257213 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056663.P5375224562775625513

/-! ## A056663.P9819348563212741383

`record[A096508(A328399(n))-1]`
-/

namespace A056663.P9819348563212741383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096508 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056663.P9819348563212741383

/-! ## A056663.P17408396258564949696

`A286707(n+1)+A096508(n+1)`
-/

namespace A056663.P17408396258564949696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 1) + A096508 (n + 1)

end

end A056663.P17408396258564949696

/-! ## A056663.P5296991912782165280

`A153881(n+2)+A096508(n+1)`
-/

namespace A056663.P5296991912782165280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A096508 (n + 1)

end

end A056663.P5296991912782165280

/-!
# A056664: Numbers k such that 80*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056664, there is no canonical definition to state claims against.
-/

/-! ## A056664.P4488443413860212583

`A099421(n+2)-1`
-/

namespace A056664.P4488443413860212583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099421 (n + 2) - 1

end

end A056664.P4488443413860212583

/-! ## A056664.P9910338050528250509

`A118830(2*n+1)+A099421(n+2)`
-/

namespace A056664.P9910338050528250509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A099421 (n + 2)

end

end A056664.P9910338050528250509

/-! ## A056664.P17313341362310827570

`A321800(∑{e}[n+1, #])+A099421(n+2)`
-/

namespace A056664.P17313341362310827570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A099421 (n + 2)

end

end A056664.P17313341362310827570

/-! ## A056664.P11983714330711964726

`A134824(A020744(n))+A099421(n+2)`
-/

namespace A056664.P11983714330711964726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A020744 n).toNat + A099421 (n + 2)

end

end A056664.P11983714330711964726

/-! ## A056664.P17767608426751783918

`A144204(A330690(n+1))+A099421(n+2)`
-/

namespace A056664.P17767608426751783918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (A330690 (n + 1)).toNat + A099421 (n + 2)

end

end A056664.P17767608426751783918

/-!
# A056665: Number of equivalence classes of n-valued Post functions of 1 variable under action of complementing group C(1,n).

The programs for A056665, there is no canonical definition to state claims against.
-/

/-! ## A056665.P2618057950060369696

`1/(n+1)*A228640(n+1)`
-/

namespace A056665.P2618057950060369696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A228640 (n + 1) : ℚ)

end

end A056665.P2618057950060369696

/-! ## A056665.P14518070764492533395

`A054630(∑[n+1])`
-/

namespace A056665.P14518070764492533395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054630 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056665.P14518070764492533395

/-! ## A056665.P3002192235287928209

`A054631(∑[n+1])`
-/

namespace A056665.P3002192235287928209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056665.P3002192235287928209

/-! ## A056665.P14256535030445357092

`record[A054630(A080036(n+1)-2)]`
-/

namespace A056665.P14256535030445357092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054630 (A080036 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056665.P14256535030445357092

/-! ## A056665.P17317718532495327163

`A228640(n+1)/(n+1)`
-/

namespace A056665.P17317718532495327163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228640 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056665.P17317718532495327163

/-! ## A056665.P14040459286581651317

`A054618(∑[n+1])/(n+1)`
-/

namespace A056665.P14040459286581651317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054618 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A056665.P14040459286581651317

/-! ## A056665.P17336318672653992588

`A054619(∑[n+1])/(n+1)`
-/

namespace A056665.P17336318672653992588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054619 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A056665.P17336318672653992588

/-!
# A056670: Largest non-unitary prime factor of A001405(n) = binomial(n, floor(n/2)), or 1 if no such prime exists.

The programs for A056670, the canonical program `A056670.P13113877994164587281` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056670 has offset 1).

The definition of A056670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056670.P13113877994164587281

`A006530(A056057(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056670

/-- `A006530(A056057(n+1))` -/
def P13113877994164587281.Spec : Prop :=
  ∀ n, P13113877994164587281.a n = A056670 (n + 1)

theorem P13113877994164587281.correct : P13113877994164587281.Spec := by
  intro n
  simp only [A056670, Nat.add_sub_cancel]

end A056670

/-! ## A056670.P1911054575686735315

`A006530(A056056(n+1))`
-/

namespace A056670.P1911054575686735315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056056 (n + 1)).toNat

end

end A056670.P1911054575686735315

namespace A056670

/-- `A006530(A056056(n+1))` -/
def P1911054575686735315.Spec : Prop :=
  ∀ n, P1911054575686735315.a n = A056670 (n + 1)

end A056670

/-! ## A056670.P8738075937177913552

`A006530(sqrt(A056059(n+1)²*A056647(n+1)))`
-/

namespace A056670.P8738075937177913552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A056059 (n + 1) ^ 2 * A056647 (n + 1) : ℝ))).toNat

end

end A056670.P8738075937177913552

namespace A056670

/-- `A006530(sqrt(A056059(n+1)²*A056647(n+1)))` -/
def P8738075937177913552.Spec : Prop :=
  ∀ n, P8738075937177913552.a n = A056670 (n + 1)

end A056670

/-! ## A056670.P9403974986284461383

`A034699(∏{p}[A056057(n+1), #])`
-/

namespace A056670.P9403974986284461383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A056670.P9403974986284461383

namespace A056670

/-- `A034699(∏{p}[A056057(n+1), #])` -/
def P9403974986284461383.Spec : Prop :=
  ∀ n, P9403974986284461383.a n = A056670 (n + 1)

end A056670

/-! ## A056670.P4039766510369740521

`A006530(A056059(n+1)*A056647(n+1))`
-/

namespace A056670.P4039766510369740521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056059 (n + 1) * A056647 (n + 1)).toNat

end

end A056670.P4039766510369740521

namespace A056670

/-- `A006530(A056059(n+1)*A056647(n+1))` -/
def P4039766510369740521.Spec : Prop :=
  ∀ n, P4039766510369740521.a n = A056670 (n + 1)

end A056670

/-! ## A056670.P15451426536575778567

`A006530(lcm(A056059(n+1), A056647(n+1)))`
-/

namespace A056670.P15451426536575778567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A056059 (n + 1)) (A056647 (n + 1)))

end

end A056670.P15451426536575778567

namespace A056670

/-- `A006530(lcm(A056059(n+1), A056647(n+1)))` -/
def P15451426536575778567.Spec : Prop :=
  ∀ n, P15451426536575778567.a n = A056670 (n + 1)

end A056670

/-!
# A056671: 1 + the number of unitary and squarefree divisors of n = number of divisors of reduced squarefree part of n.

The programs for A056671, the canonical program `A056671.P15517418660735312830` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056671 has offset 1).

The definition of A056671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056671.P15517418660735312830

`2^A056169(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056671

/-- `2^A056169(n+1)` -/
def P15517418660735312830.Spec : Prop :=
  ∀ n, P15517418660735312830.a n = (A056671 (n + 1) : ℚ)

end A056671

/-! ## A056671.P670651904331366378

`A000005(A055231(n+1))`
-/

namespace A056671.P670651904331366378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055231 (n + 1)).toNat

end

end A056671.P670651904331366378

namespace A056671

/-- `A000005(A055231(n+1))` -/
def P670651904331366378.Spec : Prop :=
  ∀ n, P670651904331366378.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P10829976170957258191

`A034444(n+1)-A056674(n+1)`
-/

namespace A056671.P10829976170957258191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A056674 (n + 1)

end

end A056671.P10829976170957258191

namespace A056671

/-- `A034444(n+1)-A056674(n+1)` -/
def P10829976170957258191.Spec : Prop :=
  ∀ n, P10829976170957258191.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P1769196023340199493

`A000005(A007913(n+1)/A055229(n+1))`
-/

namespace A056671.P1769196023340199493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007913 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ))).toNat

end

end A056671.P1769196023340199493

namespace A056671

/-- `A000005(A007913(n+1)/A055229(n+1))` -/
def P1769196023340199493.Spec : Prop :=
  ∀ n, P1769196023340199493.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P203754826392102291

`∏{e}[n+1, ceil(2/#)]`
-/

namespace A056671.P203754826392102291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A056671.P203754826392102291

namespace A056671

/-- `∏{e}[n+1, ceil(2/#)]` -/
def P203754826392102291.Spec : Prop :=
  ∀ n, P203754826392102291.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P7888340896237833323

`2^∑{e}[n+1, round(acot(#))]`
-/

namespace A056671.P7888340896237833323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)) : ℤ)

end

end A056671.P7888340896237833323

namespace A056671

/-- `2^∑{e}[n+1, round(acot(#))]` -/
def P7888340896237833323.Spec : Prop :=
  ∀ n, P7888340896237833323.a n = (A056671 (n + 1) : ℚ)

end A056671

/-! ## A056671.P13146674876273637508

`2^∑{e}[n+1, floor(1/#)]`
-/

namespace A056671.P13146674876273637508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋ : ℤ)

end

end A056671.P13146674876273637508

namespace A056671

/-- `2^∑{e}[n+1, floor(1/#)]` -/
def P13146674876273637508.Spec : Prop :=
  ∀ n, P13146674876273637508.a n = (A056671 (n + 1) : ℚ)

end A056671

/-! ## A056671.P12400784344540151688

`gcd(32, A181819(n+1))`
-/

namespace A056671.P12400784344540151688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A181819 (n + 1))

end

end A056671.P12400784344540151688

namespace A056671

/-- `gcd(32, A181819(n+1))` -/
def P12400784344540151688.Spec : Prop :=
  ∀ n, (P12400784344540151688.a n : ℤ) = A056671 (n + 1)

end A056671

/-! ## A056671.P15791642515873344809

`∑{d}[n+1, A189021(#)]`
-/

namespace A056671.P15791642515873344809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189021 d

end

end A056671.P15791642515873344809

namespace A056671

/-- `∑{d}[n+1, A189021(#)]` -/
def P15791642515873344809.Spec : Prop :=
  ∀ n, P15791642515873344809.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P7349253291831233819

`A000005(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A056671.P7349253291831233819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A056671.P7349253291831233819

namespace A056671

/-- `A000005(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P7349253291831233819.Spec : Prop :=
  ∀ n, P7349253291831233819.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P10461238426678836085

`2^A001221(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A056671.P10461238426678836085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat : ℤ)

end

end A056671.P10461238426678836085

namespace A056671

/-- `2^A001221(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P10461238426678836085.Spec : Prop :=
  ∀ n, P10461238426678836085.a n = (A056671 (n + 1) : ℚ)

end A056671

/-! ## A056671.P18411206374242549624

`2^A001222(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A056671.P18411206374242549624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat : ℤ)

end

end A056671.P18411206374242549624

namespace A056671

/-- `2^A001222(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P18411206374242549624.Spec : Prop :=
  ∀ n, P18411206374242549624.a n = (A056671 (n + 1) : ℚ)

end A056671

/-! ## A056671.P8107044696565453886

`A055076(A007948(n+1))`
-/

namespace A056671.P8107044696565453886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A007948 (n + 1)).toNat

end

end A056671.P8107044696565453886

namespace A056671

/-- `A055076(A007948(n+1))` -/
def P8107044696565453886.Spec : Prop :=
  ∀ n, P8107044696565453886.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P8925184377826600100

`A055076(A056192(n+1))`
-/

namespace A056671.P8925184377826600100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A056192 (n + 1)).toNat

end

end A056671.P8925184377826600100

namespace A056671

/-- `A055076(A056192(n+1))` -/
def P8925184377826600100.Spec : Prop :=
  ∀ n, P8925184377826600100.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P14087656585003074332

`A006519(A181819(n+1))`
-/

namespace A056671.P14087656585003074332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A181819 (n + 1)).toNat

end

end A056671.P14087656585003074332

namespace A056671

/-- `A006519(A181819(n+1))` -/
def P14087656585003074332.Spec : Prop :=
  ∀ n, P14087656585003074332.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P261607946296502955

`A055076(A284476(n+1))`
-/

namespace A056671.P261607946296502955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A284476 (n + 1)).toNat

end

end A056671.P261607946296502955

namespace A056671

/-- `A055076(A284476(n+1))` -/
def P261607946296502955.Spec : Prop :=
  ∀ n, P261607946296502955.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P4544914146087678239

`A001316(A345371(n+1))`
-/

namespace A056671.P4544914146087678239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A345371 (n + 1)).toNat

end

end A056671.P4544914146087678239

namespace A056671

/-- `A001316(A345371(n+1))` -/
def P4544914146087678239.Spec : Prop :=
  ∀ n, P4544914146087678239.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P14601654008691809177

`A006519(A369890(n+1))`
-/

namespace A056671.P14601654008691809177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A369890 (n + 1)).toNat

end

end A056671.P14601654008691809177

namespace A056671

/-- `A006519(A369890(n+1))` -/
def P14601654008691809177.Spec : Prop :=
  ∀ n, P14601654008691809177.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P9678015485903677284

`A055076(A353897(n+1))`
-/

namespace A056671.P9678015485903677284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A353897 (n + 1)).toNat

end

end A056671.P9678015485903677284

namespace A056671

/-- `A055076(A353897(n+1))` -/
def P9678015485903677284.Spec : Prop :=
  ∀ n, P9678015485903677284.a n = A056671 (n + 1)

end A056671

/-! ## A056671.P16746796549355279539

`A055076(A360539(n+1))`
-/

namespace A056671.P16746796549355279539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A360539 (n + 1)).toNat

end

end A056671.P16746796549355279539

namespace A056671

/-- `A055076(A360539(n+1))` -/
def P16746796549355279539.Spec : Prop :=
  ∀ n, P16746796549355279539.a n = A056671 (n + 1)

end A056671

/-!
# A056672: Number of unitary and squarefree divisors of n! Also, number of divisors of the special squarefree part of n!, A055773(n).

The programs for A056672, the canonical program `A056672.P11089533315272226003` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056672 has offset 1).

The definition of A056672 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056672.P11089533315272226003

`2^A056171(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056672

/-- `2^A056171(n+1)` -/
def P11089533315272226003.Spec : Prop :=
  ∀ n, P11089533315272226003.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P11258807616460721472

`A000005(A055773(n+1))`
-/

namespace A056672.P11258807616460721472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055773 (n + 1)).toNat

end

end A056672.P11258807616460721472

namespace A056672

/-- `A000005(A055773(n+1))` -/
def P11258807616460721472.Spec : Prop :=
  ∀ n, P11258807616460721472.a n = A056672 (n + 1)

end A056672

/-! ## A056672.P13010033406370872951

`∏[A251561(n+1)/(n+1)]`
-/

namespace A056672.P13010033406370872951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251561 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056672.P13010033406370872951

namespace A056672

/-- `∏[A251561(n+1)/(n+1)]` -/
def P13010033406370872951.Spec : Prop :=
  ∀ n, P13010033406370872951.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P13814358685209615824

`2^(A338363(n+1)-(n+1))`
-/

namespace A056672.P13814358685209615824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A338363 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A056672.P13814358685209615824

namespace A056672

/-- `2^(A338363(n+1)-(n+1))` -/
def P13814358685209615824.Spec : Prop :=
  ∀ n, P13814358685209615824.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P16254408155184636909

`A000079(A056171(n+1))`
-/

namespace A056672.P16254408155184636909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056171 (n + 1)).toNat

end

end A056672.P16254408155184636909

namespace A056672

/-- `A000079(A056171(n+1))` -/
def P16254408155184636909.Spec : Prop :=
  ∀ n, P16254408155184636909.a n = A056672 (n + 1)

end A056672

/-! ## A056672.P787570482477407433

`A017910(2*A056171(n+1))`
-/

namespace A056672.P787570482477407433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * A056171 (n + 1)).toNat

end

end A056672.P787570482477407433

namespace A056672

/-- `A017910(2*A056171(n+1))` -/
def P787570482477407433.Spec : Prop :=
  ∀ n, P787570482477407433.a n = A056672 (n + 1)

end A056672

/-! ## A056672.P18401383588952340340

`2^(A230980(n+1)-A230980(A065033(n)))`
-/

namespace A056672.P18401383588952340340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A230980 (n + 1) - A230980 (A065033 n).toNat : ℤ)

end

end A056672.P18401383588952340340

namespace A056672

/-- `2^(A230980(n+1)-A230980(A065033(n)))` -/
def P18401383588952340340.Spec : Prop :=
  ∀ n, P18401383588952340340.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P16159365403341706025

`A155559(A056171(n+1)+1)/2`
-/

namespace A056672.P16159365403341706025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 (A056171 (n + 1) + 1).toNat : ℚ) / 2

end

end A056672.P16159365403341706025

namespace A056672

/-- `A155559(A056171(n+1)+1)/2` -/
def P16159365403341706025.Spec : Prop :=
  ∀ n, P16159365403341706025.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P4036296525354122529

`A171449(A056171(n+1)+1)/2`
-/

namespace A056672.P4036296525354122529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171449 (A056171 (n + 1) + 1).toNat : ℚ) / 2

end

end A056672.P4036296525354122529

namespace A056672

/-- `A171449(A056171(n+1)+1)/2` -/
def P4036296525354122529.Spec : Prop :=
  ∀ n, P4036296525354122529.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P12746769049942541645

`A171559(A056171(n+1)+1)/2`
-/

namespace A056672.P12746769049942541645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171559 (A056171 (n + 1) + 1).toNat : ℚ) / 2

end

end A056672.P12746769049942541645

namespace A056672

/-- `A171559(A056171(n+1)+1)/2` -/
def P12746769049942541645.Spec : Prop :=
  ∀ n, P12746769049942541645.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P2836934863914263095

`2^(A056172(2*(n+1))-A056172(n+1))`
-/

namespace A056672.P2836934863914263095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056172 (2 * (n + 1)) - A056172 (n + 1) : ℤ)

end

end A056672.P2836934863914263095

namespace A056672

/-- `2^(A056172(2*(n+1))-A056172(n+1))` -/
def P2836934863914263095.Spec : Prop :=
  ∀ n, P2836934863914263095.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P9799967801955962912

`2^(A076225(n+1)-1)`
-/

namespace A056672.P9799967801955962912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A076225 (n + 1) - 1 : ℤ)

end

end A056672.P9799967801955962912

namespace A056672

/-- `2^(A076225(n+1)-1)` -/
def P9799967801955962912.Spec : Prop :=
  ∀ n, P9799967801955962912.a n = (A056672 (n + 1) : ℚ)

end A056672

/-! ## A056672.P15419593806284721533

`A011782(A076225(n+1))`
-/

namespace A056672.P15419593806284721533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A076225 (n + 1)).toNat

end

end A056672.P15419593806284721533

namespace A056672

/-- `A011782(A076225(n+1))` -/
def P15419593806284721533.Spec : Prop :=
  ∀ n, P15419593806284721533.a n = A056672 (n + 1)

end A056672

/-! ## A056672.P8282882431306262583

`A048656(n+1)-A056675(n+1)`
-/

namespace A056672.P8282882431306262583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) - A056675 (n + 1)

end

end A056672.P8282882431306262583

namespace A056672

/-- `A048656(n+1)-A056675(n+1)` -/
def P8282882431306262583.Spec : Prop :=
  ∀ n, P8282882431306262583.a n = A056672 (n + 1)

end A056672

/-! ## A056672.P14490108459443910070

`gcd(A000079(n), A056675(n+1))`
-/

namespace A056672.P14490108459443910070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A056675 (n + 1))

end

end A056672.P14490108459443910070

namespace A056672

/-- `gcd(A000079(n), A056675(n+1))` -/
def P14490108459443910070.Spec : Prop :=
  ∀ n, (P14490108459443910070.a n : ℤ) = A056672 (n + 1)

end A056672

/-!
# A056673: Number of unitary and squarefree divisors of binomial(n, floor(n/2)). Also the number of divisors of the powerfree part of A001405(n), A056060(n).

The programs for A056673, the canonical program `A056673.P2016486030983977128` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056673 has offset 1).

The definition of A056673 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056673.P2016486030983977128

`A056671(A001405(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056673

/-- `A056671(A001405(n+1))` -/
def P2016486030983977128.Spec : Prop :=
  ∀ n, P2016486030983977128.a n = A056673 (n + 1)

theorem P2016486030983977128.correct : P2016486030983977128.Spec := by
  intro n
  simp only [A056673, Nat.add_sub_cancel]

end A056673

/-! ## A056673.P4377666194474050431

`2^A056173(n+1)`
-/

namespace A056673.P4377666194474050431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056173 (n + 1) : ℤ)

end

end A056673.P4377666194474050431

namespace A056673

/-- `2^A056173(n+1)` -/
def P4377666194474050431.Spec : Prop :=
  ∀ n, P4377666194474050431.a n = (A056673 (n + 1) : ℚ)

end A056673

/-! ## A056673.P17187016681318437503

`A000079(A056173(n+1))`
-/

namespace A056673.P17187016681318437503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056173 (n + 1)).toNat

end

end A056673.P17187016681318437503

namespace A056673

/-- `A000079(A056173(n+1))` -/
def P17187016681318437503.Spec : Prop :=
  ∀ n, P17187016681318437503.a n = A056673 (n + 1)

end A056673

/-! ## A056673.P1498576833685121667

`A011782(A056173(n+1)+1)`
-/

namespace A056673.P1498576833685121667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A056173 (n + 1) + 1).toNat

end

end A056673.P1498576833685121667

namespace A056673

/-- `A011782(A056173(n+1)+1)` -/
def P1498576833685121667.Spec : Prop :=
  ∀ n, P1498576833685121667.a n = A056673 (n + 1)

end A056673

/-! ## A056673.P16885931936867259750

`A166444(A056173(n+1)+2)`
-/

namespace A056673.P16885931936867259750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A056173 (n + 1) + 2).toNat

end

end A056673.P16885931936867259750

namespace A056673

/-- `A166444(A056173(n+1)+2)` -/
def P16885931936867259750.Spec : Prop :=
  ∀ n, P16885931936867259750.a n = A056673 (n + 1)

end A056673

/-! ## A056673.P2519370156883988290

`A143095(2*A056173(n+1))`
-/

namespace A056673.P2519370156883988290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (2 * A056173 (n + 1)).toNat

end

end A056673.P2519370156883988290

namespace A056673

/-- `A143095(2*A056173(n+1))` -/
def P2519370156883988290.Spec : Prop :=
  ∀ n, P2519370156883988290.a n = A056673 (n + 1)

end A056673

/-! ## A056673.P9372306640989344752

`2^(A034973(n+1)-A056175(n+1))`
-/

namespace A056673.P9372306640989344752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034973 (n + 1) - A056175 (n + 1) : ℤ)

end

end A056673.P9372306640989344752

namespace A056673

/-- `2^(A034973(n+1)-A056175(n+1))` -/
def P9372306640989344752.Spec : Prop :=
  ∀ n, P9372306640989344752.a n = (A056673 (n + 1) : ℚ)

end A056673

/-! ## A056673.P10604304777894166838

`A000079(A034973(n+1)-A056175(n+1))`
-/

namespace A056673.P10604304777894166838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1) - A056175 (n + 1)).toNat

end

end A056673.P10604304777894166838

namespace A056673

/-- `A000079(A034973(n+1)-A056175(n+1))` -/
def P10604304777894166838.Spec : Prop :=
  ∀ n, P10604304777894166838.a n = A056673 (n + 1)

end A056673

/-! ## A056673.P10151704600852965659

`A039593(n+1)-A056676(n+1)`
-/

namespace A056673.P10151704600852965659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1) - A056676 (n + 1)

end

end A056673.P10151704600852965659

namespace A056673

/-- `A039593(n+1)-A056676(n+1)` -/
def P10151704600852965659.Spec : Prop :=
  ∀ n, P10151704600852965659.a n = A056673 (n + 1)

end A056673

/-! ## A056673.P11272300213492220492

`A039593(n+1)/A000079(A056175(n+1))`
-/

namespace A056673.P11272300213492220492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039593 (n + 1) : ℚ) / (A000079 (A056175 (n + 1)).toNat : ℚ)

end

end A056673.P11272300213492220492

namespace A056673

/-- `A039593(n+1)/A000079(A056175(n+1))` -/
def P11272300213492220492.Spec : Prop :=
  ∀ n, P11272300213492220492.a n = (A056673 (n + 1) : ℚ)

end A056673

/-! ## A056673.P13984985060626705906

`A039593(n+1)/A034444(A056056(n+1))`
-/

namespace A056673.P13984985060626705906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039593 (n + 1) : ℚ) / (A034444 (A056056 (n + 1)).toNat : ℚ)

end

end A056673.P13984985060626705906

namespace A056673

/-- `A039593(n+1)/A034444(A056056(n+1))` -/
def P13984985060626705906.Spec : Prop :=
  ∀ n, P13984985060626705906.a n = (A056673 (n + 1) : ℚ)

end A056673

/-!
# A056674: Number of squarefree divisors which are not unitary. Also number of unitary divisors which are not squarefree.

The programs for A056674, the canonical program `A056674.P17578094997466486638` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056674 has offset 1).

The definition of A056674 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056674.P17578094997466486638

`A034444(n+1)-A056671(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056674

/-- `A034444(n+1)-A056671(n+1)` -/
def P17578094997466486638.Spec : Prop :=
  ∀ n, P17578094997466486638.a n = A056674 (n + 1)

theorem P17578094997466486638.correct : P17578094997466486638.Spec := by
  intro n
  simp only [A056674, Nat.add_sub_cancel]

end A056674

/-! ## A056674.P12312698043198640938

`A034444(n+1)-A000005(A055231(n+1))`
-/

namespace A056674.P12312698043198640938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A000005 (A055231 (n + 1)).toNat

end

end A056674.P12312698043198640938

namespace A056674

/-- `A034444(n+1)-A000005(A055231(n+1))` -/
def P12312698043198640938.Spec : Prop :=
  ∀ n, P12312698043198640938.a n = A056674 (n + 1)

end A056674

/-! ## A056674.P13939900731918050238

`A034444(n+1)-A000005(A007913(n+1)/A055229(n+1))`
-/

namespace A056674.P13939900731918050238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A000005 (SequenceMachineLib.roundAway ((A007913 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ))).toNat

end

end A056674.P13939900731918050238

namespace A056674

/-- `A034444(n+1)-A000005(A007913(n+1)/A055229(n+1))` -/
def P13939900731918050238.Spec : Prop :=
  ∀ n, P13939900731918050238.a n = A056674 (n + 1)

end A056674

/-! ## A056674.P17516915661256340640

`(A323308(n+1)-1)*A056671(n+1)`
-/

namespace A056674.P17516915661256340640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323308 (n + 1) - 1) * A056671 (n + 1)

end

end A056674.P17516915661256340640

namespace A056674

/-- `(A323308(n+1)-1)*A056671(n+1)` -/
def P17516915661256340640.Spec : Prop :=
  ∀ n, P17516915661256340640.a n = A056674 (n + 1)

end A056674

/-! ## A056674.P16691916845345994433

`A034444(n+1)-2^A056169(n+1)`
-/

namespace A056674.P16691916845345994433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (2 : ℚ) ^ (A056169 (n + 1) : ℤ)

end

end A056674.P16691916845345994433

namespace A056674

/-- `A034444(n+1)-2^A056169(n+1)` -/
def P16691916845345994433.Spec : Prop :=
  ∀ n, P16691916845345994433.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P10385101881121770329

`A000005(A007947(n+1))-A056671(n+1)`
-/

namespace A056674.P10385101881121770329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - A056671 (n + 1)

end

end A056674.P10385101881121770329

namespace A056674

/-- `A000005(A007947(n+1))-A056671(n+1)` -/
def P10385101881121770329.Spec : Prop :=
  ∀ n, P10385101881121770329.a n = A056674 (n + 1)

end A056674

/-! ## A056674.P12596739098454789026

`A034444(n+1)-A034444(n+1)/A323308(n+1)`
-/

namespace A056674.P12596739098454789026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A323308 (n + 1) : ℚ)

end

end A056674.P12596739098454789026

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A323308(n+1)` -/
def P12596739098454789026.Spec : Prop :=
  ∀ n, P12596739098454789026.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P9880900905567350792

`A034444(n+1)-A055076(n+1)/A368168(n+1)`
-/

namespace A056674.P9880900905567350792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A055076 (n + 1) : ℚ) / (A368168 (n + 1) : ℚ)

end

end A056674.P9880900905567350792

namespace A056674

/-- `A034444(n+1)-A055076(n+1)/A368168(n+1)` -/
def P9880900905567350792.Spec : Prop :=
  ∀ n, P9880900905567350792.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P2848143955441940032

`A034444(n+1)-A305461(n+1)/A365404(n+1)`
-/

namespace A056674.P2848143955441940032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A305461 (n + 1) : ℚ) / (A365404 (n + 1) : ℚ)

end

end A056674.P2848143955441940032

namespace A056674

/-- `A034444(n+1)-A305461(n+1)/A365404(n+1)` -/
def P2848143955441940032.Spec : Prop :=
  ∀ n, P2848143955441940032.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P12922996620464262424

`A034444(n+1)-A365498(n+1)/A368885(n+1)`
-/

namespace A056674.P12922996620464262424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A365498 (n + 1) : ℚ) / (A368885 (n + 1) : ℚ)

end

end A056674.P12922996620464262424

namespace A056674

/-- `A034444(n+1)-A365498(n+1)/A368885(n+1)` -/
def P12922996620464262424.Spec : Prop :=
  ∀ n, P12922996620464262424.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P837314732012485757

`A309307(n+1)+1-∏{e}[n+1, A267354(A328679(#)+1)]`
-/

namespace A056674.P837314732012485757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + 1 - ∏ p ∈ Nat.primeFactors (f1 n), A267354 (A328679 (Nat.factorization (f1 n) p) + 1).toNat

end

end A056674.P837314732012485757

namespace A056674

/-- `A309307(n+1)+1-∏{e}[n+1, A267354(A328679(#)+1)]` -/
def P837314732012485757.Spec : Prop :=
  ∀ n, P837314732012485757.a n = A056674 (n + 1)

end A056674

/-! ## A056674.P7980412737547465028

`A034444(n+1)-A034444(n+1)/A034444(A000188(n+1))`
-/

namespace A056674.P7980412737547465028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A000188 (n + 1)).toNat : ℚ)

end

end A056674.P7980412737547465028

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A000188(n+1))` -/
def P7980412737547465028.Spec : Prop :=
  ∀ n, P7980412737547465028.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P9420719167124239854

`A034444(n+1)-A034444(n+1)/A034444(A000189(n+1))`
-/

namespace A056674.P9420719167124239854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A000189 (n + 1)).toNat : ℚ)

end

end A056674.P9420719167124239854

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A000189(n+1))` -/
def P9420719167124239854.Spec : Prop :=
  ∀ n, P9420719167124239854.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P10087319626508949180

`A034444(n+1)-A034444(n+1)/A034444(A000190(n+1))`
-/

namespace A056674.P10087319626508949180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A000190 (n + 1)).toNat : ℚ)

end

end A056674.P10087319626508949180

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A000190(n+1))` -/
def P10087319626508949180.Spec : Prop :=
  ∀ n, P10087319626508949180.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P5759127126416864444

`A034444(n+1)-A034444(n+1)/A034444(A003557(n+1))`
-/

namespace A056674.P5759127126416864444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A003557 (n + 1)).toNat : ℚ)

end

end A056674.P5759127126416864444

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A003557(n+1))` -/
def P5759127126416864444.Spec : Prop :=
  ∀ n, P5759127126416864444.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P13450001445852345104

`A034444(n+1)-A034444(n+1)/A034444(A008833(n+1))`
-/

namespace A056674.P13450001445852345104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A008833 (n + 1)).toNat : ℚ)

end

end A056674.P13450001445852345104

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A008833(n+1))` -/
def P13450001445852345104.Spec : Prop :=
  ∀ n, P13450001445852345104.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P305250002096902613

`A034444(n+1)-A034444(n+1)/A000005(A071773(n+1))`
-/

namespace A056674.P305250002096902613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A000005 (A071773 (n + 1)).toNat : ℚ)

end

end A056674.P305250002096902613

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A000005(A071773(n+1))` -/
def P305250002096902613.Spec : Prop :=
  ∀ n, P305250002096902613.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P592771349519227422

`A034444(n+1)-A034444(n+1)/A034444(A057521(n+1))`
-/

namespace A056674.P592771349519227422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A057521 (n + 1)).toNat : ℚ)

end

end A056674.P592771349519227422

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A057521(n+1))` -/
def P592771349519227422.Spec : Prop :=
  ∀ n, P592771349519227422.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P15906352334805549766

`A034444(n+1)-A034444(n+1)/A034444(A292589(n+1))`
-/

namespace A056674.P15906352334805549766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A034444 (A292589 (n + 1)).toNat : ℚ)

end

end A056674.P15906352334805549766

namespace A056674

/-- `A034444(n+1)-A034444(n+1)/A034444(A292589(n+1))` -/
def P15906352334805549766.Spec : Prop :=
  ∀ n, P15906352334805549766.a n = (A056674 (n + 1) : ℚ)

end A056674

/-! ## A056674.P7565308116831332290

`A096825(n+1)%A304584(A317935(n+1))`
-/

namespace A056674.P7565308116831332290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096825 (n + 1)) (A304584 (A317935 (n + 1)).toNat)

end

end A056674.P7565308116831332290

namespace A056674

/-- `A096825(n+1)%A304584(A317935(n+1))` -/
def P7565308116831332290.Spec : Prop :=
  ∀ n, P7565308116831332290.a n = A056674 (n + 1)

end A056674

/-!
# A056675: Number of non-unitary but squarefree divisors of n!. Also number of unitary but not-squarefree divisors of n!.

The programs for A056675, the canonical program `A056675.P16805316149492235292` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056675 has offset 1).

The definition of A056675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048656, A056672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056675.P16805316149492235292

`A048656(n+1)-A056672(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056675

/-- `A048656(n+1)-A056672(n+1)` -/
def P16805316149492235292.Spec : Prop :=
  ∀ n, P16805316149492235292.a n = A056675 (n + 1)

theorem P16805316149492235292.correct : P16805316149492235292.Spec := by
  intro n
  simp only [A056675, Nat.add_sub_cancel]

end A056675

/-! ## A056675.P2110810298461179070

`∏[Δ[A095117(n)]]-A056672(n+1)`
-/

namespace A056675.P2110810298461179070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A056672 (n + 1)

end

end A056675.P2110810298461179070

namespace A056675

/-- `∏[Δ[A095117(n)]]-A056672(n+1)` -/
def P2110810298461179070.Spec : Prop :=
  ∀ n, P2110810298461179070.a n = A056675 (n + 1)

end A056675

/-! ## A056675.P15077402978343082902

`A048656(n+1)-2^A056171(n+1)`
-/

namespace A056675.P15077402978343082902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048656 (n + 1) : ℚ) - (2 : ℚ) ^ (A056171 (n + 1) : ℤ)

end

end A056675.P15077402978343082902

namespace A056675

/-- `A048656(n+1)-2^A056171(n+1)` -/
def P15077402978343082902.Spec : Prop :=
  ∀ n, P15077402978343082902.a n = (A056675 (n + 1) : ℚ)

end A056675

/-! ## A056675.P12368375097900259765

`∏[A010051(n+1)+1]-A056672(n+1)`
-/

namespace A056675.P12368375097900259765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A056672 (n + 1)

end

end A056675.P12368375097900259765

namespace A056675

/-- `∏[A010051(n+1)+1]-A056672(n+1)` -/
def P12368375097900259765.Spec : Prop :=
  ∀ n, P12368375097900259765.a n = A056675 (n + 1)

end A056675

/-! ## A056675.P5603917883613476553

`2^∑[char[A000040(n+1)-1]]-A056672(n+1)`
-/

namespace A056675.P5603917883613476553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A056672 (n + 1)

end

end A056675.P5603917883613476553

namespace A056675

/-- `2^∑[char[A000040(n+1)-1]]-A056672(n+1)` -/
def P5603917883613476553.Spec : Prop :=
  ∀ n, P5603917883613476553.a n = A056675 (n + 1)

end A056675

/-! ## A056675.P15918162193400169212

`2^(∑[char[A006530(n+1)-1]]-1)-A056672(n+1)`
-/

namespace A056675.P15918162193400169212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ) - (A056672 (n + 1) : ℚ)

end

end A056675.P15918162193400169212

namespace A056675

/-- `2^(∑[char[A006530(n+1)-1]]-1)-A056672(n+1)` -/
def P15918162193400169212.Spec : Prop :=
  ∀ n, P15918162193400169212.a n = (A056675 (n + 1) : ℚ)

end A056675

/-! ## A056675.P9499116123785189160

`A000079(A000720(n+1))-A056672(n+1)`
-/

namespace A056675.P9499116123785189160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000720 (n + 1)).toNat - A056672 (n + 1)

end

end A056675.P9499116123785189160

namespace A056675

/-- `A000079(A000720(n+1))-A056672(n+1)` -/
def P9499116123785189160.Spec : Prop :=
  ∀ n, P9499116123785189160.a n = A056675 (n + 1)

end A056675

/-! ## A056675.P16413726849225522600

`A011782(A036234(n+1))-A056672(n+1)`
-/

namespace A056675.P16413726849225522600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A036234 (n + 1)).toNat - A056672 (n + 1)

end

end A056675.P16413726849225522600

namespace A056675

/-- `A011782(A036234(n+1))-A056672(n+1)` -/
def P16413726849225522600.Spec : Prop :=
  ∀ n, P16413726849225522600.a n = A056675 (n + 1)

end A056675

/-! ## A056675.P5161589827005037227

`A000051(A000720(n+1))-A000051(A056171(n+1))`
-/

namespace A056675.P5161589827005037227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000720 (n + 1)).toNat - A000051 (A056171 (n + 1)).toNat

end

end A056675.P5161589827005037227

namespace A056675

/-- `A000051(A000720(n+1))-A000051(A056171(n+1))` -/
def P5161589827005037227.Spec : Prop :=
  ∀ n, P5161589827005037227.a n = A056675 (n + 1)

end A056675

/-!
# A056676: Number of non-unitary but squarefree divisors of binomial(n,floor(n/2)). Also number of nonsquarefree but unitary divisors of binomial(n,floor(n/2)).

The programs for A056676, the canonical program `A056676.P319684415126171998` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056676 has offset 1).

The definition of A056676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039593, A056673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056676.P319684415126171998

`A039593(n+1)-A056673(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056676

/-- `A039593(n+1)-A056673(n+1)` -/
def P319684415126171998.Spec : Prop :=
  ∀ n, P319684415126171998.a n = A056676 (n + 1)

theorem P319684415126171998.correct : P319684415126171998.Spec := by
  intro n
  simp only [A056676, Nat.add_sub_cancel]

end A056676

/-! ## A056676.P7237862524512373835

`A000079(A034973(n+1))-A056673(n+1)`
-/

namespace A056676.P7237862524512373835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1)).toNat - A056673 (n + 1)

end

end A056676.P7237862524512373835

namespace A056676

/-- `A000079(A034973(n+1))-A056673(n+1)` -/
def P7237862524512373835.Spec : Prop :=
  ∀ n, P7237862524512373835.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P15104340376706959777

`A039593(n+1)-A000079(A056173(n+1))`
-/

namespace A056676.P15104340376706959777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1) - A000079 (A056173 (n + 1)).toNat

end

end A056676.P15104340376706959777

namespace A056676

/-- `A039593(n+1)-A000079(A056173(n+1))` -/
def P15104340376706959777.Spec : Prop :=
  ∀ n, P15104340376706959777.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P18033972517302427159

`A011782(A034973(n+1)+1)-A056673(n+1)`
-/

namespace A056676.P18033972517302427159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A034973 (n + 1) + 1).toNat - A056673 (n + 1)

end

end A056676.P18033972517302427159

namespace A056676

/-- `A011782(A034973(n+1)+1)-A056673(n+1)` -/
def P18033972517302427159.Spec : Prop :=
  ∀ n, P18033972517302427159.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P14128618782766591160

`A016116(2*A034973(n+1))-A056673(n+1)`
-/

namespace A056676.P14128618782766591160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A034973 (n + 1)).toNat - A056673 (n + 1)

end

end A056676.P14128618782766591160

namespace A056676

/-- `A016116(2*A034973(n+1))-A056673(n+1)` -/
def P14128618782766591160.Spec : Prop :=
  ∀ n, P14128618782766591160.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P16959047341747678894

`A000079(A034973(n+1))-A000079(A056173(n+1))`
-/

namespace A056676.P16959047341747678894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1)).toNat - A000079 (A056173 (n + 1)).toNat

end

end A056676.P16959047341747678894

namespace A056676

/-- `A000079(A034973(n+1))-A000079(A056173(n+1))` -/
def P16959047341747678894.Spec : Prop :=
  ∀ n, P16959047341747678894.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P10858112224609171279

`A039593(n+1)-A039593(n+1)/A000079(A056175(n+1))`
-/

namespace A056676.P10858112224609171279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039593 (n + 1) : ℚ) - (A039593 (n + 1) : ℚ) / (A000079 (A056175 (n + 1)).toNat : ℚ)

end

end A056676.P10858112224609171279

namespace A056676

/-- `A039593(n+1)-A039593(n+1)/A000079(A056175(n+1))` -/
def P10858112224609171279.Spec : Prop :=
  ∀ n, P10858112224609171279.a n = (A056676 (n + 1) : ℚ)

end A056676

/-! ## A056676.P4879163950875719411

`A056673(n+1)*A292600(A039593(n+1)/A056673(n+1))`
-/

namespace A056676.P4879163950875719411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056673 (n + 1) * A292600 (SequenceMachineLib.roundAway ((A039593 (n + 1) : ℚ) / (A056673 (n + 1) : ℚ))).toNat

end

end A056676.P4879163950875719411

namespace A056676

/-- `A056673(n+1)*A292600(A039593(n+1)/A056673(n+1))` -/
def P4879163950875719411.Spec : Prop :=
  ∀ n, P4879163950875719411.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P583094689657342918

`A056673(n+1)*A309307(A056056(n+1))`
-/

namespace A056676.P583094689657342918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056673 (n + 1) * A309307 (A056056 (n + 1)).toNat

end

end A056676.P583094689657342918

namespace A056676

/-- `A056673(n+1)*A309307(A056056(n+1))` -/
def P583094689657342918.Spec : Prop :=
  ∀ n, P583094689657342918.a n = A056676 (n + 1)

end A056676

/-! ## A056676.P9999333204095387410

`A039593(n+1)-A039593(n+1)/A034444(A056056(n+1))`
-/

namespace A056676.P9999333204095387410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039593 (n + 1) : ℚ) - (A039593 (n + 1) : ℚ) / (A034444 (A056056 (n + 1)).toNat : ℚ)

end

end A056676.P9999333204095387410

namespace A056676

/-- `A039593(n+1)-A039593(n+1)/A034444(A056056(n+1))` -/
def P9999333204095387410.Spec : Prop :=
  ∀ n, P9999333204095387410.a n = (A056676 (n + 1) : ℚ)

end A056676

/-!
# A056677: Numbers k such that 20*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056677, there is no canonical definition to state claims against.
-/

/-! ## A056677.P18288600187731786090

`A099409(n+2)-1`
-/

namespace A056677.P18288600187731786090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099409 (n + 2) - 1

end

end A056677.P18288600187731786090

/-! ## A056677.P14479640097210738497

`∑[Δ[A099409(n+1)]%A002895(n)]`
-/

namespace A056677.P14479640097210738497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099409 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A002895 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056677.P14479640097210738497

/-! ## A056677.P7469115878176562401

`A130595(A196222(n))+A099409(n+2)`
-/

namespace A056677.P7469115878176562401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A196222 n).toNat + A099409 (n + 2)

end

end A056677.P7469115878176562401

/-! ## A056677.P18351649245524112905

`A309214(A051890(n))+A099409(n+2)`
-/

namespace A056677.P18351649245524112905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A051890 n).toNat + A099409 (n + 2)

end

end A056677.P18351649245524112905

/-! ## A056677.P6537900375287017399

`A023443(A099409(n+2))`
-/

namespace A056677.P6537900375287017399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A099409 (n + 2)).toNat

end

end A056677.P6537900375287017399

/-!
# A056678: Numbers k such that 20*R_k + 9 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056678, there is no canonical definition to state claims against.
-/

/-! ## A056678.P7384217245817260789

`A099410(n+2)-1`
-/

namespace A056678.P7384217245817260789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099410 (n + 2) - 1

end

end A056678.P7384217245817260789

/-! ## A056678.P10191374947564591802

`record[A260196(n)+A099410(n+1)]`
-/

namespace A056678.P10191374947564591802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A099410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056678.P10191374947564591802

/-! ## A056678.P15701319288997090007

`A325970(A006512(n+1))+A099410(n+2)`
-/

namespace A056678.P15701319288997090007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A006512 (n + 1)).toNat + A099410 (n + 2)

end

end A056678.P15701319288997090007

/-! ## A056678.P15264029121964165612

`A359792(A001359(n+1))+A099410(n+2)`
-/

namespace A056678.P15264029121964165612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (A001359 (n + 1)).toNat + A099410 (n + 2)

end

end A056678.P15264029121964165612

/-! ## A056678.P5667790659612027934

`A325970(A073577(n+1))+A099410(n+2)`
-/

namespace A056678.P5667790659612027934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A073577 (n + 1)).toNat + A099410 (n + 2)

end

end A056678.P5667790659612027934

/-!
# A056679: Primes p such that 1 + x + Sum_{q prime <= p} x^q is irreducible over GF(2).

The programs for A056679, there is no canonical definition to state claims against.
-/

/-! ## A056679.P9199383090554824323

`p?[∑[A049502(A173673(n))]]`
-/

namespace A056679.P9199383090554824323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A173673 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056679.P9199383090554824323

/-! ## A056679.P6129422205159307017

`A000040(round(root(A343772(n+2), 3)))`
-/

namespace A056679.P6129422205159307017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A343772 (n + 2) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A056679.P6129422205159307017

/-!
# A056680: Numbers k such that 30*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056680, there is no canonical definition to state claims against.
-/

/-! ## A056680.P18428094309695294030

`A099411(n+1)-1`
-/

namespace A056680.P18428094309695294030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099411 (n + 1) - 1

end

end A056680.P18428094309695294030

/-! ## A056680.P2406354095550143173

`record[Δ[A099411(A158416(n))]]`
-/

namespace A056680.P2406354095550143173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099411 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056680.P2406354095550143173

/-! ## A056680.P9083577651612550456

`record[A099411(A128282(n))-1]`
-/

namespace A056680.P9083577651612550456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099411 (A128282 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056680.P9083577651612550456

/-! ## A056680.P13602214686740030840

`record[A099411(A324347(n))-1]`
-/

namespace A056680.P13602214686740030840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099411 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056680.P13602214686740030840

/-! ## A056680.P17813025151423123450

`xor(-A099411(n+1), A057428(n+1))`
-/

namespace A056680.P17813025151423123450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A099411 (n + 1)) (A057428 (n + 1))

end

end A056680.P17813025151423123450

/-!
# A056681: Numbers k such that 40*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056681, there is no canonical definition to state claims against.
-/

/-! ## A056681.P2686181565285130122

`A099412(n+2)-1`
-/

namespace A056681.P2686181565285130122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099412 (n + 2) - 1

end

end A056681.P2686181565285130122

/-! ## A056681.P2996376311523742644

`record[A260196(n)+A099412(n+1)]`
-/

namespace A056681.P2996376311523742644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A099412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056681.P2996376311523742644

/-! ## A056681.P11604140235239822916

`A163961(A321657(n+2))+A099412(n+2)`
-/

namespace A056681.P11604140235239822916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (A321657 (n + 2)).toNat + A099412 (n + 2)

end

end A056681.P11604140235239822916

/-! ## A056681.P14089974630878514209

`A341931(A278538(2*(n+1)))+A099412(n+2)`
-/

namespace A056681.P14089974630878514209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341931 (A278538 (2 * (n + 1))).toNat + A099412 (n + 2)

end

end A056681.P14089974630878514209

/-!
# A056682: Numbers k such that 40*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056682, there is no canonical definition to state claims against.
-/

/-! ## A056682.P4422392748153297872

`A099413(n+2)-1`
-/

namespace A056682.P4422392748153297872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099413 (n + 2) - 1

end

end A056682.P4422392748153297872

/-! ## A056682.P9883755978092033783

`∑[Δ[A099413(n+1)]%A011557(n)]`
-/

namespace A056682.P9883755978092033783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A011557 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056682.P9883755978092033783

/-! ## A056682.P4618640772162630735

`xor(-A099413(n+2), A033999(2*n+1))`
-/

namespace A056682.P4618640772162630735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A099413 (n + 2)) (A033999 (2 * n + 1))

end

end A056682.P4618640772162630735

/-! ## A056682.P8066150335308202921

`A124452(A099384(n))+A099413(n+2)`
-/

namespace A056682.P8066150335308202921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124452 (A099384 n).toNat + A099413 (n + 2)

end

end A056682.P8066150335308202921

/-! ## A056682.P2753943454219886388

`A033999(2*n+1)+A033999(2*n)*A099413(n+2)`
-/

namespace A056682.P2753943454219886388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A099413 (n + 2)

end

end A056682.P2753943454219886388

/-!
# A056683: Numbers k such that 40*R_k + 9 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056683, there is no canonical definition to state claims against.
-/

/-! ## A056683.P4209684280241985296

`A099414(n+2)-1`
-/

namespace A056683.P4209684280241985296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099414 (n + 2) - 1

end

end A056683.P4209684280241985296

/-! ## A056683.P15967976022771617844

`A321804(n)+A099414(n+2)`
-/

namespace A056683.P15967976022771617844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A099414 (n + 2)

end

end A056683.P15967976022771617844

/-! ## A056683.P17013728678592742130

`A194087(A133687(n))+A099414(n+2)`
-/

namespace A056683.P17013728678592742130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194087 (A133687 n).toNat + A099414 (n + 2)

end

end A056683.P17013728678592742130

/-!
# A056685: Numbers k such that 50*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056685, there is no canonical definition to state claims against.
-/

/-! ## A056685.P15578276089608382556

`A099416(n+1)-1`
-/

namespace A056685.P15578276089608382556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099416 (n + 1) - 1

end

end A056685.P15578276089608382556

/-! ## A056685.P11440062769404175457

`record[Δ[A099416(A152271(n))]]`
-/

namespace A056685.P11440062769404175457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099416 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056685.P11440062769404175457

/-! ## A056685.P11087726934365146822

`A319419(floor(n/4))+A099416(n+1)`
-/

namespace A056685.P11087726934365146822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 ⌊(n : ℚ) / 4⌋.toNat + A099416 (n + 1)

end

end A056685.P11087726934365146822

/-! ## A056685.P4269509420975833341

`A163961(2*n+3)+A099416(n+1)`
-/

namespace A056685.P4269509420975833341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (2 * n + 3) + A099416 (n + 1)

end

end A056685.P4269509420975833341

/-! ## A056685.P1484279786737101677

`abs(A099416(n+1)+A033999(2*n+3))`
-/

namespace A056685.P1484279786737101677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099416 (n + 1) + A033999 (2 * n + 3)|

end

end A056685.P1484279786737101677

/-!
# A056686: Numbers k such that 50*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056686, there is no canonical definition to state claims against.
-/

/-! ## A056686.P10863100574881869471

`A099417(n+2)-1`
-/

namespace A056686.P10863100574881869471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099417 (n + 2) - 1

end

end A056686.P10863100574881869471

/-! ## A056686.P15720598595370249820

`∑[Δ[A099417(n+1)]%A002714(n)]`
-/

namespace A056686.P15720598595370249820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099417 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A002714 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056686.P15720598595370249820

/-! ## A056686.P12992984543921316935

`record[A099417(A028310(n))-A178334(n)]`
-/

namespace A056686.P12992984543921316935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099417 (A028310 n).toNat - A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056686.P12992984543921316935

/-! ## A056686.P2904612234357286141

`A144382(A002034(n+1))+A099417(n+2)`
-/

namespace A056686.P2904612234357286141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144382 (A002034 (n + 1)).toNat + A099417 (n + 2)

end

end A056686.P2904612234357286141

/-! ## A056686.P16642628506867999063

`A144382(A057728(n+1))+A099417(n+2)`
-/

namespace A056686.P16642628506867999063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144382 (A057728 (n + 1)).toNat + A099417 (n + 2)

end

end A056686.P16642628506867999063

/-!
# A056687: Numbers k such that 50*R_k + 9 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056687, there is no canonical definition to state claims against.
-/

/-! ## A056687.P3609681977512595650

`A099418(n+1)-1`
-/

namespace A056687.P3609681977512595650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099418 (n + 1) - 1

end

end A056687.P3609681977512595650

/-! ## A056687.P10809483243108170808

`record[A099418(A128282(n))-1]`
-/

namespace A056687.P10809483243108170808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099418 (A128282 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056687.P10809483243108170808

/-! ## A056687.P982127988689133069

`A260196(n+2)+A099418(n+1)`
-/

namespace A056687.P982127988689133069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A099418 (n + 1)

end

end A056687.P982127988689133069

/-! ## A056687.P17033792751320847956

`A099837(3*n+1)+A099418(n+1)`
-/

namespace A056687.P17033792751320847956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 1) + A099418 (n + 1)

end

end A056687.P17033792751320847956

/-! ## A056687.P712460672249759568

`A280193(2*n+3)+A099418(n+1)`
-/

namespace A056687.P712460672249759568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 3) + A099418 (n + 1)

end

end A056687.P712460672249759568

/-!
# A056688: Numbers k such that 70*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056688, there is no canonical definition to state claims against.
-/

/-! ## A056688.P7822017391032348538

`A099419(n+1)-1`
-/

namespace A056688.P7822017391032348538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099419 (n + 1) - 1

end

end A056688.P7822017391032348538

/-! ## A056688.P8329408171091309634

`record[A099419(A128282(n))-1]`
-/

namespace A056688.P8329408171091309634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099419 (A128282 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056688.P8329408171091309634

/-! ## A056688.P1497728206630944329

`record[A099419(A324347(n))-1]`
-/

namespace A056688.P1497728206630944329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099419 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056688.P1497728206630944329

/-! ## A056688.P15332851722140323158

`A153881(n+2)+A099419(n+1)`
-/

namespace A056688.P15332851722140323158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A099419 (n + 1)

end

end A056688.P15332851722140323158

/-! ## A056688.P5883481379852225002

`abs(A099419(n+1)+A033999(2*n+1))`
-/

namespace A056688.P5883481379852225002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099419 (n + 1) + A033999 (2 * n + 1)|

end

end A056688.P5883481379852225002

/-!
# A056689: Numbers k such that 70*R_k + 3, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056689, there is no canonical definition to state claims against.
-/

/-! ## A056689.P17971630417748260487

`A099420(n+1)-1`
-/

namespace A056689.P17971630417748260487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099420 (n + 1) - 1

end

end A056689.P17971630417748260487

/-! ## A056689.P8529969029044254605

`record[Δ[A099420(A158416(n))]]`
-/

namespace A056689.P8529969029044254605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099420 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056689.P8529969029044254605

/-! ## A056689.P3659915744166981211

`abs(1-A099420(A291769(n)))`
-/

namespace A056689.P3659915744166981211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A099420 (A291769 n).toNat|

end

end A056689.P3659915744166981211

/-! ## A056689.P1652990278199987372

`record[A099420(A128282(n))-1]`
-/

namespace A056689.P1652990278199987372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099420 (A128282 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056689.P1652990278199987372

/-! ## A056689.P18238731229837002314

`abs(A099420(n+1)+A057428(n+1))`
-/

namespace A056689.P18238731229837002314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099420 (n + 1) + A057428 (n + 1)|

end

end A056689.P18238731229837002314

/-!
# A056690: a(n) = floor(product_{k=2..n} log(k)).

The programs for A056690, the canonical program `A056690.P17802964349404955806` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056690 has offset 2).

The definition of A056690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056690.P17802964349404955806

`floor(∏[log(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056690

/-- `floor(∏[log(n+2)])` -/
def P17802964349404955806.Spec : Prop :=
  ∀ n, P17802964349404955806.a n = A056690 (n + 2)

theorem P17802964349404955806.correct : P17802964349404955806.Spec := by
  intro n
  simp only [A056690, Nat.add_sub_cancel]

end A056690

/-! ## A056690.P15787594446566214388

`A023443(ceil(∏[log(n+2)]))`
-/

namespace A056690.P15787594446566214388
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A056690.P15787594446566214388

namespace A056690

/-- `A023443(ceil(∏[log(n+2)]))` -/
def P15787594446566214388.Spec : Prop :=
  ∀ n, P15787594446566214388.a n = A056690 (n + 2)

end A056690

/-! ## A056690.P8345342229471115383

`A347610(floor(sqrt(A306988(n+1))))`
-/

namespace A056690.P8345342229471115383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (Int.sqrt (A306988 (n + 1))).toNat

end

end A056690.P8345342229471115383

namespace A056690

/-- `A347610(floor(sqrt(A306988(n+1))))` -/
def P8345342229471115383.Spec : Prop :=
  ∀ n, P8345342229471115383.a n = A056690 (n + 2)

end A056690

/-! ## A056690.P3244227236881550571

`A135660(A290351(n))`
-/

namespace A056690.P3244227236881550571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A290351 n).toNat

end

end A056690.P3244227236881550571

namespace A056690

/-- `A135660(A290351(n))` -/
def P3244227236881550571.Spec : Prop :=
  ∀ n, P3244227236881550571.a n = A056690 (n + 2)

end A056690

/-! ## A056690.P12986039649821917689

`A381104(A125267(n))`
-/

namespace A056690.P12986039649821917689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381104 (A125267 n).toNat

end

end A056690.P12986039649821917689

namespace A056690

/-- `A381104(A125267(n))` -/
def P12986039649821917689.Spec : Prop :=
  ∀ n, P12986039649821917689.a n = A056690 (n + 2)

end A056690

/-!
# A056691: Number of divisors d of n with gcd(d+1, n) = 1.

The programs for A056691, the canonical program `A056691.P4901059937054800505` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056691 has offset 1).

The definition of A056691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056691.P4901059937054800505

`∑{d}[n+1, A054521(A000217(n)+#+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056691

/-- `∑{d}[n+1, A054521(A000217(n)+#+1)]` -/
def P4901059937054800505.Spec : Prop :=
  ∀ n, P4901059937054800505.a n = A056691 (n + 1)

theorem P4901059937054800505.correct : P4901059937054800505.Spec := by
  intro n
  simp only [A056691, Nat.add_sub_cancel]

end A056691

/-! ## A056691.P2391166572119948627

`A051764(A004926(n+1))`
-/

namespace A056691.P2391166572119948627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A004926 (n + 1)).toNat

end

end A056691.P2391166572119948627

namespace A056691

/-- `A051764(A004926(n+1))` -/
def P2391166572119948627.Spec : Prop :=
  ∀ n, P2391166572119948627.a n = A056691 (n + 1)

end A056691

/-! ## A056691.P1926503105474921105

`A051764(A157955(n+1)-n)`
-/

namespace A056691.P1926503105474921105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A157955 (n + 1) - (n : ℤ)).toNat

end

end A056691.P1926503105474921105

namespace A056691

/-- `A051764(A157955(n+1)-n)` -/
def P1926503105474921105.Spec : Prop :=
  ∀ n, P1926503105474921105.a n = A056691 (n + 1)

end A056691

/-! ## A056691.P6931542806270055862

`A051764(A020338(n+1))`
-/

namespace A056691.P6931542806270055862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A020338 (n + 1)).toNat

end

end A056691.P6931542806270055862

namespace A056691

/-- `A051764(A020338(n+1))` -/
def P6931542806270055862.Spec : Prop :=
  ∀ n, P6931542806270055862.a n = A056691 (n + 1)

end A056691

/-! ## A056691.P17426375155229267373

`A034444(n+1)-Δ[A120886(n+1)]`
-/

namespace A056691.P17426375155229267373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - (f1 (n + 1) - f1 n)

end

end A056691.P17426375155229267373

namespace A056691

/-- `A034444(n+1)-Δ[A120886(n+1)]` -/
def P17426375155229267373.Spec : Prop :=
  ∀ n, P17426375155229267373.a n = A056691 (n + 1)

end A056691

/-! ## A056691.P5868610012983694661

`A051764(A117495(n+2))`
-/

namespace A056691.P5868610012983694661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A117495 (n + 2)).toNat

end

end A056691.P5868610012983694661

namespace A056691

/-- `A051764(A117495(n+2))` -/
def P5868610012983694661.Spec : Prop :=
  ∀ n, P5868610012983694661.a n = A056691 (n + 1)

end A056691

/-! ## A056691.P3092006564118011012

`A051764(A306192(n+2))`
-/

namespace A056691.P3092006564118011012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A306192 (n + 2)).toNat

end

end A056691.P3092006564118011012

namespace A056691

/-- `A051764(A306192(n+2))` -/
def P3092006564118011012.Spec : Prop :=
  ∀ n, P3092006564118011012.a n = A056691 (n + 1)

end A056691

/-!
# A056692: Number of divisors k of n with gcd(k-1, n) = 1.

The programs for A056692, there is no canonical definition to state claims against.
-/

/-! ## A056692.P18104212002490592295

`∑{d}[n+1, A300671(#%gcd(n+1, 1-#))]`
-/

namespace A056692.P18104212002490592295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300671 (d % Int.gcd (n + 1 : ℤ) (1 - (d : ℤ)))

end

end A056692.P18104212002490592295

/-! ## A056692.P2332483627364891715

`∑{d}[n+1, A000035(A008864(gcd(n+1, #+n)))]`
-/

namespace A056692.P2332483627364891715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A008864 (Nat.gcd (n + 1) (d + n))).toNat

end

end A056692.P2332483627364891715

/-! ## A056692.P12952584274436007868

`A386476(A003961(n+1))%A083602(n+1)`
-/

namespace A056692.P12952584274436007868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386476 (A003961 (n + 1)).toNat) (A083602 (n + 1))

end

end A056692.P12952584274436007868

/-! ## A056692.P1406017003112579908

`A266502(∑[∑[n+3]+n²])+∑{e}[n+1, #]`
-/

namespace A056692.P1406017003112579908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)

end

end A056692.P1406017003112579908

/-! ## A056692.P13830177462832304720

`A267050(A164845(n))+A001222(n+1)`
-/

namespace A056692.P13830177462832304720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (A164845 n).toNat + A001222 (n + 1)

end

end A056692.P13830177462832304720

/-!
# A056693: Numbers k such that 70*R_k + 9 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056693, there is no canonical definition to state claims against.
-/

/-! ## A056693.P4787203194022277843

`A098089(n+2)-1`
-/

namespace A056693.P4787203194022277843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098089 (n + 2) - 1

end

end A056693.P4787203194022277843

/-! ## A056693.P8838183484444717560

`A354347(A005846(n+1))+A098089(n+2)`
-/

namespace A056693.P8838183484444717560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A005846 (n + 1)).toNat + A098089 (n + 2)

end

end A056693.P8838183484444717560

/-! ## A056693.P47560774653270853

`A354347(A078866(n+1))+A098089(n+2)`
-/

namespace A056693.P47560774653270853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A078866 (n + 1)).toNat + A098089 (n + 2)

end

end A056693.P47560774653270853

/-! ## A056693.P2108810811384616550

`A354347(A216315(n+1))+A098089(n+2)`
-/

namespace A056693.P2108810811384616550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A216315 (n + 1)).toNat + A098089 (n + 2)

end

end A056693.P2108810811384616550

/-! ## A056693.P1710257985395138204

`A354347(A020450(n+1))+A098089(n+2)`
-/

namespace A056693.P1710257985395138204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A020450 (n + 1)).toNat + A098089 (n + 2)

end

end A056693.P1710257985395138204

/-!
# A056694: Numbers k such that 80*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056694, there is no canonical definition to state claims against.
-/

/-! ## A056694.P5193766812554494827

`A099422(n+1)-1`
-/

namespace A056694.P5193766812554494827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099422 (n + 1) - 1

end

end A056694.P5193766812554494827

/-! ## A056694.P17285625280736654114

`record[Δ[A099422(A152271(n))]]`
-/

namespace A056694.P17285625280736654114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099422 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056694.P17285625280736654114

/-! ## A056694.P14963962755928309684

`record[Δ[A099422(A158416(n))]]`
-/

namespace A056694.P14963962755928309684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099422 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056694.P14963962755928309684

/-! ## A056694.P5880878689719512429

`record[A099422(A126759(n))-1]`
-/

namespace A056694.P5880878689719512429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099422 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056694.P5880878689719512429

/-! ## A056694.P10714342736530346907

`record[A099422(A128282(n))-1]`
-/

namespace A056694.P10714342736530346907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099422 (A128282 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056694.P10714342736530346907

/-!
# A056695: Numbers k such that 80*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056695, there is no canonical definition to state claims against.
-/

/-! ## A056695.P1360906632075978449

`A096846(n+1)-1`
-/

namespace A056695.P1360906632075978449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096846 (n + 1) - 1

end

end A056695.P1360906632075978449

/-! ## A056695.P8938023774504169601

`record[Δ[A096846(A152271(n))]]`
-/

namespace A056695.P8938023774504169601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096846 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056695.P8938023774504169601

/-! ## A056695.P2235876459778213118

`record[Δ[A096846(A158416(n))]]`
-/

namespace A056695.P2235876459778213118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096846 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056695.P2235876459778213118

/-! ## A056695.P11266082080236486962

`A375389(n+1)+A096846(n+1)`
-/

namespace A056695.P11266082080236486962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (n + 1) + A096846 (n + 1)

end

end A056695.P11266082080236486962

/-! ## A056695.P6697276807866900663

`A153881(n+2)+A096846(n+1)`
-/

namespace A056695.P6697276807866900663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A096846 (n + 1)

end

end A056695.P6697276807866900663

/-!
# A056696: Numbers k such that 90*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056696, there is no canonical definition to state claims against.
-/

/-! ## A056696.P5654074386525550940

`A095714(n+1)-1`
-/

namespace A056696.P5654074386525550940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095714 (n + 1) - 1

end

end A056696.P5654074386525550940

/-! ## A056696.P5731222294635490873

`xor(1, A095714(C(n+1, n)))`
-/

namespace A056696.P5731222294635490873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A095714 (Nat.choose (n + 1) n))

end

end A056696.P5731222294635490873

/-! ## A056696.P6411027303633214388

`xor(1, A095714(-xor(n, -1)))`
-/

namespace A056696.P6411027303633214388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A095714 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A056696.P6411027303633214388

/-! ## A056696.P1868055896270245200

`xor(1, A095714(A291769(n)))`
-/

namespace A056696.P1868055896270245200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A095714 (A291769 n).toNat)

end

end A056696.P1868055896270245200

/-! ## A056696.P16200805600029449068

`xor(1, A095714(A348553(n)))`
-/

namespace A056696.P16200805600029449068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A095714 (A348553 n).toNat)

end

end A056696.P16200805600029449068

/-!
# A056697: a(n) is least N > 1 congruent to -1,0, or 1 mod i for all i=1,...,n.

The programs for A056697, there is no canonical definition to state claims against.
-/

/-! ## A056697.P14810692828484056202

`A361247(n+1)-1`
-/

namespace A056697.P14810692828484056202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361247 (n + 1) - 1

end

end A056697.P14810692828484056202

/-! ## A056697.P3472532307114216766

`A023443(A361247(n+1))`
-/

namespace A056697.P3472532307114216766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A361247 (n + 1)).toNat

end

end A056697.P3472532307114216766

/-! ## A056697.P11005828162475553773

`A289207(A361247(n+1)+1)`
-/

namespace A056697.P11005828162475553773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A361247 (n + 1) + 1).toNat

end

end A056697.P11005828162475553773

/-! ## A056697.P12593463681709627033

`A002024(C(A361247(n+1), 2))`
-/

namespace A056697.P12593463681709627033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A361247 (n + 1)).toNat 2)

end

end A056697.P12593463681709627033

/-! ## A056697.P1883560472447577449

`A003056(C(A361247(n+1), 2))`
-/

namespace A056697.P1883560472447577449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A361247 (n + 1)).toNat 2)

end

end A056697.P1883560472447577449

/-!
# A056699: First differences are 2,1,-2,3 (repeated).

The programs for A056699, the canonical program `A056699.P17988011203780181519` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056699 has offset 1).

The definition of A056699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056699.P17988011203780181519

`a(n-4)+4` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056699

/-- `a(n-4)+4` -/
def P17988011203780181519.Spec : Prop :=
  ∀ n, (P17988011203780181519.a n : ℤ) = A056699 (n + 1)

theorem P17988011203780181519.correct : P17988011203780181519.Spec := by
  intro n
  simp only [A056699, Nat.add_sub_cancel]

end A056699

/-! ## A056699.P7786021191156725288

`A292576(n+1)-2*(-1)^floor((n+1)/2)`
-/

namespace A056699.P7786021191156725288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292576 (n + 1) : ℚ) - 2 * (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A056699.P7786021191156725288

namespace A056699

/-- `A292576(n+1)-2*(-1)^floor((n+1)/2)` -/
def P7786021191156725288.Spec : Prop :=
  ∀ n, P7786021191156725288.a n = (A056699 (n + 1) : ℚ)

end A056699

/-! ## A056699.P9288187908288145473

`A092486(A067060(n+1)-1)`
-/

namespace A056699.P9288187908288145473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A067060 (n + 1) - 1).toNat

end

end A056699.P9288187908288145473

namespace A056699

/-- `A092486(A067060(n+1)-1)` -/
def P9288187908288145473.Spec : Prop :=
  ∀ n, P9288187908288145473.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P4384586636363593343

`n+2-C(and(3, 2-n), 2)`
-/

namespace A056699.P4384586636363593343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose (Int.land 3 (2 - (n : ℤ))).toNat 2 : ℤ)

end

end A056699.P4384586636363593343

namespace A056699

/-- `n+2-C(and(3, 2-n), 2)` -/
def P4384586636363593343.Spec : Prop :=
  ∀ n, P4384586636363593343.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P5023835309472587140

`3-(gcd(4, a(n-1))-n)` with `a(0)=1`
-/

namespace A056699.P5023835309472587140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - ((Int.gcd 4 (a (n - 1)) : ℤ) - (n : ℤ))

end

end A056699.P5023835309472587140

namespace A056699

/-- `3-(gcd(4, a(n-1))-n)` -/
def P5023835309472587140.Spec : Prop :=
  ∀ n, P5023835309472587140.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P1052386580868248650

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A056699.P1052386580868248650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, -2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056699.P1052386580868248650

namespace A056699

/-- `∑[floor(a(n-4))]` -/
def P1052386580868248650.Spec : Prop :=
  ∀ n, P1052386580868248650.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P8989192085311090280

`n+3-gcd(2*(n-1), ∑[n]²)`
-/

namespace A056699.P8989192085311090280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Int.gcd (2 * ((n : ℤ) - 1)) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) : ℤ)

end

end A056699.P8989192085311090280

namespace A056699

/-- `n+3-gcd(2*(n-1), ∑[n]²)` -/
def P8989192085311090280.Spec : Prop :=
  ∀ n, P8989192085311090280.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P18235572293999623175

`2*n+1-xor(n+1, and(2, n+1)!)`
-/

namespace A056699.P18235572293999623175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.xor (n + 1) (Nat.factorial (Nat.land 2 (n + 1))) : ℤ)

end

end A056699.P18235572293999623175

namespace A056699

/-- `2*n+1-xor(n+1, and(2, n+1)!)` -/
def P18235572293999623175.Spec : Prop :=
  ∀ n, P18235572293999623175.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P15530424176964525964

`(n+1)%4-gcd(2, ∑[n+1])+n+1`
-/

namespace A056699.P15530424176964525964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 4 : ℕ) : ℤ) - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n + 1 : ℤ)

end

end A056699.P15530424176964525964

namespace A056699

/-- `(n+1)%4-gcd(2, ∑[n+1])+n+1` -/
def P15530424176964525964.Spec : Prop :=
  ∀ n, P15530424176964525964.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P6716460919617240741

`xor(char[or(1, n)], A133256(n+1))`
-/

namespace A056699.P6716460919617240741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A133256 (n + 1))

end

end A056699.P6716460919617240741

namespace A056699

/-- `xor(char[or(1, n)], A133256(n+1))` -/
def P6716460919617240741.Spec : Prop :=
  ∀ n, P6716460919617240741.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P12207763968653013565

`n+3-A000005(and(3, 2-n)!)`
-/

namespace A056699.P12207763968653013565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A000005 (Nat.factorial (Int.land 3 (2 - (n : ℤ))).toNat)

end

end A056699.P12207763968653013565

namespace A056699

/-- `n+3-A000005(and(3, 2-n)!)` -/
def P12207763968653013565.Spec : Prop :=
  ∀ n, P12207763968653013565.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P2167347846872760370

`n+2-and(2*n+1, A000045(and(2, n-1)²))`
-/

namespace A056699.P2167347846872760370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.land (2 * n + 1 : ℤ) (A000045 (Int.land 2 ((n : ℤ) - 1) ^ 2).toNat)

end

end A056699.P2167347846872760370

namespace A056699

/-- `n+2-and(2*n+1, A000045(and(2, n-1)²))` -/
def P2167347846872760370.Spec : Prop :=
  ∀ n, P2167347846872760370.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P9246494137083830216

`A263449(A080412(n))`
-/

namespace A056699.P9246494137083830216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (A080412 n).toNat

end

end A056699.P9246494137083830216

namespace A056699

/-- `A263449(A080412(n))` -/
def P9246494137083830216.Spec : Prop :=
  ∀ n, P9246494137083830216.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P2098344084343046160

`A133256(A263449(n))`
-/

namespace A056699.P2098344084343046160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A263449 n).toNat

end

end A056699.P2098344084343046160

namespace A056699

/-- `A133256(A263449(n))` -/
def P2098344084343046160.Spec : Prop :=
  ∀ n, P2098344084343046160.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P16287314746829902462

`A159966(A067060(n+1))`
-/

namespace A056699.P16287314746829902462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A067060 (n + 1)).toNat

end

end A056699.P16287314746829902462

namespace A056699

/-- `A159966(A067060(n+1))` -/
def P16287314746829902462.Spec : Prop :=
  ∀ n, P16287314746829902462.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P15154670472690830904

`A292576(A004442(n)+1)`
-/

namespace A056699.P15154670472690830904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A004442 n + 1).toNat

end

end A056699.P15154670472690830904

namespace A056699

/-- `A292576(A004442(n)+1)` -/
def P15154670472690830904.Spec : Prop :=
  ∀ n, P15154670472690830904.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P9862362546893706926

`A292576(A014681(n+1))`
-/

namespace A056699.P9862362546893706926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A014681 (n + 1)).toNat

end

end A056699.P9862362546893706926

namespace A056699

/-- `A292576(A014681(n+1))` -/
def P9862362546893706926.Spec : Prop :=
  ∀ n, P9862362546893706926.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P13142936922274304381

`A292576(A103889(n+1))`
-/

namespace A056699.P13142936922274304381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A103889 (n + 1)).toNat

end

end A056699.P13142936922274304381

namespace A056699

/-- `A292576(A103889(n+1))` -/
def P13142936922274304381.Spec : Prop :=
  ∀ n, P13142936922274304381.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P15572488161514583541

`A256008(A292576(n+1))`
-/

namespace A056699.P15572488161514583541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A292576 (n + 1)).toNat

end

end A056699.P15572488161514583541

namespace A056699

/-- `A256008(A292576(n+1))` -/
def P15572488161514583541.Spec : Prop :=
  ∀ n, P15572488161514583541.a n = A056699 (n + 1)

end A056699

/-! ## A056699.P15754794027851454631

`A284307(A284307(n+1))`
-/

namespace A056699.P15754794027851454631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (A284307 (n + 1)).toNat

end

end A056699.P15754794027851454631

namespace A056699

/-- `A284307(A284307(n+1))` -/
def P15754794027851454631.Spec : Prop :=
  ∀ n, P15754794027851454631.a n = A056699 (n + 1)

end A056699

