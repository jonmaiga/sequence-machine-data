import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A150000: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150000, there is no canonical definition to state claims against.
-/

/-! ## A150000.P1897382782516338869

`A001353(n)+A000120(A251178(n))`
-/

namespace A150000.P1897382782516338869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + A000120 (A251178 n).toNat

end

end A150000.P1897382782516338869

/-! ## A150000.P9854221197134550095

`A001353(n)+A000005(A261006(n))`
-/

namespace A150000.P9854221197134550095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + A000005 (A261006 n).toNat

end

end A150000.P9854221197134550095

/-! ## A150000.P11843151661939824642

`A373833(A084262(n))+A001353(n)`
-/

namespace A150000.P11843151661939824642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373833 (A084262 n).toNat + A001353 n

end

end A150000.P11843151661939824642

/-!
# A150001: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150001, there is no canonical definition to state claims against.
-/

/-! ## A150001.P2858337620644960710

`A328581(A000699(n))+A001791(n)`
-/

namespace A150001.P2858337620644960710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328581 (A000699 n).toNat + A001791 n

end

end A150001.P2858337620644960710

/-! ## A150001.P1080332592269313315

`A326628(A072879(n+1))+A150000(n)`
-/

namespace A150001.P1080332592269313315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326628 (A072879 (n + 1)).toNat + A150000 n

end

end A150001.P1080332592269313315

/-!
# A150002: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150002, there is no canonical definition to state claims against.
-/

/-! ## A150002.P10812010327415770338

`A003056(A277539(n))+(2^n+4)*(2^n-1)/6`
-/

namespace A150002.P10812010327415770338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A277539 n).toNat : ℚ) + (2 ^ n + 4 : ℚ) * (((2 ^ n : ℤ) - 1 : ℚ) / 6)

end

end A150002.P10812010327415770338

/-! ## A150002.P12722427057236882821

`A103221(A074526(n)+A000587(n))`
-/

namespace A150002.P12722427057236882821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A074526 n + A000587 n).toNat

end

end A150002.P12722427057236882821

/-! ## A150002.P15047090021038988151

`A008612(A001551(n)-A057078(n))`
-/

namespace A150002.P15047090021038988151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A001551 n - A057078 n).toNat

end

end A150002.P15047090021038988151

/-!
# A150004: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A150004, there is no canonical definition to state claims against.
-/

/-! ## A150004.P10295256922061119721

`A150005(n)-A092708(A241458(n+1))`
-/

namespace A150004.P10295256922061119721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150005 n - A092708 (A241458 (n + 1)).toNat

end

end A150004.P10295256922061119721

/-! ## A150004.P1580029382200033040

`A008621(A051944(n))`
-/

namespace A150004.P1580029382200033040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A051944 n).toNat

end

end A150004.P1580029382200033040

/-! ## A150004.P3814270998855096938

`A150005(A073788(n))`
-/

namespace A150004.P3814270998855096938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150005 (A073788 n).toNat

end

end A150004.P3814270998855096938

/-!
# A150005: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150005, there is no canonical definition to state claims against.
-/

/-! ## A150005.P12158312954081198830

`A150004(n)+A092708(A241458(n+1))`
-/

namespace A150005.P12158312954081198830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150004 n + A092708 (A241458 (n + 1)).toNat

end

end A150005.P12158312954081198830

/-!
# A150006: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A150006, there is no canonical definition to state claims against.
-/

/-! ## A150006.P3312896232521481023

`A150007(n)%p?[2^n-1]`
-/

namespace A150006.P3312896232521481023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150007 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150006.P3312896232521481023

/-! ## A150006.P11201688317576704444

`A150007(A073788(n))`
-/

namespace A150006.P11201688317576704444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150007 (A073788 n).toNat

end

end A150006.P11201688317576704444

/-! ## A150006.P9014364391607087832

`A154470(A150007(n))`
-/

namespace A150006.P9014364391607087832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A150007 n).toNat

end

end A150006.P9014364391607087832

/-!
# A150008: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, -1, -1), (1, 0, 1)}.

The programs for A150008, there is no canonical definition to state claims against.
-/

/-! ## A150008.P5409044132899761002

`round(sqrt(A317718(3*n+1)))`
-/

namespace A150008.P5409044132899761002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A317718 (3 * n + 1) : ℝ))

end

end A150008.P5409044132899761002

/-! ## A150008.P4199312741193580991

`A150009(n)%p?[2^n-1]`
-/

namespace A150008.P4199312741193580991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150009 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150008.P4199312741193580991

/-! ## A150008.P14770001945369224229

`A008621(floor(4^n/3)+(2^n+3)*2^(n-1))`
-/

namespace A150008.P14770001945369224229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((⌊(4 ^ n : ℚ) / 3⌋ : ℚ) + (2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A150008.P14770001945369224229

/-!
# A150010: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 0, 1)}.

The programs for A150010, there is no canonical definition to state claims against.
-/

/-! ## A150010.P4284274429758778047

`A150011(n)%p?[2^n-1]`
-/

namespace A150010.P4284274429758778047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150011 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150010.P4284274429758778047

/-! ## A150010.P10502727942560677190

`A150011(A073788(n))`
-/

namespace A150010.P10502727942560677190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150011 (A073788 n).toNat

end

end A150010.P10502727942560677190

/-! ## A150010.P16050271448948439382

`A150011(A171596(n))`
-/

namespace A150010.P16050271448948439382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150011 (A171596 n).toNat

end

end A150010.P16050271448948439382

/-!
# A150012: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150012, there is no canonical definition to state claims against.
-/

/-! ## A150012.P7785767591055586172

`∑[A140494(a(n-1)+n)]` with `a(0)=1, a(1)=1`
-/

namespace A150012.P7785767591055586172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A140494 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150012.P7785767591055586172

/-! ## A150012.P12749872983035721506

`record[(n+2)*n!-A213527(n)]`
-/

namespace A150012.P12749872983035721506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.factorial n : ℤ) - A213527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150012.P12749872983035721506

/-!
# A150014: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150014, there is no canonical definition to state claims against.
-/

/-! ## A150014.P2206560901669557665

`∑[A004136(A002843(n))]`
-/

namespace A150014.P2206560901669557665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004136 (A002843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150014.P2206560901669557665

/-! ## A150014.P4492087593694127786

`∑[A004136(A101268(n))]`
-/

namespace A150014.P4492087593694127786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004136 (A101268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150014.P4492087593694127786

/-!
# A150015: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150015, there is no canonical definition to state claims against.
-/

/-! ## A150015.P5633952615921198661

`A390395(A150163(n))`
-/

namespace A150015.P5633952615921198661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A150163 n).toNat

end

end A150015.P5633952615921198661

/-! ## A150015.P18339409044176452606

`A165190(A268370(n+4))`
-/

namespace A150015.P18339409044176452606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A268370 (n + 4)).toNat

end

end A150015.P18339409044176452606

/-!
# A150016: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 0), (1, 0, 0)}.

The programs for A150016, there is no canonical definition to state claims against.
-/

/-! ## A150016.P4846416513971990464

`A150017(n)%p?[2^n-1]`
-/

namespace A150016.P4846416513971990464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150017 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150016.P4846416513971990464

/-! ## A150016.P9927457439439018455

`A150017(A073788(n))`
-/

namespace A150016.P9927457439439018455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150017 (A073788 n).toNat

end

end A150016.P9927457439439018455

/-! ## A150016.P9929161933474411368

`A130991(A150017(n))`
-/

namespace A150016.P9929161933474411368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130991 (A150017 n).toNat

end

end A150016.P9929161933474411368

/-!
# A150018: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A150018, there is no canonical definition to state claims against.
-/

/-! ## A150018.P8643106353254921810

`A150019(n)%p?[2^n-1]`
-/

namespace A150018.P8643106353254921810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150019 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150018.P8643106353254921810

/-! ## A150018.P6618753713428027633

`A150019(A073788(n))`
-/

namespace A150018.P6618753713428027633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150019 (A073788 n).toNat

end

end A150018.P6618753713428027633

/-! ## A150018.P3485128694442368434

`A154125(A150019(n))`
-/

namespace A150018.P3485128694442368434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150019 n).toNat

