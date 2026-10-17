import SequenceMachineLib
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A034602: Wolstenholme quotient W_p = (binomial(2p-1,p) - 1)/p^3 for prime p=A000040(n).

The programs for A034602, there is no canonical definition to state claims against.
-/

/-! ## A034602.P7742969732093586201

`A087754(n+3)/2`
-/

namespace A034602.P7742969732093586201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087754 (n + 3) : ℚ) / 2

end

end A034602.P7742969732093586201

/-! ## A034602.P9526103643021856479

`A263882(n+3)/A000040(n+3)`
-/

namespace A034602.P9526103643021856479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263882 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A034602.P9526103643021856479

/-! ## A034602.P13908776125401290057

`record[A131868(A006530(n+1))/(n+1)]`
-/

namespace A034602.P13908776125401290057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131868 (A006530 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034602.P13908776125401290057

/-! ## A034602.P13043092882466282142

`record[A131868(A014963(n+1))/(n+1)]`
-/

namespace A034602.P13043092882466282142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131868 (A014963 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034602.P13043092882466282142

/-! ## A034602.P10808458855626492512

`record[A131868(A020639(n+1))/(n+1)]`
-/

namespace A034602.P10808458855626492512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131868 (A020639 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034602.P10808458855626492512

/-!
# A034606: Theta series of (putative) extremal 2-modular even lattice in dimension 48.

The programs for A034606, there is no canonical definition to state claims against.
-/

/-! ## A034606.P15456349119176455487

`A000010(A021244(n))*A105920(n)`
-/

namespace A034606.P15456349119176455487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A021244 n).toNat * A105920 n

end

end A034606.P15456349119176455487

/-!
# A034607: Theta series of (putative) extremal 2-modular even lattice in dimension 52.

The programs for A034607, there is no canonical definition to state claims against.
-/

/-! ## A034607.P9246014393478723683

`A018234(A039900(n))`
-/

namespace A034607.P9246014393478723683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018234 (A039900 n).toNat

end

end A034607.P9246014393478723683

/-!
# A034608: Theta series of (putative) extremal 2-modular even lattice in dimension 56.

The programs for A034608, there is no canonical definition to state claims against.
-/

/-! ## A034608.P1722914205920463091

`A002110(n)*A318715(A005649(n))`
-/

namespace A034608.P1722914205920463091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A318715 (A005649 n).toNat

end

end A034608.P1722914205920463091

/-!
# A034609: Theta series of (putative) extremal 2-modular even lattice in dimension 60.

The programs for A034609, there is no canonical definition to state claims against.
-/

/-! ## A034609.P18240703186565250843

`∑[(n+1)²]*A187155(A001700(n))`
-/

namespace A034609.P18240703186565250843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A187155 (A001700 n).toNat

end

end A034609.P18240703186565250843

/-!
# A034610: Theta series of (putative) extremal 2-modular even lattice in dimension 64.

The programs for A034610, there is no canonical definition to state claims against.
-/

/-! ## A034610.P6335979846705487158

`A008434(C(∑[A330291(n+1)], 2))`
-/

namespace A034610.P6335979846705487158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A034610.P6335979846705487158

/-! ## A034610.P2679116956887877006

`A182797(A000079(n))*A379689(n)`
-/

namespace A034610.P2679116956887877006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (A000079 n).toNat * A379689 n

end

end A034610.P2679116956887877006

/-!
# A034618: Theta series of (putative) extremal 2-modular even lattice in dimension 96.

The programs for A034618, there is no canonical definition to state claims against.
-/

/-! ## A034618.P10376514082089834638

`lcm(A120777(n), A151878(A027934(n)))`
-/

namespace A034618.P10376514082089834638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A120777 n) (A151878 (A027934 n).toNat)

end

end A034618.P10376514082089834638

/-!
# A034629: Theta series of (putative) extremal 3-modular even lattice in dimension 38.

The programs for A034629, there is no canonical definition to state claims against.
-/

/-! ## A034629.P17386970862749113533

`A100257(A123747(n))*A100307(n)`
-/

namespace A034629.P17386970862749113533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 (A123747 n).toNat * A100307 n

end

end A034629.P17386970862749113533

/-!
# A034630: Theta series of extremal 3-modular even lattice in dimension 40.

The programs for A034630, there is no canonical definition to state claims against.
-/

/-! ## A034630.P11421693597471759937

`A328449(C(C(n, 2), n*and(2, n)!))`
-/

namespace A034630.P11421693597471759937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (Nat.choose (Nat.choose n 2) (n * Nat.factorial (Nat.land 2 n)))

end

end A034630.P11421693597471759937

/-!
# A034631: Theta series of (putative) extremal 3-modular even lattice in dimension 42.

The programs for A034631, there is no canonical definition to state claims against.
-/

/-! ## A034631.P12428454693662823715

`∑{d}[n+1, #]*A137339(A076317(n+1))`
-/

namespace A034631.P12428454693662823715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A137339 (A076317 (n + 1)).toNat

end

end A034631.P12428454693662823715

/-!
# A034632: Theta series of (putative) extremal 3-modular even lattice in dimension 44.

The programs for A034632, there is no canonical definition to state claims against.
-/

/-! ## A034632.P15329191186420052096

`A000566(A302374(n)*A351504(n))`
-/

namespace A034632.P15329191186420052096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A302374 n * A351504 n).toNat

end

end A034632.P15329191186420052096

/-!
# A034633: Theta series of (putative) extremal 3-modular even lattice in dimension 46.

The programs for A034633, there is no canonical definition to state claims against.
-/

/-! ## A034633.P11220074052704788741

`A060008(A331575(3*n+a(n-1)-2))` with `a(0)=1`
-/

namespace A034633.P11220074052704788741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060008 (A331575 ((3 * n : ℤ) + (a (n - 1) - 2)).toNat).toNat

end

end A034633.P11220074052704788741

/-!
# A034635: Theta series of (putative) extremal 3-modular even lattice in dimension 50.

The programs for A034635, there is no canonical definition to state claims against.
-/

/-! ## A034635.P14915366906190706319

`C(A347470(A046528(n+1)), n)*C(n+4, 4)`
-/

namespace A034635.P14915366906190706319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A347470 (A046528 (n + 1)).toNat).toNat n * Nat.choose (n + 4) 4

end

end A034635.P14915366906190706319

/-! ## A034635.P6200058382007143485

`A178667(A225761(n+1))*A322075(n+1)`
-/

namespace A034635.P6200058382007143485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178667 (A225761 (n + 1)).toNat * A322075 (n + 1)

end

end A034635.P6200058382007143485

/-!
# A034638: Theta series of (putative) extremal 3-modular even lattice in dimension 56.

The programs for A034638, there is no canonical definition to state claims against.
-/

/-! ## A034638.P11723127460303656160

`char[n*char[5]]*A079210(A027851(n))`
-/

namespace A034638.P11723127460303656160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A079210 (A027851 n).toNat

end

end A034638.P11723127460303656160

/-! ## A034638.P6773654145396681070

`A000010(A264407(n))*A030029(n)`
-/

namespace A034638.P6773654145396681070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A264407 n).toNat * A030029 n

end

end A034638.P6773654145396681070

/-!
# A034643: Theta series of (putative) extremal 3-modular even lattice in dimension 66.

The programs for A034643, there is no canonical definition to state claims against.
-/

/-! ## A034643.P14686050014600123929

`A130644(n)*A176724(A000079(n))`
-/

namespace A034643.P14686050014600123929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130644 n * A176724 (A000079 n).toNat

end

end A034643.P14686050014600123929

/-! ## A034643.P4614720019778187563

`lcm(A130644(n), A319759(A005251(n)))`
-/

namespace A034643.P4614720019778187563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130644 n) (A319759 (A005251 n).toNat)

end

end A034643.P4614720019778187563

/-! ## A034643.P9233783608274070946

`C(A130644(n), A327003(A214604(n+1)))`
-/

namespace A034643.P9233783608274070946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130644 n).toNat (A327003 (A214604 (n + 1)).toNat).toNat

end

end A034643.P9233783608274070946

/-!
# A034645: Theta series of (putative) extremal 3-modular even lattice in dimension 70.

The programs for A034645, there is no canonical definition to state claims against.
-/

/-! ## A034645.P6779981686001125523

`C(A359221(or(n, a(n-1))), 15)` with `a(0)=1`
-/

namespace A034645.P6779981686001125523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A359221 (Nat.lor n (a (n - 1)))).toNat 15

end

end A034645.P6779981686001125523

/-! ## A034645.P3318798385646688449

`C(∑{digits}[7^n, #], A325415(lcm(12, n)))`
-/

namespace A034645.P3318798385646688449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum (A325415 (Nat.lcm 12 n)).toNat

end

end A034645.P3318798385646688449

/-! ## A034645.P13954658181800162029

`C(A290990(n-1)+a(n-1), 15)` with `a(0)=1`
-/

namespace A034645.P13954658181800162029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A290990 (n - 1) + (a (n - 1) : ℤ)).toNat 15

end

end A034645.P13954658181800162029

/-!
# A034650: Theta series of (putative) extremal 3-modular even lattice in dimension 80.

The programs for A034650, there is no canonical definition to state claims against.
-/

/-! ## A034650.P10538715347763320577

`A010054(A154638(n))*A338560(2*n+1)`
-/

namespace A034650.P10538715347763320577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A154638 n).toNat * A338560 (2 * n + 1)

end

end A034650.P10538715347763320577

/-! ## A034650.P7273996869196825740

`A338560(2*n+1)%A000371(A100134(n))`
-/

namespace A034650.P7273996869196825740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338560 (2 * n + 1)) (A000371 (A100134 n).toNat)

end

end A034650.P7273996869196825740

/-!
# A034659: a(n) = (11^n + 1)/2.

The programs for A034659, the canonical program `A034659.P9693213874906792404` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034659 has offset 0).

The definition of A034659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034659.P3884214805610977757

`(11^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034659.P3884214805610977757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 1 : ℚ) / 2

end

end A034659.P3884214805610977757

namespace A034659

/-- `(11^n+1)/2` -/
def P3884214805610977757.Spec : Prop :=
  ∀ n, P3884214805610977757.a n = (A034659 n : ℚ)

end A034659

/-! ## A034659.P9693213874906792404

`11*a(n-1)-5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034659

/-- `11*a(n-1)-5` -/
def P9693213874906792404.Spec : Prop :=
  ∀ n, P9693213874906792404.a n = A034659 n

theorem P9693213874906792404.correct : P9693213874906792404.Spec := by
  intro n
  simp only [A034659]

end A034659

/-! ## A034659.P11309274096025647094

`lcm(11, a(n-1))-5` with `a(0)=1`
-/

namespace A034659.P11309274096025647094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 5

end

end A034659.P11309274096025647094

namespace A034659

/-- `lcm(11, a(n-1))-5` -/
def P11309274096025647094.Spec : Prop :=
  ∀ n, P11309274096025647094.a n = A034659 n

end A034659

/-! ## A034659.P5320680774158351636

`round(A001020(n)/2)`
-/

namespace A034659.P5320680774158351636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001020 n : ℚ) / 2)

end

end A034659.P5320680774158351636

namespace A034659

/-- `round(A001020(n)/2)` -/
def P5320680774158351636.Spec : Prop :=
  ∀ n, P5320680774158351636.a n = A034659 n

end A034659

/-! ## A034659.P4532713372424168818

`A073219(∑[n]+1)`
-/

namespace A034659.P4532713372424168818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034659.P4532713372424168818

namespace A034659

/-- `A073219(∑[n]+1)` -/
def P4532713372424168818.Spec : Prop :=
  ∀ n, P4532713372424168818.a n = A034659 n

end A034659

/-! ## A034659.P6857378789672008685

`A024127(n)/2+1`
-/

namespace A034659.P6857378789672008685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024127 n : ℚ) / 2 + 1

end

end A034659.P6857378789672008685

namespace A034659

/-- `A024127(n)/2+1` -/
def P6857378789672008685.Spec : Prop :=
  ∀ n, P6857378789672008685.a n = (A034659 n : ℚ)

end A034659

/-! ## A034659.P6007403162457384013

`5*A047856(n)-4`
-/

namespace A034659.P6007403162457384013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A047856 n - 4

end

end A034659.P6007403162457384013

namespace A034659

/-- `5*A047856(n)-4` -/
def P6007403162457384013.Spec : Prop :=
  ∀ n, P6007403162457384013.a n = A034659 n

end A034659

/-! ## A034659.P9203384785696855558

`A297181(A016861(n))`
-/

namespace A034659.P9203384785696855558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297181 (A016861 n).toNat

end

end A034659.P9203384785696855558

namespace A034659

/-- `A297181(A016861(n))` -/
def P9203384785696855558.Spec : Prop :=
  ∀ n, P9203384785696855558.a n = A034659 n

end A034659

/-!
# A034660: Sum of n-th powers of divisors of 12.

The programs for A034660, there is no canonical definition to state claims against.
-/

/-! ## A034660.P16770527074147428417

`∑{d}[-a(n-1), #^n]` with `a(0)=12`
-/

namespace A034660.P16770527074147428417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034660.P16770527074147428417

/-! ## A034660.P6641925491606997179

