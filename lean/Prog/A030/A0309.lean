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
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
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
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A030900: [ exp(15/16)*n! ].

The programs for A030900, there is no canonical definition to state claims against.
-/

/-! ## A030900.P2171235508003885044

`A070960(n+1)+A005206(A030911(n+1))`
-/

namespace A030900.P2171235508003885044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070960 (n + 1) + A005206 (A030911 (n + 1)).toNat

end

end A030900.P2171235508003885044

/-! ## A030900.P106728290614187101

`A300076(A030834(n+1))+A030890(n+1)`
-/

namespace A030900.P106728290614187101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A030834 (n + 1)).toNat + A030890 (n + 1)

end

end A030900.P106728290614187101

/-!
# A030901: [ exp(13/16)*n! ].

The programs for A030901, there is no canonical definition to state claims against.
-/

/-! ## A030901.P2934757616062461065

`A030820(n+1)+A008619(A030904(n+1))`
-/

namespace A030901.P2934757616062461065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030820 (n + 1) + A008619 (A030904 (n + 1)).toNat

end

end A030901.P2934757616062461065

/-! ## A030901.P1358955976691507082

`A030968(n+1)-A033182(A030894(n+1))`
-/

namespace A030901.P1358955976691507082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030968 (n + 1) - A033182 (A030894 (n + 1)).toNat

end

end A030901.P1358955976691507082

/-!
# A030902: a(n) = floor( exp(11/16)*n! ).

The programs for A030902, the canonical program `A030902.P9461195151865273052` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030902 has offset 1).

The definition of A030902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(11/16)*(n+1)!)` (program `A030902.P9461195151865273052`, by `A030902.P9461195151865273052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030902.P9461195151865273052

`floor(exp(11/16)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030902

/-- `floor(exp(11/16)*(n+1)!)` -/
def P9461195151865273052.Spec : Prop :=
  ∀ n, P9461195151865273052.a n = A030902 (n + 1)

theorem P9461195151865273052.correct : P9461195151865273052.Spec := by
  intro n
  simp only [A030902, Nat.add_sub_cancel]

end A030902

/-! ## A030902.P13248795879235142248

`A030857(n+1)+A004526(A030826(n+1))`
-/

namespace A030902.P13248795879235142248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030857 (n + 1) + A004526 (A030826 (n + 1)).toNat

end

end A030902.P13248795879235142248

namespace A030902

/-- `A030857(n+1)+A004526(A030826(n+1))` -/
def P13248795879235142248.Spec : Prop :=
  ∀ n, P13248795879235142248.a n = A030902 (n + 1)

end A030902

/-! ## A030902.P4533437200039147179

`A030914(n+1)+A004526(A030868(n+1))`
-/

namespace A030902.P4533437200039147179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030914 (n + 1) + A004526 (A030868 (n + 1)).toNat

end

end A030902.P4533437200039147179

namespace A030902

/-- `A030914(n+1)+A004526(A030868(n+1))` -/
def P4533437200039147179.Spec : Prop :=
  ∀ n, P4533437200039147179.a n = A030902 (n + 1)

end A030902

/-!
# A030903: [ exp(9/16)*n! ].

The programs for A030903, there is no canonical definition to state claims against.
-/

/-! ## A030903.P8242813570515855488

`A002265(3*A030853(n+1))`
-/

namespace A030903.P8242813570515855488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * A030853 (n + 1)).toNat

end

end A030903.P8242813570515855488

/-! ## A030903.P1017130135906242700

`A098295(3*A000142(n+1))`
-/

namespace A030903.P1017130135906242700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098295 (3 * A000142 (n + 1)).toNat

end

end A030903.P1017130135906242700

/-!
# A030904: [ exp(7/16)*n! ].

The programs for A030904, there is no canonical definition to state claims against.
-/

/-! ## A030904.P2645547681362243171

`A059559(A140642(n)!)`
-/

namespace A030904.P2645547681362243171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059559 (Nat.factorial (A140642 n).toNat)

end

end A030904.P2645547681362243171

/-! ## A030904.P16987109115245164277

`A059559(∑[A008287(n)]!)`
-/

namespace A030904.P16987109115245164277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059559 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A030904.P16987109115245164277

/-!
# A030905: [ exp(5/16)*n! ].

The programs for A030905, there is no canonical definition to state claims against.
-/

/-! ## A030905.P11147862240320706432

`A057367((n+1)!)+(n+1)!`
-/

namespace A030905.P11147862240320706432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (Nat.factorial (n + 1)) + (Nat.factorial (n + 1) : ℤ)

end

end A030905.P11147862240320706432

/-! ## A030905.P13532310229237711936

`record[A057367(A047922(n))+A047922(n)]`
-/

namespace A030905.P13532310229237711936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A047922 n).toNat + A047922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030905.P13532310229237711936

/-! ## A030905.P12086498606968412615

`A057367(A000142(n+1))+A000142(n+1)`
-/

namespace A030905.P12086498606968412615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A000142 (n + 1)).toNat + A000142 (n + 1)

end

end A030905.P12086498606968412615

/-!
# A030906: [ exp(3/16)*n! ].

The programs for A030906, there is no canonical definition to state claims against.
-/

/-! ## A030906.P2068726665564464944

`A030801(n+1)-A008619(A030799(n+1))`
-/

namespace A030906.P2068726665564464944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030801 (n + 1) - A008619 (A030799 (n + 1)).toNat

end

end A030906.P2068726665564464944

/-! ## A030906.P15349344086597096793

`floor(A314024(∏[n+1])/log(55))`
-/

namespace A030906.P15349344086597096793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A314024 (∏ j ∈ Finset.range (n + 1), f1 j) : ℝ) / Real.log (55 : ℝ)⌋

end

end A030906.P15349344086597096793

/-!
# A030907: a(n) = floor( exp(1/16)*n! ).

The programs for A030907, the canonical program `A030907.P9161054357408314658` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030907 has offset 1).

The definition of A030907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(1/16)*(n+1)!)` (program `A030907.P9161054357408314658`, by `A030907.P9161054357408314658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030907.P9161054357408314658

`floor(exp(1/16)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030907

/-- `floor(exp(1/16)*(n+1)!)` -/
def P9161054357408314658.Spec : Prop :=
  ∀ n, P9161054357408314658.a n = A030907 (n + 1)

theorem P9161054357408314658.correct : P9161054357408314658.Spec := by
  intro n
  simp only [A030907, Nat.add_sub_cancel]

end A030907

/-! ## A030907.P16951018087172777913

`A030819(n+1)-A008624(A030814(n+1))`
-/

namespace A030907.P16951018087172777913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030819 (n + 1) - A008624 (A030814 (n + 1)).toNat

end

end A030907.P16951018087172777913

namespace A030907

/-- `A030819(n+1)-A008624(A030814(n+1))` -/
def P16951018087172777913.Spec : Prop :=
  ∀ n, P16951018087172777913.a n = A030907 (n + 1)

end A030907

/-! ## A030907.P16845760160746522685

`A070102(A006882(n))+A049472(A007494((n+1)!))`
-/

namespace A030907.P16845760160746522685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070102 (A006882 n).toNat + A049472 (A007494 (Nat.factorial (n + 1))).toNat

end

end A030907.P16845760160746522685

namespace A030907

/-- `A070102(A006882(n))+A049472(A007494((n+1)!))` -/
def P16845760160746522685.Spec : Prop :=
  ∀ n, P16845760160746522685.a n = A030907 (n + 1)

end A030907

/-!
# A030908: [ exp(14/15)*n! ].

The programs for A030908, there is no canonical definition to state claims against.
-/

/-! ## A030908.P6061380450867850844

`A067535((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A030908.P6061380450867850844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A067535 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030908.P6061380450867850844

/-! ## A030908.P11969014892954294535

`A109451((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A030908.P11969014892954294535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A109451 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A030908.P11969014892954294535

/-!
# A030909: [ exp(13/15)*n! ].

The programs for A030909, there is no canonical definition to state claims against.
-/

/-! ## A030909.P16039666778643269083

`A030940(n+1)+A008615(A030844(n+1))`
-/

namespace A030909.P16039666778643269083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030940 (n + 1) + A008615 (A030844 (n + 1)).toNat

end

end A030909.P16039666778643269083

/-! ## A030909.P1920877174853313809

`A108586(∏[floor(acot(n)+n)+1])`
-/

namespace A030909.P1920877174853313809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108586 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030909.P1920877174853313809

/-!
# A030910: [ exp(11/15)*n! ].

The programs for A030910, there is no canonical definition to state claims against.
-/

/-! ## A030910.P17178120557947257958

`A020909(3*(n+1)!)`
-/

namespace A030910.P17178120557947257958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (3 * Nat.factorial (n + 1))

end

end A030910.P17178120557947257958

/-! ## A030910.P2097586566367760408

`A312267((n+1)!)/2`
-/

namespace A030910.P2097586566367760408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312267 (Nat.factorial (n + 1)) : ℚ) / 2

end

end A030910.P2097586566367760408

/-!
# A030911: a(n) = floor(exp(8/15)*n!).

The programs for A030911, the canonical program `A030911.P11837234913552766382` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030911 has offset 1).

The definition of A030911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(8/15)*(n+1)!)` (program `A030911.P11837234913552766382`, by `A030911.P11837234913552766382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030911.P11837234913552766382

`floor(exp(8/15)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030911

/-- `floor(exp(8/15)*(n+1)!)` -/
def P11837234913552766382.Spec : Prop :=
  ∀ n, P11837234913552766382.a n = A030911 (n + 1)

theorem P11837234913552766382.correct : P11837234913552766382.Spec := by
  intro n
  simp only [A030911, Nat.add_sub_cancel]

end A030911

/-! ## A030911.P9120460994114461720

`A030875(n+1)+A002264(A030892(n+1))`
-/

namespace A030911.P9120460994114461720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030875 (n + 1) + A002264 (A030892 (n + 1)).toNat

end

end A030911.P9120460994114461720

namespace A030911

/-- `A030875(n+1)+A002264(A030892(n+1))` -/
def P9120460994114461720.Spec : Prop :=
  ∀ n, P9120460994114461720.a n = A030911 (n + 1)

end A030911

/-! ## A030911.P4473785321966615804

`A276797(A030943(n+1))+A030920(n+1)`
-/

namespace A030911.P4473785321966615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A030943 (n + 1)).toNat + A030920 (n + 1)

end

end A030911.P4473785321966615804

namespace A030911

/-- `A276797(A030943(n+1))+A030920(n+1)` -/
def P4473785321966615804.Spec : Prop :=
  ∀ n, P4473785321966615804.a n = A030911 (n + 1)

end A030911

/-!
# A030912: [ exp(7/15)*n! ].

The programs for A030912, there is no canonical definition to state claims against.
-/

/-! ## A030912.P10332721954175857900

`A285250(A004526((n+1)*a(n-1))+1)` with `a(0)=1`
-/

namespace A030912.P10332721954175857900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285250 (A004526 ((n + 1 : ℤ) * a (n - 1)).toNat + 1).toNat

end

end A030912.P10332721954175857900

/-! ## A030912.P5886871268155180892

`A059552(comp[7*n]!)`
-/

namespace A030912.P5886871268155180892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059552 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A030912.P5886871268155180892

/-!
# A030913: [ exp(4/15)*n! ].

The programs for A030913, there is no canonical definition to state claims against.
-/

/-! ## A030913.P17173236011239566636

`xor(A064429((n+1)*a(n-1)), A213662(n+1))` with `a(0)=1`
-/

namespace A030913.P17173236011239566636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (A064429 ((n + 1 : ℤ) * a (n - 1)).toNat) (A213662 (n + 1))

end

end A030913.P17173236011239566636

/-! ## A030913.P6042594508909918275

`A327440(A312461((n+1)!))`
-/

namespace A030913.P6042594508909918275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (A312461 (Nat.factorial (n + 1))).toNat

end

end A030913.P6042594508909918275

/-!
# A030914: [ exp(2/15)*n! ].

The programs for A030914, there is no canonical definition to state claims against.
-/

/-! ## A030914.P4325003225574792637

`A047592(A000142(n+1)-A370804(n))`
-/

namespace A030914.P4325003225574792637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (A000142 (n + 1) - A370804 n).toNat

end

end A030914.P4325003225574792637

/-! ## A030914.P12037087417469152158

`A035188(n+1)+A004774(A000142(n+1))`
-/

namespace A030914.P12037087417469152158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035188 (n + 1) + A004774 (A000142 (n + 1)).toNat

end

end A030914.P12037087417469152158

/-! ## A030914.P14638465062871484920

`A035188(n+1)+A004774(A152630(n+1))`
-/

namespace A030914.P14638465062871484920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035188 (n + 1) + A004774 (A152630 (n + 1)).toNat

end

end A030914.P14638465062871484920

/-!
# A030915: [ exp(1/15)*n! ].

The programs for A030915, there is no canonical definition to state claims against.
-/

/-! ## A030915.P17994384887088890392

`∑[A229303(A317169(n))]`
-/

namespace A030915.P17994384887088890392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (A317169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030915.P17994384887088890392

/-! ## A030915.P7101383036447025387

`A030949(n+1)-A065033(A030941(n+1))`
-/

namespace A030915.P7101383036447025387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030949 (n + 1) - A065033 (A030941 (n + 1)).toNat

end

end A030915.P7101383036447025387

/-!
# A030916: [ exp(13/14)*n! ].

The programs for A030916, there is no canonical definition to state claims against.
-/

/-! ## A030916.P9785517877525875936

`A030922(n+1)+A008651(A000255(n))`
-/

namespace A030916.P9785517877525875936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030922 (n + 1) + A008651 (A000255 n).toNat

end

end A030916.P9785517877525875936

/-! ## A030916.P14491609147932315994

`A163974(n+1)+A005843(A030896(n+1))`
-/

namespace A030916.P14491609147932315994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163974 (n + 1) + A005843 (A030896 (n + 1)).toNat

end

end A030916.P14491609147932315994

/-! ## A030916.P8281747082864728887

`A195182(A030817(n+1))+A030803(n+1)`
-/

namespace A030916.P8281747082864728887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 (A030817 (n + 1)).toNat + A030803 (n + 1)

end

end A030916.P8281747082864728887

/-!
# A030917: [ exp(11/14)*n! ].

The programs for A030917, there is no canonical definition to state claims against.
-/

/-! ## A030917.P14155956653542877582

`A065033(A030926(n+1))+A030848(n+1)`
-/

namespace A030917.P14155956653542877582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030926 (n + 1)).toNat + A030848 (n + 1)

end

end A030917.P14155956653542877582

/-! ## A030917.P14642189396763270626

`A131793((n+1)*a(n-1)+1)` with `a(0)=2`
-/

namespace A030917.P14642189396763270626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131793 ((n + 1 : ℤ) * a (n - 1) + 1).toNat

end

end A030917.P14642189396763270626

/-!
# A030918: [ exp(9/14)*n! ].

The programs for A030918, there is no canonical definition to state claims against.
-/

/-! ## A030918.P8103829374098296395

`A182777(∏[A254667(n)+1])`
-/

namespace A030918.P8103829374098296395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030918.P8103829374098296395

/-! ## A030918.P17360207501121827291

`A325989(2^(n+1))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030918.P17360207501121827291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325989 (2 ^ (n + 1)) + (n + 1 : ℤ) * a (n - 1)

end

end A030918.P17360207501121827291

/-!
# A030919: [ exp(5/14)*n! ].

The programs for A030919, there is no canonical definition to state claims against.
-/

/-! ## A030919.P12485566462044343424

`A030862(n+1)-A065033(A030867(n+1))`
-/

namespace A030919.P12485566462044343424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030862 (n + 1) - A065033 (A030867 (n + 1)).toNat

end

end A030919.P12485566462044343424

/-! ## A030919.P10060651263927802266

`A002265(A019466(2*(n+1)))`
-/

namespace A030919.P10060651263927802266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A019466 (2 * (n + 1))).toNat

