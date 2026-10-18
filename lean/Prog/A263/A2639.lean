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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

/-!
# A263900: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263900, there is no canonical definition to state claims against.
-/

/-! ## A263900.P2049998393553353623

`A263905(∑[n+3]+1)`
-/

namespace A263900.P2049998393553353623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263900.P2049998393553353623

/-! ## A263900.P17467718513121958859

`record[A263905(A347633(n+1))]`
-/

namespace A263900.P17467718513121958859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263900.P17467718513121958859

/-! ## A263900.P2124110112568502167

`record[A263905(n+1)/A209576(n+4)]`
-/

namespace A263900.P2124110112568502167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263905 (n + 1) : ℚ) / (A209576 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263900.P2124110112568502167

/-! ## A263900.P14763219684951980515

`record[A263905(n+1)/A263752(n+4)²]`
-/

namespace A263900.P14763219684951980515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263905 (n + 1) : ℚ) / (A263752 (n + 4) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263900.P14763219684951980515

/-! ## A263900.P3017124809700484174

`record[A263905(gcd(n, A276837(n+1)))]`
-/

namespace A263900.P3017124809700484174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (Int.gcd (n : ℤ) (A276837 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263900.P3017124809700484174

/-!
# A263901: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263901, there is no canonical definition to state claims against.
-/

/-! ## A263901.P13215181788522000377

`record[A263905(A027379(n))]`
-/

namespace A263901.P13215181788522000377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263901.P13215181788522000377

/-! ## A263901.P14293348014645594275

`A263905(A141214(n+1))`
-/

namespace A263901.P14293348014645594275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A141214 (n + 1)).toNat

end

end A263901.P14293348014645594275

/-! ## A263901.P16090689846633035671

`A263905(A027379(n+2))`
-/

namespace A263901.P16090689846633035671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A027379 (n + 2)).toNat

end

end A263901.P16090689846633035671

/-! ## A263901.P6922566058831623105

`A263905(eq[4, A140996(n)])`
-/

namespace A263901.P6922566058831623105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263901.P6922566058831623105

/-! ## A263901.P13024202646613856384

`A263905(eq[4, A140997(n)])`
-/

namespace A263901.P13024202646613856384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263901.P13024202646613856384

/-!
# A263902: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263902, there is no canonical definition to state claims against.
-/

/-! ## A263902.P10996538648437264666

`A263905(A046691(n+3))`
-/

namespace A263902.P10996538648437264666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A046691 (n + 3)).toNat

end

end A263902.P10996538648437264666

/-! ## A263902.P6593101181572365222

`A263905(A056115(n)+11)`
-/

namespace A263902.P6593101181572365222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A056115 n + 11).toNat

end

end A263902.P6593101181572365222

/-! ## A263902.P449342097820190974

`A263905(Δ[A023545(n+1)])`
-/

namespace A263902.P449342097820190974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (f1 (n + 1) - f1 n).toNat

end

end A263902.P449342097820190974

/-! ## A263902.P16521619325785282753

`A263905(Δ[A111396(n)]-1)`
-/

namespace A263902.P16521619325785282753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (f1 (n + 1) - f1 n - 1).toNat

end

end A263902.P16521619325785282753

/-! ## A263902.P6895693390981352182

`A263905(A005408(n)+A167614(n+2)+1)`
-/

namespace A263902.P6895693390981352182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A005408 n + (A167614 (n + 2) + 1)).toNat

end

end A263902.P6895693390981352182

/-!
# A263903: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263903, there is no canonical definition to state claims against.
-/

/-! ## A263903.P4127888526502406602

`A263905(A056000(n+2)+5)`
-/

namespace A263903.P4127888526502406602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A056000 (n + 2) + 5).toNat

end

end A263903.P4127888526502406602

/-! ## A263903.P14536083951078213738

`A263905(A000217(n+6)-5)`
-/

namespace A263903.P14536083951078213738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A000217 (n + 6) - 5).toNat

end

end A263903.P14536083951078213738

/-! ## A263903.P3732977363967132640

`A263905(A000124(n+6)-6)`
-/

namespace A263903.P3732977363967132640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A000124 (n + 6) - 6).toNat

end

end A263903.P3732977363967132640

/-! ## A263903.P16825456444658332733

`A263905(Δ[Δ[A006504(n+1)]])`
-/

namespace A263903.P16825456444658332733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (f1 (n + 1) - f1 n).toNat

end

end A263903.P16825456444658332733

/-! ## A263903.P15687213720831717743

`A263905(Δ[A023551(n+1)]+1)`
-/

namespace A263903.P15687213720831717743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (f1 (n + 1) - f1 n + 1).toNat

end

end A263903.P15687213720831717743

/-!
# A263904: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263904, there is no canonical definition to state claims against.
-/

/-! ## A263904.P11739411951716289951

`A263905(A055999(n+4))`
-/

namespace A263904.P11739411951716289951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A055999 (n + 4)).toNat

end

end A263904.P11739411951716289951

/-! ## A263904.P3466727555045436925

`A263905(Δ[A023551(n+2)])`
-/

namespace A263904.P3466727555045436925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (f1 (n + 1) - f1 n).toNat

end

end A263904.P3466727555045436925

/-! ## A263904.P4025922870052575763

`A263905(A052905(n+4)-1)`
-/

namespace A263904.P4025922870052575763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A052905 (n + 4) - 1).toNat

end

end A263904.P4025922870052575763

/-! ## A263904.P3304421894572461110

`A263905(A000124(n+7)-7)`
-/

namespace A263904.P3304421894572461110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A000124 (n + 7) - 7).toNat

end

end A263904.P3304421894572461110

/-! ## A263904.P5470766834901495861

`A263905(A000217(n+6)+n+1)`
-/

namespace A263904.P5470766834901495861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A263904.P5470766834901495861

/-!
# A263905: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263905, there is no canonical definition to state claims against.
-/

/-! ## A263905.P12824294143046561486

`A127321(A006331(A263752(n+1)))`
-/

namespace A263905.P12824294143046561486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A006331 (A263752 (n + 1)).toNat).toNat

end

end A263905.P12824294143046561486

/-! ## A263905.P5021446074074065927

`A048766(A055025(A263714(n+1)²))`
-/

namespace A263905.P5021446074074065927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A055025 (A263714 (n + 1) ^ 2).toNat).toNat

end

end A263905.P5021446074074065927

/-! ## A263905.P7839566001999343556

`A048766(A055664(A263714(n+1)²))`
-/

namespace A263905.P7839566001999343556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A055664 (A263714 (n + 1) ^ 2).toNat).toNat

end

end A263905.P7839566001999343556

/-! ## A263905.P3169382890414271148

`A048766(A084525(A263703(n+1))²)`
-/

namespace A263905.P3169382890414271148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A084525 (A263703 (n + 1)).toNat ^ 2).toNat

end

end A263905.P3169382890414271148

/-! ## A263905.P8025438849910468614

`A048766(A100484(A263703(n+1)²))`
-/

namespace A263905.P8025438849910468614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100484 (A263703 (n + 1) ^ 2).toNat).toNat

end

end A263905.P8025438849910468614

/-!
# A263906: Number of (n+2)X(n+2) 0..1 arrays with each row and column modulo 3 equal to 1, read as a binary number with top and left being the most significant bits.

The programs for A263906, there is no canonical definition to state claims against.
-/

/-! ## A263906.P9732166819883111341

`A263913((n+1)²+n²)`
-/

namespace A263906.P9732166819883111341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263913 ((n + 1) ^ 2 + n ^ 2)

end

end A263906.P9732166819883111341

/-!
# A263907: Number of (2n+2) X (2+2) 0..1 arrays with each row and column modulo 3 equal to 1, read as a binary number with top and left being the most significant bits.

The programs for A263907, there is no canonical definition to state claims against.
-/

/-! ## A263907.P6941724491010952868

`A263913(A096376(n+1))`
-/

namespace A263907.P6941724491010952868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263913 (A096376 (n + 1)).toNat

end

end A263907.P6941724491010952868

/-! ## A263907.P676886769090612017

`A263913(A033537(n)+5)`
-/

namespace A263907.P676886769090612017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263913 (A033537 n + 5).toNat

end

end A263907.P676886769090612017

/-! ## A263907.P16977066358518491078

`A263913(A084849(n+1)+1)`
-/

namespace A263907.P16977066358518491078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263913 (A084849 (n + 1) + 1).toNat

end

end A263907.P16977066358518491078

/-! ## A263907.P11538160987787879183

`A263913(A014105(n+1)+2)`
-/

namespace A263907.P11538160987787879183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263913 (A014105 (n + 1) + 2).toNat

end

end A263907.P11538160987787879183

/-!
# A263908: Number of (2n+1) X (3+2) 0..1 arrays with each row and column modulo 3 equal to 1, read as a binary number with top and left being the most significant bits.

The programs for A263908, the canonical program `A263908.P16343047200149672832` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263908 has offset 1).

The definition of A263908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263908.P16343047200149672832

`(5*2^(1+2*(n+1))+11^(1+2*(n+1))+31*13^(n+1)+29*31^(n+1))/81`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A263908

/-- `(5*2^(1+2*(n+1))+11^(1+2*(n+1))+31*13^(n+1)+29*31^(n+1))/81` -/
def P16343047200149672832.Spec : Prop :=
  ∀ n, P16343047200149672832.a n = (A263908 (n + 1) : ℚ)

end A263908

/-! ## A263908.P1723718934643099209

`A262328(2*(n+1))`
-/

namespace A263908.P1723718934643099209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262328 (2 * (n + 1))

end

end A263908.P1723718934643099209

namespace A263908

/-- `A262328(2*(n+1))` -/
def P1723718934643099209.Spec : Prop :=
  ∀ n, P1723718934643099209.a n = A263908 (n + 1)

end A263908

/-! ## A263908.P16850922187879748468

`record[A262328(A014681(n+1))]`
-/

namespace A263908.P16850922187879748468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262328 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263908.P16850922187879748468

namespace A263908

/-- `record[A262328(A014681(n+1))]` -/
def P16850922187879748468.Spec : Prop :=
  ∀ n, P16850922187879748468.a n = A263908 (n + 1)

end A263908

/-! ## A263908.P17531338656864225070

`A262332(A055998(2*n+3))`
-/

namespace A263908.P17531338656864225070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A055998 (2 * n + 3)).toNat

end

end A263908.P17531338656864225070

namespace A263908

/-- `A262332(A055998(2*n+3))` -/
def P17531338656864225070.Spec : Prop :=
  ∀ n, P17531338656864225070.a n = A263908 (n + 1)

end A263908

/-!
# A263910: Number of (2n+1) X (5+2) 0..1 arrays with each row and column modulo 3 equal to 1, read as a binary number with top and left being the most significant bits.

The programs for A263910, there is no canonical definition to state claims against.
-/

/-! ## A263910.P1932150009865131914

`A262330(2*(n+1))`
-/

namespace A263910.P1932150009865131914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262330 (2 * (n + 1))

end

end A263910.P1932150009865131914

/-!
# A263914: Number of (not necessarily connected) simple bridgeless graphs with n nodes.

The programs for A263914, there is no canonical definition to state claims against.
-/

/-! ## A263914.P5615173505142928552

`A000088(n+1)-A263915(n+1)`
-/

namespace A263914.P5615173505142928552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A263915 (n + 1)

end

end A263914.P5615173505142928552

/-! ## A263914.P9376821698649677365

`Δ[A006897(n)]-A263915(n+1)`
-/

namespace A263914.P9376821698649677365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A263915 (n + 1)

end

end A263914.P9376821698649677365

/-! ## A263914.P5130873895115115602

`record[A327805(n)]-A263915(n+1)`
-/

namespace A263914.P5130873895115115602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A263915 (n + 1)

end

end A263914.P5130873895115115602

/-! ## A263914.P16124250358690367052

`A028310(A076321(n+1)-A263915(n+1))`
-/

namespace A263914.P16124250358690367052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A076321 (n + 1) - A263915 (n + 1)).toNat

end

end A263914.P16124250358690367052

/-!
# A263915: Number of (not necessarily connected) simple bridged graphs with n nodes.

The programs for A263915, there is no canonical definition to state claims against.
-/

/-! ## A263915.P6722704247672073167

`A000088(n+1)-A263914(n+1)`
-/

namespace A263915.P6722704247672073167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A263914 (n + 1)

end

end A263915.P6722704247672073167

/-! ## A263915.P4779404722167420918

`Δ[A006897(n)]-A263914(n+1)`
-/

namespace A263915.P4779404722167420918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A263914 (n + 1)

end

end A263915.P4779404722167420918

/-! ## A263915.P17701564655701560492

`record[A327805(n)]-A263914(n+1)`
-/

namespace A263915.P17701564655701560492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A263914 (n + 1)

end

end A263915.P17701564655701560492

/-! ## A263915.P571184334291892005

`A076321(n+1)-A028310(A263914(n+1))`
-/

namespace A263915.P571184334291892005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - A028310 (A263914 (n + 1)).toNat

end

end A263915.P571184334291892005

/-!
# A263918: Riordan array (f(x)^4, f(x)), where 1 + x*f^4(x)/(1 - x*f(x)) = f(x).

The programs for A263918, there is no canonical definition to state claims against.
-/

/-! ## A263918.P17987700873335637605

`A274708((or(2, 6*n)-1)*A277504(n))`
-/

namespace A263918.P17987700873335637605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274708 (((Nat.lor 2 (6 * n) : ℤ) - 1) * A277504 n).toNat

end

end A263918.P17987700873335637605

/-! ## A263918.P12753093988799875304

`A119304(n)-A178921(A143887(n))`
-/

namespace A263918.P12753093988799875304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 n - A178921 (A143887 n).toNat

end

end A263918.P12753093988799875304

/-!
# A263919: Triangle read by rows giving successive states of cellular automaton generated by "Rule 163" initiated with a single ON (black) cell.

The programs for A263919, the canonical program `A263919.P4377395564244564805` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263919 has offset 0).

The definition of A263919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263919.P5964733161533525610

`char[comp[∑[2-char[∑[n+1]]]]]`
-/

namespace A263919.P5964733161533525610
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A263919.P5964733161533525610

namespace A263919

/-- `char[comp[∑[2-char[∑[n+1]]]]]` -/
def P5964733161533525610.Spec : Prop :=
  ∀ n, (P5964733161533525610.a n : ℤ) = A263919 n

end A263919

/-! ## A263919.P4377395564244564805

