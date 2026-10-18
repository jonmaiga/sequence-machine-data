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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A333000: Sum of integers (with multiplicity) encountered on all possible paths from n to 1 when iterating with nondeterministic map k -> k- k/p, where p is any prime factor of k.

The programs for A333000, there is no canonical definition to state claims against.
-/

/-! ## A333000.P14991011749086291542

`A333002(n+1)/A333003(n+1)*A333123(n+1)`
-/

namespace A333000.P14991011749086291542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333002 (n + 1) : ℚ) / (A333003 (n + 1) : ℚ) * (A333123 (n + 1) : ℚ)

end

end A333000.P14991011749086291542

/-! ## A333000.P11365713682469541678

`A208218(A320606(n+1))*A333002(n+1)`
-/

namespace A333000.P11365713682469541678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208218 (A320606 (n + 1)).toNat * A333002 (n + 1)

end

end A333000.P11365713682469541678

/-! ## A333000.P2828540735788173067

`A000045(A351241(n+1))*A333002(n+1)`
-/

namespace A333000.P2828540735788173067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A351241 (n + 1)).toNat * A333002 (n + 1)

end

end A333000.P2828540735788173067

/-! ## A333000.P5766213294868234086

`A077168(A351241(n+1)-1)*A333002(n+1)`
-/

namespace A333000.P5766213294868234086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A351241 (n + 1) - 1).toNat * A333002 (n + 1)

end

end A333000.P5766213294868234086

/-! ## A333000.P17864577323561158995

`A141539(A185213(n))*A333002(n+1)`
-/

namespace A333000.P17864577323561158995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (A185213 n).toNat * A333002 (n + 1)

end

end A333000.P17864577323561158995

/-!
# A333001: The average path sum (floored down) when iterating from n to 1 with nondeterministic map k -> k - k/p, where p is any prime factor of k.

The programs for A333001, there is no canonical definition to state claims against.
-/

/-! ## A333001.P3189897952387188068

`floor(A333002(n+1)/A333003(n+1))`
-/

namespace A333001.P3189897952387188068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333002 (n + 1) : ℚ) / (A333003 (n + 1) : ℚ)⌋

end

end A333001.P3189897952387188068

/-! ## A333001.P12201725352843063767

`floor(A333000(n+1)/A333123(n+1))`
-/

namespace A333001.P12201725352843063767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333000 (n + 1) : ℚ) / (A333123 (n + 1) : ℚ)⌋

end

end A333001.P12201725352843063767

/-! ## A333001.P8506644015309001877

`floor(A333000(n+1)/∑[A332903(n+1)])`
-/

namespace A333001.P8506644015309001877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333000 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A333001.P8506644015309001877

/-! ## A333001.P12633855127598308540

`A125005(A115569(n+2))+A073934(n+1)`
-/

namespace A333001.P12633855127598308540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A115569 (n + 2)).toNat + A073934 (n + 1)

end

end A333001.P12633855127598308540

/-! ## A333001.P12001425231606088883

`A333792(A333793(n+1)!)+A073934(n+1)`
-/

namespace A333001.P12001425231606088883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333792 (Nat.factorial (A333793 (n + 1)).toNat) + A073934 (n + 1)

end

end A333001.P12001425231606088883

/-!
# A333002: Numerator of the average path sum when iterating from n to 1 with nondeterministic map k -> k - k/p, where p is any prime factor of k.

The programs for A333002, there is no canonical definition to state claims against.
-/

/-! ## A333002.P154356666518317297

`A333000(n+1)*A333003(n+1)/A333123(n+1)`
-/

namespace A333002.P154356666518317297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333000 (n + 1) * A333003 (n + 1) : ℚ) / (A333123 (n + 1) : ℚ)

end

end A333002.P154356666518317297

/-! ## A333002.P16940021616315159809

`A333000(n+1)/gcd(A333123(n+1), A351241(n+1))`
-/

namespace A333002.P16940021616315159809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333000 (n + 1) : ℚ) / (Int.gcd (A333123 (n + 1)) (A351241 (n + 1)) : ℚ)

end

end A333002.P16940021616315159809

/-! ## A333002.P5995536480269095627

`A333000(n+1)/A208218(A320606(n+1))`
-/

namespace A333002.P5995536480269095627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333000 (n + 1) : ℚ) / (A208218 (A320606 (n + 1)).toNat : ℚ)

end

end A333002.P5995536480269095627

/-! ## A333002.P7872577170610355872

`A333000(n+1)%A131551(A352445(n+1))`
-/

namespace A333002.P7872577170610355872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333000 (n + 1)) (A131551 (A352445 (n + 1)).toNat)

end

end A333002.P7872577170610355872

/-! ## A333002.P3676761714767254013

`A333000(n+1)/A000045(A351241(n+1))`
-/

namespace A333002.P3676761714767254013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333000 (n + 1) : ℚ) / (A000045 (A351241 (n + 1)).toNat : ℚ)

end

end A333002.P3676761714767254013

/-!
# A333003: Denominator of the average path sum when iterating from n to 1 with nondeterministic map k -> k - k/p, where p is any prime factor of k.

The programs for A333003, there is no canonical definition to state claims against.
-/

/-! ## A333003.P1573953798533651745

`A333002(n+1)/A333000(n+1)*A333123(n+1)`
-/

namespace A333003.P1573953798533651745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333002 (n + 1) : ℚ) / (A333000 (n + 1) : ℚ) * (A333123 (n + 1) : ℚ)

end

end A333003.P1573953798533651745

/-! ## A333003.P5534758806262374858

`A118759(round(A333002(n+1)/A333001(n+1)))`
-/

namespace A333003.P5534758806262374858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A333002 (n + 1) : ℚ) / (A333001 (n + 1) : ℚ))).toNat

end

end A333003.P5534758806262374858

/-! ## A333003.P17081274143310719099

`A000196(round(A333002(n+1)/A333001(n+1))²)`
-/

namespace A333003.P17081274143310719099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A333002 (n + 1) : ℚ) / (A333001 (n + 1) : ℚ)) ^ 2).toNat

end

end A333003.P17081274143310719099

/-! ## A333003.P14804336344607914336

`gcd(A033762(A058794(n)), A333123(n+1))`
-/

namespace A333003.P14804336344607914336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033762 (A058794 n).toNat) (A333123 (n + 1))

end

end A333003.P14804336344607914336

/-! ## A333003.P17995383942429423080

`A333123(n+1)^A126120(A191520(A299481(n+1)))`
-/

namespace A333003.P17995383942429423080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333123 (n + 1) : ℚ) ^ (A126120 (A191520 (A299481 (n + 1)).toNat).toNat : ℤ)

end

end A333003.P17995383942429423080

/-!
# A333004: a(n) is the smallest squarefree number k such that sum of reciprocals of squarefree numbers up to k (squarefree harmonic sum) exceeds n.

The programs for A333004, there is no canonical definition to state claims against.
-/

/-! ## A333004.P11245530084345360547

`A081753(n)+A008611(A241023(n))`
-/

namespace A333004.P11245530084345360547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 n + A008611 (A241023 n).toNat

end

end A333004.P11245530084345360547

/-! ## A333004.P13577111771539446973

`A118654(n)+A008611(A241023(n))`
-/

namespace A333004.P13577111771539446973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118654 n + A008611 (A241023 n).toNat

end

end A333004.P13577111771539446973

/-!
# A333007: Perfect squares that are sum of two nonzero pentagonal numbers.

The programs for A333007, there is no canonical definition to state claims against.
-/

/-! ## A333007.P17745213063191826769

`A333008(n+1)²`
-/

namespace A333007.P17745213063191826769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333008 (n + 1) ^ 2

end

end A333007.P17745213063191826769

/-! ## A333007.P1667209628062965886

`A000290(2*A333008(n+1)-A333008(n+1))`
-/

namespace A333007.P1667209628062965886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A333008 (n + 1) - A333008 (n + 1)).toNat

end

end A333007.P1667209628062965886

/-! ## A333007.P4481244206427444898

`A000290(A333008(n+1))*A260196(n+2)*A260196(n+2)`
-/

namespace A333007.P4481244206427444898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A333008 (n + 1)).toNat * A260196 (n + 2) * A260196 (n + 2)

end

end A333007.P4481244206427444898

/-! ## A333007.P18287938968941834871

`A000290(A333008(n+2)-A333009(n+1))`
-/

namespace A333007.P18287938968941834871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A333008 (n + 2) - A333009 (n + 1)).toNat

end

end A333007.P18287938968941834871

/-! ## A333007.P10641911776620555989

`(A333008(n+2)-A333009(n+1))*A333008(n+1)`
-/

namespace A333007.P10641911776620555989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333008 (n + 2) - A333009 (n + 1)) * A333008 (n + 1)

end

end A333007.P10641911776620555989

/-! ## A333007.P9468975537685619481

`A333008(n+1)^A000005(A336943(A000005(n+1)))`
-/

namespace A333007.P9468975537685619481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333008 (n + 1) : ℚ) ^ (A000005 (A336943 (A000005 (n + 1)).toNat).toNat : ℤ)

end

end A333007.P9468975537685619481

/-!
# A333008: Square roots of perfect squares which are sum of two nonzero pentagonal numbers (A333007).

The programs for A333008, there is no canonical definition to state claims against.
-/

/-! ## A333008.P7698290279623961485

`sqrt(A333007(n+1))`
-/

namespace A333008.P7698290279623961485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A333007 (n + 1) : ℝ)

end

end A333008.P7698290279623961485

/-! ## A333008.P699811791146325529

`A333009(n)+a(n-1)` with `a(0)=6`
-/

namespace A333008.P699811791146325529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A333009 n + a (n - 1)

end

end A333008.P699811791146325529

/-! ## A333008.P8318710595596757721

`A000027(root(A333007(n+1), 4)²)`
-/

namespace A333008.P8318710595596757721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((A333007 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)).toNat

end

end A333008.P8318710595596757721

/-! ## A333008.P658369253741277206

`root(A333007(n+1), 4)²%A004771(n)²`
-/

namespace A333008.P658369253741277206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A333007 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)) (A004771 n ^ 2)

end

end A333008.P658369253741277206

/-! ## A333008.P13336196101765698111

`A000007(n+1)+root(A333007(n+1), 4)²`
-/

namespace A333008.P13336196101765698111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + ((A333007 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A333008.P13336196101765698111

/-! ## A333008.P18307374345149634744

`and(2, A000290(n))+root(A333007(n+1), 4)²`
-/

namespace A333008.P18307374345149634744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A000290 n) : ℝ) + ((A333007 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A333008.P18307374345149634744

/-! ## A333008.P6555682581331293028

`and(2, A091247(n))+root(A333007(n+1), 4)²`
-/

namespace A333008.P6555682581331293028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A091247 n) : ℝ) + ((A333007 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A333008.P6555682581331293028

/-! ## A333008.P4067359568539652814

`root(A333007(n+1), 2%A336943(n))`
-/

namespace A333008.P4067359568539652814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A333007 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A336943 n) : ℝ))

end

end A333008.P4067359568539652814

/-!
# A333009: Successive differences of A333008 (square roots of perfect squares that are the sum of two nonzero pentagonal numbers).

The programs for A333009, there is no canonical definition to state claims against.
-/

/-! ## A333009.P3954726362278130366

`Δ[A333008(n+1)]`
-/

namespace A333009.P3954726362278130366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333009.P3954726362278130366

/-! ## A333009.P17740640245203253860

`Δ[sqrt(A333007(n+1))]`
-/

namespace A333009.P17740640245203253860
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A333007 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333009.P17740640245203253860

/-! ## A333009.P2938682045949946724

`A333008(n+2)-A333008(n+1)`
-/

namespace A333009.P2938682045949946724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333008 (n + 2) - A333008 (n + 1)

end

end A333009.P2938682045949946724

/-! ## A333009.P2255589326049945571

`Δ[A000027(root(A333007(n+1), 4)²)]`
-/