end

end A150018.P3485128694442368434

/-!
# A150020: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150020, there is no canonical definition to state claims against.
-/

/-! ## A150020.P2405089194774010925

`A150080(n)-A226520(A194559(n))`
-/

namespace A150020.P2405089194774010925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150080 n - A226520 (A194559 n).toNat

end

end A150020.P2405089194774010925

/-! ## A150020.P16503519549495230020

`A300763(xor(A001576(n), A093043(n)))`
-/

namespace A150020.P16503519549495230020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (Int.xor (A001576 n) (A093043 n)).toNat

end

end A150020.P16503519549495230020

/-!
# A150021: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150021, there is no canonical definition to state claims against.
-/

/-! ## A150021.P109790553298235586

`A320536(A081914(n+1))`
-/

namespace A150021.P109790553298235586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A081914 (n + 1)).toNat

end

end A150021.P109790553298235586

/-! ## A150021.P8599029408007956146

`A008676(10*A114121(n))`
-/

namespace A150021.P8599029408007956146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (10 * A114121 n).toNat

end

end A150021.P8599029408007956146

/-!
# A150022: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 0, 0)}.

The programs for A150022, there is no canonical definition to state claims against.
-/

/-! ## A150022.P1225361867839562235

`A150023(A073788(n))`
-/

namespace A150022.P1225361867839562235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150023 (A073788 n).toNat

end

end A150022.P1225361867839562235

/-! ## A150022.P14858658666760016434

`A154125(A150023(n))`
-/

namespace A150022.P14858658666760016434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150023 n).toNat

end

end A150022.P14858658666760016434

/-! ## A150022.P11857960237775395169

`A150023(A171596(n))`
-/

namespace A150022.P11857960237775395169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150023 (A171596 n).toNat

end

end A150022.P11857960237775395169

/-!
# A150024: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A150024, there is no canonical definition to state claims against.
-/

/-! ## A150024.P1561804215447308924

`A150025(A073788(n))`
-/

namespace A150024.P1561804215447308924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150025 (A073788 n).toNat

end

end A150024.P1561804215447308924

/-! ## A150024.P10933617149494038860

`A154439(A150025(n))`
-/

namespace A150024.P10933617149494038860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A150025 n).toNat

end

end A150024.P10933617149494038860

/-! ## A150024.P12338366953392761560

`A150025(A171596(n))`
-/

namespace A150024.P12338366953392761560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150025 (A171596 n).toNat

end

end A150024.P12338366953392761560

/-!
# A150026: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150026, there is no canonical definition to state claims against.
-/

/-! ## A150026.P13587686575723854076

`Δ[A000108(A001222(5^(n+1)))]-n²`
-/

namespace A150026.P13587686575723854076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A001222 (5 ^ (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 2 : ℤ)

end

end A150026.P13587686575723854076

/-! ## A150026.P2037593552781908149

`A081161(n)+A003603(A067610(n+1))`
-/

namespace A150026.P2037593552781908149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081161 n + A003603 (A067610 (n + 1)).toNat

end

end A150026.P2037593552781908149

/-!
# A150027: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150027, there is no canonical definition to state claims against.
-/

/-! ## A150027.P4469997043186645754

`A087844(∑[8*a(n-1)])` with `a(0)=3, a(1)=1`
-/

namespace A150027.P4469997043186645754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A150027.P4469997043186645754

/-! ## A150027.P3241721001747627470

`A260734(A150558(n))`
-/

namespace A150027.P3241721001747627470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A150558 n).toNat

end

end A150027.P3241721001747627470

/-!
# A150028: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150028, there is no canonical definition to state claims against.
-/

/-! ## A150028.P8948564918811601380

`A349151(A018093(n))`
-/

namespace A150028.P8948564918811601380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (A018093 n).toNat

end

end A150028.P8948564918811601380

/-! ## A150028.P2675595412737706708

`A356940(A263002(n))`
-/

namespace A150028.P2675595412737706708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356940 (A263002 n).toNat

end

end A150028.P2675595412737706708

/-!
# A150029: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150029, there is no canonical definition to state claims against.
-/

/-! ## A150029.P8166240120375669237

`A237291(A365380(2*n+3))+A091218(n+1)`
-/

namespace A150029.P8166240120375669237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237291 (A365380 (2 * n + 3)).toNat + A091218 (n + 1)

end

end A150029.P8166240120375669237

/-! ## A150029.P9424639209216265753

`∑[A289624(∏[n²+1])]`
-/

namespace A150029.P9424639209216265753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289624 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150029.P9424639209216265753

/-!
# A150030: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A150030, there is no canonical definition to state claims against.
-/

/-! ## A150030.P14122641196317159084

`A004151(A150031(n))`
-/

namespace A150030.P14122641196317159084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150031 n).toNat

end

end A150030.P14122641196317159084

/-! ## A150030.P6943374593583339906

`A150031(A073789(n))`
-/

namespace A150030.P6943374593583339906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150031 (A073789 n).toNat

end

end A150030.P6943374593583339906

/-! ## A150030.P13939977580172690599

`A150031(A004869(n+1))`
-/

namespace A150030.P13939977580172690599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150031 (A004869 (n + 1)).toNat

end

end A150030.P13939977580172690599