`(A266982(n)+n)%2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263919

/-- `(A266982(n)+n)%2` -/
def P4377395564244564805.Spec : Prop :=
  ∀ n, P4377395564244564805.a n = A263919 n

theorem P4377395564244564805.correct : P4377395564244564805.Spec := by
  intro n
  simp only [A263919]

end A263919

/-! ## A263919.P438799020646555919

`1-char[A133280(n)+2]`
-/

namespace A263919.P438799020646555919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A263919.P438799020646555919

namespace A263919

/-- `1-char[A133280(n)+2]` -/
def P438799020646555919.Spec : Prop :=
  ∀ n, P438799020646555919.a n = A263919 n

end A263919

/-! ## A263919.P15341953488190000329

`A265186(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A263919.P15341953488190000329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265186 n - a (n - 1)

end

end A263919.P15341953488190000329

namespace A263919

/-- `A265186(n)-a(n-1)` -/
def P15341953488190000329.Spec : Prop :=
  ∀ n, P15341953488190000329.a n = A263919 n

end A263919

/-! ## A263919.P14549210362447672636

`1-char[A071028(n)+1+n]`
-/

namespace A263919.P14549210362447672636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A263919.P14549210362447672636

namespace A263919

/-- `1-char[A071028(n)+1+n]` -/
def P14549210362447672636.Spec : Prop :=
  ∀ n, P14549210362447672636.a n = A263919 n

end A263919

/-! ## A263919.P9292016352333340500

`A267621(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A263919.P9292016352333340500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A267621 (n - 1) - a (n - 1)

end

end A263919.P9292016352333340500

namespace A263919

/-- `A267621(n-1)-a(n-1)` -/
def P9292016352333340500.Spec : Prop :=
  ∀ n, P9292016352333340500.a n = A263919 n

end A263919

/-! ## A263919.P10587941948593961172

`A267635(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A263919.P10587941948593961172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A267635 (n - 2) - a (n - 1)

end

end A263919.P10587941948593961172

namespace A263919

/-- `A267635(n-2)-a(n-1)` -/
def P10587941948593961172.Spec : Prop :=
  ∀ n, P10587941948593961172.a n = A263919 n

end A263919

/-! ## A263919.P4232681306734930057

`A266070(A053186(n))`
-/

namespace A263919.P4232681306734930057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (A053186 n).toNat

end

end A263919.P4232681306734930057

namespace A263919

/-- `A266070(A053186(n))` -/
def P4232681306734930057.Spec : Prop :=
  ∀ n, P4232681306734930057.a n = A263919 n

end A263919

/-! ## A263919.P15098723684975001290

`A000035(xor(n, A266982(n)))`
-/

namespace A263919.P15098723684975001290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor (n : ℤ) (A266982 n)).toNat

end

end A263919.P15098723684975001290

namespace A263919

/-- `A000035(xor(n, A266982(n)))` -/
def P15098723684975001290.Spec : Prop :=
  ∀ n, P15098723684975001290.a n = A263919 n

end A263919

/-! ## A263919.P15042148561797210354

`(A045918(n)-A266982(n))%2`
-/

namespace A263919.P15042148561797210354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045918 n - A266982 n) 2

end

end A263919.P15042148561797210354

namespace A263919

/-- `(A045918(n)-A266982(n))%2` -/
def P15042148561797210354.Spec : Prop :=
  ∀ n, P15042148561797210354.a n = A263919 n

end A263919

/-! ## A263919.P11140779446690164867

`A014314(and(1, n-A266982(n)))`
-/

namespace A263919.P11140779446690164867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 (Int.land 1 ((n : ℤ) - A266982 n)).toNat

end

end A263919.P11140779446690164867

namespace A263919

/-- `A014314(and(1, n-A266982(n)))` -/
def P11140779446690164867.Spec : Prop :=
  ∀ n, P11140779446690164867.a n = A263919 n

end A263919

/-! ## A263919.P16977339942361436556

`A264749(and(1, n-A266982(n)))`
-/

namespace A263919.P16977339942361436556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.land 1 ((n : ℤ) - A266982 n)).toNat

end

end A263919.P16977339942361436556

namespace A263919

/-- `A264749(and(1, n-A266982(n)))` -/
def P16977339942361436556.Spec : Prop :=
  ∀ n, P16977339942361436556.a n = A263919 n

end A263919

/-! ## A263919.P10650047004919096096

`A000035(A266982(n)+n)`
-/

namespace A263919.P10650047004919096096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A266982 n + (n : ℤ)).toNat

end

end A263919.P10650047004919096096

namespace A263919

/-- `A000035(A266982(n)+n)` -/
def P10650047004919096096.Spec : Prop :=
  ∀ n, P10650047004919096096.a n = A263919 n

end A263919

/-! ## A263919.P10292612357878707525

`A000035(2-(A266982(n)-n))`
-/

namespace A263919.P10292612357878707525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 - (A266982 n - (n : ℤ))).toNat

end

end A263919.P10292612357878707525

namespace A263919

/-- `A000035(2-(A266982(n)-n))` -/
def P10292612357878707525.Spec : Prop :=
  ∀ n, P10292612357878707525.a n = A263919 n

end A263919

/-! ## A263919.P10067320981585269467

`A266243((n-A000196(n)²)²)`
-/

namespace A263919.P10067320981585269467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266243 (((n : ℤ) - A000196 n ^ 2) ^ 2).toNat

end

end A263919.P10067320981585269467

namespace A263919

/-- `A266243((n-A000196(n)²)²)` -/
def P10067320981585269467.Spec : Prop :=
  ∀ n, P10067320981585269467.a n = A263919 n

end A263919

/-! ## A263919.P921015275739218847

`A266719((n-A000196(n)²)²)`
-/

namespace A263919.P921015275739218847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (((n : ℤ) - A000196 n ^ 2) ^ 2).toNat

end

end A263919.P921015275739218847

namespace A263919

/-- `A266719((n-A000196(n)²)²)` -/
def P921015275739218847.Spec : Prop :=
  ∀ n, P921015275739218847.a n = A263919 n

end A263919

/-! ## A263919.P5733088948899625881

`A267598(A053186(n)+A053186(n)²)`
-/

namespace A263919.P5733088948899625881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (A053186 n + A053186 n ^ 2).toNat

end

end A263919.P5733088948899625881

namespace A263919

/-- `A267598(A053186(n)+A053186(n)²)` -/
def P5733088948899625881.Spec : Prop :=
  ∀ n, P5733088948899625881.a n = A263919 n

end A263919

/-! ## A263919.P10435666366476225388

`A267598((A053186(n)+1)*A053186(n))`
-/

namespace A263919.P10435666366476225388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 ((A053186 n + 1) * A053186 n).toNat

end

end A263919.P10435666366476225388

namespace A263919

/-- `A267598((A053186(n)+1)*A053186(n))` -/
def P10435666366476225388.Spec : Prop :=
  ∀ n, P10435666366476225388.a n = A263919 n

end A263919

/-! ## A263919.P10801492105202159605

`and(A267272(n)+n, A052996(n)²)`
-/

namespace A263919.P10801492105202159605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267272 n + (n : ℤ)) (A052996 n ^ 2)

end

end A263919.P10801492105202159605

namespace A263919

/-- `and(A267272(n)+n, A052996(n)²)` -/
def P10801492105202159605.Spec : Prop :=
  ∀ n, P10801492105202159605.a n = A263919 n

end A263919

/-! ## A263919.P1723357833089394575

`A267001((n-A266982(n))²)`
-/

namespace A263919.P1723357833089394575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 (((n : ℤ) - A266982 n) ^ 2).toNat

end

end A263919.P1723357833089394575

namespace A263919

/-- `A267001((n-A266982(n))²)` -/
def P1723357833089394575.Spec : Prop :=
  ∀ n, P1723357833089394575.a n = A263919 n

end A263919

/-!
# A263920: A positive integer n is in this sequence iff arctan(n)^2 can be represented as Sum_{0

The programs for A263920, there is no canonical definition to state claims against.
-/

/-! ## A263920.P9258567613241931101

`lt[log2(n+1)+1, A252890(n+1)]+1`
-/

namespace A263920.P9258567613241931101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A263920.P9258567613241931101

/-!
# A263921: Number of multisets of n permutations of [n] with the symmetric group acting on the permutation elements.

The programs for A263921, there is no canonical definition to state claims against.
-/

/-! ## A263921.P14711678752367021670

`A032578(∑[or(1, n)²])`
-/

namespace A263921.P14711678752367021670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263921.P14711678752367021670

/-!
# A263922: Highest exponent in prime factorization of n-th central binomial coefficient.

The programs for A263922, there is no canonical definition to state claims against.
-/

/-! ## A263922.P6097995045525916564

`A261129(2*(n+1))`
-/

namespace A263922.P6097995045525916564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261129 (2 * (n + 1))

end

end A263922.P6097995045525916564

/-! ## A263922.P4782375808612979102

`A067132(A363596(n))`
-/

namespace A263922.P4782375808612979102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A363596 n).toNat

end

end A263922.P4782375808612979102

/-! ## A263922.P3518771165383261945

`A173923(A062401(2*(n+1)))+A000120(n+1)`
-/

namespace A263922.P3518771165383261945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173923 (A062401 (2 * (n + 1))).toNat + A000120 (n + 1)

end

end A263922.P3518771165383261945

/-! ## A263922.P5314923971834933191

`A000120(2*n+3)-A005171(A081581(2*(n+1)))`
-/

namespace A263922.P5314923971834933191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 3) - A005171 (A081581 (2 * (n + 1))).toNat

end

end A263922.P5314923971834933191

/-! ## A263922.P17324525082701915954

`A066301(A361077(n+1))+1`
-/

namespace A263922.P17324525082701915954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A361077 (n + 1)).toNat + 1

end

end A263922.P17324525082701915954

/-!
# A263923: Expansion of psi(-x^3)^2 * f(-x^2)^3 / f(-x)^2 in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A263923, there is no canonical definition to state claims against.
-/

/-! ## A263923.P1962629252538687312

`A263452(2*n)`
-/

namespace A263923.P1962629252538687312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263452 (2 * n)

end

end A263923.P1962629252538687312

/-! ## A263923.P17298011635001783601

`A263452(n+n)%∑[A058306(n)]`
-/

namespace A263923.P17298011635001783601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263452 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263923.P17298011635001783601

/-! ## A263923.P2216220588056508545

`gcd(A000038(n), A263452(A005843(n)))`
-/

namespace A263923.P2216220588056508545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263452 (A005843 n).toNat)

end

end A263923.P2216220588056508545

/-! ## A263923.P10418428172061481501

`or(A000007(n), A263452(A005843(n)))`
-/

namespace A263923.P10418428172061481501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A263452 (A005843 n).toNat)

end

end A263923.P10418428172061481501

/-! ## A263923.P16050396463723935417

`xor(A000038(n+1), A263452(A005843(n)))`
-/

namespace A263923.P16050396463723935417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 1)) (A263452 (A005843 n).toNat)

end

end A263923.P16050396463723935417

/-! ## A263923.P15933416392707926067

`A118759(A263452(n+n))`
-/

namespace A263923.P15933416392707926067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A263452 (n + n)).toNat

end

end A263923.P15933416392707926067

/-! ## A263923.P14775948460436692790

`A298931(6*n+4)`
-/

namespace A263923.P14775948460436692790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (6 * n + 4)

end

end A263923.P14775948460436692790

/-! ## A263923.P14799671532770651490

`A261426(8*n+7)/2`
-/

namespace A263923.P14799671532770651490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261426 (8 * n + 7) : ℚ) / 2

end

end A263923.P14799671532770651490

/-! ## A263923.P1771983353101186974

`A255191(9*n+8)`
-/

namespace A263923.P1771983353101186974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255191 (9 * n + 8)

end

end A263923.P1771983353101186974

/-! ## A263923.P4576430530915806938

`A045834(sqrt(A017258(n)))/8`
-/

namespace A263923.P4576430530915806938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045834 (SequenceMachineLib.roundAway (Real.sqrt (A017258 n : ℝ))).toNat : ℚ) / 8

end

end A263923.P4576430530915806938

/-! ## A263923.P11506088987463134425

`A045827(12*n+11)`
-/

namespace A263923.P11506088987463134425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (12 * n + 11)

end

end A263923.P11506088987463134425

/-!
# A263925: a(n) = least m > 1 such that m + (prime(n)#)^n is prime.

The programs for A263925, there is no canonical definition to state claims against.
-/

/-! ## A263925.P10676314844028600064

`A325985(A376494(n)+A191888(n+2))`
-/

namespace A263925.P10676314844028600064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325985 (A376494 n + A191888 (n + 2)).toNat

end

end A263925.P10676314844028600064

/-! ## A263925.P8068850075785092992

`A049639(A288762(2*n+1)+A020948(2*n+3))`
-/

namespace A263925.P8068850075785092992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A288762 (2 * n + 1) + A020948 (2 * n + 3)).toNat

end

end A263925.P8068850075785092992

/-!
# A263926: Positions of records in A263455.

The programs for A263926, there is no canonical definition to state claims against.
-/

/-! ## A263926.P9140370805738014942

`lt[A185452(n), A082500(A263455(n+1))]+1`
-/

namespace A263926.P9140370805738014942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A263455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A263926.P9140370805738014942

/-! ## A263926.P7774249980920962132

`A366303(A003219(n+1))`
-/

namespace A263926.P7774249980920962132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366303 (A003219 (n + 1)).toNat

end

end A263926.P7774249980920962132

/-! ## A263926.P12877426039780164940

`or(1, A267302(A044822(2*(n+1))))`
-/

namespace A263926.P12877426039780164940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267302 (A044822 (2 * (n + 1))).toNat)

end

end A263926.P12877426039780164940

/-!
# A263928: Integers m such that sigma(m)^2 is divisible by m.

The programs for A263928, there is no canonical definition to state claims against.
-/

/-! ## A263928.P311789223776284187

`lt[A000203(n+1)²%(n+1), 1]+1`
-/

namespace A263928.P311789223776284187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) ^ 2) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263928.P311789223776284187

/-! ## A263928.P4004368466575981996

`eq[0, A072861(n+1)%(n+1)]+1`
-/

namespace A263928.P4004368466575981996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072861 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263928.P4004368466575981996

/-! ## A263928.P424835047478544437

`lt[A009194(n+1)²%(n+1), 1]+1`
-/

namespace A263928.P424835047478544437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009194 (n + 1) ^ 2) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263928.P424835047478544437

/-! ## A263928.P1273517049671508397

`lt[(A088580(n+1)-1)%A249670(n+1), 1]+1`
-/

namespace A263928.P1273517049671508397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 1) - 1) (A249670 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263928.P1273517049671508397

/-!
# A263929: Number of permutations that are sortable with two stacks in series.

The programs for A263929, there is no canonical definition to state claims against.
-/

/-! ## A263929.P7509641532168323961

`n!-A000194(A291116(n))`
-/

namespace A263929.P7509641532168323961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000194 (A291116 n).toNat

end

end A263929.P7509641532168323961

/-! ## A263929.P17441007157767622002

`n!-A095856(A274376(n))`
-/

namespace A263929.P17441007157767622002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A095856 (A274376 n).toNat

end

end A263929.P17441007157767622002

/-! ## A263929.P16481973785745852835

`n!-A327860(A058834(n))`
-/

namespace A263929.P16481973785745852835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A327860 (A058834 n).toNat

end

end A263929.P16481973785745852835

/-! ## A263929.P826640982685064131

`A154656(n)-A007660(A000579(n))`
-/

namespace A263929.P826640982685064131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154656 n - A007660 (A000579 n).toNat

end

end A263929.P826640982685064131

/-!
# A263930: Number of quasi-Carmichael numbers less than 10^n.

The programs for A263930, there is no canonical definition to state claims against.
-/

/-! ## A263930.P1802610991306121498

`A272046(n)-A300655(A272051(n))`
-/

namespace A263930.P1802610991306121498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272046 n - A300655 (A272051 n).toNat

end

end A263930.P1802610991306121498

/-!
# A263931: a(n) = binomial(2*n, n) / Product(p prime | n < p <= 2*n).

The programs for A263931, the canonical program `A263931.P12716601024892893548` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263931 has offset 0).

The definition of A263931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261130, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263931.P12716601024892893548