namespace A333009.P2255589326049945571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((A333007 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333009.P2255589326049945571

/-! ## A333009.P8658191886754848740

`sqrt(A333007(n+2))-sqrt(A333007(n+1))`
-/

namespace A333009.P8658191886754848740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A333007 (n + 2) : ℝ) - Real.sqrt (A333007 (n + 1) : ℝ)

end

end A333009.P8658191886754848740

/-!
# A333012: Integers which can be written in exactly two ways as a sum of two distinct nonzero pentagonal numbers.

The programs for A333012, there is no canonical definition to state claims against.
-/

/-! ## A333012.P13338413898553797222

`filter[A064826(n+1), A179775(#)]`
-/

namespace A333012.P13338413898553797222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A333012.P13338413898553797222

/-! ## A333012.P7948558422814349801

`A064826(A120450(n+1)+A082217(n+1))`
-/

namespace A333012.P7948558422814349801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (A120450 (n + 1) + A082217 (n + 1)).toNat

end

end A333012.P7948558422814349801

/-! ## A333012.P10446186485427047307

`A064826(A003511(n+1)%A168654(n+1))`
-/

namespace A333012.P10446186485427047307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (Int.tmod (A003511 (n + 1)) (A168654 (n + 1))).toNat

end

end A333012.P10446186485427047307

/-! ## A333012.P17886803474274306507

`A064826(lt[A254329(n+5), A349161(3*n+1)])`
-/

namespace A333012.P17886803474274306507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254329 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349161 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333012.P17886803474274306507

/-!
# A333016: Smallest palindromic number >= 2^n.

The programs for A333016, there is no canonical definition to state claims against.
-/

/-! ## A333016.P1349184240407427848

`A262038(A000079(n))`
-/

namespace A333016.P1349184240407427848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A000079 n).toNat

end

end A333016.P1349184240407427848

/-! ## A333016.P4981891954077193104

`A083463(n)+2^n`
-/

namespace A333016.P4981891954077193104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083463 n + (2 ^ n : ℤ)

end

end A333016.P4981891954077193104

/-! ## A333016.P17077888731904062873

`or(A000079(n), A083463(n))`
-/

namespace A333016.P17077888731904062873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A083463 n)

end

end A333016.P17077888731904062873

/-! ## A333016.P2111888104047492066

`or(∑[A011782(n)], A083463(n))`
-/

namespace A333016.P2111888104047492066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A083463 n)

end

end A333016.P2111888104047492066

/-! ## A333016.P63631018230451676

`or(Δ[A000051(n)], A083463(n))`
-/

namespace A333016.P63631018230451676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A083463 n)

end

end A333016.P63631018230451676

/-!
# A333017: Twice the total area of all (open or closed) Deutsch paths of length n.

The programs for A333017, there is no canonical definition to state claims against.
-/

/-! ## A333017.P13716831729102858041

`A090620(A002919(n+1))`
-/

namespace A333017.P13716831729102858041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A002919 (n + 1)).toNat

end

end A333017.P13716831729102858041

/-! ## A333017.P14915727863761698344

`A144027(A000217(2*n+2))-A036256(n)`
-/

namespace A333017.P14915727863761698344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (A000217 (2 * n + 2)).toNat - A036256 n

end

end A333017.P14915727863761698344

/-!
# A333018: Number of free heptagonal polyforms with n cells on the heptagonal tiling of the hyperbolic plane.

The programs for A333018, there is no canonical definition to state claims against.
-/

/-! ## A333018.P14521622540469642668

`A259352(A002034(n!))`
-/

namespace A333018.P14521622540469642668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259352 (A002034 (Nat.factorial n)).toNat

end

end A333018.P14521622540469642668

/-! ## A333018.P10071405572325159615

`A259352(A015165(n)+n)`
-/

namespace A333018.P10071405572325159615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259352 (A015165 n + (n : ℤ)).toNat

end

end A333018.P10071405572325159615

/-! ## A333018.P4644186591834009833

`A259352(n^A048766(n))`
-/

namespace A333018.P4644186591834009833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259352 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A333018.P4644186591834009833

/-! ## A333018.P12792835334379065240

`A259352(n^A289133(n))`
-/

namespace A333018.P12792835334379065240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259352 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A289133 n : ℤ))).toNat

end

end A333018.P12792835334379065240

/-!
# A333019: Numbers k such that both k and k + 2 are totient numbers (A002202).

The programs for A333019, there is no canonical definition to state claims against.
-/

/-! ## A333019.P9904383489282535817

`A002202(eq[2, Δ[A002202(n+1)]]+1)`
-/

namespace A333019.P9904383489282535817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333019.P9904383489282535817

/-! ## A333019.P9919558009186310047

`2*A002180(eq[1, Δ[A002180(n+2)]]+2)`
-/

namespace A333019.P9919558009186310047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A333019.P9919558009186310047

/-! ## A333019.P14208308081502207480

`A002202(record[(n+1)/Δ[A002180(n+2)]]+1)`
-/

namespace A333019.P14208308081502207480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A333019.P14208308081502207480

/-! ## A333019.P18227269788256441788

`∩[A002202(n+1), A083533(n)+a(n-1)]` with `a(0)=-1`
-/

namespace A333019.P18227269788256441788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  A083533 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333019.P18227269788256441788

/-! ## A333019.P12412709778709335539

`A002202(eq[2, A002202(n+2)-A002202(n+1)]+1)`
-/

namespace A333019.P12412709778709335539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2) - A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333019.P12412709778709335539

/-! ## A333019.P2131927382079316153

`A007614(eq[2, A007614(n+2)-A007614(n+1)]+1)`
-/

namespace A333019.P2131927382079316153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (n + 2) - A007614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333019.P2131927382079316153

/-!
# A333020: Starts of runs of 3 consecutive even numbers that are all totient numbers (A002202).

The programs for A333020, there is no canonical definition to state claims against.
-/

/-! ## A333020.P4173594950230650803

`∩[A333019(n+1)-2, A333019(n+1)]`
-/

namespace A333020.P4173594950230650803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333020.P4173594950230650803

/-! ## A333020.P306486198924129572

`A333019(eq[2, A333019(n+2)-A333019(n+1)]+1)`
-/

namespace A333020.P306486198924129572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (n + 2) - A333019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333020.P306486198924129572

/-! ## A333020.P12787342813085415654

`∩[A333019(n+1), ∑[A083533(n+3)]]`
-/

namespace A333020.P12787342813085415654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333020.P12787342813085415654

/-! ## A333020.P6442588066910248097

`eq[A137668(n+1), A137676(A064778(n+1))]`
-/

namespace A333020.P6442588066910248097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (A064778 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333020.P6442588066910248097

/-! ## A333020.P4959421172850512182

`∑[A039953(14*A039953(n+1))]`
-/

namespace A333020.P4959421172850512182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039953 (14 * A039953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333020.P4959421172850512182

/-!
# A333021: Starts of runs of 4 consecutive even numbers that are all totient numbers (A002202).

The programs for A333021, there is no canonical definition to state claims against.
-/

/-! ## A333021.P7584791843178617431

`∩[A333020(n+1)-2, A333020(n+1)]`
-/

namespace A333021.P7584791843178617431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333020 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333021.P7584791843178617431

/-! ## A333021.P10511620084106981751

`A333020(eq[2, A333020(n+2)-A333020(n+1)]+1)`
-/

namespace A333021.P10511620084106981751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333020 (n + 2) - A333020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333021.P10511620084106981751

/-! ## A333021.P14986335579849285112

`∩[A333019(n+1)-4, A333019(n+1)]`
-/

namespace A333021.P14986335579849285112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333021.P14986335579849285112

/-! ## A333021.P3437264278841349250

`∑[A076628(n+1)%A027760(n+1)+1]`
-/

namespace A333021.P3437264278841349250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076628 (n + 1)) (A027760 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333021.P3437264278841349250

/-! ## A333021.P4860656768159206490

`A160552(A307635(n))+A103127(n+1)`
-/

namespace A333021.P4860656768159206490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A307635 n).toNat + A103127 (n + 1)

end

end A333021.P4860656768159206490

/-!
# A333022: Starts of runs of 5 consecutive even numbers that are all totient numbers (A002202).

The programs for A333022, there is no canonical definition to state claims against.
-/

/-! ## A333022.P1855812968985427490

`∩[A333021(n+1)-2, A333021(n+1)]`
-/

namespace A333022.P1855812968985427490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333021 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333022.P1855812968985427490

/-! ## A333022.P12418273995853526046

`A333021(eq[2, A333021(n+2)-A333021(n+1)]+1)`
-/

namespace A333022.P12418273995853526046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333021 (n + 2) - A333021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333022.P12418273995853526046

/-! ## A333022.P14212245108317634894

`∩[A333020(n+1)-4, A333020(n+1)]`
-/

namespace A333022.P14212245108317634894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333020 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333022.P14212245108317634894

/-!
# A333023: Starts of runs of 6 consecutive even numbers that are all totient numbers (A002202).

The programs for A333023, there is no canonical definition to state claims against.
-/

/-! ## A333023.P3699122679077923050

`∩[A333022(n+1)-2, A333022(n+1)]`
-/

namespace A333023.P3699122679077923050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333022 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333023.P3699122679077923050

/-!
# A333024: Starts of runs of 7 consecutive even numbers that are all totient numbers (A002202).

The programs for A333024, there is no canonical definition to state claims against.
-/

/-! ## A333024.P9747394939214481744

`∩[A333023(n+1)-2, A333023(n+1)]`
-/

namespace A333024.P9747394939214481744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333023 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333024.P9747394939214481744

/-!
# A333026: The number of vertices formed on an isosceles triangle by straight line segments mutually connecting all vertices and all points that divide the two equal length sides into n equal parts; the base of the triangle contains no points other than its vertices.

The programs for A333026, there is no canonical definition to state claims against.
-/

/-! ## A333026.P10651974329795477323

`A333027(n+1)+1-A332953(n+1)`
-/

namespace A333026.P10651974329795477323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333027 (n + 1) + (1 - A332953 (n + 1))

end

end A333026.P10651974329795477323

/-! ## A333026.P1147054790792009019

`A333027(n+1)+A024000(A332953(n+1))`
-/

namespace A333026.P1147054790792009019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333027 (n + 1) + A024000 (A332953 (n + 1)).toNat

end

end A333026.P1147054790792009019

/-! ## A333026.P11020580220965252363

`A020725(A333027(n+1)-A332953(n+1))`
-/

namespace A333026.P11020580220965252363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A333027 (n + 1) - A332953 (n + 1)).toNat

end

end A333026.P11020580220965252363

/-! ## A333026.P12939315387050644824

`A065475(A333027(n+1)-A332953(n+1))`
-/

namespace A333026.P12939315387050644824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A333027 (n + 1) - A332953 (n + 1)).toNat

end

end A333026.P12939315387050644824

/-!
# A333027: The number of edges formed on an isosceles triangle by straight line segments mutually connecting all vertices and all points that divide the two equal length sides into n equal parts; the base of the triangle contains no points other than its vertices.

The programs for A333027, there is no canonical definition to state claims against.
-/

/-! ## A333027.P10912017640471577868

`A332953(n+1)+A333026(n+1)-1`
-/

namespace A333027.P10912017640471577868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332953 (n + 1) + (A333026 (n + 1) - 1)

end

end A333027.P10912017640471577868

/-! ## A333027.P8572054453523238005

`A332953(n+1)+A023443(A333026(n+1))`
-/

namespace A333027.P8572054453523238005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332953 (n + 1) + A023443 (A333026 (n + 1)).toNat

end

end A333027.P8572054453523238005

/-! ## A333027.P2628819835591956661

`A199969(A333026(n+1)+A332953(n+1))`
-/

namespace A333027.P2628819835591956661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A333026 (n + 1) + A332953 (n + 1)).toNat

end

end A333027.P2628819835591956661

/-!
# A333029: Order array of array A333028, read by antidiagonals.

The programs for A333029, there is no canonical definition to state claims against.
-/

/-! ## A333029.P5733416592920855655

`A359298(n+1)+A055641(A116658(n+1))`
-/

namespace A333029.P5733416592920855655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359298 (n + 1) + A055641 (A116658 (n + 1)).toNat

end

end A333029.P5733416592920855655

/-! ## A333029.P15857898637754856976

`A359298(n+1)+A010051(A332358(2*n+5))`
-/

namespace A333029.P15857898637754856976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359298 (n + 1) + A010051 (A332358 (2 * n + 5)).toNat

end

end A333029.P15857898637754856976

/-!
# A333031: Number of vertices in an equilateral triangle "frame" of size n (see Comments in A328526 for definition).

The programs for A333031, there is no canonical definition to state claims against.
-/

/-! ## A333031.P5141068731359219983

`lcm(A320843(n), A335126(A054556(n+1)))`
-/

namespace A333031.P5141068731359219983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A320843 n) (A335126 (A054556 (n + 1)).toNat)

end

end A333031.P5141068731359219983

/-!
# A333032: Number of triangular regions in an equilateral triangular "frame" of size n (see Comments in A328526 for definition).