`(1+2^n+4^n)*(1+3^n)`
-/

namespace A034660.P6641925491606997179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 2 ^ n + 4 ^ n) * (1 + 3 ^ n)

end

end A034660.P6641925491606997179

/-! ## A034660.P12421709916466795185

`A034472(n)+A000051(n)*A074601(n)`
-/

namespace A034660.P12421709916466795185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n + A000051 n * A074601 n

end

end A034660.P12421709916466795185

/-! ## A034660.P16923563296722714257

`A074601(n)+A034472(n)*A052539(n)`
-/

namespace A034660.P16923563296722714257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n + A034472 n * A052539 n

end

end A034660.P16923563296722714257

/-! ## A034660.P7407418943879104993

`A034472(n)+A034472(n)*A161168(n)`
-/

namespace A034660.P7407418943879104993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n + A034472 n * A161168 n

end

end A034660.P7407418943879104993

/-! ## A034660.P4706701107298300524

`A092807(n+1)+A034472(n)*A052539(n)`
-/

namespace A034660.P4706701107298300524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 (n + 1) + A034472 n * A052539 n

end

end A034660.P4706701107298300524

/-!
# A034661: Sum of n-th powers of divisors of 18.

The programs for A034661, the canonical program `A034661.P13987024234175101085` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034661 has offset 0).

The definition of A034661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034661.P13987024234175101085

`(2^n+1)*(3^n+9^n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034661

/-- `(2^n+1)*(3^n+9^n+1)` -/
def P13987024234175101085.Spec : Prop :=
  ∀ n, (P13987024234175101085.a n : ℤ) = A034661 n

theorem P13987024234175101085.correct : P13987024234175101085.Spec := by
  intro n
  simp only [A034661]

end A034661

/-! ## A034661.P972913124819262565

`A000051(n)+A000051(n)*A074610(n)`
-/

namespace A034661.P972913124819262565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000051 n * A074610 n

end

end A034661.P972913124819262565

namespace A034661

/-- `A000051(n)+A000051(n)*A074610(n)` -/
def P972913124819262565.Spec : Prop :=
  ∀ n, P972913124819262565.a n = A034661 n

end A034661

/-! ## A034661.P10326209711380917655

`A000051(n)+A034472(n)*A074607(n)`
-/

namespace A034661.P10326209711380917655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A034472 n * A074607 n

end

end A034661.P10326209711380917655

namespace A034661

/-- `A000051(n)+A034472(n)*A074607(n)` -/
def P10326209711380917655.Spec : Prop :=
  ∀ n, P10326209711380917655.a n = A034661 n

end A034661

/-! ## A034661.P12880070822777808227

`A109974(eq[18, A004736(n+1)])`
-/

namespace A034661.P12880070822777808227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034661.P12880070822777808227

namespace A034661

/-- `A109974(eq[18, A004736(n+1)])` -/
def P12880070822777808227.Spec : Prop :=
  ∀ n, P12880070822777808227.a n = A034661 n

end A034661

/-! ## A034661.P17000706055348065823

`A034671(n)/(4^n+1)`
-/

namespace A034661.P17000706055348065823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034671 n : ℚ) / (4 ^ n + 1 : ℚ)

end

end A034661.P17000706055348065823

namespace A034661

/-- `A034671(n)/(4^n+1)` -/
def P17000706055348065823.Spec : Prop :=
  ∀ n, P17000706055348065823.a n = (A034661 n : ℚ)

end A034661

/-!
# A034662: Sum of n-th powers of divisors of 20.

The programs for A034662, the canonical program `A034662.P11982608881714086736` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034662 has offset 0).

The definition of A034662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034662.P11982608881714086736

`(1+2^n+4^n)*(1+5^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034662

/-- `(1+2^n+4^n)*(1+5^n)` -/
def P11982608881714086736.Spec : Prop :=
  ∀ n, (P11982608881714086736.a n : ℤ) = A034662 n

theorem P11982608881714086736.correct : P11982608881714086736.Spec := by
  intro n
  simp only [A034662]

end A034662

/-! ## A034662.P10283180968547412480

`∑{d}[-a(n-1), #^n]` with `a(0)=20`
-/

namespace A034662.P10283180968547412480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034662.P10283180968547412480

namespace A034662

/-- `∑{d}[-a(n-1), #^n]` -/
def P10283180968547412480.Spec : Prop :=
  ∀ n, (P10283180968547412480.a n : ℤ) = A034662 n

end A034662

/-! ## A034662.P2213005160574965832

`floor((A093069(n+1)+5)/4*A034474(n))`
-/

namespace A034662.P2213005160574965832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093069 (n + 1) + 5 : ℚ) / 4 * (A034474 n : ℚ)⌋

end

end A034662.P2213005160574965832

namespace A034662

/-- `floor((A093069(n+1)+5)/4*A034474(n))` -/
def P2213005160574965832.Spec : Prop :=
  ∀ n, P2213005160574965832.a n = A034662 n

end A034662

/-! ## A034662.P12870441751183192136

`A034474(n)+A034474(n)*A161168(n)`
-/

namespace A034662.P12870441751183192136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n + A034474 n * A161168 n

end

end A034662.P12870441751183192136

namespace A034662

/-- `A034474(n)+A034474(n)*A161168(n)` -/
def P12870441751183192136.Spec : Prop :=
  ∀ n, P12870441751183192136.a n = A034662 n

end A034662

/-! ## A034662.P16552385069523063525

`A001576(n)*A074501(n)-A074535(n)`
-/

namespace A034662.P16552385069523063525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A074501 n - A074535 n

end

end A034662.P16552385069523063525

namespace A034662

/-- `A001576(n)*A074501(n)-A074535(n)` -/
def P16552385069523063525.Spec : Prop :=
  ∀ n, P16552385069523063525.a n = A034662 n

end A034662

/-!
# A034663: Sum of n-th powers of divisors of 21.

The programs for A034663, the canonical program `A034663.P6191100540916868987` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034663 has offset 0).

The definition of A034663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034663.P6191100540916868987

`(1+3^n)*(1+7^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034663

/-- `(1+3^n)*(1+7^n)` -/
def P6191100540916868987.Spec : Prop :=
  ∀ n, (P6191100540916868987.a n : ℤ) = A034663 n

theorem P6191100540916868987.correct : P6191100540916868987.Spec := by
  intro n
  simp only [A034663]

end A034663

/-! ## A034663.P14751549365674313336

`lcm(2, A034472(n)*A034491(n))`
-/

namespace A034663.P14751549365674313336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A034472 n * A034491 n)

end

end A034663.P14751549365674313336

namespace A034663

/-- `lcm(2, A034472(n)*A034491(n))` -/
def P14751549365674313336.Spec : Prop :=
  ∀ n, (P14751549365674313336.a n : ℤ) = A034663 n

end A034663

/-! ## A034663.P7964313878481599243

`A034491(n)+A000244(n)*A034491(n)`
-/

namespace A034663.P7964313878481599243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n + A000244 n * A034491 n

end

end A034663.P7964313878481599243

namespace A034663

/-- `A034491(n)+A000244(n)*A034491(n)` -/
def P7964313878481599243.Spec : Prop :=
  ∀ n, P7964313878481599243.a n = A034663 n

end A034663

/-! ## A034663.P16583570724891440532

`A034491(n)*A168607(n)-A034491(n)`
-/

namespace A034663.P16583570724891440532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n * A168607 n - A034491 n

end

end A034663.P16583570724891440532

namespace A034663

/-- `A034491(n)*A168607(n)-A034491(n)` -/
def P16583570724891440532.Spec : Prop :=
  ∀ n, P16583570724891440532.a n = A034663 n

end A034663

/-! ## A034663.P18121083529509385913

`A034472(n)*A034491(n)/A007318(∑[n])`
-/

namespace A034663.P18121083529509385913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034472 n * A034491 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A034663.P18121083529509385913

namespace A034663

/-- `A034472(n)*A034491(n)/A007318(∑[n])` -/
def P18121083529509385913.Spec : Prop :=
  ∀ n, P18121083529509385913.a n = (A034663 n : ℚ)

end A034663

/-! ## A034663.P18324226840885530707

`char[A017609(n)]+A034472(n)*A034491(n)`
-/

namespace A034663.P18324226840885530707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A034472 n * A034491 n

end

end A034663.P18324226840885530707

namespace A034663

/-- `char[A017609(n)]+A034472(n)*A034491(n)` -/
def P18324226840885530707.Spec : Prop :=
  ∀ n, P18324226840885530707.a n = A034663 n

end A034663

/-! ## A034663.P11494549282258602586

`A034472(n)*A034491(n)/A033999(n+1)²`
-/

namespace A034663.P11494549282258602586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034472 n * A034491 n : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A034663.P11494549282258602586

namespace A034663

/-- `A034472(n)*A034491(n)/A033999(n+1)²` -/
def P11494549282258602586.Spec : Prop :=
  ∀ n, P11494549282258602586.a n = (A034663 n : ℚ)

end A034663

/-!
# A034664: Sum of n-th powers of divisors of 24.

The programs for A034664, there is no canonical definition to state claims against.
-/

/-! ## A034664.P5030569131111749590

`∑{d}[-a(n-1), #^n]` with `a(0)=24`
-/

namespace A034664.P5030569131111749590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034664.P5030569131111749590

/-! ## A034664.P9566812381529263120

`(3^n+1)*(2^n+1)*(4^n+1)`
-/

namespace A034664.P9566812381529263120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1) * ((2 ^ n + 1) * (4 ^ n + 1))

end

end A034664.P9566812381529263120

/-! ## A034664.P8080119001600972756

`A034673(n)/A034474(n)`
-/

namespace A034664.P8080119001600972756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034673 n : ℚ) / (A034474 n : ℚ)

end

end A034664.P8080119001600972756

/-! ## A034664.P6719000866570685025

`(3^n+1)*A034667(n)/A034474(n)`
-/

namespace A034664.P6719000866570685025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 1 : ℤ) * A034667 n : ℚ) / (A034474 n : ℚ)

end

end A034664.P6719000866570685025

/-! ## A034664.P4954758042313655041

`(4^n+1)*A241032(n)/A034474(n)`
-/

namespace A034664.P4954758042313655041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n + 1 : ℤ) * A241032 n : ℚ) / (A034474 n : ℚ)

end

end A034664.P4954758042313655041

/-!
# A034665: Sum of n-th powers of divisors of 32.

The programs for A034665, the canonical program `A034665.P16990147303693654245` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034665 has offset 0).

The definition of A034665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034665.P16990147303693654245

`1+2^n+4^n+8^n+16^n+32^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034665

/-- `1+2^n+4^n+8^n+16^n+32^n` -/
def P16990147303693654245.Spec : Prop :=
  ∀ n, (P16990147303693654245.a n : ℤ) = A034665 n

theorem P16990147303693654245.correct : P16990147303693654245.Spec := by
  intro n
  simp only [A034665]

end A034665

/-! ## A034665.P18380040932038289156

`∑{d}[-a(n-1), #^n]*A000051(3*n)` with `a(0)=4`
-/

namespace A034665.P18380040932038289156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ) * A000051 (3 * n)

end

end A034665.P18380040932038289156

namespace A034665

/-- `∑{d}[-a(n-1), #^n]*A000051(3*n)` -/
def P18380040932038289156.Spec : Prop :=
  ∀ n, P18380040932038289156.a n = A034665 n

end A034665

/-! ## A034665.P16843546902591339697

`A001576(n)*A062395(n)`
-/

namespace A034665.P16843546902591339697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A062395 n

end

end A034665.P16843546902591339697

namespace A034665

/-- `A001576(n)*A062395(n)` -/
def P16843546902591339697.Spec : Prop :=
  ∀ n, P16843546902591339697.a n = A034665 n

end A034665

/-! ## A034665.P15311781778003264430

`(A001018(n)+1)*A001576(n)`
-/

namespace A034665.P15311781778003264430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n + 1) * A001576 n

end

end A034665.P15311781778003264430

namespace A034665

/-- `(A001018(n)+1)*A001576(n)` -/
def P15311781778003264430.Spec : Prop :=
  ∀ n, P15311781778003264430.a n = A034665 n

end A034665

/-! ## A034665.P4529789775169312866

`(A024088(n)+2)*A001576(n)`
-/

namespace A034665.P4529789775169312866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024088 n + 2) * A001576 n

end

end A034665.P4529789775169312866

namespace A034665

/-- `(A024088(n)+2)*A001576(n)` -/
def P4529789775169312866.Spec : Prop :=
  ∀ n, P4529789775169312866.a n = A034665 n

end A034665

/-! ## A034665.P7101949368631885894

`A000051(n)*A001576(2*n)`
-/

namespace A034665.P7101949368631885894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A001576 (2 * n)

end

end A034665.P7101949368631885894

namespace A034665

/-- `A000051(n)*A001576(2*n)` -/
def P7101949368631885894.Spec : Prop :=
  ∀ n, P7101949368631885894.a n = A034665 n

end A034665

/-! ## A034665.P2459080572664665547

`(A011782(n+1)+1)*A001576(2*n)`
-/

namespace A034665.P2459080572664665547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + 1) * A001576 (2 * n)

end

end A034665.P2459080572664665547

namespace A034665

