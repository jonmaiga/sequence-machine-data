import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A007102: Number of labeled disconnected trivalent (or cubic) graphs with 2n nodes.

The programs for A007102, there is no canonical definition to state claims against.
-/

/-! ## A007102.P9196742518317756531

`A002829(n)-A004109(round(sqrt(n²+1)))`
-/

namespace A007102.P9196742518317756531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002829 n - A004109 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A007102.P9196742518317756531

/-! ## A007102.P18100774759463115830

`A002829(n)-A004109(n)%A005814(n)`
-/

namespace A007102.P18100774759463115830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002829 n - Int.tmod (A004109 n) (A005814 n)

end

end A007102.P18100774759463115830

/-! ## A007102.P16278168868435520981

`A059441(A130883(n)+3)-A004109(A028310(n))`
-/

namespace A007102.P16278168868435520981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A130883 n + 3).toNat - A004109 (A028310 n).toNat

end

end A007102.P16278168868435520981

/-! ## A007102.P12254475065069680389

`A059441(A000384(n)+4)-A004109(A028310(n))`
-/

namespace A007102.P12254475065069680389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A000384 n + 4).toNat - A004109 (A028310 n).toNat

end

end A007102.P12254475065069680389

/-! ## A007102.P7826387274029298684

`A059441(A255843(n)-n)-A004109(A028310(n))`
-/

namespace A007102.P7826387274029298684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A255843 n - (n : ℤ)).toNat - A004109 (A028310 n).toNat

end

end A007102.P7826387274029298684

/-!
# A007104: Number of elements (a b, c d) in GL(2,Z) with det = -1, trace n and 0 <= a <= {b, c} <= d.

The programs for A007104, there is no canonical definition to state claims against.
-/

/-! ## A007104.P2921103338724776137

`A325676(A111248(n+1))%A048940(n+1)`
-/

namespace A007104.P2921103338724776137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325676 (A111248 (n + 1)).toNat) (A048940 (n + 1))

end

end A007104.P2921103338724776137

/-!
# A007105: Number of labeled Eulerian 3-regular digraphs with n nodes.

The programs for A007105, there is no canonical definition to state claims against.
-/

/-! ## A007105.P2159981704836861112

`A284990(∑[n])`
-/

namespace A007105.P2159981704836861112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007105.P2159981704836861112

/-! ## A007105.P14895981245015648909

`gcd(A284990(A000217(n)), A284991(n))`
-/

namespace A007105.P14895981245015648909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284990 (A000217 n).toNat) (A284991 n)

end

end A007105.P14895981245015648909

/-! ## A007105.P181850460352987170

`lcm(A000034(n), A284990(A000217(n)))`
-/

namespace A007105.P181850460352987170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A284990 (A000217 n).toNat)

end

end A007105.P181850460352987170

/-! ## A007105.P13310206125109441341

`A284990(A000217(n))^A000045(n²%(n+1))`
-/

namespace A007105.P13310206125109441341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284990 (A000217 n).toNat : ℚ) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

end

end A007105.P13310206125109441341

/-! ## A007105.P10671516546726203642

`A284991(∑[n]+n)`
-/

namespace A007105.P10671516546726203642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284991 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007105.P10671516546726203642

/-!
# A007106: Number of labeled odd degree trees with 2n nodes.

The programs for A007106, there is no canonical definition to state claims against.
-/

/-! ## A007106.P1220961802882840636

`A060279(n+1)/(2*(n+1))`
-/

namespace A007106.P1220961802882840636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060279 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A007106.P1220961802882840636

/-! ## A007106.P14371370129873890539

`A058014(Δ[n²])`
-/

namespace A007106.P14371370129873890539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058014 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007106.P14371370129873890539

/-! ## A007106.P10461023032821442179

`lcm(n+1, A058014(2*n+1))`
-/

namespace A007106.P10461023032821442179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A058014 (2 * n + 1))

end

end A007106.P10461023032821442179

/-! ## A007106.P7097460718869704904

`record[A058014(A004442(n))]`
-/

namespace A007106.P7097460718869704904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058014 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007106.P7097460718869704904

/-! ## A007106.P10429260325865072761

`record[A058014(A000265(n+1))]`
-/

namespace A007106.P10429260325865072761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058014 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007106.P10429260325865072761

/-!
# A007107: Number of labeled 2-regular digraphs with n nodes.

The programs for A007107, there is no canonical definition to state claims against.
-/

/-! ## A007107.P9923382919711908033

`A284989(∑[n])`
-/

namespace A007107.P9923382919711908033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284989 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007107.P9923382919711908033

/-! ## A007107.P17556534583559214301

`A284989(A000217(n))+A008683(16*(n+1))`
-/

namespace A007107.P17556534583559214301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284989 (A000217 n).toNat + A008683 (16 * (n + 1))

end

end A007107.P17556534583559214301

/-! ## A007107.P4046015888000789837

`A000005(gcd(n, n+1))*A284989(A000217(n))`
-/

namespace A007107.P4046015888000789837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A284989 (A000217 n).toNat

end

end A007107.P4046015888000789837

/-! ## A007107.P10850079466011166472

`or(-1, A000041(n))²*A284989(A000217(n))`
-/

namespace A007107.P10850079466011166472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) ^ 2 * A284989 (A000217 n).toNat

end

end A007107.P10850079466011166472

/-! ## A007107.P7496245008175778337

`A007318(C(n, n²)!)*A284989(A000217(n))`
-/

namespace A007107.P7496245008175778337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Nat.choose n (n ^ 2))) * A284989 (A000217 n).toNat

end

end A007107.P7496245008175778337

/-!
# A007108: Number of connected labeled 2-regular digraphs with n nodes.

The programs for A007108, there is no canonical definition to state claims against.
-/

/-! ## A007108.P11562129941618294234

`A333601(∏[∏[2^val(n+1, 3)]])`
-/

namespace A007108.P11562129941618294234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333601 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A007108.P11562129941618294234

/-! ## A007108.P11599870509297136753

`∑[round(n*(n-1)/6)]^A078599(n+4)`
-/

namespace A007108.P11599870509297136753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 6))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A078599 (n + 4) : ℤ)

end

end A007108.P11599870509297136753

/-!
# A007109: Number of labeled 2-regular oriented graphs with n nodes.

The programs for A007109, there is no canonical definition to state claims against.
-/

/-! ## A007109.P6957302221159492467

`A007110(n)^A136400(n)`
-/

namespace A007109.P6957302221159492467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007110 n : ℚ) ^ (A136400 n : ℤ)

end

end A007109.P6957302221159492467

/-! ## A007109.P2414219442879923089

`A007110(n)+A000007(n²²)`
-/

namespace A007109.P2414219442879923089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007110 n + A000007 ((n ^ 2) ^ 2)

end

end A007109.P2414219442879923089

/-! ## A007109.P6139635837271236126

`A069158(A131126(n))+A007110(n)`
-/

namespace A007109.P6139635837271236126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (A131126 n).toNat + A007110 n

end

end A007109.P6139635837271236126

/-! ## A007109.P7058597861462311309

`A357385(A174836(n))+A007110(n)`
-/

namespace A007109.P7058597861462311309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A174836 n).toNat + A007110 n

end

end A007109.P7058597861462311309

/-! ## A007109.P15555596588289075231

`A007110(n)^A001222(A007097(n))`
-/

namespace A007109.P15555596588289075231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007110 n : ℚ) ^ (A001222 (A007097 n).toNat : ℤ)

end

end A007109.P15555596588289075231

/-!
# A007110: Number of connected labeled 2-regular oriented graphs with n nodes.

The programs for A007110, there is no canonical definition to state claims against.
-/

/-! ## A007110.P1796057948524358835

`A007109(n^A136400(n))`
-/

namespace A007110.P1796057948524358835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007109 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A007110.P1796057948524358835

/-! ## A007110.P7043457518663134342

`∑{d}[n, A007109(A002998(#))]`
-/

namespace A007110.P7043457518663134342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007109 (A002998 d).toNat

end

end A007110.P7043457518663134342

/-! ## A007110.P17595411799496160437

`∑{d}[n, A007109(A082216(#))]`
-/

namespace A007110.P17595411799496160437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007109 (A082216 d).toNat

end

end A007110.P17595411799496160437

/-! ## A007110.P1908944999876343421

`∑{d}[n, A007109(A087051(#))]`
-/

namespace A007110.P1908944999876343421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007109 (A087051 d).toNat

end

end A007110.P1908944999876343421

/-! ## A007110.P13053772903516022215

`A007109(n)%A344474(n)²`
-/

namespace A007110.P13053772903516022215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007109 n) (A344474 n ^ 2)

end

end A007110.P13053772903516022215

/-!
# A007111: Number of unlabeled graphs with n nodes and degree >= 3.

The programs for A007111, there is no canonical definition to state claims against.
-/

/-! ## A007111.P12427203865930569230

`A007112(n^floor(n/4))`
-/

namespace A007111.P12427203865930569230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007112 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A007111.P12427203865930569230

/-! ## A007111.P915212710023604212

`A324226(C(n, ceil(n*(sqrt(3)-1))))`
-/

namespace A007111.P915212710023604212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324226 (Nat.choose n ⌈(n : ℝ) * (Real.sqrt (3 : ℝ) - 1)⌉.toNat)

end

end A007111.P915212710023604212

/-! ## A007111.P9531586224098991905

`A324226(or(n, 1-∑{p}[n+1, #]+n))`
-/

namespace A007111.P9531586224098991905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324226 (Int.lor (n : ℤ) (1 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A007111.P9531586224098991905

/-! ## A007111.P608742759165976170

`A241092(A039946(n))`
-/

namespace A007111.P608742759165976170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (A039946 n).toNat

end

end A007111.P608742759165976170

/-!
# A007112: Number of connected unlabeled graphs with n nodes and degree >= 3.

The programs for A007112, there is no canonical definition to state claims against.
-/

/-! ## A007112.P8226245176039246105

`A324232(A000383(n))+A324226(n+1)`
-/

namespace A007112.P8226245176039246105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (A000383 n).toNat + A324226 (n + 1)

end

end A007112.P8226245176039246105

/-! ## A007112.P5838225454844469231

`A324231(A286736(n))+A324226(n+1)`
-/

namespace A007112.P5838225454844469231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324231 (A286736 n).toNat + A324226 (n + 1)

end

end A007112.P5838225454844469231

/-! ## A007112.P13006137645108864062

`A336562(A335945(n))+A324226(n+1)`
-/

namespace A007112.P13006137645108864062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (A335945 n).toNat + A324226 (n + 1)

end

end A007112.P13006137645108864062

/-! ## A007112.P11350381386603311418

`xor(A297247(A336091(n)), A324226(n+1))`
-/

namespace A007112.P11350381386603311418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297247 (A336091 n).toNat) (A324226 (n + 1))

end

end A007112.P11350381386603311418

/-!
# A007113: Expansion of e.g.f. (1 + x)^x.

The programs for A007113, there is no canonical definition to state claims against.
-/

/-! ## A007113.P10499156696263715305

`A355607(∑[n+2]-1)`
-/

namespace A007113.P10499156696263715305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007113.P10499156696263715305

/-! ## A007113.P8460179348113084685

`A355619(∑[n+2]-1)`
-/

namespace A007113.P8460179348113084685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355619 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007113.P8460179348113084685

/-! ## A007113.P4599536055324142249

`n*(A005168(n)-a(n-1))` with `a(0)=1`
-/

namespace A007113.P4599536055324142249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A005168 n - a (n - 1))

end

end A007113.P4599536055324142249