The programs for A333032, there is no canonical definition to state claims against.
-/

/-! ## A333032.P13734936900273451685

`A341257(A285738(n+1))`
-/

namespace A333032.P13734936900273451685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341257 (A285738 (n + 1)).toNat

end

end A333032.P13734936900273451685

/-!
# A333033: Number of quadrilateral regions in an equilateral triangular "frame" of size n (see Comments in A328526 for definition).

The programs for A333033, there is no canonical definition to state claims against.
-/

/-! ## A333033.P14179618197215198400

`A001222(A000666(n+2))*A363324(2*n+3)`
-/

namespace A333033.P14179618197215198400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000666 (n + 2)).toNat * A363324 (2 * n + 3)

end

end A333033.P14179618197215198400

/-!
# A333035: Number of vertices in an equal-armed cross with arms of length n (see Comments in A331456 for definition).

The programs for A333035, there is no canonical definition to state claims against.
-/

/-! ## A333035.P10413514898312169243

`A333036(n)+1-A331456(n)`
-/

namespace A333035.P10413514898312169243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333036 n + (1 - A331456 n)

end

end A333035.P10413514898312169243

/-! ## A333035.P13663152362821907453

`A333036(n)+1-4*A331458(n)`
-/

namespace A333035.P13663152362821907453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333036 n + 1 - 4 * A331458 n

end

end A333035.P13663152362821907453

/-! ## A333035.P380976014609391675

`xor(A333036(n)-A331456(n), A000034(2*n))`
-/

namespace A333035.P380976014609391675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A333036 n - A331456 n) (A000034 (2 * n))

end

end A333035.P380976014609391675

/-! ## A333035.P12603022695623619565

`A333036(n)-A331456(n)-A057428(A080037(n))`
-/

namespace A333035.P12603022695623619565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333036 n - A331456 n - A057428 (A080037 n).toNat

end

end A333035.P12603022695623619565

/-! ## A333035.P11312334679452005762

`A333036(n)+1-A331458(n)/(2^A008683(A181758(n+1)))²`
-/

namespace A333035.P11312334679452005762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333036 n + 1 : ℚ) - (A331458 n : ℚ) / ((2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ)) ^ 2

end

end A333035.P11312334679452005762

/-!
# A333036: Number of edges in an equal-armed cross with arms of length n (see Comments in A331456 for definition).

The programs for A333036, there is no canonical definition to state claims against.
-/

/-! ## A333036.P9900427533417431902

`A331456(n)+A333035(n)-1`
-/

namespace A333036.P9900427533417431902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331456 n + (A333035 n - 1)

end

end A333036.P9900427533417431902

/-! ## A333036.P17521979162488886133

`A331456(n)+A066182(A333035(n))`
-/

namespace A333036.P17521979162488886133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331456 n + A066182 (A333035 n).toNat

end

end A333036.P17521979162488886133

/-! ## A333036.P17102218828884662755

`A066182(A333035(n))+4*A331458(n)`
-/

namespace A333036.P17102218828884662755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A333035 n).toNat + 4 * A331458 n

end

end A333036.P17102218828884662755

/-!
# A333038: Numbers m such that sigma(m) <= sigma(m-1).

The programs for A333038, there is no canonical definition to state claims against.
-/

/-! ## A333038.P10002047324096832600

`lt[A053246(n+1), 0]+2`
-/

namespace A333038.P10002047324096832600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A333038.P10002047324096832600

/-! ## A333038.P16507384055281577372

`lt[A340793(n+1), 1]+1`
-/

namespace A333038.P16507384055281577372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333038.P16507384055281577372

/-! ## A333038.P11624107163336569621

`lt[A053222(n+1), 1]+2`
-/

namespace A333038.P11624107163336569621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A333038.P11624107163336569621

/-! ## A333038.P15786682720710219807

`comp[A053224(n+1)-1]+2`
-/

namespace A333038.P15786682720710219807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A333038.P15786682720710219807

/-! ## A333038.P7596912857509510456

`lt[Δ[A000203(n+1)], 1]+2`
-/

namespace A333038.P7596912857509510456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A333038.P7596912857509510456

/-! ## A333038.P15112901324848190136

`lt[1, Δ[A033879(n+1)]]+2`
-/

namespace A333038.P15112901324848190136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A333038.P15112901324848190136

/-! ## A333038.P2847177539703050181

`lt[Δ[A088580(n+1)], 1]+2`
-/

namespace A333038.P2847177539703050181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A333038.P2847177539703050181

/-! ## A333038.P7978409635045867307

`lt[Δ[A274535(n+1)], 1]+2`
-/

namespace A333038.P7978409635045867307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A333038.P7978409635045867307

/-! ## A333038.P5483094368815904484

`lt[n+1, A163553(n+1)]+2`
-/

namespace A333038.P5483094368815904484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A333038.P5483094368815904484

/-! ## A333038.P3178765191176464025

`lt[A340793(A028310(n)), 1]`
-/

namespace A333038.P3178765191176464025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333038.P3178765191176464025

/-!
# A333039: Composites m such that sigma(m) < sigma(m-1).

The programs for A333039, the canonical program `A333039.P4908284397635419986` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333039 has offset 1).

The definition of A333039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333039.P4908284397635419986

`∩[A002808(n+1), A053226(n+1)+1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333039

/-- `∩[A002808(n+1), A053226(n+1)+1]` -/
def P4908284397635419986.Spec : Prop :=
  ∀ n, (P4908284397635419986.a n : ℤ) = A333039 (n + 1)

theorem P4908284397635419986.correct : P4908284397635419986.Spec := by
  intro n
  simp only [A333039, Nat.add_sub_cancel]

end A333039

/-! ## A333039.P5307686455174345096

`∩[A018252(n+1), A053226(n+1)+1]`
-/

namespace A333039.P5307686455174345096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333039.P5307686455174345096

namespace A333039

/-- `∩[A018252(n+1), A053226(n+1)+1]` -/
def P5307686455174345096.Spec : Prop :=
  ∀ n, (P5307686455174345096.a n : ℤ) = A333039 (n + 1)

end A333039

/-! ## A333039.P15722283784238890503

`∩[A062973(n+1), A333038(n+1)]`
-/

namespace A333039.P15722283784238890503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333039.P15722283784238890503

namespace A333039

/-- `∩[A062973(n+1), A333038(n+1)]` -/
def P15722283784238890503.Spec : Prop :=
  ∀ n, (P15722283784238890503.a n : ℤ) = A333039 (n + 1)

end A333039

/-!
# A333040: Even numbers m such that sigma(m) < sigma(m-1).

The programs for A333040, there is no canonical definition to state claims against.
-/

/-! ## A333040.P4518951279545730627

`A067828(n+1)+1`
-/

namespace A333040.P4518951279545730627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067828 (n + 1) + 1

end

end A333040.P4518951279545730627

/-! ## A333040.P14593398733462254335

`∩[A005004(n+1), A333039(n+1)]`
-/

namespace A333040.P14593398733462254335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P14593398733462254335

/-! ## A333040.P3526820020262188160

`∩[A047235(n+1), A333039(n+1)]`
-/

namespace A333040.P3526820020262188160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P3526820020262188160

/-! ## A333040.P6267591373492970781

`∩[A225241(n+1), A333039(n+1)]`
-/

namespace A333040.P6267591373492970781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P6267591373492970781

/-! ## A333040.P6435560147115869095

`∩[A232745(n+1), A333039(n+1)]`
-/

namespace A333040.P6435560147115869095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P6435560147115869095

/-! ## A333040.P1002667866960782443

`∩[A245024(n+1), A333039(n+1)]`
-/

namespace A333040.P1002667866960782443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P1002667866960782443

/-! ## A333040.P424601748110683981

`∩[A276706(n+1), A333039(n+1)]`
-/

namespace A333040.P424601748110683981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P424601748110683981

/-! ## A333040.P111833875056062191

`∩[A328588(n+1), A333039(n+1)]`
-/

namespace A333040.P111833875056062191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P111833875056062191

/-! ## A333040.P14760375592306997881

`∩[A333039(n+1), A342050(n+1)]`
-/

namespace A333040.P14760375592306997881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P14760375592306997881

/-! ## A333040.P11831632525436737661

`∩[A260391(n+1), A333039(n+1)]`
-/

namespace A333040.P11831632525436737661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P11831632525436737661

/-! ## A333040.P10250403729525632584

`∩[A100319(n+1), A333039(n+1)]`
-/

namespace A333040.P10250403729525632584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P10250403729525632584

/-! ## A333040.P17408970837434696170

`∩[A333039(n+1), A348005(n+1)]`
-/

namespace A333040.P17408970837434696170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P17408970837434696170

/-! ## A333040.P4814868235671249199

`∩[A333039(n+1), A076772(n)]`
-/

namespace A333040.P4814868235671249199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P4814868235671249199

/-! ## A333040.P17872538648861188539

`∩[A076770(n+1), A333039(n+1)]`
-/

namespace A333040.P17872538648861188539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P17872538648861188539

/-! ## A333040.P9775413337929960383

`∩[A333039(n+1), A004271(n)]`
-/

namespace A333040.P9775413337929960383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P9775413337929960383

/-! ## A333040.P3481479701612701986

`∩[A333039(n+1), A004272(n)]`
-/

namespace A333040.P3481479701612701986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P3481479701612701986

/-! ## A333040.P6737283086386719384

`∩[A333039(n+1), A004275(n)]`
-/

namespace A333040.P6737283086386719384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P6737283086386719384

/-! ## A333040.P17242511424212300577

`∩[A333039(n+1), A004277(n)]`
-/

namespace A333040.P17242511424212300577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P17242511424212300577

/-! ## A333040.P8553612268340042165

`∩[A333039(n+1), A004279(n)]`
-/

namespace A333040.P8553612268340042165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P8553612268340042165

/-! ## A333040.P3449811122084707677

`∩[A333039(n+1), A005843(n)]`
-/

namespace A333040.P3449811122084707677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333040.P3449811122084707677

/-!
# A333041: Odd numbers m such that sigma(m) > sigma(m-1).

The programs for A333041, there is no canonical definition to state claims against.
-/

/-! ## A333041.P15076286303131451795

`A067825(n+1)+1`
-/

namespace A333041.P15076286303131451795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (n + 1) + 1

end

end A333041.P15076286303131451795

/-! ## A333041.P3961911484640309333

`2*A082957(n+1)+1`
-/

namespace A333041.P3961911484640309333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082957 (n + 1) + 1

end

end A333041.P3961911484640309333

/-! ## A333041.P7361842153007776846

`or(1, A067825(Δ[n²]-n))`
-/

namespace A333041.P7361842153007776846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A333041.P7361842153007776846

/-! ## A333041.P17297404300528767300

`∪[A323380(n+1), A323726(n+1)]`
-/

namespace A333041.P17297404300528767300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333041.P17297404300528767300

/-! ## A333041.P4428733139707838265

`∩[2*n+1, A053224(n+1)+1]`
-/

namespace A333041.P4428733139707838265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333041.P4428733139707838265

/-! ## A333041.P11873530632764325918

`A005408(A082957(n+1))`
-/

namespace A333041.P11873530632764325918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A082957 (n + 1)).toNat

end

end A333041.P11873530632764325918

/-! ## A333041.P13279262698810232004

`A004273(A082957(n+1)+1)`
-/

namespace A333041.P13279262698810232004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082957 (n + 1) + 1).toNat

end

end A333041.P13279262698810232004

/-! ## A333041.P1705884629867554358

`A004275(A082957(n+1)+1)+1`
-/

namespace A333041.P1705884629867554358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A082957 (n + 1) + 1).toNat + 1

end

end A333041.P1705884629867554358

/-! ## A333041.P5241333123326586621

`A005843(A082957(n+1)+1)-1`
-/

namespace A333041.P5241333123326586621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082957 (n + 1) + 1).toNat - 1

end

end A333041.P5241333123326586621

/-! ## A333041.P131200313058066307

`A004442(A067825(n+1))`
-/

namespace A333041.P131200313058066307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A067825 (n + 1)).toNat

end

end A333041.P131200313058066307

/-!
# A333044: Exponential self-convolution of A232690.

The programs for A333044, there is no canonical definition to state claims against.
-/

/-! ## A333044.P53642316756342958

`A092038(A134091(n)+n)`
-/

namespace A333044.P53642316756342958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A134091 n + (n : ℤ)).toNat

end

end A333044.P53642316756342958

/-! ## A333044.P8225364722573214301

`A080513(∑[A090594(n)]²)`
-/

namespace A333044.P8225364722573214301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A333044.P8225364722573214301

/-!
# A333045: Expansion of Product_{k>=1} (1 + x^sigma(k)) / (1 - x^sigma(k)).

The programs for A333045, there is no canonical definition to state claims against.
-/

/-! ## A333045.P15250934507117024498

`A249870(A327047(n+1))`
-/

namespace A333045.P15250934507117024498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A327047 (n + 1)).toNat

end

end A333045.P15250934507117024498

/-! ## A333045.P14925124684229115711

`∑[A008796(A001222(n!))]`
-/

namespace A333045.P14925124684229115711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (A001222 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333045.P14925124684229115711

/-! ## A333045.P16270360100640486555

`A249870(round(sqrt(A099035(n+1))))`
-/

namespace A333045.P16270360100640486555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (SequenceMachineLib.roundAway (Real.sqrt (A099035 (n + 1) : ℝ))).toNat

end

end A333045.P16270360100640486555

/-!
# A333046: a(1) = 1; a(n) = n * Sum_{d|n, d < n, gcd(d, n/d) = 1} a(d) / d.

The programs for A333046, the canonical program `A333046.P18395749149837300678` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333046 has offset 1).

The definition of A333046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333046.P18395749149837300678

`(n+1)*A325446(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A333046

/-- `(n+1)*A325446(n+1)` -/
def P18395749149837300678.Spec : Prop :=
  ∀ n, P18395749149837300678.a n = A333046 (n + 1)

theorem P18395749149837300678.correct : P18395749149837300678.Spec := by
  intro n
  simp only [A333046, Nat.add_sub_cancel]

end A333046

/-! ## A333046.P14720024687239583090

`(n+1)*A050328(∏{p}[n+1, #])`
-/

namespace A333046.P14720024687239583090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050328 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A333046.P14720024687239583090

namespace A333046

/-- `(n+1)*A050328(∏{p}[n+1, #])` -/
def P14720024687239583090.Spec : Prop :=
  ∀ n, P14720024687239583090.a n = A333046 (n + 1)

end A333046

/-! ## A333046.P8709526391322503400

`(n+1)*A074206(∏{p}[n+1, #])`
-/

namespace A333046.P8709526391322503400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074206 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A333046.P8709526391322503400

namespace A333046

/-- `(n+1)*A074206(∏{p}[n+1, #])` -/
def P8709526391322503400.Spec : Prop :=
  ∀ n, P8709526391322503400.a n = A333046 (n + 1)

end A333046

/-! ## A333046.P14532312189166673892

`(n+1)*A254578(∏{p}[n+1, #])`
-/

namespace A333046.P14532312189166673892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254578 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A333046.P14532312189166673892

namespace A333046

/-- `(n+1)*A254578(∏{p}[n+1, #])` -/
def P14532312189166673892.Spec : Prop :=
  ∀ n, P14532312189166673892.a n = A333046 (n + 1)

end A333046

/-! ## A333046.P16328468252896915357

`(n+1)*A074206(A279350(A046523(n+1)))`
-/

namespace A333046.P16328468252896915357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074206 (A279350 (A046523 (n + 1)).toNat).toNat

end

end A333046.P16328468252896915357

namespace A333046

/-- `(n+1)*A074206(A279350(A046523(n+1)))` -/
def P16328468252896915357.Spec : Prop :=
  ∀ n, P16328468252896915357.a n = A333046 (n + 1)

end A333046

/-! ## A333046.P13492735255200617522

`(n+1)*A074206(A279350(A320389(n+1)))`
-/

namespace A333046.P13492735255200617522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074206 (A279350 (A320389 (n + 1)).toNat).toNat

end

end A333046.P13492735255200617522

namespace A333046

/-- `(n+1)*A074206(A279350(A320389(n+1)))` -/
def P13492735255200617522.Spec : Prop :=
  ∀ n, P13492735255200617522.a n = A333046 (n + 1)

end A333046

/-! ## A333046.P8641825450260699440

`(n+1)*A348611(∏{p}[n+1, #])`
-/

namespace A333046.P8641825450260699440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A348611 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A333046.P8641825450260699440

namespace A333046

/-- `(n+1)*A348611(∏{p}[n+1, #])` -/
def P8641825450260699440.Spec : Prop :=
  ∀ n, P8641825450260699440.a n = A333046 (n + 1)

end A333046

/-!
# A333047: Number of compositions of 2n into n powers of 2.

The programs for A333047, there is no canonical definition to state claims against.
-/

/-! ## A333047.P2589430233769490209

`A073266(A004277(n²))`
-/

namespace A333047.P2589430233769490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A004277 (n ^ 2)).toNat