/-- `(A011782(n+1)+1)*A001576(2*n)` -/
def P2459080572664665547.Spec : Prop :=
  ∀ n, P2459080572664665547.a n = A034665 n

end A034665

/-! ## A034665.P1762179510375650899

`(A131577(n+1)+1)*A001576(2*n)`
-/

namespace A034665.P1762179510375650899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) + 1) * A001576 (2 * n)

end

end A034665.P1762179510375650899

namespace A034665

/-- `(A131577(n+1)+1)*A001576(2*n)` -/
def P1762179510375650899.Spec : Prop :=
  ∀ n, P1762179510375650899.a n = A034665 n

end A034665

/-! ## A034665.P597297409572309472

`(A052539(n)+A000079(n))*A062395(n)`
-/

namespace A034665.P597297409572309472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052539 n + A000079 n) * A062395 n

end

end A034665.P597297409572309472

namespace A034665

/-- `(A052539(n)+A000079(n))*A062395(n)` -/
def P597297409572309472.Spec : Prop :=
  ∀ n, P597297409572309472.a n = A034665 n

end A034665

/-!
# A034666: Sum of n-th powers of divisors of 36.

The programs for A034666, the canonical program `A034666.P15454771573831163023` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034666 has offset 0).

The definition of A034666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034666.P15454771573831163023

`(1+2^n+4^n)*(1+3^n+9^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034666

/-- `(1+2^n+4^n)*(1+3^n+9^n)` -/
def P15454771573831163023.Spec : Prop :=
  ∀ n, (P15454771573831163023.a n : ℤ) = A034666 n

theorem P15454771573831163023.correct : P15454771573831163023.Spec := by
  intro n
  simp only [A034666]

end A034666

/-! ## A034666.P6935534652972769065

`floor((A085601(n)+1)/2*(A074610(n)+1))`
-/

namespace A034666.P6935534652972769065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085601 n + 1 : ℚ) / 2 * (A074610 n + 1 : ℚ)⌋

end

end A034666.P6935534652972769065

namespace A034666

/-- `floor((A085601(n)+1)/2*(A074610(n)+1))` -/
def P6935534652972769065.Spec : Prop :=
  ∀ n, P6935534652972769065.a n = A034666 n

end A034666

/-! ## A034666.P13095643592526791034

`floor((A085601(n)+1)/2*(A155607(n)+2))`
-/

namespace A034666.P13095643592526791034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085601 n + 1 : ℚ) / 2 * (A155607 n + 2 : ℚ)⌋

end

end A034666.P13095643592526791034

namespace A034666

/-- `floor((A085601(n)+1)/2*(A155607(n)+2))` -/
def P13095643592526791034.Spec : Prop :=
  ∀ n, P13095643592526791034.a n = A034666 n

end A034666

/-! ## A034666.P64578278239065625

`floor((A343175(n+1)+1)/2*(A074610(n)+1))`
-/

namespace A034666.P64578278239065625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343175 (n + 1) + 1 : ℚ) / 2 * (A074610 n + 1 : ℚ)⌋

end

end A034666.P64578278239065625

namespace A034666

/-- `floor((A343175(n+1)+1)/2*(A074610(n)+1))` -/
def P64578278239065625.Spec : Prop :=
  ∀ n, P64578278239065625.a n = A034666 n

end A034666

/-! ## A034666.P8984494115308275918

`floor((A343175(n+1)+1)/2*(A155607(n)+2))`
-/

namespace A034666.P8984494115308275918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343175 (n + 1) + 1 : ℚ) / 2 * (A155607 n + 2 : ℚ)⌋

end

end A034666.P8984494115308275918

namespace A034666

/-- `floor((A343175(n+1)+1)/2*(A155607(n)+2))` -/
def P8984494115308275918.Spec : Prop :=
  ∀ n, P8984494115308275918.a n = A034666 n

end A034666

/-! ## A034666.P4880605431696654968

`floor((A343175(n+1)+1)/2*or(1, A032124(2*n+1)))`
-/

namespace A034666.P4880605431696654968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343175 (n + 1) + 1 : ℚ) / 2 * (Int.lor 1 (A032124 (2 * n + 1)) : ℚ)⌋

end

end A034666.P4880605431696654968

namespace A034666

/-- `floor((A343175(n+1)+1)/2*or(1, A032124(2*n+1)))` -/
def P4880605431696654968.Spec : Prop :=
  ∀ n, P4880605431696654968.a n = A034666 n

end A034666

/-! ## A034666.P1742907937880767859

`A034513(n)+A000079(n)*A034661(n)`
-/

namespace A034666.P1742907937880767859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034513 n + A000079 n * A034661 n

end

end A034666.P1742907937880767859

namespace A034666

/-- `A034513(n)+A000079(n)*A034661(n)` -/
def P1742907937880767859.Spec : Prop :=
  ∀ n, P1742907937880767859.a n = A034666 n

end A034666

/-!
# A034667: Sum of n-th powers of divisors of 40.

The programs for A034667, the canonical program `A034667.P13846003350252915052` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034667 has offset 0).

The definition of A034667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034667.P13846003350252915052

`1+2^n+4^n+5^n+8^n+10^n+20^n+40^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034667

/-- `1+2^n+4^n+5^n+8^n+10^n+20^n+40^n` -/
def P13846003350252915052.Spec : Prop :=
  ∀ n, (P13846003350252915052.a n : ℤ) = A034667 n

theorem P13846003350252915052.correct : P13846003350252915052.Spec := by
  intro n
  simp only [A034667]

end A034667

/-! ## A034667.P4925678909196177817

`∑{d}[-a(n-1), #^n]` with `a(0)=40`
-/

namespace A034667.P4925678909196177817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [40] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034667.P4925678909196177817

namespace A034667

/-- `∑{d}[-a(n-1), #^n]` -/
def P4925678909196177817.Spec : Prop :=
  ∀ n, (P4925678909196177817.a n : ℤ) = A034667 n

end A034667

/-! ## A034667.P1050862902081179878

`(A074603(n)+A052539(n))*A034474(n)`
-/

namespace A034667.P1050862902081179878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074603 n + A052539 n) * A034474 n

end

end A034667.P1050862902081179878

namespace A034667

/-- `(A074603(n)+A052539(n))*A034474(n)` -/
def P1050862902081179878.Spec : Prop :=
  ∀ n, P1050862902081179878.a n = A034667 n

end A034667

/-! ## A034667.P3045083363919466071

`A034673(n)/(3^n+1)`
-/

namespace A034667.P3045083363919466071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034673 n : ℚ) / (3 ^ n + 1 : ℚ)

end

end A034667.P3045083363919466071

namespace A034667

/-- `A034673(n)/(3^n+1)` -/
def P3045083363919466071.Spec : Prop :=
  ∀ n, P3045083363919466071.a n = (A034667 n : ℚ)

end A034667

/-! ## A034667.P10379259851461136797

`floor(A034673(n)/A034472(n))`
-/

namespace A034667.P10379259851461136797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034673 n : ℚ) / (A034472 n : ℚ)⌋

end

end A034667.P10379259851461136797

namespace A034667

/-- `floor(A034673(n)/A034472(n))` -/
def P10379259851461136797.Spec : Prop :=
  ∀ n, P10379259851461136797.a n = A034667 n

end A034667

/-!
# A034668: Sum of n-th powers of divisors of 48.

The programs for A034668, there is no canonical definition to state claims against.
-/

/-! ## A034668.P3560974764952584880

`(3^n+1)*A020514(n)`
-/

namespace A034668.P3560974764952584880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℤ) * A020514 n

end

end A034668.P3560974764952584880

/-! ## A034668.P4152828665889371693

`A020514(n)*A034472(n)`
-/

namespace A034668.P4152828665889371693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020514 n * A034472 n

end

end A034668.P4152828665889371693

/-! ## A034668.P2834502311014550515

`(A034496(n)+(4^n)²)*A034472(n)`
-/

namespace A034668.P2834502311014550515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034496 n + ((4 ^ n) ^ 2 : ℤ)) * A034472 n

end

end A034668.P2834502311014550515

/-! ## A034668.P17336527942024052555

`A020514(n)/A000051(n)*A034488(n)`
-/

namespace A034668.P17336527942024052555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020514 n : ℚ) / (A000051 n : ℚ) * (A034488 n : ℚ)

end

end A034668.P17336527942024052555

/-! ## A034668.P9149064367681611716

`A020514(n)/A034517(n)*A241032(n)`
-/

namespace A034668.P9149064367681611716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020514 n : ℚ) / (A034517 n : ℚ) * (A241032 n : ℚ)

end

end A034668.P9149064367681611716

/-!
# A034669: Sum of n-th powers of divisors of 56.

The programs for A034669, there is no canonical definition to state claims against.
-/

/-! ## A034669.P6235904083193122648

`∑{d}[-a(n-1), #^n]` with `a(0)=56`
-/

namespace A034669.P6235904083193122648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [56] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034669.P6235904083193122648

/-! ## A034669.P15372983678063078793

`(7^n+1)*(2^n+1)*(4^n+1)`
-/

namespace A034669.P15372983678063078793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 ^ n + 1) * ((2 ^ n + 1) * (4 ^ n + 1))

end

end A034669.P15372983678063078793

/-! ## A034669.P12962679446870263042

`A141013(2*n+1)*A141013(n+1)/A034491(2*n)`
-/

namespace A034669.P12962679446870263042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141013 (2 * n + 1) * A141013 (n + 1) : ℚ) / (A034491 (2 * n) : ℚ)

end

end A034669.P12962679446870263042

/-!
# A034671: Sum of n-th powers of divisors of 72.

The programs for A034671, there is no canonical definition to state claims against.
-/

/-! ## A034671.P11680978583188749281

`∑{d}[-a(n-1), #^n]` with `a(0)=72`
-/

namespace A034671.P11680978583188749281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [72] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034671.P11680978583188749281

/-! ## A034671.P11245573121886605071

`(3^n+9^n+1)*(2^n+1)*(4^n+1)`
-/

namespace A034671.P11245573121886605071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ n + (9 ^ n + 1)) * ((2 ^ n + 1) * (4 ^ n + 1))

end

end A034671.P11245573121886605071

/-! ## A034671.P7183770896168642160

`(A034675(n)-A034513(n))/A000079(n)`
-/

namespace A034671.P7183770896168642160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034675 n - A034513 n : ℚ) / (A000079 n : ℚ)

end

end A034671.P7183770896168642160

/-! ## A034671.P7250664214960050675

`((3^n+9^n+1)*A020514(n)-A034513(n))/A000079(n)`
-/

namespace A034671.P7250664214960050675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 9 ^ n + 1 : ℤ) * A020514 n - A034513 n : ℚ) / (A000079 n : ℚ)

end

end A034671.P7250664214960050675

/-! ## A034671.P2482973329167887741

`(A020514(n)*A034513(n)-A034513(n))/A000079(n)`
-/

namespace A034671.P2482973329167887741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020514 n * A034513 n - A034513 n : ℚ) / (A000079 n : ℚ)

end

end A034671.P2482973329167887741

/-!
# A034672: Sum of n-th powers of divisors of 96.

The programs for A034672, there is no canonical definition to state claims against.
-/

/-! ## A034672.P4717351846176358137

`(3^n+1)*A034665(n)`
-/

namespace A034672.P4717351846176358137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℤ) * A034665 n

end

end A034672.P4717351846176358137

/-! ## A034672.P5035457674377919001

`A001576(2*n)*A034488(n)`
-/

namespace A034672.P5035457674377919001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 (2 * n) * A034488 n

end

end A034672.P5035457674377919001

/-! ## A034672.P2707650117538685026

`A001576(n)*A062395(n)*∑{d}[-a(n-1), #^n]` with `a(0)=3`
-/

namespace A034672.P2707650117538685026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A062395 n * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ)

end

end A034672.P2707650117538685026

/-! ## A034672.P13308261888479008173

`A034665(n)/A034517(n)*A241032(n)`
-/

namespace A034672.P13308261888479008173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034665 n : ℚ) / (A034517 n : ℚ) * (A241032 n : ℚ)

end

end A034672.P13308261888479008173

/-! ## A034672.P7480096603837858294

`A034665(n)/A034667(n)*A034673(n)`
-/

namespace A034672.P7480096603837858294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034665 n : ℚ) / (A034667 n : ℚ) * (A034673 n : ℚ)

end

end A034672.P7480096603837858294

/-!
# A034673: Sum of n-th powers of divisors of 120.

The programs for A034673, there is no canonical definition to state claims against.
-/

/-! ## A034673.P15368660211049094773

`(3^n+1)*A034667(n)`
-/

namespace A034673.P15368660211049094773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℤ) * A034667 n

end

end A034673.P15368660211049094773

/-! ## A034673.P17820026924753328135

`(4^n+1)*A241032(n)`
-/

namespace A034673.P17820026924753328135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 1 : ℤ) * A241032 n

end

end A034673.P17820026924753328135

/-! ## A034673.P13065526413682168911

`∑{d}[-a(n-1), #^n]*A034474(n)` with `a(0)=24`
-/

namespace A034673.P13065526413682168911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ) * A034474 n

end

end A034673.P13065526413682168911

/-! ## A034673.P12291463993765760461