/-! ## A007113.P2584322494692025608

`A005727(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A007113.P2584322494692025608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005727 n - (n : ℤ) * a (n - 1)

end

end A007113.P2584322494692025608

/-! ## A007113.P4441593113876407514

`A033999(n)*A355610(A027379(n)+1)`
-/

namespace A007113.P4441593113876407514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A355610 (A027379 n + 1).toNat

end

end A007113.P4441593113876407514

/-! ## A007113.P4324541312616243493

`A202183(∑[n]+1)/(n+1)`
-/

namespace A007113.P4324541312616243493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202183 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A007113.P4324541312616243493

/-! ## A007113.P17686035377388159358

`floor(A202183(A000124(n))/(n+1))`
-/

namespace A007113.P17686035377388159358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202183 (A000124 n).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A007113.P17686035377388159358

/-! ## A007113.P9789333708348043124

`A202183(A000124(n))/(n+1)*A033999(n)²`
-/

namespace A007113.P9789333708348043124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202183 (A000124 n).toNat : ℚ) / (n + 1 : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A007113.P9789333708348043124

/-! ## A007113.P5519850139049338181

`A000038(n+1)+A202183(A000124(n))/(n+1)`
-/

namespace A007113.P5519850139049338181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) + (A202183 (A000124 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A007113.P5519850139049338181

/-! ## A007113.P3371821425286603575

`A202183(A000124(n))/(n+1)*A178334(n+1)`
-/

namespace A007113.P3371821425286603575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202183 (A000124 n).toNat : ℚ) / (n + 1 : ℚ) * (A178334 (n + 1) : ℚ)

end

end A007113.P3371821425286603575

/-!
# A007116: Expansion of e.g.f. (1+x)^(exp(x)).

The programs for A007116, there is no canonical definition to state claims against.
-/

/-! ## A007116.P3699035753094195138

`A009581(n)+A009135(n)`
-/

namespace A007116.P3699035753094195138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009581 n + A009135 n

end

end A007116.P3699035753094195138

/-! ## A007116.P3928469595694141016

`A002375(A007560(3*n+4)+2)`
-/

namespace A007116.P3928469595694141016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A007560 (3 * n + 4) + 2).toNat

end

end A007116.P3928469595694141016

/-! ## A007116.P9763860658930991330

`A343934(A090365(n))-floor(n/(xor(n, n+1)+1))`
-/

namespace A007116.P9763860658930991330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343934 (A090365 n).toNat - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A007116.P9763860658930991330

/-!
# A007117: a(0) = a(1) = 0; for n >= 2, a(n)*2^(n+2) + 1 is the smallest prime factor of the n-th Fermat number F(n) = 2^(2^n) + 1.

The programs for A007117, there is no canonical definition to state claims against.
-/

/-! ## A007117.P11120686873261536314

`floor(A093179(n)/A020707(n))`
-/

namespace A007117.P11120686873261536314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093179 n : ℚ) / (A020707 n : ℚ)⌋

end

end A007117.P11120686873261536314

/-! ## A007117.P10920206263605132660

`A298669(A392618(n+1))`
-/

namespace A007117.P10920206263605132660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298669 (A392618 (n + 1)).toNat

end

end A007117.P10920206263605132660

/-! ## A007117.P2881880371171945100

`A298669(A010352(n+2))`
-/

namespace A007117.P2881880371171945100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298669 (A010352 (n + 2)).toNat

end

end A007117.P2881880371171945100

/-!
# A007118: Expansion of e.g.f. (1+x)^sin(x).

The programs for A007118, there is no canonical definition to state claims against.
-/

/-! ## A007118.P17635383330549731182

`A012284(n)+A009148(n)`
-/

namespace A007118.P17635383330549731182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012284 n + A009148 n

end

end A007118.P17635383330549731182

/-! ## A007118.P7645703318023566077

`A012288(A004869(n+1))+A012284(n)`
-/

namespace A007118.P7645703318023566077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012288 (A004869 (n + 1)).toNat + A012284 n

end

end A007118.P7645703318023566077

/-! ## A007118.P15669050888678949118

`A012288(A004880(n+1))+A012284(n)`
-/

namespace A007118.P15669050888678949118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012288 (A004880 (n + 1)).toNat + A012284 n

end

end A007118.P15669050888678949118

/-! ## A007118.P16036098384381997506

`A012582(n)+A012284(A004880(n+1))`
-/

namespace A007118.P16036098384381997506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012582 n + A012284 (A004880 (n + 1)).toNat

end

end A007118.P16036098384381997506

/-!
# A007121: Expansion of e.g.f. ( (1+x)^x )^x.

The programs for A007121, there is no canonical definition to state claims against.
-/

/-! ## A007121.P6148416246805663567

`A355607(∑[n+3])`
-/

namespace A007121.P6148416246805663567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007121.P6148416246805663567

/-! ## A007121.P12795798074661081290

`A247212(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A007121.P12795798074661081290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247212 n - (n : ℤ) * a (n - 1)

end

end A007121.P12795798074661081290

/-! ## A007121.P1941617981491521552

`A202184(∑[n]+1)/(n+1)`
-/

namespace A007121.P1941617981491521552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202184 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A007121.P1941617981491521552

/-! ## A007121.P923252729781285643

`A020985(A006498(2*n+3))*A356910(n)`
-/

namespace A007121.P923252729781285643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A006498 (2 * n + 3)).toNat * A356910 n

end

end A007121.P923252729781285643

/-!
# A007122: Number of unlabeled identity connected unit interval graphs with n nodes.

The programs for A007122, there is no canonical definition to state claims against.
-/

/-! ## A007122.P1934921489793160333

`(A005043(n)-A005213(n))/2`
-/

namespace A007122.P1934921489793160333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005043 n - A005213 n : ℚ) / 2

end

end A007122.P1934921489793160333

/-! ## A007122.P11437632181907717689

`A005218(n+1)-A005213(A028310(n))`
-/

namespace A007122.P11437632181907717689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005218 (n + 1) - A005213 (A028310 n).toNat

end

end A007122.P11437632181907717689

/-! ## A007122.P15567375589711585014

`A005218(n+1)-A005213(n)%A005195(n)`
-/

namespace A007122.P15567375589711585014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005218 (n + 1) - Int.tmod (A005213 n) (A005195 n)

end

end A007122.P15567375589711585014

/-! ## A007122.P18296268425556837615

`(A005043(n)-A005218(n+1))%A005190(n)`
-/

namespace A007122.P18296268425556837615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005043 n - A005218 (n + 1)) (A005190 n)

end

end A007122.P18296268425556837615

/-! ## A007122.P12938070886927415009

`(A005218(n+1)-A005213(n))%A005190(n)`
-/

namespace A007122.P12938070886927415009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005218 (n + 1) - A005213 n) (A005190 n)

end

end A007122.P12938070886927415009

/-!
# A007123: Number of connected unit interval graphs with n nodes; also number of bracelets (turnover necklaces) with n black beads and n-1 white beads.

The programs for A007123, the canonical program `A007123.P7395828226839827993` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007123 has offset 1).

The definition of A007123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007123.P7395828226839827993