end

end A030919.P10060651263927802266

/-!
# A030920: Floor( exp(3/14)*n! ).

The programs for A030920, the canonical program `A030920.P1448318326763748979` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030920 has offset 1).

The definition of A030920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(3/14)*(n+1)!)` (program `A030920.P1448318326763748979`, by `A030920.P1448318326763748979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030920.P1448318326763748979

`floor(exp(3/14)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030920

/-- `floor(exp(3/14)*(n+1)!)` -/
def P1448318326763748979.Spec : Prop :=
  ∀ n, P1448318326763748979.a n = A030920 (n + 1)

theorem P1448318326763748979.correct : P1448318326763748979.Spec := by
  intro n
  simp only [A030920, Nat.add_sub_cancel]

end A030920

/-! ## A030920.P3679109003106598226

`A030911(n+1)-A276797(A030943(n+1))`
-/

namespace A030920.P3679109003106598226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030911 (n + 1) - A276797 (A030943 (n + 1)).toNat

end

end A030920.P3679109003106598226

namespace A030920

/-- `A030911(n+1)-A276797(A030943(n+1))` -/
def P3679109003106598226.Spec : Prop :=
  ∀ n, P3679109003106598226.a n = A030920 (n + 1)

end A030920

/-!
# A030921: [ exp(1/14)*n! ].

The programs for A030921, there is no canonical definition to state claims against.
-/

/-! ## A030921.P3364011318574741391

`A302540(A184018(n))`
-/

namespace A030921.P3364011318574741391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (A184018 n).toNat

end

end A030921.P3364011318574741391

/-! ## A030921.P4337224233120258657

`A004526(A030887(n+1))`
-/

namespace A030921.P4337224233120258657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030887 (n + 1)).toNat

end

end A030921.P4337224233120258657

/-!
# A030922: [ exp(12/13)*n! ].

The programs for A030922, there is no canonical definition to state claims against.
-/

/-! ## A030922.P18219712957465309300

`A046523(A256181(n+1))+A030936(n+1)`
-/

namespace A030922.P18219712957465309300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A256181 (n + 1)).toNat + A030936 (n + 1)

end

end A030922.P18219712957465309300

/-! ## A030922.P2154858931322106172

`A256181(n+1)+A030842(n+1)-A004396(A030947(n+1))`
-/

namespace A030922.P2154858931322106172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256181 (n + 1) + (A030842 (n + 1) - A004396 (A030947 (n + 1)).toNat)

end

end A030922.P2154858931322106172

/-!
# A030923: [ exp(11/13)*n! ].

The programs for A030923, there is no canonical definition to state claims against.
-/

/-! ## A030923.P15828415507169725550

`A030966(n+1)+A037442(n+1)!`
-/

namespace A030923.P15828415507169725550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030966 (n + 1) + (Nat.factorial (A037442 (n + 1)).toNat : ℤ)

end

end A030923.P15828415507169725550

/-! ## A030923.P8916353591770701828

`A262663((n+1)*a(n-1)+n)-1` with `a(0)=2`
-/

namespace A030923.P8916353591770701828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A262663 ((n + 1 : ℤ) * a (n - 1) + (n : ℤ)).toNat - 1

end

end A030923.P8916353591770701828

/-!
# A030924: [ exp(10/13)*n! ].

The programs for A030924, there is no canonical definition to state claims against.
-/

/-! ## A030924.P18330492133124038810

`A059995(A030967(n+1))+A030963(n+1)`
-/

namespace A030924.P18330492133124038810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A030967 (n + 1)).toNat + A030963 (n + 1)

end

end A030924.P18330492133124038810

/-! ## A030924.P4511981238405704631

`A000026(A052649(n)-A059590(n))`
-/

namespace A030924.P4511981238405704631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A052649 n - A059590 n).toNat

end

end A030924.P4511981238405704631

/-!
# A030925: [ exp(9/13)*n! ].

The programs for A030925, there is no canonical definition to state claims against.
-/

/-! ## A030925.P15967884027461929688

`A004526(n)+A320015(8*a(n-1))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030925.P15967884027461929688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004526 n + (A320015 (8 * a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1))

end

end A030925.P15967884027461929688

/-! ## A030925.P17015879000902810010

`A030960(n+1)+A004526(A030937(n+1))`
-/

namespace A030925.P17015879000902810010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030960 (n + 1) + A004526 (A030937 (n + 1)).toNat

end

end A030925.P17015879000902810010

/-! ## A030925.P11337233110470511190

`A057354(A030889(n+1))+A030874(n+1)`
-/

namespace A030925.P11337233110470511190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A030889 (n + 1)).toNat + A030874 (n + 1)

end

end A030925.P11337233110470511190

/-!
# A030926: [ exp(8/13)*n! ].

The programs for A030926, there is no canonical definition to state claims against.
-/

/-! ## A030926.P4883124002878981259

`A030832(n+1)-A343609(A030838(n+1))`
-/

namespace A030926.P4883124002878981259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030832 (n + 1) - A343609 (A030838 (n + 1)).toNat

end

end A030926.P4883124002878981259

/-! ## A030926.P13938747452663282419

`A069517(n^n)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030926.P13938747452663282419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069517 (n ^ n) + (n + 1 : ℤ) * a (n - 1)

end

end A030926.P13938747452663282419

/-!
# A030927: [ exp(7/13)*n! ].

The programs for A030927, there is no canonical definition to state claims against.
-/

/-! ## A030927.P14525336392171897421

`A030813(n+1)-A008621(A030932(n+1))`
-/

namespace A030927.P14525336392171897421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030813 (n + 1) - A008621 (A030932 (n + 1)).toNat

end

end A030927.P14525336392171897421

/-! ## A030927.P305104678785544319

`A004525(floor((n+1)!/cos(1)²))`
-/

namespace A030927.P305104678785544319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌊(Nat.factorial (n + 1) : ℝ) / Real.cos (1 : ℝ) ^ 2⌋.toNat

end

end A030927.P305104678785544319

/-!
# A030928: [ exp(6/13)*n! ].

The programs for A030928, there is no canonical definition to state claims against.
-/

/-! ## A030928.P7433239740534260262

`A239706(A137635(n)+n)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030928.P7433239740534260262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239706 (A137635 n + (n : ℤ)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030928.P7433239740534260262

/-! ## A030928.P2282307742758577495

`A030937(n+1)+A004526(A226438(n+1))`
-/

namespace A030928.P2282307742758577495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030937 (n + 1) + A004526 (A226438 (n + 1)).toNat

end

end A030928.P2282307742758577495

/-! ## A030928.P17380415692765496626

`A004526(A226438(n+1))+A004396(A182774((n+1)!))`
-/

namespace A030928.P17380415692765496626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A226438 (n + 1)).toNat + A004396 (A182774 (Nat.factorial (n + 1))).toNat

end

end A030928.P17380415692765496626

/-!
# A030929: a(n) = floor( exp(5/13)*n! ).

The programs for A030929, the canonical program `A030929.P3124965735425156238` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030929 has offset 1).

The definition of A030929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(5/13)*(n+1)!)` (program `A030929.P3124965735425156238`, by `A030929.P3124965735425156238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030929.P3124965735425156238