/-! ## A150030.P12972713298679594553

`A150031(A004880(n+1))`
-/

namespace A150030.P12972713298679594553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150031 (A004880 (n + 1)).toNat

end

end A150030.P12972713298679594553

/-!
# A150032: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150032, there is no canonical definition to state claims against.
-/

/-! ## A150032.P2245719784546062370

`A102443(A150183(n))`
-/

namespace A150032.P2245719784546062370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A150183 n).toNat

end

end A150032.P2245719784546062370

/-! ## A150032.P5390625885370006076

`A052347(A317186(n))`
-/

namespace A150032.P5390625885370006076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052347 (A317186 n).toNat

end

end A150032.P5390625885370006076

/-!
# A150033: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150033, there is no canonical definition to state claims against.
-/

/-! ## A150033.P9697971383907711155

`A195177(A263768(2*(n+3))-2)`
-/

namespace A150033.P9697971383907711155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A263768 (2 * (n + 3)) - 2).toNat

end

end A150033.P9697971383907711155

/-! ## A150033.P2264891311299511409

`A211964(A261681(n))`
-/

namespace A150033.P2264891311299511409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A261681 n).toNat

end

end A150033.P2264891311299511409

/-!
# A150034: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150034, there is no canonical definition to state claims against.
-/

/-! ## A150034.P15090260455679201495

`A084500(A026527(n+2))+A070088(n+2)`
-/

namespace A150034.P15090260455679201495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084500 (A026527 (n + 2)).toNat + A070088 (n + 2)

end

end A150034.P15090260455679201495

/-! ## A150034.P11264314888508260932

`A178210(A150028(n))`
-/

namespace A150034.P11264314888508260932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A150028 n).toNat

end

end A150034.P11264314888508260932

/-!
# A150035: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150035, there is no canonical definition to state claims against.
-/

/-! ## A150035.P354228593884701330

`A091226(A344615(3*n)+A064538(n))`
-/

namespace A150035.P354228593884701330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A344615 (3 * n) + A064538 n).toNat

end

end A150035.P354228593884701330

/-! ## A150035.P13981905261655896507

`xor(A218859(A030019(n)), A244407(n+1))`
-/

namespace A150035.P13981905261655896507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A218859 (A030019 n).toNat) (A244407 (n + 1))

end

end A150035.P13981905261655896507

/-! ## A150035.P1871745085845134069

`A261226(A240085(2*(n+2))+A089406(n))`
-/

namespace A150035.P1871745085845134069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A240085 (2 * (n + 2)) + A089406 n).toNat

end

end A150035.P1871745085845134069

/-!
# A150036: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150036, there is no canonical definition to state claims against.
-/

/-! ## A150036.P9690002100612134134

`A080098(∑[∑[(n+2)^n]])`
-/

namespace A150036.P9690002100612134134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A150036.P9690002100612134134

/-! ## A150036.P12621467946383260005

`A023190(A150960(n))`
-/

namespace A150036.P12621467946383260005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A150960 n).toNat

end

end A150036.P12621467946383260005

/-!
# A150037: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150037, there is no canonical definition to state claims against.
-/

/-! ## A150037.P14785857900023073114

`A150038(A073788(n))`
-/

namespace A150037.P14785857900023073114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150038 (A073788 n).toNat

end

end A150037.P14785857900023073114

/-! ## A150037.P15120341994502037756

`A135874(A150038(n))`
-/

namespace A150037.P15120341994502037756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135874 (A150038 n).toNat

end

end A150037.P15120341994502037756

/-! ## A150037.P4659150228438662967

`A150038(A171596(n))`
-/

namespace A150037.P4659150228438662967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150038 (A171596 n).toNat

end

end A150037.P4659150228438662967

/-!
# A150038: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150038, there is no canonical definition to state claims against.
-/

/-! ## A150038.P14523712018242135274

`A103205(A150037(n))`
-/

namespace A150038.P14523712018242135274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A150037 n).toNat

end

end A150038.P14523712018242135274

/-!
# A150039: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (0, 1, 1), (1, -1, 0)}.

The programs for A150039, there is no canonical definition to state claims against.
-/

/-! ## A150039.P13480222774520130824

`A150040(n)%p?[4*(3^n-2^n)+3]`
-/

namespace A150039.P13480222774520130824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150040 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150039.P13480222774520130824

/-! ## A150039.P1108152322406315519

`A150040(A073788(n))`
-/

namespace A150039.P1108152322406315519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150040 (A073788 n).toNat

end

end A150039.P1108152322406315519

/-! ## A150039.P1633778331792846659

`A154125(A150040(n))`
-/

namespace A150039.P1633778331792846659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150040 n).toNat

end

end A150039.P1633778331792846659

/-!
# A150041: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A150041, there is no canonical definition to state claims against.
-/

/-! ## A150041.P12115256019588612018

`A335380(A183608(n))+A192802(n)`
-/

namespace A150041.P12115256019588612018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A183608 n).toNat + A192802 n

end

end A150041.P12115256019588612018

/-! ## A150041.P16316413719025720404

`∑[A008615(13*round(ϕ*a(n-1)))-1]` with `a(0)=1, a(1)=1`
-/

namespace A150041.P16316413719025720404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A008615 (13 * SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150041.P16316413719025720404

/-! ## A150041.P13482441104928331185

`A066508(A026012(n))+n`
-/

namespace A150041.P13482441104928331185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A026012 n).toNat + (n : ℤ)

end

end A150041.P13482441104928331185

/-!
# A150042: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, 0, 0)}.

The programs for A150042, there is no canonical definition to state claims against.
-/

/-! ## A150042.P13399237129549849922

`A026405(A149915(n+1))`
-/

namespace A150042.P13399237129549849922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A149915 (n + 1)).toNat

end

end A150042.P13399237129549849922

/-! ## A150042.P11650549607938128181

`A343609(A148364(n+3))+1`
-/

namespace A150042.P11650549607938128181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A148364 (n + 3)).toNat + 1

end

end A150042.P11650549607938128181

/-! ## A150042.P14947655240696210884

`A026405(ratio[A149915(n)]*A149915(n))`
-/

namespace A150042.P14947655240696210884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A149915 n : ℚ))).toNat

end

end A150042.P14947655240696210884

/-!
# A150043: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150043, there is no canonical definition to state claims against.
-/

/-! ## A150043.P13507682118081996522

`A300974(n)+A003056(A053142(n))`
-/

namespace A150043.P13507682118081996522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300974 n + A003056 (A053142 n).toNat

end

end A150043.P13507682118081996522

/-! ## A150043.P17423591125514726745

`A000984(n)-A090620(A099015(n))`
-/

namespace A150043.P17423591125514726745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A090620 (A099015 n).toNat