`(A000108(n)+A001405(n))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007123

/-- `(A000108(n)+A001405(n))/2` -/
def P7395828226839827993.Spec : Prop :=
  ∀ n, P7395828226839827993.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P1097702744233631494

`(A063886(n+1)-A002420(n+1))/4`
-/

namespace A007123.P1097702744233631494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) - A002420 (n + 1) : ℚ) / 4

end

end A007123.P1097702744233631494

namespace A007123

/-- `(A063886(n+1)-A002420(n+1))/4` -/
def P1097702744233631494.Spec : Prop :=
  ∀ n, P1097702744233631494.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P15182220824643272594

`A210736(n)+A000150(n)`
-/

namespace A007123.P15182220824643272594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A000150 n

end

end A007123.P15182220824643272594

namespace A007123

/-- `A210736(n)+A000150(n)` -/
def P15182220824643272594.Spec : Prop :=
  ∀ n, P15182220824643272594.a n = A007123 (n + 1)

end A007123

/-! ## A007123.P6732396445101547688

`(A000108(n)+abs(A126930(n)))/2`
-/

namespace A007123.P6732396445101547688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + |A126930 n| : ℚ) / 2

end

end A007123.P6732396445101547688

namespace A007123

/-- `(A000108(n)+abs(A126930(n)))/2` -/
def P6732396445101547688.Spec : Prop :=
  ∀ n, P6732396445101547688.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P12102698600771332344

`(A001405(n)+abs(A168491(n)))/2`
-/

namespace A007123.P12102698600771332344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n + |A168491 n| : ℚ) / 2

end

end A007123.P12102698600771332344

namespace A007123

/-- `(A001405(n)+abs(A168491(n)))/2` -/
def P12102698600771332344.Spec : Prop :=
  ∀ n, P12102698600771332344.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P18377384704232398947

`(A014495(n)+A000108(n)+1)/2`
-/

namespace A007123.P18377384704232398947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014495 n + A000108 n + 1 : ℚ) / 2

end

end A007123.P18377384704232398947

namespace A007123

/-- `(A014495(n)+A000108(n)+1)/2` -/
def P18377384704232398947.Spec : Prop :=
  ∀ n, P18377384704232398947.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P13821746764819002090

`(A120588(n+1)+A001405(n))/2`
-/

namespace A007123.P13821746764819002090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) + A001405 n : ℚ) / 2

end

end A007123.P13821746764819002090

namespace A007123

/-- `(A120588(n+1)+A001405(n))/2` -/
def P13821746764819002090.Spec : Prop :=
  ∀ n, P13821746764819002090.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P7200568034027407592

`(A210736(n+1)+A120588(n+1))/2`
-/

namespace A007123.P7200568034027407592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A120588 (n + 1) : ℚ) / 2

end

end A007123.P7200568034027407592

namespace A007123

/-- `(A210736(n+1)+A120588(n+1))/2` -/
def P7200568034027407592.Spec : Prop :=
  ∀ n, P7200568034027407592.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P15631490416744327281

`(A210736(n+1)+A126120(2*n))/2`
-/

namespace A007123.P15631490416744327281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A126120 (2 * n) : ℚ) / 2

end

end A007123.P15631490416744327281

namespace A007123

/-- `(A210736(n+1)+A126120(2*n))/2` -/
def P15631490416744327281.Spec : Prop :=
  ∀ n, P15631490416744327281.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P14620359141699217539

`(A210736(n+1)+A089408(2*n+1))/2`
-/

namespace A007123.P14620359141699217539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A089408 (2 * n + 1) : ℚ) / 2

end

end A007123.P14620359141699217539

namespace A007123

/-- `(A210736(n+1)+A089408(2*n+1))/2` -/
def P14620359141699217539.Spec : Prop :=
  ∀ n, P14620359141699217539.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P12076403463625017037

`(A210736(n+1)+A097331(2*n+1))/2`
-/

namespace A007123.P12076403463625017037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A097331 (2 * n + 1) : ℚ) / 2

end

end A007123.P12076403463625017037

namespace A007123

/-- `(A210736(n+1)+A097331(2*n+1))/2` -/
def P12076403463625017037.Spec : Prop :=
  ∀ n, P12076403463625017037.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P11973386074509961240

`(A210736(n+1)-A210628(2*n+1))/2`
-/

namespace A007123.P11973386074509961240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) - A210628 (2 * n + 1) : ℚ) / 2

end

end A007123.P11973386074509961240

namespace A007123

/-- `(A210736(n+1)-A210628(2*n+1))/2` -/
def P11973386074509961240.Spec : Prop :=
  ∀ n, P11973386074509961240.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P5263143355436888388

`A000108(A233583(n+1))-A006079(n+1)`
-/

namespace A007123.P5263143355436888388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A233583 (n + 1)).toNat - A006079 (n + 1)

end

end A007123.P5263143355436888388

namespace A007123

/-- `A000108(A233583(n+1))-A006079(n+1)` -/
def P5263143355436888388.Spec : Prop :=
  ∀ n, P5263143355436888388.a n = A007123 (n + 1)

end A007123

/-! ## A007123.P17444690154369618653

`(A001405(n)+A263986(n)+A000045(n))/2`
-/

namespace A007123.P17444690154369618653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n + (A263986 n + A000045 n) : ℚ) / 2

end

end A007123.P17444690154369618653

namespace A007123

/-- `(A001405(n)+A263986(n)+A000045(n))/2` -/
def P17444690154369618653.Spec : Prop :=
  ∀ n, P17444690154369618653.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P17882211598283472450

`(A000108(n)+sqrt(A018224(n)))/2`
-/

namespace A007123.P17882211598283472450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000108 n : ℝ) + Real.sqrt (A018224 n : ℝ)) / 2

end

end A007123.P17882211598283472450

namespace A007123

/-- `(A000108(n)+sqrt(A018224(n)))/2` -/
def P17882211598283472450.Spec : Prop :=
  ∀ n, P17882211598283472450.a n = (A007123 (n + 1) : ℝ)

end A007123

/-! ## A007123.P15373475083644985309

`A005654(n+1)-A001791(n)`
-/

namespace A007123.P15373475083644985309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) - A001791 n

end

end A007123.P15373475083644985309

namespace A007123

/-- `A005654(n+1)-A001791(n)` -/
def P15373475083644985309.Spec : Prop :=
  ∀ n, P15373475083644985309.a n = A007123 (n + 1)

end A007123

/-! ## A007123.P936411618502203182

`(A001405(n)+A000984(n)/(n+1))/2`
-/

namespace A007123.P936411618502203182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001405 n : ℚ) + (A000984 n : ℚ) / (n + 1 : ℚ)) / 2

end

end A007123.P936411618502203182

namespace A007123

/-- `(A001405(n)+A000984(n)/(n+1))/2` -/
def P936411618502203182.Spec : Prop :=
  ∀ n, P936411618502203182.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P17026066302517212902

`A129383(2*n)-A129383(2*n+1)/2`
-/

namespace A007123.P17026066302517212902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129383 (2 * n) : ℚ) - (A129383 (2 * n + 1) : ℚ) / 2

end

end A007123.P17026066302517212902

namespace A007123

/-- `A129383(2*n)-A129383(2*n+1)/2` -/
def P17026066302517212902.Spec : Prop :=
  ∀ n, P17026066302517212902.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P16871739565385987744

`(A001405(n)+A028329(n)/(2*(n+1)))/2`
-/

namespace A007123.P16871739565385987744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001405 n : ℚ) + (A028329 n : ℚ) / (2 * (n + 1) : ℚ)) / 2

end

end A007123.P16871739565385987744

namespace A007123

/-- `(A001405(n)+A028329(n)/(2*(n+1)))/2` -/
def P16871739565385987744.Spec : Prop :=
  ∀ n, P16871739565385987744.a n = (A007123 (n + 1) : ℚ)

end A007123

/-! ## A007123.P17105105124630682492

`A103943(n+1)-A068551(n)`
-/

namespace A007123.P17105105124630682492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103943 (n + 1) - A068551 n

end

end A007123.P17105105124630682492

namespace A007123

/-- `A103943(n+1)-A068551(n)` -/
def P17105105124630682492.Spec : Prop :=
  ∀ n, P17105105124630682492.a n = A007123 (n + 1)

end A007123

/-!
# A007124: Number of strength 1 Eulerian graphs with n nodes, 2 of odd degree.

The programs for A007124, there is no canonical definition to state claims against.
-/

/-! ## A007124.P8572632625279170721

`A054404(A327025(n)+n)`
-/

namespace A007124.P8572632625279170721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A327025 n + (n : ℤ)).toNat

end

end A007124.P8572632625279170721

/-! ## A007124.P5846472795882065686

`A071538(∑[A182953(n)+1])`
-/

namespace A007124.P5846472795882065686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182953 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007124.P5846472795882065686

/-! ## A007124.P7630011543241407047

`A210667(A210671(n))%∑[ceil(3^(n-1))]`
-/

namespace A007124.P7630011543241407047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210667 (A210671 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007124.P7630011543241407047

/-!
# A007125: Number of connected strength-1 Eulerian graphs with n nodes, 2 of odd degree.

The programs for A007125, there is no canonical definition to state claims against.
-/

/-! ## A007125.P12727816917013311402

`A083382(∑[record[A343535(n)]])`
-/

namespace A007125.P12727816917013311402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007125.P12727816917013311402

/-! ## A007125.P16795597013955223752

`ceil(A360868(n+1)/A360892(n+3))`
-/

namespace A007125.P16795597013955223752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A360868 (n + 1) : ℚ) / (A360892 (n + 3) : ℚ)⌉

end

end A007125.P16795597013955223752

/-! ## A007125.P2951470498706212519

`A192174(A064526(n))+abs(A182386(n))`
-/

namespace A007125.P2951470498706212519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 (A064526 n).toNat + |A182386 n|

end

end A007125.P2951470498706212519

/-!
# A007126: Number of connected rooted strength 1 Eulerian graphs with n nodes.

The programs for A007126, there is no canonical definition to state claims against.
-/

/-! ## A007126.P13280578734712176356

`A352328(A353287(n))`
-/

namespace A007126.P13280578734712176356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352328 (A353287 n).toNat

end

end A007126.P13280578734712176356

/-! ## A007126.P16715600313802934015

`A033183(Δ[A215328(n)]²)`
-/

namespace A007126.P16715600313802934015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A007126.P16715600313802934015

/-! ## A007126.P13582567866460048146

`∑{d}[A124425(n), A219674(#)]`
-/

namespace A007126.P13582567866460048146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A219674 d

end

end A007126.P13582567866460048146

/-!
# A007127: Definition (1): Number of unlabeled strength-2 Eulerian graphs with n nodes.

The programs for A007127, there is no canonical definition to state claims against.
-/

/-! ## A007127.P8515563534446630646

`A072451(A213100(n)+A001742(n+1))`
-/

namespace A007127.P8515563534446630646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A213100 n + A001742 (n + 1)).toNat

end

end A007127.P8515563534446630646

/-! ## A007127.P7262294241997245233

`A072451(A213100(n)+A008578(n+1))`
-/

namespace A007127.P7262294241997245233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A213100 n + A008578 (n + 1)).toNat

end

end A007127.P7262294241997245233

/-!
# A007128: Number of unlabeled strength 3 Eulerian graphs with n nodes.

The programs for A007128, there is no canonical definition to state claims against.
-/

/-! ## A007128.P14693718189417435726

`A226872(2^floor(2^(n-1)))`
-/

namespace A007128.P14693718189417435726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℤ))).toNat

end

end A007128.P14693718189417435726

/-!
# A007129: Number of unlabeled strength 3 Eulerian graphs with n nodes, 2 of odd degree.

The programs for A007129, there is no canonical definition to state claims against.
-/

/-! ## A007129.P12375182929237960906

`A004775(∏[record[A222430(n+1)]])`
-/

namespace A007129.P12375182929237960906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007129.P12375182929237960906

/-!
# A007130: Number of unlabeled rooted strength 3 Eulerian graphs with n nodes.

The programs for A007130, there is no canonical definition to state claims against.
-/

/-! ## A007130.P3562356712955398817

`A065033(n*lcm(10, a(n-1)))-4` with `a(0)=1`
-/

namespace A007130.P3562356712955398817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (n * Int.lcm 10 (a (n - 1))) - 4

end

end A007130.P3562356712955398817

/-!
# A007131: Number of unlabeled connected strength 3 Eulerian graphs with n nodes.

The programs for A007131, there is no canonical definition to state claims against.
-/

/-! ## A007131.P12200977298971002829

`∑[∑{p}[A088994(2*n+1), A326780(#)]]`
-/

namespace A007131.P12200977298971002829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088994 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A326780 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007131.P12200977298971002829

/-!
# A007132: Number of unlabeled connected strength 3 Eulerian graphs with n nodes, 2 of odd degree.

The programs for A007132, there is no canonical definition to state claims against.
-/

/-! ## A007132.P18401558609286064574

`∑[n!]*A030530(n!²)`
-/

namespace A007132.P18401558609286064574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A030530 (Nat.factorial n ^ 2)

end

end A007132.P18401558609286064574

/-!
# A007133: Number of unlabeled rooted connected strength 3 Eulerian graphs with n nodes.

The programs for A007133, there is no canonical definition to state claims against.
-/

/-! ## A007133.P1014394388188222779

`A096462(A322196(n)+1)`
-/

namespace A007133.P1014394388188222779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096462 (A322196 n + 1).toNat

end

end A007133.P1014394388188222779

/-!
# A007134: Number of connected labeled chordal graphs (or triangulated graphs) with n nodes.

The programs for A007134, there is no canonical definition to state claims against.
-/

/-! ## A007134.P17112727219898750717

`∑[A333379(A389325(n)+1)]`
-/

namespace A007134.P17112727219898750717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333379 (A389325 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007134.P17112727219898750717

/-!
# A007136: Number of symmetry sites in all planted 3-trees with n nodes.

The programs for A007136, there is no canonical definition to state claims against.
-/

/-! ## A007136.P2289113817416229275

`floor(Δ[γ*A321739(n)])`
-/

namespace A007136.P2289113817416229275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant * (A321739 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A007136.P2289113817416229275

/-! ## A007136.P926246517370714184

`A322336(A304716(n+1))%A322391(3*n+2)`
-/

namespace A007136.P926246517370714184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322336 (A304716 (n + 1)).toNat) (A322391 (3 * n + 2))

end

end A007136.P926246517370714184

/-! ## A007136.P16064554775687712481

`A335523(A036657(n)+1)+A004526(A290605(n))`
-/

namespace A007136.P16064554775687712481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A036657 n + 1).toNat + A004526 (A290605 n).toNat

end

end A007136.P16064554775687712481

/-! ## A007136.P12270125542551187224

`A335523(A036657(n)+1)+A222380(A352366(n))`
-/

namespace A007136.P12270125542551187224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A036657 n + 1).toNat + A222380 (A352366 n).toNat

end

end A007136.P12270125542551187224

/-! ## A007136.P3615104455925725548

`A335523(A036657(n)+1)+A114919(A008277(n+1))`
-/

namespace A007136.P3615104455925725548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A036657 n + 1).toNat + A114919 (A008277 (n + 1)).toNat

end

end A007136.P3615104455925725548

/-!
# A007137: Number of rooted maps with n edges on the projective plane.

The programs for A007137, there is no canonical definition to state claims against.
-/

/-! ## A007137.P17901866606178265777

`A361137(n+1)-char[3]`
-/

namespace A007137.P17901866606178265777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361137 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007137.P17901866606178265777

/-! ## A007137.P7118917788760400763

`xor(char[A361092(n+2)], A361137(n+1))`
-/

namespace A007137.P7118917788760400763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361092 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A361137 (n + 1))

end

end A007137.P7118917788760400763

/-! ## A007137.P2191459552097746214

`xor(char[A361083(n+3)], A361137(n+1))`
-/

namespace A007137.P2191459552097746214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361083 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A361137 (n + 1))