`A000984(n)/A261130(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A263931

/-- `A000984(n)/A261130(n)` -/
def P12716601024892893548.Spec : Prop :=
  ∀ n, P12716601024892893548.a n = (A263931 n : ℚ)

end A263931

/-! ## A263931.P9584228477436594658

`lcm(A135322(n), A292442(n))`
-/

namespace A263931.P9584228477436594658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135322 n) (A292442 n)

end

end A263931.P9584228477436594658

namespace A263931

/-- `lcm(A135322(n), A292442(n))` -/
def P9584228477436594658.Spec : Prop :=
  ∀ n, (P9584228477436594658.a n : ℤ) = A263931 n

end A263931

/-! ## A263931.P15839821466427575272

`A005451(n+1)*A170829(n)`
-/

namespace A263931.P15839821466427575272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) * A170829 n

end

end A263931.P15839821466427575272

namespace A263931

/-- `A005451(n+1)*A170829(n)` -/
def P15839821466427575272.Spec : Prop :=
  ∀ n, P15839821466427575272.a n = A263931 n

end A263931

/-! ## A263931.P9860897739091578231

`A182923(2*n)`
-/

namespace A263931.P9860897739091578231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182923 (2 * n)

end

end A263931.P9860897739091578231

namespace A263931

/-- `A182923(2*n)` -/
def P9860897739091578231.Spec : Prop :=
  ∀ n, P9860897739091578231.a n = A263931 n

end A263931

/-! ## A263931.P8282787283195663928

`A212791(abs(1-2*n)+1)`
-/

namespace A263931.P8282787283195663928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212791 (|1 - (2 * n : ℤ)| + 1).toNat

end

end A263931.P8282787283195663928

namespace A263931

/-- `A212791(abs(1-2*n)+1)` -/
def P8282787283195663928.Spec : Prop :=
  ∀ n, P8282787283195663928.a n = A263931 n

end A263931

/-! ## A263931.P10675944644052161283

`A000984(n)/A055773(2*n)`
-/

namespace A263931.P10675944644052161283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A055773 (2 * n) : ℚ)

end

end A263931.P10675944644052161283

namespace A263931

/-- `A000984(n)/A055773(2*n)` -/
def P10675944644052161283.Spec : Prop :=
  ∀ n, P10675944644052161283.a n = (A263931 n : ℚ)

end A263931

/-! ## A263931.P6575897384123012870

`A001405(2*n)/A055773(2*n)`
-/

namespace A263931.P6575897384123012870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) : ℚ) / (A055773 (2 * n) : ℚ)

end

end A263931.P6575897384123012870

namespace A263931

/-- `A001405(2*n)/A055773(2*n)` -/
def P6575897384123012870.Spec : Prop :=
  ∀ n, P6575897384123012870.a n = (A263931 n : ℚ)

end A263931

/-! ## A263931.P13787354223953122547

`A056040(2*n)/A261130(n)`
-/

namespace A263931.P13787354223953122547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n) : ℚ) / (A261130 n : ℚ)

end

end A263931.P13787354223953122547

namespace A263931

/-- `A056040(2*n)/A261130(n)` -/
def P13787354223953122547.Spec : Prop :=
  ∀ n, P13787354223953122547.a n = (A263931 n : ℚ)

end A263931

/-! ## A263931.P1050748269772313563

`A056040(2*n)/A055773(2*n)`
-/

namespace A263931.P1050748269772313563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n) : ℚ) / (A055773 (2 * n) : ℚ)

end

end A263931.P1050748269772313563

namespace A263931

/-- `A056040(2*n)/A055773(2*n)` -/
def P1050748269772313563.Spec : Prop :=
  ∀ n, P1050748269772313563.a n = (A263931 n : ℚ)

end A263931

/-! ## A263931.P11176198063884302797

`(A189911(2*n)-A212303(2*n))/A055773(2*n)`
-/

namespace A263931.P11176198063884302797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189911 (2 * n) - A212303 (2 * n) : ℚ) / (A055773 (2 * n) : ℚ)

end

end A263931.P11176198063884302797

namespace A263931

/-- `(A189911(2*n)-A212303(2*n))/A055773(2*n)` -/
def P11176198063884302797.Spec : Prop :=
  ∀ n, P11176198063884302797.a n = (A263931 n : ℚ)

end A263931

/-! ## A263931.P13788094249918181860

`A000984(n)*A034386(n)/A034386(2*n)`
-/

namespace A263931.P13788094249918181860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n * A034386 n : ℚ) / (A034386 (2 * n) : ℚ)

end

end A263931.P13788094249918181860

namespace A263931

/-- `A000984(n)*A034386(n)/A034386(2*n)` -/
def P13788094249918181860.Spec : Prop :=
  ∀ n, P13788094249918181860.a n = (A263931 n : ℚ)

end A263931

/-!
# A263932: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and the total absolute value of displacements not greater than n.

The programs for A263932, there is no canonical definition to state claims against.
-/

/-! ## A263932.P10629437663066394036

`A263939(A056000(n+7))`
-/

namespace A263932.P10629437663066394036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A056000 (n + 7)).toNat

end

end A263932.P10629437663066394036

/-! ## A263932.P7431195170170737746

`A263939(eq[8, A219347(n)])`
-/

namespace A263932.P7431195170170737746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263932.P7431195170170737746

/-! ## A263932.P2157901804576035949

`A263939(eq[9, A193592(n)])`
-/

namespace A263932.P2157901804576035949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263932.P2157901804576035949

/-! ## A263932.P4468148106713088976

`A263939(A055999(n+7)-3)`
-/

namespace A263932.P4468148106713088976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A055999 (n + 7) - 3).toNat

end

end A263932.P4468148106713088976

/-! ## A263932.P17219586193104613447

`A263939(A000096(n+9)-8)`
-/

namespace A263932.P17219586193104613447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A000096 (n + 9) - 8).toNat

end

end A263932.P17219586193104613447

/-!
# A263933: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and the total absolute value of displacements not greater than n.

The programs for A263933, there is no canonical definition to state claims against.
-/

/-! ## A263933.P8660376278689641467

`A263939(∑[n+2])`
-/

namespace A263933.P8660376278689641467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263933.P8660376278689641467

/-! ## A263933.P4230725169470701318

`record[A263939(A347633(n+1)+1)]`
-/

namespace A263933.P4230725169470701318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263933.P4230725169470701318

/-! ## A263933.P2099863223622605153

`record[A263939(A278504(2*n+1))]`
-/

namespace A263933.P2099863223622605153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A278504 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263933.P2099863223622605153

/-! ## A263933.P392609524125091465

`or(char[9], A263939(A000096(n+1)))`
-/

namespace A263933.P392609524125091465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263939 (A000096 (n + 1)).toNat)

end

end A263933.P392609524125091465

/-! ## A263933.P15078284690512129847

`record[A263939(A000096(round(lcm(2, n+3)/6)))]`
-/

namespace A263933.P15078284690512129847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A000096 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263933.P15078284690512129847

/-!
# A263934: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and the total absolute value of displacements not greater than n.

The programs for A263934, there is no canonical definition to state claims against.
-/

/-! ## A263934.P13095754779533090003

`A263939(∑[n+3]+1)`
-/

namespace A263934.P13095754779533090003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263934.P13095754779533090003

/-! ## A263934.P7422214041180621847

`record[A263939(A347633(n+1))]`
-/

namespace A263934.P7422214041180621847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263934.P7422214041180621847

/-! ## A263934.P3887138140487380748

`A263939(Δ[A008778(n)])+char[36]`
-/

namespace A263934.P3887138140487380748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263934.P3887138140487380748

/-! ## A263934.P4555479913833213312

`record[A103452(n+2)*A263939(n+1)]`
-/

namespace A263934.P4555479913833213312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 2) * A263939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263934.P4555479913833213312

/-! ## A263934.P9661260954384722797

`A263939(Δ[A008778(n)])%(A000108(n+1)+1)`
-/

namespace A263934.P9661260954384722797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263939 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 1) + 1)

end

end A263934.P9661260954384722797

/-!
# A263935: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and the total absolute value of displacements not greater than n.

The programs for A263935, there is no canonical definition to state claims against.
-/

/-! ## A263935.P7887418680334202009

`A263939(∑[n+4]+3)`
-/

namespace A263935.P7887418680334202009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263935.P7887418680334202009

/-! ## A263935.P4033319523639422533

`record[A263939(A027379(n))]`
-/

namespace A263935.P4033319523639422533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263935.P4033319523639422533

/-! ## A263935.P11177335999695135647

`A263939(A027379(n+2))+C(n, 64)`
-/

namespace A263935.P11177335999695135647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A027379 (n + 2)).toNat + (Nat.choose n 64 : ℤ)

end

end A263935.P11177335999695135647

/-! ## A263935.P8580898205272680142

`A001222(A151800(n))*A263939(A027379(n+2))`
-/

namespace A263935.P8580898205272680142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 n).toNat * A263939 (A027379 (n + 2)).toNat

end

end A263935.P8580898205272680142

/-! ## A263935.P15463997431070797576

`record[A263939(A237346(n+2)-1)]`
-/

namespace A263935.P15463997431070797576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A237346 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263935.P15463997431070797576

/-!
# A263936: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and the total absolute value of displacements not greater than n.

The programs for A263936, there is no canonical definition to state claims against.
-/

/-! ## A263936.P16942036711731769783

`A263939(∑[n+5]+6)`
-/

namespace A263936.P16942036711731769783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263936.P16942036711731769783

/-! ## A263936.P16993160543149715560

`or(char[2], A263939(A046691(n+3)))`
-/

namespace A263936.P16993160543149715560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263939 (A046691 (n + 3)).toNat)

end

end A263936.P16993160543149715560

/-! ## A263936.P15374931729050601283

`record[A263939(record[A347633(n+1)]+n)]`
-/

namespace A263936.P15374931729050601283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263936.P15374931729050601283

/-! ## A263936.P747316009641096173

`A007318(C(2, n))*A263939(A046691(n+3))`
-/

namespace A263936.P747316009641096173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263939 (A046691 (n + 3)).toNat

end

end A263936.P747316009641096173

/-! ## A263936.P1318821514115599217

`A263939(A046691(n+3))+and(2, A000041(n)²)`
-/

namespace A263936.P1318821514115599217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A046691 (n + 3)).toNat + Int.land 2 (A000041 n ^ 2)

end

end A263936.P1318821514115599217

/-!
# A263937: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and the total absolute value of displacements not greater than n.

The programs for A263937, there is no canonical definition to state claims against.
-/

/-! ## A263937.P1300010951771469552

`A263939(A052905(n+3))`
-/

namespace A263937.P1300010951771469552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A052905 (n + 3)).toNat

end

end A263937.P1300010951771469552

/-! ## A263937.P5270707197914742116

`A263939(A056119(n)+16)`
-/

namespace A263937.P5270707197914742116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A056119 n + 16).toNat

end

end A263937.P5270707197914742116

/-! ## A263937.P3759914564816217746

`A263939(eq[3, A219347(n)])`
-/

namespace A263937.P3759914564816217746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263937.P3759914564816217746

/-! ## A263937.P9039316801708763493

`A263939(eq[5, A193592(n)])`
-/

namespace A263937.P9039316801708763493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263937.P9039316801708763493

/-! ## A263937.P11855728585695942144

`A263939(A055999(n+3)+1)`
-/

namespace A263937.P11855728585695942144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A055999 (n + 3) + 1).toNat

end

end A263937.P11855728585695942144

/-!
# A263938: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and the total absolute value of displacements not greater than n.

The programs for A263938, there is no canonical definition to state claims against.
-/

/-! ## A263938.P9407462266888674773

`A263939(A055999(n+4))`
-/

namespace A263938.P9407462266888674773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A055999 (n + 4)).toNat

end

end A263938.P9407462266888674773

/-! ## A263938.P18006669502846515904

`A263939(eq[4, A219347(n)])`
-/

namespace A263938.P18006669502846515904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263938.P18006669502846515904

/-! ## A263938.P7216973673170040387

`A263939(eq[6, A193592(n)])`
-/

namespace A263938.P7216973673170040387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263938.P7216973673170040387

/-! ## A263938.P10953823186751755263

`A263939(Δ[A023551(n+2)])`
-/

namespace A263938.P10953823186751755263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (f1 (n + 1) - f1 n).toNat

end

end A263938.P10953823186751755263

/-! ## A263938.P6696836309252067973

`A263939(A052905(n+4)-1)`
-/

namespace A263938.P6696836309252067973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A052905 (n + 4) - 1).toNat

end

end A263938.P6696836309252067973

/-!
# A263939: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and the total absolute value of displacements not greater than n.

The programs for A263939, there is no canonical definition to state claims against.
-/

/-! ## A263939.P7372566775012988269

`A141059(2^A263744(n+1))`
-/

namespace A263939.P7372566775012988269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141059 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A263744 (n + 1) : ℤ))).toNat

end

end A263939.P7372566775012988269

/-! ## A263939.P241727231282915426

`A000041(A183534(n+1))%A274522(2*(n+1))`
-/

namespace A263939.P241727231282915426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A183534 (n + 1)).toNat) (A274522 (2 * (n + 1)))

end

end A263939.P241727231282915426

/-!
# A263940: Numbers such that the product of the sum of their anti-divisors and the sum of the reciprocals of their anti-divisors is an integer.

The programs for A263940, there is no canonical definition to state claims against.
-/

/-! ## A263940.P7746555691451783023

`A032766(A326810(n)^A365380(n+1))`
-/

namespace A263940.P7746555691451783023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A326810 n : ℚ) ^ (A365380 (n + 1) : ℤ))).toNat

end

end A263940.P7746555691451783023

/-!
# A263941: Minimal most likely sum for a roll of n 8-sided dice.

The programs for A263941, the canonical program `A263941.P14999782208655751488` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263941 has offset 1).

The definition of A263941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263941.P14999782208655751488

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=9, a(2)=13, a(3)=18`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A263941

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14999782208655751488.Spec : Prop :=
  ∀ n, P14999782208655751488.a n = A263941 (n + 1)

theorem P14999782208655751488.correct : P14999782208655751488.Spec := by
  intro n
  simp only [A263941, Nat.add_sub_cancel]

end A263941

/-! ## A263941.P1780223620250361098

`a(n-2)+9` with `a(0)=1, a(1)=9, a(2)=13`
-/

namespace A263941.P1780223620250361098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 13] fun n a =>
  a (n - 2) + 9

end

end A263941.P1780223620250361098

namespace A263941

/-- `a(n-2)+9` -/
def P1780223620250361098.Spec : Prop :=
  ∀ n, (P1780223620250361098.a n : ℤ) = A263941 (n + 1)

end A263941