end

end A150043.P17423591125514726745

/-! ## A150043.P10231325243349270727

`A052980(n)+∑[A105515(A055269(n))]`
-/

namespace A150043.P10231325243349270727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (A055269 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150043.P10231325243349270727

/-!
# A150044: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A150044, there is no canonical definition to state claims against.
-/

/-! ## A150044.P2486727372869623107

`A099802(A289719(n))`
-/

namespace A150044.P2486727372869623107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A289719 n).toNat

end

end A150044.P2486727372869623107

/-! ## A150044.P13189413238607989661

`A033270(A005430(n)+1)+1`
-/

namespace A150044.P13189413238607989661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A005430 n + 1).toNat + 1

end

end A150044.P13189413238607989661

/-! ## A150044.P14228429655749731215

`A033270(2*A289719(n))+1`
-/

namespace A150044.P14228429655749731215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (2 * A289719 n).toNat + 1

end

end A150044.P14228429655749731215

/-!
# A150045: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A150045, there is no canonical definition to state claims against.
-/

/-! ## A150045.P15697541662166489658

`∑[A248227(A150046(n))]`
-/

namespace A150045.P15697541662166489658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A150046 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150045.P15697541662166489658

/-! ## A150045.P14577237819142965339

`A034973(A296663(2*n)+n+1)`
-/

namespace A150045.P14577237819142965339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A296663 (2 * n) + (n + 1 : ℤ)).toNat

end

end A150045.P14577237819142965339

/-!
# A150046: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A150046, there is no canonical definition to state claims against.
-/

/-! ## A150046.P8929224974835868684

`A008616(A027171(n)+A008458(n))`
-/

namespace A150046.P8929224974835868684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A027171 n + A008458 n).toNat

end

end A150046.P8929224974835868684

/-! ## A150046.P7089473370069039385

`A044949(A108404(n))+A001353(n)`
-/

namespace A150046.P7089473370069039385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A108404 n).toNat + A001353 n

end

end A150046.P7089473370069039385

/-! ## A150046.P16545453465545449573

`A001353(n)+A000120(A351200(n))`
-/

namespace A150046.P16545453465545449573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + A000120 (A351200 n).toNat

end

end A150046.P16545453465545449573

/-!
# A150047: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A150047, there is no canonical definition to state claims against.
-/

/-! ## A150047.P1856721855225826112

`A055874(A182857(n))+A001791(n)`
-/

namespace A150047.P1856721855225826112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A182857 n).toNat + A001791 n

end

end A150047.P1856721855225826112

/-! ## A150047.P5369027304161715243

`A308623(A000670(n))+A001791(n)`
-/

namespace A150047.P5369027304161715243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (A000670 n).toNat + A001791 n

end

end A150047.P5369027304161715243

/-!
# A150048: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150048, there is no canonical definition to state claims against.
-/

/-! ## A150048.P2152846284682237062

`A023193(A255814(n))`
-/

namespace A150048.P2152846284682237062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A255814 n).toNat

end

end A150048.P2152846284682237062

/-! ## A150048.P7201475090191635423

`A046155(A002628(n+2))`
-/

namespace A150048.P7201475090191635423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A002628 (n + 2)).toNat

end

end A150048.P7201475090191635423

/-!
# A150049: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, -1)}.

The programs for A150049, there is no canonical definition to state claims against.
-/

/-! ## A150049.P1333226456489633975

`∑[A276216(A002212(n))]`
-/

namespace A150049.P1333226456489633975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276216 (A002212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150049.P1333226456489633975

/-! ## A150049.P13140204670622899710

`A226190(A149978(n))+A000245(n)`
-/

namespace A150049.P13140204670622899710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149978 n).toNat + A000245 n

end

end A150049.P13140204670622899710

/-! ## A150049.P14000738073736891921

`A257317(A280041(n+1))+A001353(n)`
-/

namespace A150049.P14000738073736891921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257317 (A280041 (n + 1)).toNat + A001353 n

end

end A150049.P14000738073736891921

/-!
# A150050: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150050, there is no canonical definition to state claims against.
-/

/-! ## A150050.P11196362295120836043

`A127763(A117376(n))`
-/

namespace A150050.P11196362295120836043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A117376 n).toNat

end

end A150050.P11196362295120836043

/-! ## A150050.P5528547156536371050

`A127763(Δ[Δ[A271844(n+1)]])`
-/

namespace A150050.P5528547156536371050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (f1 (n + 1) - f1 n).toNat

end

end A150050.P5528547156536371050

/-!
# A150051: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, -1)}.

The programs for A150051, there is no canonical definition to state claims against.
-/

/-! ## A150051.P1820046879969837069

`A327440(4*A149955(n))`
-/

namespace A150051.P1820046879969837069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (4 * A149955 n).toNat

end

end A150051.P1820046879969837069

/-! ## A150051.P5366058121267743560

`A002266(6*A149955(n))`
-/

namespace A150051.P5366058121267743560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A149955 n).toNat

end

end A150051.P5366058121267743560

/-! ## A150051.P14341549117126283052

`A127757(A151079(n)+A150568(n))`
-/

namespace A150051.P14341549117126283052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A151079 n + A150568 n).toNat

end

end A150051.P14341549117126283052

/-!
# A150052: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150052, there is no canonical definition to state claims against.
-/

/-! ## A150052.P16145203244794875268

`A008679(xor(A000035(n), A318264(n+3)))`
-/

namespace A150052.P16145203244794875268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.xor (A000035 n) (A318264 (n + 3))).toNat

end

end A150052.P16145203244794875268

/-! ## A150052.P6087968598546685115

`A008679(xor(A144172(n+1), A318264(n+3)))`
-/

namespace A150052.P6087968598546685115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.xor (A144172 (n + 1)) (A318264 (n + 3))).toNat

end

end A150052.P6087968598546685115

/-!
# A150053: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150053, there is no canonical definition to state claims against.
-/

/-! ## A150053.P4744502620591493577

`A008624(A157726(3*n)+A000537(n))`
-/

namespace A150053.P4744502620591493577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A157726 (3 * n) + A000537 n).toNat

end

end A150053.P4744502620591493577

/-! ## A150053.P15706939605809793462

`or(A000122(n), A035250(A026672(n+2)))`
-/

namespace A150053.P15706939605809793462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A035250 (A026672 (n + 2)).toNat)

end

end A150053.P15706939605809793462

/-!
# A150054: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A150054, there is no canonical definition to state claims against.
-/

/-! ## A150054.P4888909112324807387

`A222758(n)+A008615(A074605(n))`
-/

namespace A150054.P4888909112324807387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222758 n + A008615 (A074605 n).toNat

end

end A150054.P4888909112324807387