end

end A333047.P2589430233769490209

/-! ## A333047.P8803631409357925383

`A073266(A163985(n²)+1)`
-/

namespace A333047.P8803631409357925383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A163985 (n ^ 2) + 1).toNat

end

end A333047.P8803631409357925383

/-! ## A333047.P6866366931755661152

`A073266(A028310(2*n²))`
-/

namespace A333047.P6866366931755661152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A028310 (2 * n ^ 2)).toNat

end

end A333047.P6866366931755661152

/-! ## A333047.P4552505579884692726

`A073266(n²+A028310(n²))`
-/

namespace A333047.P4552505579884692726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A333047.P4552505579884692726

/-! ## A333047.P16224081649885863495

`A073266(A038722(A058331(n)))`
-/

namespace A333047.P16224081649885863495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A038722 (A058331 n).toNat).toNat

end

end A333047.P16224081649885863495

/-! ## A333047.P17423243071970436514

`A073266(A058331(n)+A057428(n))`
-/

namespace A333047.P17423243071970436514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A058331 n + A057428 n).toNat

end

end A333047.P17423243071970436514

/-! ## A333047.P9182468040958427565

`A073266(A004277(n)*A028310(n))`
-/

namespace A333047.P9182468040958427565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A004277 n * A028310 n).toNat

end

end A333047.P9182468040958427565

/-! ## A333047.P18288234233415137580

`A073266(A058331(n)-A057428(n)²)`
-/

namespace A333047.P18288234233415137580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A058331 n - A057428 n ^ 2).toNat

end

end A333047.P18288234233415137580

/-! ## A333047.P616576821560811216

`A073266((A004277(n)-n)*A004277(n))`
-/

namespace A333047.P616576821560811216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A333047.P616576821560811216

/-!
# A333048: Number of compositions of n^2 into powers of n.

The programs for A333048, there is no canonical definition to state claims against.
-/

/-! ## A333048.P6255846341535878115

`∑{d}[A154122(A181950(n+1)), #]`
-/

namespace A333048.P6255846341535878115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (A181950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A333048.P6255846341535878115

/-! ## A333048.P58067458434788884

`A132468(A132467(n))+A132371(n+1)`
-/

namespace A333048.P58067458434788884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (A132467 n).toNat + A132371 (n + 1)

end

end A333048.P58067458434788884

/-!
# A333049: The number of edges inside a hexagram formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333049, there is no canonical definition to state claims against.
-/

/-! ## A333049.P9824739818408001509

`A331908(n+1)+A333116(n+1)-1`
-/

namespace A333049.P9824739818408001509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331908 (n + 1) + (A333116 (n + 1) - 1)

end

end A333049.P9824739818408001509

/-!
# A333051: a(1) = 1; a(n+1) = Sum_{d|n, gcd(d, n/d) = 1} a(n/d) * a(d).

The programs for A333051, there is no canonical definition to state claims against.
-/

/-! ## A333051.P14105034694011367818

`and(A220027(n), A247832(A011782(n)))`
-/

namespace A333051.P14105034694011367818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220027 n) (A247832 (A011782 n).toNat)

end

end A333051.P14105034694011367818

/-! ## A333051.P17074713688771297008

`∏{e}[n!, A001972(#)]`
-/

namespace A333051.P17074713688771297008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001972 (Nat.factorization (f1 n) p)

end

end A333051.P17074713688771297008

/-! ## A333051.P11175410351191667498

`∏{e}[n!, A005705(#)]`
-/

namespace A333051.P11175410351191667498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005705 (Nat.factorization (f1 n) p)

end

end A333051.P11175410351191667498

/-! ## A333051.P11249981997668601891

`∏{e}[n!, A019469(#)]`
-/

namespace A333051.P11249981997668601891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019469 (Nat.factorization (f1 n) p)

end

end A333051.P11249981997668601891

/-! ## A333051.P15430226106079055758

`∏{e}[n!, A029748(#)]`
-/

namespace A333051.P15430226106079055758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A029748 (Nat.factorization (f1 n) p)

end

end A333051.P15430226106079055758

/-!
# A333052: Numbers m such that d(m) = d(m+1) and d(k) < d(m) for all k < m such that d(k) = d(k+1), where d(m) is the number of divisors of m (A000005).

The programs for A333052, there is no canonical definition to state claims against.
-/

/-! ## A333052.P1875016435877221792

`A075036(lcm(A005705(n), A026386(n)))`
-/

namespace A333052.P1875016435877221792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075036 (Int.lcm (A005705 n) (A026386 n))

end

end A333052.P1875016435877221792

/-! ## A333052.P6861441464469815450

`A075036(lt[A278423(n), A083652(2*n)])`
-/

namespace A333052.P6861441464469815450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075036 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333052.P6861441464469815450

/-! ## A333052.P4836310090340601013

`A075036(A066994(n+1)%A127890(n+1))`
-/

namespace A333052.P4836310090340601013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075036 (Int.tmod (A066994 (n + 1)) (A127890 (n + 1))).toNat

end

end A333052.P4836310090340601013

/-!
# A333053: Numbers m such that min(d(m), d(m+1)) > min(d(k), d(k+1)) for all k < m, where d(m) is the number of divisors of m (A000005).

The programs for A333053, there is no canonical definition to state claims against.
-/

/-! ## A333053.P3009953585919658771

`∪[A053624(n+1)-A056594(4^n), A333054(n+1)]`
-/