end

end A007137.P2191459552097746214

/-! ## A007137.P120923047424055454

`xor(char[A121572(2*(n+1))], A361137(n+1))`
-/

namespace A007137.P120923047424055454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121572 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A361137 (n + 1))

end

end A007137.P120923047424055454

/-! ## A007137.P9115782721275111620

`xor(char[A360874(2*n+1)], A361137(n+1))`
-/

namespace A007137.P9115782721275111620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360874 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A361137 (n + 1))

end

end A007137.P9115782721275111620

/-!
# A007138: Smallest primitive factor of 10^n - 1. Also smallest prime p such that 1/p has repeating decimal expansion of period n.

The programs for A007138, there is no canonical definition to state claims against.
-/

/-! ## A007138.P15779338718911367323

`A046107(record[A343026(n+1)])`
-/

namespace A007138.P15779338718911367323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007138.P15779338718911367323

/-! ## A007138.P10246091205857870418

`p?[A046107(n+1)*A254578(n+1)]`
-/

namespace A007138.P10246091205857870418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046107 (n + 1) * A254578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007138.P10246091205857870418

/-! ## A007138.P12368580192365622233

`p?[p?[A227969(n+1)]*A254578(n+1)]`
-/

namespace A007138.P12368580192365622233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A254578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007138.P12368580192365622233

/-! ## A007138.P4838272105878431754

`A046107(lt[A001250(n), A266668(n)])`
-/

namespace A007138.P4838272105878431754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007138.P4838272105878431754

/-! ## A007138.P16367230660532124576

`A046107(lt[A099023(n), A229649(n)])`
-/

namespace A007138.P16367230660532124576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007138.P16367230660532124576

/-!
# A007139: Number of unlabeled bicolored bipartite graphs on 2n nodes having n nodes of each color with no edges between vertices of the same color and allowing the color classes to be interchanged.

The programs for A007139, there is no canonical definition to state claims against.
-/

/-! ## A007139.P9215203947098447811

`(A002724(n)+A122082(n))/2`
-/

namespace A007139.P9215203947098447811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002724 n + A122082 n : ℚ) / 2

end

end A007139.P9215203947098447811

/-! ## A007139.P2257706859717540223

`(A122082(n)+A028657(∑[4*n]))/2`
-/

namespace A007139.P2257706859717540223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122082 n + A028657 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A007139.P2257706859717540223

/-! ## A007139.P15265816999013321062

`(A246106(∑[n+3])+A122082(n))/2`
-/

namespace A007139.P15265816999013321062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246106 (∑ j ∈ Finset.range (n + 1), f1 j) + A122082 n : ℚ) / 2

end

end A007139.P15265816999013321062

/-!
# A007140: Number of unlabeled bicolored graphs, with no isolated nodes, on 2n nodes having n nodes of each color and allowing the color classes to be interchanged.

The programs for A007140, there is no canonical definition to state claims against.
-/

/-! ## A007140.P4658670832679740473

`xor(A008679(A073422(n)), A304983(n))`
-/

namespace A007140.P4658670832679740473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008679 (A073422 n).toNat) (A304983 n)

end

end A007140.P4658670832679740473

/-! ## A007140.P17176238313521989967

`A345258(n+1)+A025669(A003088(n))`
-/

namespace A007140.P17176238313521989967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345258 (n + 1) + A025669 (A003088 n).toNat

end

end A007140.P17176238313521989967

/-!
# A007141: E-trees with at most 2 colors.

The programs for A007141, there is no canonical definition to state claims against.
-/

/-! ## A007141.P10894439081944002222

`A068336(n+1)+A007143(n+1)`
-/

namespace A007141.P10894439081944002222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068336 (n + 1) + A007143 (n + 1)

end

end A007141.P10894439081944002222

/-! ## A007141.P3682074690301079000

`A007143(n+1)+A020639(A007843(n))*A003238(n+1)`
-/

namespace A007141.P3682074690301079000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007143 (n + 1) + A020639 (A007843 n).toNat * A003238 (n + 1)

end

end A007141.P3682074690301079000

/-! ## A007141.P551177069314026649

`A007143(n+1)+A020639(A008458(n))*A003238(n+1)`
-/

namespace A007141.P551177069314026649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007143 (n + 1) + A020639 (A008458 n).toNat * A003238 (n + 1)

end

end A007141.P551177069314026649

/-! ## A007141.P9599001282615746956

`A007143(n+1)+A020639(A008574(n))*A003238(n+1)`
-/

namespace A007141.P9599001282615746956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007143 (n + 1) + A020639 (A008574 n).toNat * A003238 (n + 1)

end

end A007141.P9599001282615746956

/-! ## A007141.P3894638448890093361

`A007143(n+1)+A020639(A022144(n))*A003238(n+1)`
-/

namespace A007141.P3894638448890093361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007143 (n + 1) + A020639 (A022144 n).toNat * A003238 (n + 1)

end

end A007141.P3894638448890093361

/-!
# A007142: E-trees with at most 3 colors.

The programs for A007142, there is no canonical definition to state claims against.
-/

/-! ## A007142.P7882904802395653611

`xor(A026295(n+1), A188171(A026333(n)))`
-/

namespace A007142.P7882904802395653611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026295 (n + 1)) (A188171 (A026333 n).toNat)

end

end A007142.P7882904802395653611

/-!
# A007143: E-trees with exactly 2 colors.

The programs for A007143, there is no canonical definition to state claims against.
-/

/-! ## A007143.P12719557493657859226

`A007141(n+1)-A068336(n+1)`
-/

namespace A007143.P12719557493657859226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007141 (n + 1) - A068336 (n + 1)

end

end A007143.P12719557493657859226

/-! ## A007143.P2761566109966199882

`A007141(n+1)-A020639(A007843(n))*A003238(n+1)`
-/

namespace A007143.P2761566109966199882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007141 (n + 1) - A020639 (A007843 n).toNat * A003238 (n + 1)

end

end A007143.P2761566109966199882

/-! ## A007143.P9267454672514413682

`A007141(n+1)-A020639(A008458(n))*A003238(n+1)`
-/

namespace A007143.P9267454672514413682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007141 (n + 1) - A020639 (A008458 n).toNat * A003238 (n + 1)

end

end A007143.P9267454672514413682

/-! ## A007143.P15514676163851272390

`A007141(n+1)-A020639(A008574(n))*A003238(n+1)`
-/

namespace A007143.P15514676163851272390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007141 (n + 1) - A020639 (A008574 n).toNat * A003238 (n + 1)

end

end A007143.P15514676163851272390

/-! ## A007143.P2992857972657766972

`A007141(n+1)-A020639(A022144(n))*A003238(n+1)`
-/

namespace A007143.P2992857972657766972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007141 (n + 1) - A020639 (A022144 n).toNat * A003238 (n + 1)

end

end A007143.P2992857972657766972

/-!
# A007144: E-trees with exactly 3 colors.

The programs for A007144, there is no canonical definition to state claims against.
-/

/-! ## A007144.P4722613531259773430

`A233270(n*A127088(n))`
-/

namespace A007144.P4722613531259773430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 ((n : ℤ) * A127088 n).toNat

end

end A007144.P4722613531259773430

/-!
# A007145: Number of rooted bridgeless graphs with n nodes.

The programs for A007145, there is no canonical definition to state claims against.
-/

/-! ## A007145.P5262995259374048323

`A330557((n-1)^n)`
-/

namespace A007145.P5262995259374048323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 (((n : ℤ) - 1) ^ n).toNat

end

end A007145.P5262995259374048323

/-! ## A007145.P6217428304840837852

`A095160(A389247(n))`
-/

namespace A007145.P6217428304840837852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095160 (A389247 n).toNat

end

end A007145.P6217428304840837852

/-!
# A007146: Number of unlabeled simple connected bridgeless graphs with n nodes.

The programs for A007146, there is no canonical definition to state claims against.
-/

/-! ## A007146.P8183018051835197806

`A001349(n+1)-A052446(n+1)`
-/

namespace A007146.P8183018051835197806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A052446 (n + 1)

end

end A007146.P8183018051835197806

/-! ## A007146.P8403379272100202443

`A201922(A000124(n))-A052446(n+1)`
-/

namespace A007146.P8403379272100202443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A052446 (n + 1)

end

end A007146.P8403379272100202443

/-! ## A007146.P2822020430787322351

`A304311(A179865(n+2))-A052446(n+1)`
-/

namespace A007146.P2822020430787322351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A179865 (n + 2)).toNat - A052446 (n + 1)

end

end A007146.P2822020430787322351

/-! ## A007146.P723294743294890850

`A000088(n+1)-(A052446(n+1)+A000719(n+1))`
-/

namespace A007146.P723294743294890850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A052446 (n + 1) + A000719 (n + 1))

end

end A007146.P723294743294890850

/-! ## A007146.P216652829863147315

`A048192(n+1)+A241843(n+1)-A052446(n+1)`
-/

namespace A007146.P216652829863147315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A052446 (n + 1))

end

end A007146.P216652829863147315

/-!
# A007147: Number of self-dual 2-colored necklaces with 2n beads.

The programs for A007147, the canonical program `A007147.P16521925321400448179` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007147 has offset 1).

The definition of A007147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007147.P16521925321400448179

