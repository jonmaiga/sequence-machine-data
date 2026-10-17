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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C026

/-!
# A118301: Number of partitions of n into distinct parts with largest part congruent to n modulo 2.

The programs for A118301, there is no canonical definition to state claims against.
-/

/-! ## A118301.P2162013826428989724

`Δ[A036469(n)]-A118302(n+1)`
-/

namespace A118301.P2162013826428989724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118302 (n + 1)

end

end A118301.P2162013826428989724

/-! ## A118301.P5023793295502121600

`A199918(n+1)+A118302(n+1)`
-/

namespace A118301.P5023793295502121600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199918 (n + 1) + A118302 (n + 1)

end

end A118301.P5023793295502121600

/-! ## A118301.P17303355945185483005

`A000009(n+1)-A118302(n+1)`
-/

namespace A118301.P17303355945185483005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A118302 (n + 1)

end

end A118301.P17303355945185483005

/-! ## A118301.P2473867020577644140

`Δ[A248956(n)/2]-A118302(n+1)`
-/

namespace A118301.P2473867020577644140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248956 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A118302 (n + 1) : ℚ)

end

end A118301.P2473867020577644140

/-! ## A118301.P8901632555566138573

`A035457(2*(n+1))-A118302(n+1)`
-/

namespace A118301.P8901632555566138573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * (n + 1)) - A118302 (n + 1)

end

end A118301.P8901632555566138573

/-! ## A118301.P9712117891154365167

`A065033(A000009(n+1)-A316863(2*n))`
-/

namespace A118301.P9712117891154365167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000009 (n + 1) - A316863 (2 * n)).toNat

end

end A118301.P9712117891154365167

/-! ## A118301.P9217510137315367796

`Δ[A054242(A034856(n+1))]-A118302(n+1)`
-/

namespace A118301.P9217510137315367796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118302 (n + 1)

end

end A118301.P9217510137315367796

/-! ## A118301.P9830957600081057665

`A054242(A034856(n+1)+1)-A118302(n+1)`
-/

namespace A118301.P9830957600081057665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A034856 (n + 1) + 1).toNat - A118302 (n + 1)

end

end A118301.P9830957600081057665

/-! ## A118301.P15474836823594613403

`A026837(n+1)+A026838(n+1)-A118302(n+1)`
-/

namespace A118301.P15474836823594613403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026837 (n + 1) + (A026838 (n + 1) - A118302 (n + 1))

end

end A118301.P15474836823594613403

/-! ## A118301.P14871592579327902696

`A025480(Δ[A248956(n)])-A118302(n+1)`
-/

namespace A118301.P14871592579327902696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat - A118302 (n + 1)

end

end A118301.P14871592579327902696

/-!
# A118302: Number of partitions of n into distinct parts with largest part not congruent to n modulo 2.

The programs for A118302, there is no canonical definition to state claims against.
-/

/-! ## A118302.P287031127623933195

`Δ[A036469(n)]-A118301(n+1)`
-/

namespace A118302.P287031127623933195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118301 (n + 1)

end

end A118302.P287031127623933195

/-! ## A118302.P5942294224968628445

`A000009(n+1)-A118301(n+1)`
-/

namespace A118302.P5942294224968628445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A118301 (n + 1)

end

end A118302.P5942294224968628445

/-! ## A118302.P10058979093602425287

`A118301(n+1)-A199918(n+1)`
-/

namespace A118302.P10058979093602425287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (n + 1) - A199918 (n + 1)

end

end A118302.P10058979093602425287

/-! ## A118302.P13903779145094372387

`A264405(∑[n+1])-A118301(n+1)`
-/

namespace A118302.P13903779145094372387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f1 j) - A118301 (n + 1)

end

end A118302.P13903779145094372387

/-! ## A118302.P12377675016126111705

`A091602(A000124(n))-A118301(n+1)`
-/

namespace A118302.P12377675016126111705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A000124 n).toNat - A118301 (n + 1)

end

end A118302.P12377675016126111705

/-! ## A118302.P9358820993548387472

`A026837(n+1)+A026838(n+1)-A118301(n+1)`
-/

namespace A118302.P9358820993548387472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026837 (n + 1) + (A026838 (n + 1) - A118301 (n + 1))

end

end A118302.P9358820993548387472

/-!
# A118303: Even values of the PartitionsQ function A000009.

The programs for A118303, there is no canonical definition to state claims against.
-/

/-! ## A118303.P10833678365195009822

`A000009(eq[0, A010815(n)])`
-/

namespace A118303.P10833678365195009822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118303.P10833678365195009822

/-! ## A118303.P13231433143190280728

`A000009(lt[A000009(n)%2, 1])`
-/

namespace A118303.P13231433143190280728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A118303.P13231433143190280728

/-! ## A118303.P15245997271954927568

`A000009(lt[1, gcd(2, A000009(n))])`
-/

namespace A118303.P15245997271954927568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118303.P15245997271954927568

/-! ## A118303.P13900790149697003952

`A000009(lt[and(1, A000009(n)), 1])`
-/

namespace A118303.P13900790149697003952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000009 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A118303.P13900790149697003952

/-! ## A118303.P13643048450662415446

`A000009(eq[1, (-1)^A000009(n)])`
-/

namespace A118303.P13643048450662415446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000009 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A118303.P13643048450662415446

/-! ## A118303.P17089527933553415296

`A000009(comp[n*and(1, A000009(n))])`
-/

namespace A118303.P17089527933553415296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A000009 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118303.P17089527933553415296

/-! ## A118303.P13626751329883506051

`A000009(eq[2*A067661(n), A000009(n)])`
-/

namespace A118303.P13626751329883506051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067661 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A118303.P13626751329883506051

/-! ## A118303.P2781641063155635206

`A000009(eq[A000009(n)/2, A067661(n)])`
-/

namespace A118303.P2781641063155635206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A118303.P2781641063155635206

/-! ## A118303.P6890032230878956205

`A000009(lt[1, A091438(3*n+1)])`
-/

namespace A118303.P6890032230878956205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118303.P6890032230878956205

/-! ## A118303.P3752835236473354868

`A000009(eq[0, A010054(3*n)])`
-/

namespace A118303.P3752835236473354868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118303.P3752835236473354868

/-! ## A118303.P7162557882071693309

`A000009(lt[A010054(3*n), 1])`
-/

namespace A118303.P7162557882071693309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A118303.P7162557882071693309

/-! ## A118303.P15149480403458730665

`A000009(lt[1, A055893(3*n+1)])`
-/

namespace A118303.P15149480403458730665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055893 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118303.P15149480403458730665

/-! ## A118303.P16933318128238261534

`A000009(eq[n, A286956(n)])`
-/

namespace A118303.P16933318128238261534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118303.P16933318128238261534

/-! ## A118303.P12852699689537258923

`A000009(eq[A067659(n), A067661(n)])`
-/

namespace A118303.P12852699689537258923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A118303.P12852699689537258923

/-! ## A118303.P9720003105853908128

`2*A067659(eq[A067659(n), A067661(n)])`
-/

namespace A118303.P9720003105853908128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067659 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A118303.P9720003105853908128

/-! ## A118303.P8382982370514010994

`A000009(eq[1, A007706(n)])`
-/

namespace A118303.P8382982370514010994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118303.P8382982370514010994

/-! ## A118303.P8435196898017207395

`A000009(A090864(n+1))`
-/

namespace A118303.P8435196898017207395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A090864 (n + 1)).toNat

end

end A118303.P8435196898017207395

/-!
# A118304: Start with 25 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118304, there is no canonical definition to state claims against.
-/

/-! ## A118304.P15970477938041631227

`A004086(a(n-1))+1` with `a(0)=25`
-/

namespace A118304.P15970477938041631227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118304.P15970477938041631227

/-!
# A118305: Numbers k such that 3*k^k-1 is prime.

The programs for A118305, there is no canonical definition to state claims against.
-/

/-! ## A118305.P5018237388702595775

`A056960(C(A356938(n)+1, n))`
-/

namespace A118305.P5018237388702595775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (Nat.choose (A356938 n + 1).toNat n)

end

end A118305.P5018237388702595775

/-!
# A118310: a(n) = gcd(n,m(n)), where m(n) is the n-th nonprime positive integer (1 or composite).

The programs for A118310, the canonical program `A118310.P4781483978204000189` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118310 has offset 1).

The definition of A118310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118310.P13555440151446017804

`gcd(comp[p?[xor(1, n)]-1]+1, 2*n+1-n)`
-/

namespace A118310.P13555440151446017804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) ((2 * n + 1 : ℤ) - (n : ℤ))

end

end A118310.P13555440151446017804

namespace A118310