namespace A333053.P3009953585919658771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (n + 1) - A056594 (4 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333053.P3009953585919658771

/-! ## A333053.P11684798903907942496

`∪[A053624(n+1)-A059841(4^n), A333054(n+1)]`
-/

namespace A333053.P11684798903907942496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (n + 1) - A059841 (4 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333053.P11684798903907942496

/-! ## A333053.P11708894712584197909

`A053624(n+1)-A056594(4^n)`
-/

namespace A333053.P11708894712584197909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (n + 1) - A056594 (4 ^ n)

end

end A333053.P11708894712584197909

/-!
# A333054: Numbers m such that r(m) > r(k) for all k < m, where r(m) = min(sigma(m)/m, sigma(m+1)/(m+1)), and sigma(m) is the sum of divisors of m (A000203).

The programs for A333054, there is no canonical definition to state claims against.
-/

/-! ## A333054.P13091978975489205934

`A333053(A029964(n+2))`
-/

namespace A333054.P13091978975489205934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333053 (A029964 (n + 2)).toNat

end

end A333054.P13091978975489205934

/-! ## A333054.P15617459700008879878

`A333053(A259390(n+2))`
-/

namespace A333054.P15617459700008879878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333053 (A259390 (n + 2)).toNat

end

end A333054.P15617459700008879878

/-! ## A333054.P90790736761743108

`A333053(∑[A006979(n)!])`
-/

namespace A333054.P90790736761743108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333054.P90790736761743108

/-!
# A333055: Numbers k such that k and k+1 have different (ordered) prime signatures and d(k) = d(k+1), where d(k) is the number of divisors of k (A000005).

The programs for A333055, the canonical program `A333055.P2793698031352279352` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333055 has offset 1).

The definition of A333055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333055.P9213394637553291455

`∩[A005237(n+1), A077656(n+1)]`
-/

namespace A333055.P9213394637553291455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333055.P9213394637553291455

namespace A333055

/-- `∩[A005237(n+1), A077656(n+1)]` -/
def P9213394637553291455.Spec : Prop :=
  ∀ n, (P9213394637553291455.a n : ℤ) = A333055 (n + 1)

end A333055

/-! ## A333055.P2793698031352279352

`∩[A005237(n+1), A083792(n+1)-1]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A333055

/-- `∩[A005237(n+1), A083792(n+1)-1]` -/
def P2793698031352279352.Spec : Prop :=
  ∀ n, (P2793698031352279352.a n : ℤ) = A333055 (n + 1)

theorem P2793698031352279352.correct : P2793698031352279352.Spec := by
  intro n
  simp only [A333055, Nat.add_sub_cancel]

end A333055

/-! ## A333055.P15594033456824704188

`∩[A005237(n+1), A023443(A083792(n+1))]`
-/

namespace A333055.P15594033456824704188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083792 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333055.P15594033456824704188

namespace A333055

/-- `∩[A005237(n+1), A023443(A083792(n+1))]` -/
def P15594033456824704188.Spec : Prop :=
  ∀ n, (P15594033456824704188.a n : ℤ) = A333055 (n + 1)

end A333055

/-! ## A333055.P17537205388664714237

`A023443(∩[A083792(n+1), A083795(n+1)])`
-/

namespace A333055.P17537205388664714237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A333055.P17537205388664714237

namespace A333055

/-- `A023443(∩[A083792(n+1), A083795(n+1)])` -/
def P17537205388664714237.Spec : Prop :=
  ∀ n, P17537205388664714237.a n = A333055 (n + 1)

end A333055

/-!
# A333057: Numbers k such that k and k+1 have different (ordered) prime signatures and d_3(k) = d_3(k+1), where d_3 is A007425.

The programs for A333057, there is no canonical definition to state claims against.
-/

/-! ## A333057.P7642248206791465602

`filter[A068208(n+3), A359472(#)]`
-/

namespace A333057.P7642248206791465602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068208 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A333057.P7642248206791465602

/-!
# A333058: 0, 1, or 2 primes at primorial(n) +- 1.

The programs for A333058, there is no canonical definition to state claims against.
-/

/-! ## A333058.P18336172637910507522

`A096831(n*a(floor(acot(n))))` with `a(0)=1, a(1)=1`
-/

namespace A333058.P18336172637910507522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A096831 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A333058.P18336172637910507522

/-! ## A333058.P6511749741828382044

`A096831(round(acot(n)+n))-C(n, n²)`
-/

namespace A333058.P6511749741828382044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096831 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A333058.P6511749741828382044

/-! ## A333058.P10234099718974099042

`A096831(round(a(n-1)/6+n))` with `a(0)=1, a(1)=1`
-/

namespace A333058.P10234099718974099042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A096831 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 6 + (n : ℚ))).toNat

end

end A333058.P10234099718974099042

/-! ## A333058.P13898554067037392389

`A096831(abs(1-n)+1)-C(n, n²)`
-/

namespace A333058.P13898554067037392389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096831 (|1 - (n : ℤ)| + 1).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A333058.P13898554067037392389

/-! ## A333058.P11903941309817607944

`A096831(n)-C(n, n²)*a(n-1)` with `a(0)=1`
-/

namespace A333058.P11903941309817607944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096831 n - (Nat.choose n (n ^ 2) : ℤ) * a (n - 1)

end

end A333058.P11903941309817607944

/-! ## A333058.P3841631366175146565

`A096831(round(acot(n²-a(n-1))+n))` with `a(0)=1, a(1)=1`
-/

namespace A333058.P3841631366175146565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A096831 (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((n ^ 2 : ℤ) - a (n - 1) : ℝ) + (n : ℝ))).toNat

end

end A333058.P3841631366175146565

/-! ## A333058.P13831619527010205757

`A096831(A233583(n+1))-char[n^18]`
-/

namespace A333058.P13831619527010205757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096831 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A333058.P13831619527010205757

/-! ## A333058.P2605359871831609672

`char[A014545(n+1)]+char[A057704(n+1)]`
-/

namespace A333058.P2605359871831609672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A333058.P2605359871831609672

/-! ## A333058.P7959604535964953530

`A096831(A028310(n))^A003415(n)`
-/

namespace A333058.P7959604535964953530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A028310 n).toNat : ℚ) ^ (A003415 n : ℤ)

end

end A333058.P7959604535964953530

/-! ## A333058.P16107115872018041141

`A096831(A233583(n+1))^A003415(n)`
-/

namespace A333058.P16107115872018041141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A233583 (n + 1)).toNat : ℚ) ^ (A003415 n : ℤ)

end

end A333058.P16107115872018041141

/-! ## A333058.P4068892350437495086

`A002075(a(A035161(n)))*A096831(n)` with `a(0)=1, a(1)=1`
-/

namespace A333058.P4068892350437495086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002075 (a (A035161 n).toNat).toNat * A096831 n

end

end A333058.P4068892350437495086

/-! ## A333058.P11658174837577146898

`A096831(A233583(n+1))^A046079(n+1)`
-/

namespace A333058.P11658174837577146898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A233583 (n + 1)).toNat : ℚ) ^ (A046079 (n + 1) : ℤ)

end

end A333058.P11658174837577146898

/-! ## A333058.P11993098959140543576

`A096831(A233583(n+1))^A221837(n+1)`
-/

namespace A333058.P11993098959140543576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A233583 (n + 1)).toNat : ℚ) ^ (A221837 (n + 1) : ℤ)

end

end A333058.P11993098959140543576

/-! ## A333058.P10929259736676490520

`A096831(A233583(n+1))^A002265(n+2)`
-/

namespace A333058.P10929259736676490520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A233583 (n + 1)).toNat : ℚ) ^ (A002265 (n + 2) : ℤ)

end

end A333058.P10929259736676490520

/-! ## A333058.P3113751460646449369