/-! ## A263941.P6712890008904559822

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=8, a(2)=4, a(3)=5`
-/

namespace A263941.P6712890008904559822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 4, 5] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263941.P6712890008904559822

namespace A263941

/-- `∑[abs(a(n-2))]` -/
def P6712890008904559822.Spec : Prop :=
  ∀ n, (P6712890008904559822.a n : ℤ) = A263941 (n + 1)

end A263941

/-! ## A263941.P13963620379878755679

`∑[9-a(n-1)]` with `a(0)=1, a(1)=8, a(2)=4`
-/

namespace A263941.P13963620379878755679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 4] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263941.P13963620379878755679

namespace A263941

/-- `∑[9-a(n-1)]` -/
def P13963620379878755679.Spec : Prop :=
  ∀ n, P13963620379878755679.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P18306652335652722845

`record[(2*n+1)²%9+n]`
-/

namespace A263941.P18306652335652722845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 % 9 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263941.P18306652335652722845

namespace A263941

/-- `record[(2*n+1)²%9+n]` -/
def P18306652335652722845.Spec : Prop :=
  ∀ n, (P18306652335652722845.a n : ℤ) = A263941 (n + 1)

end A263941

/-! ## A263941.P545306890581873074

`record[(n+5)^val(dr(n+9), 4)]`
-/

namespace A263941.P545306890581873074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) ^ SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (n + 9 : ℤ)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263941.P545306890581873074

namespace A263941

/-- `record[(n+5)^val(dr(n+9), 4)]` -/
def P545306890581873074.Spec : Prop :=
  ∀ n, (P545306890581873074.a n : ℤ) = A263941 (n + 1)

end A263941

/-! ## A263941.P9038866549011662579

`record[dr((2*n+1)²-n)+n]`
-/

namespace A263941.P9038866549011662579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((2 * n + 1) ^ 2 : ℤ) - (n : ℤ)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263941.P9038866549011662579

namespace A263941

/-- `record[dr((2*n+1)²-n)+n]` -/
def P9038866549011662579.Spec : Prop :=
  ∀ n, (P9038866549011662579.a n : ℤ) = A263941 (n + 1)

end A263941

/-! ## A263941.P13657436491274399059

`A056991(A103517(n))`
-/

namespace A263941.P13657436491274399059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A103517 n).toNat

end

end A263941.P13657436491274399059

namespace A263941

/-- `A056991(A103517(n))` -/
def P13657436491274399059.Spec : Prop :=
  ∀ n, P13657436491274399059.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P11350128365338800669

`A062545(n)+A047209(n+1)`
-/

namespace A263941.P11350128365338800669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n + A047209 (n + 1)

end

end A263941.P11350128365338800669

namespace A263941

/-- `A062545(n)+A047209(n+1)` -/
def P11350128365338800669.Spec : Prop :=
  ∀ n, P11350128365338800669.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P6588964544677490919

`A130877(n+1)+A123932(n)`
-/

namespace A263941.P6588964544677490919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1) + A123932 n

end

end A263941.P6588964544677490919

namespace A263941

/-- `A130877(n+1)+A123932(n)` -/
def P6588964544677490919.Spec : Prop :=
  ∀ n, P6588964544677490919.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P11189035871304082794

`A274406(n+1)+A040001(n)²`
-/

namespace A263941.P11189035871304082794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) + A040001 n ^ 2

end

end A263941.P11189035871304082794

namespace A263941

/-- `A274406(n+1)+A040001(n)²` -/
def P11189035871304082794.Spec : Prop :=
  ∀ n, P11189035871304082794.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P5282105320675818536

`A100832(n+1)+A047208(n+1)`
-/

namespace A263941.P5282105320675818536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1) + A047208 (n + 1)

end

end A263941.P5282105320675818536

namespace A263941

/-- `A100832(n+1)+A047208(n+1)` -/
def P5282105320675818536.Spec : Prop :=
  ∀ n, P5282105320675818536.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P15034147769011666880

`A258588(n+1)-A087156(n+1)`
-/

namespace A263941.P15034147769011666880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258588 (n + 1) - A087156 (n + 1)

end

end A263941.P15034147769011666880

namespace A263941

/-- `A258588(n+1)-A087156(n+1)` -/
def P15034147769011666880.Spec : Prop :=
  ∀ n, P15034147769011666880.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P7633429638655543959

`A258589(n+1)-A163300(n+1)`
-/

namespace A263941.P7633429638655543959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (n + 1) - A163300 (n + 1)

end

end A263941.P7633429638655543959

namespace A263941

/-- `A258589(n+1)-A163300(n+1)` -/
def P7633429638655543959.Spec : Prop :=
  ∀ n, P7633429638655543959.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P13404519788873381850

`A065033(n)+2*A163300(n+1)`
-/

namespace A263941.P13404519788873381850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + 2 * A163300 (n + 1)

end

end A263941.P13404519788873381850

namespace A263941

/-- `A065033(n)+2*A163300(n+1)` -/
def P13404519788873381850.Spec : Prop :=
  ∀ n, P13404519788873381850.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P7969683553155118113

`A258589(n+1)-2*A087156(n+1)`
-/

namespace A263941.P7969683553155118113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (n + 1) - 2 * A087156 (n + 1)

end

end A263941.P7969683553155118113

namespace A263941

/-- `A258589(n+1)-2*A087156(n+1)` -/
def P7969683553155118113.Spec : Prop :=
  ∀ n, P7969683553155118113.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P3693655195417291223

`2*A258588(n+1)-A258589(n+1)`
-/

namespace A263941.P3693655195417291223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258588 (n + 1) - A258589 (n + 1)

end

end A263941.P3693655195417291223

namespace A263941

/-- `2*A258588(n+1)-A258589(n+1)` -/
def P3693655195417291223.Spec : Prop :=
  ∀ n, P3693655195417291223.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P13009512273131486178

`A242660(A130773(n+1))`
-/

namespace A263941.P13009512273131486178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (A130773 (n + 1)).toNat

end

end A263941.P13009512273131486178

namespace A263941

/-- `A242660(A130773(n+1))` -/
def P13009512273131486178.Spec : Prop :=
  ∀ n, P13009512273131486178.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P11244135026346441912

`A242660(A140139(n+2))`
-/

namespace A263941.P11244135026346441912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (A140139 (n + 2)).toNat

end

end A263941.P11244135026346441912

namespace A263941

/-- `A242660(A140139(n+2))` -/
def P11244135026346441912.Spec : Prop :=
  ∀ n, P11244135026346441912.a n = A263941 (n + 1)

end A263941

/-! ## A263941.P18152083323499697185

`A199969(n+2)+A030123(n+1)`
-/

namespace A263941.P18152083323499697185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 2) + A030123 (n + 1)

end

end A263941.P18152083323499697185

namespace A263941

/-- `A199969(n+2)+A030123(n+1)` -/
def P18152083323499697185.Spec : Prop :=
  ∀ n, P18152083323499697185.a n = A263941 (n + 1)

end A263941

/-!
# A263942: Positive integers m such that (m+4)^3 - m^3 is a square.

The programs for A263942, the canonical program `A263942.P1805139339176749322` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263942 has offset 1).

The definition of A263942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263942.P1805139339176749322

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=6, a(1)=28, a(2)=110`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A263942

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P1805139339176749322.Spec : Prop :=
  ∀ n, P1805139339176749322.a n = A263942 (n + 1)

theorem P1805139339176749322.correct : P1805139339176749322.Spec := by
  intro n
  simp only [A263942, Nat.add_sub_cancel]

end A263942

/-! ## A263942.P4792263587761108036

`2*A001353(n+2)-2`
-/

namespace A263942.P4792263587761108036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001353 (n + 2) - 2

end

end A263942.P4792263587761108036

namespace A263942

/-- `2*A001353(n+2)-2` -/
def P4792263587761108036.Spec : Prop :=
  ∀ n, P4792263587761108036.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P57433713327087483

`∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=6`
-/

namespace A263942.P57433713327087483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263942.P57433713327087483

namespace A263942

/-- `∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P57433713327087483.Spec : Prop :=
  ∀ n, P57433713327087483.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P10721317046372370192

`floor((sqrt(3)+2)*a(n-1))+6` with `a(0)=6`
-/

namespace A263942.P10721317046372370192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 6

end

end A263942.P10721317046372370192

namespace A263942

/-- `floor((sqrt(3)+2)*a(n-1))+6` -/
def P10721317046372370192.Spec : Prop :=
  ∀ n, P10721317046372370192.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P7016488524350922938

`ceil((sqrt(3)+2)*a(n-1))+5` with `a(0)=6`
-/

namespace A263942.P7016488524350922938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 5

end

end A263942.P7016488524350922938

namespace A263942

/-- `ceil((sqrt(3)+2)*a(n-1))+5` -/
def P7016488524350922938.Spec : Prop :=
  ∀ n, P7016488524350922938.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P1377661296896498193

`∑[-round(a(n-1)/(sqrt(3)-2))]` with `a(0)=6`
-/

namespace A263942.P1377661296896498193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263942.P1377661296896498193

namespace A263942

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]` -/
def P1377661296896498193.Spec : Prop :=
  ∀ n, P1377661296896498193.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P12258986179836031444

`∑[4*a(n-1)-a(n-2)]` with `a(0)=6, a(1)=22`
-/

namespace A263942.P12258986179836031444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 22] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263942.P12258986179836031444

namespace A263942

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P12258986179836031444.Spec : Prop :=
  ∀ n, P12258986179836031444.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P1609812558408141068

`∑[A003699(n+2)]`
-/

namespace A263942.P1609812558408141068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263942.P1609812558408141068

namespace A263942

/-- `∑[A003699(n+2)]` -/
def P1609812558408141068.Spec : Prop :=
  ∀ n, P1609812558408141068.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P12096279217537140566

`A052530(n+2)-2`
-/

namespace A263942.P12096279217537140566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 2) - 2

end

end A263942.P12096279217537140566

namespace A263942

/-- `A052530(n+2)-2` -/
def P12096279217537140566.Spec : Prop :=
  ∀ n, P12096279217537140566.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P4778032308108365834

`2*(A010905(n)-1)`
-/

namespace A263942.P4778032308108365834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010905 n - 1)

end

end A263942.P4778032308108365834

namespace A263942

/-- `2*(A010905(n)-1)` -/
def P4778032308108365834.Spec : Prop :=
  ∀ n, P4778032308108365834.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P1990495102178836131

`A071954(n+2)-4`
-/

namespace A263942.P1990495102178836131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071954 (n + 2) - 4

end

end A263942.P1990495102178836131

namespace A263942

/-- `A071954(n+2)-4` -/
def P1990495102178836131.Spec : Prop :=
  ∀ n, P1990495102178836131.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P8718260860444872160

`∑[2*A001835(n+2)]`
-/

namespace A263942.P8718260860444872160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001835 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263942.P8718260860444872160

namespace A263942

/-- `∑[2*A001835(n+2)]` -/
def P8718260860444872160.Spec : Prop :=
  ∀ n, P8718260860444872160.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P5656610098741594985

`∑[2*A079935(n+2)]`
-/

namespace A263942.P5656610098741594985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263942.P5656610098741594985

namespace A263942

/-- `∑[2*A079935(n+2)]` -/
def P5656610098741594985.Spec : Prop :=
  ∀ n, P5656610098741594985.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P12876654207023565051

`A048788(2*(n+2))-2`
-/

namespace A263942.P12876654207023565051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (2 * (n + 2)) - 2

end

end A263942.P12876654207023565051

namespace A263942

/-- `A048788(2*(n+2))-2` -/
def P12876654207023565051.Spec : Prop :=
  ∀ n, P12876654207023565051.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P16878445820058342490

`2*(A072110(n+2)-2)`
-/

namespace A263942.P16878445820058342490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072110 (n + 2) - 2)

end

end A263942.P16878445820058342490

namespace A263942

/-- `2*(A072110(n+2)-2)` -/
def P16878445820058342490.Spec : Prop :=
  ∀ n, P16878445820058342490.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P13994354034262747634

`A162959(2*(n+2))-2`
-/

namespace A263942.P13994354034262747634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 (2 * (n + 2)) - 2

end

end A263942.P13994354034262747634

namespace A263942

/-- `A162959(2*(n+2))-2` -/
def P13994354034262747634.Spec : Prop :=
  ∀ n, P13994354034262747634.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P8925723402420766049

`A254308(3*(n+2))-2`
-/

namespace A263942.P8925723402420766049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (3 * (n + 2)) - 2

end

end A263942.P8925723402420766049

namespace A263942

/-- `A254308(3*(n+2))-2` -/
def P8925723402420766049.Spec : Prop :=
  ∀ n, P8925723402420766049.a n = A263942 (n + 1)

end A263942

/-! ## A263942.P13070858859085857542

`lcm(2, A110294(n+1))-2`
-/

namespace A263942.P13070858859085857542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A110294 (n + 1)) : ℤ) - 2

end

end A263942.P13070858859085857542

namespace A263942

/-- `lcm(2, A110294(n+1))-2` -/
def P13070858859085857542.Spec : Prop :=
  ∀ n, P13070858859085857542.a n = A263942 (n + 1)

end A263942

/-!
# A263943: Positive integers n such that (n+21)^3 - n^3 is a square.

The programs for A263943, there is no canonical definition to state claims against.
-/

/-! ## A263943.P10505457783054686220

`7*A350981(n+1)`
-/

namespace A263943.P10505457783054686220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A350981 (n + 1)

end

end A263943.P10505457783054686220

/-! ## A263943.P10160150850697850523

`7*(A296376(n+1)-1)`
-/

namespace A263943.P10160150850697850523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A296376 (n + 1) - 1)

end

end A263943.P10160150850697850523

/-! ## A263943.P15220490522124578362

`lcm(7, A350981(n+1)%A266698(n+1))`
-/

namespace A263943.P15220490522124578362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (Int.tmod (A350981 (n + 1)) (A266698 (n + 1)))

end

end A263943.P15220490522124578362

/-! ## A263943.P11393411401600311510

`record[7*A350981(A261363(n))]`
-/

namespace A263943.P11393411401600311510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A350981 (A261363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263943.P11393411401600311510

/-! ## A263943.P2417456455389189989

`lcm(gcd(7, A350982(n)), A350981(n+1))`
-/

namespace A263943.P2417456455389189989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 7 (A350982 n) : ℤ) (A350981 (n + 1))

end

end A263943.P2417456455389189989

/-!
# A263944: Positive integers n such that (n+28)^3 - n^3 is a square.

The programs for A263944, the canonical program `A263944.P17990882226343985104` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263944 has offset 1).

The definition of A263944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263944.P17990882226343985104

`6*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=28, a(1)=189, a(2)=959`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A263944

/-- `6*a(n-1)-6*a(n-2)+a(n-3)` -/
def P17990882226343985104.Spec : Prop :=
  ∀ n, P17990882226343985104.a n = A263944 (n + 1)

theorem P17990882226343985104.correct : P17990882226343985104.Spec := by
  intro n
  simp only [A263944, Nat.add_sub_cancel]

end A263944

/-! ## A263944.P7982134946146330822

`7*(A030221(n+1)-2)`
-/

namespace A263944.P7982134946146330822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A030221 (n + 1) - 2)

end

end A263944.P7982134946146330822

namespace A263944

/-- `7*(A030221(n+1)-2)` -/
def P7982134946146330822.Spec : Prop :=
  ∀ n, P7982134946146330822.a n = A263944 (n + 1)

end A263944

/-!
# A263948: Positive integers n such that (n+61)^3 - n^3 is a square.

The programs for A263948, there is no canonical definition to state claims against.
-/

/-! ## A263948.P5234103939997457388

`61*A274972(n+1)`
-/

namespace A263948.P5234103939997457388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  61 * A274972 (n + 1)

end

end A263948.P5234103939997457388

/-!
# A263950: Array read by antidiagonals: T(n,k) is the number of lattices L in Z^k such that the quotient group Z^k / L is C_n.

The programs for A263950, there is no canonical definition to state claims against.
-/

/-! ## A263950.P5410275222935392823

`A059379(n+1)/A106476(n)`
-/

namespace A263950.P5410275222935392823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059379 (n + 1) : ℚ) / (A106476 n : ℚ)

end

end A263950.P5410275222935392823

/-! ## A263950.P12440698533230593384