`A034474(n)*A034664(n)`
-/

namespace A034673.P12291463993765760461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n * A034664 n

end

end A034673.P12291463993765760461

/-! ## A034673.P12660966806812400720

`A034496(n)*A141014(n+1)`
-/

namespace A034673.P12660966806812400720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034496 n * A141014 (n + 1)

end

end A034673.P12660966806812400720

/-!
# A034674: Sum of n-th powers of divisors of 128.

The programs for A034674, there is no canonical definition to state claims against.
-/

/-! ## A034674.P12977679800033077198

`1+2^n+4^n+8^n+16^n+32^n+64^n+128^n`
-/

namespace A034674.P12977679800033077198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 4 ^ n + 8 ^ n + 16 ^ n + 32 ^ n + 64 ^ n + 128 ^ n

end

end A034674.P12977679800033077198

/-! ## A034674.P9877720257725923621

`((4^n)²+1)*A034496(n)`
-/

namespace A034674.P9877720257725923621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n) ^ 2 + 1 : ℤ) * A034496 n

end

end A034674.P9877720257725923621

/-! ## A034674.P2010362981971880302

`A034496(n)*A052539(2*n)`
-/

namespace A034674.P2010362981971880302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034496 n * A052539 (2 * n)

end

end A034674.P2010362981971880302

/-! ## A034674.P5735842692979635332

`A053717(2^n)`
-/

namespace A034674.P5735842692979635332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 (2 ^ n)

end

end A034674.P5735842692979635332

/-! ## A034674.P99962133360871242

`record[A053717(A006519(n+1))]`
-/

namespace A034674.P99962133360871242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034674.P99962133360871242

/-!
# A034675: Sum of n-th powers of divisors of 144.

The programs for A034675, there is no canonical definition to state claims against.
-/

/-! ## A034675.P13266054233044442706

`(3^n+9^n+1)*A020514(n)`
-/

namespace A034675.P13266054233044442706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 9 ^ n + 1 : ℤ) * A020514 n

end

end A034675.P13266054233044442706

/-! ## A034675.P16272381226435938038

`∑{d}[-a(n-1), #^n]*A034513(n)` with `a(0)=16`
-/

namespace A034675.P16272381226435938038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ) * A034513 n

end

end A034675.P16272381226435938038

/-! ## A034675.P11140432358921630125

`(A074610(n)+1)*∑{d}[-a(n-1), #^n]` with `a(0)=16`
-/

namespace A034675.P11140432358921630125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + 1) * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ)

end

end A034675.P11140432358921630125

/-! ## A034675.P1088912590283652175

`ceil(A169724(n+1)/4)*∑{d}[-a(n-1), #^n]` with `a(0)=16`
-/

namespace A034675.P1088912590283652175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169724 (n + 1) : ℚ) / 4⌉ * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ)

end

end A034675.P1088912590283652175

/-! ## A034675.P7835937509476929189

`A020514(n)*A034513(n)`
-/

namespace A034675.P7835937509476929189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020514 n * A034513 n

end

end A034675.P7835937509476929189

/-!
# A034676: Sum of squares of unitary divisors of n.

The programs for A034676, the canonical program `A034676.P6152504972780352585` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034676 has offset 1).

The definition of A034676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034676.P6152504972780352585

`∑{d}[n+1, A254520(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034676

/-- `∑{d}[n+1, A254520(#)]` -/
def P6152504972780352585.Spec : Prop :=
  ∀ n, P6152504972780352585.a n = A034676 (n + 1)

theorem P6152504972780352585.correct : P6152504972780352585.Spec := by
  intro n
  simp only [A034676, Nat.add_sub_cancel]

end A034676

/-! ## A034676.P12669661005427428254

`∑{d}[n+1, #*A063659(#)]`
-/

namespace A034676.P12669661005427428254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063659 d

end

end A034676.P12669661005427428254

namespace A034676

/-- `∑{d}[n+1, #*A063659(#)]` -/
def P12669661005427428254.Spec : Prop :=
  ∀ n, P12669661005427428254.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P10101304265841751436

`∑{d}[n+1, A000082(#)*A023900((n+1)/#)]`
-/

namespace A034676.P10101304265841751436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P10101304265841751436

namespace A034676

/-- `∑{d}[n+1, A000082(#)*A023900((n+1)/#)]` -/
def P10101304265841751436.Spec : Prop :=
  ∀ n, P10101304265841751436.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P2181531110375534228

`∑{d}[n+1, A002618(#)*A048250((n+1)/#)]`
-/

namespace A034676.P2181531110375534228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P2181531110375534228

namespace A034676

/-- `∑{d}[n+1, A002618(#)*A048250((n+1)/#)]` -/
def P2181531110375534228.Spec : Prop :=
  ∀ n, P2181531110375534228.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P15706142384809707219

`∑{d}[n+1, A055615(#)*A065764((n+1)/#)]`
-/

namespace A034676.P15706142384809707219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P15706142384809707219

namespace A034676

/-- `∑{d}[n+1, A055615(#)*A065764((n+1)/#)]` -/
def P15706142384809707219.Spec : Prop :=
  ∀ n, P15706142384809707219.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P5067190920482205426

`∑{d}[n+1, A130054(#)*A140697((n+1)/#)]`
-/

namespace A034676.P5067190920482205426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P5067190920482205426

namespace A034676

/-- `∑{d}[n+1, A130054(#)*A140697((n+1)/#)]` -/
def P5067190920482205426.Spec : Prop :=
  ∀ n, P5067190920482205426.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P1244967793004387045

`∑{d}[n+1, A063445(#)*A319132((n+1)/#)]`
-/

namespace A034676.P1244967793004387045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P1244967793004387045

namespace A034676

/-- `∑{d}[n+1, A063445(#)*A319132((n+1)/#)]` -/
def P1244967793004387045.Spec : Prop :=
  ∀ n, P1244967793004387045.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P15162278893282804183

`∑{d}[n+1, A065018(#)*A327960((n+1)/#)]`
-/

namespace A034676.P15162278893282804183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065018 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P15162278893282804183

namespace A034676

/-- `∑{d}[n+1, A065018(#)*A327960((n+1)/#)]` -/
def P15162278893282804183.Spec : Prop :=
  ∀ n, P15162278893282804183.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P12504362368796966786

`∑{d}[n+1, A072861(#)*A328722((n+1)/#)]`
-/

namespace A034676.P12504362368796966786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P12504362368796966786

namespace A034676

/-- `∑{d}[n+1, A072861(#)*A328722((n+1)/#)]` -/
def P12504362368796966786.Spec : Prop :=
  ∀ n, P12504362368796966786.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P7998267696118508214

`∑{d}[n+1, A328641(#)*A390262((n+1)/#)]`
-/

namespace A034676.P7998267696118508214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034676.P7998267696118508214

namespace A034676

/-- `∑{d}[n+1, A328641(#)*A390262((n+1)/#)]` -/
def P7998267696118508214.Spec : Prop :=
  ∀ n, P7998267696118508214.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P10486162523097553929

`A034460((n+1)²)+(n+1)²`
-/

namespace A034676.P10486162523097553929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A034676.P10486162523097553929

namespace A034676

/-- `A034460((n+1)²)+(n+1)²` -/
def P10486162523097553929.Spec : Prop :=
  ∀ n, P10486162523097553929.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P16485287399132188544

`A365479(A102631(n+1))`
-/

namespace A034676.P16485287399132188544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A102631 (n + 1)).toNat

end

end A034676.P16485287399132188544

namespace A034676

/-- `A365479(A102631(n+1))` -/
def P16485287399132188544.Spec : Prop :=
  ∀ n, P16485287399132188544.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P10017038269477823944

`A365479(A342768(n+1))`
-/

namespace A034676.P10017038269477823944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A342768 (n + 1)).toNat

end

end A034676.P10017038269477823944

namespace A034676

/-- `A365479(A342768(n+1))` -/
def P10017038269477823944.Spec : Prop :=
  ∀ n, P10017038269477823944.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P7732699914374097182

`A365479((n+1)*A008833(n+1))`
-/

namespace A034676.P7732699914374097182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A034676.P7732699914374097182

namespace A034676

/-- `A365479((n+1)*A008833(n+1))` -/
def P7732699914374097182.Spec : Prop :=
  ∀ n, P7732699914374097182.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P385741743691263278

`A365479(A140651(n+1))`
-/

namespace A034676.P385741743691263278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A140651 (n + 1)).toNat

end

end A034676.P385741743691263278

namespace A034676

/-- `A365479(A140651(n+1))` -/
def P385741743691263278.Spec : Prop :=
  ∀ n, P385741743691263278.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P509911161545652057

`A365479(A170826(n+1))`
-/

namespace A034676.P509911161545652057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A170826 (n + 1)).toNat

end

end A034676.P509911161545652057

namespace A034676

/-- `A365479(A170826(n+1))` -/
def P509911161545652057.Spec : Prop :=
  ∀ n, P509911161545652057.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P12486850024844319133

`A365479(A326578(n+1))`
-/

namespace A034676.P12486850024844319133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A326578 (n + 1)).toNat

end

end A034676.P12486850024844319133

namespace A034676

/-- `A365479(A326578(n+1))` -/
def P12486850024844319133.Spec : Prop :=
  ∀ n, P12486850024844319133.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P15342652958595578836

`A365479(A103390(n+2))`
-/

namespace A034676.P15342652958595578836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A103390 (n + 2)).toNat

end

end A034676.P15342652958595578836

namespace A034676

/-- `A365479(A103390(n+2))` -/
def P15342652958595578836.Spec : Prop :=
  ∀ n, P15342652958595578836.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P8175346029604208252

`A034448((n+1)²)`
-/

namespace A034676.P8175346029604208252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((n + 1) ^ 2)

end

end A034676.P8175346029604208252

namespace A034676

/-- `A034448((n+1)²)` -/
def P8175346029604208252.Spec : Prop :=
  ∀ n, P8175346029604208252.a n = A034676 (n + 1)

end A034676

/-! ## A034676.P14651966657580939430

`A307037((n+1)²)`
-/

namespace A034676.P14651966657580939430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 ((n + 1) ^ 2)

end

end A034676.P14651966657580939430

namespace A034676

/-- `A307037((n+1)²)` -/
def P14651966657580939430.Spec : Prop :=
  ∀ n, P14651966657580939430.a n = A034676 (n + 1)

end A034676

/-!
# A034677: Sum of cubes of unitary divisors of n.

The programs for A034677, the canonical program `A034677.P7109418402625381145` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034677 has offset 1).

The definition of A034677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034677.P7109418402625381145

`∏{p}[n+1, #^3^val(n+1, #)+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034677

/-- `∏{p}[n+1, #^3^val(n+1, #)+1]` -/
def P7109418402625381145.Spec : Prop :=
  ∀ n, (P7109418402625381145.a n : ℤ) = A034677 (n + 1)

theorem P7109418402625381145.correct : P7109418402625381145.Spec := by
  intro n
  simp only [A034677, Nat.add_sub_cancel]

end A034677

/-! ## A034677.P8925388354391572136

`∑{d}[n+1, #*A254926(#*#)]`
-/

namespace A034677.P8925388354391572136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A254926 (d * d)

end

end A034677.P8925388354391572136

namespace A034677

/-- `∑{d}[n+1, #*A254926(#*#)]` -/
def P8925388354391572136.Spec : Prop :=
  ∀ n, P8925388354391572136.a n = A034677 (n + 1)

end A034677

/-! ## A034677.P10172183404758890360

`∑{d}[A064549(n+1), A059376(A003557(#))]`
-/

namespace A034677.P10172183404758890360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 (A003557 d).toNat

end

end A034677.P10172183404758890360

namespace A034677

/-- `∑{d}[A064549(n+1), A059376(A003557(#))]` -/
def P10172183404758890360.Spec : Prop :=
  ∀ n, P10172183404758890360.a n = A034677 (n + 1)

end A034677

/-! ## A034677.P15768806710411330430

`A034460((n+1)^3)+(n+1)^3`
-/

namespace A034677.P15768806710411330430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 ((n + 1) ^ 3) + ((n + 1) ^ 3 : ℤ)

end

end A034677.P15768806710411330430

namespace A034677

/-- `A034460((n+1)^3)+(n+1)^3` -/
def P15768806710411330430.Spec : Prop :=
  ∀ n, P15768806710411330430.a n = A034677 (n + 1)

end A034677

/-! ## A034677.P587413125681012787

`A000203((n+1)^3)-A048146((n+1)^3)`
-/

namespace A034677.P587413125681012787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 3) - A048146 ((n + 1) ^ 3)

end

end A034677.P587413125681012787

namespace A034677

/-- `A000203((n+1)^3)-A048146((n+1)^3)` -/
def P587413125681012787.Spec : Prop :=
  ∀ n, P587413125681012787.a n = A034677 (n + 1)

end A034677

/-!
# A034678: Sum of fourth powers of unitary divisors.

The programs for A034678, the canonical program `A034678.P2173923683494407018` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034678 has offset 1).

The definition of A034678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034678.P2173923683494407018