`A007318(a(n-2))*A096831(A233583(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A333058.P3113751460646449369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007318 (a (n - 2)).toNat * A096831 (A233583 (n + 1)).toNat

end

end A333058.P3113751460646449369

/-! ## A333058.P16503401754404803573

`A096831(A028310(n))^A001221(A008619(n))`
-/

namespace A333058.P16503401754404803573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A028310 n).toNat : ℚ) ^ (A001221 (A008619 n).toNat : ℤ)

end

end A333058.P16503401754404803573

/-! ## A333058.P11787478830194966116

`A096831(A028310(n))^A001221(A000010(n+1))`
-/

namespace A333058.P11787478830194966116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096831 (A028310 n).toNat : ℚ) ^ (A001221 (A000010 (n + 1)).toNat : ℤ)

end

end A333058.P11787478830194966116

/-!
# A333059: Number of entries in the second blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333059, there is no canonical definition to state claims against.
-/

/-! ## A333059.P9358748661224230948

`A319375(∑[n+1]+2)`
-/

namespace A333059.P9358748661224230948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333059.P9358748661224230948

/-! ## A333059.P1347507323088468649

`record[A319375(A080036(n))]`
-/

namespace A333059.P1347507323088468649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333059.P1347507323088468649

/-! ## A333059.P7779212706091192794

`record[or(A103452(n), A319375(n+1))]`
-/

namespace A333059.P7779212706091192794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A319375 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333059.P7779212706091192794

/-! ## A333059.P962150388696530891

`gcd(A000038(n), A319375(A252460(2*(n+2))))`
-/

namespace A333059.P962150388696530891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319375 (A252460 (2 * (n + 2))).toNat)

end

end A333059.P962150388696530891

/-! ## A333059.P10818634853492430568

`record[A319375(n+3)%A322383(n+2)]`
-/

namespace A333059.P10818634853492430568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319375 (n + 3)) (A322383 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333059.P10818634853492430568

/-!
# A333060: Number of entries in the third blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333060, there is no canonical definition to state claims against.
-/

/-! ## A333060.P18045850419414643699

`A319375(∑[n+2]+4)`
-/

namespace A333060.P18045850419414643699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A333060.P18045850419414643699

/-! ## A333060.P16768505572731006053

`or(char[1], A319375(A167614(n+1)))`
-/

namespace A333060.P16768505572731006053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319375 (A167614 (n + 1)).toNat)

end

end A333060.P16768505572731006053

/-! ## A333060.P16354575651211750887

`gcd(A000038(n), A319375(A167614(n+1)))`
-/

namespace A333060.P16354575651211750887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319375 (A167614 (n + 1)).toNat)

end

end A333060.P16354575651211750887

/-! ## A333060.P1417252148700857767

`lcm(A033999(n), A319375(A167614(n+1)))`
-/

namespace A333060.P1417252148700857767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A319375 (A167614 (n + 1)).toNat)

end

end A333060.P1417252148700857767

/-! ## A333060.P7908401031177682616

`char[A006369(n)]*A319375(A167614(n+1))`
-/

namespace A333060.P7908401031177682616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319375 (A167614 (n + 1)).toNat

end

end A333060.P7908401031177682616

/-! ## A333060.P17746877741727798940

`A319375(A167614(n+1))+A000035(4*n)`
-/

namespace A333060.P17746877741727798940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167614 (n + 1)).toNat + A000035 (4 * n)

end

end A333060.P17746877741727798940

/-! ## A333060.P16975398735181367780

`A319375(A167614(n+1))%A239997(n+1)`
-/

namespace A333060.P16975398735181367780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319375 (A167614 (n + 1)).toNat) (A239997 (n + 1))

end

end A333060.P16975398735181367780

/-!
# A333061: Number of entries in the fourth blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333061, there is no canonical definition to state claims against.
-/

/-! ## A333061.P11088573655658181700

`A319375(A052905(n)+9)`
-/

namespace A333061.P11088573655658181700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A052905 n + 9).toNat

end

end A333061.P11088573655658181700

/-! ## A333061.P1688896870844811805

`A319375(A055999(n)+10)`
-/

namespace A333061.P1688896870844811805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A055999 n + 10).toNat

end

end A333061.P1688896870844811805

/-! ## A333061.P2025854607965487439

`A319375(A167614(n+2)+1)`
-/

namespace A333061.P2025854607965487439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167614 (n + 2) + 1).toNat

end

end A333061.P2025854607965487439

/-! ## A333061.P16907030444439526668

`A319375(A166136(n+2)-2)`
-/

namespace A333061.P16907030444439526668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A166136 (n + 2) - 2).toNat

end

end A333061.P16907030444439526668

/-! ## A333061.P11959142661955644490

`A319375(A000124(n+3)+3)`
-/

namespace A333061.P11959142661955644490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000124 (n + 3) + 3).toNat

end

end A333061.P11959142661955644490

/-! ## A333061.P6988473339610059038

`A319375(A000217(n+3)+4)`
-/

namespace A333061.P6988473339610059038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000217 (n + 3) + 4).toNat

end

end A333061.P6988473339610059038

/-! ## A333061.P4764770601988679943

`A319375(A166136(n+1)+1+n)`
-/

namespace A333061.P4764770601988679943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A333061.P4764770601988679943

/-!
# A333062: Number of entries in the fifth blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333062, there is no canonical definition to state claims against.
-/

/-! ## A333062.P10690635187723705556

`A319375(∑[n+4]+11)`
-/

namespace A333062.P10690635187723705556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A333062.P10690635187723705556

/-! ## A333062.P963091406880943743

`A319375(A167499(n+3))+val(A017558(n), 2)`
-/

namespace A333062.P963091406880943743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167499 (n + 3)).toNat + (SequenceMachineLib.valuation (A017558 n).toNat 2 : ℤ)

end

end A333062.P963091406880943743

/-! ## A333062.P16484038681370166273

`A319375(A167499(n+3))+val(A161714(n), 2)`
-/

namespace A333062.P16484038681370166273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167499 (n + 3)).toNat + (SequenceMachineLib.valuation (A161714 n).toNat 2 : ℤ)

end

end A333062.P16484038681370166273

/-! ## A333062.P10088973886518635321

`A319375(A167499(n+3))+A010051(2*(n+2))`
-/

namespace A333062.P10088973886518635321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167499 (n + 3)).toNat + A010051 (2 * (n + 2))

end

end A333062.P10088973886518635321

/-! ## A333062.P14258051480738811706

`A319375(A167499(n+3))+val(A050268(n+1), 2)`
-/

namespace A333062.P14258051480738811706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167499 (n + 3)).toNat + (SequenceMachineLib.valuation (A050268 (n + 1)).toNat 2 : ℤ)

end

end A333062.P14258051480738811706

/-! ## A333062.P415147209325115531

`A319375(A167499(n+3))+val(A157486(n+1), 2)`
-/

namespace A333062.P415147209325115531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167499 (n + 3)).toNat + (SequenceMachineLib.valuation (A157486 (n + 1)).toNat 2 : ℤ)

end

end A333062.P415147209325115531

/-!
# A333063: Number of entries in the sixth blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333063, there is no canonical definition to state claims against.
-/

/-! ## A333063.P4772204420369919185

`A319375(∑[A020710(n)]+16)`
-/

namespace A333063.P4772204420369919185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A333063.P4772204420369919185

/-! ## A333063.P14215333182175895839

`A319375(A000124(n+5)+5)`
-/

namespace A333063.P14215333182175895839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000124 (n + 5) + 5).toNat

end

end A333063.P14215333182175895839

/-! ## A333063.P510946078616525423

`A319375(A000217(n+5)+6)`
-/

namespace A333063.P510946078616525423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000217 (n + 5) + 6).toNat

end

end A333063.P510946078616525423

/-! ## A333063.P8091729921684308973

`A319375(A027379(n+3)+9)`
-/

namespace A333063.P8091729921684308973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A027379 (n + 3) + 9).toNat

end

end A333063.P8091729921684308973

/-! ## A333063.P14451984911778609352

`A319375(A055998(n+3)+9)`
-/

namespace A333063.P14451984911778609352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A055998 (n + 3) + 9).toNat

end

end A333063.P14451984911778609352

/-! ## A333063.P11050106115282315317

`A319375(A055999(n+4)-(2*n+1))`
-/

namespace A333063.P11050106115282315317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A333063.P11050106115282315317

/-!
# A333064: Number of entries in the seventh blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333064, there is no canonical definition to state claims against.
-/

/-! ## A333064.P9543582385230040040

`A319375(A166136(n+5)+1)`
-/

namespace A333064.P9543582385230040040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A166136 (n + 5) + 1).toNat

end

end A333064.P9543582385230040040

/-! ## A333064.P3444555221410436175

`A319375(A000217(n+6)+7)`
-/

namespace A333064.P3444555221410436175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000217 (n + 6) + 7).toNat

end

end A333064.P3444555221410436175

/-! ## A333064.P4159967007232854758

`A319375(A055999(n+3)+13)`
-/

namespace A333064.P4159967007232854758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A055999 (n + 3) + 13).toNat

end

end A333064.P4159967007232854758

/-! ## A333064.P1274980557565095100

`A319375(A155212(n+2)+15)`
-/

namespace A333064.P1274980557565095100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A155212 (n + 2) + 15).toNat

end

end A333064.P1274980557565095100

/-! ## A333064.P17026516196245866884

`A319375(A000124(n+7)-(n+1))`
-/

namespace A333064.P17026516196245866884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A333064.P17026516196245866884

/-!
# A333065: Number of entries in the eighth blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333065, there is no canonical definition to state claims against.
-/

/-! ## A333065.P7951864991954338735

`A319375(A167499(n+6)+3)`
-/

namespace A333065.P7951864991954338735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A167499 (n + 6) + 3).toNat

end

end A333065.P7951864991954338735

/-! ## A333065.P14923290123789295091

`A319375(A000217(n+7)+8)`
-/

namespace A333065.P14923290123789295091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000217 (n + 7) + 8).toNat

end

end A333065.P14923290123789295091

/-! ## A333065.P9021781585922192845

`A319375(A155212(n+3)+16)`
-/

namespace A333065.P9021781585922192845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A155212 (n + 3) + 16).toNat

end

end A333065.P9021781585922192845

/-! ## A333065.P10969756000392268351

`A319375(eq[7, A002262(n)]+1)`
-/

namespace A333065.P10969756000392268351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333065.P10969756000392268351

/-! ## A333065.P12139784414368558039

`A319375(eq[9, A131818(n+1)])`
-/

namespace A333065.P12139784414368558039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333065.P12139784414368558039

/-!
# A333066: Number of entries in the ninth blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333066, there is no canonical definition to state claims against.
-/

/-! ## A333066.P1202027722101552046

`A319375(eq[17, A066657(n)])`
-/

namespace A333066.P1202027722101552046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333066.P1202027722101552046

/-! ## A333066.P17255313486284982918

`A319375(A027379(n+6)+12)`
-/

namespace A333066.P17255313486284982918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A027379 (n + 6) + 12).toNat

end

end A333066.P17255313486284982918

/-! ## A333066.P11477043657837592996

`A319375(eq[10, A131818(n+1)])`
-/

namespace A333066.P11477043657837592996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333066.P11477043657837592996

/-! ## A333066.P2708463059987343860

`A319375(eq[9, A002260(n+1)]+1)`
-/

namespace A333066.P2708463059987343860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333066.P2708463059987343860

/-! ## A333066.P8681516525244498176

`A319375(C(A316650(n+1)+n, 2)-n)`
-/

namespace A333066.P8681516525244498176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (Nat.choose (A316650 (n + 1) + (n : ℤ)).toNat 2 - n)

end

end A333066.P8681516525244498176

/-!
# A333067: Number of entries in the tenth blocks of all set partitions of [n] when blocks are ordered by decreasing lengths.

The programs for A333067, there is no canonical definition to state claims against.
-/

/-! ## A333067.P5985552716740330392

`A319375(A000124(n+9)+9)`
-/

namespace A333067.P5985552716740330392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (A000124 (n + 9) + 9).toNat

end

end A333067.P5985552716740330392

/-! ## A333067.P9412656229166578585

`A319375(eq[9, A002262(n)]+1)`
-/

namespace A333067.P9412656229166578585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333067.P9412656229166578585

/-! ## A333067.P3416418840739153952

`A319375(eq[11, A131818(n+1)])`
-/

namespace A333067.P3416418840739153952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333067.P3416418840739153952

/-! ## A333067.P10847628554640927943

`A319375(eq[10, A002260(n+1)]+1)`
-/

namespace A333067.P10847628554640927943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333067.P10847628554640927943

/-! ## A333067.P4849621978035963785

`A319375(eq[11, A123229(n+1)])`
-/

namespace A333067.P4849621978035963785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333067.P4849621978035963785

/-!
# A333068: a(1) = 1; for n > 1, a(n) = n*(n-1)/2 + ((a(n-1)-1) mod n) + 1, the a(n-1)-th term of the n-th row of the triangle of positive integers, indexed in cyclic manner.

The programs for A333068, the canonical program `A333068.P10880590981493605124` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333068 has offset 1).

The definition of A333068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333068.P10880590981493605124

`(n+1)*n/2+(a(n-1)-1)%(n+1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A333068

/-- `(n+1)*n/2+(a(n-1)-1)%(n+1)+1` -/
def P10880590981493605124.Spec : Prop :=
  ∀ n, P10880590981493605124.a n = (A333068 (n + 1) : ℚ)

end A333068

/-! ## A333068.P17260672715695083465

`∑[n]+(a(n-1)-1)%(n+1)+1` with `a(0)=1`
-/

namespace A333068.P17260672715695083465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (Int.tmod (a (n - 1) - 1) (n + 1 : ℤ) + 1)

end

end A333068.P17260672715695083465

namespace A333068

/-- `∑[n]+(a(n-1)-1)%(n+1)+1` -/
def P17260672715695083465.Spec : Prop :=
  ∀ n, P17260672715695083465.a n = A333068 (n + 1)

end A333068

/-! ## A333068.P12780214181570509979

`∑[2*(n+1)]-A074136(n+1)`
-/

namespace A333068.P12780214181570509979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A074136 (n + 1)

end

end A333068.P12780214181570509979

namespace A333068

/-- `∑[2*(n+1)]-A074136(n+1)` -/
def P12780214181570509979.Spec : Prop :=
  ∀ n, P12780214181570509979.a n = A333068 (n + 1)

end A333068

/-! ## A333068.P12586414842322475795

`∑[n+1]-A008344(ceil(n/2)+1)`
-/

namespace A333068.P12586414842322475795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008344 (⌈(n : ℚ) / 2⌉ + 1).toNat

end

end A333068.P12586414842322475795

namespace A333068

/-- `∑[n+1]-A008344(ceil(n/2)+1)` -/
def P12586414842322475795.Spec : Prop :=
  ∀ n, P12586414842322475795.a n = A333068 (n + 1)

end A333068

/-! ## A333068.P2601157177692795725

`A000217(n+1)-(n*a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A333068.P2601157177692795725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000217 (n + 1) - Int.tmod ((n : ℤ) * a (n - 1)) (n + 1 : ℤ)

end

end A333068.P2601157177692795725

namespace A333068

/-- `A000217(n+1)-(n*a(n-1))%(n+1)` -/
def P2601157177692795725.Spec : Prop :=
  ∀ n, P2601157177692795725.a n = A333068 (n + 1)

end A333068

/-! ## A333068.P6783713894480602866

`A038722(A074136(n+1)-n)`
-/

namespace A333068.P6783713894480602866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A074136 (n + 1) - (n : ℤ)).toNat

end

end A333068.P6783713894480602866

namespace A333068

/-- `A038722(A074136(n+1)-n)` -/
def P6783713894480602866.Spec : Prop :=
  ∀ n, P6783713894480602866.a n = A333068 (n + 1)

end A333068

/-! ## A333068.P7317700566793245149

`A028387(n)+1-A074136(n+1)`
-/

namespace A333068.P7317700566793245149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A074136 (n + 1))

end

end A333068.P7317700566793245149

namespace A333068

/-- `A028387(n)+1-A074136(n+1)` -/
def P7317700566793245149.Spec : Prop :=
  ∀ n, P7317700566793245149.a n = A333068 (n + 1)

end A333068

/-! ## A333068.P5167368934642822994

`A004736(A074136(n+1)+2)+∑[n]`
-/

namespace A333068.P5167368934642822994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A074136 (n + 1) + 2).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333068.P5167368934642822994

namespace A333068

/-- `A004736(A074136(n+1)+2)+∑[n]` -/
def P5167368934642822994.Spec : Prop :=
  ∀ n, P5167368934642822994.a n = A333068 (n + 1)

end A333068

/-!
# A333069: Number of lattice paths from (0,0) to (n,0) that do not go below the x-axis, and at (x,y) only allow steps (1,v) with v in {-1,0,1,...,y+1}.

The programs for A333069, there is no canonical definition to state claims against.
-/

/-! ## A333069.P12145265620002092398

`A333070(n)/(n+1)`
-/

namespace A333069.P12145265620002092398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333070 n : ℚ) / (n + 1 : ℚ)

end

end A333069.P12145265620002092398

/-! ## A333069.P15247866115161824460

`floor(A333070(n)/A008611(3*n))`
-/

namespace A333069.P15247866115161824460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333070 n : ℚ) / (A008611 (3 * n) : ℚ)⌋

end

end A333069.P15247866115161824460

/-! ## A333069.P9180607723029371617

`ceil(A333070(n)/A008619(2*n))`
-/

namespace A333069.P9180607723029371617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333070 n : ℚ) / (A008619 (2 * n) : ℚ)⌉

end

end A333069.P9180607723029371617

/-! ## A333069.P6387308173934945948

`A333070(n)/A333106(n)*A333105(n)`
-/

namespace A333069.P6387308173934945948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333070 n : ℚ) / (A333106 n : ℚ) * (A333105 n : ℚ)

end

end A333069.P6387308173934945948

/-! ## A333069.P17282221103744649404

`n-(A005843(n)/2-A333070(n)/A008611(3*n))`
-/

namespace A333069.P17282221103744649404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((A005843 n : ℚ) / 2 - (A333070 n : ℚ) / (A008611 (3 * n) : ℚ))

end

end A333069.P17282221103744649404

/-!
# A333070: Total number of nodes summed over all lattice paths from (0,0) to (n,0) that do not go below the x-axis, and at (x,y) only allow steps (1,v) with v in {-1,0,1,...,y+1}.

The programs for A333070, there is no canonical definition to state claims against.
-/

/-! ## A333070.P14906153659427047333

`(n+1)*A333069(n)`
-/

namespace A333070.P14906153659427047333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333069 n

end

end A333070.P14906153659427047333

/-! ## A333070.P1629909447009547472

`A333069(n)/A333105(n)*A333106(n)`
-/

namespace A333070.P1629909447009547472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333069 n : ℚ) / (A333105 n : ℚ) * (A333106 n : ℚ)

end

end A333070.P1629909447009547472

/-! ## A333070.P15189103005755827106

`A333069(n)/A333647(n)*A333680(n)`
-/

namespace A333070.P15189103005755827106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333069 n : ℚ) / (A333647 n : ℚ) * (A333680 n : ℚ)

end

end A333070.P15189103005755827106

/-! ## A333070.P5683449430493343769

`A333069(n)*A341315(A000124(n))`
-/

namespace A333070.P5683449430493343769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 n * A341315 (A000124 n).toNat

end

end A333070.P5683449430493343769

/-! ## A333070.P4274427343028554379

`A000027(A333069(n))*A005496(n)`
-/

namespace A333070.P4274427343028554379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A333069 n).toNat * A005496 n

end

end A333070.P4274427343028554379

/-!
# A333071: Total area under all lattice paths from (0,0) to (n,0) that do not go below the x-axis, and at (x,y) only allow steps (1,v) with v in {-1,0,1,...,y+1}.

The programs for A333071, there is no canonical definition to state claims against.
-/

/-! ## A333071.P10317828783127166944

`∑[A333348(A109437(n))]`
-/

namespace A333071.P10317828783127166944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A109437 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333071.P10317828783127166944

/-! ## A333071.P16130048464370039662

`A004526(A059966(2*n+1))-A002026(n)`
-/

namespace A333071.P16130048464370039662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059966 (2 * n + 1)).toNat - A002026 n

end

end A333071.P16130048464370039662

/-! ## A333071.P15961358734947216761

`A054897(A006253(n))`
-/

namespace A333071.P15961358734947216761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (A006253 n).toNat

end

end A333071.P15961358734947216761

/-! ## A333071.P2919462410961301793

`A054897(Δ[A109437(n)])`
-/

namespace A333071.P2919462410961301793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (f1 (n + 1) - f1 n).toNat

end

end A333071.P2919462410961301793

/-!
# A333072: Least k such that Sum_{i=1..n} k^i / i is a positive integer.

The programs for A333072, there is no canonical definition to state claims against.
-/

/-! ## A333072.P7246556161772698824

`A102631(lcm(A055204(n+1), A248765(n+1)))`
-/

namespace A333072.P7246556161772698824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (Int.lcm (A055204 (n + 1)) (A248765 (n + 1)))

end

end A333072.P7246556161772698824

/-! ## A333072.P7335903138866006421

`A007947(A005566(n))*A117462(n+1)`
-/

namespace A333072.P7335903138866006421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A005566 n).toNat * A117462 (n + 1)

end

end A333072.P7335903138866006421

/-!
# A333073: Least k such that Sum_{i=1..n} (-k)^i / i is a positive integer.

The programs for A333073, there is no canonical definition to state claims against.
-/

/-! ## A333073.P10915556418665770908

`A019555(A056040(n+1)*A320200(n))`
-/

namespace A333073.P10915556418665770908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A056040 (n + 1) * A320200 n).toNat

end

end A333073.P10915556418665770908

/-! ## A333073.P14194921459123965515

`A287620(∏[A006530((n+1)/4^val(n+1, 4))])`
-/

namespace A333073.P14194921459123965515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287620 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333073.P14194921459123965515

/-! ## A333073.P10737420351838841177

`A001405(n)*A346703(A032559(n+1))`
-/

namespace A333073.P10737420351838841177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A346703 (A032559 (n + 1)).toNat

end

end A333073.P10737420351838841177

/-! ## A333073.P5644774961726751887

`A001405(n)*A346703(A207954(n+1))`
-/

namespace A333073.P5644774961726751887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A346703 (A207954 (n + 1)).toNat

end

end A333073.P5644774961726751887

/-!
# A333074: Least k such that Sum_{i=0..n} (-k)^i / i! is a positive integer.

The programs for A333074, there is no canonical definition to state claims against.
-/

/-! ## A333074.P15477573598414833767

`A329378(record[A120108(n)])`
-/

namespace A333074.P15477573598414833767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333074.P15477573598414833767

/-! ## A333074.P17577793516971412144

`gcd(lcm(n, A107345(A052899(n))), n!)`
-/

namespace A333074.P17577793516971412144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Int.lcm (n : ℤ) (A107345 (A052899 n).toNat)) (Nat.factorial n)

end

end A333074.P17577793516971412144

/-! ## A333074.P2342374439288851224

`A226055(n)/A348610(A004156(n))`
-/

namespace A333074.P2342374439288851224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226055 n : ℚ) / (A348610 (A004156 n).toNat : ℚ)

end

end A333074.P2342374439288851224

/-! ## A333074.P6311630462354718521

`gcd(A194186(A241786(n)), A226055(n))`
-/

namespace A333074.P6311630462354718521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194186 (A241786 n).toNat) (A226055 n)

end

end A333074.P6311630462354718521

/-! ## A333074.P16618603592426322366

`A028310(lcm(n, A107345(A052899(n))))`
-/

namespace A333074.P16618603592426322366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (n : ℤ) (A107345 (A052899 n).toNat))

end

end A333074.P16618603592426322366

/-!
# A333075: The number of regions inside an octagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333075, there is no canonical definition to state claims against.
-/

/-! ## A333075.P7272369740706300716

`A333110(n+1)+1-A333109(n+1)`
-/

namespace A333075.P7272369740706300716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333110 (n + 1) + (1 - A333109 (n + 1))

end

end A333075.P7272369740706300716

/-!
# A333077: Number of maximal independent sets in the binary de Bruijn graph of order n.

The programs for A333077, there is no canonical definition to state claims against.
-/

/-! ## A333077.P5038291923283959347

`A008949(∑[A000041(2^n-(C(n, 3)+n))])`
-/

namespace A333077.P5038291923283959347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 ^ n - (Nat.choose n 3 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333077.P5038291923283959347

/-! ## A333077.P16384022619256554186

`A245588(n)+A189760(A275311(n))`
-/

namespace A333077.P16384022619256554186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245588 n + A189760 (A275311 n).toNat

end

end A333077.P16384022619256554186

/-!
# A333079: The largest nontrivial divisor of n equals the sum of the other nontrivial divisors of n.

The programs for A333079, there is no canonical definition to state claims against.
-/

/-! ## A333079.P16734920779435382240

`A247079(A080036(n)%A247080(n+1))`
-/

namespace A333079.P16734920779435382240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (Int.tmod (A080036 n) (A247080 (n + 1))).toNat

end

end A333079.P16734920779435382240

/-! ## A333079.P16295321535120550973

`filter[A247079(n+1), A353638(#)]`
-/

namespace A333079.P16295321535120550973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A333079.P16295321535120550973

/-!
# A333080: Number of fixed Tangles of size n.

The programs for A333080, there is no canonical definition to state claims against.
-/

/-! ## A333080.P18003950363811283380

`A004526(A150268(n)+A150263(n))`
-/

namespace A333080.P18003950363811283380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150268 n + A150263 n).toNat

end

end A333080.P18003950363811283380

/-! ## A333080.P12696484690509645524

`A123108(A150268(n)+A150263(n))`
-/

namespace A333080.P12696484690509645524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150268 n + A150263 n).toNat

end

end A333080.P12696484690509645524

/-! ## A333080.P5147779906449739432

`A150264(n)-A346700(A237914(n))`
-/

namespace A333080.P5147779906449739432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150264 n - A346700 (A237914 n).toNat

end

end A333080.P5147779906449739432

/-!
# A333081: Primes p such that p+q+1 is prime, where q is the digit-reversal of p.

The programs for A333081, there is no canonical definition to state claims against.
-/

/-! ## A333081.P9011480885271115115

`p?[A000040(n+1)*A001222(A061227(n)+1)]`
-/

namespace A333081.P9011480885271115115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A061227 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333081.P9011480885271115115

/-! ## A333081.P573378374758023650

`p?[A001222(A061227(n)+1)*A008578(n+2)]`
-/

namespace A333081.P573378374758023650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061227 n + 1).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333081.P573378374758023650