`A059379(n+1)/A000010(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A263950.P12440698533230593384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059379 (n + 1) : ℚ) / (A000010 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ)

end

end A263950.P12440698533230593384

/-! ## A263950.P3669263032512376003

`A059379(n+1)/A000010(A004736(n+1))`
-/

namespace A263950.P3669263032512376003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059379 (n + 1) : ℚ) / (A000010 (A004736 (n + 1)).toNat : ℚ)

end

end A263950.P3669263032512376003

/-! ## A263950.P2208506899206527305

`A059380(A038722(n+1))/A106476(n)`
-/

namespace A263950.P2208506899206527305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059380 (A038722 (n + 1)).toNat : ℚ) / (A106476 n : ℚ)

end

end A263950.P2208506899206527305

/-! ## A263950.P17945859279953983110

`A059380(A061579(n)+1)/A106476(n)`
-/

namespace A263950.P17945859279953983110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059380 (A061579 n + 1).toNat : ℚ) / (A106476 n : ℚ)

end

end A263950.P17945859279953983110

/-! ## A263950.P12035309790569032929

`A059380(A038722(n+1))/A000010(A004736(n+1))`
-/

namespace A263950.P12035309790569032929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059380 (A038722 (n + 1)).toNat : ℚ) / (A000010 (A004736 (n + 1)).toNat : ℚ)

end

end A263950.P12035309790569032929

/-! ## A263950.P4231411059749437314

`A059380(A061579(n)+1)/A000010(A004736(n+1))`
-/

namespace A263950.P4231411059749437314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059380 (A061579 n + 1).toNat : ℚ) / (A000010 (A004736 (n + 1)).toNat : ℚ)

end

end A263950.P4231411059749437314

/-! ## A263950.P18003163818620079018

`A059380(A114327(n)+1+n)/A000010(A004736(n+1))`
-/

namespace A263950.P18003163818620079018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059380 (A114327 n + 1 + (n : ℤ)).toNat : ℚ) / (A000010 (A004736 (n + 1)).toNat : ℚ)

end

end A263950.P18003163818620079018

/-!
# A263951: Square numbers in A070552.

The programs for A263951, there is no canonical definition to state claims against.
-/

/-! ## A263951.P12726649236010501323

`A048161(n+1)²`
-/

namespace A263951.P12726649236010501323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1) ^ 2

end

end A263951.P12726649236010501323

/-! ## A263951.P18253197959087208033

`2*A067755(n+1)+1`
-/

namespace A263951.P18253197959087208033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067755 (n + 1) + 1

end

end A263951.P18253197959087208033

/-! ## A263951.P6918388092538815900

`A259979(n+1)-1`
-/

namespace A263951.P6918388092538815900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259979 (n + 1) - 1

end

end A263951.P6918388092538815900

/-! ## A263951.P5126879780499978977

`2*A067756(n+1)-1`
-/

namespace A263951.P5126879780499978977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067756 (n + 1) - 1

end

end A263951.P5126879780499978977

/-! ## A263951.P7582586349049075896

`(2*A068501(n+1)+1)²`
-/

namespace A263951.P7582586349049075896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A068501 (n + 1) + 1) ^ 2

end

end A263951.P7582586349049075896

/-! ## A263951.P18035372474789315128

`(1-2*A178659(n+1))²`
-/

namespace A263951.P18035372474789315128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A178659 (n + 1)) ^ 2

end

end A263951.P18035372474789315128

/-! ## A263951.P5221839950856828960

`A067756(n+1)+A067755(n+1)`
-/

namespace A263951.P5221839950856828960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067756 (n + 1) + A067755 (n + 1)

end

end A263951.P5221839950856828960

/-! ## A263951.P7726461054137436228

`(A178659(n+1)+A068501(n+1))²`
-/

namespace A263951.P7726461054137436228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178659 (n + 1) + A068501 (n + 1)) ^ 2

end

end A263951.P7726461054137436228

/-! ## A263951.P8429426423114992872

`(A334802(n+1)/A067756(n+1))²`
-/

namespace A263951.P8429426423114992872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A334802 (n + 1) : ℚ) / (A067756 (n + 1) : ℚ)) ^ 2

end

end A263951.P8429426423114992872

/-! ## A263951.P15492196437621322418

`(2/A259979(n+1)*A334802(n+1))²`
-/

namespace A263951.P15492196437621322418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A259979 (n + 1) : ℚ) * (A334802 (n + 1) : ℚ)) ^ 2

end

end A263951.P15492196437621322418

/-! ## A263951.P3170145768853181201

`A048161(A000027(n+1))*A048161(n+1)`
-/

namespace A263951.P3170145768853181201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (A000027 (n + 1)).toNat * A048161 (n + 1)

end

end A263951.P3170145768853181201

/-! ## A263951.P17124055430246565462

`(A178659(n+1)+A068501(n+1))*A048161(n+1)`
-/

namespace A263951.P17124055430246565462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178659 (n + 1) + A068501 (n + 1)) * A048161 (n + 1)

end

end A263951.P17124055430246565462

/-! ## A263951.P10996824517941578317

`A048161(n+1)/A067756(n+1)*A334802(n+1)`
-/

namespace A263951.P10996824517941578317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) : ℚ) / (A067756 (n + 1) : ℚ) * (A334802 (n + 1) : ℚ)

end

end A263951.P10996824517941578317

/-! ## A263951.P6444820189773712367

`p?[A281575(n+1)]²`
-/

namespace A263951.P6444820189773712367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A263951.P6444820189773712367

/-! ## A263951.P14664181463970249589

`p?[A172438(n+1)]²`
-/

namespace A263951.P14664181463970249589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A263951.P14664181463970249589

/-! ## A263951.P6334840310708332966

`∩[A172438(n+1), A281575(n+1)]²`
-/

namespace A263951.P6334840310708332966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A263951.P6334840310708332966

/-! ## A263951.P5335097657952057021

`A048161(n+1)^A000005(A110589(n+1))`
-/

namespace A263951.P5335097657952057021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) : ℚ) ^ (A000005 (A110589 (n + 1)).toNat : ℤ)

end

end A263951.P5335097657952057021

/-! ## A263951.P11243295542302751024

`p?[A002731(n+1)]²`
-/

namespace A263951.P11243295542302751024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A263951.P11243295542302751024

/-! ## A263951.P8950913646406901264

`p?[2*A027861(n+1)+1]²`
-/

namespace A263951.P8950913646406901264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A263951.P8950913646406901264

/-! ## A263951.P184359694187912118

`p?[A002731(n+1)]*A048161(n+1)`
-/

namespace A263951.P184359694187912118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A048161 (n + 1)

end

end A263951.P184359694187912118

/-!
# A263952: Number of (n+2)X(1+2) arrays of permutations of 0..n*3+5 filled by rows with each element moved 0 or 1 knight moves, and rows and columns in increasing lexicographic order.

The programs for A263952, there is no canonical definition to state claims against.
-/

/-! ## A263952.P9637885499619111486

`A263955(∑[n+1])`
-/

namespace A263952.P9637885499619111486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263952.P9637885499619111486

/-! ## A263952.P12039737450232162283

`record[A263955(A133825(n))]`
-/

namespace A263952.P12039737450232162283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263952.P12039737450232162283

/-! ## A263952.P10329771287037843416

`or(4, A263955(A025715(n)))`
-/

namespace A263952.P10329771287037843416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A263955 (A025715 n).toNat)

end

end A263952.P10329771287037843416

/-!
# A263953: Number of (n+2)X(2+2) arrays of permutations of 0..n*4+7 filled by rows with each element moved 0 or 1 knight moves, and rows and columns in increasing lexicographic order.

The programs for A263953, there is no canonical definition to state claims against.
-/

/-! ## A263953.P3540919657682202839

`A263955(∑[n+2])`
-/

namespace A263953.P3540919657682202839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263953.P3540919657682202839

/-! ## A263953.P710157689124445133

`record[A263955(eq[2, A156996(n)])]`
-/

namespace A263953.P710157689124445133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263953.P710157689124445133

/-!
# A263954: Number of (n+2)X(3+2) arrays of permutations of 0..n*5+9 filled by rows with each element moved 0 or 1 knight moves, and rows and columns in increasing lexicographic order.

The programs for A263954, there is no canonical definition to state claims against.
-/

/-! ## A263954.P15250964336519331114

`A263955(∑[n+3]+1)`
-/

namespace A263954.P15250964336519331114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263954.P15250964336519331114

/-!
# A263956: Number of (1+2) X (n+2) arrays of permutations of 0..n*3+5 filled by rows with each element moved 0 or 1 knight moves, and rows and columns in increasing lexicographic order.

The programs for A263956, there is no canonical definition to state claims against.
-/

/-! ## A263956.P11431698664603473250

`A263955(∑[n]+1)`
-/

namespace A263956.P11431698664603473250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263956.P11431698664603473250

/-! ## A263956.P2388648360313521596

`∑{digits}[n, A263955(A000124(#))]`
-/

namespace A263956.P2388648360313521596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A263955 (A000124 x).toNat).sum

end

end A263956.P2388648360313521596

/-! ## A263956.P7632828103443223785

`record[A263955(A257504(n+1))]`
-/

namespace A263956.P7632828103443223785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263956.P7632828103443223785

/-! ## A263956.P8391005243409228019

`A263955(A000124(n))+char[8]`
-/

namespace A263956.P8391005243409228019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263956.P8391005243409228019

/-!
# A263957: Number of (2+2)X(n+2) arrays of permutations of 0..n*4+7 filled by rows with each element moved 0 or 1 knight moves, and rows and columns in increasing lexicographic order.

The programs for A263957, there is no canonical definition to state claims against.
-/

/-! ## A263957.P6087182675787518213

`A263955(∑[n+1]+2)`
-/

namespace A263957.P6087182675787518213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263955 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263957.P6087182675787518213

/-!
# A263959: Number of decimal digits in A069151(n).

The programs for A263959, there is no canonical definition to state claims against.
-/

/-! ## A263959.P14480663258279561841

`A068670(A046035(n+1))`
-/

namespace A263959.P14480663258279561841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (A046035 (n + 1)).toNat

end

end A263959.P14480663258279561841

/-! ## A263959.P13923975243058535273

`A227530(∑[gcd(3, A169784(n))])`
-/

namespace A263959.P13923975243058535273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A169784 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263959.P13923975243058535273

/-! ## A263959.P5797210508662280982

`A278959(A046284(n+1)+1)`
-/

namespace A263959.P5797210508662280982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A046284 (n + 1) + 1).toNat

end

end A263959.P5797210508662280982

/-! ## A263959.P6839754868399613867

`A227530(lt[A051904(n+4), 2])`
-/

namespace A263959.P6839754868399613867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A263959.P6839754868399613867

/-!
# A263960: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263960, there is no canonical definition to state claims against.
-/

/-! ## A263960.P9947565836619553225

`A263964(∑[n+2])`
-/

namespace A263960.P9947565836619553225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263960.P9947565836619553225

/-! ## A263960.P5715260992073939609

`record[A263964(A333530(n+1))]`
-/

namespace A263960.P5715260992073939609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263960.P5715260992073939609

/-! ## A263960.P2740920281375858466

`record[A263964(Δ[A003453(n+5)])]`
-/

namespace A263960.P2740920281375858466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263960.P2740920281375858466

/-! ## A263960.P12365298411550430638

`record[A263964(A000096(val(n+1, 2)+1))]`
-/

namespace A263960.P12365298411550430638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263960.P12365298411550430638

/-!
# A263961: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263961, there is no canonical definition to state claims against.
-/

/-! ## A263961.P8813702526604004461

`A263964(∑[n+3]+1)`
-/

namespace A263961.P8813702526604004461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263961.P8813702526604004461

/-! ## A263961.P9316283350630212765

`A001511(2*n+3)*A263964(A034856(n+2))`
-/

namespace A263961.P9316283350630212765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 3) * A263964 (A034856 (n + 2)).toNat

end

end A263961.P9316283350630212765

/-!
# A263962: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263962, there is no canonical definition to state claims against.
-/

/-! ## A263962.P1351651405929734593

`A263964(∑[n+4]+3)`
-/

namespace A263962.P1351651405929734593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263962.P1351651405929734593

/-! ## A263962.P12025410741969908106

`A263964(A055998(n+2))+A064834(n)`
-/

namespace A263962.P12025410741969908106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (A055998 (n + 2)).toNat + A064834 n

end

end A263962.P12025410741969908106

/-!
# A263963: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263963, there is no canonical definition to state claims against.
-/

/-! ## A263963.P6263804769034351638

`A263964(∑[n+5]+6)`
-/

namespace A263963.P6263804769034351638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A263963.P6263804769034351638

/-!
# A263964: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263964, there is no canonical definition to state claims against.
-/

/-! ## A263964.P1943334806680271264

`A218535(A219555(3*n+1)+A067755(n+1))`
-/

namespace A263964.P1943334806680271264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218535 (A219555 (3 * n + 1) + A067755 (n + 1)).toNat

end

end A263964.P1943334806680271264

/-!
# A263965: Number of (1+1)X(n+1) arrays of permutations of 0..n*2+1 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263965, there is no canonical definition to state claims against.
-/

/-! ## A263965.P8595515740036729446

`A263964(∑[n]+1)`
-/

namespace A263965.P8595515740036729446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263965.P8595515740036729446

/-! ## A263965.P1936892252204246641

`A263973(∑[n]+1)`
-/

namespace A263965.P1936892252204246641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263965.P1936892252204246641

/-! ## A263965.P10646056525714296006

`record[A263964(∑[A057979(n)])]`
-/

namespace A263965.P10646056525714296006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263965.P10646056525714296006

/-! ## A263965.P11384902454482209392

`record[A263973(∑[A057979(n)])]`
-/

namespace A263965.P11384902454482209392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263965.P11384902454482209392

/-! ## A263965.P9827287168887116897

`record[A263973(A056534(n+1))]`
-/

namespace A263965.P9827287168887116897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263965.P9827287168887116897

/-!
# A263966: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263966, there is no canonical definition to state claims against.
-/

/-! ## A263966.P11214693067764987626

`A263964(∑[n+1]+2)`
-/

namespace A263966.P11214693067764987626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263966.P11214693067764987626

/-! ## A263966.P14042950646126464258

`record[A263964(n+3)/A049444(n)]`
-/

namespace A263966.P14042950646126464258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263964 (n + 3) : ℚ) / (A049444 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263966.P14042950646126464258

/-!
# A263967: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,0 1,1 or 1,2.

The programs for A263967, there is no canonical definition to state claims against.
-/

/-! ## A263967.P1912527058179468227

`A263964(∑[n+2]+4)`
-/

namespace A263967.P1912527058179468227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263967.P1912527058179468227

/-! ## A263967.P6114267929054207306

`A263964(A167614(n+1))+A025465(n)`
-/

namespace A263967.P6114267929054207306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (A167614 (n + 1)).toNat + A025465 n

end

end A263967.P6114267929054207306

/-! ## A263967.P17896859287563771132

`A263964(A167614(n+1))+A031286(n)`
-/

namespace A263967.P17896859287563771132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (A167614 (n + 1)).toNat + A031286 n

end

end A263967.P17896859287563771132

/-! ## A263967.P6856331409009814483

`A263964(A167614(n+1))+A059995(n)`
-/

namespace A263967.P6856331409009814483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (A167614 (n + 1)).toNat + A059995 n

end

end A263967.P6856331409009814483

/-!
# A263968: a(n) = Li_{-n}(phi) + Li_{-n}(1-phi), where Li_n(x) is the polylogarithm, phi=(1+sqrt(5))/2 is the golden ratio.

The programs for A263968, there is no canonical definition to state claims against.
-/

/-! ## A263968.P3131526199315409479

`(-1)^(n+1)*(2*A000556(n)+A000557(n))`
-/

namespace A263968.P3131526199315409479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (2 * A000556 n + A000557 n)

end

end A263968.P3131526199315409479

/-!
# A263969: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263969, there is no canonical definition to state claims against.
-/

/-! ## A263969.P1601676941790494954

`A263973(∑[n+2])`
-/

namespace A263969.P1601676941790494954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263969.P1601676941790494954

/-! ## A263969.P4348586532137239468

`record[A263973(Δ[A003453(n+5)])]`
-/

namespace A263969.P4348586532137239468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263969.P4348586532137239468

/-! ## A263969.P4214423655668308485

`record[A263973(A233583(n+1)+A025660(n+1))]`
-/

namespace A263969.P4214423655668308485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A233583 (n + 1) + A025660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263969.P4214423655668308485

/-!
# A263970: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263970, there is no canonical definition to state claims against.
-/

/-! ## A263970.P6026707645476792758

`A263973(∑[n+3]+1)`
-/

namespace A263970.P6026707645476792758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263970.P6026707645476792758

/-! ## A263970.P12031757967134968867

`A251072(n)*A263973(A034856(n+2))`
-/

namespace A263970.P12031757967134968867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 n * A263973 (A034856 (n + 2)).toNat

end

end A263970.P12031757967134968867

/-! ## A263970.P17406964067721951352

`A263973(A034856(n+2))+A002962(n+1)`
-/

namespace A263970.P17406964067721951352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A034856 (n + 2)).toNat + A002962 (n + 1)