/-! ## A150054.P2375387780343914325

`xor(floor(n-atan(n)), A319755(2*n))`
-/

namespace A150054.P2375387780343914325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ (A319755 (2 * n))

end

end A150054.P2375387780343914325

/-!
# A150055: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A150055, there is no canonical definition to state claims against.
-/

/-! ## A150055.P5292644650546763945

`A214701(A150059(n))`
-/

namespace A150055.P5292644650546763945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150059 n).toNat

end

end A150055.P5292644650546763945

/-! ## A150055.P6703167330125797958

`A172103(A196709(n+2))`
-/

namespace A150055.P6703167330125797958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (A196709 (n + 2)).toNat

end

end A150055.P6703167330125797958

/-! ## A150055.P8036586235932439987

`A090736(A339065(n)+A301684(n))`
-/

namespace A150055.P8036586235932439987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090736 (A339065 n + A301684 n).toNat

end

end A150055.P8036586235932439987

/-!
# A150056: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A150056, there is no canonical definition to state claims against.
-/

/-! ## A150056.P4182857752415639143

`A061017(A052984(n)-n)`
-/

namespace A150056.P4182857752415639143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A052984 n - (n : ℤ)).toNat

end

end A150056.P4182857752415639143

/-! ## A150056.P11818490113205172430

`A322567(∏[∏[A000002(n+1)]])`
-/

namespace A150056.P11818490113205172430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322567 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150056.P11818490113205172430

/-! ## A150056.P16490237852417743643

`A033270(A060801(n)+A000110(n)+1)`
-/

namespace A150056.P16490237852417743643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A060801 n + A000110 n + 1).toNat

end

end A150056.P16490237852417743643

/-!
# A150057: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150057, there is no canonical definition to state claims against.
-/

/-! ## A150057.P5393614462099967260

`A150058(n^3^∑{p}[n+1, (#%3)%2])`
-/

namespace A150057.P5393614462099967260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150058 (n ^ 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), p % 3 % 2))

end

end A150057.P5393614462099967260

/-! ## A150057.P12149246727449756355

`A150058(A001096(n))`
-/

namespace A150057.P12149246727449756355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150058 (A001096 n).toNat

end

end A150057.P12149246727449756355

/-!
# A150059: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150059, there is no canonical definition to state claims against.
-/

/-! ## A150059.P10834242710495856581

`A378379(A286062(n))`
-/

namespace A150059.P10834242710495856581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378379 (A286062 n).toNat

end

end A150059.P10834242710495856581

/-! ## A150059.P807932161706918543

`A226762(A197085(n+1))`
-/

namespace A150059.P807932161706918543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A197085 (n + 1)).toNat

end

end A150059.P807932161706918543

/-!
# A150060: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150060, there is no canonical definition to state claims against.
-/

/-! ## A150060.P16862457369834956683

`A004151(A150061(n))`
-/

namespace A150060.P16862457369834956683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150061 n).toNat

end

end A150060.P16862457369834956683

/-! ## A150060.P12500103868581345663

`A150061(A073789(n))`
-/

namespace A150060.P12500103868581345663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150061 (A073789 n).toNat

end

end A150060.P12500103868581345663

/-! ## A150060.P6467408583922773737

`A150061(A171644(n))`
-/

namespace A150060.P6467408583922773737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150061 (A171644 n).toNat

end

end A150060.P6467408583922773737

/-! ## A150060.P11656802921836232908

`A150061(A004869(n+1))`
-/

namespace A150060.P11656802921836232908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150061 (A004869 (n + 1)).toNat

end

end A150060.P11656802921836232908

/-!
# A150062: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150062, there is no canonical definition to state claims against.
-/

/-! ## A150062.P2721089927798899542

`A264810(A151089(n))`
-/

namespace A150062.P2721089927798899542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A151089 n).toNat

end

end A150062.P2721089927798899542

/-! ## A150062.P11149014959931783652

`or(A150060(n), A185715(A196559(n)))`
-/

namespace A150062.P11149014959931783652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150060 n) (A185715 (A196559 n).toNat)

end

end A150062.P11149014959931783652

/-!
# A150063: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A150063, there is no canonical definition to state claims against.
-/

/-! ## A150063.P1999559450215717871

`A150064(A001096(n))`
-/

namespace A150063.P1999559450215717871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150064 (A001096 n).toNat

end

end A150063.P1999559450215717871

/-! ## A150063.P18183170924966574603

`A054404(A047028(n))+1`
-/

namespace A150063.P18183170924966574603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A047028 n).toNat + 1

end

end A150063.P18183170924966574603

/-!
# A150065: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150065, there is no canonical definition to state claims against.
-/

/-! ## A150065.P16323992785105875822

`A004277(A150075(n))-A150078(n)`
-/

namespace A150065.P16323992785105875822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150075 n).toNat - A150078 n

end

end A150065.P16323992785105875822

/-! ## A150065.P17933023846025058909

`A351279(n)+A319532(A026966(n))`
-/

namespace A150065.P17933023846025058909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351279 n + A319532 (A026966 n).toNat

end

end A150065.P17933023846025058909

/-! ## A150065.P9179365870224336626

`A324699(A001006(n))+A067201(n+1)`
-/

namespace A150065.P9179365870224336626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (A001006 n).toNat + A067201 (n + 1)

end

end A150065.P9179365870224336626

/-!
# A150066: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150066, there is no canonical definition to state claims against.
-/

/-! ## A150066.P16569542695986447797

`A005843(A150067(n))-A150069(n)`
-/

namespace A150066.P16569542695986447797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150067 n).toNat - A150069 n

end

end A150066.P16569542695986447797

/-! ## A150066.P5863854482188102590

`∑[A248227(A150075(n))]`
-/

namespace A150066.P5863854482188102590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A150075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150066.P5863854482188102590

/-!
# A150067: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150067, there is no canonical definition to state claims against.
-/

/-! ## A150067.P17084371969851513226

`A004525(A150069(n)+A150066(n))`
-/

namespace A150067.P17084371969851513226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150069 n + A150066 n).toNat

end

end A150067.P17084371969851513226

/-! ## A150067.P2823220906910484889

`A004526(A150069(n)+A150066(n))`
-/

namespace A150067.P2823220906910484889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150069 n + A150066 n).toNat

end

end A150067.P2823220906910484889

/-! ## A150067.P2108718022777874438

`A065033(A150069(n)+A150066(n))`
-/

namespace A150067.P2108718022777874438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150069 n + A150066 n).toNat

end

end A150067.P2108718022777874438

/-! ## A150067.P13329417641807654462

`A110654(A150069(n)+A150066(n))`
-/

namespace A150067.P13329417641807654462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150069 n + A150066 n).toNat

end

end A150067.P13329417641807654462