/-! ## A333081.P12392149188579347346

`p?[n*A007920(A056964(n))]`
-/

namespace A333081.P12392149188579347346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 (A056964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333081.P12392149188579347346

/-! ## A333081.P8977641566519560985

`eq[A007920(A056964(n)), A107463(n)]`
-/

namespace A333081.P8977641566519560985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333081.P8977641566519560985

/-! ## A333081.P2311693358439429415

`record[A000040(n+1)/A002033(A061227(n))]`
-/

namespace A333081.P2311693358439429415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A002033 (A061227 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333081.P2311693358439429415

/-!
# A333082: Number of permutations sigma of [n] such that all values sigma(k)/k for 1 <= k <= n are pairwise distinct.

The programs for A333082, there is no canonical definition to state claims against.
-/

/-! ## A333082.P14046029388599514260

`A008612(4*A009697(n))`
-/

namespace A333082.P14046029388599514260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (4 * A009697 n).toNat

end

end A333082.P14046029388599514260

/-! ## A333082.P15080765079478389176

`A007306(A221184(n)-A005038(n+1))`
-/

namespace A333082.P15080765079478389176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A221184 n - A005038 (n + 1)).toNat

end

end A333082.P15080765079478389176

/-! ## A333082.P14631620121141376628

`A187185(A106519(n+1)*A289402(n))`
-/

namespace A333082.P14631620121141376628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A106519 (n + 1) * A289402 n).toNat

end

end A333082.P14631620121141376628

/-!
# A333083: Number of permutations sigma of [n] such that all values k * sigma(k) for 1 <= k <= n are pairwise distinct.

The programs for A333083, there is no canonical definition to state claims against.
-/

/-! ## A333083.P13878348128205379499

`2*A358558(A077643(n))+1`
-/

namespace A333083.P13878348128205379499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358558 (A077643 n).toNat + 1

end

end A333083.P13878348128205379499

/-! ## A333083.P928553845017177112

`2*A358558(A079580(n))+1`
-/

namespace A333083.P928553845017177112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358558 (A079580 n).toNat + 1

end

end A333083.P928553845017177112

/-! ## A333083.P414872161156531232

`2*A358558(A097332(n))+1`
-/

namespace A333083.P414872161156531232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358558 (A097332 n).toNat + 1

end

end A333083.P414872161156531232

/-!
# A333084: a(n) equals the smallest Sophie Germain prime q such that pi_(p,2p+1)(q,10,(1,3)) - pi_(p,2p+1)(q,10,(3,1)) = n, where pi_(p,2p+1)(q,10,(b,c)) equals the number of Sophie Germain primes A005384(i) such A005384(i) <= q and (A005384(i),A005384(i+1)) == (b,c) (mod 10).

The programs for A333084, there is no canonical definition to state claims against.
-/

/-! ## A333084.P5241845992180936588

`A132245(A226671(n+1))`
-/

namespace A333084.P5241845992180936588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132245 (A226671 (n + 1)).toNat

end

end A333084.P5241845992180936588

/-!
# A333085: Sequence of primes in which each term a(n) = 10*i + d gives the position i and value d of a digit in the concatenation of all terms (see comments).

The programs for A333085, there is no canonical definition to state claims against.
-/

/-! ## A333085.P8842381766328999817

`p?[A034891((∏{d}[n+1, #]/(n+1))%(∏{d}[n+1, #]-n))+10*n]`
-/

namespace A333085.P8842381766328999817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (Int.tmod (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n : ℤ))).toNat + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333085.P8842381766328999817

/-!
# A333086: Array read by antidiagonals: row n consists of the primes in row n of the array A333028.

The programs for A333086, there is no canonical definition to state claims against.
-/

/-! ## A333086.P12754567884457319238

`A000040(A333087(n+1))`
-/

namespace A333086.P12754567884457319238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333087 (n + 1)).toNat

end

end A333086.P12754567884457319238

/-! ## A333086.P1661012509333953039

`A008578(A333087(n+1)+1)`
-/

namespace A333086.P1661012509333953039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333087 (n + 1) + 1).toNat

end

end A333086.P1661012509333953039

/-! ## A333086.P2846016705887877819

`A182986(A333087(n+1)+1)`
-/

namespace A333086.P2846016705887877819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A333087 (n + 1) + 1).toNat

end

end A333086.P2846016705887877819

/-! ## A333086.P12259172497474191555

`A158611(A333087(n+1)+2)`
-/

namespace A333086.P12259172497474191555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A333087 (n + 1) + 2).toNat

end

end A333086.P12259172497474191555

/-! ## A333086.P6545026687175273290

`A073846(2*A333087(n+1))`
-/

namespace A333086.P6545026687175273290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A333087 (n + 1)).toNat

end

end A333086.P6545026687175273290

/-!
# A333087: Array (p(n,k)) read by antidiagonals: p(n,k) is the index of the prime in position (n,k) in the array A333086.

The programs for A333087, there is no canonical definition to state claims against.
-/

/-! ## A333087.P5858856727868247617

`A000720(A333086(n+1))`
-/

namespace A333087.P5858856727868247617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A333086 (n + 1)).toNat

end

end A333087.P5858856727868247617

/-! ## A333087.P5504607272800725137

`A061395(p?[A333086(n+1)])`
-/

namespace A333087.P5504607272800725137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333087.P5504607272800725137

/-! ## A333087.P14702240878018104971