/-- `gcd(comp[p?[xor(1, n)]-1]+1, 2*n+1-n)` -/
def P13555440151446017804.Spec : Prop :=
  ∀ n, (P13555440151446017804.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P4781483978204000189

`gcd(n+1, A073425(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118310

/-- `gcd(n+1, A073425(n))` -/
def P4781483978204000189.Spec : Prop :=
  ∀ n, (P4781483978204000189.a n : ℤ) = A118310 (n + 1)

theorem P4781483978204000189.correct : P4781483978204000189.Spec := by
  intro n
  simp only [A118310, Nat.add_sub_cancel]

end A118310

/-! ## A118310.P1205481811563780248

`(n+1)/A171530(n+1)`
-/

namespace A118310.P1205481811563780248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A171530 (n + 1) : ℚ)

end

end A118310.P1205481811563780248

namespace A118310

/-- `(n+1)/A171530(n+1)` -/
def P1205481811563780248.Spec : Prop :=
  ∀ n, P1205481811563780248.a n = (A118310 (n + 1) : ℚ)

end A118310

/-! ## A118310.P1816829959748308168

`gcd(xor(n, -1), A018252(n+1))`
-/

namespace A118310.P1816829959748308168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A018252 (n + 1))

end

end A118310.P1816829959748308168

namespace A118310

/-- `gcd(xor(n, -1), A018252(n+1))` -/
def P1816829959748308168.Spec : Prop :=
  ∀ n, (P1816829959748308168.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P16229210881829114903

`gcd(xor(n, -1), comp[A006530(n+1)])`
-/

namespace A118310.P16229210881829114903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A118310.P16229210881829114903

namespace A118310

/-- `gcd(xor(n, -1), comp[A006530(n+1)])` -/
def P16229210881829114903.Spec : Prop :=
  ∀ n, (P16229210881829114903.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P4151033866472877653

`gcd(Δ[n²]-n, A127118(n+1))`
-/

namespace A118310.P4151033866472877653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A127118 (n + 1))

end

end A118310.P4151033866472877653

namespace A118310

/-- `gcd(Δ[n²]-n, A127118(n+1))` -/
def P4151033866472877653.Spec : Prop :=
  ∀ n, (P4151033866472877653.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P2107072076248429204

`gcd(-xor(n, -1), comp[A020639(n+1)])`
-/

namespace A118310.P2107072076248429204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-Int.xor (n : ℤ) (-1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A118310.P2107072076248429204

namespace A118310

/-- `gcd(-xor(n, -1), comp[A020639(n+1)])` -/
def P2107072076248429204.Spec : Prop :=
  ∀ n, (P2107072076248429204.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P480332987084871361

`gcd(comp[A000040(n+1)-1]+1, C(n+1, n))`
-/

namespace A118310.P480332987084871361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) (Nat.choose (n + 1) n)

end

end A118310.P480332987084871361

namespace A118310

/-- `gcd(comp[A000040(n+1)-1]+1, C(n+1, n))` -/
def P480332987084871361.Spec : Prop :=
  ∀ n, (P480332987084871361.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P14769559155302652963

`gcd(comp[A006530(n+2)-1]+1, 1-(n-2*n))`
-/

namespace A118310.P14769559155302652963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (1 - ((n : ℤ) - (2 * n : ℤ)))

end

end A118310.P14769559155302652963

namespace A118310

/-- `gcd(comp[A006530(n+2)-1]+1, 1-(n-2*n))` -/
def P14769559155302652963.Spec : Prop :=
  ∀ n, (P14769559155302652963.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P7977255743330065381

`gcd(A018252(n+1), A131738(n))`
-/

namespace A118310.P7977255743330065381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018252 (n + 1)) (A131738 n)

end

end A118310.P7977255743330065381

namespace A118310

/-- `gcd(A018252(n+1), A131738(n))` -/
def P7977255743330065381.Spec : Prop :=
  ∀ n, (P7977255743330065381.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P5489956230714151149

`A018252(n+1)/A171529(n+1)`
-/

namespace A118310.P5489956230714151149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) / (A171529 (n + 1) : ℚ)

end

end A118310.P5489956230714151149

namespace A118310

/-- `A018252(n+1)/A171529(n+1)` -/
def P5489956230714151149.Spec : Prop :=
  ∀ n, P5489956230714151149.a n = (A118310 (n + 1) : ℚ)

end A118310

/-! ## A118310.P18394035744208118092

`gcd(A000027(n+1), A092930(n+1))`
-/

namespace A118310.P18394035744208118092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A092930 (n + 1))

end

end A118310.P18394035744208118092

namespace A118310

/-- `gcd(A000027(n+1), A092930(n+1))` -/
def P18394035744208118092.Spec : Prop :=
  ∀ n, (P18394035744208118092.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P17507851190891348911

`gcd(A061019(n+1), A171504(n+1))`
-/

namespace A118310.P17507851190891348911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A171504 (n + 1))

end

end A118310.P17507851190891348911

namespace A118310

/-- `gcd(A061019(n+1), A171504(n+1))` -/
def P17507851190891348911.Spec : Prop :=
  ∀ n, (P17507851190891348911.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P3639995814988594542

`gcd(2*n+1-n, A173073(n+2))`
-/

namespace A118310.P3639995814988594542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A173073 (n + 2))

end

end A118310.P3639995814988594542

namespace A118310

/-- `gcd(2*n+1-n, A173073(n+2))` -/
def P3639995814988594542.Spec : Prop :=
  ∀ n, (P3639995814988594542.a n : ℤ) = A118310 (n + 1)

end A118310

/-! ## A118310.P4692887647824079071

`A087267(Δ[A051349(n)])`
-/

namespace A118310.P4692887647824079071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (f1 (n + 1) - f1 n).toNat

end

end A118310.P4692887647824079071

namespace A118310

/-- `A087267(Δ[A051349(n)])` -/
def P4692887647824079071.Spec : Prop :=
  ∀ n, P4692887647824079071.a n = A118310 (n + 1)

end A118310

/-! ## A118310.P14295233974843808911

`A087267(A018252(n+1))`
-/

namespace A118310.P14295233974843808911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A018252 (n + 1)).toNat

end

end A118310.P14295233974843808911

namespace A118310

/-- `A087267(A018252(n+1))` -/
def P14295233974843808911.Spec : Prop :=
  ∀ n, P14295233974843808911.a n = A118310 (n + 1)

end A118310

/-! ## A118310.P11823769067580398984

`A087267(A065090(n+2))`
-/

namespace A118310.P11823769067580398984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A065090 (n + 2)).toNat

end

end A118310.P11823769067580398984

namespace A118310

/-- `A087267(A065090(n+2))` -/
def P11823769067580398984.Spec : Prop :=
  ∀ n, P11823769067580398984.a n = A118310 (n + 1)

end A118310

/-! ## A118310.P11339721414496476548

`A087267(A141468(n+2))`
-/

namespace A118310.P11339721414496476548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A141468 (n + 2)).toNat

end

end A118310.P11339721414496476548

namespace A118310

/-- `A087267(A141468(n+2))` -/
def P11339721414496476548.Spec : Prop :=
  ∀ n, P11339721414496476548.a n = A118310 (n + 1)

end A118310

/-! ## A118310.P14384771336315667811

`A087267(eq[1, A005171(n+1)]+1)`
-/

namespace A118310.P14384771336315667811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A118310.P14384771336315667811

namespace A118310

/-- `A087267(eq[1, A005171(n+1)]+1)` -/
def P14384771336315667811.Spec : Prop :=
  ∀ n, P14384771336315667811.a n = A118310 (n + 1)

end A118310

/-! ## A118310.P7663168811563511633

`A087267(A051349(n+1)-A051349(n))`
-/

namespace A118310.P7663168811563511633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A051349 (n + 1) - A051349 n).toNat

end

end A118310.P7663168811563511633

namespace A118310

/-- `A087267(A051349(n+1)-A051349(n))` -/
def P7663168811563511633.Spec : Prop :=
  ∀ n, P7663168811563511633.a n = A118310 (n + 1)

end A118310

/-!
# A118311: Number of dissimilar squarefree quaternary words of length n.

The programs for A118311, there is no canonical definition to state claims against.
-/

/-! ## A118311.P4509945381494063241

`ceil(A051041(n+1)/24)`
-/

namespace A118311.P4509945381494063241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051041 (n + 1) : ℚ) / 24⌉

end

end A118311.P4509945381494063241

/-! ## A118311.P4361634399631565399

`A215075(∑[n+3]+1)`
-/

namespace A118311.P4361634399631565399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118311.P4361634399631565399

/-! ## A118311.P2406217996190609829

`or(char[1], A215075(A034856(n+2)))`
-/

namespace A118311.P2406217996190609829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A215075 (A034856 (n + 2)).toNat)

end

end A118311.P2406217996190609829

/-! ## A118311.P2194385743288371832

`A215075(A034856(n+2))%A000032(2*n)`
-/

namespace A118311.P2194385743288371832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215075 (A034856 (n + 2)).toNat) (A000032 (2 * n))

end

end A118311.P2194385743288371832

/-! ## A118311.P1241007868798806816

`A215075(A034856(n+2))+A008683(40*(n+1))`
-/

namespace A118311.P1241007868798806816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A034856 (n + 2)).toNat + A008683 (40 * (n + 1))

end

end A118311.P1241007868798806816

/-!
# A118312: Number of squares on infinite chessboard that a knight can reach in n moves from a fixed square.

The programs for A118312, the canonical program `A118312.P16971408413575209812` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118312 has offset 0).

The definition of A118312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118312.P16971408413575209812

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=33, a(3)=76, a(4)=129, a(5)=196`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118312

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16971408413575209812.Spec : Prop :=
  ∀ n, P16971408413575209812.a n = A118312 n

theorem P16971408413575209812.correct : P16971408413575209812.Spec := by
  intro n
  simp only [A118312]

end A118312

/-! ## A118312.P4213545201202152865

`A018836(n)-a(n-1)` with `a(0)=1`
-/

namespace A118312.P4213545201202152865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018836 n - a (n - 1)

end

end A118312.P4213545201202152865

namespace A118312

/-- `A018836(n)-a(n-1)` -/
def P4213545201202152865.Spec : Prop :=
  ∀ n, P4213545201202152865.a n = A118312 n

end A118312

/-! ## A118312.P11364685560310406617

`A018842(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A118312.P11364685560310406617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A018842 n + a (n - 2)

end

end A118312.P11364685560310406617

namespace A118312

/-- `A018842(n)+a(n-2)` -/
def P11364685560310406617.Spec : Prop :=
  ∀ n, P11364685560310406617.a n = A118312 n

end A118312

/-! ## A118312.P11215651476977874541

`A056109(n)+2*n*A267873(n)`
-/

namespace A118312.P11215651476977874541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n + 2 * ((n : ℤ) * A267873 n)

end

end A118312.P11215651476977874541

namespace A118312

/-- `A056109(n)+2*n*A267873(n)` -/
def P11215651476977874541.Spec : Prop :=
  ∀ n, P11215651476977874541.a n = A118312 n

end A118312

/-! ## A118312.P7020302412014849930

`A005892(n)-A006881(n+1)²%A006881(A171526(n+1))`
-/

namespace A118312.P7020302412014849930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n - Int.tmod (A006881 (n + 1) ^ 2) (A006881 (A171526 (n + 1)).toNat)

end

end A118312.P7020302412014849930

namespace A118312

/-- `A005892(n)-A006881(n+1)²%A006881(A171526(n+1))` -/
def P7020302412014849930.Spec : Prop :=
  ∀ n, P7020302412014849930.a n = A118312 n

end A118312

/-! ## A118312.P9788265490891184576

`A005892(n)-A049084(A127739(n+1))²`
-/

namespace A118312.P9788265490891184576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n - A049084 (A127739 (n + 1)).toNat ^ 2

end

end A118312.P9788265490891184576

namespace A118312

/-- `A005892(n)-A049084(A127739(n+1))²` -/
def P9788265490891184576.Spec : Prop :=
  ∀ n, P9788265490891184576.a n = A118312 n

end A118312

/-! ## A118312.P12287994707126622828

`∑[A038522(2*n)]-a(n-1)` with `a(0)=1`
-/

namespace A118312.P12287994707126622828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038522 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A118312.P12287994707126622828

namespace A118312

/-- `∑[A038522(2*n)]-a(n-1)` -/
def P12287994707126622828.Spec : Prop :=
  ∀ n, P12287994707126622828.a n = A118312 n

end A118312

/-! ## A118312.P6782847956272397316

`A005892(n)-A055028(A168419(n+1))`
-/

namespace A118312.P6782847956272397316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n - A055028 (A168419 (n + 1)).toNat

end

end A118312.P6782847956272397316

namespace A118312

/-- `A005892(n)-A055028(A168419(n+1))` -/
def P6782847956272397316.Spec : Prop :=
  ∀ n, P6782847956272397316.a n = A118312 n

end A118312

/-! ## A118312.P18112652387853093933

`A168668(n)+A038722(A000982(A267873(n)))`
-/

namespace A118312.P18112652387853093933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + A038722 (A000982 (A267873 n).toNat).toNat

end

end A118312.P18112652387853093933

namespace A118312

/-- `A168668(n)+A038722(A000982(A267873(n)))` -/
def P18112652387853093933.Spec : Prop :=
  ∀ n, P18112652387853093933.a n = A118312 n

end A118312

/-!
# A118313: Sum of squared end-to-end distances of all n-step self-avoiding walks on the simple cubic lattice.

The programs for A118313, there is no canonical definition to state claims against.
-/

/-! ## A118313.P17922738078860765824

`A173453(A102403(n))+A151719(n)`
-/

namespace A118313.P17922738078860765824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (A102403 n).toNat + A151719 n

end

end A118313.P17922738078860765824

/-! ## A118313.P8567105633431987916

`or(A151719(n), A173068(A005803(n)))`
-/

namespace A118313.P8567105633431987916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151719 n) (A173068 (A005803 n).toNat)

end

end A118313.P8567105633431987916

/-!
# A118316: Inverse permutation to sequence A118315.

The programs for A118316, there is no canonical definition to state claims against.
-/

/-! ## A118316.P4436577937414707573

`xor(A060576(A030040(n)), A101438(n+1))`
-/

namespace A118316.P4436577937414707573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A030040 n).toNat) (A101438 (n + 1))

end

end A118316.P4436577937414707573

/-! ## A118316.P5103401469293513291

`xor(A060576(A145778(n+1)), A101438(n+1))`
-/

namespace A118316.P5103401469293513291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A145778 (n + 1)).toNat) (A101438 (n + 1))

end

end A118316.P5103401469293513291

/-! ## A118316.P6606425877371266046

`xor(A006369(n+1), A057427(2^n-1))`
-/

namespace A118316.P6606425877371266046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006369 (n + 1)) (A057427 (2 ^ n - 1))

end

end A118316.P6606425877371266046

/-! ## A118316.P16209094479884941946

`xor(A006369(A077168(n)), A178334(n))`
-/

namespace A118316.P16209094479884941946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006369 (A077168 n).toNat) (A178334 n)

end

end A118316.P16209094479884941946

/-! ## A118316.P18128107814512281996

`A065167(eq[A338873(n), A338876(n)])`
-/

namespace A118316.P18128107814512281996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065167 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A118316.P18128107814512281996

/-!
# A118317: a(2n-1)= smallest positive integer not occurring among the earlier terms of the sequence. a(2n) = the a(n)th positive integer among those positive integers not occurring earlier in the sequence.

The programs for A118317, there is no canonical definition to state claims against.
-/

/-! ## A118317.P10463776483475674232

`A102398(n+1)+A085978(A301700(n+1))`
-/

namespace A118317.P10463776483475674232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102398 (n + 1) + A085978 (A301700 (n + 1)).toNat

end

end A118317.P10463776483475674232

/-! ## A118317.P1246430905706535655

`or(A102354(A299119(n+2)), A102398(n+1))`
-/

namespace A118317.P1246430905706535655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102354 (A299119 (n + 2)).toNat) (A102398 (n + 1))

end

end A118317.P1246430905706535655

/-! ## A118317.P18278678252300308726

`A102398(n+1)+A010060(A007531(2*n+1))`
-/

namespace A118317.P18278678252300308726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102398 (n + 1) + A010060 (A007531 (2 * n + 1)).toNat

end

end A118317.P18278678252300308726

/-!
# A118318: Inverse permutation to sequence A118317.

The programs for A118318, there is no canonical definition to state claims against.
-/

/-! ## A118318.P6102696282843964462

`A102399(n+1)+and(2, A185274(n+1))`
-/

namespace A118318.P6102696282843964462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102399 (n + 1) + Int.land 2 (A185274 (n + 1))

end

end A118318.P6102696282843964462

/-! ## A118318.P10135207729120825183

`or(A046660(A010021(n)), A102399(n+1))`
-/

namespace A118318.P10135207729120825183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A010021 n).toNat) (A102399 (n + 1))

end

end A118318.P10135207729120825183

/-! ## A118318.P7488172239220155895

`or(A046660(A294746(n)²), A102399(n+1))`
-/

namespace A118318.P7488172239220155895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A294746 n ^ 2).toNat) (A102399 (n + 1))

end

end A118318.P7488172239220155895

/-! ## A118318.P8219456902355674503

`A102399(A000005(2^n))`
-/

namespace A118318.P8219456902355674503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102399 (A000005 (2 ^ n)).toNat

end

end A118318.P8219456902355674503

/-! ## A118318.P8467828469241587777

`A102399(n+1)%A101569(n+4)`
-/

namespace A118318.P8467828469241587777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102399 (n + 1)) (A101569 (n + 4))

end

end A118318.P8467828469241587777

/-!
# A118319: a(n) = (highest power of 2 dividing n)th integer among those positive integers not occurring in {a(1),a(2),a(3),...,a(n-1)}.

The programs for A118319, the canonical program `A118319.P17606296926027914498` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118319 has offset 1).

The definition of A118319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118319.P18050917628102912329

`∑[val(n+1, 2)]+2^val(n+1, 2)`
-/

namespace A118319.P18050917628102912329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A118319.P18050917628102912329

namespace A118319

/-- `∑[val(n+1, 2)]+2^val(n+1, 2)` -/
def P18050917628102912329.Spec : Prop :=
  ∀ n, (P18050917628102912329.a n : ℤ) = A118319 (n + 1)

end A118319

/-! ## A118319.P17606296926027914498

`∑[val(n+1, 2)+1]-and(n, n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118319

/-- `∑[val(n+1, 2)+1]-and(n, n+1)` -/
def P17606296926027914498.Spec : Prop :=
  ∀ n, P17606296926027914498.a n = A118319 (n + 1)

theorem P17606296926027914498.correct : P17606296926027914498.Spec := by
  intro n
  simp only [A118319, Nat.add_sub_cancel]

end A118319

/-! ## A118319.P8098933049338166746

`∑[val(n+1, 2)]+and(n+1, -(n+1))`
-/

namespace A118319.P8098933049338166746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A118319.P8098933049338166746

namespace A118319

/-- `∑[val(n+1, 2)]+and(n+1, -(n+1))` -/
def P8098933049338166746.Spec : Prop :=
  ∀ n, P8098933049338166746.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P17690403345669575086

`∑[log2(or(n, n+1)-n)]+or(n, n+1)-n`
-/

namespace A118319.P17690403345669575086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

end

end A118319.P17690403345669575086

namespace A118319

/-- `∑[log2(or(n, n+1)-n)]+or(n, n+1)-n` -/
def P17690403345669575086.Spec : Prop :=
  ∀ n, P17690403345669575086.a n = (A118319 (n + 1) : ℝ)

end A118319

/-! ## A118319.P14460372799547814884

`or(n, n+1)-A048881(n)`
-/

namespace A118319.P14460372799547814884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - A048881 n

end

end A118319.P14460372799547814884

namespace A118319

/-- `or(n, n+1)-A048881(n)` -/
def P14460372799547814884.Spec : Prop :=
  ∀ n, P14460372799547814884.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P2884043241743242513

`A006519(n+1)+∑[val(n+1, 2)]`
-/

namespace A118319.P2884043241743242513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118319.P2884043241743242513

namespace A118319

/-- `A006519(n+1)+∑[val(n+1, 2)]` -/
def P2884043241743242513.Spec : Prop :=
  ∀ n, P2884043241743242513.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P3034223006601744857

`∑[A007814(n+1)]+2^val(n+1, 2)`
-/

namespace A118319.P3034223006601744857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A118319.P3034223006601744857

namespace A118319

/-- `∑[A007814(n+1)]+2^val(n+1, 2)` -/
def P3034223006601744857.Spec : Prop :=
  ∀ n, P3034223006601744857.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P8182782006585093641

`A135481(n)+A113474(n+1)`
-/

namespace A118319.P8182782006585093641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n + A113474 (n + 1)

end

end A118319.P8182782006585093641

namespace A118319

/-- `A135481(n)+A113474(n+1)` -/
def P8182782006585093641.Spec : Prop :=
  ∀ n, P8182782006585093641.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P9276980173906496857

`A086799(n+1)-A048881(n)`
-/

namespace A118319.P9276980173906496857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1) - A048881 n

end

end A118319.P9276980173906496857

namespace A118319

/-- `A086799(n+1)-A048881(n)` -/
def P9276980173906496857.Spec : Prop :=
  ∀ n, P9276980173906496857.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P4894666225165559309

`A011371(n+1)+A006519(n+1)`
-/

namespace A118319.P4894666225165559309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + A006519 (n + 1)

end

end A118319.P4894666225165559309

namespace A118319

/-- `A011371(n+1)+A006519(n+1)` -/
def P4894666225165559309.Spec : Prop :=
  ∀ n, P4894666225165559309.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P13340174241572983041

`A005187(n+1)-A129760(n+1)`
-/

namespace A118319.P13340174241572983041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A129760 (n + 1)

end

end A118319.P13340174241572983041

namespace A118319

/-- `A005187(n+1)-A129760(n+1)` -/
def P13340174241572983041.Spec : Prop :=
  ∀ n, P13340174241572983041.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P11804505389322421349

`A100710(n+1)-A061338(n+1)`
-/

namespace A118319.P11804505389322421349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100710 (n + 1) - A061338 (n + 1)

end

end A118319.P11804505389322421349

namespace A118319

/-- `A100710(n+1)-A061338(n+1)` -/
def P11804505389322421349.Spec : Prop :=
  ∀ n, P11804505389322421349.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P14941339086021989468

`A006519(n+1)+∑[A007814(n+1)]`
-/

namespace A118319.P14941339086021989468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118319.P14941339086021989468

namespace A118319

/-- `A006519(n+1)+∑[A007814(n+1)]` -/
def P14941339086021989468.Spec : Prop :=
  ∀ n, P14941339086021989468.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P10123956328785443860

`A086799(n+1)+1-A000120(n+1)`
-/

namespace A118319.P10123956328785443860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1) + (1 - A000120 (n + 1))

end

end A118319.P10123956328785443860

namespace A118319

/-- `A086799(n+1)+1-A000120(n+1)` -/
def P10123956328785443860.Spec : Prop :=
  ∀ n, P10123956328785443860.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P8579577525698550234

`2*A140472(n+1)-A000120(n+1)`
-/

namespace A118319.P8579577525698550234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140472 (n + 1) - A000120 (n + 1)

end

end A118319.P8579577525698550234

namespace A118319

/-- `2*A140472(n+1)-A000120(n+1)` -/
def P8579577525698550234.Spec : Prop :=
  ∀ n, P8579577525698550234.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P12162262702835210939

`A006519(n+1)+∑[A001511(n+1)-1]`
-/

namespace A118319.P12162262702835210939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118319.P12162262702835210939

namespace A118319

/-- `A006519(n+1)+∑[A001511(n+1)-1]` -/
def P12162262702835210939.Spec : Prop :=
  ∀ n, P12162262702835210939.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P4134206874823495810

`∑[val(n+1, 2)]+A000010(A038712(n+1)+1)`
-/

namespace A118319.P4134206874823495810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000010 (A038712 (n + 1) + 1).toNat

end

end A118319.P4134206874823495810

namespace A118319

/-- `∑[val(n+1, 2)]+A000010(A038712(n+1)+1)` -/
def P4134206874823495810.Spec : Prop :=
  ∀ n, P4134206874823495810.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P9811306678184379151

`A006519(n+1)+∑[A001222(and(n+1, -(n+1)))]`
-/

namespace A118319.P9811306678184379151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118319.P9811306678184379151

namespace A118319

/-- `A006519(n+1)+∑[A001222(and(n+1, -(n+1)))]` -/
def P9811306678184379151.Spec : Prop :=
  ∀ n, P9811306678184379151.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P3225898513823396773

`A006519(n+1)+∑[A001222(xor(n, n+1)+1)-1]`
-/

namespace A118319.P3225898513823396773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor n (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118319.P3225898513823396773

namespace A118319

/-- `A006519(n+1)+∑[A001222(xor(n, n+1)+1)-1]` -/
def P3225898513823396773.Spec : Prop :=
  ∀ n, P3225898513823396773.a n = A118319 (n + 1)

end A118319

/-! ## A118319.P13684529524292894384

`A086799(n+1)-A000120(A129760(n+1))`
-/

namespace A118319.P13684529524292894384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1) - A000120 (A129760 (n + 1)).toNat

end

end A118319.P13684529524292894384

namespace A118319

/-- `A086799(n+1)-A000120(A129760(n+1))` -/
def P13684529524292894384.Spec : Prop :=
  ∀ n, P13684529524292894384.a n = A118319 (n + 1)

end A118319

/-!
# A118325: (Greedy) Egyptian fraction expansion of frac(sqrt(3)) = sqrt(3)-1.

The programs for A118325, there is no canonical definition to state claims against.
-/

/-! ## A118325.P6947044156319142596

`A224231(n+1)`
-/

namespace A118325.P6947044156319142596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224231 (n + 1)

end

end A118325.P6947044156319142596

/-! ## A118325.P9015136490334852329

`record[A224231(A193592(n))]`
-/

namespace A118325.P9015136490334852329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224231 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118325.P9015136490334852329

/-! ## A118325.P17048187116584890236

`record[A224231(∑[A111317(n)])]`
-/

namespace A118325.P17048187116584890236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224231 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118325.P17048187116584890236

/-! ## A118325.P12112443930590904015

`record[A224231(∑[A111335(n)])]`
-/

namespace A118325.P12112443930590904015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224231 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118325.P12112443930590904015