`∑{d}[n+1, A065827(#)*A334657((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034678

/-- `∑{d}[n+1, A065827(#)*A334657((n+1)/#)]` -/
def P2173923683494407018.Spec : Prop :=
  ∀ n, P2173923683494407018.a n = A034678 (n + 1)

theorem P2173923683494407018.correct : P2173923683494407018.Spec := by
  intro n
  simp only [A034678, Nat.add_sub_cancel]

end A034678

/-! ## A034678.P2057710952050798804

`∑{d}[n+1, A351265(#)*A379833((n+1)/#)]`
-/

namespace A034678.P2057710952050798804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351265 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034678.P2057710952050798804

namespace A034678

/-- `∑{d}[n+1, A351265(#)*A379833((n+1)/#)]` -/
def P2057710952050798804.Spec : Prop :=
  ∀ n, P2057710952050798804.a n = A034678 (n + 1)

end A034678

/-! ## A034678.P9078529440744836960

`A001159(A102631(n+1))/A351307(A102631(n+1))`
-/

namespace A034678.P9078529440744836960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (A102631 (n + 1)).toNat : ℚ) / (A351307 (A102631 (n + 1)).toNat : ℚ)

end

end A034678.P9078529440744836960

namespace A034678

/-- `A001159(A102631(n+1))/A351307(A102631(n+1))` -/
def P9078529440744836960.Spec : Prop :=
  ∀ n, P9078529440744836960.a n = (A034678 (n + 1) : ℚ)

end A034678

/-! ## A034678.P1492196810772440263

`A034676((n+1)²)`
-/

namespace A034678.P1492196810772440263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 ((n + 1) ^ 2)

end

end A034678.P1492196810772440263

namespace A034678

/-- `A034676((n+1)²)` -/
def P1492196810772440263.Spec : Prop :=
  ∀ n, P1492196810772440263.a n = A034678 (n + 1)

end A034678

/-! ## A034678.P5173899071961594879

`∑{d}[(n+1)², A254520(#)]`
-/

namespace A034678.P5173899071961594879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d

end

end A034678.P5173899071961594879

namespace A034678

/-- `∑{d}[(n+1)², A254520(#)]` -/
def P5173899071961594879.Spec : Prop :=
  ∀ n, P5173899071961594879.a n = A034678 (n + 1)

end A034678

/-! ## A034678.P9288400294338386827

`∑{d}[(n+1)², #*A063659(#)]`
-/

namespace A034678.P9288400294338386827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063659 d

end

end A034678.P9288400294338386827

namespace A034678

/-- `∑{d}[(n+1)², #*A063659(#)]` -/
def P9288400294338386827.Spec : Prop :=
  ∀ n, P9288400294338386827.a n = A034678 (n + 1)

end A034678

/-! ## A034678.P17158495255455949897

`A034676(∑[2*n+1])%A017512(n)`
-/

namespace A034678.P17158495255455949897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034676 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017512 n)

end

end A034678.P17158495255455949897

namespace A034678

/-- `A034676(∑[2*n+1])%A017512(n)` -/
def P17158495255455949897.Spec : Prop :=
  ∀ n, P17158495255455949897.a n = A034678 (n + 1)

end A034678

/-! ## A034678.P13318245503947660467

`A264668(n)+A034676((n+1)*(n+1))`
-/

namespace A034678.P13318245503947660467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A034676 ((n + 1) * (n + 1))

end

end A034678.P13318245503947660467

namespace A034678

/-- `A264668(n)+A034676((n+1)*(n+1))` -/
def P13318245503947660467.Spec : Prop :=
  ∀ n, P13318245503947660467.a n = A034678 (n + 1)

end A034678

/-! ## A034678.P10514245517634918598

`A034676(∑[n+1+n])/A007318(and(1, 1-n))`
-/

namespace A034678.P10514245517634918598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A007318 (Int.land 1 (1 - (n : ℤ))).toNat : ℚ)

end

end A034678.P10514245517634918598

namespace A034678

/-- `A034676(∑[n+1+n])/A007318(and(1, 1-n))` -/
def P10514245517634918598.Spec : Prop :=
  ∀ n, P10514245517634918598.a n = (A034678 (n + 1) : ℚ)

end A034678

/-!
# A034679: Sum of fifth powers of unitary divisors.

The programs for A034679, there is no canonical definition to state claims against.
-/

/-! ## A034679.P2177031718023966288

`A034460(A000584(n+1))+A000584(n+1)`
-/

namespace A034679.P2177031718023966288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A000584 (n + 1)).toNat + A000584 (n + 1)

end

end A034679.P2177031718023966288

/-! ## A034679.P5277567213493919214

`A324706((n+1)^5)`
-/

namespace A034679.P5277567213493919214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 ((n + 1) ^ 5)

end

end A034679.P5277567213493919214

/-! ## A034679.P14846690063988774805

`A286880(A167499(n+4))`
-/

namespace A034679.P14846690063988774805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286880 (A167499 (n + 4)).toNat

end

end A034679.P14846690063988774805

/-!
# A034680: Sum of sixth powers of unitary divisors.

The programs for A034680, the canonical program `A034680.P14033426650178901058` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034680 has offset 1).

The definition of A034680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034680.P14033426650178901058

`A034677((n+1)²)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034680

/-- `A034677((n+1)²)` -/
def P14033426650178901058.Spec : Prop :=
  ∀ n, P14033426650178901058.a n = A034680 (n + 1)

theorem P14033426650178901058.correct : P14033426650178901058.Spec := by
  intro n
  simp only [A034680, Nat.add_sub_cancel]

end A034680

/-! ## A034680.P286489667329593919

`∑{d}[n+1, A254521(#²)]`
-/

namespace A034680.P286489667329593919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254521 (d ^ 2)

end

end A034680.P286489667329593919

namespace A034680

/-- `∑{d}[n+1, A254521(#²)]` -/
def P286489667329593919.Spec : Prop :=
  ∀ n, P286489667329593919.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P4162930192950412402

`record[A034677(A020986(n)²)]`
-/

namespace A034680.P4162930192950412402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A020986 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P4162930192950412402

namespace A034680

/-- `record[A034677(A020986(n)²)]` -/
def P4162930192950412402.Spec : Prop :=
  ∀ n, P4162930192950412402.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P15331622149632226922

`record[A034677(A028920(n)²)]`
-/

namespace A034680.P15331622149632226922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A028920 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P15331622149632226922

namespace A034680

/-- `record[A034677(A028920(n)²)]` -/
def P15331622149632226922.Spec : Prop :=
  ∀ n, P15331622149632226922.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P5012433676516575635

`record[A034677(A065648(n)²)]`
-/

namespace A034680.P5012433676516575635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P5012433676516575635

namespace A034680

/-- `record[A034677(A065648(n)²)]` -/
def P5012433676516575635.Spec : Prop :=
  ∀ n, P5012433676516575635.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P3949649226233536902

`record[A034677(A106466(n)²)]`
-/

namespace A034680.P3949649226233536902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P3949649226233536902

namespace A034680

/-- `record[A034677(A106466(n)²)]` -/
def P3949649226233536902.Spec : Prop :=
  ∀ n, P3949649226233536902.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P13253364284006809647

`record[A034677(A117910(n)²)]`
-/

namespace A034680.P13253364284006809647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P13253364284006809647

namespace A034680

/-- `record[A034677(A117910(n)²)]` -/
def P13253364284006809647.Spec : Prop :=
  ∀ n, P13253364284006809647.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P10721531845887608628

`record[A034677(A126759(n)²)]`
-/

namespace A034680.P10721531845887608628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P10721531845887608628

namespace A034680

/-- `record[A034677(A126759(n)²)]` -/
def P10721531845887608628.Spec : Prop :=
  ∀ n, P10721531845887608628.a n = A034680 (n + 1)

end A034680

/-! ## A034680.P15764086670856042213

`record[A034677(A133310(n)²)]`
-/

namespace A034680.P15764086670856042213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034680.P15764086670856042213

namespace A034680

/-- `record[A034677(A133310(n)²)]` -/
def P15764086670856042213.Spec : Prop :=
  ∀ n, P15764086670856042213.a n = A034680 (n + 1)

end A034680

/-!
# A034681: Sum of seventh powers of unitary divisors.

The programs for A034681, there is no canonical definition to state claims against.
-/

/-! ## A034681.P11002220179218048276

`A013955(n+1)-A142150(∑{p}[n+1, ((n+1)/#)^8])`
-/

namespace A034681.P11002220179218048276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (n + 1) - A142150 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 8)).toNat

end

end A034681.P11002220179218048276

/-! ## A034681.P16449134455447435573

`A013955(n+1)-A142150(floor(∑{p}[n+1, ((n+1)/#)²²²]))`
-/

namespace A034681.P16449134455447435573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (n + 1) - A142150 ⌊∑ p ∈ Nat.primeFactors (f1 n), ((((n + 1 : ℚ) / (p : ℚ)) ^ 2) ^ 2) ^ 2⌋.toNat

end

end A034681.P16449134455447435573

/-! ## A034681.P3295821525005577684

`A013955(n+1)-A142150(A351248(n+1))`
-/

namespace A034681.P3295821525005577684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (n + 1) - A142150 (A351248 (n + 1)).toNat

end

end A034681.P3295821525005577684

/-!
# A034682: Sum of eighth powers of unitary divisors.

The programs for A034682, the canonical program `A034682.P3549804314413141181` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034682 has offset 1).

The definition of A034682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034682.P3549804314413141181