`1/2*(A016116(n)+A000016(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A007147

/-- `1/2*(A016116(n)+A000016(n+1))` -/
def P16521925321400448179.Spec : Prop :=
  ∀ n, P16521925321400448179.a n = (A007147 (n + 1) : ℚ)

end A007147

/-! ## A007147.P11332354044885179751

`A256216(n+1)+A016116(n)`
-/

namespace A007147.P11332354044885179751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (n + 1) + A016116 n

end

end A007147.P11332354044885179751

namespace A007147

/-- `A256216(n+1)+A016116(n)` -/
def P11332354044885179751.Spec : Prop :=
  ∀ n, P11332354044885179751.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P11769254080515254274

`A000029(n+1)-A000011(n+1)`
-/

namespace A007147.P11769254080515254274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A000011 (n + 1)

end

end A007147.P11769254080515254274

namespace A007147

/-- `A000029(n+1)-A000011(n+1)` -/
def P11769254080515254274.Spec : Prop :=
  ∀ n, P11769254080515254274.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P3360037092258897300

`A091696(n+1)-A056357(n+1)`
-/

namespace A007147.P3360037092258897300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) - A056357 (n + 1)

end

end A007147.P3360037092258897300

namespace A007147

/-- `A091696(n+1)-A056357(n+1)` -/
def P3360037092258897300.Spec : Prop :=
  ∀ n, P3360037092258897300.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P5550438725248076539

`(A016116(n)+A000016(n+1))/2`
-/

namespace A007147.P5550438725248076539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n + A000016 (n + 1) : ℚ) / 2

end

end A007147.P5550438725248076539

namespace A007147

/-- `(A016116(n)+A000016(n+1))/2` -/
def P5550438725248076539.Spec : Prop :=
  ∀ n, P5550438725248076539.a n = (A007147 (n + 1) : ℚ)

end A007147

/-! ## A007147.P9720425423150024845

`A056342(n+1)+1-A056357(n+1)`
-/

namespace A007147.P9720425423150024845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 1) + (1 - A056357 (n + 1))

end

end A007147.P9720425423150024845

namespace A007147

/-- `A056342(n+1)+1-A056357(n+1)` -/
def P9720425423150024845.Spec : Prop :=
  ∀ n, P9720425423150024845.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P13749352403106000213

`A056342(n+1)+2-A000011(n+1)`
-/

namespace A007147.P13749352403106000213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 1) + (2 - A000011 (n + 1))

end

end A007147.P13749352403106000213

namespace A007147

/-- `A056342(n+1)+2-A000011(n+1)` -/
def P13749352403106000213.Spec : Prop :=
  ∀ n, P13749352403106000213.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P10893616999398727504

`A000011(n+1)+A000016(n+1)-A053656(n+1)`
-/

namespace A007147.P10893616999398727504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A000016 (n + 1) - A053656 (n + 1))

end

end A007147.P10893616999398727504

namespace A007147

/-- `A000011(n+1)+A000016(n+1)-A053656(n+1)` -/
def P10893616999398727504.Spec : Prop :=
  ∀ n, P10893616999398727504.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P10774650219893337622

`A000029(n+1)+A059053(n+1)-A000013(n+1)`
-/

namespace A007147.P10774650219893337622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) + (A059053 (n + 1) - A000013 (n + 1))

end

end A007147.P10774650219893337622

namespace A007147

/-- `A000029(n+1)+A059053(n+1)-A000013(n+1)` -/
def P10774650219893337622.Spec : Prop :=
  ∀ n, P10774650219893337622.a n = A007147 (n + 1)

end A007147

/-! ## A007147.P15158565743567179197

`A001371(n+1)+A115119(n+1)-A000011(n+1)`
-/

namespace A007147.P15158565743567179197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) + (A115119 (n + 1) - A000011 (n + 1))

end

end A007147.P15158565743567179197

namespace A007147

/-- `A001371(n+1)+A115119(n+1)-A000011(n+1)` -/
def P15158565743567179197.Spec : Prop :=
  ∀ n, P15158565743567179197.a n = A007147 (n + 1)

end A007147

/-!
# A007148: Number of self-complementary 2-colored bracelets (turnover necklaces) with 2n beads.

The programs for A007148, the canonical program `A007148.P13473997143567085578` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007148 has offset 1).

The definition of A007148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007148.P13473997143567085578

`1/2*(A000079(n)+A000013(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A007148

/-- `1/2*(A000079(n)+A000013(n+1))` -/
def P13473997143567085578.Spec : Prop :=
  ∀ n, P13473997143567085578.a n = (A007148 (n + 1) : ℚ)

end A007148

/-! ## A007148.P17918342900913055415

`A059078(n+1)+A000013(n+1)`
-/

namespace A007148.P17918342900913055415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059078 (n + 1) + A000013 (n + 1)

end

end A007148.P17918342900913055415

namespace A007148

/-- `A059078(n+1)+A000013(n+1)` -/
def P17918342900913055415.Spec : Prop :=
  ∀ n, P17918342900913055415.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P16138631550293204418

`A059053(n+1)+A005418(n+1)`
-/

namespace A007148.P16138631550293204418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + A005418 (n + 1)

end

end A007148.P16138631550293204418

namespace A007148

/-- `A059053(n+1)+A005418(n+1)` -/
def P16138631550293204418.Spec : Prop :=
  ∀ n, P16138631550293204418.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P13684061499877077287

`A000011(n+1)+A059078(n+1)+A059053(n+1)`
-/

namespace A007148.P13684061499877077287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A059078 (n + 1) + A059053 (n + 1))

end

end A007148.P13684061499877077287

namespace A007148

/-- `A000011(n+1)+A059078(n+1)+A059053(n+1)` -/
def P13684061499877077287.Spec : Prop :=
  ∀ n, P13684061499877077287.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P2028737688176714831

`A000048(n+1)+A115118(n+1)+A059078(n+1)`
-/

namespace A007148.P2028737688176714831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A115118 (n + 1) + A059078 (n + 1))

end

end A007148.P2028737688176714831

namespace A007148

/-- `A000048(n+1)+A115118(n+1)+A059078(n+1)` -/
def P2028737688176714831.Spec : Prop :=
  ∀ n, P2028737688176714831.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P12749264342341865822

`A158780(2*n)+A158780(n+1)+A059053(n+1)`
-/

namespace A007148.P12749264342341865822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) + (A158780 (n + 1) + A059053 (n + 1))

end

end A007148.P12749264342341865822

namespace A007148

/-- `A158780(2*n)+A158780(n+1)+A059053(n+1)` -/
def P12749264342341865822.Spec : Prop :=
  ∀ n, P12749264342341865822.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P5834126158061696460

`A216957(n+2)/2`
-/

namespace A007148.P5834126158061696460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216957 (n + 2) : ℚ) / 2

end

end A007148.P5834126158061696460

namespace A007148

/-- `A216957(n+2)/2` -/
def P5834126158061696460.Spec : Prop :=
  ∀ n, P5834126158061696460.a n = (A007148 (n + 1) : ℚ)

end A007148

/-! ## A007148.P4470318350531866641

`2^n-A059078(n+1)`
-/

namespace A007148.P4470318350531866641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A059078 (n + 1)

end

end A007148.P4470318350531866641

namespace A007148

/-- `2^n-A059078(n+1)` -/
def P4470318350531866641.Spec : Prop :=
  ∀ n, P4470318350531866641.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P10288860915115632936

`(A011782(n+1)+A000013(n+1))/2`
-/

namespace A007148.P10288860915115632936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A000013 (n + 1) : ℚ) / 2

end

end A007148.P10288860915115632936

namespace A007148

/-- `(A011782(n+1)+A000013(n+1))/2` -/
def P10288860915115632936.Spec : Prop :=
  ∀ n, P10288860915115632936.a n = (A007148 (n + 1) : ℚ)

end A007148

/-! ## A007148.P2289753964898858385

`(A016116(2*n)+A000013(n+1))/2`
-/

namespace A007148.P2289753964898858385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) + A000013 (n + 1) : ℚ) / 2

end

end A007148.P2289753964898858385

namespace A007148

/-- `(A016116(2*n)+A000013(n+1))/2` -/
def P2289753964898858385.Spec : Prop :=
  ∀ n, P2289753964898858385.a n = (A007148 (n + 1) : ℚ)

end A007148

/-! ## A007148.P10976733346436464252

`(A045674(2*n+1)+A000013(n+1))/2`
-/

namespace A007148.P10976733346436464252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045674 (2 * n + 1) + A000013 (n + 1) : ℚ) / 2

end

end A007148.P10976733346436464252

namespace A007148

/-- `(A045674(2*n+1)+A000013(n+1))/2` -/
def P10976733346436464252.Spec : Prop :=
  ∀ n, P10976733346436464252.a n = (A007148 (n + 1) : ℚ)

end A007148

/-! ## A007148.P14892894629528414052

`record[Δ[A256217(n+1)]]`
-/

namespace A007148.P14892894629528414052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007148.P14892894629528414052

namespace A007148

/-- `record[Δ[A256217(n+1)]]` -/
def P14892894629528414052.Spec : Prop :=
  ∀ n, P14892894629528414052.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P12784294783493558181

`A256217(2*(n+1))-A000079(n)`
-/

namespace A007148.P12784294783493558181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (2 * (n + 1)) - A000079 n

end

end A007148.P12784294783493558181

namespace A007148

/-- `A256217(2*(n+1))-A000079(n)` -/
def P12784294783493558181.Spec : Prop :=
  ∀ n, P12784294783493558181.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P12572207907592657044

`A256217(2*(n+1))-A056503(2*n+1)`
-/

namespace A007148.P12572207907592657044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (2 * (n + 1)) - A056503 (2 * n + 1)

end

end A007148.P12572207907592657044

namespace A007148

/-- `A256217(2*(n+1))-A056503(2*n+1)` -/
def P12572207907592657044.Spec : Prop :=
  ∀ n, P12572207907592657044.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P12628796388629941431

`A256217(2*(n+1))-A256217(2*n+1)`
-/

namespace A007148.P12628796388629941431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (2 * (n + 1)) - A256217 (2 * n + 1)

end

end A007148.P12628796388629941431

namespace A007148

/-- `A256217(2*(n+1))-A256217(2*n+1)` -/
def P12628796388629941431.Spec : Prop :=
  ∀ n, P12628796388629941431.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P10547355308884471202

`A000011(2*(n+1))-A007147(2*(n+1))`
-/

namespace A007148.P10547355308884471202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (2 * (n + 1)) - A007147 (2 * (n + 1))

end

end A007148.P10547355308884471202

namespace A007148

/-- `A000011(2*(n+1))-A007147(2*(n+1))` -/
def P10547355308884471202.Spec : Prop :=
  ∀ n, P10547355308884471202.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P10398431027330992593

`A056357(2*(n+1))+1-A007147(2*(n+1))`
-/

namespace A007148.P10398431027330992593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 (2 * (n + 1)) + (1 - A007147 (2 * (n + 1)))

end

end A007148.P10398431027330992593

namespace A007148

/-- `A056357(2*(n+1))+1-A007147(2*(n+1))` -/
def P10398431027330992593.Spec : Prop :=
  ∀ n, P10398431027330992593.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P7524185146868329540

`record[2*A000011(n)-A000029(n)]`
-/

namespace A007148.P7524185146868329540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000011 n - A000029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007148.P7524185146868329540

namespace A007148

/-- `record[2*A000011(n)-A000029(n)]` -/
def P7524185146868329540.Spec : Prop :=
  ∀ n, P7524185146868329540.a n = A007148 (n + 1)

end A007148

/-! ## A007148.P6866730590522658833

`2*A056357(2*(n+1))-A056342(2*(n+1))`
-/

namespace A007148.P6866730590522658833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056357 (2 * (n + 1)) - A056342 (2 * (n + 1))

end

end A007148.P6866730590522658833

namespace A007148

/-- `2*A056357(2*(n+1))-A056342(2*(n+1))` -/
def P6866730590522658833.Spec : Prop :=
  ∀ n, P6866730590522658833.a n = A007148 (n + 1)

end A007148

/-!
# A007149: 2-part of number of graphs on n nodes.

The programs for A007149, there is no canonical definition to state claims against.
-/

/-! ## A007149.P8364541127932926325

`val(A000088(n), 2)`
-/

namespace A007149.P8364541127932926325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000088 n).toNat 2

end

end A007149.P8364541127932926325

/-! ## A007149.P2358316505135493737

`val(∑[A002494(n)], 2)`
-/

namespace A007149.P2358316505135493737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A007149.P2358316505135493737

/-! ## A007149.P10189850080178153450

`log2(gcd(A000079(n), A000088(n)))`
-/

namespace A007149.P10189850080178153450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A000088 n) : ℝ)

end

end A007149.P10189850080178153450

/-! ## A007149.P11189028401941175535

`val(A001349(n)+A000719(n), 2)`
-/

namespace A007149.P11189028401941175535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001349 n + A000719 n).toNat 2

end

end A007149.P11189028401941175535

/-! ## A007149.P13943197013009777760

`A001222(and(-A000088(n), A000088(n)))`
-/

namespace A007149.P13943197013009777760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A000088 n) (A000088 n)).toNat

end

end A007149.P13943197013009777760

/-!
# A007150: 2-part of number of tournaments on n nodes.

The programs for A007150, there is no canonical definition to state claims against.
-/

/-! ## A007150.P8785369324763447614

`A053574(A133265(n))+A001222(A074323(n))`
-/

namespace A007150.P8785369324763447614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A133265 n).toNat + A001222 (A074323 n).toNat

end

end A007150.P8785369324763447614

/-! ## A007150.P16413452221938126127

`val(A000568(n+1), 2)`
-/

namespace A007150.P16413452221938126127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000568 (n + 1)).toNat 2

end

end A007150.P16413452221938126127