/-!
# A118330: a(n-1)*a(n-4) + a(n-2)*a(n-5) + a(n-3)*a(n-6), with a(k

The programs for A118330, there is no canonical definition to state claims against.
-/

/-! ## A118330.P9930969280727966982

`and(A006722(n), A140480(A285227(n+2)))`
-/

namespace A118330.P9930969280727966982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006722 n) (A140480 (A285227 (n + 2)).toNat)

end

end A118330.P9930969280727966982

/-! ## A118330.P15492140834370973263

`A132667(A146010(n+1))`
-/

namespace A118330.P15492140834370973263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132667 (A146010 (n + 1)).toNat

end

end A118330.P15492140834370973263

/-! ## A118330.P15517734134343072682

`or(1, A049107(A000664(n)))`
-/

namespace A118330.P15517734134343072682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049107 (A000664 n).toNat)

end

end A118330.P15517734134343072682

/-! ## A118330.P10055600665468269457

`or(1, A182635(A001591(n)))`
-/

namespace A118330.P10055600665468269457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A182635 (A001591 n).toNat)

end

end A118330.P10055600665468269457

/-! ## A118330.P6190287685431811082

`or(1, A113452(A113435(n)))`
-/

namespace A118330.P6190287685431811082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113452 (A113435 n).toNat)

end

end A118330.P6190287685431811082

/-!
# A118333: Largest prime factor of n!! + (n+1)!!.

The programs for A118333, there is no canonical definition to state claims against.
-/

/-! ## A118333.P1695079528315876810

`A006530(A076051(n+1))`
-/

namespace A118333.P1695079528315876810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076051 (n + 1)).toNat

end

end A118333.P1695079528315876810

/-! ## A118333.P6283026168099422949

`A006530(A060696(n+2))`
-/

namespace A118333.P6283026168099422949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060696 (n + 2)).toNat

end

end A118333.P6283026168099422949

/-! ## A118333.P11587256655104813479

`A006530(A006882(n+1)+A006882(n))`
-/

namespace A118333.P11587256655104813479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006882 (n + 1) + A006882 n).toNat

end

end A118333.P11587256655104813479

/-! ## A118333.P15369529505391825067

`A346088(A006882(n+1)+A006882(n))`
-/

namespace A118333.P15369529505391825067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (A006882 (n + 1) + A006882 n).toNat

end

end A118333.P15369529505391825067

/-! ## A118333.P12658641725970703889

`A323129(A072345(n)*A076051(n+1))`
-/

namespace A118333.P12658641725970703889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (A072345 n * A076051 (n + 1)).toNat

end

end A118333.P12658641725970703889

/-!
# A118334: a(n-1)*a(n-6) + a(n-2)*a(n-7) + a(n-3)*a(n-8) + a(n-4)*a(n-9), with a(k

The programs for A118334, there is no canonical definition to state claims against.
-/

/-! ## A118334.P15427987872324853565

`A000288(A058360(n+1)%A153662(n+5))`
-/

namespace A118334.P15427987872324853565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (Int.tmod (A058360 (n + 1)) (A153662 (n + 5))).toNat

end

end A118334.P15427987872324853565

/-! ## A118334.P768885785498177366

`A000288(A003105(n+2))%A234921(A056115(n)+21)`
-/

namespace A118334.P768885785498177366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000288 (A003105 (n + 2)).toNat) (A234921 (A056115 n + 21).toNat)

end

end A118334.P768885785498177366

/-! ## A118334.P2161732771569106541

`A353367(A060455(n)*A062383(3*n+2))`
-/

namespace A118334.P2161732771569106541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (A060455 n * A062383 (3 * n + 2)).toNat

end

end A118334.P2161732771569106541

/-!
# A118335: a(n)= smallest multiple of (prime(n+1)-prime(n)) which is >= prime(n+1), where prime(m) is the m-th prime.

The programs for A118335, there is no canonical definition to state claims against.
-/

/-! ## A118335.P3817052414970233165

`A058263(n+1)+p?[a(n-1)+2]-1` with `a(0)=1`
-/

namespace A118335.P3817052414970233165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A118335.P3817052414970233165

/-! ## A118335.P10365184511007455067

`A058263(n+1)+A006093(n+2)`
-/

namespace A118335.P10365184511007455067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + A006093 (n + 2)

end

end A118335.P10365184511007455067

/-! ## A118335.P3413802798672459768

`A058263(n+1)+A039915(n+2)`
-/

namespace A118335.P3413802798672459768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + A039915 (n + 2)

end

end A118335.P3413802798672459768

/-! ## A118335.P4351322302828501056

`A113709(n+2)-Δ[A058263(n+1)]`
-/

namespace A118335.P4351322302828501056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2) - (f1 (n + 1) - f1 n)

end

end A118335.P4351322302828501056

/-! ## A118335.P7421153326890738622

`A058263(n+1)+record[A037225(n+1)]`
-/

namespace A118335.P7421153326890738622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118335.P7421153326890738622

/-! ## A118335.P1321897086571694420

`A058263(n+1)+record[A060684(n+1)]`
-/

namespace A118335.P1321897086571694420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118335.P1321897086571694420

/-! ## A118335.P8253952756243394595

`A058263(n+1)+record[A000010(n+3)]`
-/

namespace A118335.P8253952756243394595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118335.P8253952756243394595

/-! ## A118335.P18304701476662555728

`A058263(n+1)+A065091(n+1)-1`
-/

namespace A118335.P18304701476662555728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + (A065091 (n + 1) - 1)

end

end A118335.P18304701476662555728

/-! ## A118335.P15699734422302419466

`A058263(n+1)+A000040(n+2)-1`
-/

namespace A118335.P15699734422302419466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) + (A000040 (n + 2) - 1)

end

end A118335.P15699734422302419466

/-! ## A118335.P321738183349837212

`A118336(n+1)+2*A001223(n+1)`
-/

namespace A118335.P321738183349837212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118336 (n + 1) + 2 * A001223 (n + 1)

end

end A118335.P321738183349837212

/-!
# A118336: a(n) = greatest multiple of (p(n+1) - p(n)) which is < p(n), where p(m) is the m-th prime.

The programs for A118336, there is no canonical definition to state claims against.
-/

/-! ## A118336.P5618756406852596900

`record[A110560(n)]-A060234(n+1)`
-/

namespace A118336.P5618756406852596900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060234 (n + 1)

end

end A118336.P5618756406852596900

/-! ## A118336.P9254970104971492526

`record[A128059(n)]-A060234(n+1)`
-/

namespace A118336.P9254970104971492526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060234 (n + 1)

end

end A118336.P9254970104971492526

/-! ## A118336.P10367675094260405173

`A006005(n+1)-A060234(n+1)`
-/

namespace A118336.P10367675094260405173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A060234 (n + 1)

end

end A118336.P10367675094260405173

/-! ## A118336.P4666882665077795877

`A176997(n+1)-A060234(n+1)`
-/

namespace A118336.P4666882665077795877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1) - A060234 (n + 1)

end

end A118336.P4666882665077795877

/-! ## A118336.P15177744442693823391

`record[A020639(or(1, n))]-A060234(n+1)`
-/

namespace A118336.P15177744442693823391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060234 (n + 1)

end

end A118336.P15177744442693823391

/-! ## A118336.P12258171714333022606

`A000040(n+1)-or(1, A060234(n+1))`
-/

namespace A118336.P12258171714333022606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - Int.lor 1 (A060234 (n + 1))

end

end A118336.P12258171714333022606

/-! ## A118336.P6822258970901975958

`record[A006530(2*n+1)]-A060234(n+1)`
-/

namespace A118336.P6822258970901975958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060234 (n + 1)

end

end A118336.P6822258970901975958

/-! ## A118336.P9750748518423762913

`record[A020639(2*n+1)]-A060234(n+1)`
-/

namespace A118336.P9750748518423762913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A060234 (n + 1)

end

end A118336.P9750748518423762913

/-! ## A118336.P5514573177038097713

`or(1, eq[2, A000005(n+1)])-A060234(n+1)`
-/

namespace A118336.P5514573177038097713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ) - A060234 (n + 1)

end

end A118336.P5514573177038097713

/-! ## A118336.P7488238253823545782

`A006093(n+1)+A058263(n+1)-A075526(n+1)`
-/

namespace A118336.P7488238253823545782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A058263 (n + 1) - A075526 (n + 1))

end

end A118336.P7488238253823545782

/-!
# A118337: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2 + (x + 23)^2 = y^2.

The programs for A118337, the canonical program `A118337.P2724419399988211039` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118337 has offset 1).

The definition of A118337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118337.P2724419399988211039

`6*a(n-3)-a(n-6)+46` with `a(0)=0, a(1)=12, a(2)=33, a(3)=69, a(4)=133, a(5)=252`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118337

/-- `6*a(n-3)-a(n-6)+46` -/
def P2724419399988211039.Spec : Prop :=
  ∀ n, P2724419399988211039.a n = A118337 (n + 1)

theorem P2724419399988211039.correct : P2724419399988211039.Spec := by
  intro n
  simp only [A118337, Nat.add_sub_cancel]

end A118337

/-! ## A118337.P16207334963110703596

`A206426(3*n+1)/7`
-/

namespace A118337.P16207334963110703596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206426 (3 * n + 1) : ℚ) / 7

end

end A118337.P16207334963110703596

namespace A118337

/-- `A206426(3*n+1)/7` -/
def P16207334963110703596.Spec : Prop :=
  ∀ n, P16207334963110703596.a n = (A118337 (n + 1) : ℚ)

end A118337

/-! ## A118337.P12531992360765948825

`round(A206426(Δ[n²]+n)/7)`
-/

namespace A118337.P12531992360765948825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A206426 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / 7)

end

end A118337.P12531992360765948825

namespace A118337

/-- `round(A206426(Δ[n²]+n)/7)` -/
def P12531992360765948825.Spec : Prop :=
  ∀ n, P12531992360765948825.a n = A118337 (n + 1)

end A118337

/-!
# A118339: Number of simple chains with n-1 edges strongly embedded in a simple cubic lattice.

The programs for A118339, there is no canonical definition to state claims against.
-/

/-! ## A118339.P4404133507066428669

`ceil(A174319(n)/2)`
-/

namespace A118339.P4404133507066428669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174319 n : ℚ) / 2⌉

end

end A118339.P4404133507066428669

/-! ## A118339.P15906708236863345332

`A174319(n)/A108248(n)`
-/

namespace A118339.P15906708236863345332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174319 n : ℚ) / (A108248 n : ℚ)

end

end A118339.P15906708236863345332

/-! ## A118339.P15392149967311034839

`A174319(n)/A036453(n+1)`
-/

namespace A118339.P15392149967311034839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174319 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A118339.P15392149967311034839

/-! ## A118339.P6691057156670162896

`A174319(n)/A063918(2*(n+1))!`
-/

namespace A118339.P6691057156670162896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174319 n : ℚ) / (Nat.factorial (A063918 (2 * (n + 1))).toNat : ℚ)

end

end A118339.P6691057156670162896

/-!
# A118340: Pendular triangle, read by rows, where row n is formed from row n-1 by the recurrence: if n > 2k, T(n,k) = T(n,n-k) + T(n-1,k), else T(n,k) = T(n,n-1-k) + T(n-1,k), for n>=k>0, with T(n,0) = 1 and T(n,n) = 0^n.

The programs for A118340, there is no canonical definition to state claims against.
-/

/-! ## A118340.P13379326751422010295

`A127321(lcm(4, A257050(n+1)))`
-/

namespace A118340.P13379326751422010295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Int.lcm 4 (A257050 (n + 1)))

end

end A118340.P13379326751422010295

/-! ## A118340.P12213229870443408893

`A213276(n)-A018843(A053534(n))`
-/

namespace A118340.P12213229870443408893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n - A018843 (A053534 n).toNat

end

end A118340.P12213229870443408893

/-! ## A118340.P10937495403604285062

`A210391(n)-A023969(A052326(n))`
-/

namespace A118340.P10937495403604285062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n - A023969 (A052326 n).toNat

end

end A118340.P10937495403604285062

/-! ## A118340.P16833783935720362424

`A213276(n)-A001842(A155971(n))`
-/

namespace A118340.P16833783935720362424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n - A001842 (A155971 n).toNat

end

end A118340.P16833783935720362424

/-! ## A118340.P13284367004150846844

`A213276(n)-A102683(A058343(n))`
-/

namespace A118340.P13284367004150846844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n - A102683 (A058343 n).toNat

end

end A118340.P13284367004150846844

/-!
# A118341: Self-convolution square of A108447.

The programs for A118341, there is no canonical definition to state claims against.
-/

/-! ## A118341.P10672031265112286762

`A108447(n+1)+A108447(n)-A118342(n)`
-/

namespace A118341.P10672031265112286762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108447 (n + 1) + (A108447 n - A118342 n)

end

end A118341.P10672031265112286762

/-! ## A118341.P16170532829095301043

`A118340(A056220(n+1))`
-/

namespace A118341.P16170532829095301043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A056220 (n + 1)).toNat

end

end A118341.P16170532829095301043

/-! ## A118341.P7627101056327478245

`A118340(∑[record[A145979(n)]])`
-/

namespace A118341.P7627101056327478245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118341.P7627101056327478245

/-! ## A118341.P5781859334532986116

`A118340(A004273((n+1)²))`
-/

namespace A118341.P5781859334532986116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A004273 ((n + 1) ^ 2)).toNat

end

end A118341.P5781859334532986116

/-! ## A118341.P1832030458545846391

`A118340(A001844(n)+2*n)`
-/

namespace A118341.P1832030458545846391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A001844 n + (2 * n : ℤ)).toNat

end

end A118341.P1832030458545846391

/-!
# A118342: Self-convolution cube of A108447.

The programs for A118342, there is no canonical definition to state claims against.
-/

/-! ## A118342.P12405977091298918102

`A108447(n+1)+A108447(n)-A118341(n)`
-/

namespace A118342.P12405977091298918102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108447 (n + 1) + (A108447 n - A118341 n)

end

end A118342.P12405977091298918102

/-! ## A118342.P1857158073515853502

`A118340(A132209(n+1))`
-/

namespace A118342.P1857158073515853502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A132209 (n + 1)).toNat

end

end A118342.P1857158073515853502

/-! ## A118342.P13656137893772263781

`A118340(A142463(n+1))`
-/

namespace A118342.P13656137893772263781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A142463 (n + 1)).toNat

end

end A118342.P13656137893772263781

/-! ## A118342.P8667674148808084063

`A118340(A046092(n+1)-1)`
-/

namespace A118342.P8667674148808084063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A046092 (n + 1) - 1).toNat

end

end A118342.P8667674148808084063

/-! ## A118342.P15734149418137417035

`A118340(A001844(n+1)-2)`
-/

namespace A118342.P15734149418137417035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A001844 (n + 1) - 2).toNat

end

end A118342.P15734149418137417035

/-!
# A118343: Triangle, read by rows, where diagonals are successive self-convolutions of A108447.

The programs for A118343, there is no canonical definition to state claims against.
-/

/-! ## A118343.P12910664802674213246

`A012265(A381569(n))`
-/

namespace A118343.P12910664802674213246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A381569 n).toNat

end

end A118343.P12910664802674213246

/-! ## A118343.P2871402747258358194

`A123580(A396972(n+1))`
-/

namespace A118343.P2871402747258358194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A396972 (n + 1)).toNat

end

end A118343.P2871402747258358194

/-! ## A118343.P11025446782098747817

`A394901(n)%A097270(A277741(n+1))`
-/

namespace A118343.P11025446782098747817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394901 n) (A097270 (A277741 (n + 1)).toNat)

end

end A118343.P11025446782098747817

/-! ## A118343.P17433522960364083503

`lcm(A005423(A124540(n))-1, A065941(n)²)`
-/

namespace A118343.P17433522960364083503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005423 (A124540 n).toNat - 1) (A065941 n ^ 2)

end

end A118343.P17433522960364083503

/-! ## A118343.P219740795666248918

`(A005423(A124540(n))-1)*A054124(A237018(n+4))`
-/

namespace A118343.P219740795666248918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005423 (A124540 n).toNat - 1) * A054124 (A237018 (n + 4)).toNat

end

end A118343.P219740795666248918

/-!
# A118344: Pendular Catalan triangle, read by rows, where row n is formed from row n-1 by the recurrence: if n > 2k, T(n,k) = T(n,n-k) + T(n-1,k), else T(n,k) = T(n,n-1-k) - T(n-1,k) - T(n-1,k+1), for n>=k>=0, with T(n,0)=1 and T(n,n)=0^n.

The programs for A118344, there is no canonical definition to state claims against.
-/

/-! ## A118344.P8047446113605031086

`A050176(n+1)+A037012(n*A101688(n))`
-/

namespace A118344.P8047446113605031086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (n + 1) + A037012 ((n : ℤ) * A101688 n).toNat

end

end A118344.P8047446113605031086

/-! ## A118344.P9079006791240679439

`A050176(n+1)+A037012(n*A340507(n))`
-/

namespace A118344.P9079006791240679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (n + 1) + A037012 ((n : ℤ) * A340507 n).toNat

end

end A118344.P9079006791240679439

/-! ## A118344.P13557154668531180403

`A050176(n+1)-A008482(n*A101688(n))`
-/

namespace A118344.P13557154668531180403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (n + 1) - A008482 ((n : ℤ) * A101688 n).toNat

end

end A118344.P13557154668531180403

/-! ## A118344.P5069307614759740628

`A050176(n+1)-A008482(n*A340507(n))`
-/