`A066328(p?[A333086(n+1)])`
-/

namespace A333087.P14702240878018104971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333087.P14702240878018104971

/-! ## A333087.P17214513648794307966

`A297109(p?[A333086(n+1)])`
-/

namespace A333087.P17214513648794307966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333087.P17214513648794307966

/-! ## A333087.P13195238572797126545

`A302039(p?[A333086(n+1)])`
-/

namespace A333087.P13195238572797126545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333087.P13195238572797126545

/-!
# A333090: a(n) is equal to the n-th order Taylor polynomial (centered at 0) of S(x)^n evaluated at x = 1, where S(x) = (1 - x - sqrt(1 - 6*x + x^2))/(2*x) is the o.g.f. of the Schröder numbers A006318.

The programs for A333090, there is no canonical definition to state claims against.
-/

/-! ## A333090.P12833777081225790481

`A336858(∑[4*n])`
-/

namespace A333090.P12833777081225790481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333090.P12833777081225790481

/-! ## A333090.P5576334343028042407

`A336859(∑[4*n])`
-/

namespace A333090.P5576334343028042407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333090.P5576334343028042407

/-! ## A333090.P469972608223360463

`record[A336859(A325689(n))]`
-/

namespace A333090.P469972608223360463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (A325689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333090.P469972608223360463

/-! ## A333090.P10720945728490410569

`record[A336859(∑[A110657(n)])]`
-/

namespace A333090.P10720945728490410569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333090.P10720945728490410569

/-! ## A333090.P18258394810574256048

`record[root(A336858(n), A143182(n))]`
-/

namespace A333090.P18258394810574256048
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336858 n : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333090.P18258394810574256048

/-!
# A333091: a(n) is the n-th order Taylor polynomial (centered at 0) of S(x)^(2*n ) evaluated at x = 1, where S(x) = (1 - x - sqrt(1 - 6*x + x^2))/(2*x) is the o.g.f. of the Schröder numbers A006318.

The programs for A333091, there is no canonical definition to state claims against.
-/

/-! ## A333091.P15698745652685328983

`A336858(A062725(n))`
-/

namespace A333091.P15698745652685328983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A062725 n).toNat

end

end A333091.P15698745652685328983

/-! ## A333091.P16902059052484814287

`A336859(A062728(n))`
-/

namespace A333091.P16902059052484814287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (A062728 n).toNat

end

end A333091.P16902059052484814287

/-! ## A333091.P6295950102179862558

`A336859(A062725(n)+n)`
-/

namespace A333091.P6295950102179862558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (A062725 n + (n : ℤ)).toNat

end

end A333091.P6295950102179862558

/-! ## A333091.P7858171850851465232

`A336858(A081266(n)+n)`
-/

namespace A333091.P7858171850851465232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A081266 n + (n : ℤ)).toNat

end

end A333091.P7858171850851465232

/-! ## A333091.P7948472800246232626

`A336858(A022266(n)+A008486(n))`
-/

namespace A333091.P7948472800246232626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A022266 n + A008486 n).toNat

end

end A333091.P7948472800246232626

/-!
# A333092: a(n) is the n-th order Taylor polynomial (centered at 0) of S(x)^(3*n) evaluated at x = 1, where S(x) = (1 - x - sqrt(1 - 6*x + x^2))/(2*x) is the o.g.f. of the Schröder numbers A006318.

The programs for A333092, there is no canonical definition to state claims against.
-/

/-! ## A333092.P14855185442349680144

`A336858(A139276(n))`
-/

namespace A333092.P14855185442349680144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A139276 n).toNat

end

end A333092.P14855185442349680144

/-! ## A333092.P1541774161566814226

`A336859(A139277(n))`
-/

namespace A333092.P1541774161566814226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (A139277 n).toNat

end

end A333092.P1541774161566814226

/-! ## A333092.P10535579799143155528

`A336858(n*A017101(n))`
-/

namespace A333092.P10535579799143155528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 ((n : ℤ) * A017101 n).toNat

end

end A333092.P10535579799143155528

/-! ## A333092.P7552855413231637482

`A336859(n*A004770(n+1))`
-/

namespace A333092.P7552855413231637482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A333092.P7552855413231637482

/-! ## A333092.P10470916438174347979

`A336858(A139274(n)+A008574(n))`
-/

namespace A333092.P10470916438174347979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A139274 n + A008574 n).toNat

end

end A333092.P10470916438174347979

/-!
# A333093: a(n) is equal to the n-th order Taylor polynomial (centered at 0) of c(x)^n evaluated at x = 1, where c(x) = (1 - sqrt(1 - 4*x))/(2*x) is the o.g.f. of the Catalan numbers A000108.

The programs for A333093, there is no canonical definition to state claims against.
-/

/-! ## A333093.P11997738929090758997

`A091491(∑[4*n])`
-/

namespace A333093.P11997738929090758997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333093.P11997738929090758997

/-! ## A333093.P2741252717245546473

`A096465(∑[4*n])`
-/

namespace A333093.P2741252717245546473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333093.P2741252717245546473

/-! ## A333093.P12159343519350833090

`record[A091491((n+1)*A004526(n))]`
-/

namespace A333093.P12159343519350833090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 ((n + 1 : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333093.P12159343519350833090

/-! ## A333093.P9504666762127666319

`A323224(2*(n+1)²)`
-/

namespace A333093.P9504666762127666319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (2 * (n + 1) ^ 2)

end

end A333093.P9504666762127666319

/-! ## A333093.P18309793033733447501

`A283054(2*n²)`
-/

namespace A333093.P18309793033733447501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (2 * n ^ 2)

end

end A333093.P18309793033733447501

/-!
# A333094: a(n) is the n-th order Taylor polynomial (centered at 0) of c(x)^(2*n) evaluated at x = 1, where c(x) = (1 - sqrt(1 - 4*x))/(2*x) is the o.g.f. of the Catalan numbers A000108.

The programs for A333094, there is no canonical definition to state claims against.
-/

/-! ## A333094.P14610708804992350980

`A091491(A062728(n))`
-/

namespace A333094.P14610708804992350980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A062728 n).toNat

end

end A333094.P14610708804992350980

/-! ## A333094.P18142088204909216592

`A096465(A062725(n))`
-/

namespace A333094.P18142088204909216592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A062725 n).toNat

end

end A333094.P18142088204909216592

/-! ## A333094.P10702908078185984531

`A091491(A062725(n)+n)`
-/

namespace A333094.P10702908078185984531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A062725 n + (n : ℤ)).toNat

end

end A333094.P10702908078185984531

/-! ## A333094.P11605403899749235034

`A323224(A117625(n+1))`
-/

namespace A333094.P11605403899749235034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (A117625 (n + 1)).toNat

end

end A333094.P11605403899749235034

/-! ## A333094.P15691871270663866232

`A283054(A022266(n))`
-/

namespace A333094.P15691871270663866232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A022266 n).toNat

end

end A333094.P15691871270663866232

/-!
# A333095: a(n) = the n-th order Taylor polynomial (centered at 0) of c(x)^(3*n) evaluated at x = 1, where c(x) = (1 - sqrt(1 - 4*x))/(2*x) is the o.g.f. of the sequence of Catalan numbers A000108.

The programs for A333095, there is no canonical definition to state claims against.
-/

/-! ## A333095.P12222265920585404372

`A091491(A139277(n))`
-/

namespace A333095.P12222265920585404372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A139277 n).toNat

end

end A333095.P12222265920585404372

/-! ## A333095.P4786369609961357234

`A096465(A139276(n))`
-/

namespace A333095.P4786369609961357234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A139276 n).toNat

end

end A333095.P4786369609961357234

/-! ## A333095.P8877887210502711307

`A096465(n*A017101(n))`
-/

namespace A333095.P8877887210502711307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 ((n : ℤ) * A017101 n).toNat

end

end A333095.P8877887210502711307

/-! ## A333095.P6037229469906696249

`A096465(A033954(2*n)/2)`
-/

namespace A333095.P6037229469906696249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (SequenceMachineLib.roundAway ((A033954 (2 * n) : ℚ) / 2)).toNat

end

end A333095.P6037229469906696249

/-! ## A333095.P17545548365870181192

`A091491(n*(A017101(n)+2))`
-/

namespace A333095.P17545548365870181192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 ((n : ℤ) * (A017101 n + 2)).toNat

end

end A333095.P17545548365870181192

/-!
# A333096: a(n) = the n-th order Taylor polynomial (centered at 0) of c(x)^(4*n) evaluated at x = 1, where c(x) = (1 - sqrt(1 - 4*x))/(2*x) is the o.g.f. of the sequence of Catalan numbers A000108.

The programs for A333096, there is no canonical definition to state claims against.
-/

/-! ## A333096.P190853237512999582

`A096465(A139276(n)+A022267(n))`
-/

namespace A333096.P190853237512999582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A139276 n + A022267 n).toNat

end

end A333096.P190853237512999582

/-! ## A333096.P8969500854223300710

`A096465(A139275(n)+A062725(n))`
-/

namespace A333096.P8969500854223300710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A139275 n + A062725 n).toNat

end

end A333096.P8969500854223300710

/-! ## A333096.P14811457314703488768

`A091491(A139277(n)+A081266(n))`
-/

namespace A333096.P14811457314703488768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A139277 n + A081266 n).toNat

end

end A333096.P14811457314703488768

/-! ## A333096.P9551772237880771425

`A283054(A139274(n)+A022266(n))`
-/

namespace A333096.P9551772237880771425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A139274 n + A022266 n).toNat

end

end A333096.P9551772237880771425

/-! ## A333096.P13744213307254361791

`A283054(A139275(n)+A062708(n))`
-/

namespace A333096.P13744213307254361791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A139275 n + A062708 n).toNat

end

end A333096.P13744213307254361791

/-!
# A333097: a(n) = the n-th order Taylor polynomial (centered at 0) of c(x)^(5*n) evaluated at x = 1, where c(x) = (1 - sqrt(1 - 4*x))/(2*x) is the o.g.f. of the sequence of Catalan numbers A000108.

The programs for A333097, there is no canonical definition to state claims against.
-/

/-! ## A333097.P295128282669311991

`A091491(A062728(2*n)+n)`
-/

namespace A333097.P295128282669311991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A062728 (2 * n) + (n : ℤ)).toNat

end

end A333097.P295128282669311991

/-! ## A333097.P13177567088452071500

`A096465(A062725(2*n)-n)`
-/

namespace A333097.P13177567088452071500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A062725 (2 * n) - (n : ℤ)).toNat

end

end A333097.P13177567088452071500

/-! ## A333097.P16724295329449790430

`A096465(A008574(n)+A001105(3*n))`
-/

namespace A333097.P16724295329449790430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A008574 n + A001105 (3 * n)).toNat

end

end A333097.P16724295329449790430

/-! ## A333097.P4784866404627408302

`A283054(A264938(3*n))`
-/

namespace A333097.P4784866404627408302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A264938 (3 * n)).toNat

end

end A333097.P4784866404627408302

/-! ## A333097.P4857543854643802066

`A283054(4*A022266(n))`
-/

namespace A333097.P4857543854643802066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (4 * A022266 n).toNat

end

end A333097.P4857543854643802066

/-!
# A333098: Number of closed Deutsch paths whose area is exactly n.

The programs for A333098, there is no canonical definition to state claims against.
-/

/-! ## A333098.P3287426340510153936

`A115790(n)+A003056(A206464(n))`
-/

namespace A333098.P3287426340510153936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115790 n + A003056 (A206464 n).toNat

end

end A333098.P3287426340510153936

/-! ## A333098.P6332701909090909695

`A003056(A302224(n+1)+A206464(n))`
-/

namespace A333098.P6332701909090909695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A302224 (n + 1) + A206464 n).toNat

end

end A333098.P6332701909090909695

/-! ## A333098.P5584916551134360569

`xor(A003056(A206464(n)), A115790(2*n))`
-/

namespace A333098.P5584916551134360569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 (A206464 n).toNat) (A115790 (2 * n))

end

end A333098.P5584916551134360569

/-! ## A333098.P12381017229205502434

`A367512(3*(n+1))+A276571(A287901(n))`
-/

namespace A333098.P12381017229205502434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367512 (3 * (n + 1)) + A276571 (A287901 n).toNat

end

end A333098.P12381017229205502434

/-! ## A333098.P9900360649441377832

`A000194(A008634(∑[round(2*n/3)]))`
-/

namespace A333098.P9900360649441377832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008634 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A333098.P9900360649441377832