`A034678((n+1)²)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034682

/-- `A034678((n+1)²)` -/
def P3549804314413141181.Spec : Prop :=
  ∀ n, P3549804314413141181.a n = A034682 (n + 1)

theorem P3549804314413141181.correct : P3549804314413141181.Spec := by
  intro n
  simp only [A034682, Nat.add_sub_cancel]

end A034682

/-! ## A034682.P3119331808483505484

`xor(1, xor(1, A034678((n+1)*(n+1))))`
-/

namespace A034682.P3119331808483505484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A034678 ((n + 1) * (n + 1))))

end

end A034682.P3119331808483505484

namespace A034682

/-- `xor(1, xor(1, A034678((n+1)*(n+1))))` -/
def P3119331808483505484.Spec : Prop :=
  ∀ n, P3119331808483505484.a n = A034682 (n + 1)

end A034682

/-! ## A034682.P13314156587857148808

`A000035(A006257(n+1))*A034678((n+1)*(n+1))`
-/

namespace A034682.P13314156587857148808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006257 (n + 1)).toNat * A034678 ((n + 1) * (n + 1))

end

end A034682.P13314156587857148808

namespace A034682

/-- `A000035(A006257(n+1))*A034678((n+1)*(n+1))` -/
def P13314156587857148808.Spec : Prop :=
  ∀ n, P13314156587857148808.a n = A034682 (n + 1)

end A034682

/-! ## A034682.P1216319225263899317

`A001222(A065091(n+1))*A034678((n+1)*(n+1))`
-/

namespace A034682.P1216319225263899317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A034678 ((n + 1) * (n + 1))

end

end A034682.P1216319225263899317

namespace A034682

/-- `A001222(A065091(n+1))*A034678((n+1)*(n+1))` -/
def P1216319225263899317.Spec : Prop :=
  ∀ n, P1216319225263899317.a n = A034682 (n + 1)

end A034682

/-! ## A034682.P18053204895448661972

`(A034678(A000290(n+1))+A034678(A000290(n+1)))/2`
-/

namespace A034682.P18053204895448661972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034678 (A000290 (n + 1)).toNat + A034678 (A000290 (n + 1)).toNat : ℚ) / 2

end

end A034682.P18053204895448661972

namespace A034682

/-- `(A034678(A000290(n+1))+A034678(A000290(n+1)))/2` -/
def P18053204895448661972.Spec : Prop :=
  ∀ n, P18053204895448661972.a n = (A034682 (n + 1) : ℚ)

end A034682

/-!
# A034683: Unitary abundant numbers: numbers k such that usigma(k) > 2*k.

The programs for A034683, there is no canonical definition to state claims against.
-/

/-! ## A034683.P14718485859448044558

`∪[A087248(n+1), A292705(n+1)]`
-/

namespace A034683.P14718485859448044558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034683.P14718485859448044558

/-! ## A034683.P5986683198590358823

`lt[n+1, A034460(n+1)]+1`
-/

namespace A034683.P5986683198590358823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034683.P5986683198590358823

/-! ## A034683.P15160493751116250937

`lt[n+1, A063919(n+1)]+1`
-/

namespace A034683.P15160493751116250937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034683.P15160493751116250937

/-! ## A034683.P2095471657412607010

`lt[0, A129468(n+1)]+1`
-/

namespace A034683.P2095471657412607010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034683.P2095471657412607010

/-! ## A034683.P15157244575812295006

`lt[2*(n+1), A034448(n+1)]+1`
-/

namespace A034683.P15157244575812295006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034683.P15157244575812295006

/-! ## A034683.P9964413512674060968

`lt[2*(n+1), A345451(n+1)]+1`
-/

namespace A034683.P9964413512674060968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A034683.P9964413512674060968

/-! ## A034683.P6012810483405452947

`lt[0, A129468(A028310(n))]`
-/

namespace A034683.P6012810483405452947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034683.P6012810483405452947

/-! ## A034683.P4140133310812966646

`A153152(lt[n+1, A034460(n+1)])`
-/

namespace A034683.P4140133310812966646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034683.P4140133310812966646

/-! ## A034683.P13338544258061289069

`A181569(lt[n+1, A034460(n+1)])`
-/

namespace A034683.P13338544258061289069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034683.P13338544258061289069

/-! ## A034683.P9045952120979522334

`lt[A005408(n), A034448(A028310(n))]`
-/

namespace A034683.P9045952120979522334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P9045952120979522334

/-! ## A034683.P7713157764297345009

`lt[A004273(n), A345451(A028310(n))]`
-/

namespace A034683.P7713157764297345009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P7713157764297345009

/-! ## A034683.P12574252801752911092

`lt[A103517(n), A345451(A028310(n))]`
-/

namespace A034683.P12574252801752911092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P12574252801752911092

/-! ## A034683.P11391483720201742035

`lt[A005843(n+1), A034448(A028310(n))]`
-/

namespace A034683.P11391483720201742035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P11391483720201742035

/-! ## A034683.P11552224915653643211

`lt[A028310(n+1), A034460(A028310(n))]`
-/

namespace A034683.P11552224915653643211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P11552224915653643211

/-! ## A034683.P6509335927521599855

`lt[A000027(n+1), A063919(A028310(n))]`
-/

namespace A034683.P6509335927521599855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P6509335927521599855

/-! ## A034683.P116969584598939719

`lt[A254667(n+1), A063919(A028310(n))]`
-/

namespace A034683.P116969584598939719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P116969584598939719

/-! ## A034683.P15979764435767307437

`lt[1, A063919(A028310(n))-A254667(n)]`
-/

namespace A034683.P15979764435767307437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A028310 n).toNat - A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034683.P15979764435767307437

/-! ## A034683.P6811777002985423004

`lt[A004277(n), A034448(A004277(n)-n)]`
-/

namespace A034683.P6811777002985423004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P6811777002985423004

/-! ## A034683.P2949964485424939506

`lt[A028310(2*n), A034448(A028310(n))]`
-/

namespace A034683.P2949964485424939506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P2949964485424939506

/-! ## A034683.P16376690146755217432

`lt[A028310(2*n+1), A345451(A028310(n))]`
-/

namespace A034683.P16376690146755217432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034683.P16376690146755217432

/-!
# A034684: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = min { p_i^e_i }.

The programs for A034684, there is no canonical definition to state claims against.
-/

/-! ## A034684.P5353073677515920828

`(n+1)/A052125(n+1)`
-/

namespace A034684.P5353073677515920828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052125 (n + 1) : ℚ)

end

end A034684.P5353073677515920828

/-! ## A034684.P6600131022347551688

`gcd(n+1, A139084(n+1))`
-/

namespace A034684.P6600131022347551688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A139084 (n + 1))

end

end A034684.P6600131022347551688

/-! ## A034684.P8085723746393921877

`A139084(n)/a(n-1)` with `a(0)=1`
-/

namespace A034684.P8085723746393921877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139084 n : ℚ) / a (n - 1)

end

end A034684.P8085723746393921877

/-! ## A034684.P6092105057565515436

`A034699(n+1)-A100574(n+1)`
-/

namespace A034684.P6092105057565515436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A100574 (n + 1)

end

end A034684.P6092105057565515436

/-! ## A034684.P14878875986447246099

`A304233(n+1)/A034699(n+1)`
-/

namespace A034684.P14878875986447246099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) / (A034699 (n + 1) : ℚ)

end

end A034684.P14878875986447246099

/-! ## A034684.P2255476081320461651

`A210208(A210241(n+1))-A100574(n+1)`
-/

namespace A034684.P2255476081320461651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 1)).toNat - A100574 (n + 1)

end

end A034684.P2255476081320461651

/-! ## A034684.P10850850678900998479

`A304233(n+1)/A210208(A210241(n+1))`
-/

namespace A034684.P10850850678900998479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) / (A210208 (A210241 (n + 1)).toNat : ℚ)

end

end A034684.P10850850678900998479

/-! ## A034684.P11191879836761934848

`A077610(eq[1, A077610(n+1)]+2)`
-/

namespace A034684.P11191879836761934848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A034684.P11191879836761934848

/-! ## A034684.P13191628333658268971

`A077610(record[n+1-A077610(n+1)]+2)`
-/

namespace A034684.P13191628333658268971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A077610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A034684.P13191628333658268971

/-! ## A034684.P14912172985811300440

`A304233(n+1)/A330043(n+1)*A330043(n)`
-/

namespace A034684.P14912172985811300440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) / (A330043 (n + 1) : ℚ) * (A330043 n : ℚ)

end

end A034684.P14912172985811300440

/-!
# A034685: Least possible integer k/(product of digits k) for k with n digits.

The programs for A034685, there is no canonical definition to state claims against.
-/

/-! ## A034685.P12849145579433764466

`A034686(n+1)/A034725(n+1)`
-/

namespace A034685.P12849145579433764466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034686 (n + 1) : ℚ) / (A034725 (n + 1) : ℚ)

end

end A034685.P12849145579433764466

/-! ## A034685.P16862359923541360888

`A034686(ϕ²-(ϕ-n))/∏{digits}[A034686(n+1), #]`
-/

namespace A034685.P16862359923541360888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034686 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034686 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℚ)

end

end A034685.P16862359923541360888

/-!
# A034686: a(n) = k, where k/(product of digits of k) is least possible integer for k with n digits.

The programs for A034686, there is no canonical definition to state claims against.
-/

/-! ## A034686.P11572055521437913180

`A034685(n+1)*A034725(n+1)`
-/

namespace A034686.P11572055521437913180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034685 (n + 1) * A034725 (n + 1)

end

end A034686.P11572055521437913180

/-!
# A034687: Related to quintic factorial numbers A008548.

The programs for A034687, there is no canonical definition to state claims against.
-/

/-! ## A034687.P12807677231054019394

`(5-4/(n+1))*5*a(n-1)` with `a(0)=1`
-/

namespace A034687.P12807677231054019394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 - 4 / (n + 1 : ℚ)) * (5 * a (n - 1))

end

end A034687.P12807677231054019394

/-! ## A034687.P11638893576057316749

`A049375(∑[n]+1)`
-/

namespace A034687.P11638893576057316749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049375 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034687.P11638893576057316749

/-! ## A034687.P11012850577678587083

`record[A049375(n+1)]`
-/

namespace A034687.P11012850577678587083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034687.P11012850577678587083

/-! ## A034687.P16261679445211399274

`A034688(n+1)/5`
-/

namespace A034687.P16261679445211399274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034688 (n + 1) : ℚ) / 5

end

end A034687.P16261679445211399274

/-! ## A034687.P10641153582668246163

`A049394(n)/(n+1)`
-/

namespace A034687.P10641153582668246163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049394 n : ℚ) / (n + 1 : ℚ)

end

end A034687.P10641153582668246163

/-! ## A034687.P17998015563257769960

`A248326(∑[n+1])/5`
-/

namespace A034687.P17998015563257769960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248326 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A034687.P17998015563257769960

/-! ## A034687.P2710694784823713951

`A008548(n+1)/A000142(n+1)*A000351(n)`
-/

namespace A034687.P2710694784823713951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008548 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A000351 n : ℚ)

end

end A034687.P2710694784823713951

/-! ## A034687.P13198620555018895557

`A008548(n+1)/A008546(n)*A025750(n+1)`
-/

namespace A034687.P13198620555018895557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008548 (n + 1) : ℚ) / (A008546 n : ℚ) * (A025750 (n + 1) : ℚ)

end

end A034687.P13198620555018895557

/-! ## A034687.P487947097875064187

`5*A000351(n)²/A052562(n+1)*A008548(n+1)`
-/

namespace A034687.P487947097875064187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A000351 n ^ 2 : ℚ) / (A052562 (n + 1) : ℚ) * (A008548 (n + 1) : ℚ)

end

end A034687.P487947097875064187

/-! ## A034687.P17865813767114271256

`A000351(2*n+1)/A052562(n+1)*A008548(n+1)`
-/

namespace A034687.P17865813767114271256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 (2 * n + 1) : ℚ) / (A052562 (n + 1) : ℚ) * (A008548 (n + 1) : ℚ)

end

end A034687.P17865813767114271256

/-!
# A034688: Expansion of (1-25*x)^(-1/5), related to quintic factorial numbers A008548.

The programs for A034688, the canonical program `A034688.P6817771666164140094` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034688 has offset 0).

The definition of A034688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034688.P6817771666164140094

`5^n/n!*A008548(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034688

/-- `5^n/n!*A008548(n)` -/
def P6817771666164140094.Spec : Prop :=
  ∀ n, P6817771666164140094.a n = (A034688 n : ℚ)

end A034688

/-! ## A034688.P6476129619856211367

`(5-4/n)*5*a(n-1)` with `a(0)=1`
-/

namespace A034688.P6476129619856211367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 - 4 / (n : ℚ)) * (5 * a (n - 1))

end

end A034688.P6476129619856211367

namespace A034688

/-- `(5-4/n)*5*a(n-1)` -/
def P6476129619856211367.Spec : Prop :=
  ∀ n, P6476129619856211367.a n = (A034688 n : ℚ)

end A034688

/-! ## A034688.P1965189535373692563

`A248326(∑[n])`
-/

namespace A034688.P1965189535373692563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034688.P1965189535373692563

namespace A034688

/-- `A248326(∑[n])` -/
def P1965189535373692563.Spec : Prop :=
  ∀ n, P1965189535373692563.a n = A034688 n

end A034688

/-! ## A034688.P6418789961801559221

`A049394(n)/A016861(n)`
-/

namespace A034688.P6418789961801559221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049394 n : ℚ) / (A016861 n : ℚ)

end

end A034688.P6418789961801559221

namespace A034688

/-- `A049394(n)/A016861(n)` -/
def P6418789961801559221.Spec : Prop :=
  ∀ n, P6418789961801559221.a n = (A034688 n : ℚ)

end A034688

/-! ## A034688.P7584033867446754045

`A000351(n)/A000142(n)*A008548(n)`
-/

namespace A034688.P7584033867446754045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (A000142 n : ℚ) * (A008548 n : ℚ)

end

end A034688.P7584033867446754045

namespace A034688

/-- `A000351(n)/A000142(n)*A008548(n)` -/
def P7584033867446754045.Spec : Prop :=
  ∀ n, P7584033867446754045.a n = (A034688 n : ℚ)

end A034688

/-! ## A034688.P15359395214470944294

`A008548(n)/A008546(n)*A049382(n)`
-/

namespace A034688.P15359395214470944294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008548 n : ℚ) / (A008546 n : ℚ) * (A049382 n : ℚ)

end

end A034688.P15359395214470944294

namespace A034688

/-- `A008548(n)/A008546(n)*A049382(n)` -/
def P15359395214470944294.Spec : Prop :=
  ∀ n, P15359395214470944294.a n = (A034688 n : ℚ)

end A034688

/-! ## A034688.P1574298992024417070

`A000351(n)²/A052562(n)*A008548(n)`
-/

namespace A034688.P1574298992024417070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n ^ 2 : ℚ) / (A052562 n : ℚ) * (A008548 n : ℚ)

end

end A034688.P1574298992024417070

namespace A034688

/-- `A000351(n)²/A052562(n)*A008548(n)` -/
def P1574298992024417070.Spec : Prop :=
  ∀ n, P1574298992024417070.a n = (A034688 n : ℚ)

end A034688

/-!
# A034689: a(n) = n-th sextic factorial number divided by 2.

The programs for A034689, there is no canonical definition to state claims against.
-/

/-! ## A034689.P669300174326387103

`∏[6*n+2]/2`
-/

namespace A034689.P669300174326387103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A034689.P669300174326387103

/-! ## A034689.P14367701651720463200

`∏[a(n-1)+6]` with `a(0)=1, a(1)=8`
-/

namespace A034689.P14367701651720463200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034689.P14367701651720463200

/-! ## A034689.P731677924660815948

`(6*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A034689.P731677924660815948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 2) * a (n - 1)

end

end A034689.P731677924660815948

/-! ## A034689.P1135535162406070841

`∏[xor(1, 6*n)-floor(acot(n))+1]`
-/

namespace A034689.P1135535162406070841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (6 * n) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034689.P1135535162406070841

/-! ## A034689.P2300702037646248961

`record[2*n*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A034689.P2300702037646248961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  2 * n * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034689.P2300702037646248961

/-!
# A034690: Sum of digits of all the divisors of n.

The programs for A034690, the canonical program `A034690.P9760820959884422482` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034690 has offset 1).

The definition of A034690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034690.P9760820959884422482

`∑{d}[n+1, A007953(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034690

/-- `∑{d}[n+1, A007953(#)]` -/
def P9760820959884422482.Spec : Prop :=
  ∀ n, P9760820959884422482.a n = A034690 (n + 1)

theorem P9760820959884422482.correct : P9760820959884422482.Spec := by
  intro n
  simp only [A034690, Nat.add_sub_cancel]

end A034690

/-! ## A034690.P2844928775385130137

`∑{d}[n+1, sqrt(A118881(#))]`
-/

namespace A034690.P2844928775385130137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A118881 d : ℝ)

end

end A034690.P2844928775385130137

namespace A034690

/-- `∑{d}[n+1, sqrt(A118881(#))]` -/
def P2844928775385130137.Spec : Prop :=
  ∀ n, P2844928775385130137.a n = (A034690 (n + 1) : ℝ)

end A034690

/-! ## A034690.P7172237674685171025

`∑{d}[n+1, A062028(#)-#]`
-/

namespace A034690.P7172237674685171025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A062028 d - (d : ℤ))