/-!
# A150068: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150068, there is no canonical definition to state claims against.
-/

/-! ## A150068.P9996693825666157688

`A001791(n)+A000005(A346269(n))`
-/

namespace A150068.P9996693825666157688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + A000005 (A346269 n).toNat

end

end A150068.P9996693825666157688

/-! ## A150068.P13626428943244967268

`A261424(A061700(n))+A150067(n)`
-/

namespace A150068.P13626428943244967268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A061700 n).toNat + A150067 n

end

end A150068.P13626428943244967268

/-!
# A150069: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150069, there is no canonical definition to state claims against.
-/

/-! ## A150069.P2624051077632942027

`A005843(A150067(n))-A150066(n)`
-/

namespace A150069.P2624051077632942027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150067 n).toNat - A150066 n

end

end A150069.P2624051077632942027

/-! ## A150069.P10969267207105405144

`or(A150068(n), A185284(n²))`
-/

namespace A150069.P10969267207105405144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150068 n) (A185284 (n ^ 2))

end

end A150069.P10969267207105405144

/-! ## A150069.P3976513816258419049

`or(A150066(A308070(n+1)), A150068(n))`
-/

namespace A150069.P3976513816258419049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150066 (A308070 (n + 1)).toNat) (A150068 n)

end

end A150069.P3976513816258419049

/-!
# A150070: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150070, there is no canonical definition to state claims against.
-/

/-! ## A150070.P9527888843996855433

`A033270(A088218(n)*A217128(n+1))`
-/

namespace A150070.P9527888843996855433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A088218 n * A217128 (n + 1)).toNat

end

end A150070.P9527888843996855433

/-! ## A150070.P1396122341100519515

`n*A003004(a(n-1)+1)` with `a(0)=1`
-/

namespace A150070.P1396122341100519515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A003004 (a (n - 1) + 1).toNat

end

end A150070.P1396122341100519515

/-!
# A150071: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150071, there is no canonical definition to state claims against.
-/

/-! ## A150071.P16700435738027296286

`A127763(A179604(n)+2)-1`
-/

namespace A150071.P16700435738027296286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A179604 n + 2).toNat - 1

end

end A150071.P16700435738027296286

/-! ## A150071.P12946521493915572782

`A006012(n)-A268584(A000129(n))`
-/

namespace A150071.P12946521493915572782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - A268584 (A000129 n).toNat

end

end A150071.P12946521493915572782

/-!
# A150072: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150072, there is no canonical definition to state claims against.
-/

/-! ## A150072.P6394635480880246321

`A132270(A255471(n))+A098550(n+1)`
-/

namespace A150072.P6394635480880246321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A255471 n).toNat + A098550 (n + 1)

end

end A150072.P6394635480880246321

/-! ## A150072.P13074384319472912068

`Δ[n*(n-1)*(n-2)*(n-3)*(n-4)/120]+ceil(root(A056846(2*n+1), 4))`
-/

namespace A150072.P13074384319472912068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 4 : ℚ) / 120))))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (⌈(A056846 (2 * n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉ : ℚ)

end

end A150072.P13074384319472912068

/-!
# A150073: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150073, there is no canonical definition to state claims against.
-/

/-! ## A150073.P2586023569301182884

`A348520(A052329(n+1))+A251708(2*n+4)`
-/

namespace A150073.P2586023569301182884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (A052329 (n + 1)).toNat + A251708 (2 * n + 4)

end

end A150073.P2586023569301182884

/-! ## A150073.P9826879204554579844

`A150074(A001096(n))`
-/

namespace A150073.P9826879204554579844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150074 (A001096 n).toNat

end

end A150073.P9826879204554579844

/-!
# A150074: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150074, there is no canonical definition to state claims against.
-/

/-! ## A150074.P4143721654606809685

`A289437(A173125(2*(n+1))+A173125(n))`
-/

namespace A150074.P4143721654606809685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A173125 (2 * (n + 1)) + A173125 n).toNat

end

end A150074.P4143721654606809685

/-!
# A150075: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150075, there is no canonical definition to state claims against.
-/

/-! ## A150075.P10835800583609167391

`A004525(A150078(n)+A150065(n))`
-/

namespace A150075.P10835800583609167391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150078 n + A150065 n).toNat

end

end A150075.P10835800583609167391

/-! ## A150075.P3372213257590921993

`A004526(A150078(n)+A150065(n))`
-/

namespace A150075.P3372213257590921993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150078 n + A150065 n).toNat

end

end A150075.P3372213257590921993

/-! ## A150075.P12855987310363069647

`A065033(A150078(n)+A150065(n))`
-/

namespace A150075.P12855987310363069647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150078 n + A150065 n).toNat

end

end A150075.P12855987310363069647

/-! ## A150075.P6008873623504623838

`A110654(A150078(n)+A150065(n))`
-/

namespace A150075.P6008873623504623838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150078 n + A150065 n).toNat

end

end A150075.P6008873623504623838

/-!
# A150076: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150076, there is no canonical definition to state claims against.
-/

/-! ## A150076.P4603134237108725548

`A150077(A073788(n))`
-/

namespace A150076.P4603134237108725548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150077 (A073788 n).toNat

end

end A150076.P4603134237108725548

/-! ## A150076.P10949828393325152082

`A154125(A150077(n))`
-/

namespace A150076.P10949828393325152082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150077 n).toNat

end

end A150076.P10949828393325152082

/-! ## A150076.P2659020552159668962

`A150077(A171596(n))`
-/

namespace A150076.P2659020552159668962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150077 (A171596 n).toNat

end

end A150076.P2659020552159668962

/-!
# A150078: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150078, there is no canonical definition to state claims against.
-/

/-! ## A150078.P15196223758032662905

`A004277(A150075(n))-A150065(n)`
-/

namespace A150078.P15196223758032662905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150075 n).toNat - A150065 n

end

end A150078.P15196223758032662905

/-! ## A150078.P16361886988496458296

`record[Δ[∑{d}[n², A328678(#)]]]`
-/

namespace A150078.P16361886988496458296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A328678 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150078.P16361886988496458296

/-!
# A150079: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150079, there is no canonical definition to state claims against.
-/

/-! ## A150079.P16925967855179914082

`A150080(n^3^∑{p}[n+1, (#%3)%2])`
-/

namespace A150079.P16925967855179914082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150080 (n ^ 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), p % 3 % 2))

end

end A150079.P16925967855179914082

/-! ## A150079.P2334063891319676799

`A150080(A001096(n))`
-/

namespace A150079.P2334063891319676799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150080 (A001096 n).toNat

end

end A150079.P2334063891319676799

/-!
# A150080: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150080, there is no canonical definition to state claims against.
-/