`floor(exp(5/13)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030929

/-- `floor(exp(5/13)*(n+1)!)` -/
def P3124965735425156238.Spec : Prop :=
  ∀ n, P3124965735425156238.a n = A030929 (n + 1)

theorem P3124965735425156238.correct : P3124965735425156238.Spec := by
  intro n
  simp only [A030929, Nat.add_sub_cancel]

end A030929

/-! ## A030929.P12763693538822991545

`A329843(A185974(n)!)`
-/

namespace A030929.P12763693538822991545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329843 (Nat.factorial (A185974 n).toNat)

end

end A030929.P12763693538822991545

namespace A030929

/-- `A329843(A185974(n)!)` -/
def P12763693538822991545.Spec : Prop :=
  ∀ n, P12763693538822991545.a n = A030929 (n + 1)

end A030929

/-!
# A030930: [ exp(4/13)*n! ].

The programs for A030930, there is no canonical definition to state claims against.
-/

/-! ## A030930.P16583438399350705204

`A098158(n)+A130481((n+1)*a(n-1)+1)-and(1, n)` with `a(0)=1`
-/

namespace A030930.P16583438399350705204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098158 n + (A130481 ((n + 1 : ℤ) * a (n - 1) + 1).toNat - (Nat.land 1 n : ℤ))

end

end A030930.P16583438399350705204

/-! ## A030930.P6209395483706519501

`A152636(n+1)+A002266(A030890(n+1))`
-/

namespace A030930.P6209395483706519501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152636 (n + 1) + A002266 (A030890 (n + 1)).toNat

end

end A030930.P6209395483706519501

/-! ## A030930.P14911799761741622640

`A152709(n+1)+A002266(A030890(n+1))`
-/

namespace A030930.P14911799761741622640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (n + 1) + A002266 (A030890 (n + 1)).toNat

end

end A030930.P14911799761741622640

/-!
# A030931: [ exp(3/13)*n! ].

The programs for A030931, there is no canonical definition to state claims against.
-/

/-! ## A030931.P14896997111687841214

`A004396(A030941(n+1)-A089050(n))`
-/

namespace A030931.P14896997111687841214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A030941 (n + 1) - A089050 n).toNat

end

end A030931.P14896997111687841214

/-! ## A030931.P13300797413084631670

`A145569(or(A030929(n+1), A089050(n)))`
-/

namespace A030931.P13300797413084631670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (Int.lor (A030929 (n + 1)) (A089050 n)).toNat

end

end A030931.P13300797413084631670

/-! ## A030931.P13600653893749784316

`A145569(or(A030929(n+1), A124757(n)))`
-/

namespace A030931.P13600653893749784316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (Int.lor (A030929 (n + 1)) (A124757 n)).toNat

end

end A030931.P13600653893749784316

/-!
# A030932: [ exp(2/13)*n! ].

The programs for A030932, there is no canonical definition to state claims against.
-/

/-! ## A030932.P18319458877812033010

`A047304(A038507(n+1)-∑[char[6*n]])`
-/

namespace A030932.P18319458877812033010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (A038507 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A030932.P18319458877812033010

/-! ## A030932.P15314665364635780259

`A024164(A193935(n+1))+A000142(n+1)`
-/

namespace A030932.P15314665364635780259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (A193935 (n + 1)).toNat + A000142 (n + 1)

end

end A030932.P15314665364635780259

/-! ## A030932.P16842701365813504974

`A193936(n+1)+A024164(A193935(n+1))`
-/

namespace A030932.P16842701365813504974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193936 (n + 1) + A024164 (A193935 (n + 1)).toNat

end

end A030932.P16842701365813504974

/-!
# A030933: a(n) = floor(exp(1/13)*n!).

The programs for A030933, the canonical program `A030933.P3213622394005157508` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030933 has offset 1).

The definition of A030933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(1/13)*(n+1)!)` (program `A030933.P3213622394005157508`, by `A030933.P3213622394005157508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030933.P3213622394005157508

`floor(exp(1/13)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030933

/-- `floor(exp(1/13)*(n+1)!)` -/
def P3213622394005157508.Spec : Prop :=
  ∀ n, P3213622394005157508.a n = A030933 (n + 1)

theorem P3213622394005157508.correct : P3213622394005157508.Spec := by
  intro n
  simp only [A030933, Nat.add_sub_cancel]

end A030933

/-! ## A030933.P15880115965027388132

`A029928(A030824(n+1))`
-/

namespace A030933.P15880115965027388132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029928 (A030824 (n + 1)).toNat

end

end A030933.P15880115965027388132

namespace A030933

/-- `A029928(A030824(n+1))` -/
def P15880115965027388132.Spec : Prop :=
  ∀ n, P15880115965027388132.a n = A030933 (n + 1)

end A030933

/-! ## A030933.P14869031106891995583

`A172270(A226438(n+1))-A226464(n)`
-/

namespace A030933.P14869031106891995583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (A226438 (n + 1)).toNat - A226464 n

end

end A030933.P14869031106891995583

namespace A030933

/-- `A172270(A226438(n+1))-A226464(n)` -/
def P14869031106891995583.Spec : Prop :=
  ∀ n, P14869031106891995583.a n = A030933 (n + 1)

end A030933

/-!
# A030934: [ exp(11/12)*n! ].

The programs for A030934, there is no canonical definition to state claims against.
-/

/-! ## A030934.P16687841349916638753

`or((n+1)*a(n-1), A112606(A129271(n)))` with `a(0)=2`
-/

namespace A030934.P16687841349916638753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor ((n + 1 : ℤ) * a (n - 1)) (A112606 (A129271 n).toNat)

end

end A030934.P16687841349916638753

/-! ## A030934.P9547584778299194125

`A030832(n+1)+A008619(A030839(n+1))`
-/

namespace A030934.P9547584778299194125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030832 (n + 1) + A008619 (A030839 (n + 1)).toNat

end

end A030934.P9547584778299194125

/-!
# A030935: [ exp(7/12)*n! ].

The programs for A030935, there is no canonical definition to state claims against.
-/

/-! ## A030935.P16112439418712114809

`A178153(round(n^n/sqrt(5))+2)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030935.P16112439418712114809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178153 (SequenceMachineLib.roundAway ((n ^ n : ℝ) / Real.sqrt (5 : ℝ)) + 2).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030935.P16112439418712114809

/-!
# A030936: [ exp(5/12)*n! ].

The programs for A030936, there is no canonical definition to state claims against.
-/

/-! ## A030936.P2419079339827276251

`A008683(3*n+2)+A008683(14*a(n-1))+(n+1)*a(n-1)+1` with `a(0)=1`
-/

namespace A030936.P2419079339827276251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (3 * n + 2) + (A008683 (14 * a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1) + 1)

end

end A030936.P2419079339827276251

/-! ## A030936.P2306967430225988691

`A030842(n+1)-A004396(A030947(n+1))`
-/

namespace A030936.P2306967430225988691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030842 (n + 1) - A004396 (A030947 (n + 1)).toNat

end

end A030936.P2306967430225988691

/-! ## A030936.P7425453460753763378

`A030922(n+1)-A046523(A256181(n+1))`
-/

namespace A030936.P7425453460753763378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030922 (n + 1) - A046523 (A256181 (n + 1)).toNat

end

end A030936.P7425453460753763378

/-!
# A030937: [ exp(1/12)*n! ].

The programs for A030937, there is no canonical definition to state claims against.
-/

/-! ## A030937.P2004305179268821564

`A004396(A182774((n+1)!))`
-/

namespace A030937.P2004305179268821564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A182774 (Nat.factorial (n + 1))).toNat

end

end A030937.P2004305179268821564

/-! ## A030937.P8920884345455335757

`A030945(n+1)-A070098(A030947(n+1))`
-/

namespace A030937.P8920884345455335757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030945 (n + 1) - A070098 (A030947 (n + 1)).toNat

end

end A030937.P8920884345455335757

/-! ## A030937.P6882251117108439292

`A030960(n+1)-A057366(A152643(n+1))`
-/

namespace A030937.P6882251117108439292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030960 (n + 1) - A057366 (A152643 (n + 1)).toNat

end

end A030937.P6882251117108439292

/-!
# A030938: Floor(exp(10/11)*n!).

The programs for A030938, the canonical program `A030938.P6846156620597176371` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030938 has offset 1).

The definition of A030938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(10/11)*(n+1)!)` (program `A030938.P6846156620597176371`, by `A030938.P6846156620597176371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030938.P6846156620597176371

`floor(exp(10/11)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030938

/-- `floor(exp(10/11)*(n+1)!)` -/
def P6846156620597176371.Spec : Prop :=
  ∀ n, P6846156620597176371.a n = A030938 (n + 1)

theorem P6846156620597176371.correct : P6846156620597176371.Spec := by
  intro n
  simp only [A030938, Nat.add_sub_cancel]

end A030938

/-! ## A030938.P2122723674379431782

`A030976(n+1)+A004525(A030915(n+1))`
-/

namespace A030938.P2122723674379431782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030976 (n + 1) + A004525 (A030915 (n + 1)).toNat

end

end A030938.P2122723674379431782

namespace A030938

/-- `A030976(n+1)+A004525(A030915(n+1))` -/
def P2122723674379431782.Spec : Prop :=
  ∀ n, P2122723674379431782.a n = A030938 (n + 1)

end A030938

/-! ## A030938.P13376406521389832438

`A054071(A030906(n+1))+A030865(n+1)`
-/

namespace A030938.P13376406521389832438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A030906 (n + 1)).toNat + A030865 (n + 1)

end

end A030938.P13376406521389832438

namespace A030938

/-- `A054071(A030906(n+1))+A030865(n+1)` -/
def P13376406521389832438.Spec : Prop :=
  ∀ n, P13376406521389832438.a n = A030938 (n + 1)

end A030938

/-!
# A030939: [ exp(9/11)*n! ].

The programs for A030939, there is no canonical definition to state claims against.
-/

/-! ## A030939.P5931849912243782774

`or(A005843(A030961(n+1)), A054925(n))`
-/

namespace A030939.P5931849912243782774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A030961 (n + 1)).toNat) (A054925 n)

end

end A030939.P5931849912243782774

/-! ## A030939.P3273619695548583434

`or(A005843(A030961(n+1)), A112367(n))`
-/

namespace A030939.P3273619695548583434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A030961 (n + 1)).toNat) (A112367 n)

end

end A030939.P3273619695548583434

/-! ## A030939.P14273694335498349447

`or(A005843(A030961(n+1)), A193451(n))`
-/

namespace A030939.P14273694335498349447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A030961 (n + 1)).toNat) (A193451 n)

end

end A030939.P14273694335498349447

/-!
# A030940: [ exp(8/11)*n! ].

The programs for A030940, there is no canonical definition to state claims against.
-/

/-! ## A030940.P5840443598200107720

`A030909(n+1)-A008615(A030844(n+1))`
-/

namespace A030940.P5840443598200107720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030909 (n + 1) - A008615 (A030844 (n + 1)).toNat

end

end A030940.P5840443598200107720

/-! ## A030940.P4586423498667628114

`A087504(2*A030938(n+1))`
-/

namespace A030940.P4586423498667628114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (2 * A030938 (n + 1)).toNat

end

end A030940.P4586423498667628114

/-!
# A030941: [ exp(7/11)*n! ].

The programs for A030941, there is no canonical definition to state claims against.
-/

/-! ## A030941.P6097991658528998991

`A002264(A314247((n+1)!))`
-/

namespace A030941.P6097991658528998991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A314247 (Nat.factorial (n + 1))).toNat

end

end A030941.P6097991658528998991

/-! ## A030941.P4073020614321003178

`A057354(A311628((n+1)!))`
-/

namespace A030941.P4073020614321003178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A311628 (Nat.factorial (n + 1))).toNat

end

end A030941.P4073020614321003178