/-! ## A007150.P13517223134264714383

`val(A000010(A074323(n)*A133265(n)), 2)`
-/

namespace A007150.P13517223134264714383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A074323 n * A133265 n).toNat).toNat 2

end

end A007150.P13517223134264714383

/-! ## A007150.P5676107402220805082

`A053574(A074323(n)*A133265(n))`
-/

namespace A007150.P5676107402220805082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A074323 n * A133265 n).toNat

end

end A007150.P5676107402220805082

/-! ## A007150.P14508848902675587701

`A007814(A074323(n))+A001221(A007679(n+1))`
-/

namespace A007150.P14508848902675587701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A074323 n).toNat + A001221 (A007679 (n + 1)).toNat

end

end A007150.P14508848902675587701

/-!
# A007151: Number of planted evolutionary trees of magnitude n.

The programs for A007151, there is no canonical definition to state claims against.
-/

/-! ## A007151.P8306431295506823227

`A070046((comp[floor(ϕ*n)]+n)*a(n-1))` with `a(0)=1`
-/

namespace A007151.P8306431295506823227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070046 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℤ) * a (n - 1)).toNat

end

end A007151.P8306431295506823227

/-!
# A007152: Evolutionary trees of magnitude n.

The programs for A007152, there is no canonical definition to state claims against.
-/

/-! ## A007152.P7617692673736360863

`A342153(n!)+char[n²]`
-/

namespace A007152.P7617692673736360863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342153 (Nat.factorial n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007152.P7617692673736360863

/-!
# A007153: Dedekind numbers: number of monotone Boolean functions or antichains of subsets of an n-set containing at least one nonempty set.

The programs for A007153, there is no canonical definition to state claims against.
-/

/-! ## A007153.P7196206874982361167

`A014466(n)-1`
-/

namespace A007153.P7196206874982361167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n - 1

end

end A007153.P7196206874982361167

/-! ## A007153.P8673347961895440294

`A000372(n)-2`
-/

namespace A007153.P8673347961895440294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - 2

end

end A007153.P8673347961895440294

/-! ## A007153.P16397133397678810069

`A321800(n)+A014466(n)`
-/

namespace A007153.P16397133397678810069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A014466 n

end

end A007153.P16397133397678810069

/-! ## A007153.P11134277602736298924

`record[Δ[A000372(A142150(n))]]`
-/

namespace A007153.P11134277602736298924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007153.P11134277602736298924

/-! ## A007153.P3333412761004532056

`record[Δ[A000372(A332104(n))]]`
-/

namespace A007153.P3333412761004532056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 (A332104 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007153.P3333412761004532056

/-!
# A007154: Spectrum of the free Kleene algebra on n free variables.

The programs for A007154, there is no canonical definition to state claims against.
-/

/-! ## A007154.P13865817820674776142

`A268534(n)-2`
-/

namespace A007154.P13865817820674776142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268534 n - 2

end

end A007154.P13865817820674776142

/-!
# A007155: 

The programs for A007155, there is no canonical definition to state claims against.
-/

/-! ## A007155.P17249742124849677875

`2^2^n*3^(3^n-2^n)`
-/

namespace A007155.P17249742124849677875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℚ) * (3 : ℚ) ^ ((3 ^ n : ℤ) - (2 ^ n : ℤ) : ℤ)

end

end A007155.P17249742124849677875

/-!
# A007160: Number of diagonal dissections of a convex (n+6)-gon into n regions.

The programs for A007160, the canonical program `A007160.P17509289882170809495` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007160 has offset 1).

The definition of A007160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007160.P17509289882170809495

`C(n+4, 4)*C(2*(n+1)+4, n)/(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007160

/-- `C(n+4, 4)*C(2*(n+1)+4, n)/(n+1)` -/
def P17509289882170809495.Spec : Prop :=
  ∀ n, P17509289882170809495.a n = (A007160 (n + 1) : ℚ)

end A007160

/-! ## A007160.P5443039617770786070

`A126216(A167499(n+3))`
-/

namespace A007160.P5443039617770786070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A167499 (n + 3)).toNat

end

end A007160.P5443039617770786070

namespace A007160

/-- `A126216(A167499(n+3))` -/
def P5443039617770786070.Spec : Prop :=
  ∀ n, P5443039617770786070.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P8909107941589095696

`A126216(A155212(n)+13)`
-/

namespace A007160.P8909107941589095696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A155212 n + 13).toNat

end

end A007160.P8909107941589095696

namespace A007160

/-- `A126216(A155212(n)+13)` -/
def P8909107941589095696.Spec : Prop :=
  ∀ n, P8909107941589095696.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P10997439500599743391

`A126216(A056000(n)+15)`
-/

namespace A007160.P10997439500599743391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A056000 n + 15).toNat

end

end A007160.P10997439500599743391

namespace A007160

/-- `A126216(A056000(n)+15)` -/
def P10997439500599743391.Spec : Prop :=
  ∀ n, P10997439500599743391.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P9598969997664404066

`A126216(A000124(n+5)-(n+1))`
-/

namespace A007160.P9598969997664404066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A007160.P9598969997664404066

namespace A007160

/-- `A126216(A000124(n+5)-(n+1))` -/
def P9598969997664404066.Spec : Prop :=
  ∀ n, P9598969997664404066.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P12294667680061226514

`A086810(A052905(n+3))`
-/

namespace A007160.P12294667680061226514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A052905 (n + 3)).toNat

end

end A007160.P12294667680061226514

namespace A007160

/-- `A086810(A052905(n+3))` -/
def P12294667680061226514.Spec : Prop :=
  ∀ n, P12294667680061226514.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P11284096983660528655

`A033282(Δ[A264443(n)]+2)`
-/

namespace A007160.P11284096983660528655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (f1 (n + 1) - f1 n + 2).toNat

end

end A007160.P11284096983660528655

namespace A007160

/-- `A033282(Δ[A264443(n)]+2)` -/
def P11284096983660528655.Spec : Prop :=
  ∀ n, P11284096983660528655.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P9210303353126701588

`A086810(A055999(n+3)+1)`
-/

namespace A007160.P9210303353126701588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055999 (n + 3) + 1).toNat

end

end A007160.P9210303353126701588

namespace A007160

/-- `A086810(A055999(n+3)+1)` -/
def P9210303353126701588.Spec : Prop :=
  ∀ n, P9210303353126701588.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P12279323289279001777

`A033282(Δ[A023551(n+1)]-(n+2))`
-/

namespace A007160.P12279323289279001777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (f1 (n + 1) - f1 n - (n + 2 : ℤ)).toNat

end

end A007160.P12279323289279001777

namespace A007160

/-- `A033282(Δ[A023551(n+1)]-(n+2))` -/
def P12279323289279001777.Spec : Prop :=
  ∀ n, P12279323289279001777.a n = A007160 (n + 1)

end A007160

/-! ## A007160.P3948648631158732492

`record[A086810(A083920(A055999(n)))]`
-/

namespace A007160.P3948648631158732492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A083920 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007160.P3948648631158732492

namespace A007160

/-- `record[A086810(A083920(A055999(n)))]` -/
def P3948648631158732492.Spec : Prop :=
  ∀ n, P3948648631158732492.a n = A007160 (n + 1)

end A007160

/-!
# A007161: Number of blobs with vertical symmetry.

The programs for A007161, there is no canonical definition to state claims against.
-/

/-! ## A007161.P782670667097776589

`∑[A140486(a(n-1)+1)-3]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A007161.P782670667097776589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  A140486 (f1 (n - 1) + 1).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007161.P782670667097776589

/-! ## A007161.P11014791807687676664

`A247910(A001002(n))`
-/

namespace A007161.P11014791807687676664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (A001002 n).toNat

end

end A007161.P11014791807687676664

/-!
# A007162: Number of skeins with vertical symmetry.

The programs for A007162, there is no canonical definition to state claims against.
-/

/-! ## A007162.P4423636784519164646

`A320536(6*A106228(n))`
-/

namespace A007162.P4423636784519164646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (6 * A106228 n).toNat

end

end A007162.P4423636784519164646

/-! ## A007162.P17459559203504909300

`A382717(A165530(n))+char[5]`
-/

namespace A007162.P17459559203504909300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A165530 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007162.P17459559203504909300

/-! ## A007162.P6963526672693243614

`A188014(A007583(n))+A005754(n+1)`
-/

namespace A007162.P6963526672693243614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A007583 n).toNat + A005754 (n + 1)

end

end A007162.P6963526672693243614

/-!
# A007163: Number of P-graphs with vertical symmetry.

The programs for A007163, there is no canonical definition to state claims against.
-/

/-! ## A007163.P17254556161666731163

`A254528(A150263(n+1))`
-/

namespace A007163.P17254556161666731163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 (A150263 (n + 1)).toNat

end

end A007163.P17254556161666731163

/-! ## A007163.P12213683329313978481

`round(A188685(n+2)/A216403(2*n+5))`
-/

namespace A007163.P12213683329313978481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A188685 (n + 2) : ℚ) / (A216403 (2 * n + 5) : ℚ))

end

end A007163.P12213683329313978481

/-!
# A007164: Number of P-graphs with 2n edges.

The programs for A007164, there is no canonical definition to state claims against.
-/

/-! ## A007164.P16619915671324137977

`(A003169(n+1)+2*A007165(n+1)+A007163(n+1))/4`
-/

namespace A007164.P16619915671324137977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003169 (n + 1) + 2 * A007165 (n + 1) + A007163 (n + 1) : ℚ) / 4

end

end A007164.P16619915671324137977

/-! ## A007164.P6168457858983714242

`A101909(A246056(n)-C(n, 2)²)`
-/

namespace A007164.P6168457858983714242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101909 (A246056 n - (Nat.choose n 2 ^ 2 : ℤ)).toNat

end

end A007164.P6168457858983714242

/-!
# A007165: Number of P-graphs with 2n edges.

The programs for A007165, there is no canonical definition to state claims against.
-/

/-! ## A007165.P6425966508083619151

`A394216(∑[n+1])`
-/

namespace A007165.P6425966508083619151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007165.P6425966508083619151

/-! ## A007165.P18192250516623519897

`A107321(n)-A224447(A005578(n))`
-/

namespace A007165.P18192250516623519897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107321 n - A224447 (A005578 n).toNat

end

end A007165.P18192250516623519897

/-! ## A007165.P4079721315629103737

`A107321(n)-A343606(A195684(n))`
-/

namespace A007165.P4079721315629103737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107321 n - A343606 (A195684 n).toNat

end

end A007165.P4079721315629103737

/-!
# A007166: Number of blobs with 2n+1 edges.

The programs for A007166, there is no canonical definition to state claims against.
-/

/-! ## A007166.P6842905016925639693

`A214701(A392207(n+1))`
-/

namespace A007166.P6842905016925639693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A392207 (n + 1)).toNat

end

end A007166.P6842905016925639693

/-! ## A007166.P1866793890537271727

`A110656(A151152(n)+1+n)`
-/

namespace A007166.P1866793890537271727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A151152 n + 1 + (n : ℤ)).toNat

end

end A007166.P1866793890537271727

/-! ## A007166.P2099150861546141845

`A261585(A000041(∑[n+1]+1))`
-/

namespace A007166.P2099150861546141845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A000041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A007166.P2099150861546141845

/-!
# A007167: Number of skeins with 2n+1 edges.

The programs for A007167, there is no canonical definition to state claims against.
-/

/-! ## A007167.P14186671579668405241

`A189574(A064613(A000007(n)+n))`
-/