end

end A263970.P17406964067721951352

/-!
# A263971: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263971, there is no canonical definition to state claims against.
-/

/-! ## A263971.P5181524276197543958

`A263973(A141214(n+1))`
-/

namespace A263971.P5181524276197543958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A141214 (n + 1)).toNat

end

end A263971.P5181524276197543958

/-! ## A263971.P14551035737524776911

`A263973(A027379(n+2))`
-/

namespace A263971.P14551035737524776911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A027379 (n + 2)).toNat

end

end A263971.P14551035737524776911

/-!
# A263972: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263972, there is no canonical definition to state claims against.
-/

/-! ## A263972.P1307994870578801671

`A263973(Δ[A264443(n)])`
-/

namespace A263972.P1307994870578801671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (f1 (n + 1) - f1 n).toNat

end

end A263972.P1307994870578801671

/-!
# A263974: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263974, there is no canonical definition to state claims against.
-/

/-! ## A263974.P14050374929147053738

`A263973(∑[n+1]+2)`
-/

namespace A263974.P14050374929147053738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263974.P14050374929147053738

/-!
# A263975: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263975, there is no canonical definition to state claims against.
-/

/-! ## A263975.P14831529051839733070

`A263973(∑[n+2]+4)`
-/

namespace A263975.P14831529051839733070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263975.P14831529051839733070

/-! ## A263975.P2265021294684678809

`A263973(A167614(n+1))+A025461(n)`
-/

namespace A263975.P2265021294684678809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A167614 (n + 1)).toNat + A025461 n

end

end A263975.P2265021294684678809

/-! ## A263975.P9984962474187911741

`A263973(A167614(n+1))+A025468(n)`
-/

namespace A263975.P9984962474187911741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A167614 (n + 1)).toNat + A025468 n

end

end A263975.P9984962474187911741

/-! ## A263975.P9063415039563778306

`A263973(A167614(n+1))+A055957(n)`
-/

namespace A263975.P9063415039563778306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (A167614 (n + 1)).toNat + A055957 n

end

end A263975.P9063415039563778306

/-!
# A263976: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,2 1,1 or 1,0.

The programs for A263976, there is no canonical definition to state claims against.
-/

/-! ## A263976.P5210612224150265704

`A263973(∑[n+3]+7)`
-/

namespace A263976.P5210612224150265704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263976.P5210612224150265704

/-!
# A263977: Integers k > 0 such that k^2 + p^2 is prime for some prime p.

The programs for A263977, there is no canonical definition to state claims against.
-/

/-! ## A263977.P9281974444233431769

`comp[A263722(n+1)-1]+1`
-/

namespace A263977.P9281974444233431769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263722 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A263977.P9281974444233431769

/-! ## A263977.P7178782062735965105

`lt[n/A107393(n²+4), n]`
-/

namespace A263977.P7178782062735965105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A107393 (n ^ 2 + 4) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A263977.P7178782062735965105

/-! ## A263977.P6933046419582328507

`∪[2*(n+1), A007591(n+1)]`
-/

namespace A263977.P6933046419582328507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263977.P6933046419582328507

/-! ## A263977.P7199362483927029914

`record[n+2-A319689((n+1)²+4)]`
-/

namespace A263977.P7199362483927029914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A319689 ((n + 1) ^ 2 + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263977.P7199362483927029914

/-! ## A263977.P14792444747150083439

`eq[(1-a(n-1))², A010051(n²+4)]` with `a(0)=2`
-/

namespace A263977.P14792444747150083439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (1 - f1 (n - 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263977.P14792444747150083439

/-! ## A263977.P2085018353807736500

`lt[n^(n%2), A020639(lcm(4, n²+4)/4)]`
-/

namespace A263977.P2085018353807736500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n ^ 2 + 4) : ℚ) / 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263977.P2085018353807736500

/-! ## A263977.P7068491801994186917

`∪[A007591(n+1), A004277(n)]`
-/

namespace A263977.P7068491801994186917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263977.P7068491801994186917

/-! ## A263977.P17998937588096373740

`∪[A007591(n+1), A004279(n)]`
-/

namespace A263977.P17998937588096373740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263977.P17998937588096373740

/-!
# A263979: Least prime p of the form p = a^2 + b^2 with a > n and b > n.

The programs for A263979, there is no canonical definition to state claims against.
-/

/-! ## A263979.P4496105760240209002

`p?[A004525(A198454(2*n+1)²)]`
-/

namespace A263979.P4496105760240209002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A198454 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263979.P4496105760240209002

/-! ## A263979.P6907161268143996793

`p?[A000982(A065033(n))%A145902(n)]`
-/

namespace A263979.P6907161268143996793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000982 (A065033 n).toNat) (A145902 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263979.P6907161268143996793

/-! ## A263979.P10215025432563910339

`p?[lcm(A000015(n+1), A205396(n+1))]`
-/

namespace A263979.P10215025432563910339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000015 (n + 1)) (A205396 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263979.P10215025432563910339

/-!
# A263980: Least prime of the form a^2 + b^2 with a > k and b > k, for some number k.

The programs for A263980, there is no canonical definition to state claims against.
-/

/-! ## A263980.P17876653163237795785

`record[A263979(C(n², 3)%(n+1))]`
-/

namespace A263980.P17876653163237795785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263979 (Nat.choose (n ^ 2) 3 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263980.P17876653163237795785

/-! ## A263980.P5080243253089159267

`record[A263979(A004727(n))]`
-/

namespace A263980.P5080243253089159267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263979 (A004727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263980.P5080243253089159267

/-! ## A263980.P10362644013384508670

`record[A263979(A008615(n))]`
-/

namespace A263980.P10362644013384508670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263979 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263980.P10362644013384508670

/-! ## A263980.P9397431383105757230

`record[A263979(A025480(n))]`
-/

namespace A263980.P9397431383105757230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263979 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263980.P9397431383105757230

/-! ## A263980.P9074345922173011721

`record[A263979(A051162(n))]`
-/

namespace A263980.P9074345922173011721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263979 (A051162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263980.P9074345922173011721

/-!
# A263981: Least even k such that phi(k) >= n.

The programs for A263981, there is no canonical definition to state claims against.
-/

/-! ## A263981.P12019030475380110868

`A007843(or(A187829(n+1)+n, A066788(n+1)))`
-/

namespace A263981.P12019030475380110868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (Int.lor (A187829 (n + 1) + (n : ℤ)) (A066788 (n + 1))).toNat

end

end A263981.P12019030475380110868

/-! ## A263981.P16119982214208657774

`A007843(or(A187829(n+1)+n, A000360(2*n+1)))`
-/

namespace A263981.P16119982214208657774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (Int.lor (A187829 (n + 1) + (n : ℤ)) (A000360 (2 * n + 1))).toNat

end

end A263981.P16119982214208657774

/-! ## A263981.P1305499373868187143

`A121982(∑[(A000027(3*n+1)%A110976(3*n))%2])`
-/

namespace A263981.P1305499373868187143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000027 (3 * n + 1)) (A110976 (3 * n))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263981.P1305499373868187143

/-!
# A263982: Number of partitions of n with a palindromicity of 3.

The programs for A263982, there is no canonical definition to state claims against.
-/

/-! ## A263982.P9108738247303237920

`∑[A347446(n)%A246627(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A263982.P9108738247303237920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347446 n) (A246627 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A263982.P9108738247303237920

/-! ## A263982.P530886982374454944

`A008583(A062399(n)+A008619(n))`
-/

namespace A263982.P530886982374454944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008583 (A062399 n + A008619 n).toNat

end

end A263982.P530886982374454944

/-! ## A263982.P16072709953943034444

`∑[A131469(A316742(n))]`
-/

namespace A263982.P16072709953943034444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A316742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263982.P16072709953943034444

/-! ## A263982.P11814490033996118425

`A008583(A187829(∑[gcd(2, n)]-1))`
-/

namespace A263982.P11814490033996118425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008583 (A187829 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A263982.P11814490033996118425

/-! ## A263982.P13463999459057465310

`A326636(A047842(n))-A218470(n)`
-/

namespace A263982.P13463999459057465310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (A047842 n).toNat - A218470 n

end

end A263982.P13463999459057465310

/-!
# A263983: Odd integers k such that sigma(k)^2 is divisible by k.

The programs for A263983, there is no canonical definition to state claims against.
-/

/-! ## A263983.P18067771105723179929

`∩[A015706(n+1), A263928(n+1)]`
-/

namespace A263983.P18067771105723179929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263983.P18067771105723179929

/-! ## A263983.P12557582903088818490

`∩[A263928(n+1), A336554(n+1)]`
-/

namespace A263983.P12557582903088818490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263983.P12557582903088818490

/-!
# A263986: Difference between Catalan numbers and Fibonacci numbers: a(n) = C(n) - F(n).

The programs for A263986, the canonical program `A263986.P11008450882714767519` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263986 has offset 0).

The definition of A263986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263986.P11008450882714767519

`A000108(n)-A000045(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263986

/-- `A000108(n)-A000045(n)` -/
def P11008450882714767519.Spec : Prop :=
  ∀ n, P11008450882714767519.a n = A263986 n

theorem P11008450882714767519.correct : P11008450882714767519.Spec := by
  intro n
  simp only [A263986]

end A263986

/-! ## A263986.P14971412415006603754

`A246604(n)-A065220(n)`
-/

namespace A263986.P14971412415006603754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n - A065220 n

end

end A263986.P14971412415006603754

namespace A263986

/-- `A246604(n)-A065220(n)` -/
def P14971412415006603754.Spec : Prop :=
  ∀ n, P14971412415006603754.a n = A263986 n

end A263986

/-! ## A263986.P8128284309146956567

`abs(A168491(n))-A000045(n)`
-/

namespace A263986.P8128284309146956567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A000045 n

end

end A263986.P8128284309146956567

namespace A263986

/-- `abs(A168491(n))-A000045(n)` -/
def P8128284309146956567.Spec : Prop :=
  ∀ n, P8128284309146956567.a n = A263986 n

end A263986

/-! ## A263986.P6714953721705329334

`A000108(n)-abs(A236191(n))`
-/

namespace A263986.P6714953721705329334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - |A236191 n|

end

end A263986.P6714953721705329334

namespace A263986

/-- `A000108(n)-abs(A236191(n))` -/
def P6714953721705329334.Spec : Prop :=
  ∀ n, P6714953721705329334.a n = A263986 n

end A263986

/-! ## A263986.P3630959565108287910

`A000108(n)-sqrt(A007598(n))`
-/

namespace A263986.P3630959565108287910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℝ) - Real.sqrt (A007598 n : ℝ)

end

end A263986.P3630959565108287910

namespace A263986

/-- `A000108(n)-sqrt(A007598(n))` -/
def P3630959565108287910.Spec : Prop :=
  ∀ n, P3630959565108287910.a n = (A263986 n : ℝ)

end A263986

/-! ## A263986.P13683132606151505160

`A000108(n)+1-A001611(n)`
-/

namespace A263986.P13683132606151505160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (1 - A001611 n)

end

end A263986.P13683132606151505160

namespace A263986

/-- `A000108(n)+1-A001611(n)` -/
def P13683132606151505160.Spec : Prop :=
  ∀ n, P13683132606151505160.a n = A263986 n

end A263986

/-! ## A263986.P16576451356769584577

`A120588(n+1)-A000045(n)`
-/

namespace A263986.P16576451356769584577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A000045 n

end

end A263986.P16576451356769584577

namespace A263986

/-- `A120588(n+1)-A000045(n)` -/
def P16576451356769584577.Spec : Prop :=
  ∀ n, P16576451356769584577.a n = A263986 n

end A263986

/-! ## A263986.P4548031128671081902

`A152163(n+2)+A000108(n)`
-/

namespace A263986.P4548031128671081902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + A000108 n

end

end A263986.P4548031128671081902

namespace A263986

/-- `A152163(n+2)+A000108(n)` -/
def P4548031128671081902.Spec : Prop :=
  ∀ n, P4548031128671081902.a n = A263986 n

end A263986

/-! ## A263986.P4386825009664987150

`A000108(n)-A212804(n+1)`
-/

namespace A263986.P4386825009664987150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A212804 (n + 1)

end

end A263986.P4386825009664987150

namespace A263986

/-- `A000108(n)-A212804(n+1)` -/
def P4386825009664987150.Spec : Prop :=
  ∀ n, P4386825009664987150.a n = A263986 n

end A263986

/-! ## A263986.P1891215508098994177

`A120304(n)+2-A000045(n)`
-/

namespace A263986.P1891215508098994177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (2 - A000045 n)

end

end A263986.P1891215508098994177

namespace A263986

/-- `A120304(n)+2-A000045(n)` -/
def P1891215508098994177.Spec : Prop :=
  ∀ n, P1891215508098994177.a n = A263986 n

end A263986

/-! ## A263986.P2166920927460719982

`A028303(2*n)-A000045(n)`
-/

namespace A263986.P2166920927460719982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - A000045 n

end

end A263986.P2166920927460719982

namespace A263986

/-- `A028303(2*n)-A000045(n)` -/
def P2166920927460719982.Spec : Prop :=
  ∀ n, P2166920927460719982.a n = A263986 n

end A263986

/-! ## A263986.P7985021196224431478

`A028304(2*n)-A000045(n)`
-/

namespace A263986.P7985021196224431478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A000045 n

end

end A263986.P7985021196224431478

namespace A263986

/-- `A028304(2*n)-A000045(n)` -/
def P7985021196224431478.Spec : Prop :=
  ∀ n, P7985021196224431478.a n = A263986 n

end A263986

/-! ## A263986.P4619903350627221037

`A000108(n)-A053602(2*n)`
-/

namespace A263986.P4619903350627221037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A053602 (2 * n)

end

end A263986.P4619903350627221037

namespace A263986

/-- `A000108(n)-A053602(2*n)` -/
def P4619903350627221037.Spec : Prop :=
  ∀ n, P4619903350627221037.a n = A263986 n

end A263986

/-! ## A263986.P17195930119789056434

`A126120(2*n)-A000045(n)`
-/

namespace A263986.P17195930119789056434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A000045 n

end

end A263986.P17195930119789056434

namespace A263986

/-- `A126120(2*n)-A000045(n)` -/
def P17195930119789056434.Spec : Prop :=
  ∀ n, P17195930119789056434.a n = A263986 n

end A263986

/-! ## A263986.P13271369772540191015

`A126324(2*n)-A000045(n)`
-/

namespace A263986.P13271369772540191015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - A000045 n

end

end A263986.P13271369772540191015

namespace A263986

/-- `A126324(2*n)-A000045(n)` -/
def P13271369772540191015.Spec : Prop :=
  ∀ n, P13271369772540191015.a n = A263986 n

end A263986

/-! ## A263986.P2360339949248572405

`A208355(2*n)-A000045(n)`
-/

namespace A263986.P2360339949248572405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - A000045 n

end

end A263986.P2360339949248572405

namespace A263986

/-- `A208355(2*n)-A000045(n)` -/
def P2360339949248572405.Spec : Prop :=
  ∀ n, P2360339949248572405.a n = A263986 n

end A263986

/-! ## A263986.P6218987756795760450

`A000108(n)+n-A002062(n)`
-/

namespace A263986.P6218987756795760450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ((n : ℤ) - A002062 n)

end

end A263986.P6218987756795760450

namespace A263986

/-- `A000108(n)+n-A002062(n)` -/
def P6218987756795760450.Spec : Prop :=
  ∀ n, P6218987756795760450.a n = A263986 n

end A263986

/-! ## A263986.P9316542975038883155

`A089408(2*n+1)-A000045(n)`
-/

namespace A263986.P9316542975038883155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A000045 n

end

end A263986.P9316542975038883155

namespace A263986

/-- `A089408(2*n+1)-A000045(n)` -/
def P9316542975038883155.Spec : Prop :=
  ∀ n, P9316542975038883155.a n = A263986 n

end A263986

/-! ## A263986.P3209156829161924494

`A097331(2*n+1)-A000045(n)`
-/

namespace A263986.P3209156829161924494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A000045 n

end

end A263986.P3209156829161924494

namespace A263986

/-- `A097331(2*n+1)-A000045(n)` -/
def P3209156829161924494.Spec : Prop :=
  ∀ n, P3209156829161924494.a n = A263986 n

end A263986

/-!
# A263987: Number of ways of ordering integers 1 to n such that each number is either a factor of or larger than its predecessor.

The programs for A263987, there is no canonical definition to state claims against.
-/

/-! ## A263987.P14562017699800808049

`A045917(A141318(n)+1)`
-/

namespace A263987.P14562017699800808049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A141318 n + 1).toNat

end

end A263987.P14562017699800808049

/-! ## A263987.P13840608735044783424

`A193691(A161887(n+1))`
-/

namespace A263987.P13840608735044783424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (A161887 (n + 1)).toNat

end

end A263987.P13840608735044783424

/-! ## A263987.P6250514327396633648

`A118851(A330471(n))%A000230(n)`
-/

namespace A263987.P6250514327396633648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118851 (A330471 n).toNat) (A000230 n)

end

end A263987.P6250514327396633648

/-!
# A263988: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 or 1,2.

The programs for A263988, there is no canonical definition to state claims against.
-/

/-! ## A263988.P5694657219059381465

`A263989(∑[4*n]+1)`
-/

namespace A263988.P5694657219059381465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263988.P5694657219059381465

/-! ## A263988.P16536140360410201526

`A263989(A001844(n))+A054900(n)`
-/

namespace A263988.P16536140360410201526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263989 (A001844 n).toNat + A054900 n

end

end A263988.P16536140360410201526

/-! ## A263988.P10082752766259332298

`A263989(A001844(n))^A178334(n)`
-/

namespace A263988.P10082752766259332298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263989 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A263988.P10082752766259332298

/-! ## A263988.P14258049995237794641

`or(A000007(n), A263989(A001844(n)))`
-/

namespace A263988.P14258049995237794641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A263989 (A001844 n).toNat)