/-!
# A030942: [ exp(6/11)*n! ].

The programs for A030942, there is no canonical definition to state claims against.
-/

/-! ## A030942.P10091688996195433821

`A235451(n*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A030942.P10091688996195433821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235451 ((n : ℤ) * a (n - 1)).toNat + a (n - 1)

end

end A030942.P10091688996195433821

/-! ## A030942.P835617588740475459

`A130481((n+1)*a(n-1)+1)-and(1, n)` with `a(0)=1, a(1)=3`
-/

namespace A030942.P835617588740475459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A130481 ((n + 1 : ℤ) * a (n - 1) + 1).toNat - (Nat.land 1 n : ℤ)

end

end A030942.P835617588740475459

/-! ## A030942.P1553105741837910342

`A140098(A030957(n+1))+A085141(n)`
-/

namespace A030942.P1553105741837910342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A030957 (n + 1)).toNat + A085141 n

end

end A030942.P1553105741837910342

/-!
# A030943: a(n) = floor( exp(5/11)*n! ).

The programs for A030943, the canonical program `A030943.P6064880592473691273` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030943 has offset 1).

The definition of A030943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(5/11)*(n+1)!)` (program `A030943.P6064880592473691273`, by `A030943.P6064880592473691273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030943.P6064880592473691273

`floor(exp(5/11)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030943

/-- `floor(exp(5/11)*(n+1)!)` -/
def P6064880592473691273.Spec : Prop :=
  ∀ n, P6064880592473691273.a n = A030943 (n + 1)

theorem P6064880592473691273.correct : P6064880592473691273.Spec := by
  intro n
  simp only [A030943, Nat.add_sub_cancel]

end A030943

/-! ## A030943.P11633305086496075929

`∑[A207790(A189800(n)+1)]`
-/

namespace A030943.P11633305086496075929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A189800 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030943.P11633305086496075929

namespace A030943

/-- `∑[A207790(A189800(n)+1)]` -/
def P11633305086496075929.Spec : Prop :=
  ∀ n, P11633305086496075929.a n = A030943 (n + 1)

end A030943

/-!
# A030944: [ exp(4/11)*n! ].

The programs for A030944, there is no canonical definition to state claims against.
-/

/-! ## A030944.P13502330051261121972

`A030817(n+1)-A103221(A030820(n+1))`
-/

namespace A030944.P13502330051261121972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030817 (n + 1) - A103221 (A030820 (n + 1)).toNat

end

end A030944.P13502330051261121972

/-! ## A030944.P16902692968357858891

`A057361(A030968(n+1))`
-/

namespace A030944.P16902692968357858891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A030968 (n + 1)).toNat

end

end A030944.P16902692968357858891

/-!
# A030945: [ exp(3/11)*n! ].

The programs for A030945, there is no canonical definition to state claims against.
-/

/-! ## A030945.P14138292227004693855

`A164087((n+1)!)`
-/

namespace A030945.P14138292227004693855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164087 (Nat.factorial (n + 1))

end

end A030945.P14138292227004693855

/-! ## A030945.P6425422177800494721

`A164087(∏[n+1])`
-/

namespace A030945.P6425422177800494721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164087 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030945.P6425422177800494721

/-! ## A030945.P5930440650700688915

`record[A164087(ceil(xor(1, n)/2)!)]`
-/

namespace A030945.P5930440650700688915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164087 (Nat.factorial ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030945.P5930440650700688915

/-!
# A030946: [ exp(2/11)*n! ].

The programs for A030946, there is no canonical definition to state claims against.
-/

/-! ## A030946.P648958978435406982

`A047253((n+1)!-A047165(n+1))`
-/

namespace A030946.P648958978435406982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 ((Nat.factorial (n + 1) : ℤ) - A047165 (n + 1)).toNat

end

end A030946.P648958978435406982

/-! ## A030946.P14045397255883470216

`A004526(A030958(n+1))`
-/

namespace A030946.P14045397255883470216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030958 (n + 1)).toNat

end

end A030946.P14045397255883470216

/-!
# A030947: [ exp(1/11)*n! ].

The programs for A030947, there is no canonical definition to state claims against.
-/

/-! ## A030947.P8197978578438287510

`A262663((n+1)*a(n-1)+n)-1-2*A206706(3*n+1)` with `a(0)=1, a(1)=2`
-/

namespace A030947.P8197978578438287510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A262663 ((n + 1 : ℤ) * a (n - 1) + (n : ℤ)).toNat - 1 - 2 * A206706 (3 * n + 1)

end

end A030947.P8197978578438287510

/-! ## A030947.P5124864080274941638

`A030871(n+1)-A002264(A030859(n+1))`
-/

namespace A030947.P5124864080274941638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030871 (n + 1) - A002264 (A030859 (n + 1)).toNat

end

end A030947.P5124864080274941638

/-!
# A030948: [ exp(9/10)*n! ].

The programs for A030948, there is no canonical definition to state claims against.
-/

/-! ## A030948.P851844115211791728

`a(n-1)+n*A109613(a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A030948.P851844115211791728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (n : ℤ) * A109613 (a (n - 1)).toNat

end

end A030948.P851844115211791728

/-! ## A030948.P8975573776873330939

`a(n-1)+n*A192419(a(n-1))` with `a(0)=2`
-/

namespace A030948.P8975573776873330939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n : ℤ) * A192419 (a (n - 1)).toNat

end

end A030948.P8975573776873330939

/-!
# A030949: a(n) = floor( exp(7/10)*n! ).

The programs for A030949, the canonical program `A030949.P1708770752548117404` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030949 has offset 1).

The definition of A030949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(7/10)*(n+1)!)` (program `A030949.P1708770752548117404`, by `A030949.P1708770752548117404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030949.P1708770752548117404

`floor(exp(7/10)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030949

/-- `floor(exp(7/10)*(n+1)!)` -/
def P1708770752548117404.Spec : Prop :=
  ∀ n, P1708770752548117404.a n = A030949 (n + 1)

theorem P1708770752548117404.correct : P1708770752548117404.Spec := by
  intro n
  simp only [A030949, Nat.add_sub_cancel]

end A030949

/-! ## A030949.P5959051157209748897

`A065033(A030936(n+1))+A030836(n+1)`
-/

namespace A030949.P5959051157209748897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030936 (n + 1)).toNat + A030836 (n + 1)

end

end A030949.P5959051157209748897

namespace A030949

/-- `A065033(A030936(n+1))+A030836(n+1)` -/
def P5959051157209748897.Spec : Prop :=
  ∀ n, P5959051157209748897.a n = A030949 (n + 1)

end A030949

/-! ## A030949.P11510198349168468307

`A065033(A030941(n+1))+A030915(n+1)`
-/

namespace A030949.P11510198349168468307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030941 (n + 1)).toNat + A030915 (n + 1)

end

end A030949.P11510198349168468307

namespace A030949

/-- `A065033(A030941(n+1))+A030915(n+1)` -/
def P11510198349168468307.Spec : Prop :=
  ∀ n, P11510198349168468307.a n = A030949 (n + 1)

end A030949

/-!
# A030950: [ exp(3/10)*n! ].

The programs for A030950, there is no canonical definition to state claims against.
-/

/-! ## A030950.P902673180871608798

`floor(A313651((n+1)!)/4)`
-/

namespace A030950.P902673180871608798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A313651 (Nat.factorial (n + 1)) : ℚ) / 4⌋

end

end A030950.P902673180871608798

/-! ## A030950.P1885801921171925865

`A057363(A030917(n+1))`
-/

namespace A030950.P1885801921171925865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A030917 (n + 1)).toNat

end

end A030950.P1885801921171925865

/-!
# A030951: [ exp(1/10)*n! ].

The programs for A030951, there is no canonical definition to state claims against.
-/

/-! ## A030951.P7135514902292159016

`A064429((n+1)*a(n-1)+n)-1` with `a(0)=1`
-/

namespace A030951.P7135514902292159016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064429 ((n + 1 : ℤ) * a (n - 1) + (n : ℤ)).toNat - 1

end

end A030951.P7135514902292159016

/-! ## A030951.P12075428518708029986

`A030812(n+1)-A008619(A030832(n+1))`
-/

namespace A030951.P12075428518708029986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030812 (n + 1) - A008619 (A030832 (n + 1)).toNat

end

end A030951.P12075428518708029986

/-! ## A030951.P3113831133462059743

`A030826(n+1)-A033183(A030805(n+1))`
-/

namespace A030951.P3113831133462059743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030826 (n + 1) - A033183 (A030805 (n + 1)).toNat

end

end A030951.P3113831133462059743

/-!
# A030952: [ exp(8/9)*n! ].

The programs for A030952, there is no canonical definition to state claims against.
-/

/-! ## A030952.P2263906369794580070

`A110654(A189396((n+1)!))`
-/

namespace A030952.P2263906369794580070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A189396 (Nat.factorial (n + 1))).toNat

end

end A030952.P2263906369794580070

/-! ## A030952.P8761322155706580722

`A028310(floor(A230233(n+1)/γ^ϕ))`
-/

namespace A030952.P8761322155706580722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A230233 (n + 1) : ℝ) / Real.eulerMascheroniConstant ^ Real.goldenRatio⌋.toNat

end

end A030952.P8761322155706580722

/-!
# A030953: [ exp(7/9)*n! ].

The programs for A030953, there is no canonical definition to state claims against.
-/

/-! ## A030953.P8743527799561157597