end

end A034690.P7172237674685171025

namespace A034690

/-- `∑{d}[n+1, A062028(#)-#]` -/
def P7172237674685171025.Spec : Prop :=
  ∀ n, P7172237674685171025.a n = A034690 (n + 1)

end A034690

/-! ## A034690.P13424828075667173009

`∑{d}[n+1, A090431(#)+A007605(#)]`
-/

namespace A034690.P13424828075667173009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A090431 d + A007605 d)

end

end A034690.P13424828075667173009

namespace A034690

/-- `∑{d}[n+1, A090431(#)+A007605(#)]` -/
def P13424828075667173009.Spec : Prop :=
  ∀ n, P13424828075667173009.a n = A034690 (n + 1)

end A034690

/-! ## A034690.P7992967082573089928

`∑{digits}[A243361(n+1), #]`
-/

namespace A034690.P7992967082573089928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034690.P7992967082573089928

namespace A034690

/-- `∑{digits}[A243361(n+1), #]` -/
def P7992967082573089928.Spec : Prop :=
  ∀ n, (P7992967082573089928.a n : ℤ) = A034690 (n + 1)

end A034690

/-! ## A034690.P9335634476164662024

`∑{digits}[A037278(n+1), #]`
-/

namespace A034690.P9335634476164662024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034690.P9335634476164662024

namespace A034690

/-- `∑{digits}[A037278(n+1), #]` -/
def P9335634476164662024.Spec : Prop :=
  ∀ n, (P9335634476164662024.a n : ℤ) = A034690 (n + 1)

end A034690

/-! ## A034690.P16313979197431946111

`∑{digits}[A176558(n+1), #]`
-/

namespace A034690.P16313979197431946111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034690.P16313979197431946111

namespace A034690

/-- `∑{digits}[A176558(n+1), #]` -/
def P16313979197431946111.Spec : Prop :=
  ∀ n, (P16313979197431946111.a n : ℤ) = A034690 (n + 1)

end A034690

/-! ## A034690.P4053400472978622360

`∑{digits}[A243360(n+1), #]`
-/

namespace A034690.P4053400472978622360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034690.P4053400472978622360

namespace A034690

/-- `∑{digits}[A243360(n+1), #]` -/
def P4053400472978622360.Spec : Prop :=
  ∀ n, (P4053400472978622360.a n : ℤ) = A034690 (n + 1)

end A034690

/-! ## A034690.P10865726221692435581

`∑{digits}[A390599(n+1), #]`
-/

namespace A034690.P10865726221692435581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034690.P10865726221692435581

namespace A034690

/-- `∑{digits}[A390599(n+1), #]` -/
def P10865726221692435581.Spec : Prop :=
  ∀ n, (P10865726221692435581.a n : ℤ) = A034690 (n + 1)

end A034690

/-!
# A034691: Euler transform of powers of 2 [1,2,4,8,16,...].

The programs for A034691, there is no canonical definition to state claims against.
-/

/-! ## A034691.P1830216619343573337

`∑{d}[A028310(n), A303551(#)]`
-/

namespace A034691.P1830216619343573337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303551 d

end

end A034691.P1830216619343573337

/-! ## A034691.P17901085015646946820

`∑{d}[A065033(2*n), A303551(#)]`
-/

namespace A034691.P17901085015646946820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303551 d

end

end A034691.P17901085015646946820

/-! ## A034691.P2309483017037858964

`∑{d}[A123108(2*n), A303551(#)]`
-/

namespace A034691.P2309483017037858964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303551 d

end

end A034691.P2309483017037858964

/-! ## A034691.P2820915242649271726

`A000007(n)+∑{d}[n, A303551(#)]`
-/

namespace A034691.P2820915242649271726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A303551 d

end

end A034691.P2820915242649271726

/-! ## A034691.P7904040098436668584

`∑{d}[A193739(A000124(n)), A303551(#)]`
-/

namespace A034691.P7904040098436668584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303551 d

end

end A034691.P7904040098436668584

/-! ## A034691.P17591960537915301141

`∑{d}[A193739(A000217(n)), A303551(#)]`
-/

namespace A034691.P17591960537915301141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303551 d

end

end A034691.P17591960537915301141

/-!
# A034692: a(n+1) = smallest number that is not the sum of a(n) or fewer terms of a(1),...,a(n).

The programs for A034692, there is no canonical definition to state claims against.
-/

/-! ## A034692.P5008894894648172398

`a(n-1)+(a(n-1)+1)*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A034692.P5008894894648172398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 1) * (a (n - 1) - a (n - 2))

end

end A034692.P5008894894648172398

/-! ## A034692.P14245733026899834492

`(2-(a(n-2)-a(n-1)))*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A034692.P14245733026899834492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - (a (n - 2) - a (n - 1))) * a (n - 1) - a (n - 2)

end

end A034692.P14245733026899834492

/-! ## A034692.P6878444645420664613

`A391887(2*n)-1`
-/

namespace A034692.P6878444645420664613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391887 (2 * n) - 1

end

end A034692.P6878444645420664613

/-! ## A034692.P10954099001041986897

`∑[A380013(2*n+1)]`
-/

namespace A034692.P10954099001041986897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380013 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034692.P10954099001041986897

/-!
# A034693: Smallest k such that k*n+1 is prime.

The programs for A034693, there is no canonical definition to state claims against.
-/

/-! ## A034693.P18426315100393256449

`ceil(A034694(n+1)/(n+2))`
-/

namespace A034693.P18426315100393256449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034694 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

end

end A034693.P18426315100393256449

/-! ## A034693.P14666566444940535773

`round(A034694(n+1)/A020725(n+1))`
-/

namespace A034693.P14666566444940535773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034694 (n + 1) : ℚ) / (A020725 (n + 1) : ℚ))

end

end A034693.P14666566444940535773

/-! ## A034693.P3112454804876929762

`(A034694(n+1)-1)/A000027(n+1)`
-/

namespace A034693.P3112454804876929762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) - 1 : ℚ) / (A000027 (n + 1) : ℚ)

end

end A034693.P3112454804876929762

/-! ## A034693.P16022854191006542034

`floor(A034694(n+1)/A061767(n+1))+1`
-/

namespace A034693.P16022854191006542034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034694 (n + 1) : ℚ) / (A061767 (n + 1) : ℚ)⌋ + 1

end

end A034693.P16022854191006542034

/-! ## A034693.P10995581797844158604

`A103689(n+1)+A200996(n+1)-A053989(n+1)`
-/

namespace A034693.P10995581797844158604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (n + 1) + (A200996 (n + 1) - A053989 (n + 1))

end

end A034693.P10995581797844158604

/-! ## A034693.P9818079821750393842

`(A034694(n+1)-1)/A083569(A083569(n+1))`
-/

namespace A034693.P9818079821750393842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) - 1 : ℚ) / (A083569 (A083569 (n + 1)).toNat : ℚ)

end

end A034693.P9818079821750393842

/-! ## A034693.P1206384915755687847

`(A034694(n+1)-1)/A004525(A103517(n))`
-/

namespace A034693.P1206384915755687847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) - 1 : ℚ) / (A004525 (A103517 n).toNat : ℚ)

end

end A034693.P1206384915755687847

/-! ## A034693.P12246686319254593745

`A006093(A391765(n+1))/(n+1)`
-/

namespace A034693.P12246686319254593745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (A391765 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A034693.P12246686319254593745

/-! ## A034693.P13995930718458505967

`A000010(A034694(n+1))/A000027(n+1)`
-/

namespace A034693.P13995930718458505967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A034694 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A034693.P13995930718458505967

/-! ## A034693.P12196031874524859408

`(A034694(n+1)-1)/A219109(A008864(n+1))`
-/

namespace A034693.P12196031874524859408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) - 1 : ℚ) / (A219109 (A008864 (n + 1)).toNat : ℚ)

end

end A034693.P12196031874524859408

/-! ## A034693.P10197645404812008792

`(A034694(n+1)-1)/A087559(A087559(n+1))`
-/

namespace A034693.P10197645404812008792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) - 1 : ℚ) / (A087559 (A087559 (n + 1)).toNat : ℚ)

end

end A034693.P10197645404812008792

/-! ## A034693.P13101978441373211482

`A103517(A034694(n+1)-2)/A103517(n)`
-/

namespace A034693.P13101978441373211482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 (A034694 (n + 1) - 2).toNat : ℚ) / (A103517 n : ℚ)

end

end A034693.P13101978441373211482

/-! ## A034693.P17600919633945078810

`A063994(A034694(n+1))/A004525(A103517(n))`
-/

namespace A034693.P17600919633945078810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (A034694 (n + 1)).toNat : ℚ) / (A004525 (A103517 n).toNat : ℚ)

end

end A034693.P17600919633945078810

/-! ## A034693.P1698883625368778476

`A087377(∑[n]+1)`
-/

namespace A034693.P1698883625368778476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034693.P1698883625368778476

/-!
# A034694: Smallest prime == 1 (mod n).

The programs for A034694, there is no canonical definition to state claims against.
-/

/-! ## A034694.P10273092208042577714

`(n+1)*A034693(n+1)+1`
-/

namespace A034694.P10273092208042577714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034693 (n + 1) + 1

end

end A034694.P10273092208042577714

/-! ## A034694.P16355786610973046841

`A086507(A066043(n+1))`
-/

namespace A034694.P16355786610973046841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A066043 (n + 1)).toNat

end

end A034694.P16355786610973046841

/-! ## A034694.P2691628879471153581

`A000040(A391765(n+1))`
-/

namespace A034694.P2691628879471153581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391765 (n + 1)).toNat

end

end A034694.P2691628879471153581

/-! ## A034694.P5230707898114680634

`A151800((n+1)*A034693(n+1))`
-/

namespace A034694.P5230707898114680634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A034693 (n + 1)).toNat

end

end A034694.P5230707898114680634

/-! ## A034694.P6344737306589723501

`A166333((n+1)*A034693(n+1))`
-/

namespace A034694.P6344737306589723501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 ((n + 1 : ℤ) * A034693 (n + 1)).toNat

end

end A034694.P6344737306589723501

/-! ## A034694.P15071695099844366579

`A086507((n+1)*A034693(n+1))`
-/

namespace A034694.P15071695099844366579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 ((n + 1 : ℤ) * A034693 (n + 1)).toNat

end

end A034694.P15071695099844366579

/-! ## A034694.P17083678705766048206

`A275115((n+1)*A034693(n+1))`
-/

namespace A034694.P17083678705766048206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 ((n + 1 : ℤ) * A034693 (n + 1)).toNat

end

end A034694.P17083678705766048206

/-! ## A034694.P12271736610583027323

`A060940(A005728(n))`
-/

namespace A034694.P12271736610583027323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A005728 n).toNat

end

end A034694.P12271736610583027323

/-! ## A034694.P5263167310620584338

`A060940(A002088(n)+1)`
-/

namespace A034694.P5263167310620584338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A002088 n + 1).toNat

end

end A034694.P5263167310620584338

/-! ## A034694.P11117475478613146278

`A077316(∑[n]+1)`
-/

namespace A034694.P11117475478613146278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034694.P11117475478613146278

/-!
# A034695: Tau_6 (the 6th Piltz divisor function), the number of ordered 6-factorizations of n; Dirichlet convolution of number-of-divisors function (A000005) with A007426.

The programs for A034695, the canonical program `A034695.P16631369386541678886` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034695 has offset 1).

The definition of A034695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034695.P16631369386541678886