namespace A007167.P14186671579668405241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (A064613 (A000007 n + (n : ℤ)).toNat).toNat

end

end A007167.P14186671579668405241

/-! ## A007167.P14581971689576937497

`A189574(A064613(n)+A000038(n))`
-/

namespace A007167.P14581971689576937497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (A064613 n + A000038 n).toNat

end

end A007167.P14581971689576937497

/-! ## A007167.P16791308507474480349

`A004526(A338863(n)+A026770(n))`
-/

namespace A007167.P16791308507474480349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338863 n + A026770 n).toNat

end

end A007167.P16791308507474480349

/-!
# A007168: Number of P-graphs with 2n edges.

The programs for A007168, there is no canonical definition to state claims against.
-/

/-! ## A007168.P14644690079006528242

`A271863(A150643(n))`
-/

namespace A007168.P14644690079006528242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271863 (A150643 n).toNat

end

end A007168.P14644690079006528242

/-! ## A007168.P690310992737202157

`A008617(11*A150868(n))`
-/

namespace A007168.P690310992737202157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (11 * A150868 n).toNat

end

end A007168.P690310992737202157

/-!
# A007169: Number of Q-graphs rooted at a polygon.

The programs for A007169, there is no canonical definition to state claims against.
-/

/-! ## A007169.P15171177520878765542

`∑[A008616(C(4*n+2, n)/(2*n+1))]`
-/

namespace A007169.P15171177520878765542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway ((Nat.choose (4 * n + 2) n : ℚ) / (2 * n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007169.P15171177520878765542

/-! ## A007169.P577513020701984868

`A339219(A008008(n))`
-/

namespace A007169.P577513020701984868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339219 (A008008 n).toNat

end

end A007169.P577513020701984868

/-!
# A007170: Number of Q-graphs with 2n edges.

The programs for A007170, there is no canonical definition to state claims against.
-/

/-! ## A007170.P18427355636646017162

`A007169(n+1)+(A294724(n+1)-A294728(n+1))/2`
-/

namespace A007170.P18427355636646017162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007169 (n + 1) : ℚ) + (A294724 (n + 1) - A294728 (n + 1) : ℚ) / 2

end

end A007170.P18427355636646017162

/-! ## A007170.P12733352545429380135

`A244370(or(1, a(n-2)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A007170.P12733352545429380135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A244370 (Int.lor 1 (a (n - 2))).toNat

end

end A007170.P12733352545429380135

/-!
# A007171: Number of Q-graphs with 2n edges.

The programs for A007171, there is no canonical definition to state claims against.
-/

/-! ## A007171.P7402890200258454403

`∑[A064542(A151341(n))]`
-/

namespace A007171.P7402890200258454403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A151341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007171.P7402890200258454403

/-! ## A007171.P11544891390516741870

`A130341(A326083(∑[n]))`
-/

namespace A007171.P11544891390516741870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A326083 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007171.P11544891390516741870

/-!
# A007173: Number of simplicial 3-clusters with n cells.

The programs for A007173, there is no canonical definition to state claims against.
-/

/-! ## A007173.P4024113240775044498

`A027610(n+1)+A371350(n+1)`
-/

namespace A007173.P4024113240775044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027610 (n + 1) + A371350 (n + 1)

end

end A007173.P4024113240775044498

/-! ## A007173.P2295217684036475079

`2*A371350(n+1)+A371351(n+1)`
-/

namespace A007173.P2295217684036475079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371350 (n + 1) + A371351 (n + 1)

end

end A007173.P2295217684036475079

/-! ## A007173.P11005628996873688240

`2*A027610(n+1)-A371351(n+1)`
-/

namespace A007173.P11005628996873688240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027610 (n + 1) - A371351 (n + 1)

end

end A007173.P11005628996873688240

/-! ## A007173.P2946786655664213004

`A022562(n+1)-A350898(A008578(3*n+2))`
-/

namespace A007173.P2946786655664213004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022562 (n + 1) - A350898 (A008578 (3 * n + 2)).toNat

end

end A007173.P2946786655664213004

/-!
# A007175: Number of simplicial 4-clusters with n cells.

The programs for A007175, there is no canonical definition to state claims against.
-/

/-! ## A007175.P421653089904686798

`2*A182322(n+1)-A182299(n+1)`
-/

namespace A007175.P421653089904686798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182322 (n + 1) - A182299 (n + 1)

end

end A007175.P421653089904686798

/-! ## A007175.P8976913439420309139

`A369474(n+1)+A182322(n+1)`
-/

namespace A007175.P8976913439420309139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369474 (n + 1) + A182322 (n + 1)

end

end A007175.P8976913439420309139

/-! ## A007175.P15429802086749039792

`A182299(n+1)+2*A369474(n+1)`
-/

namespace A007175.P15429802086749039792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182299 (n + 1) + 2 * A369474 (n + 1)

end

end A007175.P15429802086749039792

/-! ## A007175.P14637852641660428115

`A004277(A182322(n+1))-A182299(n+1)`
-/

namespace A007175.P14637852641660428115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A182322 (n + 1)).toNat - A182299 (n + 1)

end

end A007175.P14637852641660428115

/-!
# A007176: Stopping times (see Borwein-Loring article for precise definition).

The programs for A007176, there is no canonical definition to state claims against.
-/

/-! ## A007176.P5218780920787966877

`A342999(A336103(n+1))+A298784(n)`
-/

namespace A007176.P5218780920787966877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342999 (A336103 (n + 1)).toNat + A298784 n

end

end A007176.P5218780920787966877

/-!
# A007177: Stopping times.

The programs for A007177, there is no canonical definition to state claims against.
-/

/-! ## A007177.P10386314244962710377

`A075428(A187222(n+1))`
-/

namespace A007177.P10386314244962710377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075428 (A187222 (n + 1)).toNat

end

end A007177.P10386314244962710377

/-! ## A007177.P9946640383608228634

`A342735(A032008(n)+1+n)`
-/

namespace A007177.P9946640383608228634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (A032008 n + 1 + (n : ℤ)).toNat

end

end A007177.P9946640383608228634

/-!
# A007178: Number of ways to write 1 as ordered sum of n powers of 1/2, allowing repeats.

The programs for A007178, there is no canonical definition to state claims against.
-/

/-! ## A007178.P10498891017281495478

`A294746(∑[n+2]-1)`
-/

namespace A007178.P10498891017281495478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007178.P10498891017281495478

/-! ## A007178.P13576742698703244880

`or(1, A294746(A034856(n+1)))`
-/

namespace A007178.P13576742698703244880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294746 (A034856 (n + 1)).toNat)

end

end A007178.P13576742698703244880

/-! ## A007178.P2456844004365614512

`A294746(A034856(n+1))+A185284(n)`
-/

namespace A007178.P2456844004365614512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (A034856 (n + 1)).toNat + A185284 n

end

end A007178.P2456844004365614512

/-! ## A007178.P14983755214766700926

`A262681(n)*A294746(A034856(n+1))`
-/

namespace A007178.P14983755214766700926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A294746 (A034856 (n + 1)).toNat

end

end A007178.P14983755214766700926

/-! ## A007178.P16656750147477557632

`A294746(A034856(n+1))%A034988(n+1)`
-/

namespace A007178.P16656750147477557632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294746 (A034856 (n + 1)).toNat) (A034988 (n + 1))

end

end A007178.P16656750147477557632

/-!
# A007179: Dual pairs of integrals arising from reflection coefficients.

The programs for A007179, the canonical program `A007179.P11733267821933838676` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007179 has offset 0).

The definition of A007179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007179.P11733267821933838676

`2^n/2-2^(n/2)*(1+(-1)^n)/4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007179

/-- `2^n/2-2^(n/2)*(1+(-1)^n)/4` -/
def P11733267821933838676.Spec : Prop :=
  ∀ n, P11733267821933838676.a n = (A007179 n : ℝ)

end A007179

/-! ## A007179.P15640403388612623146

`ogf((x-x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A007179.P15640403388612623146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -2, 4] n

end

end A007179.P15640403388612623146

namespace A007179

/-- `ogf((x-x^2)/(1-2x-2x^2+4x^3))` -/
def P15640403388612623146.Spec : Prop :=
  ∀ n, P15640403388612623146.a n = A007179 n

end A007179

/-! ## A007179.P15558860499770855874

`2*abs(2*a(n-3)-(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A007179.P15558860499770855874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * |2 * a (n - 3) - (a (n - 1) + a (n - 2))|

end

end A007179.P15558860499770855874

namespace A007179

/-- `2*abs(2*a(n-3)-(a(n-1)+a(n-2)))` -/
def P15558860499770855874.Spec : Prop :=
  ∀ n, P15558860499770855874.a n = A007179 n

end A007179

/-! ## A007179.P14441381716496856827

`A213173(n)%A005418(n+1)`
-/

namespace A007179.P14441381716496856827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213173 n) (A005418 (n + 1))

end

end A007179.P14441381716496856827

namespace A007179

/-- `A213173(n)%A005418(n+1)` -/
def P14441381716496856827.Spec : Prop :=
  ∀ n, P14441381716496856827.a n = A007179 n

end A007179

/-! ## A007179.P1835674729226894273

`A014236(n)/2`
-/

namespace A007179.P1835674729226894273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014236 n : ℚ) / 2

end

end A007179.P1835674729226894273

namespace A007179

/-- `A014236(n)/2` -/
def P1835674729226894273.Spec : Prop :=
  ∀ n, P1835674729226894273.a n = (A007179 n : ℚ)

end A007179

/-! ## A007179.P7180104726177590427

`A051437(n)%A005418(n+1)`
-/

namespace A007179.P7180104726177590427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051437 n) (A005418 (n + 1))

end

end A007179.P7180104726177590427

namespace A007179

/-- `A051437(n)%A005418(n+1)` -/
def P7180104726177590427.Spec : Prop :=
  ∀ n, P7180104726177590427.a n = A007179 n

end A007179

/-! ## A007179.P6813770686622202670

`Δ[A233411(n)/2]`
-/

namespace A007179.P6813770686622202670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007179.P6813770686622202670

namespace A007179

/-- `Δ[A233411(n)/2]` -/
def P6813770686622202670.Spec : Prop :=
  ∀ n, P6813770686622202670.a n = (A007179 n : ℚ)

end A007179

/-! ## A007179.P4935658554830299458

`A156232(n+2)/4`
-/

namespace A007179.P4935658554830299458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156232 (n + 2) : ℚ) / 4

end

end A007179.P4935658554830299458

namespace A007179

/-- `A156232(n+2)/4` -/
def P4935658554830299458.Spec : Prop :=
  ∀ n, P4935658554830299458.a n = (A007179 n : ℚ)

end A007179

/-! ## A007179.P15211049351126566508

`Δ[A208900(n+1)/4]`
-/

namespace A007179.P15211049351126566508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208900 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007179.P15211049351126566508

namespace A007179

/-- `Δ[A208900(n+1)/4]` -/
def P15211049351126566508.Spec : Prop :=
  ∀ n, P15211049351126566508.a n = (A007179 n : ℚ)

end A007179

/-! ## A007179.P14573936083372463977

`Δ[A208901(n+1)/4]`
-/

namespace A007179.P14573936083372463977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208901 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007179.P14573936083372463977

namespace A007179

/-- `Δ[A208901(n+1)/4]` -/
def P14573936083372463977.Spec : Prop :=
  ∀ n, P14573936083372463977.a n = (A007179 n : ℚ)

end A007179

/-! ## A007179.P16028214132936320102

`A001792(n)%A178945(n+1)`
-/