`A005171(A061931(n+1)+2)+(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A030953.P8743527799561157597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005171 (A061931 (n + 1) + 2).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030953.P8743527799561157597

/-! ## A030953.P17851786569686265251

`A049240(A272733(n)+a(n-1))+(n+1)*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A030953.P17851786569686265251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A049240 (A272733 n + a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030953.P17851786569686265251

/-! ## A030953.P3908889428648179073

`A285504((n+4)²^((n+1)%3))+(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A030953.P3908889428648179073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A285504 (((n + 4) ^ 2) ^ ((n + 1) % 3)) + (n + 1 : ℤ) * a (n - 1)

end

end A030953.P3908889428648179073

/-!
# A030954: [ exp(5/9)*n! ].

The programs for A030954, there is no canonical definition to state claims against.
-/

/-! ## A030954.P15823640157771501290

`A008619(A346762(n)+A193464(n+1))`
-/

namespace A030954.P15823640157771501290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A346762 n + A193464 (n + 1)).toNat

end

end A030954.P15823640157771501290

/-! ## A030954.P5332724703718306867

`A301670(A000849(n))-A013928(n+1)`
-/

namespace A030954.P5332724703718306867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 (A000849 n).toNat - A013928 (n + 1)

end

end A030954.P5332724703718306867

/-!
# A030955: a(n) = floor(exp(4/9)*n!).

The programs for A030955, the canonical program `A030955.P11518790122613975397` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030955 has offset 1).

The definition of A030955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(4/9)*(n+1)!)` (program `A030955.P11518790122613975397`, by `A030955.P11518790122613975397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030955.P11518790122613975397

`floor(exp(4/9)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030955

/-- `floor(exp(4/9)*(n+1)!)` -/
def P11518790122613975397.Spec : Prop :=
  ∀ n, P11518790122613975397.a n = A030955 (n + 1)

theorem P11518790122613975397.correct : P11518790122613975397.Spec := by
  intro n
  simp only [A030955, Nat.add_sub_cancel]

end A030955

/-! ## A030955.P1717933457894078361

`A030842(n+1)-A004525(A030835(n+1))`
-/

namespace A030955.P1717933457894078361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030842 (n + 1) - A004525 (A030835 (n + 1)).toNat

end

end A030955.P1717933457894078361

namespace A030955

/-- `A030842(n+1)-A004525(A030835(n+1))` -/
def P1717933457894078361.Spec : Prop :=
  ∀ n, P1717933457894078361.a n = A030955 (n + 1)

end A030955

/-! ## A030955.P2835372949066239297

`A030880(n+1)-A008615(A030891(n+1))`
-/

namespace A030955.P2835372949066239297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030880 (n + 1) - A008615 (A030891 (n + 1)).toNat

end

end A030955.P2835372949066239297

namespace A030955

/-- `A030880(n+1)-A008615(A030891(n+1))` -/
def P2835372949066239297.Spec : Prop :=
  ∀ n, P2835372949066239297.a n = A030955 (n + 1)

end A030955

/-!
# A030956: [ exp(2/9)*n! ].

The programs for A030956, there is no canonical definition to state claims against.
-/

/-! ## A030956.P14110110687225829740

`A047201(A248778(n+1)-A349053(n))`
-/

namespace A030956.P14110110687225829740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A248778 (n + 1) - A349053 n).toNat

end

end A030956.P14110110687225829740

/-! ## A030956.P4175145725270200789

`A007067(A030911(n+1))-A030893(n+1)`
-/

namespace A030956.P4175145725270200789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A030911 (n + 1)).toNat - A030893 (n + 1)

end

end A030956.P4175145725270200789

/-!
# A030957: [ exp(1/9)*n! ].

The programs for A030957, there is no canonical definition to state claims against.
-/

/-! ## A030957.P9882337421763325187

`A194151(ceil(6*n/5)!)`
-/

namespace A030957.P9882337421763325187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (Nat.factorial ⌈6 * ((n : ℚ) / 5)⌉.toNat)

end

end A030957.P9882337421763325187

/-! ## A030957.P7790796739811517330

`A194151(record[∑{d}[2*n+1, (-1)^C(#, 4)]!])`
-/

namespace A030957.P7790796739811517330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ d ∈ Nat.divisors (f2 n), (-1) ^ Nat.choose d 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030957.P7790796739811517330

/-!
# A030958: [ exp(7/8)*n! ].

The programs for A030958, there is no canonical definition to state claims against.
-/

/-! ## A030958.P844641148217737926

`A030883(n+1)+A028310(A030895(n+1))`
-/

namespace A030958.P844641148217737926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030883 (n + 1) + A028310 (A030895 (n + 1)).toNat

end

end A030958.P844641148217737926

/-! ## A030958.P7736997808113522753

`A030895(n+1)+A004396(A030928(n+1))-A260320(n+1)`
-/

namespace A030958.P7736997808113522753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030895 (n + 1) + (A004396 (A030928 (n + 1)).toNat - A260320 (n + 1))

end

end A030958.P7736997808113522753

/-! ## A030958.P11271103208097321659

`A030883(n+1)+A059995(3*n+4)+A059543(A030973(n+1))`
-/

namespace A030958.P11271103208097321659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030883 (n + 1) + (A059995 (3 * n + 4) + A059543 (A030973 (n + 1)).toNat)

end

end A030958.P11271103208097321659

/-!
# A030959: [ exp(5/8)*n! ].

The programs for A030959, there is no canonical definition to state claims against.
-/

/-! ## A030959.P12555741443366945469

`A030866(n+1)-A319136(A103620(n))`
-/

namespace A030959.P12555741443366945469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030866 (n + 1) - A319136 (A103620 n).toNat

end

end A030959.P12555741443366945469

/-! ## A030959.P11445955310645562618

`A004396(A030876(n+1)+A030868(n+1))`
-/

namespace A030959.P11445955310645562618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A030876 (n + 1) + A030868 (n + 1)).toNat

end

end A030959.P11445955310645562618

/-!
# A030960: [ exp(3/8)*n! ].

The programs for A030960, there is no canonical definition to state claims against.
-/

/-! ## A030960.P4140325559900276033

`A030947(n+1)+A002264(A030933(n+1))`
-/

namespace A030960.P4140325559900276033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030947 (n + 1) + A002264 (A030933 (n + 1)).toNat

end

end A030960.P4140325559900276033

/-! ## A030960.P3749709784008386147

`A057366(A152643(n+1))+A030937(n+1)`
-/

namespace A030960.P3749709784008386147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (A152643 (n + 1)).toNat + A030937 (n + 1)

end

end A030960.P3749709784008386147

/-! ## A030960.P16426365739635938949

`A030925(n+1)-A004526(A030937(n+1))`
-/

namespace A030960.P16426365739635938949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030925 (n + 1) - A004526 (A030937 (n + 1)).toNat

end

end A030960.P16426365739635938949

/-!
# A030961: [ exp(1/8)*n! ].

The programs for A030961, there is no canonical definition to state claims against.
-/

/-! ## A030961.P1089889093798146319

`A249122(or(1, A030939(n+1)))`
-/

namespace A030961.P1089889093798146319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A030939 (n + 1))).toNat

end

end A030961.P1089889093798146319

/-! ## A030961.P11940628238068277388

`A004526(A030939(n+1))`
-/

namespace A030961.P11940628238068277388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030939 (n + 1)).toNat

end

end A030961.P11940628238068277388

/-!
# A030962: [ exp(6/7)*n! ].

The programs for A030962, there is no canonical definition to state claims against.
-/

/-! ## A030962.P17673725630026383533

`A030925(n+1)+A008620(A030921(n+1))`
-/

namespace A030962.P17673725630026383533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030925 (n + 1) + A008620 (A030921 (n + 1)).toNat

end

end A030962.P17673725630026383533

/-! ## A030962.P2272123138415769375

`2*A244219((n+1)!)`
-/

namespace A030962.P2272123138415769375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244219 (Nat.factorial (n + 1))

end

end A030962.P2272123138415769375

/-!
# A030963: a(n) = floor( exp(5/7)*n! ).

The programs for A030963, the canonical program `A030963.P4132354331877003910` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030963 has offset 1).

The definition of A030963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(5/7)*(n+1)!)` (program `A030963.P4132354331877003910`, by `A030963.P4132354331877003910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030963.P4132354331877003910