end

end A263988.P14258049995237794641

/-! ## A263988.P17542680024400780067

`lcm(A000010(n+1), A263989(A001844(n)))`
-/

namespace A263988.P17542680024400780067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) (A263989 (A001844 n).toNat)

end

end A263988.P17542680024400780067

/-!
# A263989: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having index change +-(.,.) 0,0 or 1,2.

The programs for A263989, there is no canonical definition to state claims against.
-/

/-! ## A263989.P18297366559049312714

`A000005(C(∑{p}[n+1, #]+2+n, A094053(n+1)))`
-/

namespace A263989.P18297366559049312714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), p + 2 + n) (A094053 (n + 1)).toNat)

end

end A263989.P18297366559049312714

/-! ## A263989.P17722220951106367320

`A003963(A027465(n)*A156584(n))`
-/

namespace A263989.P17722220951106367320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A027465 n * A156584 n).toNat

end

end A263989.P17722220951106367320

/-! ## A263989.P10631644364944094734

`A007318(A157221(n))*A130321(n)`
-/

namespace A263989.P10631644364944094734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A157221 n).toNat * A130321 n

end

end A263989.P10631644364944094734

/-!
# A263990: Nonsquare numbers k such that k and k+1 are semiprimes.

The programs for A263990, the canonical program `A263990.P15229984249607134462` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263990 has offset 1).

The definition of A263990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263990.P15229984249607134462

`A109288(n+1)-1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A263990

/-- `A109288(n+1)-1` -/
def P15229984249607134462.Spec : Prop :=
  ∀ n, P15229984249607134462.a n = A263990 (n + 1)

theorem P15229984249607134462.correct : P15229984249607134462.Spec := by
  intro n
  simp only [A263990, Nat.add_sub_cancel]

end A263990

/-! ## A263990.P1407375632619294116

`A039832(A326178(n+1))`
-/

namespace A263990.P1407375632619294116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (A326178 (n + 1)).toNat

end

end A263990.P1407375632619294116

namespace A263990

/-- `A039832(A326178(n+1))` -/
def P1407375632619294116.Spec : Prop :=
  ∀ n, P1407375632619294116.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P8170988668005340576

`∩[A039832(n+1), A070552(n+1)]`
-/

namespace A263990.P8170988668005340576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263990.P8170988668005340576

namespace A263990

/-- `∩[A039832(n+1), A070552(n+1)]` -/
def P8170988668005340576.Spec : Prop :=
  ∀ n, (P8170988668005340576.a n : ℤ) = A263990 (n + 1)

end A263990

/-! ## A263990.P16721888577119433671

`∩[A038456(n+1), A052213(n+1)]`
-/

namespace A263990.P16721888577119433671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263990.P16721888577119433671

namespace A263990

/-- `∩[A038456(n+1), A052213(n+1)]` -/
def P16721888577119433671.Spec : Prop :=
  ∀ n, (P16721888577119433671.a n : ℤ) = A263990 (n + 1)

end A263990

/-! ## A263990.P7017109798849821416

`∩[A039832(n+1), A074851(n+1)]`
-/

namespace A263990.P7017109798849821416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263990.P7017109798849821416

namespace A263990

/-- `∩[A039832(n+1), A074851(n+1)]` -/
def P7017109798849821416.Spec : Prop :=
  ∀ n, (P7017109798849821416.a n : ℤ) = A263990 (n + 1)

end A263990

/-! ## A263990.P13772753473803147962

`filter[A070552(n+1), A008966(#)]`
-/

namespace A263990.P13772753473803147962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A263990.P13772753473803147962

namespace A263990

/-- `filter[A070552(n+1), A008966(#)]` -/
def P13772753473803147962.Spec : Prop :=
  ∀ n, P13772753473803147962.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P13092135257944051215

`filter[A052213(n+1), A354927(#)]`
-/

namespace A263990.P13092135257944051215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A263990.P13092135257944051215

namespace A263990

/-- `filter[A052213(n+1), A354927(#)]` -/
def P13092135257944051215.Spec : Prop :=
  ∀ n, P13092135257944051215.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P14392807434198182503

`filter[A086263(n+1), A354927(#)]`
-/

namespace A263990.P14392807434198182503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A263990.P14392807434198182503

namespace A263990

/-- `filter[A086263(n+1), A354927(#)]` -/
def P14392807434198182503.Spec : Prop :=
  ∀ n, P14392807434198182503.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P4536882972917734285

`filter[A108815(n+1), A354927(#)]`
-/

namespace A263990.P4536882972917734285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A263990.P4536882972917734285

namespace A263990

/-- `filter[A108815(n+1), A354927(#)]` -/
def P4536882972917734285.Spec : Prop :=
  ∀ n, P4536882972917734285.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P3049075195224114136

`filter[A108815(n+1), A359156(#)]`
-/

namespace A263990.P3049075195224114136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A263990.P3049075195224114136

namespace A263990

/-- `filter[A108815(n+1), A359156(#)]` -/
def P3049075195224114136.Spec : Prop :=
  ∀ n, P3049075195224114136.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P13058508613979475658

`filter[A108815(n+1), A374471(#)]`
-/

namespace A263990.P13058508613979475658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A263990.P13058508613979475658

namespace A263990

/-- `filter[A108815(n+1), A374471(#)]` -/
def P13058508613979475658.Spec : Prop :=
  ∀ n, P13058508613979475658.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P6257180368256885722

`filter[A242466(n+1), A354927(#)]`
-/

namespace A263990.P6257180368256885722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A263990.P6257180368256885722

namespace A263990

/-- `filter[A242466(n+1), A354927(#)]` -/
def P6257180368256885722.Spec : Prop :=
  ∀ n, P6257180368256885722.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P3724902069043970003

`filter[A359745(n+1), A354927(#)]`
-/

namespace A263990.P3724902069043970003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A263990.P3724902069043970003

namespace A263990

/-- `filter[A359745(n+1), A354927(#)]` -/
def P3724902069043970003.Spec : Prop :=
  ∀ n, P3724902069043970003.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P18293784697509165698

`filter[A242466(n+2), A374128(#)]`
-/

namespace A263990.P18293784697509165698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A263990.P18293784697509165698

namespace A263990

/-- `filter[A242466(n+2), A374128(#)]` -/
def P18293784697509165698.Spec : Prop :=
  ∀ n, P18293784697509165698.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P16813330355351678834

`filter[A359745(n+2), A374128(#)]`
-/

namespace A263990.P16813330355351678834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A263990.P16813330355351678834

namespace A263990

/-- `filter[A359745(n+2), A374128(#)]` -/
def P16813330355351678834.Spec : Prop :=
  ∀ n, P16813330355351678834.a n = A263990 (n + 1)

end A263990

/-! ## A263990.P16733008388421451752

`∩[A005237(n+1), A070552(n+1)]`
-/

namespace A263990.P16733008388421451752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263990.P16733008388421451752

namespace A263990

/-- `∩[A005237(n+1), A070552(n+1)]` -/
def P16733008388421451752.Spec : Prop :=
  ∀ n, (P16733008388421451752.a n : ℤ) = A263990 (n + 1)

end A263990

/-! ## A263990.P7870338724691415725

`∩[A005237(n+1), A108815(n+1)]`
-/

namespace A263990.P7870338724691415725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263990.P7870338724691415725

namespace A263990

/-- `∩[A005237(n+1), A108815(n+1)]` -/
def P7870338724691415725.Spec : Prop :=
  ∀ n, (P7870338724691415725.a n : ℤ) = A263990 (n + 1)

end A263990

/-! ## A263990.P119461820458017196

`∩[A001358(n+1), A083793(n+1)-1]`
-/

namespace A263990.P119461820458017196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263990.P119461820458017196

namespace A263990

/-- `∩[A001358(n+1), A083793(n+1)-1]` -/
def P119461820458017196.Spec : Prop :=
  ∀ n, (P119461820458017196.a n : ℤ) = A263990 (n + 1)

end A263990

/-!
# A263991: a(n) is the number of uniform consecutive subintervals of the unit interval each of size 2^(-ceiling(log_2(n))) that are completely covered by one of the n uniform consecutive subintervals (of size 1/n each) of the unit interval.

The programs for A263991, there is no canonical definition to state claims against.
-/

/-! ## A263991.P9581637354383614091

`2^ceil(log2(n+1))-and(n, n+1)`
-/

namespace A263991.P9581637354383614091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (Nat.land n (n + 1) : ℚ)

end

end A263991.P9581637354383614091

/-! ## A263991.P7231586532454315433

`or(n, 2^floor(log2(n+1))+n+1)-Δ[n²]`
-/

namespace A263991.P7231586532454315433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 ^ Nat.log 2 (n + 1) + (n + 1)) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A263991.P7231586532454315433

/-! ## A263991.P3295144731614103526

`2^val(n+1, 2)+2^ceil(log2(n+1))-(n+1)`
-/

namespace A263991.P3295144731614103526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n + 1 : ℚ))

end

end A263991.P3295144731614103526

/-! ## A263991.P12783802241637008300

`(2^ceil(log2(n+1)))%(n+1)+2^val(n+1, 2)`
-/

namespace A263991.P12783802241637008300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) (n + 1 : ℤ) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A263991.P12783802241637008300

/-! ## A263991.P3399032262312643214

`abs(or(n+1, -(n+1)))+∑[n*char[2^n]]-n`
-/

namespace A263991.P3399032262312643214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A263991.P3399032262312643214

/-! ## A263991.P16139550403976106867

`abs(and(n, n+1)-A062383(n))`
-/

namespace A263991.P16139550403976106867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land n (n + 1) : ℤ) - A062383 n|

end

end A263991.P16139550403976106867

/-! ## A263991.P13383581332564717693

`A003817(n)+1-and(n, n+1)`
-/

namespace A263991.P13383581332564717693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (1 - (Nat.land n (n + 1) : ℤ))

end

end A263991.P13383581332564717693

/-! ## A263991.P8180151803842715490

`A004760(n+2)-(and(n, n+1)+n)`
-/

namespace A263991.P8180151803842715490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 2) - (Nat.land n (n + 1) + n : ℤ)

end

end A263991.P8180151803842715490

/-! ## A263991.P9323334774710571995

`A086799(n+1)-A006257(n)`
-/

namespace A263991.P9323334774710571995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1) - A006257 n

end

end A263991.P9323334774710571995

/-! ## A263991.P7274131191973320569

`A062383(n)-A129760(n+1)`
-/

namespace A263991.P7274131191973320569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - A129760 (n + 1)

end

end A263991.P7274131191973320569

/-!
# A263992: Number of ordered ways to write n as x^2 + 2*y^2 + phi(z^2) (x >= 0, y >= 0 and z > 0) such that y or z has the form p-1 with p prime, where phi(.) is Euler's totient function.

The programs for A263992, there is no canonical definition to state claims against.
-/

/-! ## A263992.P9057637006919573981

`A001221(A237965(n+1)+A060502(n))`
-/

namespace A263992.P9057637006919573981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237965 (n + 1) + A060502 n).toNat

end

end A263992.P9057637006919573981

/-! ## A263992.P16515884318502804508

`A256915(A073648(n+1)+A065260(n+1))`
-/

namespace A263992.P16515884318502804508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A073648 (n + 1) + A065260 (n + 1)).toNat

end

end A263992.P16515884318502804508

/-! ## A263992.P13691022584407564567

`A043559(xor(A124177(n+1), A304638(n+2)))`
-/

namespace A263992.P13691022584407564567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (Int.xor (A124177 (n + 1)) (A304638 (n + 2))).toNat

end

end A263992.P13691022584407564567

/-!
# A263993: Expansion of f(-x, x^2) / f(-x, -x^3)^3 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263993, there is no canonical definition to state claims against.
-/

/-! ## A263993.P16655976863965822240

`abs(A258092(n))`
-/

namespace A263993.P16655976863965822240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258092 n|

end

end A263993.P16655976863965822240