`∏{e}[n+1, C(#+5, 5)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034695

/-- `∏{e}[n+1, C(#+5, 5)]` -/
def P16631369386541678886.Spec : Prop :=
  ∀ n, (P16631369386541678886.a n : ℤ) = A034695 (n + 1)

theorem P16631369386541678886.correct : P16631369386541678886.Spec := by
  intro n
  simp only [A034695, Nat.add_sub_cancel]

end A034695

/-! ## A034695.P6675255726293446168

`∑{d}[n+1, A061200(#)]`
-/

namespace A034695.P6675255726293446168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d

end

end A034695.P6675255726293446168

namespace A034695

/-- `∑{d}[n+1, A061200(#)]` -/
def P6675255726293446168.Spec : Prop :=
  ∀ n, P6675255726293446168.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P11071944479258818022

`∑{d}[n+1, A000005(#)*A007426((n+1)/#)]`
-/

namespace A034695.P11071944479258818022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P11071944479258818022

namespace A034695

/-- `∑{d}[n+1, A000005(#)*A007426((n+1)/#)]` -/
def P11071944479258818022.Spec : Prop :=
  ∀ n, P11071944479258818022.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P14471458265480147272

`∑{d}[n+1, A007425(#)*A007425((n+1)/#)]`
-/

namespace A034695.P14471458265480147272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P14471458265480147272

namespace A034695

/-- `∑{d}[n+1, A007425(#)*A007425((n+1)/#)]` -/
def P14471458265480147272.Spec : Prop :=
  ∀ n, P14471458265480147272.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P500962443519100915

`∑{d}[n+1, A046951(#)*A062367((n+1)/#)]`
-/

namespace A034695.P500962443519100915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P500962443519100915

namespace A034695

/-- `∑{d}[n+1, A046951(#)*A062367((n+1)/#)]` -/
def P500962443519100915.Spec : Prop :=
  ∀ n, P500962443519100915.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P1995450230813507609

`∑{d}[n+1, A007427(#)*A111218((n+1)/#)]`
-/

namespace A034695.P1995450230813507609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P1995450230813507609

namespace A034695

/-- `∑{d}[n+1, A007427(#)*A111218((n+1)/#)]` -/
def P1995450230813507609.Spec : Prop :=
  ∀ n, P1995450230813507609.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P15270655593037726079

`∑{d}[n+1, A007428(#)*A111219((n+1)/#)]`
-/

namespace A034695.P15270655593037726079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A111219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P15270655593037726079

namespace A034695

/-- `∑{d}[n+1, A007428(#)*A111219((n+1)/#)]` -/
def P15270655593037726079.Spec : Prop :=
  ∀ n, P15270655593037726079.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P12550436783024353962

`∑{d}[n+1, A008683(#)*A111217((n+1)/#)]`
-/

namespace A034695.P12550436783024353962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P12550436783024353962

namespace A034695

/-- `∑{d}[n+1, A008683(#)*A111217((n+1)/#)]` -/
def P12550436783024353962.Spec : Prop :=
  ∀ n, P12550436783024353962.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P6526195095256450757

`∑{d}[n+1, A035116(#)*A124315((n+1)/#)]`
-/

namespace A034695.P6526195095256450757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P6526195095256450757

namespace A034695

/-- `∑{d}[n+1, A035116(#)*A124315((n+1)/#)]` -/
def P6526195095256450757.Spec : Prop :=
  ∀ n, P6526195095256450757.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P756203154668054988

`∑{d}[n+1, A111220(#)*A247343((n+1)/#)]`
-/

namespace A034695.P756203154668054988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111220 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P756203154668054988

namespace A034695

/-- `∑{d}[n+1, A111220(#)*A247343((n+1)/#)]` -/
def P756203154668054988.Spec : Prop :=
  ∀ n, P756203154668054988.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P14745984673734375988

`∑{d}[n+1, A111221(#)*A341831((n+1)/#)]`
-/

namespace A034695.P14745984673734375988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111221 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P14745984673734375988

namespace A034695

/-- `∑{d}[n+1, A111221(#)*A341831((n+1)/#)]` -/
def P14745984673734375988.Spec : Prop :=
  ∀ n, P14745984673734375988.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P1823893972341935709

`∑{d}[n+1, A111306(#)*A341832((n+1)/#)]`
-/

namespace A034695.P1823893972341935709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111306 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P1823893972341935709

namespace A034695

/-- `∑{d}[n+1, A111306(#)*A341832((n+1)/#)]` -/
def P1823893972341935709.Spec : Prop :=
  ∀ n, P1823893972341935709.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P17652242177918092302

`∑{d}[n+1, A129628(#)*A326417((n+1)/#)]`
-/

namespace A034695.P17652242177918092302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A326417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P17652242177918092302

namespace A034695

/-- `∑{d}[n+1, A129628(#)*A326417((n+1)/#)]` -/
def P17652242177918092302.Spec : Prop :=
  ∀ n, P17652242177918092302.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P8270028588152570311

`∑{d}[n+1, A328486(#)*A349693((n+1)/#)]`
-/

namespace A034695.P8270028588152570311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328486 d * A349693 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P8270028588152570311

namespace A034695

/-- `∑{d}[n+1, A328486(#)*A349693((n+1)/#)]` -/
def P8270028588152570311.Spec : Prop :=
  ∀ n, P8270028588152570311.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P17254323324949306356

`∑{d}[n+1, A370297(#)*A388067((n+1)/#)]`
-/

namespace A034695.P17254323324949306356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A370297 d * A388067 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034695.P17254323324949306356

namespace A034695

/-- `∑{d}[n+1, A370297(#)*A388067((n+1)/#)]` -/
def P17254323324949306356.Spec : Prop :=
  ∀ n, P17254323324949306356.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P15625001506041896625

`∏{e}[(n+1)², A189980(#)]`
-/

namespace A034695.P15625001506041896625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A189980 (Nat.factorization (f1 n) p + 10)

end

end A034695.P15625001506041896625

namespace A034695

/-- `∏{e}[(n+1)², A189980(#)]` -/
def P15625001506041896625.Spec : Prop :=
  ∀ n, P15625001506041896625.a n = A034695 (n + 1)

end A034695

/-! ## A034695.P1090543815891157222

`A077592(A052905(n+3))`
-/

namespace A034695.P1090543815891157222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A052905 (n + 3)).toNat

end

end A034695.P1090543815891157222

namespace A034695

/-- `A077592(A052905(n+3))` -/
def P1090543815891157222.Spec : Prop :=
  ∀ n, P1090543815891157222.a n = A034695 (n + 1)

end A034695

/-!
# A034696: Dirichlet convolution of primes (A000040) with themselves.

The programs for A034696, the canonical program `A034696.P13754562402814892343` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034696 has offset 1).

The definition of A034696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034696.P13754562402814892343

`∑{d}[n+1, A000040(#)*A000040((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034696

/-- `∑{d}[n+1, A000040(#)*A000040((n+1)/#)]` -/
def P13754562402814892343.Spec : Prop :=
  ∀ n, P13754562402814892343.a n = A034696 (n + 1)

theorem P13754562402814892343.correct : P13754562402814892343.Spec := by
  intro n
  simp only [A034696, Nat.add_sub_cancel]

end A034696

/-! ## A034696.P1385449258761006714

`∑{d}[n+1, A007444(#)*A007445((n+1)/#)]`
-/

namespace A034696.P1385449258761006714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d * A007445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034696.P1385449258761006714

namespace A034696

/-- `∑{d}[n+1, A007444(#)*A007445((n+1)/#)]` -/
def P1385449258761006714.Spec : Prop :=
  ∀ n, P1385449258761006714.a n = A034696 (n + 1)

end A034696

/-! ## A034696.P15280130209369584319

`∑{d}[n+1, A130029(#)*A130030((n+1)/#)]`
-/

namespace A034696.P15280130209369584319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130029 d * A130030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034696.P15280130209369584319

namespace A034696

/-- `∑{d}[n+1, A130029(#)*A130030((n+1)/#)]` -/
def P15280130209369584319.Spec : Prop :=
  ∀ n, P15280130209369584319.a n = A034696 (n + 1)

end A034696

/-! ## A034696.P4756217290663795736

`∑{d}[n+1, A361706(#)*A361707((n+1)/#)]`
-/

namespace A034696.P4756217290663795736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361706 d * A361707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034696.P4756217290663795736

namespace A034696

/-- `∑{d}[n+1, A361706(#)*A361707((n+1)/#)]` -/
def P4756217290663795736.Spec : Prop :=
  ∀ n, P4756217290663795736.a n = A034696 (n + 1)

end A034696

/-!
# A034697: a(1)=1, a(n)= 1 + Sum a(p), p prime, p | n-1.

The programs for A034697, there is no canonical definition to state claims against.
-/

/-! ## A034697.P8400493548064659538

`a(∏{p}[n, #]-A032742(∏{p}[n, #]))+1` with `a(0)=1, a(1)=1`
-/

namespace A034697.P8400493548064659538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A032742 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat + 1

end

end A034697.P8400493548064659538

/-!
# A034698: a(n) is the smallest prime such that a(1), ..., a(n-1) are squares mod a(n).

The programs for A034698, there is no canonical definition to state claims against.
-/

/-! ## A034698.P5592823512153963846

`p?[A034791(n+1)]`
-/

namespace A034698.P5592823512153963846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034698.P5592823512153963846

/-! ## A034698.P1410436663812214767

`p?[record[A034791(A028920(n))]]`
-/

namespace A034698.P1410436663812214767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034791 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034698.P1410436663812214767

/-! ## A034698.P15314212790984745129

`p?[record[A034791(A065648(n))]]`
-/

namespace A034698.P15314212790984745129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034791 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034698.P15314212790984745129

/-! ## A034698.P5067462229948292705

`p?[record[A034791(A102885(n))]]`
-/

namespace A034698.P5067462229948292705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034791 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034698.P5067462229948292705

/-! ## A034698.P13011954949057235439

`record[A006530(A034791(n+2))]`
-/

namespace A034698.P13011954949057235439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034791 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034698.P13011954949057235439

/-!
# A034699: Largest prime power factor of n.

The programs for A034699, there is no canonical definition to state claims against.
-/

/-! ## A034699.P8908066407680753828

`A034684(n+1)+A100574(n+1)`
-/

namespace A034699.P8908066407680753828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) + A100574 (n + 1)

end

end A034699.P8908066407680753828

/-! ## A034699.P8850714180783130926

`A088387(n+1)^A088388(n+1)`
-/

namespace A034699.P8850714180783130926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (n + 1) : ℚ) ^ (A088388 (n + 1) : ℤ)

end

end A034699.P8850714180783130926

/-! ## A034699.P6307751095808997462

`1-A081805(n+1)+n`
-/

namespace A034699.P6307751095808997462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081805 (n + 1) + (n : ℤ)

end

end A034699.P6307751095808997462

/-! ## A034699.P1943488415952001352

`(n+1)/A284600(n+1)`
-/

namespace A034699.P1943488415952001352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284600 (n + 1) : ℚ)

end

end A034699.P1943488415952001352

/-! ## A034699.P5493739941592547943

`gcd(n+1, A139082(n+1))`
-/

namespace A034699.P5493739941592547943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A139082 (n + 1))

end

end A034699.P5493739941592547943

/-! ## A034699.P10070184764689973268

`A139081(n)-a(n-1)` with `a(0)=1`
-/

namespace A034699.P10070184764689973268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139081 n - a (n - 1)

end

end A034699.P10070184764689973268

/-! ## A034699.P2913811735209920212

`A139082(n)/a(n-1)` with `a(0)=1`
-/

namespace A034699.P2913811735209920212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139082 n : ℚ) / a (n - 1)

end

end A034699.P2913811735209920212

/-! ## A034699.P15764163981125849235

`A057110(n+1)+A002034(n+1)`
-/

namespace A034699.P15764163981125849235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (n + 1) + A002034 (n + 1)

end

end A034699.P15764163981125849235

/-! ## A034699.P5852241496865044687

`A354933(n+1)-A354995(n+1)`
-/

namespace A034699.P5852241496865044687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A354995 (n + 1)

end

end A034699.P5852241496865044687

/-! ## A034699.P5242854891395571911

`A304233(n+1)/A034684(n+1)`
-/

namespace A034699.P5242854891395571911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ)

end

end A034699.P5242854891395571911

/-! ## A034699.P3438039772164920349

`gcd(A000027(n+1), A081805(n+1))`
-/

namespace A034699.P3438039772164920349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A081805 (n + 1))

end

end A034699.P3438039772164920349

/-! ## A034699.P9360607538950021992

`gcd(A158377(n+1), A324388(n+1))`
-/

namespace A034699.P9360607538950021992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158377 (n + 1)) (A324388 (n + 1))

end

end A034699.P9360607538950021992

/-! ## A034699.P12452476351233866090

`lcm(A100994(n+1), A366649(n+1))`
-/

namespace A034699.P12452476351233866090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100994 (n + 1)) (A366649 (n + 1))

end

end A034699.P12452476351233866090

/-! ## A034699.P17433525712734686734

`A006530(n+1)+A057110(n+1)+A057108(n+1)`
-/

namespace A034699.P17433525712734686734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A057110 (n + 1) + A057108 (n + 1))

end

end A034699.P17433525712734686734

/-! ## A034699.P11175764075471851724

`A052128(n+1)+A076388(n+1)-A354995(n+1)`
-/

namespace A034699.P11175764075471851724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (n + 1) + (A076388 (n + 1) - A354995 (n + 1))

end

end A034699.P11175764075471851724

/-! ## A034699.P14633521752365081609

`A210208(∑[∑{e}[n+1, #]+1])`
-/

namespace A034699.P14633521752365081609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034699.P14633521752365081609

/-! ## A034699.P16213668530347310548

`A210208(A210241(n+1))`
-/

namespace A034699.P16213668530347310548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 1)).toNat

end

end A034699.P16213668530347310548

/-! ## A034699.P9886196245703742886

`A210208(∑[A073093(n+1)])`
-/

namespace A034699.P9886196245703742886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034699.P9886196245703742886

/-! ## A034699.P4104147298527840133

`A210208(A022559(n+1)+n+1)`
-/

namespace A034699.P4104147298527840133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A022559 (n + 1) + (n + 1 : ℤ)).toNat

end

end A034699.P4104147298527840133

/-! ## A034699.P8884736377563963448

`A081472(n+1)-(n+1)`
-/

namespace A034699.P8884736377563963448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - (n + 1 : ℤ)

end

end A034699.P8884736377563963448