`floor(exp(5/7)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030963

/-- `floor(exp(5/7)*(n+1)!)` -/
def P4132354331877003910.Spec : Prop :=
  ∀ n, P4132354331877003910.a n = A030963 (n + 1)

theorem P4132354331877003910.correct : P4132354331877003910.Spec := by
  intro n
  simp only [A030963, Nat.add_sub_cancel]

end A030963

/-! ## A030963.P2788700169006552009

`A297240(a(n-1)+2)+(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A030963.P2788700169006552009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A297240 (a (n - 1) + 2).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030963.P2788700169006552009

namespace A030963

/-- `A297240(a(n-1)+2)+(n+1)*a(n-1)` -/
def P2788700169006552009.Spec : Prop :=
  ∀ n, P2788700169006552009.a n = A030963 (n + 1)

end A030963

/-!
# A030964: [ exp(4/7)*n! ].

The programs for A030964, there is no canonical definition to state claims against.
-/

/-! ## A030964.P586978929082198008

`A320015(8*a(n-1))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030964.P586978929082198008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320015 (8 * a (n - 1)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A030964.P586978929082198008

/-! ## A030964.P9369768786089275353

`A252463(A005501(n)+A000384(n))`
-/

namespace A030964.P9369768786089275353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A005501 n + A000384 n).toNat

end

end A030964.P9369768786089275353

/-!
# A030965: [ exp(3/7)*n! ].

The programs for A030965, there is no canonical definition to state claims against.
-/

/-! ## A030965.P1525710405895647175

`A030830(n+1)-A004396(A030836(n+1))`
-/

namespace A030965.P1525710405895647175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030830 (n + 1) - A004396 (A030836 (n + 1)).toNat

end

end A030965.P1525710405895647175

/-! ## A030965.P12573793111640731580

`A258703(A195179(∏[n+1]))`
-/

namespace A030965.P12573793111640731580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (A195179 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030965.P12573793111640731580

/-!
# A030966: [ exp(2/7)*n! ].

The programs for A030966, there is no canonical definition to state claims against.
-/

/-! ## A030966.P4052231104659810207

`floor(exp(2/7)*(n+1)!)`
-/

namespace A030966.P4052231104659810207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((2 : ℚ) / 7 : ℝ) * (Nat.factorial (n + 1) : ℝ)⌋

end

end A030966.P4052231104659810207

/-! ## A030966.P3016286532313771166

`A030923(n+1)-A037442(n+1)!`
-/

namespace A030966.P3016286532313771166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030923 (n + 1) - (Nat.factorial (A037442 (n + 1)).toNat : ℤ)

end

end A030966.P3016286532313771166

/-!
# A030967: [ exp(1/7)*n! ].

The programs for A030967, there is no canonical definition to state claims against.
-/

/-! ## A030967.P172125061720973821

`floor(exp(1/7)*(n+1)!)`
-/

namespace A030967.P172125061720973821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((1 : ℚ) / 7 : ℝ) * (Nat.factorial (n + 1) : ℝ)⌋

end

end A030967.P172125061720973821

/-! ## A030967.P17653121431228663012

`A030843(n+1)-A008619(A030832(n+1))`
-/

namespace A030967.P17653121431228663012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030843 (n + 1) - A008619 (A030832 (n + 1)).toNat

end

end A030967.P17653121431228663012

/-!
# A030968: [ exp(5/6)*n! ].

The programs for A030968, there is no canonical definition to state claims against.
-/

/-! ## A030968.P16544464342340502261

`A033182(A030894(n+1))+A030901(n+1)`
-/

namespace A030968.P16544464342340502261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A030894 (n + 1)).toNat + A030901 (n + 1)

end

end A030968.P16544464342340502261

/-! ## A030968.P13796092720207573459

`A110654(A152636(n+1))+A030890(n+1)`
-/

namespace A030968.P13796092720207573459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A152636 (n + 1)).toNat + A030890 (n + 1)

end

end A030968.P13796092720207573459

/-! ## A030968.P9995554900844973535

`A110654(A152709(n+1))+A030890(n+1)`
-/

namespace A030968.P9995554900844973535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A152709 (n + 1)).toNat + A030890 (n + 1)

end

end A030968.P9995554900844973535

/-!
# A030969: [ exp(1/6)*n! ].

The programs for A030969, there is no canonical definition to state claims against.
-/

/-! ## A030969.P13600567750433090398

`A033182(A030891(n+1))+A030898(n+1)`
-/

namespace A030969.P13600567750433090398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A030891 (n + 1)).toNat + A030898 (n + 1)

end

end A030969.P13600567750433090398

/-! ## A030969.P6869363466600319708

`floor(A313543((n+1)!)/4)`
-/

namespace A030969.P6869363466600319708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A313543 (Nat.factorial (n + 1)) : ℚ) / 4⌋

end

end A030969.P6869363466600319708

/-!
# A030970: [ exp(4/5)*n! ].

The programs for A030970, there is no canonical definition to state claims against.
-/

/-! ## A030970.P313767441730588612

`A065033(A030865(n+1))+A030874(n+1)`
-/

namespace A030970.P313767441730588612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030865 (n + 1)).toNat + A030874 (n + 1)

end

end A030970.P313767441730588612

/-! ## A030970.P17844770101982426095

`A159481(A030956(n+1))+A030892(n+1)`
-/

namespace A030970.P17844770101982426095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A030956 (n + 1)).toNat + A030892 (n + 1)

end

end A030970.P17844770101982426095

/-!
# A030971: [ exp(3/5)*n! ].

The programs for A030971, there is no canonical definition to state claims against.
-/

/-! ## A030971.P18018976571936257541

`A030861(n+1)-A159481(A030956(n+1))`
-/

namespace A030971.P18018976571936257541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030861 (n + 1) - A159481 (A030956 (n + 1)).toNat

end

end A030971.P18018976571936257541

/-! ## A030971.P1776503418531294951

`∑{d}[(2*n)^n+1, floor(atan(#))]+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A030971.P1776503418531294951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ + (n + 1 : ℤ) * a (n - 1)

end

end A030971.P1776503418531294951

/-!
# A030972: [ exp(2/5)*n! ].

The programs for A030972, there is no canonical definition to state claims against.
-/

/-! ## A030972.P12371325447048416825

`floor(exp(2/5)*(n+1)!)`
-/

namespace A030972.P12371325447048416825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((2 : ℚ) / 5 : ℝ) * (Nat.factorial (n + 1) : ℝ)⌋

end

end A030972.P12371325447048416825

/-! ## A030972.P11662225392826445855

`A030808(n+1)-record[A140356(n)]`
-/

namespace A030972.P11662225392826445855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030808 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030972.P11662225392826445855

/-!
# A030973: [ exp(1/5)*n! ].

The programs for A030973, there is no canonical definition to state claims against.
-/

/-! ## A030973.P15938074452429719794

`A030902(n+1)-A004526(A030965(n+1))`
-/

namespace A030973.P15938074452429719794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030902 (n + 1) - A004526 (A030965 (n + 1)).toNat

end

end A030973.P15938074452429719794

/-! ## A030973.P9510981235489720676

`A030881(n+1)-A008615(A030870(n+1))`
-/

namespace A030973.P9510981235489720676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030881 (n + 1) - A008615 (A030870 (n + 1)).toNat

end

end A030973.P9510981235489720676

/-! ## A030973.P10752598502343708247

`A030896(n+1)-A033182(A030882(n+1))`
-/

namespace A030973.P10752598502343708247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030896 (n + 1) - A033182 (A030882 (n + 1)).toNat

end

end A030973.P10752598502343708247

/-!
# A030974: [ exp(3/4)*n! ].

The programs for A030974, there is no canonical definition to state claims against.
-/

/-! ## A030974.P6249433030834223058

`A110655(A030966(n+1))+A030867(n+1)`
-/

namespace A030974.P6249433030834223058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A030966 (n + 1)).toNat + A030867 (n + 1)

end

end A030974.P6249433030834223058

/-! ## A030974.P12795863135047750174

`A110654(A003623(∏[n+1]))`
-/

namespace A030974.P12795863135047750174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003623 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030974.P12795863135047750174

/-!
# A030975: [ exp(1/4)*n! ].

The programs for A030975, there is no canonical definition to state claims against.
-/

/-! ## A030975.P6952368039054557007

`A152709(n+1)+A152467(A030911(n+1))`
-/

namespace A030975.P6952368039054557007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (n + 1) + A152467 (A030911 (n + 1)).toNat

end

end A030975.P6952368039054557007

/-! ## A030975.P15070245854468826397

`A275847(A007446(n)+n)`
-/

namespace A030975.P15070245854468826397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (A007446 n + (n : ℤ)).toNat

end

end A030975.P15070245854468826397

/-!
# A030976: a(n) = floor(exp(2/3)*n!).

The programs for A030976, the canonical program `A030976.P4190177902619708310` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030976 has offset 1).

The definition of A030976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(2/3)*(n+1)!)` (program `A030976.P4190177902619708310`, by `A030976.P4190177902619708310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030976.P4190177902619708310

`floor(exp(2/3)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030976

/-- `floor(exp(2/3)*(n+1)!)` -/
def P4190177902619708310.Spec : Prop :=
  ∀ n, P4190177902619708310.a n = A030976 (n + 1)

theorem P4190177902619708310.correct : P4190177902619708310.Spec := by
  intro n
  simp only [A030976, Nat.add_sub_cancel]

end A030976

/-! ## A030976.P14848863481982849673

`A030938(n+1)-A004525(A030915(n+1))`
-/

namespace A030976.P14848863481982849673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030938 (n + 1) - A004525 (A030915 (n + 1)).toNat

end

end A030976.P14848863481982849673

namespace A030976

/-- `A030938(n+1)-A004525(A030915(n+1))` -/
def P14848863481982849673.Spec : Prop :=
  ∀ n, P14848863481982849673.a n = A030976 (n + 1)

end A030976

/-! ## A030976.P4353241913341668215

`A274706(n)+A004442(A027935(n)+(n+1)*a(n-1))` with `a(0)=1`
-/

namespace A030976.P4353241913341668215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274706 n + A004442 (A027935 n + (n + 1 : ℤ) * a (n - 1)).toNat

end

end A030976.P4353241913341668215

namespace A030976

/-- `A274706(n)+A004442(A027935(n)+(n+1)*a(n-1))` -/
def P4353241913341668215.Spec : Prop :=
  ∀ n, P4353241913341668215.a n = A030976 (n + 1)

end A030976

/-!
# A030977: a(n) = floor(exp(1/3)*n!).

The programs for A030977, there is no canonical definition to state claims against.
-/

/-! ## A030977.P4365641890770014202

`A247964((n+1)!)`
-/

namespace A030977.P4365641890770014202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247964 (Nat.factorial (n + 1))

end

end A030977.P4365641890770014202

/-! ## A030977.P6913882466149848047

`A247964(∏[n+1])`
-/

namespace A030977.P6913882466149848047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247964 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A030977.P6913882466149848047

/-! ## A030977.P6983434456158823625

`record[A247964(A132159(n))]`
-/

namespace A030977.P6983434456158823625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247964 (A132159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030977.P6983434456158823625

/-!
# A030978: Maximal number of non-attacking knights on an n X n board.

The programs for A030978, the canonical program `A030978.P5953882664419819838` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030978 has offset 0).

The definition of A030978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030978.P11777755315895278488

`ceil(n²/(2-char[2]))`
-/

namespace A030978.P11777755315895278488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)⌉

end

end A030978.P11777755315895278488

namespace A030978

/-- `ceil(n²/(2-char[2]))` -/
def P11777755315895278488.Spec : Prop :=
  ∀ n, P11777755315895278488.a n = A030978 n

end A030978

/-! ## A030978.P14883066094837312961

`round(n²/round(acot(char[2])))`
-/

namespace A030978.P14883066094837312961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)) : ℚ))

end

end A030978.P14883066094837312961

namespace A030978

/-- `round(n²/round(acot(char[2])))` -/
def P14883066094837312961.Spec : Prop :=
  ∀ n, P14883066094837312961.a n = A030978 n

end A030978

/-! ## A030978.P3723461242962060163

`round(n²/round(atan(n+12)))`
-/

namespace A030978.P3723461242962060163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (SequenceMachineLib.roundAway (Real.arctan (n + 12 : ℝ)) : ℚ))

end

end A030978.P3723461242962060163

namespace A030978

/-- `round(n²/round(atan(n+12)))` -/
def P3723461242962060163.Spec : Prop :=
  ∀ n, P3723461242962060163.a n = A030978 n

end A030978

/-! ## A030978.P5953882664419819838

`∑[a(n-2)+2]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030978

/-- `∑[a(n-2)+2]` -/
def P5953882664419819838.Spec : Prop :=
  ∀ n, (P5953882664419819838.a n : ℤ) = A030978 n

theorem P5953882664419819838.correct : P5953882664419819838.Spec := by
  intro n
  simp only [A030978]

end A030978

/-! ## A030978.P15773639792447719259

`floor(n*n/(2-1/a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A030978.P15773639792447719259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / (2 - 1 / (a (n - 1) : ℚ)))⌋

end

end A030978.P15773639792447719259

namespace A030978

/-- `floor(n*n/(2-1/a(n-1)))` -/
def P15773639792447719259.Spec : Prop :=
  ∀ n, P15773639792447719259.a n = A030978 n

end A030978

/-! ## A030978.P2088560363504599678

`(char[2]+1)*A000982(n)`
-/

namespace A030978.P2088560363504599678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A000982 n

end

end A030978.P2088560363504599678

namespace A030978

/-- `(char[2]+1)*A000982(n)` -/
def P2088560363504599678.Spec : Prop :=
  ∀ n, P2088560363504599678.a n = A030978 n

end A030978

/-! ## A030978.P9740063917992853363

`2*A182531(n+1)-n`
-/

namespace A030978.P9740063917992853363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182531 (n + 1) - (n : ℤ)

end

end A030978.P9740063917992853363

namespace A030978

/-- `2*A182531(n+1)-n` -/
def P9740063917992853363.Spec : Prop :=
  ∀ n, P9740063917992853363.a n = A030978 n

end A030978

/-! ## A030978.P16407835696522668715

`A168237(n)+A107386(n)`
-/

namespace A030978.P16407835696522668715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + A107386 n

end

end A030978.P16407835696522668715

namespace A030978

/-- `A168237(n)+A107386(n)` -/
def P16407835696522668715.Spec : Prop :=
  ∀ n, P16407835696522668715.a n = A030978 n

end A030978

/-! ## A030978.P1877642602655080656

`A000982(n)*A294619(n)`
-/

namespace A030978.P1877642602655080656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A294619 n

end

end A030978.P1877642602655080656

namespace A030978

/-- `A000982(n)*A294619(n)` -/
def P1877642602655080656.Spec : Prop :=
  ∀ n, P1877642602655080656.a n = A030978 n

end A030978

/-! ## A030978.P15054232226515594958

`A000982(n)*A329684(n)`
-/

namespace A030978.P15054232226515594958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A329684 n

end

end A030978.P15054232226515594958

namespace A030978

/-- `A000982(n)*A329684(n)` -/
def P15054232226515594958.Spec : Prop :=
  ∀ n, P15054232226515594958.a n = A030978 n

end A030978

/-! ## A030978.P7807417829065541779

`(∑[n]-A004526(n))*A329684(n)`
-/

namespace A030978.P7807417829065541779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 n) * A329684 n

end

end A030978.P7807417829065541779

namespace A030978

/-- `(∑[n]-A004526(n))*A329684(n)` -/
def P7807417829065541779.Spec : Prop :=
  ∀ n, P7807417829065541779.a n = A030978 n

end A030978

/-! ## A030978.P16021100955261132205

`2*(A181385(n)+A004526(n))-n`
-/

namespace A030978.P16021100955261132205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181385 n + A004526 n) - (n : ℤ)

end

end A030978.P16021100955261132205

namespace A030978

/-- `2*(A181385(n)+A004526(n))-n` -/
def P16021100955261132205.Spec : Prop :=
  ∀ n, P16021100955261132205.a n = A030978 n

end A030978

/-! ## A030978.P9762516784646846032

`A135416(A347558(n+1))+A000982(n)`
-/

namespace A030978.P9762516784646846032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A347558 (n + 1)).toNat + A000982 n

end

end A030978.P9762516784646846032

namespace A030978

/-- `A135416(A347558(n+1))+A000982(n)` -/
def P9762516784646846032.Spec : Prop :=
  ∀ n, P9762516784646846032.a n = A030978 n

end A030978

/-! ## A030978.P16850371938611761970

`ceil(n²/2)^(A143721(2*(n+1))+1)`
-/

namespace A030978.P16850371938611761970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n ^ 2 : ℚ) / 2⌉ : ℚ) ^ (A143721 (2 * (n + 1)) + 1 : ℤ)

end

end A030978.P16850371938611761970

namespace A030978

/-- `ceil(n²/2)^(A143721(2*(n+1))+1)` -/
def P16850371938611761970.Spec : Prop :=
  ∀ n, P16850371938611761970.a n = (A030978 n : ℚ)

end A030978

/-! ## A030978.P1376859499210695175

`A333574(n+1)-A288699(n)`
-/

namespace A030978.P1376859499210695175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) - A288699 n

end

end A030978.P1376859499210695175

namespace A030978

/-- `A333574(n+1)-A288699(n)` -/
def P1376859499210695175.Spec : Prop :=
  ∀ n, P1376859499210695175.a n = A030978 n

end A030978

/-! ## A030978.P1693374061301921117

`round(n²/A040001(A225530(n)))`
-/

namespace A030978.P1693374061301921117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (A040001 (A225530 n).toNat : ℚ))

end

end A030978.P1693374061301921117

namespace A030978

/-- `round(n²/A040001(A225530(n)))` -/
def P1693374061301921117.Spec : Prop :=
  ∀ n, P1693374061301921117.a n = A030978 n

end A030978

/-! ## A030978.P12719531505540633660

`A201629(A087327(n+1))-n`
-/

namespace A030978.P12719531505540633660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A087327 (n + 1)).toNat - (n : ℤ)

end

end A030978.P12719531505540633660

namespace A030978

/-- `A201629(A087327(n+1))-n` -/
def P12719531505540633660.Spec : Prop :=
  ∀ n, P12719531505540633660.a n = A030978 n

end A030978

/-! ## A030978.P6802969587439023611

`A000982(n+1)-A157454(A087327(n+1))`
-/

namespace A030978.P6802969587439023611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A157454 (A087327 (n + 1)).toNat

end

end A030978.P6802969587439023611

namespace A030978

/-- `A000982(n+1)-A157454(A087327(n+1))` -/
def P6802969587439023611.Spec : Prop :=
  ∀ n, P6802969587439023611.a n = A030978 n

end A030978

/-!
# A030979: Numbers k such that binomial(2k,k) is not divisible by 3, 5 or 7.

The programs for A030979, there is no canonical definition to state claims against.
-/

/-! ## A030979.P17895460564866674523

`record[abs(A117966(A196749(n+1)))]`
-/

namespace A030979.P17895460564866674523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117966 (A196749 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030979.P17895460564866674523

/-! ## A030979.P15021555531645500082

`record[A025480(A196749(n+1))]`
-/

namespace A030979.P15021555531645500082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A196749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030979.P15021555531645500082

/-!
# A030980: Number of planted noncrossing bushes with n nodes; i.e., rooted noncrossing trees with n nodes, root degree 1 and no nonroot nodes of degree 1.

The programs for A030980, there is no canonical definition to state claims against.
-/

/-! ## A030980.P10314655516039675938

`A030981(n+1)-A030982(n+1)`
-/

namespace A030980.P10314655516039675938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030981 (n + 1) - A030982 (n + 1)

end

end A030980.P10314655516039675938

/-! ## A030980.P5010134116061399173

`A101449(∑[n]+1)-A030982(n+1)`
-/

namespace A030980.P5010134116061399173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101449 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A030982 (n + 1)

end

end A030980.P5010134116061399173

/-! ## A030980.P5728938349085560380

`A101449(A000124(n))%A097801(n)-A030982(n+1)`
-/

namespace A030980.P5728938349085560380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101449 (A000124 n).toNat) (A097801 n) - A030982 (n + 1)

end

end A030980.P5728938349085560380

/-! ## A030980.P3410229395025292426

`A000034(2*n)*A101449(A000124(n))-A030982(n+1)`
-/

namespace A030980.P3410229395025292426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A101449 (A000124 n).toNat - A030982 (n + 1)

end

end A030980.P3410229395025292426

/-! ## A030980.P11992937874944088772

`A101452(∑[n+1])-A030982(n+1)`
-/

namespace A030980.P11992937874944088772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101452 (∑ j ∈ Finset.range (n + 1), f1 j) - A030982 (n + 1)

end

end A030980.P11992937874944088772

/-!
# A030981: Number of noncrossing bushes with n nodes; i.e., rooted noncrossing trees with n nodes and no nonroot nodes of degree 1.

The programs for A030981, there is no canonical definition to state claims against.
-/

/-! ## A030981.P5173656999759185535

`A030982(n+1)+A030980(n+1)`
-/

namespace A030981.P5173656999759185535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030982 (n + 1) + A030980 (n + 1)

end

end A030981.P5173656999759185535

/-! ## A030981.P5429378975239039432

`A101449(∑[n]+1)`
-/

namespace A030981.P5429378975239039432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101449 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A030981.P5429378975239039432

/-! ## A030981.P11089195109382708532

`or(char[1], A101449(A000124(n)))`
-/

namespace A030981.P11089195109382708532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A101449 (A000124 n).toNat)

end

end A030981.P11089195109382708532

/-! ## A030981.P1027717154532317386

`A101449(A000124(n))%A097801(n)`
-/

namespace A030981.P1027717154532317386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101449 (A000124 n).toNat) (A097801 n)

end

end A030981.P1027717154532317386

/-! ## A030981.P9860218198519809788

`gcd(A000038(n), A101449(A000124(n)))`
-/

namespace A030981.P9860218198519809788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101449 (A000124 n).toNat)

end

end A030981.P9860218198519809788

/-! ## A030981.P16413149591500801877

`A000034(2*n)*A101449(A000124(n))`
-/

namespace A030981.P16413149591500801877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A101449 (A000124 n).toNat

end

end A030981.P16413149591500801877

/-! ## A030981.P4188696939719168580

`A101449(A000124(n))/A000034(lcm(2, n+1))`
-/

namespace A030981.P4188696939719168580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101449 (A000124 n).toNat : ℚ) / (A000034 (Nat.lcm 2 (n + 1)) : ℚ)

end

end A030981.P4188696939719168580

/-! ## A030981.P6413025129582286128

`A144494(A110560(n))+A101449(A000124(n))`
-/

namespace A030981.P6413025129582286128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (A110560 n).toNat + A101449 (A000124 n).toNat

end

end A030981.P6413025129582286128

/-! ## A030981.P15819582237517394397

`A101449(A000124(n))^A000034(A008458(n))`
-/

namespace A030981.P15819582237517394397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101449 (A000124 n).toNat : ℚ) ^ (A000034 (A008458 n).toNat : ℤ)

end

end A030981.P15819582237517394397

/-!
# A030982: Number of noncrossing nonplanted bushes with n nodes, i.e., rooted noncrossing trees with n nodes and no nodes of degree 1.

The programs for A030982, there is no canonical definition to state claims against.
-/

/-! ## A030982.P9446344483981717994

`A030981(n+1)-A030980(n+1)`
-/

namespace A030982.P9446344483981717994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030981 (n + 1) - A030980 (n + 1)

end

end A030982.P9446344483981717994

/-! ## A030982.P6113940380644824022

`A101449(∑[n]+1)-A030980(n+1)`
-/

namespace A030982.P6113940380644824022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101449 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A030980 (n + 1)

end

end A030982.P6113940380644824022

/-! ## A030982.P14375170509300392842

`A101449(A000124(n))%A097801(n)-A030980(n+1)`
-/

namespace A030982.P14375170509300392842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101449 (A000124 n).toNat) (A097801 n) - A030980 (n + 1)

end

end A030982.P14375170509300392842

/-! ## A030982.P203647108543839996

`A000034(2*n)*A101449(A000124(n))-A030980(n+1)`
-/

namespace A030982.P203647108543839996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A101449 (A000124 n).toNat - A030980 (n + 1)

end

end A030982.P203647108543839996

/-! ## A030982.P10564265637645616329

`A101452(∑[n+1])-A030980(n+1)`
-/

namespace A030982.P10564265637645616329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101452 (∑ j ∈ Finset.range (n + 1), f1 j) - A030980 (n + 1)

end

end A030982.P10564265637645616329

/-!
# A030983: Number of rooted noncrossing trees with n nodes such that root has degree 1 and the child of the root has degree at least 2.

The programs for A030983, the canonical program `A030983.P14081376561904154978` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030983 has offset 3).

The definition of A030983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030983.P14081376561904154978

`C(3*(n+3)-5, n+1)/(n+2)-2*C(3*(n+3)-8, n)/(n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030983

/-- `C(3*(n+3)-5, n+1)/(n+2)-2*C(3*(n+3)-8, n)/(n+1)` -/
def P14081376561904154978.Spec : Prop :=
  ∀ n, P14081376561904154978.a n = (A030983 (n + 3) : ℚ)

end A030983

/-! ## A030983.P3173683942450673075

`Δ[A006013(n)]-A006013(n)`
-/

namespace A030983.P3173683942450673075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006013 n

end

end A030983.P3173683942450673075

namespace A030983

/-- `Δ[A006013(n)]-A006013(n)` -/
def P3173683942450673075.Spec : Prop :=
  ∀ n, P3173683942450673075.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P13266064319594792413

`A006013(n+1)-A047009(n+1)`
-/

namespace A030983.P13266064319594792413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - A047009 (n + 1)

end

end A030983.P13266064319594792413

namespace A030983

/-- `A006013(n+1)-A047009(n+1)` -/
def P13266064319594792413.Spec : Prop :=
  ∀ n, P13266064319594792413.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P3035637461656848901

`A046649(n+2)-A103938(n+2)`
-/

namespace A030983.P3035637461656848901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046649 (n + 2) - A103938 (n + 2)

end

end A030983.P3035637461656848901

namespace A030983

/-- `A046649(n+2)-A103938(n+2)` -/
def P3035637461656848901.Spec : Prop :=
  ∀ n, P3035637461656848901.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P6857831824914655274

`A006013(n+1)-2*A006013(n)`
-/

namespace A030983.P6857831824914655274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - 2 * A006013 n

end

end A030983.P6857831824914655274

namespace A030983

/-- `A006013(n+1)-2*A006013(n)` -/
def P6857831824914655274.Spec : Prop :=
  ∀ n, P6857831824914655274.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P1689208482992886241

`Δ[A047009(n+1)/2]-A047749(Δ[n²])`
-/

namespace A030983.P1689208482992886241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047009 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A047749 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ)

end

end A030983.P1689208482992886241

namespace A030983

/-- `Δ[A047009(n+1)/2]-A047749(Δ[n²])` -/
def P1689208482992886241.Spec : Prop :=
  ∀ n, P1689208482992886241.a n = (A030983 (n + 3) : ℚ)

end A030983

/-! ## A030983.P11538676893889448010

`Δ[A047009(n+1)/2]-A134565(Δ[n²])`
-/

namespace A030983.P11538676893889448010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047009 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A134565 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ)