namespace A118344.P5069307614759740628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (n + 1) - A008482 ((n : ℤ) * A340507 n).toNat

end

end A118344.P5069307614759740628

/-! ## A118344.P1208032074925061539

`A050176(n+1)-A112467(n)*A340507(n)`
-/

namespace A118344.P1208032074925061539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (n + 1) - A112467 n * A340507 n

end

end A118344.P1208032074925061539

/-!
# A118345: Pendular triangle, read by rows, where row n is formed from row n-1 by the recurrence: if n > 2k, T(n,k) = T(n,n-k) + T(n-1,k), else T(n,k) = T(n,n-1-k) + 2*T(n-1,k), for n>=k>=0, with T(n,0) = 1 and T(n,n) = 0^n.

The programs for A118345, there is no canonical definition to state claims against.
-/

/-! ## A118345.P9538240062850151795

`A350364(n)+A117054(A321312(n))`
-/

namespace A118345.P9538240062850151795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350364 n + A117054 (A321312 n).toNat

end

end A118345.P9538240062850151795

/-! ## A118345.P76390474328700873

`A122200(C(A062707(n), A002262(n)))`
-/

namespace A118345.P76390474328700873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (Nat.choose (A062707 n).toNat (A002262 n).toNat)

end

end A118345.P76390474328700873

/-! ## A118345.P3829611440354004696

`or(A025827(A321312(n)), A210391(n))`
-/

namespace A118345.P3829611440354004696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025827 (A321312 n).toNat) (A210391 n)

end

end A118345.P3829611440354004696

/-! ## A118345.P17110528004959583448

`or(A210391(n), A340998(A174545(n)))`
-/

namespace A118345.P17110528004959583448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210391 n) (A340998 ((A174545 n).toNat + 140))

end

end A118345.P17110528004959583448

/-! ## A118345.P3631656206198033393

`A246118(n+2)-A121373(A276086(3*n+1))`
-/

namespace A118345.P3631656206198033393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246118 (n + 2) - A121373 (A276086 (3 * n + 1)).toNat

end

end A118345.P3631656206198033393

/-!
# A118346: Central terms of pendular triangle A118345.

The programs for A118346, there is no canonical definition to state claims against.
-/

/-! ## A118346.P1854970416556983688

`A336707(∑[n+3]+n+3)`
-/

namespace A118346.P1854970416556983688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336707 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A118346.P1854970416556983688

/-! ## A118346.P10353457761839074595

`A118345(∑[4*n])`
-/

namespace A118346.P10353457761839074595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118346.P10353457761839074595

/-! ## A118346.P8332007898581939523

`A118345(A046092(n))%A037055(n)`
-/

namespace A118346.P8332007898581939523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118345 (A046092 n).toNat) (A037055 n)

end

end A118346.P8332007898581939523

/-! ## A118346.P11185436114232391013

`lcm(A097807(n), A118345(A046092(n)))`
-/

namespace A118346.P11185436114232391013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A118345 (A046092 n).toNat)

end

end A118346.P11185436114232391013

/-! ## A118346.P8846343437865375839

`A118345(A046092(n))+A000038(A008578(n+1))`
-/

namespace A118346.P8846343437865375839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A046092 n).toNat + A000038 (A008578 (n + 1)).toNat

end

end A118346.P8846343437865375839

/-! ## A118346.P3946381381204212175

`A118345(A046092(n))+A000038(A053050(n+1))`
-/

namespace A118346.P3946381381204212175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A046092 n).toNat + A000038 (A053050 (n + 1)).toNat

end

end A118346.P3946381381204212175

/-! ## A118346.P15260008927637188989

`A118345(A046092(n))+A000038(A167794(n+1))`
-/

namespace A118346.P15260008927637188989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A046092 n).toNat + A000038 (A167794 (n + 1)).toNat

end

end A118346.P15260008927637188989

/-! ## A118346.P6949352787653582464

`A118349(∑[n+2]-1)`
-/

namespace A118346.P6949352787653582464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118349 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A118346.P6949352787653582464

/-! ## A118346.P785319442807271229

`A118347(n)-A118345(2*(n+1)²)`
-/

namespace A118346.P785319442807271229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118347 n - A118345 (2 * (n + 1) ^ 2)

end

end A118346.P785319442807271229

/-!
# A118347: Semi-diagonal (one row below central terms) of pendular triangle A118345 and equal to the self-convolution of the central terms (A118346).

The programs for A118347, there is no canonical definition to state claims against.
-/

/-! ## A118347.P920106127322573918

`A118345(∑[4*n+1]+n)`
-/

namespace A118347.P920106127322573918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A118347.P920106127322573918

/-! ## A118347.P8502649312519818581

`A118349(∑[n+3])`
-/

namespace A118347.P8502649312519818581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118347.P8502649312519818581

/-! ## A118347.P10662258811411946633

`record[A118349(n)/A039599(n+2)]`
-/

namespace A118347.P10662258811411946633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118349 n : ℚ) / (A039599 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118347.P10662258811411946633

/-! ## A118347.P1039971905671607185

`record[A118349(n)/A046899(n+3)]`
-/

namespace A118347.P1039971905671607185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118349 n : ℚ) / (A046899 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118347.P1039971905671607185

/-! ## A118347.P4520998790276722331

`record[A118349(n)/A118357(n+3)]`
-/

namespace A118347.P4520998790276722331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118349 n : ℚ) / (A118357 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118347.P4520998790276722331

/-!
# A118348: Semi-diagonal (two rows below central terms) of pendular triangle A118345 and equal to the self-convolution cube of the central terms (A118346).

The programs for A118348, there is no canonical definition to state claims against.
-/

/-! ## A118348.P7596730701483095481

`A118345(A132209(n+1))`
-/

namespace A118348.P7596730701483095481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A132209 (n + 1)).toNat

end

end A118348.P7596730701483095481

/-! ## A118348.P10581223073794129470

`A118345(A142463(n+1))`
-/

namespace A118348.P10581223073794129470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A142463 (n + 1)).toNat

end

end A118348.P10581223073794129470

/-! ## A118348.P1154080911077882621

`A118345(A046092(n+1)-1)`
-/

namespace A118348.P1154080911077882621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A046092 (n + 1) - 1).toNat

end

end A118348.P1154080911077882621

/-! ## A118348.P4728892842779707822

`A118345(A004273(∑[2*(n+1)]))`
-/

namespace A118348.P4728892842779707822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118345 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118348.P4728892842779707822

/-! ## A118348.P6559378114814956478

`record[gcd(A118340(n), A118345(4*n+3))]`
-/

namespace A118348.P6559378114814956478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118340 n) (A118345 (4 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118348.P6559378114814956478

/-!
# A118349: Convolution triangle, read by rows, where diagonals are successive self-convolutions of A118346.

The programs for A118349, there is no canonical definition to state claims against.
-/

/-! ## A118349.P575173631069589181

`A385061(n)-A107846(A221913(n+1))`
-/

namespace A118349.P575173631069589181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385061 n - A107846 (A221913 (n + 1)).toNat

end

end A118349.P575173631069589181

/-! ## A118349.P16714747871677573669

`A381592(A055648(n))`
-/

namespace A118349.P16714747871677573669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381592 (A055648 n).toNat

end

end A118349.P16714747871677573669

/-! ## A118349.P490994417092529324

`A075162(A384751(n))`
-/

namespace A118349.P490994417092529324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075162 (A384751 n).toNat

end

end A118349.P490994417092529324

/-! ## A118349.P1009278363043372398

`A163352(A396504(n))`
-/

namespace A118349.P1009278363043372398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A396504 n).toNat

end

end A118349.P1009278363043372398

/-! ## A118349.P9416444941672745825

`A199087(A381569(n))`
-/

namespace A118349.P9416444941672745825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199087 (A381569 n).toNat

end

end A118349.P9416444941672745825

/-!
# A118350: Pendular triangle, read by rows, where row n is formed from row n-1 by the recurrence: if n > 2k, T(n,k) = T(n,n-k) + T(n-1,k), else T(n,k) = T(n,n-1-k) + 3*T(n-1,k), for n>=k>=0, with T(n,0)=1 and T(n,n)=0^n.

The programs for A118350, there is no canonical definition to state claims against.
-/

/-! ## A118350.P11400271246474848351

`A361950(n)%A054760(A154458(n))`
-/

namespace A118350.P11400271246474848351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361950 n) (A054760 (A154458 n).toNat)

end

end A118350.P11400271246474848351

/-! ## A118350.P9159685496445625430

`or(A071921(n), A221474(A331161(n)))`
-/

namespace A118350.P9159685496445625430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071921 n) (A221474 (A331161 n).toNat)

end

end A118350.P9159685496445625430

/-! ## A118350.P14140352527437476383

`or(A118340(n), A221474(A331161(n)))`
-/

namespace A118350.P14140352527437476383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118340 n) (A221474 (A331161 n).toNat)

end

end A118350.P14140352527437476383

/-! ## A118350.P10053491732383457415

`or(A210391(n), A348528(A174545(n)))`
-/

namespace A118350.P10053491732383457415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210391 n) (A348528 (A174545 n).toNat)

end

end A118350.P10053491732383457415

/-! ## A118350.P3510697334441289762

`or(A213276(n), A221474(A331161(n)))`
-/

namespace A118350.P3510697334441289762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213276 n) (A221474 (A331161 n).toNat)

end

end A118350.P3510697334441289762

/-!
# A118351: Central terms of pendular triangle A118350.

The programs for A118351, there is no canonical definition to state claims against.
-/

/-! ## A118351.P304772730767451263

`A118354(∑[n+2]-1)`
-/

namespace A118351.P304772730767451263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A118351.P304772730767451263

/-! ## A118351.P8290498029275678

`gcd(A000038(n), A118354(A034856(n+1)))`
-/

namespace A118351.P8290498029275678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A118354 (A034856 (n + 1)).toNat)

end

end A118351.P8290498029275678

/-! ## A118351.P13148705724035961480

`lcm(A033999(n), A118354(A034856(n+1)))`
-/

namespace A118351.P13148705724035961480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A118354 (A034856 (n + 1)).toNat)

end

end A118351.P13148705724035961480

/-! ## A118351.P9414575177802271874

`or(A000007(n), A118354(A034856(n+1)))`
-/

namespace A118351.P9414575177802271874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A118354 (A034856 (n + 1)).toNat)

end

end A118351.P9414575177802271874

/-! ## A118351.P10849145446300655420

`A033999(2*n)*A118354(A034856(n+1))`
-/

namespace A118351.P10849145446300655420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A118354 (A034856 (n + 1)).toNat

end

end A118351.P10849145446300655420

/-! ## A118351.P7023854445991860724

`A118354(A034856(n+1))%A238993(n+1)`
-/

namespace A118351.P7023854445991860724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118354 (A034856 (n + 1)).toNat) (A238993 (n + 1))

end

end A118351.P7023854445991860724

/-! ## A118351.P6160689408218848042

`A118350(∑[4*n])`
-/

namespace A118351.P6160689408218848042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118351.P6160689408218848042

/-! ## A118351.P9441063788339643587

`lcm(A087960(n), A118350(A046092(n)))`
-/

namespace A118351.P9441063788339643587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A118350 (A046092 n).toNat)

end

end A118351.P9441063788339643587

/-! ## A118351.P4453766565060019253

`A118352(n)-A118350(2*(n+1)²)`
-/

namespace A118351.P4453766565060019253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118352 n - A118350 (2 * (n + 1) ^ 2)

end

end A118351.P4453766565060019253

/-!
# A118352: Semi-diagonal (one row below central terms) of pendular triangle A118350 and equal to the self-convolution of the central terms (A118351).

The programs for A118352, there is no canonical definition to state claims against.
-/

/-! ## A118352.P16555021634205574165

`A118354(∑[n+3])`
-/

namespace A118352.P16555021634205574165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118352.P16555021634205574165

/-! ## A118352.P2306026526952841640

`record[A118354(n)/A118357(n+3)]`
-/