/-! ## A150080.P4034724793581250944

`A226520(A194559(n))+A150020(n)`
-/

namespace A150080.P4034724793581250944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A194559 n).toNat + A150020 n

end

end A150080.P4034724793581250944

/-!
# A150081: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150081, there is no canonical definition to state claims against.
-/

/-! ## A150081.P10703866513902557328

`A079159(A363707(n+1))`
-/

namespace A150081.P10703866513902557328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 (A363707 (n + 1)).toNat

end

end A150081.P10703866513902557328

/-! ## A150081.P18364881903438901427

`A372720(A002315(n))+A120893(n)`
-/

namespace A150081.P18364881903438901427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372720 (A002315 n).toNat + A120893 n

end

end A150081.P18364881903438901427

/-!
# A150082: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150082, there is no canonical definition to state claims against.
-/

/-! ## A150082.P15991105817045508306

`record[abs(Δ[A273496(2*n)])]`
-/

namespace A150082.P15991105817045508306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273496 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150082.P15991105817045508306

/-! ## A150082.P468443593751147289

`A048686(A122994(n))`
-/

namespace A150082.P468443593751147289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A122994 n).toNat

end

end A150082.P468443593751147289

/-!
# A150083: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150083, there is no canonical definition to state claims against.
-/

/-! ## A150083.P13487966627982434363

`A058207(A270682(n)+n)`
-/

namespace A150083.P13487966627982434363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A270682 n + (n : ℤ)).toNat

end

end A150083.P13487966627982434363

/-! ## A150083.P1230910761691154777

`A058207(xor(n, A270682(n)))`
-/

namespace A150083.P1230910761691154777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (Int.xor (n : ℤ) (A270682 n)).toNat

end

end A150083.P1230910761691154777

/-! ## A150083.P611852160572279745

`A134119(A037130(n))+2^n`
-/

namespace A150083.P611852160572279745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A037130 n).toNat + (2 ^ n : ℤ)

end

end A150083.P611852160572279745

/-!
# A150084: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 1, 0)}.

The programs for A150084, there is no canonical definition to state claims against.
-/

/-! ## A150084.P18388249714880340600

`A289494(∑[A105309(2*n+1)])`
-/

namespace A150084.P18388249714880340600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150084.P18388249714880340600

/-! ## A150084.P6045544382784997309

`A293734(n)+A002265(A019309(n))`
-/

namespace A150084.P6045544382784997309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293734 n + A002265 (A019309 n).toNat

end

end A150084.P6045544382784997309

/-! ## A150084.P14177526180097380501

`A336990(n)+A081753(A004171(n))`
-/

namespace A150084.P14177526180097380501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336990 n + A081753 (A004171 n).toNat

end

end A150084.P14177526180097380501

/-!
# A150085: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150085, there is no canonical definition to state claims against.
-/

/-! ## A150085.P5742170319920686740

`A067434(A247121(n)+A005672(n))`
-/

namespace A150085.P5742170319920686740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A247121 n + A005672 n).toNat

end

end A150085.P5742170319920686740

/-! ## A150085.P14542539731690712512

`A066508(A302254(n)+A000984(n))`
-/

namespace A150085.P14542539731690712512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A302254 n + A000984 n).toNat

end

end A150085.P14542539731690712512

/-! ## A150085.P10682290458231325780

`A286716(A005408(n)+A001791(n+1))`
-/

namespace A150085.P10682290458231325780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286716 (A005408 n + A001791 (n + 1)).toNat

end

end A150085.P10682290458231325780

/-!
# A150086: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150086, there is no canonical definition to state claims against.
-/

/-! ## A150086.P522250913199066147

`A283467(A150123(n+1))`
-/

namespace A150086.P522250913199066147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (A150123 (n + 1)).toNat

end

end A150086.P522250913199066147

/-! ## A150086.P873310831914179289

`A207524(2^n+2)-2`
-/

namespace A150086.P873310831914179289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207524 (2 ^ n + 2) - 2

end

end A150086.P873310831914179289

/-!
# A150087: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A150087, there is no canonical definition to state claims against.
-/

/-! ## A150087.P13994268292612889382

`A028310(A150088(n)-A079979(n))`
-/

namespace A150087.P13994268292612889382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150088 n - A079979 n).toNat

end

end A150087.P13994268292612889382

/-! ## A150087.P6910527689899623175

`A150088(n)+A015539(A150105(n))`
-/

namespace A150087.P6910527689899623175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150088 n + A015539 (A150105 n).toNat

end

end A150087.P6910527689899623175

/-! ## A150087.P15870212508148252029

`A150088(n)+A015539(A150108(n))`
-/

namespace A150087.P15870212508148252029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150088 n + A015539 (A150108 n).toNat

end

end A150087.P15870212508148252029

/-!
# A150088: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A150088, there is no canonical definition to state claims against.
-/

/-! ## A150088.P12598533858974762748

`A131717(A150089(n))`
-/

namespace A150088.P12598533858974762748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A150089 n).toNat

end

end A150088.P12598533858974762748

/-! ## A150088.P4606208854375292351

`A131717(A150090(n))`
-/

namespace A150088.P4606208854375292351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A150090 n).toNat

end

end A150088.P4606208854375292351

/-! ## A150088.P11725156575283110468

`A124760(n)+A028310(A150087(n))`
-/

namespace A150088.P11725156575283110468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A028310 (A150087 n).toNat

end

end A150088.P11725156575283110468

/-! ## A150088.P10352092142702853302

`A150087(n)+A011715(A150089(n))`
-/

namespace A150088.P10352092142702853302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150087 n + A011715 (A150089 n).toNat

end

end A150088.P10352092142702853302

/-!
# A150089: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A150089, there is no canonical definition to state claims against.
-/

/-! ## A150089.P785997157380567247

`A004180(A150090(n))`
-/

namespace A150089.P785997157380567247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A150090 n).toNat

end

end A150089.P785997157380567247

/-! ## A150089.P7910743979342598900

`A150090(A073789(n))`
-/

namespace A150089.P7910743979342598900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150090 (A073789 n).toNat

end

end A150089.P7910743979342598900

/-! ## A150089.P11121265316748163310

`A131717(A150088(n))`
-/

namespace A150089.P11121265316748163310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A150088 n).toNat

end

end A150089.P11121265316748163310

/-! ## A150089.P8418147815494088337

`A150090(A171644(n))`
-/

namespace A150089.P8418147815494088337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150090 (A171644 n).toNat

end

end A150089.P8418147815494088337

/-!
# A150090: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A150090, there is no canonical definition to state claims against.
-/

/-! ## A150090.P7548417274191421027

`or(A025436(A148833(n)), A150088(n))`
-/

namespace A150090.P7548417274191421027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A148833 n).toNat) (A150088 n)