end

end A030983.P11538676893889448010

namespace A030983

/-- `Δ[A047009(n+1)/2]-A134565(Δ[n²])` -/
def P11538676893889448010.Spec : Prop :=
  ∀ n, P11538676893889448010.a n = (A030983 (n + 3) : ℚ)

end A030983

/-! ## A030983.P16324568566061856806

`Δ[A047749(2*n+1)]-A047749(2*n+1)`
-/

namespace A030983.P16324568566061856806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047749 (2 * n + 1)

end

end A030983.P16324568566061856806

namespace A030983

/-- `Δ[A047749(2*n+1)]-A047749(2*n+1)` -/
def P16324568566061856806.Spec : Prop :=
  ∀ n, P16324568566061856806.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P7395416834167775163

`Δ[A047009(n+1)/2]-A116637(Δ[n²])/2`
-/

namespace A030983.P7395416834167775163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047009 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A116637 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2

end

end A030983.P7395416834167775163

namespace A030983

/-- `Δ[A047009(n+1)/2]-A116637(Δ[n²])/2` -/
def P7395416834167775163.Spec : Prop :=
  ∀ n, P7395416834167775163.a n = (A030983 (n + 3) : ℚ)

end A030983

/-! ## A030983.P18360828164388154155

`A006013(n+1)-A116637(A005408(n))`
-/