namespace A118352.P2306026526952841640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118354 n : ℚ) / (A118357 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118352.P2306026526952841640

/-! ## A118352.P13173098128093710948

`A118354(A055998(n+1))^A178334(n)`
-/

namespace A118352.P13173098128093710948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118354 (A055998 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A118352.P13173098128093710948

/-! ## A118352.P4776073533541813153

`A118354(A055998(n+1))+A000038(3*n+4)`
-/

namespace A118352.P4776073533541813153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 (A055998 (n + 1)).toNat + A000038 (3 * n + 4)

end

end A118352.P4776073533541813153

/-! ## A118352.P9714714555050911305

`A118354(A055998(n+1))*A188470(A178334(n)+1)`
-/

namespace A118352.P9714714555050911305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 (A055998 (n + 1)).toNat * A188470 (A178334 n + 1).toNat

end

end A118352.P9714714555050911305

/-! ## A118352.P8286641969548615122

`A118350(∑[4*n+1]+n)`
-/

namespace A118352.P8286641969548615122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118350 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A118352.P8286641969548615122

/-!
# A118353: Semi-diagonal (two rows below central terms) of pendular triangle A118350 and equal to the self-convolution cube of the central terms (A118351).

The programs for A118353, there is no canonical definition to state claims against.
-/

/-! ## A118353.P6737602187282805546

`A118354(∑[n+3]+n+3)`
-/

namespace A118353.P6737602187282805546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A118353.P6737602187282805546

/-! ## A118353.P5776819033991255929

`record[A118354(abs(A046691(n)))]`
-/

namespace A118353.P5776819033991255929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118353.P5776819033991255929

/-! ## A118353.P13117622177588192646

`A118350(3*(n+1)²-n²)`
-/

namespace A118353.P13117622177588192646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118350 (3 * (n + 1) ^ 2 - n ^ 2)

end

end A118353.P13117622177588192646

/-! ## A118353.P13660578409347307863

`record[A118350(floor((n+2)^gcd(2, n+1)/2)-1)]`
-/

namespace A118353.P13660578409347307863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118350 (⌊((n + 2) ^ Nat.gcd 2 (n + 1) : ℚ) / 2⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118353.P13660578409347307863

/-! ## A118353.P7359858715096037949

`record[A118350(A007606(2*n+1))]`
-/

namespace A118353.P7359858715096037949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118350 (A007606 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118353.P7359858715096037949

/-!
# A118354: Convolution triangle, read by rows, where diagonals are successive self-convolutions of A118351.

The programs for A118354, there is no canonical definition to state claims against.
-/

/-! ## A118354.P18210889451262111347

`A072088(A381592(n))+A007496(A070914(n))`
-/

namespace A118354.P18210889451262111347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A381592 n).toNat + A007496 (A070914 n).toNat

end

end A118354.P18210889451262111347

/-! ## A118354.P7519716289513280748

`A384621(n)-A185213(A355427(n))`
-/

namespace A118354.P7519716289513280748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384621 n - A185213 (A355427 n).toNat

end

end A118354.P7519716289513280748

/-! ## A118354.P7022632869378194480

`A367964(A384718(n))-A185213(A355427(n))`
-/

namespace A118354.P7022632869378194480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 (A384718 n).toNat - A185213 (A355427 n).toNat

end

end A118354.P7022632869378194480

/-! ## A118354.P15806267545802838137

`A384621(n)-A185213(A185213(n))`
-/

namespace A118354.P15806267545802838137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384621 n - A185213 (A185213 n).toNat

end

end A118354.P15806267545802838137

/-! ## A118354.P7865699986620567421

`A367964(A384718(n))-A185213(A185213(n))`
-/

namespace A118354.P7865699986620567421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 (A384718 n).toNat - A185213 (A185213 n).toNat

end

end A118354.P7865699986620567421

/-!
# A118355: Number of self-avoiding walks on a honeycomb lattice with a one-dimensional impenetrable boundary.

The programs for A118355, there is no canonical definition to state claims against.
-/

/-! ## A118355.P11559688165976776626

`A320143(A000051(n)+∏{p}[n+1, gcd(n, 1-#)])`
-/

namespace A118355.P11559688165976776626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320143 (A000051 n + ((∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (n : ℤ) (1 - (p : ℤ)) : ℕ) : ℤ)).toNat

end

end A118355.P11559688165976776626

/-!
# A118356: Number of clusters with n vertices, n-1 edges and zero contacts on the simple cubic lattice.

The programs for A118356, there is no canonical definition to state claims against.
-/

/-! ## A118356.P12448468989382849697

`or(A059399(A005809(n)), A233275(n))`
-/

namespace A118356.P12448468989382849697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059399 (A005809 n).toNat) (A233275 n)

end

end A118356.P12448468989382849697

/-! ## A118356.P16953708511058325636

`A005809(n)-A096008(A343869(2*n+1))`
-/

namespace A118356.P16953708511058325636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A096008 (A343869 (2 * n + 1)).toNat

end

end A118356.P16953708511058325636

/-!
# A118359: Primes for which the weight as defined in A117078 is 7 and the gap as defined in A001223 is 6.

The programs for A118359, the canonical program `A118359.P12469807509055540995` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118359 has offset 1).

The definition of A118359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118359.P1083749491138929281

`∩[A045473(n+1), A118741(n+1)]`
-/

namespace A118359.P1083749491138929281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P1083749491138929281

namespace A118359

/-- `∩[A045473(n+1), A118741(n+1)]` -/
def P1083749491138929281.Spec : Prop :=
  ∀ n, (P1083749491138929281.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P10250787876153354209

`∩[A045464(n+1), A118741(n+1)]`
-/

namespace A118359.P10250787876153354209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P10250787876153354209

namespace A118359

/-- `∩[A045464(n+1), A118741(n+1)]` -/
def P10250787876153354209.Spec : Prop :=
  ∀ n, (P10250787876153354209.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P17048553690847698697

`∩[A031924(n+1), A045464(n+1)]`
-/

namespace A118359.P17048553690847698697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P17048553690847698697

namespace A118359

/-- `∩[A031924(n+1), A045464(n+1)]` -/
def P17048553690847698697.Spec : Prop :=
  ∀ n, (P17048553690847698697.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P6435875984377920543

`∩[A031924(n+1), A045473(n+1)]`
-/

namespace A118359.P6435875984377920543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P6435875984377920543

namespace A118359

/-- `∩[A031924(n+1), A045473(n+1)]` -/
def P6435875984377920543.Spec : Prop :=
  ∀ n, (P6435875984377920543.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P4671050100832716887

`∩[A031924(n+1), A118741(n+1)]`
-/

namespace A118359.P4671050100832716887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P4671050100832716887

namespace A118359

/-- `∩[A031924(n+1), A118741(n+1)]` -/
def P4671050100832716887.Spec : Prop :=
  ∀ n, (P4671050100832716887.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P12469807509055540995

`p?[A031925(n+1)-A031924(n+1)%7]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A118359

/-- `p?[A031925(n+1)-A031924(n+1)%7]` -/
def P12469807509055540995.Spec : Prop :=
  ∀ n, P12469807509055540995.a n = A118359 (n + 1)

theorem P12469807509055540995.correct : P12469807509055540995.Spec := by
  intro n
  simp only [A118359, Nat.add_sub_cancel]

end A118359

/-! ## A118359.P14058220087247954267

`∩[A004624(n+1), A031924(n+1)]`
-/

namespace A118359.P14058220087247954267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P14058220087247954267

namespace A118359

/-- `∩[A004624(n+1), A031924(n+1)]` -/
def P14058220087247954267.Spec : Prop :=
  ∀ n, (P14058220087247954267.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P515885796604652952

`∩[A004624(n+1), A118741(n+1)]`
-/

namespace A118359.P515885796604652952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P515885796604652952

namespace A118359

/-- `∩[A004624(n+1), A118741(n+1)]` -/
def P515885796604652952.Spec : Prop :=
  ∀ n, (P515885796604652952.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P10552893123660110805

`∩[A031924(n+1), A045463(n+1)]`
-/

namespace A118359.P10552893123660110805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P10552893123660110805

namespace A118359

/-- `∩[A031924(n+1), A045463(n+1)]` -/
def P10552893123660110805.Spec : Prop :=
  ∀ n, (P10552893123660110805.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P17281925494960069637

`∩[A031924(n+1), A045472(n+1)]`
-/

namespace A118359.P17281925494960069637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P17281925494960069637

namespace A118359

/-- `∩[A031924(n+1), A045472(n+1)]` -/
def P17281925494960069637.Spec : Prop :=
  ∀ n, (P17281925494960069637.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P16968501158676282799

`∩[A045377(n+1), A118741(n+1)]`
-/

namespace A118359.P16968501158676282799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P16968501158676282799

namespace A118359

/-- `∩[A045377(n+1), A118741(n+1)]` -/
def P16968501158676282799.Spec : Prop :=
  ∀ n, (P16968501158676282799.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P6245716404248333771

`∩[A045389(n+1), A118741(n+1)]`
-/

namespace A118359.P6245716404248333771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P6245716404248333771

namespace A118359

/-- `∩[A045389(n+1), A118741(n+1)]` -/
def P6245716404248333771.Spec : Prop :=
  ∀ n, (P6245716404248333771.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P11286571694483008066

`∩[A045463(n+1), A118741(n+1)]`
-/

namespace A118359.P11286571694483008066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P11286571694483008066

namespace A118359

/-- `∩[A045463(n+1), A118741(n+1)]` -/
def P11286571694483008066.Spec : Prop :=
  ∀ n, (P11286571694483008066.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P14336142413654789105

`∩[A045472(n+1), A118741(n+1)]`
-/

namespace A118359.P14336142413654789105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P14336142413654789105

namespace A118359

/-- `∩[A045472(n+1), A118741(n+1)]` -/
def P14336142413654789105.Spec : Prop :=
  ∀ n, (P14336142413654789105.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P12114390292880303338

`∩[A045423(n+1), A118741(n+1)]`
-/

namespace A118359.P12114390292880303338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P12114390292880303338

namespace A118359

/-- `∩[A045423(n+1), A118741(n+1)]` -/
def P12114390292880303338.Spec : Prop :=
  ∀ n, (P12114390292880303338.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P12863080902935549034

`∩[A045434(n+1), A118741(n+1)]`
-/

namespace A118359.P12863080902935549034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P12863080902935549034

namespace A118359

/-- `∩[A045434(n+1), A118741(n+1)]` -/
def P12863080902935549034.Spec : Prop :=
  ∀ n, (P12863080902935549034.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P15262741208586695894

`∩[A045444(n+1), A118741(n+1)]`
-/

namespace A118359.P15262741208586695894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P15262741208586695894

namespace A118359

/-- `∩[A045444(n+1), A118741(n+1)]` -/
def P15262741208586695894.Spec : Prop :=
  ∀ n, (P15262741208586695894.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P3768222049634561801

`∩[A045455(n+1), A118741(n+1)]`
-/

namespace A118359.P3768222049634561801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P3768222049634561801

namespace A118359

/-- `∩[A045455(n+1), A118741(n+1)]` -/
def P3768222049634561801.Spec : Prop :=
  ∀ n, (P3768222049634561801.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P1998627910895617493

`∩[A118741(n+1), A258578(n+1)]`
-/

namespace A118359.P1998627910895617493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P1998627910895617493

namespace A118359

/-- `∩[A118741(n+1), A258578(n+1)]` -/
def P1998627910895617493.Spec : Prop :=
  ∀ n, (P1998627910895617493.a n : ℤ) = A118359 (n + 1)

end A118359

/-! ## A118359.P2915363824483782501

`∩[A045329(n+1), A118741(n+1)]`
-/

namespace A118359.P2915363824483782501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118359.P2915363824483782501

namespace A118359

/-- `∩[A045329(n+1), A118741(n+1)]` -/
def P2915363824483782501.Spec : Prop :=
  ∀ n, (P2915363824483782501.a n : ℤ) = A118359 (n + 1)

end A118359

/-!
# A118360: Start with 1; repeatedly reverse the digits when the number is written in binary and add 2 to get the next term.

The programs for A118360, the canonical program `A118360.P8984286927158600420` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118360 has offset 1).

The definition of A118360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118360.P8984286927158600420

`A057889(a(n-1))+2` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118360

/-- `A057889(a(n-1))+2` -/
def P8984286927158600420.Spec : Prop :=
  ∀ n, P8984286927158600420.a n = A118360 (n + 1)

theorem P8984286927158600420.correct : P8984286927158600420.Spec := by
  intro n
  simp only [A118360, Nat.add_sub_cancel]

end A118360

/-! ## A118360.P5842183579558758321

`A030101(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P5842183579558758321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030101 (a (n - 1)).toNat + 2

end

end A118360.P5842183579558758321

namespace A118360

/-- `A030101(a(n-1))+2` -/
def P5842183579558758321.Spec : Prop :=
  ∀ n, P5842183579558758321.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P14261652781284557021

`A056539(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P14261652781284557021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056539 (a (n - 1)).toNat + 2

end

end A118360.P14261652781284557021

namespace A118360

/-- `A056539(a(n-1))+2` -/
def P14261652781284557021.Spec : Prop :=
  ∀ n, P14261652781284557021.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P819056176375474405

`A163807(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P819056176375474405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163807 (a (n - 1)).toNat + 2

end

end A118360.P819056176375474405

namespace A118360

/-- `A163807(a(n-1))+2` -/
def P819056176375474405.Spec : Prop :=
  ∀ n, P819056176375474405.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P7521353995061088912

`A165789(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P7521353995061088912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165789 (a (n - 1)).toNat + 2

end

end A118360.P7521353995061088912

namespace A118360

/-- `A165789(a(n-1))+2` -/
def P7521353995061088912.Spec : Prop :=
  ∀ n, P7521353995061088912.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P16184285984302807587

`2*A049773(a(n-1))+1` with `a(0)=1`
-/

namespace A118360.P16184285984302807587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A049773 (a (n - 1)).toNat + 1

end

end A118360.P16184285984302807587

namespace A118360

/-- `2*A049773(a(n-1))+1` -/
def P16184285984302807587.Spec : Prop :=
  ∀ n, P16184285984302807587.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P17431855679846254548

`A055944(a(n-1))+2-a(n-1)` with `a(0)=1`
-/

namespace A118360.P17431855679846254548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055944 (a (n - 1)).toNat + 2 - a (n - 1)

end

end A118360.P17431855679846254548

namespace A118360

/-- `A055944(a(n-1))+2-a(n-1)` -/
def P17431855679846254548.Spec : Prop :=
  ∀ n, P17431855679846254548.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P17090014222613580426

`A006257(A145342(a(n-1)+1)-1)+2` with `a(0)=1`
-/

namespace A118360.P17090014222613580426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006257 (A145342 (a (n - 1) + 1).toNat - 1).toNat + 2

end

end A118360.P17090014222613580426

namespace A118360

/-- `A006257(A145342(a(n-1)+1)-1)+2` -/
def P17090014222613580426.Spec : Prop :=
  ∀ n, P17090014222613580426.a n = A118360 (n + 1)

end A118360

/-! ## A118360.P3073323747373248777

`A281589(2*a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P3073323747373248777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281589 (2 * a (n - 1)).toNat + 2

end

end A118360.P3073323747373248777

namespace A118360

/-- `A281589(2*a(n-1))+2` -/
def P3073323747373248777.Spec : Prop :=
  ∀ n, P3073323747373248777.a n = A118360 (n + 1)

end A118360

/-!
# A118361: Odd numbers missing from A118360.

The programs for A118361, there is no canonical definition to state claims against.
-/

/-! ## A118361.P7074305156554357739

`∩[comp[A118360(n+1)], Δ[n²]]`
-/

namespace A118361.P7074305156554357739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118360 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A118361.P7074305156554357739

/-! ## A118361.P1523952994157178993

`lt[A018252(A140263(n+2)), A140264(n)]`
-/

namespace A118361.P1523952994157178993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A140263 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118361.P1523952994157178993

/-!
# A118362: a(1)=1; for n>1, a(n) = "n AND a(n-1)" if that number is positive and not already in the sequence, otherwise a(n) = "n OR a(n-1)".

The programs for A118362, there is no canonical definition to state claims against.
-/

/-! ## A118362.P5225903115414976353

`xor(char[1]+n, A014684(2^val(n+1, 2)))`
-/

namespace A118362.P5225903115414976353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A014684 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P5225903115414976353

/-! ## A118362.P1718062475336419049

`xor(char[1]+n, A057521(2^val(n+1, 2)))`
-/

namespace A118362.P1718062475336419049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A057521 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P1718062475336419049

/-! ## A118362.P14742742024506008469

`xor(char[1]+n, A081676(2^val(n+1, 2)))`
-/

namespace A118362.P14742742024506008469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A081676 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P14742742024506008469

/-! ## A118362.P9330268820659338461

`xor(char[1]+n, A088440(2^val(n+1, 2)))`
-/

namespace A118362.P9330268820659338461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A088440 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P9330268820659338461

/-! ## A118362.P8862975771983448121

`xor(char[1]+n, A167185(2^val(n+1, 2)))`
-/

namespace A118362.P8862975771983448121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A167185 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P8862975771983448121

/-! ## A118362.P11825464890701518002

`xor(char[1]+n, A203025(2^val(n+1, 2)))`
-/

namespace A118362.P11825464890701518002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A203025 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P11825464890701518002

/-! ## A118362.P6279494231375890822

`xor(char[1]+n, A266188(2^val(n+1, 2)))`
-/

namespace A118362.P6279494231375890822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A266188 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P6279494231375890822

/-! ## A118362.P2353744398077915612

`xor(char[1]+n, A326478(2^val(n+1, 2)))`
-/

namespace A118362.P2353744398077915612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A326478 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P2353744398077915612

/-! ## A118362.P17462027558183754979

`xor(char[1]+n, A326690(2^val(n+1, 2)))`
-/

namespace A118362.P17462027558183754979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A326690 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A118362.P17462027558183754979

/-!
# A118363: Factorial base Niven (or Harshad) numbers: numbers that are divisible by the sum of their factorial base digits.

The programs for A118363, the canonical program `A118363.P17308598929900215827` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118363 has offset 1).

The definition of A118363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118363.P6195947561877021129

`eq[0, A286604(n+1)]+1`
-/

namespace A118363.P6195947561877021129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118363.P6195947561877021129

namespace A118363

/-- `eq[0, A286604(n+1)]+1` -/
def P6195947561877021129.Spec : Prop :=
  ∀ n, (P6195947561877021129.a n : ℤ) = A118363 (n + 1)

end A118363

/-! ## A118363.P5277010973904052771

`record[gcd(A000027(n+1), A286604(n+1))]`
-/

namespace A118363.P5277010973904052771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A286604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118363.P5277010973904052771

namespace A118363

/-- `record[gcd(A000027(n+1), A286604(n+1))]` -/
def P5277010973904052771.Spec : Prop :=
  ∀ n, (P5277010973904052771.a n : ℤ) = A118363 (n + 1)

end A118363

/-! ## A118363.P10173369323299461711

`record[n+1-A163102(3*A286604(n+1))]`
-/

namespace A118363.P10173369323299461711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A163102 (3 * A286604 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118363.P10173369323299461711

namespace A118363

/-- `record[n+1-A163102(3*A286604(n+1))]` -/
def P10173369323299461711.Spec : Prop :=
  ∀ n, P10173369323299461711.a n = A118363 (n + 1)

end A118363

/-! ## A118363.P12894717725469966929

`record[n+1-A000203(n+1)*A286604(n+1)]`
-/

namespace A118363.P12894717725469966929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (n + 1) * A286604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118363.P12894717725469966929

namespace A118363

/-- `record[n+1-A000203(n+1)*A286604(n+1)]` -/
def P12894717725469966929.Spec : Prop :=
  ∀ n, P12894717725469966929.a n = A118363 (n + 1)

end A118363

/-! ## A118363.P17308598929900215827

`record[gcd(n+1, (n+1)%A034968(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A118363

/-- `record[gcd(n+1, (n+1)%A034968(n+1))]` -/
def P17308598929900215827.Spec : Prop :=
  ∀ n, (P17308598929900215827.a n : ℤ) = A118363 (n + 1)

theorem P17308598929900215827.correct : P17308598929900215827.Spec := by
  intro n
  simp only [A118363, Nat.add_sub_cancel]

end A118363

/-! ## A118363.P274083282291181262

`lt[n*A286604(A028310(n)), n]`
-/

namespace A118363.P274083282291181262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A286604 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118363.P274083282291181262

namespace A118363

/-- `lt[n*A286604(A028310(n)), n]` -/
def P274083282291181262.Spec : Prop :=
  ∀ n, (P274083282291181262.a n : ℤ) = A118363 (n + 1)

end A118363

/-! ## A118363.P14068392274896338523

`record[n+1-A061579(n)*A286604(n+1)]`
-/

namespace A118363.P14068392274896338523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061579 n * A286604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118363.P14068392274896338523

namespace A118363

/-- `record[n+1-A061579(n)*A286604(n+1)]` -/
def P14068392274896338523.Spec : Prop :=
  ∀ n, P14068392274896338523.a n = A118363 (n + 1)

end A118363

/-!
# A118366: a(1) = 1, a(n+1) = a(n)^2 + 2^(1+mu(a(n))), where mu is the Moebius function (A008683).

The programs for A118366, there is no canonical definition to state claims against.
-/

/-! ## A118366.P17274078305300888590

`a(n-1)²+A341412(n+1)+1` with `a(0)=1, a(1)=5`
-/

namespace A118366.P17274078305300888590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) ^ 2 + (A341412 (n + 1) + 1)

end

end A118366.P17274078305300888590

/-!
# A118367: Largest number that is not the sum of five n-gonal numbers.

The programs for A118367, there is no canonical definition to state claims against.
-/

/-! ## A118367.P3442702436155544486

`A003873(A000325(n))-1`
-/

namespace A118367.P3442702436155544486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003873 (A000325 n).toNat - 1

end

end A118367.P3442702436155544486

/-! ## A118367.P8325983359836155118

`A003873(A129519(n))-1`
-/

namespace A118367.P8325983359836155118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003873 (A129519 n).toNat - 1

end

end A118367.P8325983359836155118

/-!
# A118369: Numbers k such that 1 + Product_{d|k} d is prime.

The programs for A118369, there is no canonical definition to state claims against.
-/

/-! ## A118369.P10875692125880551729

`eq[A046944(A028630(n)), A053000(n)]`
-/

namespace A118369.P10875692125880551729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046944 (A028630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118369.P10875692125880551729

/-!
# A118370: Divisorial primes: Primes p such that p = 1 + Product_{d|n} d for some n (ordered by n).

The programs for A118370, there is no canonical definition to state claims against.
-/

/-! ## A118370.P9654104400144025076

`1+∏{d}[A118369(n+1), #]`
-/

namespace A118370.P9654104400144025076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A118370.P9654104400144025076

/-! ## A118370.P6673144038901629749

`A007955(A118369(n+1))+1`
-/

namespace A118370.P6673144038901629749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A118369 (n + 1)).toNat + 1

end

end A118370.P6673144038901629749

/-! ## A118370.P14934524887369339829

`p?[∏{d}[n, -#]+1]`
-/

namespace A118370.P14934524887369339829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-(d : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118370.P14934524887369339829

/-!
# A118371: Fastest growing sequence of primes satisfying Goldbach's conjecture.

The programs for A118371, there is no canonical definition to state claims against.
-/

/-! ## A118371.P3802632025362659996

`A000038(n)+Δ[A173520(A028310(n))]`
-/

namespace A118371.P3802632025362659996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173520 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A118371.P3802632025362659996

/-! ## A118371.P4452835690918470635

`Δ[A057427(n)*A173520(A028310(n))]`
-/

namespace A118371.P4452835690918470635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A173520 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118371.P4452835690918470635

/-! ## A118371.P665757785951085613

`Δ[A173520(A028310(n))%A029879(n)]`
-/

namespace A118371.P665757785951085613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173520 (A028310 n).toNat) (A029879 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118371.P665757785951085613

/-! ## A118371.P3871936407359518416

`Δ[A000040(n+1)%2*A173520(A028310(n))]`
-/

namespace A118371.P3871936407359518416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A173520 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118371.P3871936407359518416

/-!
# A118372: S-perfect numbers.

The programs for A118372, there is no canonical definition to state claims against.
-/

/-! ## A118372.P11487482493161366118

`eq[n+1, A364858(n+1)]+1`
-/

namespace A118372.P11487482493161366118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118372.P11487482493161366118

/-! ## A118372.P17938243917099782380

`A051215(3*(n+1))*A164886(A226254(n))`
-/

namespace A118372.P17938243917099782380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051215 (3 * (n + 1)) * A164886 (A226254 n).toNat

end

end A118372.P17938243917099782380

/-!
# A118373: Product of decimal digits of two successive natural numbers.

The programs for A118373, there is no canonical definition to state claims against.
-/

/-! ## A118373.P287630256826586246

`∏{digits}[n+1, #]*∏{digits}[n, #]`
-/

namespace A118373.P287630256826586246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

end

end A118373.P287630256826586246

/-! ## A118373.P8394534877073451856

`∏{digits}[A184989(n+1), #]`
-/

namespace A118373.P8394534877073451856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118373.P8394534877073451856

/-! ## A118373.P5669326460408558321

`∏{digits}[A100846(n)+10, #]`
-/

namespace A118373.P5669326460408558321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118373.P5669326460408558321

/-! ## A118373.P3324083828767087446

`∏{digits}[A338754(n)+10, #]`
-/

namespace A118373.P3324083828767087446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118373.P3324083828767087446

/-! ## A118373.P4742231666666714947

`∏{digits}[1-A020338(n+1), #]`
-/

namespace A118373.P4742231666666714947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A020338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118373.P4742231666666714947

/-! ## A118373.P14569097537280341602

`∏{digits}[n+1, #]*A007954(n)`
-/

namespace A118373.P14569097537280341602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) * A007954 n

end

end A118373.P14569097537280341602

/-! ## A118373.P16777115243124964608

`A007954(A184989(n+1))`
-/

namespace A118373.P16777115243124964608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A184989 (n + 1)).toNat

end

end A118373.P16777115243124964608

/-! ## A118373.P10314430271929135161

`A171765(A127421(n+1))`
-/

namespace A118373.P10314430271929135161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A127421 (n + 1)).toNat

end

end A118373.P10314430271929135161

/-! ## A118373.P18330206947605206017

`A171765(A127423(n+1))`
-/

namespace A118373.P18330206947605206017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A127423 (n + 1)).toNat

end

end A118373.P18330206947605206017

/-! ## A118373.P3722975088747439946

`A007954(A338754(n)+10)`
-/

namespace A118373.P3722975088747439946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A338754 n + 10).toNat

end

end A118373.P3722975088747439946

/-!
# A118374: Lexicographically earliest positive integer sequence no two terms of which sum to a term of {1,7,23,63,159,...} = {n*2^n-1}, n=1,2,3,... The first differences are given in A119350.

The programs for A118374, there is no canonical definition to state claims against.
-/

/-! ## A118374.P14559855849532935919

`∑[A119350(floor(acot(n)+n))]`
-/

namespace A118374.P14559855849532935919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119350 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118374.P14559855849532935919

/-! ## A118374.P18307666300778756265

`∑[A119350(round(acot(n)+n))]`
-/

namespace A118374.P18307666300778756265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119350 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118374.P18307666300778756265

/-! ## A118374.P12454879031537569511

`a(n-1)+A119350(n)` with `a(0)=1`
-/

namespace A118374.P12454879031537569511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A119350 n

end

end A118374.P12454879031537569511

/-! ## A118374.P7197689603996119167

`∑[A119350(abs(1-n)+1)]`
-/

namespace A118374.P7197689603996119167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119350 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118374.P7197689603996119167

/-! ## A118374.P14327014791230767806

`∑[A119350(n)^A008683(a(n-1))]` with `a(0)=1`
-/

namespace A118374.P14327014791230767806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A119350 n : ℚ) ^ (A008683 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118374.P14327014791230767806

/-! ## A118374.P10048369972128995832

`∑[A119350(n+1)]+1-A119350(n+1)`
-/

namespace A118374.P10048369972128995832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A119350 (n + 1))

end

end A118374.P10048369972128995832

/-! ## A118374.P2708568596910645977

`∑[A119350(round(ϕ/(n+2)+n))%A167499(n)]`
-/

namespace A118374.P2708568596910645977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119350 (SequenceMachineLib.roundAway (Real.goldenRatio / (n + 2 : ℝ) + (n : ℝ))).toNat) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118374.P2708568596910645977

/-!
# A118375: Minimum over all permutations b of 1..n of sum b(i)*b^{-1}(i).

The programs for A118375, the canonical program `A118375.P15496535040736098528` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118375 has offset 1).

The definition of A118375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118375.P15496535040736098528

`∑[∑[or(2, n)]-1]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118375

/-- `∑[∑[or(2, n)]-1]` -/
def P15496535040736098528.Spec : Prop :=
  ∀ n, P15496535040736098528.a n = A118375 (n + 1)

theorem P15496535040736098528.correct : P15496535040736098528.Spec := by
  intro n
  simp only [A118375, Nat.add_sub_cancel]

end A118375

/-! ## A118375.P10986303759651143653

`and(1, ∑[n])+C(n+3, 3)`
-/

namespace A118375.P10986303759651143653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + Nat.choose (n + 3) 3

end

end A118375.P10986303759651143653

namespace A118375

/-- `and(1, ∑[n])+C(n+3, 3)` -/
def P10986303759651143653.Spec : Prop :=
  ∀ n, (P10986303759651143653.a n : ℤ) = A118375 (n + 1)

end A118375

/-! ## A118375.P2949574063883431430

`∑[∑[n+1]]+∑[n]%2`
-/

namespace A118375.P2949574063883431430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) % 2

end

end A118375.P2949574063883431430

namespace A118375

/-- `∑[∑[n+1]]+∑[n]%2` -/
def P2949574063883431430.Spec : Prop :=
  ∀ n, (P2949574063883431430.a n : ℤ) = A118375 (n + 1)

end A118375

/-! ## A118375.P6086422640973089622

`∑[∑[n+1]]+and(1, ∑[n])`
-/

namespace A118375.P6086422640973089622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A118375.P6086422640973089622

namespace A118375

/-- `∑[∑[n+1]]+and(1, ∑[n])` -/
def P6086422640973089622.Spec : Prop :=
  ∀ n, (P6086422640973089622.a n : ℤ) = A118375 (n + 1)

end A118375

/-! ## A118375.P11562163845491181333

`∑[∑[n+1]]+2-gcd(2, ∑[n])`
-/

namespace A118375.P11562163845491181333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ))

end

end A118375.P11562163845491181333

namespace A118375

/-- `∑[∑[n+1]]+2-gcd(2, ∑[n])` -/
def P11562163845491181333.Spec : Prop :=
  ∀ n, P11562163845491181333.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P10096276403917881951

`∑[∑[n-(-1)^∑[n+1]]+n]`
-/

namespace A118375.P10096276403917881951
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118375.P10096276403917881951

namespace A118375

/-- `∑[∑[n-(-1)^∑[n+1]]+n]` -/
def P10096276403917881951.Spec : Prop :=
  ∀ n, P10096276403917881951.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P13498831595473567050

`C(n+3, 3)+and(2, n+1)/2`
-/

namespace A118375.P13498831595473567050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) + (Nat.land 2 (n + 1) : ℚ) / 2

end

end A118375.P13498831595473567050

namespace A118375

/-- `C(n+3, 3)+and(2, n+1)/2` -/
def P13498831595473567050.Spec : Prop :=
  ∀ n, P13498831595473567050.a n = (A118375 (n + 1) : ℚ)

end A118375

/-! ## A118375.P7025622636841554329

`C(and(2, n+1), 2)+C(n+3, 3)`
-/

namespace A118375.P7025622636841554329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 (n + 1)) 2 + Nat.choose (n + 3) 3

end

end A118375.P7025622636841554329

namespace A118375

/-- `C(and(2, n+1), 2)+C(n+3, 3)` -/
def P7025622636841554329.Spec : Prop :=
  ∀ n, (P7025622636841554329.a n : ℤ) = A118375 (n + 1)

end A118375

/-! ## A118375.P16821562148376626004

`A098181(n)+∑[∑[n]+n]`
-/

namespace A118375.P16821562148376626004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118375.P16821562148376626004

namespace A118375

/-- `A098181(n)+∑[∑[n]+n]` -/
def P16821562148376626004.Spec : Prop :=
  ∀ n, P16821562148376626004.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P7729730682081024603

`A000045(and(2, n-3))+C(n+3, 3)`
-/

namespace A118375.P7729730682081024603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 ((n : ℤ) - 3)).toNat + (Nat.choose (n + 3) 3 : ℤ)

end

end A118375.P7729730682081024603

namespace A118375

/-- `A000045(and(2, n-3))+C(n+3, 3)` -/
def P7729730682081024603.Spec : Prop :=
  ∀ n, P7729730682081024603.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P10391097418833509621

`A026035(n+2)-A106249(n)`
-/

namespace A118375.P10391097418833509621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026035 (n + 2) - A106249 n

end

end A118375.P10391097418833509621

namespace A118375

/-- `A026035(n+2)-A106249(n)` -/
def P10391097418833509621.Spec : Prop :=
  ∀ n, P10391097418833509621.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P11471203837319410043

`A051937(n+4)-A268810(n)`
-/

namespace A118375.P11471203837319410043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (n + 4) - A268810 n

end

end A118375.P11471203837319410043

namespace A118375

/-- `A051937(n+4)-A268810(n)` -/
def P11471203837319410043.Spec : Prop :=
  ∀ n, P11471203837319410043.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P1983895018908242846

`A194274(n+1)+∑[A215098(n)]`
-/

namespace A118375.P1983895018908242846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118375.P1983895018908242846

namespace A118375

/-- `A194274(n+1)+∑[A215098(n)]` -/
def P1983895018908242846.Spec : Prop :=
  ∀ n, P1983895018908242846.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P3344685112601105472

`A121968(n+1)+A047444(n+1)`
-/

namespace A118375.P3344685112601105472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) + A047444 (n + 1)

end

end A118375.P3344685112601105472

namespace A118375

/-- `A121968(n+1)+A047444(n+1)` -/
def P3344685112601105472.Spec : Prop :=
  ∀ n, P3344685112601105472.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P434786407910567392

`or(A000292(n+1), A166486(n+1))`
-/

namespace A118375.P434786407910567392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000292 (n + 1)) (A166486 (n + 1))

end

end A118375.P434786407910567392

namespace A118375

/-- `or(A000292(n+1), A166486(n+1))` -/
def P434786407910567392.Spec : Prop :=
  ∀ n, P434786407910567392.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P9011069486377457757

`A000217(n)+A098181(n)+A000292(n)`
-/

namespace A118375.P9011069486377457757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A098181 n + A000292 n)

end

end A118375.P9011069486377457757

namespace A118375

/-- `A000217(n)+A098181(n)+A000292(n)` -/
def P9011069486377457757.Spec : Prop :=
  ∀ n, P9011069486377457757.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P11498042622652978276

`A021913(n+1)+∑[∑[n+1]]`
-/

namespace A118375.P11498042622652978276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118375.P11498042622652978276

namespace A118375

/-- `A021913(n+1)+∑[∑[n+1]]` -/
def P11498042622652978276.Spec : Prop :=
  ∀ n, P11498042622652978276.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P4253640268054336343

`A008804(2*n)-∑[A056594(n+1)]`
-/

namespace A118375.P4253640268054336343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118375.P4253640268054336343

namespace A118375

/-- `A008804(2*n)-∑[A056594(n+1)]` -/
def P4253640268054336343.Spec : Prop :=
  ∀ n, P4253640268054336343.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P16196996595014367689

`A058187(2*n)-∑[A056594(n+1)]`
-/

namespace A118375.P16196996595014367689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118375.P16196996595014367689

namespace A118375

/-- `A058187(2*n)-∑[A056594(n+1)]` -/
def P16196996595014367689.Spec : Prop :=
  ∀ n, P16196996595014367689.a n = A118375 (n + 1)

end A118375

/-! ## A118375.P1615720731275206095

`A005232(2*n+1)-∑[A056594(n+1)]`
-/

namespace A118375.P1615720731275206095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118375.P1615720731275206095

namespace A118375

/-- `A005232(2*n+1)-∑[A056594(n+1)]` -/
def P1615720731275206095.Spec : Prop :=
  ∀ n, P1615720731275206095.a n = A118375 (n + 1)

end A118375

/-!
# A118376: Number of all trees of weight n, where nodes have positive integer weights and the sum of the weights of the children of a node is equal to the weight of the node.

The programs for A118376, there is no canonical definition to state claims against.
-/

/-! ## A118376.P9539603760878677511

`∑[A068764(n)]`
-/

namespace A118376.P9539603760878677511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118376.P9539603760878677511

/-! ## A118376.P12514908620990406713

`ceil(A174347(n)/2)`
-/

namespace A118376.P12514908620990406713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174347 n : ℚ) / 2⌉

end

end A118376.P12514908620990406713

/-! ## A118376.P10195293186735790743

`∑[ceil(A166229(n)/2)]`
-/

namespace A118376.P10195293186735790743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166229 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118376.P10195293186735790743

/-! ## A118376.P14189854959401352137

`ratio[A011782(n)]*A226316(n)`
-/

namespace A118376.P14189854959401352137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A226316 n : ℚ)

end

end A118376.P14189854959401352137

/-! ## A118376.P6926596146120647188

`(2-A000007(n))*A226316(n)`
-/

namespace A118376.P6926596146120647188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A226316 n

end

end A118376.P6926596146120647188

/-! ## A118376.P4844508654332354096

`A000005(A027746(n+1))*A226316(n)`
-/

namespace A118376.P4844508654332354096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027746 (n + 1)).toNat * A226316 n

end

end A118376.P4844508654332354096

/-! ## A118376.P91254353125273180

`A007947(A034444(n+1))*A226316(n)`
-/

namespace A118376.P91254353125273180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A034444 (n + 1)).toNat * A226316 n

end

end A118376.P91254353125273180

/-!
# A118378: a(n+1) = a(n)^2 - (-1)^n * binomial(n+2,2) with a(1) = 1.

The programs for A118378, there is no canonical definition to state claims against.
-/

/-! ## A118378.P16910041796159947347

`a(n-1)²-(-1)^n*∑[n+1]` with `a(0)=1`
-/

namespace A118378.P16910041796159947347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 - (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118378.P16910041796159947347

/-! ## A118378.P16598001201490592204

`A089594(n+1)+a(n-1)²` with `a(0)=1`
-/

namespace A118378.P16598001201490592204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089594 (n + 1) + a (n - 1) ^ 2

end

end A118378.P16598001201490592204

/-!
# A118379: Natural numbers n which are not perfect power but at least one of decimal digits of n is a perfect power.

The programs for A118379, there is no canonical definition to state claims against.
-/

/-! ## A118379.P13085713990660177388

`eq[char[A007916(n+1)], A118009(n+1)]`
-/

namespace A118379.P13085713990660177388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A118379.P13085713990660177388

/-! ## A118379.P2413114070681895512

`eq[A052409(A028310(n)), A118009(n+1)]`
-/

namespace A118379.P2413114070681895512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118379.P2413114070681895512

/-! ## A118379.P10449676467748939091

`eq[A253641(n)%A028310(n), A118009(n+1)]`
-/

namespace A118379.P10449676467748939091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253641 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118379.P10449676467748939091

/-!
# A118380: Primes for which the weight as defined in A117078 is 15 and the gap as defined in A001223 is 14.

The programs for A118380, there is no canonical definition to state claims against.
-/

/-! ## A118380.P12412591994968512722

`∩[A031932(n+1), A132236(n+1)]`
-/

namespace A118380.P12412591994968512722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P12412591994968512722

/-! ## A118380.P2830095803406997934

`∩[A030433(n+1), A031932(n+1)]`
-/

namespace A118380.P2830095803406997934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P2830095803406997934

/-! ## A118380.P6937689248929221762

`∩[A031932(n+1), A045457(n+1)]`
-/

namespace A118380.P6937689248929221762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P6937689248929221762

/-! ## A118380.P17319863063345130020

`∩[A031932(n+1), A132240(n+1)]`
-/

namespace A118380.P17319863063345130020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P17319863063345130020

/-! ## A118380.P3680626353871774809

`∩[A031932(n+1), A141785(n+1)]`
-/

namespace A118380.P3680626353871774809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P3680626353871774809

/-! ## A118380.P17897680454554536939

`∩[A031932(n+1), A327753(n+1)]`
-/

namespace A118380.P17897680454554536939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P17897680454554536939

/-! ## A118380.P11477653972990605329

`∩[A004618(n+1), A031932(n+1)]`
-/

namespace A118380.P11477653972990605329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P11477653972990605329

/-! ## A118380.P4983839307401124678

`∩[A031932(n+1), A040998(n+1)]`
-/

namespace A118380.P4983839307401124678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P4983839307401124678

/-! ## A118380.P94856169046212615

`∩[A031932(n+1), A257645(n)]`
-/

namespace A118380.P94856169046212615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P94856169046212615

/-! ## A118380.P4984805219500500172

`∩[A031932(n+1), A132253(n+1)]`
-/

namespace A118380.P4984805219500500172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118380.P4984805219500500172

/-!
# A118381: Largest 3-smooth number dividing n!.

The programs for A118381, the canonical program `A118381.P11282150748865979498` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118381 has offset 1).

The definition of A118381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118381.P11282150748865979498

`∏[gcd(n+1, ∏[gcd(6, n)])]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118381

/-- `∏[gcd(n+1, ∏[gcd(6, n)])]` -/
def P11282150748865979498.Spec : Prop :=
  ∀ n, (P11282150748865979498.a n : ℤ) = A118381 (n + 1)

theorem P11282150748865979498.correct : P11282150748865979498.Spec := by
  intro n
  simp only [A118381, Nat.add_sub_cancel]

end A118381

/-! ## A118381.P18205345336610547008

`∏[2^val(n+1, 2)*3^val(n+1, 3)]`
-/

namespace A118381.P18205345336610547008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P18205345336610547008

namespace A118381

/-- `∏[2^val(n+1, 2)*3^val(n+1, 3)]` -/
def P18205345336610547008.Spec : Prop :=
  ∀ n, (P18205345336610547008.a n : ℤ) = A118381 (n + 1)

end A118381

/-! ## A118381.P5930449977991264777

`∏[lcm(2^val(n+1, 2), 3^val(n+1, 3))]`
-/

namespace A118381.P5930449977991264777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (3 ^ SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P5930449977991264777

namespace A118381

/-- `∏[lcm(2^val(n+1, 2), 3^val(n+1, 3))]` -/
def P5930449977991264777.Spec : Prop :=
  ∀ n, (P5930449977991264777.a n : ℤ) = A118381 (n + 1)

end A118381

/-! ## A118381.P17632888613835050231

`∏[A065331(n+1)]`
-/

namespace A118381.P17632888613835050231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P17632888613835050231

namespace A118381

/-- `∏[A065331(n+1)]` -/
def P17632888613835050231.Spec : Prop :=
  ∀ n, P17632888613835050231.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P16735601299212388642

`∏[gcd(n+1, A017324(n))]`
-/

namespace A118381.P16735601299212388642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A017324 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P16735601299212388642

namespace A118381

/-- `∏[gcd(n+1, A017324(n))]` -/
def P16735601299212388642.Spec : Prop :=
  ∀ n, (P16735601299212388642.a n : ℤ) = A118381 (n + 1)

end A118381

/-! ## A118381.P2036936614143883596

`∏[A284255(2*(n+1))/2]`
-/

namespace A118381.P2036936614143883596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284255 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P2036936614143883596

namespace A118381

/-- `∏[A284255(2*(n+1))/2]` -/
def P2036936614143883596.Spec : Prop :=
  ∀ n, P2036936614143883596.a n = (A118381 (n + 1) : ℚ)

end A118381

/-! ## A118381.P12749386840782396143

`∏[(n+1)/A065330(n+1)]`
-/

namespace A118381.P12749386840782396143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065330 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P12749386840782396143

namespace A118381

/-- `∏[(n+1)/A065330(n+1)]` -/
def P12749386840782396143.Spec : Prop :=
  ∀ n, P12749386840782396143.a n = (A118381 (n + 1) : ℚ)

end A118381

/-! ## A118381.P8993943169064911776

`∏[2^val(n+1, 2)*A038500(n+1)]`
-/

namespace A118381.P8993943169064911776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A038500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P8993943169064911776

namespace A118381

/-- `∏[2^val(n+1, 2)*A038500(n+1)]` -/
def P8993943169064911776.Spec : Prop :=
  ∀ n, P8993943169064911776.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P14585321638002448628

`∏[3^val(n+1, 3)*A006519(n+1)]`
-/

namespace A118381.P14585321638002448628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) * A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P14585321638002448628

namespace A118381

/-- `∏[3^val(n+1, 3)*A006519(n+1)]` -/
def P14585321638002448628.Spec : Prop :=
  ∀ n, P14585321638002448628.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P14403839152920007846

`∏[A051444(A072079(n+1))]`
-/

namespace A118381.P14403839152920007846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A072079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P14403839152920007846

namespace A118381

/-- `∏[A051444(A072079(n+1))]` -/
def P14403839152920007846.Spec : Prop :=
  ∀ n, P14403839152920007846.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P3742064873616466481

`∏[A066262(A066262(n+1))]`
-/

namespace A118381.P3742064873616466481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066262 (A066262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P3742064873616466481

namespace A118381

/-- `∏[A066262(A066262(n+1))]` -/
def P3742064873616466481.Spec : Prop :=
  ∀ n, P3742064873616466481.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P9893785924454380611

`∏[A003586(A322026(n+1))]`
-/

namespace A118381.P9893785924454380611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A322026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P9893785924454380611

namespace A118381

/-- `∏[A003586(A322026(n+1))]` -/
def P9893785924454380611.Spec : Prop :=
  ∀ n, P9893785924454380611.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P10574708668957501424

`A060818(n+1)*A060828(n+1)`
-/

namespace A118381.P10574708668957501424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (n + 1) * A060828 (n + 1)

end

end A118381.P10574708668957501424

namespace A118381

/-- `A060818(n+1)*A060828(n+1)` -/
def P10574708668957501424.Spec : Prop :=
  ∀ n, P10574708668957501424.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P10291399058598063568

`∏[A006519(n+1)*A038500(n+1)]`
-/

namespace A118381.P10291399058598063568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P10291399058598063568

namespace A118381

/-- `∏[A006519(n+1)*A038500(n+1)]` -/
def P10291399058598063568.Spec : Prop :=
  ∀ n, P10291399058598063568.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P8329135057005157502

`∏[A000010(xor(n, n+1)+1)*A038500(n+1)]`
-/

namespace A118381.P8329135057005157502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (n + 1) + 1) * A038500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P8329135057005157502

namespace A118381

/-- `∏[A000010(xor(n, n+1)+1)*A038500(n+1)]` -/
def P8329135057005157502.Spec : Prop :=
  ∀ n, P8329135057005157502.a n = A118381 (n + 1)

end A118381

/-! ## A118381.P18037291138553999847

`∏[A071975(A129202(n))]`
-/

namespace A118381.P18037291138553999847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A129202 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118381.P18037291138553999847

namespace A118381

/-- `∏[A071975(A129202(n))]` -/
def P18037291138553999847.Spec : Prop :=
  ∀ n, P18037291138553999847.a n = A118381 (n + 1)

end A118381

/-!
# A118382: Primitive Orloj clock sequences; row n sums to 2n-1.

The programs for A118382, there is no canonical definition to state claims against.
-/

/-! ## A118382.P1420779296849037305

`A001221(A333217(2*n+1)+A323059(n+1))`
-/

namespace A118382.P1420779296849037305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A333217 (2 * n + 1) + A323059 (n + 1)).toNat

end

end A118382.P1420779296849037305

/-! ## A118382.P9505577046637335550

`gcd(A110321(A209302(n+1)), A215727(n+1))`
-/

namespace A118382.P9505577046637335550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110321 (A209302 (n + 1)).toNat) (A215727 (n + 1))