end

end A150090.P7548417274191421027

/-! ## A150090.P38425160328525826

`or(A025436(A148844(n)), A150088(n))`
-/

namespace A150090.P38425160328525826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A148844 n).toNat) (A150088 n)

end

end A150090.P38425160328525826

/-!
# A150091: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A150091, there is no canonical definition to state claims against.
-/

/-! ## A150091.P10230893252686792335

`A061070(A307398(n+1))`
-/

namespace A150091.P10230893252686792335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A307398 (n + 1)).toNat

end

end A150091.P10230893252686792335

/-! ## A150091.P15890710579362142239

`A137588(A361778(n+1)+n)`
-/

namespace A150091.P15890710579362142239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A361778 (n + 1) + (n : ℤ)).toNat

end

end A150091.P15890710579362142239

/-! ## A150091.P6172095118796420572

`or(A001222(A066357(n)), A150090(n))`
-/

namespace A150091.P6172095118796420572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A066357 n).toNat) (A150090 n)

end

end A150091.P6172095118796420572

/-!
# A150092: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150092, there is no canonical definition to state claims against.
-/

/-! ## A150092.P5505397741696691256

`A004525(A150094(n)+A150088(n))`
-/

namespace A150092.P5505397741696691256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150094 n + A150088 n).toNat

end

end A150092.P5505397741696691256

/-! ## A150092.P193712414397645247

`A123108(A150094(n)+A150088(n))`
-/

namespace A150092.P193712414397645247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150094 n + A150088 n).toNat

end

end A150092.P193712414397645247

/-! ## A150092.P17482151902967562712

`A248180(A086611(n+1))`
-/

namespace A150092.P17482151902967562712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A086611 (n + 1)).toNat

end

end A150092.P17482151902967562712

/-!
# A150093: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, 0)}.

The programs for A150093, there is no canonical definition to state claims against.
-/

/-! ## A150093.P13614118154028148156

`A248180(A281481(n))-A217482(n)`
-/

namespace A150093.P13614118154028148156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A281481 n).toNat - A217482 n

end

end A150093.P13614118154028148156

/-! ## A150093.P15197229746862477866

`A195174(A037537(n+1))+A004275(n)`
-/

namespace A150093.P15197229746862477866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A037537 (n + 1)).toNat + A004275 n

end

end A150093.P15197229746862477866

/-! ## A150093.P12017150577729401184

`A294451(A036381(n+1))+A150091(n)`
-/

namespace A150093.P12017150577729401184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294451 (A036381 (n + 1)).toNat + A150091 n

end

end A150093.P12017150577729401184

/-!
# A150094: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150094, there is no canonical definition to state claims against.
-/

/-! ## A150094.P9864054015738345119

`A002265(floor(4^n-2*3^(n-1)))+2^n`
-/

namespace A150094.P9864054015738345119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌊(4 ^ n : ℚ) - 2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + (2 ^ n : ℤ)

end

end A150094.P9864054015738345119

/-! ## A150094.P11538004916988249956

`A127757(2*A085362(n))`
-/

namespace A150094.P11538004916988249956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (2 * A085362 n).toNat

end

end A150094.P11538004916988249956

/-! ## A150094.P17926913334902909891

`A327440(4*A149972(n))`
-/

namespace A150094.P17926913334902909891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (4 * A149972 n).toNat

end

end A150094.P17926913334902909891

/-!
# A150095: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150095, there is no canonical definition to state claims against.
-/

/-! ## A150095.P13149293599545536497

`A150096(A073790(n))`
-/

namespace A150095.P13149293599545536497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150096 (A073790 n).toNat

end

end A150095.P13149293599545536497

/-! ## A150095.P11289951917266022808

`A150096(A171717(n))`
-/

namespace A150095.P11289951917266022808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150096 (A171717 n).toNat

end

end A150095.P11289951917266022808

/-! ## A150095.P15022599038238363296

`A175068(A150096(n))`
-/

namespace A150095.P15022599038238363296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A150096 n).toNat

end

end A150095.P15022599038238363296

/-! ## A150095.P3108492794517665304

`A150096(A004870(n+1))`
-/

namespace A150095.P3108492794517665304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150096 (A004870 (n + 1)).toNat

end

end A150095.P3108492794517665304

/-! ## A150095.P14869239579330135073

`A150096(A004881(n+1))`
-/

namespace A150095.P14869239579330135073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150096 (A004881 (n + 1)).toNat

end

end A150095.P14869239579330135073

/-!
# A150097: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150097, there is no canonical definition to state claims against.
-/

/-! ## A150097.P5568069847330306643

`A075249(A281347(n+2))`
-/

namespace A150097.P5568069847330306643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A281347 (n + 2)).toNat

end

end A150097.P5568069847330306643

/-! ## A150097.P15757832699946626678

`A002266(6*A149976(n))`
-/

namespace A150097.P15757832699946626678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A149976 n).toNat

end

end A150097.P15757832699946626678

/-! ## A150097.P5186769417072555675

`A145847(n)+A014702(A058694(n))`
-/

namespace A150097.P5186769417072555675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145847 n + A014702 (A058694 n).toNat

end

end A150097.P5186769417072555675

/-!
# A150098: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150098, there is no canonical definition to state claims against.
-/

/-! ## A150098.P6367088658171375204

`A034887(A150004(n+1))`
-/

namespace A150098.P6367088658171375204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A150004 (n + 1)).toNat

end

end A150098.P6367088658171375204

/-! ## A150098.P5378587839321287641

`A225559(A277761(n+2))`
-/

namespace A150098.P5378587839321287641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (A277761 (n + 2)).toNat

end

end A150098.P5378587839321287641

/-! ## A150098.P4470775652955699259

`A002266(6*A141201(n+2))`
-/

namespace A150098.P4470775652955699259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A141201 (n + 2)).toNat

end

end A150098.P4470775652955699259

/-!
# A150099: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150099, there is no canonical definition to state claims against.
-/

/-! ## A150099.P9319095070649279643

`A289493(xor(2*n, A189739(n+1)))`
-/

namespace A150099.P9319095070649279643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (Int.xor (2 * n : ℤ) (A189739 (n + 1))).toNat

end

end A150099.P9319095070649279643

/-! ## A150099.P13452741007227069543

`A117922(A150120(n)-A289122(n))`
-/

namespace A150099.P13452741007227069543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (A150120 n - A289122 n).toNat

end

end A150099.P13452741007227069543

/-! ## A150099.P11854391080781652655

`A027868(A318062(n+1)+A177941(n+1))`
-/

namespace A150099.P11854391080781652655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A318062 (n + 1) + A177941 (n + 1)).toNat

end

end A150099.P11854391080781652655