namespace A030983.P18360828164388154155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - A116637 (A005408 n).toNat

end

end A030983.P18360828164388154155

namespace A030983

/-- `A006013(n+1)-A116637(A005408(n))` -/
def P18360828164388154155.Spec : Prop :=
  ∀ n, P18360828164388154155.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P9436042566473501137

`A102594(n+1)+A006629(n)-A001764(n)`
-/

namespace A030983.P9436042566473501137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102594 (n + 1) + (A006629 n - A001764 n)

end

end A030983.P9436042566473501137

namespace A030983

/-- `A102594(n+1)+A006629(n)-A001764(n)` -/
def P9436042566473501137.Spec : Prop :=
  ∀ n, P9436042566473501137.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P16514042816187499027

`A102893(n+1)+A006629(n)-A006013(n)`
-/

namespace A030983.P16514042816187499027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102893 (n + 1) + (A006629 n - A006013 n)

end

end A030983.P16514042816187499027

namespace A030983

/-- `A102893(n+1)+A006629(n)-A006013(n)` -/
def P16514042816187499027.Spec : Prop :=
  ∀ n, P16514042816187499027.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P1975238940495746030

`Δ[A134565(2*n+1)]-A134565(2*n+1)`
-/

namespace A030983.P1975238940495746030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134565 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A134565 (2 * n + 1)

end

end A030983.P1975238940495746030

namespace A030983

/-- `Δ[A134565(2*n+1)]-A134565(2*n+1)` -/
def P1975238940495746030.Spec : Prop :=
  ∀ n, P1975238940495746030.a n = A030983 (n + 3)

end A030983

/-! ## A030983.P8114859693969184947

`Δ[C(3*n+1, n)/(n+1)]-C(3*n+1, n)/(n+1)`
-/

namespace A030983.P8114859693969184947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ)

end

end A030983.P8114859693969184947

namespace A030983

/-- `Δ[C(3*n+1, n)/(n+1)]-C(3*n+1, n)/(n+1)` -/
def P8114859693969184947.Spec : Prop :=
  ∀ n, P8114859693969184947.a n = (A030983 (n + 3) : ℚ)

end A030983

/-!
# A030984: 2-automorphic numbers: final digits of 2*n^2 agree with n.

The programs for A030984, there is no canonical definition to state claims against.
-/

/-! ## A030984.P2823027386754602578

`A062173(lcm(4, A356277(2*(n+1))))`
-/

namespace A030984.P2823027386754602578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (Int.lcm 4 (A356277 (2 * (n + 1))))

end

end A030984.P2823027386754602578

/-!
# A030985: 3-automorphic numbers ending in 2: final digits of 3*n^2 agree with n.

The programs for A030985, there is no canonical definition to state claims against.
-/

/-! ## A030985.P17143211613714420977

`filter[A383821(n+1), A373252(#)]`
-/

namespace A030985.P17143211613714420977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A030985.P17143211613714420977

/-!
# A030986: 3-automorphic numbers ending in 5: final digits of 3*n^2 agree with n.

The programs for A030986, there is no canonical definition to state claims against.
-/

/-! ## A030986.P10630372438749780991

`A000027(A284924(n+1))`
-/

namespace A030986.P10630372438749780991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A284924 (n + 1)).toNat

end

end A030986.P10630372438749780991

/-!
# A030987: 4-automorphic numbers: final digits of 4*n^2 agree with n.

The programs for A030987, there is no canonical definition to state claims against.
-/

/-! ## A030987.P16028082025300020281

`A030984(n+1)²%A017934(2*(n+1))`
-/

namespace A030987.P16028082025300020281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030984 (n + 1) ^ 2) (A017934 (2 * (n + 1)))

end

end A030987.P16028082025300020281

/-!
# A030988: 5-automorphic numbers: final digits of 5n^2 agree with n.

The programs for A030988, there is no canonical definition to state claims against.
-/

/-! ## A030988.P1143501698856914590

`ceil(A224473(n+2)/10)`
-/

namespace A030988.P1143501698856914590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224473 (n + 2) : ℚ) / 10⌉

end

end A030988.P1143501698856914590

/-! ## A030988.P530565281300736245

`round(A224473(2*n-n+2)/10)`
-/

namespace A030988.P530565281300736245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A224473 ((2 * n : ℤ) - (n : ℤ) + 2).toNat : ℚ) / 10)

end

end A030988.P530565281300736245

/-! ## A030988.P6900989632410782906

`or(round(A224473(n+2)/10), A000007(n))`
-/

namespace A030988.P6900989632410782906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A224473 (n + 2) : ℚ) / 10)) (A000007 n)

end

end A030988.P6900989632410782906

/-! ## A030988.P17829019185769614573

`A000007(n+1)+round(A224473(n+2)/10)`
-/

namespace A030988.P17829019185769614573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A224473 (n + 2) : ℚ) / 10)

end

end A030988.P17829019185769614573

/-! ## A030988.P517005098325019547

`lcm(round(A224473(n+2)/10), A056594(2*n))`
-/

namespace A030988.P517005098325019547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A224473 (n + 2) : ℚ) / 10)) (A056594 (2 * n))

end

end A030988.P517005098325019547

/-! ## A030988.P3413760396176029117

`or(round(A224473(n+2)/10), A010051(n+1))`
-/

namespace A030988.P3413760396176029117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A224473 (n + 2) : ℚ) / 10)) (A010051 (n + 1))

end

end A030988.P3413760396176029117

/-! ## A030988.P7162840023390867634

`or(round(A224473(n+2)/10), A080339(n+1))`
-/

namespace A030988.P7162840023390867634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A224473 (n + 2) : ℚ) / 10)) (A080339 (n + 1))

end

end A030988.P7162840023390867634

/-! ## A030988.P7061359374522132558

`floor(A057427(A084523(n))+A224473(n+2)/10)`
-/

namespace A030988.P7061359374522132558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (A084523 n).toNat : ℚ) + (A224473 (n + 2) : ℚ) / 10⌋

end

end A030988.P7061359374522132558

/-! ## A030988.P14723558017780867124

`floor(A057427(A165355(n))+A224473(n+2)/10)`
-/

namespace A030988.P14723558017780867124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (A165355 n).toNat : ℚ) + (A224473 (n + 2) : ℚ) / 10⌋

end

end A030988.P14723558017780867124

/-!
# A030995: 9-automorphic numbers ending in 5: final digits of 9*n^2 agree with n.

The programs for A030995, there is no canonical definition to state claims against.
-/

/-! ## A030995.P6286936307357469984

`∏{e}[A104350(2*n+3)/A000010(2*n+3), C(#+4, 4)]`
-/

namespace A030995.P6286936307357469984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104350 (2 * n + 3) : ℚ) / (A000010 (2 * n + 3) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.choose (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 4) 4

end

end A030995.P6286936307357469984

/-!
# A030996: Concatenation of n consecutive primes starting with the prime a(n) is a prime.

The programs for A030996, there is no canonical definition to state claims against.
-/

/-! ## A030996.P5375272947348645183

`p?[∑{p}[A001464(n), #]]`
-/

namespace A030996.P5375272947348645183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A030996.P5375272947348645183

/-! ## A030996.P15300771825078499839

`p?[∑{p}[A328141(n+3), #]]`
-/

namespace A030996.P15300771825078499839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328141 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A030996.P15300771825078499839

/-!
# A030998: Write n in base 7 and juxtapose.

The programs for A030998, there is no canonical definition to state claims against.
-/

/-! ## A030998.P18046482906955349597

`5-A057428(n)-A031016(A028310(n))`
-/

namespace A030998.P18046482906955349597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A057428 n - A031016 (A028310 n).toNat

end

end A030998.P18046482906955349597

/-! ## A030998.P17605798207700718723

`6-A000007(n)-A031016(A028310(n))`
-/

namespace A030998.P17605798207700718723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A000007 n - A031016 (A028310 n).toNat

end

end A030998.P17605798207700718723

/-! ## A030998.P5670373860481193256

`A008458(n+1)-A008458(n)-A031016(A028310(n))`
-/

namespace A030998.P5670373860481193256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) - A008458 n - A031016 (A028310 n).toNat

end

end A030998.P5670373860481193256

/-! ## A030998.P9652195681851707915

`A069932(A008592(n)+1)-A031016(A028310(n))+4`
-/

namespace A030998.P9652195681851707915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (A008592 n + 1).toNat - A031016 (A028310 n).toNat + 4

end

end A030998.P9652195681851707915

/-! ## A030998.P5768198958329766695

`6-A141747(A136063(n+1)+9)-A031016(A028310(n))`
-/

namespace A030998.P5768198958329766695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A141747 (A136063 (n + 1) + 9).toNat - A031016 (A028310 n).toNat

end

end A030998.P5768198958329766695

/-! ## A030998.P3658024067206046947

`A020639(A229488(n+1))-A031016(A028310(n))+4`
-/

namespace A030998.P3658024067206046947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A229488 (n + 1)).toNat - A031016 (A028310 n).toNat + 4

end

end A030998.P3658024067206046947

/-!
# A030999: Position of n-th 0 in A030998.

The programs for A030999, there is no canonical definition to state claims against.
-/

/-! ## A030999.P758731078986773433

`eq[0, A030998(n)]`
-/

namespace A030999.P758731078986773433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030999.P758731078986773433

/-! ## A030999.P16034145506372823920

`lt[A030998(n), acot(A000120(n))]`
-/

namespace A030999.P16034145506372823920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000120 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P16034145506372823920

/-! ## A030999.P9284925018124348874

`lt[A030998(n), acot(A000124(n))]`
-/

namespace A030999.P9284925018124348874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000124 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P9284925018124348874

/-! ## A030999.P8980564133395010108

`lt[A030998(n), acot(A000217(n))]`
-/

namespace A030999.P8980564133395010108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000217 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P8980564133395010108

/-! ## A030999.P17301725297221519850

`lt[A030998(n), acot(A001844(n))]`
-/

namespace A030999.P17301725297221519850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A001844 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P17301725297221519850

/-! ## A030999.P18230635049383893084

`lt[A030998(n), acot(A005918(n))]`
-/

namespace A030999.P18230635049383893084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A005918 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P18230635049383893084

/-! ## A030999.P5901537050303539064

`lt[A030998(n), acot(A007088(n))]`
-/

namespace A030999.P5901537050303539064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007088 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P5901537050303539064

/-! ## A030999.P11101655193025822441

`lt[A030998(n), acot(A043529(n))]`
-/

namespace A030999.P11101655193025822441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A043529 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P11101655193025822441

/-! ## A030999.P6643412218640040365

`lt[A030998(n), acot(A053644(n))]`
-/

namespace A030999.P6643412218640040365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A053644 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P6643412218640040365

/-! ## A030999.P12969296936162470781

`lt[A030998(n), acot(A083653(n))]`
-/

namespace A030999.P12969296936162470781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A083653 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030999.P12969296936162470781

/-! ## A030999.P6376243110495908749

`lt[A030998(n), A007318(C(2, n+2))]`
-/

namespace A030999.P6376243110495908749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030999.P6376243110495908749

/-! ## A030999.P4164324234341617305

`eq[0, 6-A000007(n)-A031016(A028310(n))]`
-/

namespace A030999.P4164324234341617305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A000007 n - A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030999.P4164324234341617305

/-! ## A030999.P492921706026637217

`lt[A030998(n), A030998(A031000(n+1))]`
-/

namespace A030999.P492921706026637217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (A031000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030999.P492921706026637217

/-! ## A030999.P13248625829344419149

`lt[A030998(n), A014963(A017113(n))]`
-/

namespace A030999.P13248625829344419149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017113 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030999.P13248625829344419149