end

end A118382.P9505577046637335550

/-! ## A118382.P7267630382276109928

`gcd(A002620(A184604(n+1)), A185278(n+3))`
-/

namespace A118382.P7267630382276109928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A184604 (n + 1)).toNat) (A185278 (n + 3))

end

end A118382.P7267630382276109928

/-! ## A118382.P16748939850281669808

`A054868(A128596(n)*A190519(n+5))`
-/

namespace A118382.P16748939850281669808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A128596 n * A190519 (n + 5)).toNat

end

end A118382.P16748939850281669808

/-! ## A118382.P13779068844625286635

`A078711(A357366(n+1))`
-/

namespace A118382.P13779068844625286635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (A357366 (n + 1)).toNat

end

end A118382.P13779068844625286635

/-!
# A118383: Unrefined Orloj clock sequences; row n sums to n.

The programs for A118383, there is no canonical definition to state claims against.
-/

/-! ## A118383.P9017132216493666535

`gcd(A023577(A292289(n+4)), A291966(3*(n+1)))`
-/

namespace A118383.P9017132216493666535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023577 (A292289 (n + 4)).toNat) (A291966 (3 * (n + 1)))

end

end A118383.P9017132216493666535

/-! ## A118383.P9893482547555532494

`A141539(and(A141539(n+1), A316983(2*n+1)))`
-/