namespace A007179.P16028214132936320102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001792 n) (A178945 (n + 1))

end

end A007179.P16028214132936320102

namespace A007179

/-- `A001792(n)%A178945(n+1)` -/
def P16028214132936320102.Spec : Prop :=
  ∀ n, P16028214132936320102.a n = A007179 n

end A007179

/-! ## A007179.P14771030947167417224

`A098657(n)%A083318(n)`
-/

namespace A007179.P14771030947167417224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098657 n) (A083318 n)

end

end A007179.P14771030947167417224

namespace A007179

/-- `A098657(n)%A083318(n)` -/
def P14771030947167417224.Spec : Prop :=
  ∀ n, P14771030947167417224.a n = A007179 n

end A007179

/-! ## A007179.P5277527648659308738

`A003665(n)%A005418(n+1)`
-/

namespace A007179.P5277527648659308738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003665 n) (A005418 (n + 1))

end

end A007179.P5277527648659308738

namespace A007179

/-- `A003665(n)%A005418(n+1)` -/
def P5277527648659308738.Spec : Prop :=
  ∀ n, P5277527648659308738.a n = A007179 n

end A007179

/-! ## A007179.P6031079143826788822

`A323100(A007590(n+1))`
-/

namespace A007179.P6031079143826788822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323100 (A007590 (n + 1)).toNat

end

end A007179.P6031079143826788822

namespace A007179

/-- `A323100(A007590(n+1))` -/
def P6031079143826788822.Spec : Prop :=
  ∀ n, P6031079143826788822.a n = A007179 n

end A007179

/-! ## A007179.P16196698546054903304

`A323100(A080476(n+1))`
-/

namespace A007179.P16196698546054903304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323100 (A080476 (n + 1)).toNat

end

end A007179.P16196698546054903304

namespace A007179

/-- `A323100(A080476(n+1))` -/
def P16196698546054903304.Spec : Prop :=
  ∀ n, P16196698546054903304.a n = A007179 n

end A007179

/-!
# A007180: Expansion of critical exponent for walks on tetrahedral lattice.

The programs for A007180, there is no canonical definition to state claims against.
-/

/-! ## A007180.P10212935073651758940

`2*A121190(n+3)+1`
-/

namespace A007180.P10212935073651758940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121190 (n + 3) + 1

end

end A007180.P10212935073651758940

/-! ## A007180.P14002268731582933628

`A005408(A121190(n+3))`
-/

namespace A007180.P14002268731582933628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A121190 (n + 3)).toNat

end

end A007180.P14002268731582933628

/-!
# A007181: Expansion of critical exponent for walks on tetrahedral lattice.

The programs for A007181, there is no canonical definition to state claims against.
-/

/-! ## A007181.P3351801734477638698

`A303403(A000642(n+2))`
-/

namespace A007181.P3351801734477638698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303403 (A000642 (n + 2)).toNat

end

end A007181.P3351801734477638698

/-! ## A007181.P12080635927536607210

`A007918(n)*A153679(A326489(n))`
-/

namespace A007181.P12080635927536607210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n * A153679 (A326489 n).toNat

end

end A007181.P12080635927536607210

/-! ## A007181.P14799940521029757283

`A151747(A099036(n))+A034947(n+1)`
-/

namespace A007181.P14799940521029757283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 (A099036 n).toNat + A034947 (n + 1)

end

end A007181.P14799940521029757283

/-!
# A007182: Dimension of n-th compound of a certain space.

The programs for A007182, there is no canonical definition to state claims against.
-/

/-! ## A007182.P13927973358245599654

`A091360(n)-A082858(A191659(n))`
-/

namespace A007182.P13927973358245599654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - A082858 (A191659 n).toNat

end

end A007182.P13927973358245599654

/-!
# A007185: Automorphic numbers ending in digit 5: a(n) = 5^(2^n) mod 10^n.

The programs for A007185, there is no canonical definition to state claims against.
-/

/-! ## A007185.P12500974338397468765

`A216092(n+1)+1`
-/

namespace A007185.P12500974338397468765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216092 (n + 1) + 1

end

end A007185.P12500974338397468765

/-! ## A007185.P9671642256864056114

`∑[A011557(n)*A018247(n)]`
-/

namespace A007185.P9671642256864056114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A018247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007185.P9671642256864056114

/-! ## A007185.P99365774250579840

`lcm(5^A214880(n+1), A214882(n+1))`
-/

namespace A007185.P99365774250579840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A214880 (n + 1) : ℤ))) (A214882 (n + 1))

end

end A007185.P99365774250579840

/-! ## A007185.P3148475883483010809

`A198971(n)+A199685(n)-A216093(n+1)`
-/

namespace A007185.P3148475883483010809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A216093 (n + 1))

end

end A007185.P3148475883483010809

/-! ## A007185.P12311924064720118081

`A224473(n+1)+A224478(n+1)-A198971(n)`
-/

namespace A007185.P12311924064720118081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224473 (n + 1) + (A224478 (n + 1) - A198971 n)

end

end A007185.P12311924064720118081

/-! ## A007185.P14142634397405662432

`A224478(n+1)+A199685(n)-A224474(n+1)`
-/

namespace A007185.P14142634397405662432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224478 (n + 1) + (A199685 n - A224474 (n + 1))

end

end A007185.P14142634397405662432

/-! ## A007185.P658903095628808314

`A224473(n+1)+A224474(n+1)-A216093(n+1)`
-/

namespace A007185.P658903095628808314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224473 (n + 1) + (A224474 (n + 1) - A216093 (n + 1))

end

end A007185.P658903095628808314

/-! ## A007185.P3694217624449015774

`A224475(n+1)+A224476(n+1)-A216093(n+1)`
-/

namespace A007185.P3694217624449015774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224475 (n + 1) + (A224476 (n + 1) - A216093 (n + 1))

end

end A007185.P3694217624449015774

/-! ## A007185.P6701222207247849730

`A038444(A000124(n))-A016090(n+1)`
-/

namespace A007185.P6701222207247849730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (A000124 n).toNat - A016090 (n + 1)

end

end A007185.P6701222207247849730

/-! ## A007185.P13177254405610601444

`a(n-1)²%(10^(n+1))` with `a(0)=5`
-/

namespace A007185.P13177254405610601444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) ^ 2 % 10 ^ (n + 1)

end

end A007185.P13177254405610601444

/-!
# A007186: Stopping times.

The programs for A007186, there is no canonical definition to state claims against.
-/

/-! ## A007186.P6826730614662936996

`record[A375123(3*n+2)+A004273(n)]`
-/

namespace A007186.P6826730614662936996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375123 (3 * n + 2) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007186.P6826730614662936996

/-! ## A007186.P9345156682509236949

`A111706(a(n-1))+5` with `a(0)=2, a(1)=6`
-/

namespace A007186.P9345156682509236949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  A111706 (a (n - 1)).toNat + 5

end

end A007186.P9345156682509236949

/-!
# A007187: Leech's tree-labeling problem for n nodes.

The programs for A007187, there is no canonical definition to state claims against.
-/

/-! ## A007187.P4241045142810063707

`A163406(Δ[n²])-2`
-/

namespace A007187.P4241045142810063707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A007187.P4241045142810063707

/-! ## A007187.P12020910579524297668

`∑[A095048(floor(9^(n/3)))]`
-/

namespace A007187.P12020910579524297668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 ⌊(9 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007187.P12020910579524297668

/-! ## A007187.P14852099789222553810

`abs(2-A163406(2*n+1))`
-/

namespace A007187.P14852099789222553810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A163406 (2 * n + 1)|

end

end A007187.P14852099789222553810

/-! ## A007187.P18091918663485793124

`ceil(A038437(2*n+3)/20)`
-/

namespace A007187.P18091918663485793124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038437 (2 * n + 3) : ℚ) / 20⌉

end

end A007187.P18091918663485793124

/-! ## A007187.P9415970539929261041

`record[∑[n+1]+1-A015746(n)]`
-/

namespace A007187.P9415970539929261041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - A015746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007187.P9415970539929261041

/-!
# A007188: Multiplicative encoding of Pascal triangle: Product p(i+1)^C(n,i).

The programs for A007188, there is no canonical definition to state claims against.
-/

/-! ## A007188.P8500059275496657600

`A066117(∑[n+1])`
-/

namespace A007188.P8500059275496657600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007188.P8500059275496657600

/-! ## A007188.P16429815173047342142

`∏[A252740(n+1)/A252738(n)]`
-/

namespace A007188.P16429815173047342142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252740 (n + 1) : ℚ) / (A252738 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007188.P16429815173047342142

/-!
# A007193: Number of strict n-node animals on cubic lattice.

The programs for A007193, there is no canonical definition to state claims against.
-/

/-! ## A007193.P12680771557335696650

`A057354(A208983(2*n+1))+1`
-/

namespace A007193.P12680771557335696650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A208983 (2 * n + 1)).toNat + 1

end

end A007193.P12680771557335696650

/-!
# A007194: Number of primitive n-node animals on cubic lattice.

The programs for A007194, there is no canonical definition to state claims against.
-/

/-! ## A007194.P1213823924804569715

`A337636(A371817(n))`
-/

namespace A007194.P1213823924804569715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337636 (A371817 n).toNat

end

end A007194.P1213823924804569715

/-!
# A007195: Number of strict n-node animals on b.c.c. lattice.

The programs for A007195, there is no canonical definition to state claims against.
-/

/-! ## A007195.P17850773201585559816

`record[A220466(A157156(n))]`
-/

namespace A007195.P17850773201585559816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A157156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007195.P17850773201585559816

/-!
# A007196: Number of primitive n-node animals on b.c.c. lattice.

The programs for A007196, there is no canonical definition to state claims against.
-/

/-! ## A007196.P640457106204616138

`A058146(n+3)-(n+1)*∑[n]`
-/

namespace A007196.P640457106204616138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058146 (n + 3) - (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A007196.P640457106204616138

/-!
# A007197: Number of n-node animals on b.c.c. lattice.

The programs for A007197, there is no canonical definition to state claims against.
-/

/-! ## A007197.P15067266573066661146

`A315002((n+1)!*∑[n/(n+1)])`
-/

namespace A007197.P15067266573066661146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315002 (SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A007197.P15067266573066661146

/-!
# A007198: Number of n-node animals on f.c.c. lattice.

The programs for A007198, there is no canonical definition to state claims against.
-/

/-! ## A007198.P9533175285034643885

`A008620(A074606(n))+A004524(n)`
-/

namespace A007198.P9533175285034643885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A074606 n).toNat + A004524 n

end

end A007198.P9533175285034643885

/-! ## A007198.P16285321149762519611

`A023645(A071881(n))+A010736(n)`
-/

namespace A007198.P16285321149762519611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A071881 n).toNat + A010736 n

end

end A007198.P16285321149762519611

/-!
# A007199: Number of n-node animals on f.c.c. lattice.

The programs for A007199, there is no canonical definition to state claims against.
-/

/-! ## A007199.P12337451520863472023

`A008619(((n+3)*3^(n-1)+(n+5)*5^(n-1))/2-(2^n-2)*n*2^(n-3))`
-/

namespace A007199.P12337451520863472023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (((n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 5 : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) / 2 - ((2 ^ n : ℤ) - 2 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)))).toNat

end

end A007199.P12337451520863472023

/-! ## A007199.P475445297728402898

`A109168(A082308(n)-n*C(2^abs(1-n), 2))`
-/

namespace A007199.P475445297728402898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A082308 n - (n * Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat 2 : ℤ)).toNat

end

end A007199.P475445297728402898