/-! ## A263993.P16659804751442321618

`A033999(n)*A258092(n)`
-/

namespace A263993.P16659804751442321618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258092 n

end

end A263993.P16659804751442321618

/-! ## A263993.P15572305746194762327

`gcd(A000038(n), A258092(n))`
-/

namespace A263993.P15572305746194762327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258092 n)

end

end A263993.P15572305746194762327

/-! ## A263993.P11563814444592340387

`lcm(A000034(n), A258092(n))`
-/

namespace A263993.P11563814444592340387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258092 n)

end

end A263993.P11563814444592340387

/-!
# A263995: Cardinality of the union of the set of sums and the set of products made from pairs of integers from {1..n}.

The programs for A263995, there is no canonical definition to state claims against.
-/

/-! ## A263995.P5943843651989609725

`A027424(n+1)+A108954(n+1)`
-/

namespace A263995.P5943843651989609725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + A108954 (n + 1)

end

end A263995.P5943843651989609725

/-! ## A263995.P3204817959938188913

`A375109(n+1)+Δ[n²]`
-/

namespace A263995.P3204817959938188913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375109 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A263995.P3204817959938188913

/-! ## A263995.P11772714944678380638

`A108954(n+1)+∑[A062854(n+1)]`
-/

namespace A263995.P11772714944678380638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263995.P11772714944678380638

/-! ## A263995.P13081002820735721327

`A000290(n+1)+A375109(n+1)-A000290(n)`
-/

namespace A263995.P13081002820735721327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + (A375109 (n + 1) - A000290 n)

end

end A263995.P13081002820735721327

/-! ## A263995.P11502441209324694921

`A027428(n+1)+A108954(n+1)+A064047(n+1)`
-/

namespace A263995.P11502441209324694921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027428 (n + 1) + (A108954 (n + 1) + A064047 (n + 1))

end

end A263995.P11502441209324694921

/-! ## A263995.P17547832063535156732

`A027424(n+1)+A035250(n+1)-A010051(n+1)`
-/

namespace A263995.P17547832063535156732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A035250 (n + 1) - A010051 (n + 1))

end

end A263995.P17547832063535156732

/-! ## A263995.P10419209717280359745

`A000720(n+1)+A027424(n+1)-A060208(n+1)`
-/

namespace A263995.P10419209717280359745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A027424 (n + 1) - A060208 (n + 1))

end

end A263995.P10419209717280359745

/-! ## A263995.P14801473253504521333

`A027424(n+1)+A067434(n+1)-A193990(n+1)`
-/

namespace A263995.P14801473253504521333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A067434 (n + 1) - A193990 (n + 1))

end

end A263995.P14801473253504521333

/-! ## A263995.P11649327097405377456

`A027424(n+1)+A375109(n+1)-A373716(n+1)`
-/

namespace A263995.P11649327097405377456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A375109 (n + 1) - A373716 (n + 1))

end

end A263995.P11649327097405377456

/-! ## A263995.P17347479657935654378

`A027424(n+1)+A000720(2*(n+1))-A000720(n+1)`
-/

namespace A263995.P17347479657935654378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A000720 (2 * (n + 1)) - A000720 (n + 1))

end

end A263995.P17347479657935654378

/-! ## A263995.P3028557802978866998

`A108954(n+1)+A027420(A000124(n+2))`
-/

namespace A263995.P3028557802978866998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + A027420 (A000124 (n + 2)).toNat

end

end A263995.P3028557802978866998

/-! ## A263995.P3855463163758492667

`A108954(n+1)+A027420(A134869(n+2))`
-/

namespace A263995.P3855463163758492667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + A027420 (A134869 (n + 2)).toNat

end

end A263995.P3855463163758492667

/-! ## A263995.P15145023007139845084

`A108954(n+1)+A027420(A034856(n+2))`
-/

namespace A263995.P15145023007139845084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + A027420 (A034856 (n + 2)).toNat

end

end A263995.P15145023007139845084

/-!
# A263996: Smallest possible cardinality of the union of the set of pairwise sums and the set of pairwise products from a set of n positive integers.

The programs for A263996, there is no canonical definition to state claims against.
-/

/-! ## A263996.P1421462052726820780

`A345913(n+1)+A039215(A119485(2*n+1))`
-/

namespace A263996.P1421462052726820780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (n + 1) + A039215 (A119485 (2 * n + 1)).toNat

end

end A263996.P1421462052726820780

/-! ## A263996.P1953683274109919773

`A330257(n)+A096972(A006218(3*n+2))`
-/

namespace A263996.P1953683274109919773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330257 n + A096972 (A006218 (3 * n + 2)).toNat

end

end A263996.P1953683274109919773

/-! ## A263996.P4960069704560385611

`∑[A352104(A298796(n+2))]`
-/

namespace A263996.P4960069704560385611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A298796 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263996.P4960069704560385611

/-! ## A263996.P16731430181905072608

`∑[A088939(∑[A002858(n+1)])]`
-/

namespace A263996.P16731430181905072608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263996.P16731430181905072608

/-! ## A263996.P15678262574591431970

`∑[A185816(A000710(2*n+1))]`
-/

namespace A263996.P15678262574591431970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (A000710 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263996.P15678262574591431970

/-!
# A263997: Sequence of block lengths in a block spiral of width 1.

The programs for A263997, the canonical program `A263997.P11752961148925407239` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263997 has offset 1).

The definition of A263997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263997.P11752961148925407239

`a(n-2)+1` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A263997

/-- `a(n-2)+1` -/
def P11752961148925407239.Spec : Prop :=
  ∀ n, (P11752961148925407239.a n : ℤ) = A263997 (n + 1)

theorem P11752961148925407239.correct : P11752961148925407239.Spec := by
  intro n
  simp only [A263997, Nat.add_sub_cancel]

end A263997

/-! ## A263997.P223490396036536655

`round(cosh(log(n+ϕ)))`
-/

namespace A263997.P223490396036536655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n : ℝ) + Real.goldenRatio)))

end

end A263997.P223490396036536655

namespace A263997

/-- `round(cosh(log(n+ϕ)))` -/
def P223490396036536655.Spec : Prop :=
  ∀ n, P223490396036536655.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P13889479487142714259

`ceil(cosh(log(cos(atan(n)))))`
-/

namespace A263997.P13889479487142714259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Real.cos (Real.arctan (n : ℝ))))⌉

end

end A263997.P13889479487142714259

namespace A263997

/-- `ceil(cosh(log(cos(atan(n)))))` -/
def P13889479487142714259.Spec : Prop :=
  ∀ n, P13889479487142714259.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P13413008415413860006

`ceil(cosh(log(sin(acot(n)))))`
-/

namespace A263997.P13413008415413860006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Real.sin (SequenceMachineLib.acot (n : ℝ))))⌉

end

end A263997.P13413008415413860006

namespace A263997

/-- `ceil(cosh(log(sin(acot(n)))))` -/
def P13413008415413860006.Spec : Prop :=
  ∀ n, P13413008415413860006.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P6887994390550270289

`round((2-n)/2)+n`
-/

namespace A263997.P6887994390550270289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 - (n : ℤ) : ℚ) / 2) + (n : ℤ)

end

end A263997.P6887994390550270289

namespace A263997

/-- `round((2-n)/2)+n` -/
def P6887994390550270289.Spec : Prop :=
  ∀ n, P6887994390550270289.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P6022720920392053363

`∑[char[xor(n, char[1])+n]]`
-/

namespace A263997.P6022720920392053363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f3 j = n then 1 else 0) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263997.P6022720920392053363

namespace A263997

/-- `∑[char[xor(n, char[1])+n]]` -/
def P6022720920392053363.Spec : Prop :=
  ∀ n, (P6022720920392053363.a n : ℤ) = A263997 (n + 1)

end A263997

/-! ## A263997.P220144759046020417

`round(sqrt(∑[cosh(log(n+1))]))`
-/

namespace A263997.P220144759046020417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A263997.P220144759046020417

namespace A263997

/-- `round(sqrt(∑[cosh(log(n+1))]))` -/
def P220144759046020417.Spec : Prop :=
  ∀ n, P220144759046020417.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P9208702440623524705

`floor(2/atan(4/(n+2)))`
-/

namespace A263997.P9208702440623524705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.arctan (4 / (n + 2 : ℚ) : ℝ)⌋

end

end A263997.P9208702440623524705

namespace A263997

/-- `floor(2/atan(4/(n+2)))` -/
def P9208702440623524705.Spec : Prop :=
  ∀ n, P9208702440623524705.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P613030628419556876

`floor(2/acot((n+2)/4))`
-/

namespace A263997.P613030628419556876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((n + 2 : ℚ) / 4 : ℝ)⌋

end

end A263997.P613030628419556876

namespace A263997

/-- `floor(2/acot((n+2)/4))` -/
def P613030628419556876.Spec : Prop :=
  ∀ n, P613030628419556876.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P4209692875989966361

`ceil((n+2-atan(n))/2)`
-/

namespace A263997.P4209692875989966361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 2 : ℝ) - Real.arctan (n : ℝ)) / 2⌉

end

end A263997.P4209692875989966361

namespace A263997

/-- `ceil((n+2-atan(n))/2)` -/
def P4209692875989966361.Spec : Prop :=
  ∀ n, P4209692875989966361.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P11382681152721230441

`ceil((n+1)/ceil(acot(acot(n))))`
-/

namespace A263997.P11382681152721230441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉ : ℚ)⌉

end

end A263997.P11382681152721230441

namespace A263997

/-- `ceil((n+1)/ceil(acot(acot(n))))` -/
def P11382681152721230441.Spec : Prop :=
  ∀ n, P11382681152721230441.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P13130536075085571236

`ceil((C(2, n)+n+1)/2)`
-/

namespace A263997.P13130536075085571236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose 2 n + (n + 1) : ℚ) / 2⌉

end

end A263997.P13130536075085571236

namespace A263997

/-- `ceil((C(2, n)+n+1)/2)` -/
def P13130536075085571236.Spec : Prop :=
  ∀ n, P13130536075085571236.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P3958001214356597822

`floor((C(2, n)+n+2)/2)`
-/

namespace A263997.P3958001214356597822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 2 n + (n + 2) : ℚ) / 2⌋

end

end A263997.P3958001214356597822

namespace A263997

/-- `floor((C(2, n)+n+2)/2)` -/
def P3958001214356597822.Spec : Prop :=
  ∀ n, P3958001214356597822.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P16050659681128948226

`round((C(2, n)+n+1)/2)`
-/

namespace A263997.P16050659681128948226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose 2 n + (n + 1) : ℚ) / 2)

end

end A263997.P16050659681128948226

namespace A263997

/-- `round((C(2, n)+n+1)/2)` -/
def P16050659681128948226.Spec : Prop :=
  ∀ n, P16050659681128948226.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P11794603924243413557

`round(1/atan(atan(2/(n+1))))`
-/

namespace A263997.P11794603924243413557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.arctan (Real.arctan (2 / (n + 1 : ℚ) : ℝ)))

end

end A263997.P11794603924243413557

namespace A263997

/-- `round(1/atan(atan(2/(n+1))))` -/
def P11794603924243413557.Spec : Prop :=
  ∀ n, P11794603924243413557.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P3693195706047512885

`round(1/tanh(tanh(2/(n+1))))`
-/

namespace A263997.P3693195706047512885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.tanh (Real.tanh (2 / (n + 1 : ℚ) : ℝ)))

end

end A263997.P3693195706047512885

namespace A263997

/-- `round(1/tanh(tanh(2/(n+1))))` -/
def P3693195706047512885.Spec : Prop :=
  ∀ n, P3693195706047512885.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P9822251157240534846

`∑[char[n²%(2*(n+1))]]`
-/

namespace A263997.P9822251157240534846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263997.P9822251157240534846

namespace A263997

/-- `∑[char[n²%(2*(n+1))]]` -/
def P9822251157240534846.Spec : Prop :=
  ∀ n, (P9822251157240534846.a n : ℤ) = A263997 (n + 1)

end A263997

/-! ## A263997.P16077008922167694246

`∑[char[and(n+1, n-char[2])]]`
-/

namespace A263997.P16077008922167694246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263997.P16077008922167694246

namespace A263997

/-- `∑[char[and(n+1, n-char[2])]]` -/
def P16077008922167694246.Spec : Prop :=
  ∀ n, (P16077008922167694246.a n : ℤ) = A263997 (n + 1)

end A263997

/-! ## A263997.P17321418079634881131

`∑[1-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A263997.P17321418079634881131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263997.P17321418079634881131

namespace A263997

/-- `∑[1-a(n-1)]` -/
def P17321418079634881131.Spec : Prop :=
  ∀ n, P17321418079634881131.a n = A263997 (n + 1)

end A263997

/-! ## A263997.P13202600119278132566

`∑[a(gcd(2, n+1))²]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A263997.P13202600119278132566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (Nat.gcd 2 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263997.P13202600119278132566

namespace A263997

/-- `∑[a(gcd(2, n+1))²]` -/
def P13202600119278132566.Spec : Prop :=
  ∀ n, (P13202600119278132566.a n : ℤ) = A263997 (n + 1)

end A263997

/-!
# A263999: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A263999, the canonical program `A263999.P9182187807932857106` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263999 has offset 1).

The definition of A263999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263999.P9182187807932857106

`A020695(n)*A189179(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263999

/-- `A020695(n)*A189179(n+2)` -/
def P9182187807932857106.Spec : Prop :=
  ∀ n, P9182187807932857106.a n = A263999 (n + 1)

theorem P9182187807932857106.correct : P9182187807932857106.Spec := by
  intro n
  simp only [A263999, Nat.add_sub_cancel]

end A263999

/-! ## A263999.P6612174145327176394

`(A000071(n+3)+1)*A189179(n+2)`
-/

namespace A263999.P6612174145327176394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 3) + 1) * A189179 (n + 2)

end

end A263999.P6612174145327176394

namespace A263999

/-- `(A000071(n+3)+1)*A189179(n+2)` -/
def P6612174145327176394.Spec : Prop :=
  ∀ n, P6612174145327176394.a n = A263999 (n + 1)

end A263999

/-! ## A263999.P10785795259913499467

`sqrt(A264000(n+1))*A020695(n)`
-/

namespace A263999.P10785795259913499467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264000 (n + 1) : ℝ) * (A020695 n : ℝ)

end

end A263999.P10785795259913499467

namespace A263999

/-- `sqrt(A264000(n+1))*A020695(n)` -/
def P10785795259913499467.Spec : Prop :=
  ∀ n, P10785795259913499467.a n = (A263999 (n + 1) : ℝ)

end A263999

/-! ## A263999.P10263308056525576808

`A189179(n+2)*A189650(A000124(n+1))`
-/

namespace A263999.P10263308056525576808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189179 (n + 2) * A189650 (A000124 (n + 1)).toNat

end

end A263999.P10263308056525576808

namespace A263999

/-- `A189179(n+2)*A189650(A000124(n+1))` -/
def P10263308056525576808.Spec : Prop :=
  ∀ n, P10263308056525576808.a n = A263999 (n + 1)

end A263999

/-! ## A263999.P17580396207838986914

`A020695(n)*A189650(A133263(n+2))`
-/

namespace A263999.P17580396207838986914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A189650 (A133263 (n + 2)).toNat

end

end A263999.P17580396207838986914

namespace A263999

/-- `A020695(n)*A189650(A133263(n+2))` -/
def P17580396207838986914.Spec : Prop :=
  ∀ n, P17580396207838986914.a n = A263999 (n + 1)

end A263999