namespace A118383.P9893482547555532494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (Int.land (A141539 (n + 1)) (A316983 (2 * n + 1))).toNat

end

end A118383.P9893482547555532494

/-! ## A118383.P6793443113459260127

`gcd(A348245(n+1), A348252(A280076(n+1)))`
-/

namespace A118383.P6793443113459260127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348245 (n + 1)) (A348252 (A280076 (n + 1)).toNat)

end

end A118383.P6793443113459260127

/-! ## A118383.P7257716144496763639

`∏{e}[A068438(A005231(n+1)), #]`
-/

namespace A118383.P7257716144496763639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068438 (A005231 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A118383.P7257716144496763639

/-! ## A118383.P17873079424272088155

`A052126(∑{e}[A281866(2*(n+4)), #])`
-/

namespace A118383.P17873079424272088155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281866 (2 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A118383.P17873079424272088155

/-!
# A118384: Gaussian column reduction of Hankel matrix for central Delannoy numbers.

The programs for A118384, there is no canonical definition to state claims against.
-/

/-! ## A118384.P4947539553592304964

`A376467(n)/A046899(n)`
-/

namespace A118384.P4947539553592304964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376467 n : ℚ) / (A046899 n : ℚ)

end

end A118384.P4947539553592304964

/-! ## A118384.P7901034630714437828

`A376467(n)/A092392(A061579(n))`
-/

namespace A118384.P7901034630714437828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376467 n : ℚ) / (A092392 (A061579 n).toNat : ℚ)

end

end A118384.P7901034630714437828

/-! ## A118384.P629886798721981138

`A007318(n)/A063007(n)*A376467(n)`
-/

namespace A118384.P629886798721981138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A063007 n : ℚ) * (A376467 n : ℚ)

end

end A118384.P629886798721981138

/-! ## A118384.P1045203832733133640

`A376467(n)/C(A051162(n), A003056(n))`
-/

namespace A118384.P1045203832733133640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376467 n : ℚ) / (Nat.choose (A051162 n).toNat (A003056 n).toNat : ℚ)

end

end A118384.P1045203832733133640

/-! ## A118384.P14402358135843812885

`A376467(n)/A092392(A038722(n+1)-1)`
-/

namespace A118384.P14402358135843812885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376467 n : ℚ) / (A092392 (A038722 (n + 1) - 1).toNat : ℚ)

end

end A118384.P14402358135843812885

/-! ## A118384.P4130654992531726980

`A376467(n)/(A178300(n+1)/A178301(n)*A063007(n))`
-/

namespace A118384.P4130654992531726980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376467 n : ℚ) / ((A178300 (n + 1) : ℚ) / (A178301 n : ℚ) * (A063007 n : ℚ))

end

end A118384.P4130654992531726980

/-! ## A118384.P15716669103657303748

`A064861(A292564(A114327(n)+n))`
-/

namespace A118384.P15716669103657303748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A292564 (A114327 n + (n : ℤ)).toNat).toNat

end

end A118384.P15716669103657303748

/-!
# A118385: Concatenation of the first through n-th members of A117819.

The programs for A118385, there is no canonical definition to state claims against.
-/

/-! ## A118385.P18047180822364218919

`A386964(n+1)-A010060(5*n^5)`
-/

namespace A118385.P18047180822364218919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386964 (n + 1) - A010060 (5 * n ^ 5)

end

end A118385.P18047180822364218919

/-! ## A118385.P900504900182377560

`A386964(n+1)-A084114(A208210(n))`
-/

namespace A118385.P900504900182377560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386964 (n + 1) - A084114 (A208210 n).toNat

end

end A118385.P900504900182377560

/-!
# A118386: Numbers k such that k has a record number of distinct shortest addition chains.

The programs for A118386, there is no canonical definition to state claims against.
-/

/-! ## A118386.P10669420213445525551

`record[A178916(n+1)]-A111775(n+1)`
-/

namespace A118386.P10669420213445525551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111775 (n + 1)

end

end A118386.P10669420213445525551

/-!
# A118387: Record values in A079300 (number of shortest addition chains of n).

The programs for A118387, there is no canonical definition to state claims against.
-/

/-! ## A118387.P9791069153505638878

`record[A079300(n+1)]`
-/

namespace A118387.P9791069153505638878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118387.P9791069153505638878

/-! ## A118387.P16534518998187710822

`A079300(A118386(n+1))`
-/

namespace A118387.P16534518998187710822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (A118386 (n + 1)).toNat

end

end A118387.P16534518998187710822

/-! ## A118387.P5369027001210052057

`record[A079302(n+1)+A079301(n+1)]`
-/

namespace A118387.P5369027001210052057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 1) + A079301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118387.P5369027001210052057

/-!
# A118388: Least k such that T(k) includes the consecutive digits of n, where T(k) = k*(k+1)/2.

The programs for A118388, there is no canonical definition to state claims against.
-/

/-! ## A118388.P3371243516269335620

`floor(sqrt(2*A118389(n)))`
-/

namespace A118388.P3371243516269335620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A118389 n)

end

end A118388.P3371243516269335620

/-! ## A118388.P9926900012673703038

`A080098(A118389(n))`
-/

namespace A118388.P9926900012673703038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A118389 n).toNat

end

end A118388.P9926900012673703038

/-! ## A118388.P6945917790333777539

`A268820(or(char[1], A118389(n)))`
-/

namespace A118388.P6945917790333777539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A118389 n)).toNat

end

end A118388.P6945917790333777539

/-! ## A118388.P14325844087468896693

`A268820(A118389(n))%A004769(n)`
-/

namespace A118388.P14325844087468896693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268820 (A118389 n).toNat) (A004769 n)

end

end A118388.P14325844087468896693

/-! ## A118388.P4018933398587665472

`A268820(A118389(n)%A057721(n))`
-/

namespace A118388.P4018933398587665472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (Int.tmod (A118389 n) (A057721 n)).toNat

end

end A118388.P4018933398587665472

/-! ## A118388.P1805907316685767710

`∑{d}[A268820(A118389(n)), A000010(#)]`
-/

namespace A118388.P1805907316685767710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A118389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A118388.P1805907316685767710

/-!
# A118389: Least triangular number T(k) that contains the consecutive digits of n, where T(k) = k*(k+1)/2.

The programs for A118389, there is no canonical definition to state claims against.
-/

/-! ## A118389.P3736085838204289362

`A000217(A118388(n))`
-/

namespace A118389.P3736085838204289362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A118388 n).toNat

end

end A118389.P3736085838204289362

/-! ## A118389.P1047870710634346357

`A161680(A118388(n)+1)`
-/

namespace A118389.P1047870710634346357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A118388 n + 1).toNat

end

end A118389.P1047870710634346357

/-! ## A118389.P5189982239785309364

`A000124(A118388(n)%(n+1)²)-1`
-/

namespace A118389.P5189982239785309364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (Int.tmod (A118388 n) ((n + 1) ^ 2 : ℤ)).toNat - 1

end

end A118389.P5189982239785309364

/-! ## A118389.P11447343449749227746

`A000124(A118388(n))-A000040(n+2)%2`
-/

namespace A118389.P11447343449749227746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A118388 n).toNat - Int.tmod (A000040 (n + 2)) 2

end

end A118389.P11447343449749227746

/-! ## A118389.P11046463644755867626

`A000096(A118388(n))-A118388(n%(n+1))`
-/

namespace A118389.P11046463644755867626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A118388 n).toNat - A118388 (n % (n + 1))

end

end A118389.P11046463644755867626

/-! ## A118389.P5455323021355970005

`A000124(A118388(n))-A000051(n+1)%2`
-/

namespace A118389.P5455323021355970005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A118388 n).toNat - Int.tmod (A000051 (n + 1)) 2

end

end A118389.P5455323021355970005

/-!
# A118390: Triangle read by rows: T(n,k) is the number of binary sequences of length n containing k subsequences 000 (n, k >= 0).

The programs for A118390, there is no canonical definition to state claims against.
-/

/-! ## A118390.P5463661731033711463

`A103298(A119825(n)+1)-1`
-/

namespace A118390.P5463661731033711463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A119825 n + 1).toNat - 1

end

end A118390.P5463661731033711463

/-!
# A118391: Numerator of sum of reciprocals of first n tetrahedral numbers A000292.

The programs for A118391, the canonical program `A118391.P1499686261987189515` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118391 has offset 1).

The definition of A118391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118391.P1499686261987189515

`gcd(3, n+1)*A160050(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118391

/-- `gcd(3, n+1)*A160050(n+2)` -/
def P1499686261987189515.Spec : Prop :=
  ∀ n, P1499686261987189515.a n = A118391 (n + 1)

theorem P1499686261987189515.correct : P1499686261987189515.Spec := by
  intro n
  simp only [A118391, Nat.add_sub_cancel]

end A118391

/-! ## A118391.P11058612844047922318

`A109007(n+1)*A160050(n+2)`
-/

namespace A118391.P11058612844047922318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (n + 1) * A160050 (n + 2)

end

end A118391.P11058612844047922318

namespace A118391

/-- `A109007(n+1)*A160050(n+2)` -/
def P11058612844047922318.Spec : Prop :=
  ∀ n, P11058612844047922318.a n = A118391 (n + 1)

end A118391

/-! ## A118391.P4447587595289688485

`Δ[A047202(n+1)]*A160050(n+2)`
-/

namespace A118391.P4447587595289688485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A160050 (n + 2)

end

end A118391.P4447587595289688485

namespace A118391

/-- `Δ[A047202(n+1)]*A160050(n+2)` -/
def P4447587595289688485.Spec : Prop :=
  ∀ n, P4447587595289688485.a n = A118391 (n + 1)

end A118391

/-! ## A118391.P13395430281962473504

`gcd(∑[A006003(n+2)], A140091(n+1))`
-/

namespace A118391.P13395430281962473504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A140091 (n + 1))

end

end A118391.P13395430281962473504

namespace A118391

/-- `gcd(∑[A006003(n+2)], A140091(n+1))` -/
def P13395430281962473504.Spec : Prop :=
  ∀ n, (P13395430281962473504.a n : ℤ) = A118391 (n + 1)

end A118391

/-! ## A118391.P7433961385288902895

`gcd(A000096(n+1)², A060008(n+4))`
-/

namespace A118391.P7433961385288902895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (n + 1) ^ 2) (A060008 (n + 4))

end

end A118391.P7433961385288902895

namespace A118391

/-- `gcd(A000096(n+1)², A060008(n+4))` -/
def P7433961385288902895.Spec : Prop :=
  ∀ n, (P7433961385288902895.a n : ℤ) = A118391 (n + 1)

end A118391

/-! ## A118391.P17117817010672277807

`A203648(A160050(n+2))`
-/

namespace A118391.P17117817010672277807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (A160050 (n + 2)).toNat

end

end A118391.P17117817010672277807

namespace A118391

/-- `A203648(A160050(n+2))` -/
def P17117817010672277807.Spec : Prop :=
  ∀ n, P17117817010672277807.a n = A118391 (n + 1)

end A118391

/-! ## A118391.P1492242584176624721

`gcd(A000096(∑[n+2]), A102741(n+1))`
-/

namespace A118391.P1492242584176624721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (∑ j ∈ Finset.range (n + 1), f1 j)) (A102741 (n + 1))

end

end A118391.P1492242584176624721

namespace A118391

/-- `gcd(A000096(∑[n+2]), A102741(n+1))` -/
def P1492242584176624721.Spec : Prop :=
  ∀ n, (P1492242584176624721.a n : ℤ) = A118391 (n + 1)

end A118391

/-! ## A118391.P12310341660958904510

`A026741(A000096(n+1))*A109007(n+1)`
-/

namespace A118391.P12310341660958904510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000096 (n + 1)).toNat * A109007 (n + 1)

end

end A118391.P12310341660958904510

namespace A118391

/-- `A026741(A000096(n+1))*A109007(n+1)` -/
def P12310341660958904510.Spec : Prop :=
  ∀ n, P12310341660958904510.a n = A118391 (n + 1)

end A118391

/-! ## A118391.P12952301464375588835

`A026741(A262343((n+2)*(n+3)))`
-/

namespace A118391.P12952301464375588835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A262343 ((n + 2) * (n + 3))).toNat

end

end A118391.P12952301464375588835

namespace A118391

/-- `A026741(A262343((n+2)*(n+3)))` -/
def P12952301464375588835.Spec : Prop :=
  ∀ n, P12952301464375588835.a n = A118391 (n + 1)

end A118391

/-!
# A118392: Denominator of sum of reciprocals of first n tetrahedral numbers A000292.

The programs for A118392, the canonical program `A118392.P8089354987028530930` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118392 has offset 1).

The definition of A118392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118392.P8089354987028530930

`A014695(n)*A027626(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118392

/-- `A014695(n)*A027626(n)` -/
def P8089354987028530930.Spec : Prop :=
  ∀ n, P8089354987028530930.a n = A118392 (n + 1)

theorem P8089354987028530930.correct : P8089354987028530930.Spec := by
  intro n
  simp only [A118392, Nat.add_sub_cancel]

end A118392

/-! ## A118392.P17089251943327183870

`gcd(A033488(n), A299120(n))`
-/

namespace A118392.P17089251943327183870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033488 n) (A299120 n)

end

end A118392.P17089251943327183870

namespace A118392

/-- `gcd(A033488(n), A299120(n))` -/
def P17089251943327183870.Spec : Prop :=
  ∀ n, (P17089251943327183870.a n : ℤ) = A118392 (n + 1)

end A118392

/-! ## A118392.P6771387044714084046

`gcd(∑[A002378(n+1)], A257942(n+1))`
-/

namespace A118392.P6771387044714084046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A257942 (n + 1))

end

end A118392.P6771387044714084046

namespace A118392

/-- `gcd(∑[A002378(n+1)], A257942(n+1))` -/
def P6771387044714084046.Spec : Prop :=
  ∀ n, (P6771387044714084046.a n : ℤ) = A118392 (n + 1)

end A118392

/-! ## A118392.P7865770972748024254

`gcd(2*A052149(n+2), A059977(n+1))`
-/

namespace A118392.P7865770972748024254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A052149 (n + 2)) (A059977 (n + 1))

end

end A118392.P7865770972748024254

namespace A118392

/-- `gcd(2*A052149(n+2), A059977(n+1))` -/
def P7865770972748024254.Spec : Prop :=
  ∀ n, (P7865770972748024254.a n : ℤ) = A118392 (n + 1)

end A118392

/-! ## A118392.P473253163286497255

`A237109(n+2)*A237109(n+3)`
-/

namespace A118392.P473253163286497255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237109 (n + 2) * A237109 (n + 3)

end

end A118392.P473253163286497255

namespace A118392

/-- `A237109(n+2)*A237109(n+3)` -/
def P473253163286497255.Spec : Prop :=
  ∀ n, P473253163286497255.a n = A118392 (n + 1)

end A118392

/-! ## A118392.P13857596533668606678

`A000034(A000217(n))*A027626(n)`
-/

namespace A118392.P13857596533668606678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000217 n).toNat * A027626 n

end

end A118392.P13857596533668606678

namespace A118392

/-- `A000034(A000217(n))*A027626(n)` -/
def P13857596533668606678.Spec : Prop :=
  ∀ n, P13857596533668606678.a n = A118392 (n + 1)

end A118392

/-! ## A118392.P5572558547301316851

`A000034(A000217(n))*A234041(n+1)`
-/

namespace A118392.P5572558547301316851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000217 n).toNat * A234041 (n + 1)

end

end A118392.P5572558547301316851

namespace A118392

/-- `A000034(A000217(n))*A234041(n+1)` -/
def P5572558547301316851.Spec : Prop :=
  ∀ n, P5572558547301316851.a n = A118392 (n + 1)

end A118392

/-! ## A118392.P10999056807548557906

`A022998(A027626(n))`
-/

namespace A118392.P10999056807548557906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A027626 n).toNat

end

end A118392.P10999056807548557906

namespace A118392

/-- `A022998(A027626(n))` -/
def P10999056807548557906.Spec : Prop :=
  ∀ n, P10999056807548557906.a n = A118392 (n + 1)

end A118392

/-! ## A118392.P2960133758951595317

`A022998(A234041(n+1))`
-/

namespace A118392.P2960133758951595317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A234041 (n + 1)).toNat

end

end A118392.P2960133758951595317

namespace A118392

/-- `A022998(A234041(n+1))` -/
def P2960133758951595317.Spec : Prop :=
  ∀ n, P2960133758951595317.a n = A118392 (n + 1)

end A118392

/-! ## A118392.P16632915275721868189

`A000034(A027626(n)+1)*A027626(n)`
-/

namespace A118392.P16632915275721868189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A027626 n + 1).toNat * A027626 n

end

end A118392.P16632915275721868189

namespace A118392

/-- `A000034(A027626(n)+1)*A027626(n)` -/
def P16632915275721868189.Spec : Prop :=
  ∀ n, P16632915275721868189.a n = A118392 (n + 1)

end A118392

/-!
# A118393: Eigenvector of triangle A059344. E.g.f.: exp( Sum_{n>=0} x^(2^n) ).

The programs for A118393, there is no canonical definition to state claims against.
-/

/-! ## A118393.P12233507195388782946

`A017666(A190444(n))`
-/

namespace A118393.P12233507195388782946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A190444 n).toNat

end

end A118393.P12233507195388782946

/-! ## A118393.P13543018224740782310

`A014682(2*A190444(n))`
-/

namespace A118393.P13543018224740782310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A190444 n).toNat

end

end A118393.P13543018224740782310

/-! ## A118393.P3064220516665255698

`A023446(A190444(n)+4)`
-/

namespace A118393.P3064220516665255698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A190444 n + 4).toNat

end

end A118393.P3064220516665255698

/-! ## A118393.P2891575100194232572

`A190444(A001222(5^n))`
-/

namespace A118393.P2891575100194232572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190444 (A001222 (5 ^ n)).toNat

end

end A118393.P2891575100194232572

/-!
# A118394: Triangle T(n,k) = n!/(k!*(n-3*k)!), for n >= 3*k >= 0, read by rows.

The programs for A118394, there is no canonical definition to state claims against.
-/

/-! ## A118394.P8098784994091427547

`A000244(A073189(n))*A118931(n)`
-/

namespace A118394.P8098784994091427547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A073189 n).toNat * A118931 n

end

end A118394.P8098784994091427547

/-! ## A118394.P2959661967246510860

`A155863(lt[A159749(n), A245556(3*n+1)])`
-/

namespace A118394.P2959661967246510860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245556 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155863 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118394.P2959661967246510860

/-! ## A118394.P17461094386608494935

`A155863(lt[lcm(4, n+1)/4, 6])`
-/

namespace A118394.P17461094386608494935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155863 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A118394.P17461094386608494935

/-! ## A118394.P9727091655897283860

`A157636(A094260(n+1))`
-/

namespace A118394.P9727091655897283860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (A094260 (n + 1)).toNat

end

end A118394.P9727091655897283860

/-! ## A118394.P7839690603820232023

`A328519(n^A073189(n))`
-/

namespace A118394.P7839690603820232023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328519 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A073189 n : ℤ))).toNat

end

end A118394.P7839690603820232023

/-!
# A118395: Expansion of e.g.f. exp(x + x^3).

The programs for A118395, the canonical program `A118395.P7265566257463892865` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118395 has offset 0).

The definition of A118395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118395.P7265566257463892865

`a(n-1)+3*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118395

/-- `a(n-1)+3*(n-1)*(n-2)*a(n-3)` -/
def P7265566257463892865.Spec : Prop :=
  ∀ n, P7265566257463892865.a n = A118395 n

theorem P7265566257463892865.correct : P7265566257463892865.Spec := by
  intro n
  simp only [A118395]

end A118395

/-! ## A118395.P3149807188684090773

`A362043(eq[4, A268830(n)])`
-/

namespace A118395.P3149807188684090773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118395.P3149807188684090773

namespace A118395

/-- `A362043(eq[4, A268830(n)])` -/
def P3149807188684090773.Spec : Prop :=
  ∀ n, P3149807188684090773.a n = A118395 n

end A118395

/-! ## A118395.P17689308297444617747

`∏{e}[5^n, A118396(#)]`
-/

namespace A118395.P17689308297444617747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A118396 (Nat.factorization (f1 n) p)

end

end A118395.P17689308297444617747

namespace A118395

/-- `∏{e}[5^n, A118396(#)]` -/
def P17689308297444617747.Spec : Prop :=
  ∀ n, P17689308297444617747.a n = A118395 n

end A118395

/-! ## A118395.P5300172001911474473

`A118396(C(n, ∑{p}[n+1, gcd(n, #)]²))`
-/

namespace A118395.P5300172001911474473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118396 (Nat.choose n ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) ^ 2))

end

end A118395.P5300172001911474473

namespace A118395

/-- `A118396(C(n, ∑{p}[n+1, gcd(n, #)]²))` -/
def P5300172001911474473.Spec : Prop :=
  ∀ n, P5300172001911474473.a n = A118395 n

end A118395

/-! ## A118395.P5381726249696201486

`A000265(A118396(n))`
-/

namespace A118395.P5381726249696201486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A118396 n).toNat

end

end A118395.P5381726249696201486

namespace A118395

/-- `A000265(A118396(n))` -/
def P5381726249696201486.Spec : Prop :=
  ∀ n, P5381726249696201486.a n = A118395 n

end A118395

/-!
# A118396: Eigenvector of triangle A118394; E.g.f.: exp( Sum_{n>=0} x^(3^n) ).

The programs for A118396, there is no canonical definition to state claims against.
-/

/-! ## A118396.P558166936328219889

`A000027(A193375(n)-A053625(n))`
-/

namespace A118396.P558166936328219889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A193375 n - A053625 n).toNat

end

end A118396.P558166936328219889

/-! ## A118396.P6365041823457553963

`A193375(A082216(n))-A053625(n)`
-/

namespace A118396.P6365041823457553963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193375 (A082216 n).toNat - A053625 n

end

end A118396.P6365041823457553963

/-! ## A118396.P477853852735479439

`A193375(A087051(n))-A053625(n)`
-/

namespace A118396.P477853852735479439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193375 (A087051 n).toNat - A053625 n

end

end A118396.P477853852735479439

/-! ## A118396.P1203648260583476795

`A193375(A145461(n+1))-A053625(n)`
-/

namespace A118396.P1203648260583476795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193375 (A145461 (n + 1)).toNat - A053625 n

end

end A118396.P1203648260583476795

/-!
# A118397: Eigenvector of triangle A105070, where A105070(n,k) = 2^k*C(n+1,2*k+1) for 0<=k<=[n/2], n>=0.

The programs for A118397, there is no canonical definition to state claims against.
-/

/-! ## A118397.P13958109976398830969

`∑[A008619((n+1)*A054878(n))]`
-/

namespace A118397.P13958109976398830969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n + 1 : ℤ) * A054878 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118397.P13958109976398830969

/-! ## A118397.P2982527676517683768

`A187188(or(n, A266925(2*n+5)))`
-/

namespace A118397.P2982527676517683768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (Int.lor (n : ℤ) (A266925 (2 * n + 5))).toNat

end

end A118397.P2982527676517683768

/-! ## A118397.P10915361873093370413

`A187188(A342518(n)+A266925(2*n+5))`
-/

namespace A118397.P10915361873093370413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A342518 n + A266925 (2 * n + 5)).toNat

end

end A118397.P10915361873093370413

/-!
# A118398: Eigenvector of the triangle defined by T(n,k) = 2^k*C(n,2*k) for 0<=k<=[n/2], n>=0.

The programs for A118398, there is no canonical definition to state claims against.
-/

/-! ## A118398.P13205361819802014920

`A261585(A261565(n))+A002262(n)`
-/

namespace A118398.P13205361819802014920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A261565 n).toNat + A002262 n

end

end A118398.P13205361819802014920

/-! ## A118398.P821768846506745306

`A261585(A261565(n))+A166352(n)`
-/

namespace A118398.P821768846506745306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A261565 n).toNat + A166352 n

end

end A118398.P821768846506745306

/-! ## A118398.P17036916173888155870

`A261585(A261565(n))+A001222(A257253(n+1))`
-/

namespace A118398.P17036916173888155870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A261565 n).toNat + A001222 (A257253 (n + 1)).toNat

end

end A118398.P17036916173888155870

/-!
# A118399: Eigenvector of the triangle of distinct partitions (A008289), so that: a(n) = Sum_{k=1..tri(n)} A008289(n,k)*a(k) for n>=1 with a(1)=1, where tri(n) = floor((sqrt(8*n+1)-1)/2).

The programs for A118399, there is no canonical definition to state claims against.
-/

/-! ## A118399.P16033939183465715973

`A278298(n+1)-A025466(A000055(n))`
-/

namespace A118399.P16033939183465715973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278298 (n + 1) - A025466 (A000055 n).toNat

end

end A118399.P16033939183465715973

/-! ## A118399.P14196473901032458546

`A278298(n+1)-A178798(A158780(n))`
-/

namespace A118399.P14196473901032458546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278298 (n + 1) - A178798 (A158780 n).toNat

end

end A118399.P14196473901032458546

/-! ## A118399.P10059133252112167910

`A278298(n+1)+A178798(A158780(n)+2)`
-/

namespace A118399.P10059133252112167910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278298 (n + 1) + A178798 (A158780 n + 2).toNat

end

end A118399.P10059133252112167910

/-! ## A118399.P12861742335830326163

`A278298(n+1)-A185284(A284827(n+1))`
-/

namespace A118399.P12861742335830326163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278298 (n + 1) - A185284 (A284827 (n + 1)).toNat

end

end A118399.P12861742335830326163

/-! ## A118399.P10178801205616610497

`A339183(A267008(n+1))+A178798(3*n+1)`
-/

namespace A118399.P10178801205616610497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A267008 (n + 1)).toNat + A178798 (3 * n + 1)

end

end A118399.P10178801205616610497

