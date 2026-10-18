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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A047000: Array T read by diagonals; T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=x/2 except at the endpoints.

The programs for A047000, there is no canonical definition to state claims against.
-/

/-! ## A047000.P9048937630880682137

`A047070(∑[2*n]%A080036(n))`
-/

namespace A047000.P9048937630880682137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A047000.P9048937630880682137

/-! ## A047000.P11119835571298661891

`A047070(A056943(n)+A003056(n))`
-/

namespace A047000.P11119835571298661891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A056943 n + A003056 n).toNat

end

end A047000.P11119835571298661891

/-! ## A047000.P14277298388688131394

`A047070(gcd(A061579(n), A133089(n)))`
-/

namespace A047000.P14277298388688131394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (Int.gcd (A061579 n) (A133089 n))

end

end A047000.P14277298388688131394

/-! ## A047000.P16499627366157270481

`A047070(A061579(n))`
-/

namespace A047000.P16499627366157270481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A061579 n).toNat

end

end A047000.P16499627366157270481

/-! ## A047000.P14289979835485230673

`A047070(A114327(n)+n)`
-/

namespace A047000.P14289979835485230673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A114327 n + (n : ℤ)).toNat

end

end A047000.P14289979835485230673

/-! ## A047000.P14900765169576364521

`A047070(A038722(n+1)-1)`
-/

namespace A047000.P14900765169576364521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A038722 (n + 1) - 1).toNat

end

end A047000.P14900765169576364521

/-! ## A047000.P311672802525329081

`A047070(A057428(n)+A038722(n+1))`
-/

namespace A047000.P311672802525329081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A057428 n + A038722 (n + 1)).toNat

end

end A047000.P311672802525329081

/-! ## A047000.P8296472609734994511

`A047070(A038722(n+2))`
-/

namespace A047000.P8296472609734994511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A038722 (n + 2)).toNat

end

end A047000.P8296472609734994511

/-!
# A047001: Sum{T(i,n-i): i=0,1,...,n}, array T given by A047000.

The programs for A047001, there is no canonical definition to state claims against.
-/

/-! ## A047001.P14671870996702429737

`A124758(A001129(n))+A099155(n)`
-/

namespace A047001.P14671870996702429737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A001129 n).toNat + A099155 n

end

end A047001.P14671870996702429737

/-! ## A047001.P17158945314428187520

`A239957(Δ[A007504(n)])+A099155(n)`
-/

namespace A047001.P17158945314428187520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239957 (f1 (n + 1) - f1 n).toNat + A099155 n

end

end A047001.P17158945314428187520

/-! ## A047001.P1004419070651542031

`A239957(p?[A259153(n)])+A099155(n)`
-/

namespace A047001.P1004419070651542031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239957 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A099155 n

end

end A047001.P1004419070651542031

/-! ## A047001.P7118377367722527781

`A239957(A000040(n+1))+A099155(n)`
-/

namespace A047001.P7118377367722527781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239957 (A000040 (n + 1)).toNat + A099155 n

end

end A047001.P7118377367722527781

/-! ## A047001.P4227174042459325549

`A239957(A006005(n+1))+A099155(n)`
-/

namespace A047001.P4227174042459325549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239957 (A006005 (n + 1)).toNat + A099155 n

end

end A047001.P4227174042459325549

/-!
# A047002: T(n,n), array T given by A047000.

The programs for A047002, there is no canonical definition to state claims against.
-/

/-! ## A047002.P2984059357841446159

`A047000(∑[4*n])`
-/

namespace A047002.P2984059357841446159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047002.P2984059357841446159

/-! ## A047002.P4197466134302234880

`A047070(∑[4*n])`
-/

namespace A047002.P4197466134302234880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047002.P4197466134302234880

/-! ## A047002.P14299729350635855474

`A047070(A046092(n))%(7*8^n)`
-/

namespace A047002.P14299729350635855474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047070 (A046092 n).toNat) (7 * 8 ^ n : ℤ)

end

end A047002.P14299729350635855474

/-! ## A047002.P9538368530927094241

`A047000(A046092(n))%A214778(n)`
-/

namespace A047002.P9538368530927094241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047000 (A046092 n).toNat) (A214778 n)

end

end A047002.P9538368530927094241

/-! ## A047002.P11130861690927203195

`lcm(A047070(A046092(n)), A071935(n+1))`
-/

namespace A047002.P11130861690927203195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047070 (A046092 n).toNat) (A071935 (n + 1))

end

end A047002.P11130861690927203195

/-! ## A047002.P18405173487467965573

`A047070(A046092(n))-A000038(A047070(n))`
-/

namespace A047002.P18405173487467965573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A046092 n).toNat - A000038 (A047070 n).toNat

end

end A047002.P18405173487467965573

/-! ## A047002.P3248429763636728654

`A047070(A046092(n))*A074206(A023569(n+3))`
-/

namespace A047002.P3248429763636728654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A046092 n).toNat * A074206 (A023569 (n + 3)).toNat

end

end A047002.P3248429763636728654

/-! ## A047002.P10417142048695162210

`A124747(2*(n+1)²)`
-/

namespace A047002.P10417142048695162210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124747 (2 * (n + 1) ^ 2)

end

end A047002.P10417142048695162210

/-! ## A047002.P8148957664043929062

`A047070(A046092(n))+A000038(A088580((n+1)²))`
-/

namespace A047002.P8148957664043929062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A046092 n).toNat + A000038 (A088580 ((n + 1) ^ 2)).toNat

end

end A047002.P8148957664043929062

/-!
# A047003: T(n,n-1), array T given by A047000.

The programs for A047003, there is no canonical definition to state claims against.
-/

/-! ## A047003.P12355287405394026971

`A047000(2*(n+1)²)`
-/

namespace A047003.P12355287405394026971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (2 * (n + 1) ^ 2)

end

end A047003.P12355287405394026971

/-! ## A047003.P11819358899044979616

`A047070(A056220(n+1))`
-/

namespace A047003.P11819358899044979616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A056220 (n + 1)).toNat

end

end A047003.P11819358899044979616

/-! ## A047003.P9663797741618353333

`A047070(A054000(n+1)+1)`
-/

namespace A047003.P9663797741618353333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A054000 (n + 1) + 1).toNat

end

end A047003.P9663797741618353333

/-! ## A047003.P5757672941613541105

`A047070(A001844(n)+2*n)`
-/

namespace A047003.P5757672941613541105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A001844 n + (2 * n : ℤ)).toNat

end

end A047003.P5757672941613541105

/-! ## A047003.P332599152620443720

`A047070(A001844(n)+n+n)`
-/

namespace A047003.P332599152620443720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A047003.P332599152620443720

/-! ## A047003.P15860762494732555592

`A047070(eq[n+2, A038722(n+1)])`
-/

namespace A047003.P15860762494732555592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047003.P15860762494732555592

/-!
# A047004: T(n,n-2), array T given by A047000.

The programs for A047004, there is no canonical definition to state claims against.
-/

/-! ## A047004.P3341787890507579072

`A047000((n+1)²+(n+2)²)`
-/

namespace A047004.P3341787890507579072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047004.P3341787890507579072

/-! ## A047004.P11219389664220574640

`A047070(A132209(n+1))`
-/

namespace A047004.P11219389664220574640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A132209 (n + 1)).toNat

end

end A047004.P11219389664220574640

/-! ## A047004.P16525355446360021068

`A047070(A142463(n+1))`
-/

namespace A047004.P16525355446360021068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A142463 (n + 1)).toNat

end

end A047004.P16525355446360021068

/-! ## A047004.P5179648367421237827

`A047070(A046092(n+1)-1)`
-/

namespace A047004.P5179648367421237827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A046092 (n + 1) - 1).toNat

end

end A047004.P5179648367421237827

/-! ## A047004.P18101842805931137133

`A047070(A001844(n+1)-2)`
-/

namespace A047004.P18101842805931137133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A001844 (n + 1) - 2).toNat

end

end A047004.P18101842805931137133

/-! ## A047004.P988842585458129545

`A047070(A099776(n+1)-2)`
-/

namespace A047004.P988842585458129545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (A099776 (n + 1) - 2).toNat

end

end A047004.P988842585458129545

/-!
# A047005: T(n,n-3), array T given by A047000.

The programs for A047005, there is no canonical definition to state claims against.
-/

/-! ## A047005.P8938677943409983124

`A047070(2*(n+1)*(n+3))`
-/

namespace A047005.P8938677943409983124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (2 * ((n + 1) * (n + 3)))

end

end A047005.P8938677943409983124

/-! ## A047005.P12522448915613910425

`A047000(A005408((n+2)²))`
-/

namespace A047005.P12522448915613910425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A005408 ((n + 2) ^ 2)).toNat

end

end A047005.P12522448915613910425

/-! ## A047005.P8369633550636060259

`A047000(eq[A061579(n)+2, n-1])`
-/

namespace A047005.P8369633550636060259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047005.P8369633550636060259

/-! ## A047005.P8786929524024610226

`A047000(A054000(2*(n+2))-(6*(n+2)²-3))`
-/

namespace A047005.P8786929524024610226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A054000 (2 * (n + 2)) - ((6 * (n + 2) ^ 2 : ℤ) - 3)).toNat

end

end A047005.P8786929524024610226

/-! ## A047005.P5317392983045400727

`A047000(eq[A038722(n+1), A289207(n)])`
-/

namespace A047005.P5317392983045400727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047005.P5317392983045400727

/-!
# A047006: T(n,n+1), array T given by A047000.

The programs for A047006, there is no canonical definition to state claims against.
-/

/-! ## A047006.P4433124928080219793

`A000108(n)+A000984(n)-A127927(n)`
-/

namespace A047006.P4433124928080219793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000984 n - A127927 n)

end

end A047006.P4433124928080219793

/-! ## A047006.P10059335806382371981

`A047070(2*(n+1)²)`
-/

namespace A047006.P10059335806382371981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (2 * (n + 1) ^ 2)

end

end A047006.P10059335806382371981

/-! ## A047006.P12226118836420872724

`A047000(A056220(n+1))`
-/

namespace A047006.P12226118836420872724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A056220 (n + 1)).toNat

end

end A047006.P12226118836420872724

/-! ## A047006.P9720437651824640146

`A047000(A054000(n+1)+1)`
-/

namespace A047006.P9720437651824640146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A054000 (n + 1) + 1).toNat

end

end A047006.P9720437651824640146

/-! ## A047006.P9514356856861856701

`A047000(A001844(n)+2*n)`
-/

namespace A047006.P9514356856861856701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A001844 n + (2 * n : ℤ)).toNat

end

end A047006.P9514356856861856701

/-! ## A047006.P6645294181002528019

`A047000(eq[n+1, A061579(n)])`
-/

namespace A047006.P6645294181002528019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047006.P6645294181002528019

/-! ## A047006.P16892339696652580859

`A047000(eq[1, A061579(n)-n])`
-/

namespace A047006.P16892339696652580859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047006.P16892339696652580859

/-! ## A047006.P8679023304819936789

`A047000(A001844(n)+n+n)`
-/

namespace A047006.P8679023304819936789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A047006.P8679023304819936789

/-!
# A047007: T(n,n+2), array T given by A047000.

The programs for A047007, there is no canonical definition to state claims against.
-/

/-! ## A047007.P17153693651034916749

`A047002(n+1)+A111160(n+1)-A187430(n)`
-/

namespace A047007.P17153693651034916749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047002 (n + 1) + (A111160 (n + 1) - A187430 n)

end

end A047007.P17153693651034916749

/-! ## A047007.P12242716861333552499

`A047006(n+1)-A047002(n+1)`
-/

namespace A047007.P12242716861333552499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047006 (n + 1) - A047002 (n + 1)

end

end A047007.P12242716861333552499

/-! ## A047007.P7600389245579325026

`A047070((n+1)²+(n+2)²)`
-/

namespace A047007.P7600389245579325026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047007.P7600389245579325026

/-! ## A047007.P230014222102817038

`A047000(A132209(n+1))`
-/

namespace A047007.P230014222102817038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A132209 (n + 1)).toNat

end

end A047007.P230014222102817038

/-! ## A047007.P1870304938967572084

`A047000(A142463(n+1))`
-/

namespace A047007.P1870304938967572084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A142463 (n + 1)).toNat

end

end A047007.P1870304938967572084

/-! ## A047007.P10210215349035678458

`A047000(A046092(n+1)-1)`
-/

namespace A047007.P10210215349035678458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A046092 (n + 1) - 1).toNat

end

end A047007.P10210215349035678458

/-! ## A047007.P15486214232102365116

`A047000(A001844(n+1)-2)`
-/

namespace A047007.P15486214232102365116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A001844 (n + 1) - 2).toNat

end

end A047007.P15486214232102365116

/-! ## A047007.P15774282474018051322

`A047000(A099776(n+1)-2)`
-/

namespace A047007.P15774282474018051322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (A099776 (n + 1) - 2).toNat

end

end A047007.P15774282474018051322

/-! ## A047007.P25557715367448958

`A047000(eq[n+2, A061579(n)])`
-/

namespace A047007.P25557715367448958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047007.P25557715367448958

/-! ## A047007.P2293627365021869081

`A047000(eq[2, A061579(n)-n])`
-/

namespace A047007.P2293627365021869081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047007.P2293627365021869081

/-!
# A047008: T(n,n+3), array T given by A047000.

The programs for A047008, there is no canonical definition to state claims against.
-/

/-! ## A047008.P16820358098235377526

`Δ[A047007(n)-∑[A047002(n)]]`
-/

namespace A047008.P16820358098235377526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047007 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047008.P16820358098235377526

/-! ## A047008.P14752764567768997228

`Δ[A047007(n)]-A047002(n+1)`
-/

namespace A047008.P14752764567768997228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047002 (n + 1)

end

end A047008.P14752764567768997228

/-! ## A047008.P2996692936262783399

`A047007(n+1)-A047006(n+1)`
-/

namespace A047008.P2996692936262783399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047007 (n + 1) - A047006 (n + 1)

end

end A047008.P2996692936262783399

/-! ## A047008.P16222793128904502164

`A047007(n+1)-(A047007(n)+A047002(n+1))`
-/

namespace A047008.P16222793128904502164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047007 (n + 1) - (A047007 n + A047002 (n + 1))

end

end A047008.P16222793128904502164

/-! ## A047008.P9682169589654790191

`A047000(2*(n+1)*(n+3))`
-/

namespace A047008.P9682169589654790191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (2 * ((n + 1) * (n + 3)))

end

end A047008.P9682169589654790191

/-! ## A047008.P6890235437677606147

`A047070(eq[n, A038722(n+1)+2])`
-/

namespace A047008.P6890235437677606147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047008.P6890235437677606147

/-! ## A047008.P12692525541897088637

`A047070(eq[A038722(n+1), A289207(n)])`
-/

namespace A047008.P12692525541897088637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047070 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047008.P12692525541897088637

/-!
# A047009: T(2n,n), array T given by A047000.

The programs for A047009, the canonical program `A047009.P16609204866922919021` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047009 has offset 0).

The definition of A047009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047009.P1108450822288112245

`A116637(comp[2*(n+1)])`
-/

namespace A047009.P1108450822288112245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A047009.P1108450822288112245

namespace A047009

/-- `A116637(comp[2*(n+1)])` -/
def P1108450822288112245.Spec : Prop :=
  ∀ n, P1108450822288112245.a n = A047009 n

end A047009

/-! ## A047009.P15149661692981504952

`record[A116637(n*n%2)]`
-/

namespace A047009.P15149661692981504952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047009.P15149661692981504952

namespace A047009

/-- `record[A116637(n*n%2)]` -/
def P15149661692981504952.Spec : Prop :=
  ∀ n, P15149661692981504952.a n = A047009 n

end A047009

/-! ## A047009.P8512990625881034899

`record[A116637(n)^Δ[floor(n/2)]]`
-/

namespace A047009.P8512990625881034899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047009.P8512990625881034899

namespace A047009

/-- `record[A116637(n)^Δ[floor(n/2)]]` -/
def P8512990625881034899.Spec : Prop :=
  ∀ n, P8512990625881034899.a n = (A047009 n : ℚ)

end A047009

/-! ## A047009.P11776146432851522286

`record[A116637(A006369(n))]`
-/

namespace A047009.P11776146432851522286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047009.P11776146432851522286

namespace A047009

/-- `record[A116637(A006369(n))]` -/
def P11776146432851522286.Spec : Prop :=
  ∀ n, P11776146432851522286.a n = A047009 n

end A047009

/-! ## A047009.P5358503311253131729

`record[A116637(A063198(n+1))]`
-/

namespace A047009.P5358503311253131729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A063198 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047009.P5358503311253131729

namespace A047009

/-- `record[A116637(A063198(n+1))]` -/
def P5358503311253131729.Spec : Prop :=
  ∀ n, P5358503311253131729.a n = A047009 n

end A047009

/-! ## A047009.P5958589398558604150

`record[gcd(A116637(n), A126120(n))]`
-/

namespace A047009.P5958589398558604150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116637 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047009.P5958589398558604150

namespace A047009

/-- `record[gcd(A116637(n), A126120(n))]` -/
def P5958589398558604150.Spec : Prop :=
  ∀ n, (P5958589398558604150.a n : ℤ) = A047009 n

end A047009

/-! ## A047009.P5819033312281648276

`record[and(A033999(n), A116637(n))]`
-/

namespace A047009.P5819033312281648276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A116637 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047009.P5819033312281648276

namespace A047009

/-- `record[and(A033999(n), A116637(n))]` -/
def P5819033312281648276.Spec : Prop :=
  ∀ n, P5819033312281648276.a n = A047009 n

end A047009

/-! ## A047009.P10451052563551529862

`A116637(A004273(n))^round(n/(n+1))`
-/

namespace A047009.P10451052563551529862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (A004273 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ)

end

end A047009.P10451052563551529862

namespace A047009

/-- `A116637(A004273(n))^round(n/(n+1))` -/
def P10451052563551529862.Spec : Prop :=
  ∀ n, P10451052563551529862.a n = (A047009 n : ℚ)

end A047009

/-! ## A047009.P14094911806407141793

`A116637(A004273(n))+A008683(2*(n+2)²)`
-/

namespace A047009.P14094911806407141793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A004273 n).toNat + A008683 (2 * (n + 2) ^ 2)

end

end A047009.P14094911806407141793

namespace A047009

/-- `A116637(A004273(n))+A008683(2*(n+2)²)` -/
def P14094911806407141793.Spec : Prop :=
  ∀ n, P14094911806407141793.a n = A047009 n

end A047009

/-! ## A047009.P16609204866922919021

`A006013(n)-A030983(A028310(n)+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A047009

/-- `A006013(n)-A030983(A028310(n)+2)` -/
def P16609204866922919021.Spec : Prop :=
  ∀ n, P16609204866922919021.a n = A047009 n

theorem P16609204866922919021.correct : P16609204866922919021.Spec := by
  intro n
  simp only [A047009]

end A047009

/-! ## A047009.P6617986031895303385

`A227726(n)/record[A134226(n+1)]`
-/

namespace A047009.P6617986031895303385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227726 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A047009.P6617986031895303385

namespace A047009

/-- `A227726(n)/record[A134226(n+1)]` -/
def P6617986031895303385.Spec : Prop :=
  ∀ n, P6617986031895303385.a n = (A047009 n : ℚ)

end A047009

/-! ## A047009.P4006330937971963435

`A182584(2*n)/(A053438(2*n)-n)`
-/

namespace A047009.P4006330937971963435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182584 (2 * n) : ℚ) / (A053438 (2 * n) - (n : ℤ) : ℚ)

end

end A047009.P4006330937971963435

namespace A047009

/-- `A182584(2*n)/(A053438(2*n)-n)` -/
def P4006330937971963435.Spec : Prop :=
  ∀ n, P4006330937971963435.a n = (A047009 n : ℚ)

end A047009

/-! ## A047009.P3259595970219049562

`A000122(n²)*A047749(A004273(n))`
-/

namespace A047009.P3259595970219049562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A047749 (A004273 n).toNat

end

end A047009.P3259595970219049562

namespace A047009

/-- `A000122(n²)*A047749(A004273(n))` -/
def P3259595970219049562.Spec : Prop :=
  ∀ n, P3259595970219049562.a n = A047009 n

end A047009

/-!
# A047010: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=x/3 unless x=0 or x=h.

The programs for A047010, there is no canonical definition to state claims against.
-/

/-! ## A047010.P2633678255722692088

`A047071(∑[2*n]%A080036(n))`
-/

namespace A047010.P2633678255722692088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A047010.P2633678255722692088

/-! ## A047010.P1020851286397066020

`A047071(A061579(n%A008459(n)))`
-/

namespace A047010.P1020851286397066020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A061579 (Int.tmod (n : ℤ) (A008459 n)).toNat).toNat

end

end A047010.P1020851286397066020

/-! ## A047010.P13369830870768085361

`A047071(gcd(A010816(n), A061579(n)))`
-/

namespace A047010.P13369830870768085361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (Int.gcd (A010816 n) (A061579 n))

end

end A047010.P13369830870768085361

/-! ## A047010.P16275330075967948970

`A047071(A038722(n+2)%A008459(n))`
-/

namespace A047010.P16275330075967948970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (Int.tmod (A038722 (n + 2)) (A008459 n)).toNat

end

end A047010.P16275330075967948970

/-! ## A047010.P7110577419248284581

`A047071(A038722(n+1)-A130296(n+1))`
-/

namespace A047010.P7110577419248284581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A038722 (n + 1) - A130296 (n + 1)).toNat

end

end A047010.P7110577419248284581

/-! ## A047010.P9797905745898976055

`A047071(A061579(n))`
-/

namespace A047010.P9797905745898976055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A061579 n).toNat

end

end A047010.P9797905745898976055

/-! ## A047010.P16642349382375450213

`A047071(A038722(n+1)-1)`
-/

namespace A047010.P16642349382375450213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A038722 (n + 1) - 1).toNat

end

end A047010.P16642349382375450213

/-! ## A047010.P6400574822242840129

`A047071(A038722(n+2))`
-/

namespace A047010.P6400574822242840129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A038722 (n + 2)).toNat

end

end A047010.P6400574822242840129

/-!
# A047011: Sum{T(i,n-i): i=0,1,...,n}, array T given by A047010.

The programs for A047011, there is no canonical definition to state claims against.
-/

/-! ## A047011.P14630961691925106665

`A194335(A108532(n+1))`
-/

namespace A047011.P14630961691925106665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A108532 (n + 1)).toNat

end

end A047011.P14630961691925106665

/-! ## A047011.P8583696699083184089

`A105223(A149252(n))+n`
-/

namespace A047011.P8583696699083184089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A149252 n).toNat + (n : ℤ)

end

end A047011.P8583696699083184089

/-! ## A047011.P2881811407921047283

`A302505(∑[A151518(n+1)])`
-/

namespace A047011.P2881811407921047283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047011.P2881811407921047283

/-! ## A047011.P7174240101156200663

`A056926(n)+A002024(A148992(n))`
-/

namespace A047011.P7174240101156200663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n + A002024 (A148992 n).toNat

end

end A047011.P7174240101156200663

/-! ## A047011.P7011488111051983401

`A003056(A323397(n)+A051717(n))`
-/

namespace A047011.P7011488111051983401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A323397 n + A051717 n).toNat

end

end A047011.P7011488111051983401

/-!
# A047012: T(n,n), array T given by A047010.

The programs for A047012, there is no canonical definition to state claims against.
-/

/-! ## A047012.P5747048630567114443

`A047010(∑[4*n])`
-/

namespace A047012.P5747048630567114443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047012.P5747048630567114443

/-! ## A047012.P11004035101212041228

`A047071(∑[4*n])`
-/

namespace A047012.P11004035101212041228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047012.P11004035101212041228

/-! ## A047012.P7322780341383031588

`root(A047010(2*(n²+n)), 2)²`
-/

namespace A047012.P7322780341383031588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A047010 (2 * (n ^ 2 + n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A047012.P7322780341383031588

/-! ## A047012.P10258094336780760405

`char[A114327(n)]*A047010(2*(n²+n))`
-/

namespace A047012.P10258094336780760405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A047010 (2 * (n ^ 2 + n))

end

end A047012.P10258094336780760405

/-! ## A047012.P10483427071688812609

`gcd(A047010(2*(n²+n)), A090192(2*n))`
-/

namespace A047012.P10483427071688812609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047010 (2 * (n ^ 2 + n))) (A090192 (2 * n))

end

end A047012.P10483427071688812609

/-! ## A047012.P4740115233102686813

`A047010(A046092(n))+A000007(n+1)`
-/

namespace A047012.P4740115233102686813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A046092 n).toNat + A000007 (n + 1)

end

end A047012.P4740115233102686813

/-! ## A047012.P4265779641312015053

`A047010(A046092(n))%A204834(n+1)`
-/

namespace A047012.P4265779641312015053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047010 (A046092 n).toNat) (A204834 (n + 1))

end

end A047012.P4265779641312015053

/-! ## A047012.P7447886382221800779

`lcm(A047071(A046092(n)), A071935(n+1))`
-/

namespace A047012.P7447886382221800779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047071 (A046092 n).toNat) (A071935 (n + 1))

end

end A047012.P7447886382221800779

/-! ## A047012.P13323246416311715832

`A063691(A034444(n+1))+A047010(2*(n²+n))`
-/

namespace A047012.P13323246416311715832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A034444 (n + 1)).toNat + A047010 (2 * (n ^ 2 + n))

end

end A047012.P13323246416311715832

/-! ## A047012.P3340172981904268187

`A047071(A046092(n))%A001348(n+1)`
-/

namespace A047012.P3340172981904268187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047071 (A046092 n).toNat) (A001348 (n + 1))

end

end A047012.P3340172981904268187

/-!
# A047013: T(n,n-1), array T given by A047010.

The programs for A047013, there is no canonical definition to state claims against.
-/

/-! ## A047013.P17603781934781865052

`round(sqrt((A047016(n)-A047012(n+1))²+1))`
-/

namespace A047013.P17603781934781865052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A047016 n - A047012 (n + 1)) ^ 2 + 1 : ℝ))

end

end A047013.P17603781934781865052

/-! ## A047013.P4584823336663112953

`A047010(2*(n+1)²)`
-/

namespace A047013.P4584823336663112953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (2 * (n + 1) ^ 2)

end

end A047013.P4584823336663112953

/-! ## A047013.P2758920477997673647

`A047071(2*(n+1)²-1)`
-/

namespace A047013.P2758920477997673647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (2 * (n + 1) ^ 2 - 1)

end

end A047013.P2758920477997673647

/-!
# A047014: T(n,n-2), array T given by A047010.

The programs for A047014, there is no canonical definition to state claims against.
-/

/-! ## A047014.P11311580236613055691

`A047010((n+1)²+(n+2)²)`
-/

namespace A047014.P11311580236613055691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047014.P11311580236613055691

/-! ## A047014.P4016994354009995353

`A047071(A132209(n+1))`
-/

namespace A047014.P4016994354009995353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A132209 (n + 1)).toNat

end

end A047014.P4016994354009995353

/-! ## A047014.P15833679096198377863

`A047071(A142463(n+1))`
-/

namespace A047014.P15833679096198377863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A142463 (n + 1)).toNat

end

end A047014.P15833679096198377863

/-! ## A047014.P5327959920768013003

`A047071(A046092(n+1)-1)`
-/

namespace A047014.P5327959920768013003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A046092 (n + 1) - 1).toNat

end

end A047014.P5327959920768013003

/-! ## A047014.P3940326896922573744

`A047071(A001844(n+1)-2)`
-/

namespace A047014.P3940326896922573744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A001844 (n + 1) - 2).toNat

end

end A047014.P3940326896922573744

/-! ## A047014.P8205192805612791468

`A047071(A099776(n+1)-2)`
-/

namespace A047014.P8205192805612791468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A099776 (n + 1) - 2).toNat

end

end A047014.P8205192805612791468

/-!
# A047015: T(n,n-3), array T given by A047010.

The programs for A047015, there is no canonical definition to state claims against.
-/

/-! ## A047015.P2084104580058502458

`A047071(2*(n+1)*(n+3))`
-/

namespace A047015.P2084104580058502458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (2 * ((n + 1) * (n + 3)))

end

end A047015.P2084104580058502458

/-! ## A047015.P14339829374258271122

`A047010(A161532(n)+8)`
-/

namespace A047015.P14339829374258271122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A161532 n + 8).toNat

end

end A047015.P14339829374258271122

/-! ## A047015.P6982730067236818419

`A047010(A005408((n+2)²))`
-/

namespace A047015.P6982730067236818419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A005408 ((n + 2) ^ 2)).toNat

end

end A047015.P6982730067236818419

/-! ## A047015.P10966028162319918994

`A047010(A167614(2*(n+1))+n)`
-/

namespace A047015.P10966028162319918994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A047015.P10966028162319918994

/-! ## A047015.P16301553343384614204

`A047010(eq[n, A038722(n+1)+2])`
-/

namespace A047015.P16301553343384614204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047015.P16301553343384614204

/-! ## A047015.P1259462338226192968

`A047010(eq[A038722(n+1), A289207(n)])`
-/

namespace A047015.P1259462338226192968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047015.P1259462338226192968

/-!
# A047016: T(n,n+1), array T given by A047010.

The programs for A047016, there is no canonical definition to state claims against.
-/

/-! ## A047016.P15206469781954773397

`A047071(2*(n+1)²)`
-/

namespace A047016.P15206469781954773397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (2 * (n + 1) ^ 2)

end

end A047016.P15206469781954773397

/-! ## A047016.P417401595509471260

`A047010(A056220(n+1))`
-/

namespace A047016.P417401595509471260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A056220 (n + 1)).toNat

end

end A047016.P417401595509471260

/-! ## A047016.P12199620414324332538

`record[A047071(A093005(n+1))]`
-/

namespace A047016.P12199620414324332538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A093005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047016.P12199620414324332538

/-! ## A047016.P8510417482468660782

`A047010(A054000(n+1)+1)`
-/

namespace A047016.P8510417482468660782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A054000 (n + 1) + 1).toNat

end

end A047016.P8510417482468660782

/-! ## A047016.P3778704146442552252

`A047010(A001844(n)+2*n)`
-/

namespace A047016.P3778704146442552252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A001844 n + (2 * n : ℤ)).toNat

end

end A047016.P3778704146442552252

/-! ## A047016.P2182909365884021252

`record[A047010(∑[A266073(n)]+1)]`
-/

namespace A047016.P2182909365884021252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047016.P2182909365884021252

/-! ## A047016.P17405628789591830055

`A047010(A001844(n)+n+n)`
-/

namespace A047016.P17405628789591830055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A047016.P17405628789591830055

/-! ## A047016.P17402836496436888983

`A047010(A000217(2*n+1)+n)`
-/

namespace A047016.P17402836496436888983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A047016.P17402836496436888983

/-! ## A047016.P1777369350806402605

`A047010(eq[n+2, A038722(n+1)])`
-/

namespace A047016.P1777369350806402605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047016.P1777369350806402605

/-!
# A047017: T(n,n+2), array T given by A047010.

The programs for A047017, there is no canonical definition to state claims against.
-/

/-! ## A047017.P8459618485005255955

`A047016(n+1)-A047012(n+1)`
-/

namespace A047017.P8459618485005255955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047016 (n + 1) - A047012 (n + 1)

end

end A047017.P8459618485005255955

/-! ## A047017.P13235819784250636085

`A047071((n+1)²+(n+2)²)`
-/

namespace A047017.P13235819784250636085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047017.P13235819784250636085

/-! ## A047017.P18168094550222442098

`A047010(A132209(n+1))`
-/

namespace A047017.P18168094550222442098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A132209 (n + 1)).toNat

end

end A047017.P18168094550222442098

/-! ## A047017.P9975640750350606732

`A047010(A142463(n+1))`
-/

namespace A047017.P9975640750350606732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A142463 (n + 1)).toNat

end

end A047017.P9975640750350606732

/-! ## A047017.P16028008044666524279

`A047010(A046092(n+1)-1)`
-/

namespace A047017.P16028008044666524279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A046092 (n + 1) - 1).toNat

end

end A047017.P16028008044666524279

/-! ## A047017.P16658420450072011223

`A047010(A001844(n+1)-2)`
-/

namespace A047017.P16658420450072011223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A001844 (n + 1) - 2).toNat

end

end A047017.P16658420450072011223

/-! ## A047017.P1110321803710368138

`A047010(A099776(n+1)-2)`
-/

namespace A047017.P1110321803710368138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A099776 (n + 1) - 2).toNat

end

end A047017.P1110321803710368138

/-!
# A047018: T(n,n+3), array T given by A047010.

The programs for A047018, there is no canonical definition to state claims against.
-/

/-! ## A047018.P7305641962950004853

`Δ[A047017(n)-∑[A047012(n)]]`
-/

namespace A047018.P7305641962950004853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047017 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047018.P7305641962950004853

/-! ## A047018.P13951893541150633065

`Δ[A047017(n)]-A047012(n+1)`
-/

namespace A047018.P13951893541150633065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047012 (n + 1)

end

end A047018.P13951893541150633065

/-! ## A047018.P8058836691858872107

`A047017(n+1)-A047016(n+1)`
-/

namespace A047018.P8058836691858872107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047017 (n + 1) - A047016 (n + 1)

end

end A047018.P8058836691858872107

/-! ## A047018.P10812484630317946198

`A047010(2*(n+1)*(n+3))`
-/

namespace A047018.P10812484630317946198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (2 * ((n + 1) * (n + 3)))

end

end A047018.P10812484630317946198

/-! ## A047018.P7545086752540556517

`record[A047010(∑[A266073(n)])]`
-/

namespace A047018.P7545086752540556517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047018.P7545086752540556517

/-! ## A047018.P2919320183341479068

`A047071(A005408((n+2)²))`
-/

namespace A047018.P2919320183341479068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A005408 ((n + 2) ^ 2)).toNat

end

end A047018.P2919320183341479068

/-! ## A047018.P545676167163718258

`record[A047071(A093005(n+1)+1)]`
-/

namespace A047018.P545676167163718258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A093005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047018.P545676167163718258

/-!
# A047019: T(2n,n), array T given by A047010.

The programs for A047019, there is no canonical definition to state claims against.
-/

/-! ## A047019.P11656439626163273576

`A047010(A062728(n))`
-/

namespace A047019.P11656439626163273576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A062728 n).toNat

end

end A047019.P11656439626163273576

/-! ## A047019.P5884680651013733337

`A047071(A062725(n))`
-/

namespace A047019.P5884680651013733337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A062725 n).toNat

end

end A047019.P5884680651013733337

/-! ## A047019.P14421474413396294097

`A124752(A276819(n+1))`
-/

namespace A047019.P14421474413396294097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A276819 (n + 1)).toNat

end

end A047019.P14421474413396294097

/-! ## A047019.P2316418647179811959

`A047010(A062725(n)+n)`
-/

namespace A047019.P2316418647179811959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A062725 n + (n : ℤ)).toNat

end

end A047019.P2316418647179811959

/-! ## A047019.P4528036242058488039

`A124752(A022267(n+1)-n)`
-/

namespace A047019.P4528036242058488039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A022267 (n + 1) - (n : ℤ)).toNat

end

end A047019.P4528036242058488039

/-!
# A047020: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=2x/3 unless x=0 or x=h.

The programs for A047020, there is no canonical definition to state claims against.
-/

/-! ## A047020.P16698209241477379466

`A047040(n)^A014963(A272012(n))`
-/

namespace A047020.P16698209241477379466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047040 n : ℚ) ^ (A014963 (A272012 n).toNat : ℤ)

end

end A047020.P16698209241477379466

/-! ## A047020.P14701687075326710752

`A047040(n)^A000045(A339969(n))`
-/

namespace A047020.P14701687075326710752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047040 n : ℚ) ^ (A000045 (A339969 n).toNat : ℤ)

end

end A047020.P14701687075326710752

/-! ## A047020.P13451037986230649471

`gcd(A097346(n), A127832(n+1))`
-/

namespace A047020.P13451037986230649471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097346 n) (A127832 (n + 1))

end

end A047020.P13451037986230649471

/-! ## A047020.P327885690236357126

`A047100(n)-A174530(A174544(n))`
-/

namespace A047020.P327885690236357126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 n - A174530 (A174544 n).toNat

end

end A047020.P327885690236357126

/-!
# A047021: a(n) = Sum_{i=0..n} T(i,n-i) where T is given by A047020.

The programs for A047021, there is no canonical definition to state claims against.
-/

/-! ## A047021.P13842392456255019548

`A393159(A148628(n+1))`
-/

namespace A047021.P13842392456255019548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393159 (A148628 (n + 1)).toNat

end

end A047021.P13842392456255019548

/-! ## A047021.P867273511358660363

`A393159(A148629(n+1))`
-/

namespace A047021.P867273511358660363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393159 (A148629 (n + 1)).toNat

end

end A047021.P867273511358660363

/-! ## A047021.P9269210232217156564

`A375136(A024718(n))+A280194(n)`
-/

namespace A047021.P9269210232217156564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (A024718 n).toNat + A280194 n

end

end A047021.P9269210232217156564

/-! ## A047021.P2426473877731529355

`A287154(n+1)+A062756(A061132(n))`
-/

namespace A047021.P2426473877731529355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287154 (n + 1) + A062756 (A061132 n).toNat

end

end A047021.P2426473877731529355

/-! ## A047021.P2945585094521436573

`A325166(n+1)+A194343(A149845(n))`
-/

namespace A047021.P2945585094521436573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A194343 (A149845 n).toNat

end

end A047021.P2945585094521436573

/-!
# A047022: T(n,n), array T given by A047020.

The programs for A047022, there is no canonical definition to state claims against.
-/

/-! ## A047022.P8310985969794551835

`A047020(∑[4*n])`
-/

namespace A047022.P8310985969794551835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047022.P8310985969794551835

/-! ## A047022.P11083532553287427891

`A047020(A106232(n+1))-floor(a((2^n)%2)/4)` with `a(0)=1`
-/

namespace A047022.P11083532553287427891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047020 (A106232 (n + 1)).toNat - ⌊(a (2 ^ n % 2) : ℚ) / 4⌋

end

end A047022.P11083532553287427891

/-! ## A047022.P3775265529928519231

`A047020(A106232(n+1))%A074554(n)`
-/

namespace A047022.P3775265529928519231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047020 (A106232 (n + 1)).toNat) (A074554 n)

end

end A047022.P3775265529928519231

/-! ## A047022.P5713710973750716716

`lcm(A033999(n), A047020(A106232(n+1)))`
-/

namespace A047022.P5713710973750716716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047020 (A106232 (n + 1)).toNat)

end

end A047022.P5713710973750716716

/-! ## A047022.P3522609963397993957

`or(A000007(n), A047020(A106232(n+1)))`
-/

namespace A047022.P3522609963397993957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047020 (A106232 (n + 1)).toNat)

end

end A047022.P3522609963397993957

/-! ## A047022.P2733617516852292973

`A033999(2*n)*A047020(A106232(n+1))`
-/

namespace A047022.P2733617516852292973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A047020 (A106232 (n + 1)).toNat

end

end A047022.P2733617516852292973

/-! ## A047022.P12972041379111537180

`A063691(A034444(n+1))+A047020(2*(n²+n))`
-/

namespace A047022.P12972041379111537180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A034444 (n + 1)).toNat + A047020 (2 * (n ^ 2 + n))

end

end A047022.P12972041379111537180

/-!
# A047023: T(n,n-1), array T given by A047020.

The programs for A047023, there is no canonical definition to state claims against.
-/

/-! ## A047023.P14473702692721756781

`A047020(2*(n+1)²)`
-/

namespace A047023.P14473702692721756781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (2 * (n + 1) ^ 2)

end

end A047023.P14473702692721756781

/-! ## A047023.P10312774207171710374

`A047020(A184636(n+1))%A074554(n)`
-/

namespace A047023.P10312774207171710374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047020 (A184636 (n + 1)).toNat) (A074554 n)

end

end A047023.P10312774207171710374

/-! ## A047023.P14888259838055677471

`lcm(A033999(n), A047020(A184636(n+1)))`
-/

namespace A047023.P14888259838055677471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047020 (A184636 (n + 1)).toNat)

end

end A047023.P14888259838055677471

/-! ## A047023.P120764644794395216

`or(A000007(n), A047020(A184636(n+1)))`
-/

namespace A047023.P120764644794395216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047020 (A184636 (n + 1)).toNat)

end

end A047023.P120764644794395216

/-! ## A047023.P276089600729582614

`A047020(A266074(2*n+1))%A252771(n+1)`
-/

namespace A047023.P276089600729582614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047020 (A266074 (2 * n + 1)).toNat) (A252771 (n + 1))

end

end A047023.P276089600729582614

/-!
# A047024: T(n,n-2), array T given by A047020.

The programs for A047024, there is no canonical definition to state claims against.
-/

/-! ## A047024.P1274221414427677747

`A047020((n+1)²+(n+2)²)`
-/

namespace A047024.P1274221414427677747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047024.P1274221414427677747

/-! ## A047024.P2248424630692521439

`record[A047020(∑[A266981(n)])]`
-/

namespace A047024.P2248424630692521439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047024.P2248424630692521439

/-! ## A047024.P8672766688571093914

`lcm(A033999(n), A047020(A001844(n+1)))`
-/

namespace A047024.P8672766688571093914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047020 (A001844 (n + 1)).toNat)

end

end A047024.P8672766688571093914

/-! ## A047024.P5546694424437726302

`A047020(A001844(n+1))*A088911(C(2, n))`
-/

namespace A047024.P5546694424437726302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A001844 (n + 1)).toNat * A088911 (Nat.choose 2 n)

end

end A047024.P5546694424437726302

/-! ## A047024.P6095160266559355053

`A047020(A001844(n+1))+A000007(2*(n+9))`
-/

namespace A047024.P6095160266559355053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A001844 (n + 1)).toNat + A000007 (2 * (n + 9))

end

end A047024.P6095160266559355053

/-! ## A047024.P7776363173149133425

`A000045(ceil(2/(n+1)))*A047020(A001844(n+1))`
-/

namespace A047024.P7776363173149133425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈2 / (n + 1 : ℚ)⌉.toNat * A047020 (A001844 (n + 1)).toNat

end

end A047024.P7776363173149133425

/-!
# A047025: T(n,n-3), array T given by A047020.

The programs for A047025, there is no canonical definition to state claims against.
-/

/-! ## A047025.P16230519531659569004

`A047020(A268581(n)+4)`
-/

namespace A047025.P16230519531659569004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A268581 n + 4).toNat

end

end A047025.P16230519531659569004

/-! ## A047025.P10870305143994255932

`A047020(A161532(n)+8)`
-/

namespace A047025.P10870305143994255932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A161532 n + 8).toNat

end

end A047025.P10870305143994255932

/-! ## A047025.P6676206846089259186

`A047020(A130773((n+2)²))`
-/

namespace A047025.P6676206846089259186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A130773 ((n + 2) ^ 2)).toNat

end

end A047025.P6676206846089259186

/-! ## A047025.P12387335864942964003

`A047020(A184636(n+2)+1)`
-/

namespace A047025.P12387335864942964003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A184636 (n + 2) + 1).toNat

end

end A047025.P12387335864942964003

/-! ## A047025.P3614103782902113433

`A047020(eq[n, A038722(n+1)+2])`
-/

namespace A047025.P3614103782902113433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047025.P3614103782902113433

/-! ## A047025.P1142481651617210388

`A047020(eq[A023444(n), A038722(n+1)])`
-/

namespace A047025.P1142481651617210388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047025.P1142481651617210388

/-! ## A047025.P12715705491960357032

`A047020(eq[A038722(n+1), A289207(n)])`
-/

namespace A047025.P12715705491960357032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047025.P12715705491960357032

/-!
# A047026: T(n,n+1), array T given by A047020.

The programs for A047026, there is no canonical definition to state claims against.
-/

/-! ## A047026.P6505475963528234438

`A047020(A056220(n+1))`
-/

namespace A047026.P6505475963528234438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A056220 (n + 1)).toNat

end

end A047026.P6505475963528234438

/-! ## A047026.P5101278440970712992

`A047020(A054000(n+1)+1)`
-/

namespace A047026.P5101278440970712992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A054000 (n + 1) + 1).toNat

end

end A047026.P5101278440970712992

/-! ## A047026.P6505903070286387901

`A047020(A184636(n+1)-1)`
-/

namespace A047026.P6505903070286387901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A184636 (n + 1) - 1).toNat

end

end A047026.P6505903070286387901

/-! ## A047026.P17320632580855290526

`A047020(A266074(2*n)+1)`
-/

namespace A047026.P17320632580855290526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A266074 (2 * n) + 1).toNat

end

end A047026.P17320632580855290526

/-! ## A047026.P10915897163617705831

`A047020(A001844(n)+2*n)`
-/

namespace A047026.P10915897163617705831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A001844 n + (2 * n : ℤ)).toNat

end

end A047026.P10915897163617705831

/-! ## A047026.P10028821553291295568

`A047020(A001844(n)+n+n)`
-/

namespace A047026.P10028821553291295568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A047026.P10028821553291295568

/-! ## A047026.P13437619198673123577

`record[A047020(∑[A266981(n)]+n)]`
-/

namespace A047026.P13437619198673123577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047026.P13437619198673123577

/-! ## A047026.P17659162331184949620

`A047020(eq[n+2, A038722(n+1)])`
-/

namespace A047026.P17659162331184949620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047026.P17659162331184949620

/-! ## A047026.P13872699547278163640

`A047020(A005843(n)+A001844(n))`
-/

namespace A047026.P13872699547278163640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A005843 n + A001844 n).toNat

end

end A047026.P13872699547278163640

/-!
# A047027: T(n,n+2), array T given by A047020.

The programs for A047027, there is no canonical definition to state claims against.
-/

/-! ## A047027.P17321694222368379926

`A047026(n+1)-A047022(n+1)`
-/

namespace A047027.P17321694222368379926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047026 (n + 1) - A047022 (n + 1)

end

end A047027.P17321694222368379926

/-! ## A047027.P7866649169080800006

`A047020(A090288(n)+1)`
-/

namespace A047027.P7866649169080800006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A090288 n + 1).toNat

end

end A047027.P7866649169080800006

/-! ## A047027.P1756268791395942044

`A047020(A132209(n+1))`
-/

namespace A047027.P1756268791395942044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A132209 (n + 1)).toNat

end

end A047027.P1756268791395942044

/-! ## A047027.P13913401310350163186

`A047020(A142463(n+1))`
-/

namespace A047027.P13913401310350163186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A142463 (n + 1)).toNat

end

end A047027.P13913401310350163186

/-! ## A047027.P10917164269336056965

`A047020(or(1, A090288(n)))`
-/

namespace A047027.P10917164269336056965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (Int.lor 1 (A090288 n)).toNat

end

end A047027.P10917164269336056965

/-! ## A047027.P12977855688022667037

`A047020(A001844(n+1)-2)`
-/

namespace A047027.P12977855688022667037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A001844 (n + 1) - 2).toNat

end

end A047027.P12977855688022667037

/-! ## A047027.P10160718053730499889

`A047020(A099776(n+1)-2)`
-/

namespace A047027.P10160718053730499889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A099776 (n + 1) - 2).toNat

end

end A047027.P10160718053730499889

/-! ## A047027.P14802771532905435589

`A047020(A106232(n+2)-1)`
-/

namespace A047027.P14802771532905435589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A106232 (n + 2) - 1).toNat

end

end A047027.P14802771532905435589

/-! ## A047027.P1644077091727266403

`record[A047020(A266981(n)+∑[n])]`
-/

namespace A047027.P1644077091727266403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A266981 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047027.P1644077091727266403

/-! ## A047027.P6001157502451848195

`A047020(4*n+2+A001844(n))`
-/

namespace A047027.P6001157502451848195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 ((4 * n + 2 : ℤ) + A001844 n).toNat

end

end A047027.P6001157502451848195

/-!
# A047028: T(n,n+3), array T given by A047020.

The programs for A047028, there is no canonical definition to state claims against.
-/

/-! ## A047028.P15778538640597165825

`Δ[A047027(n)-∑[A047022(n)]]`
-/

namespace A047028.P15778538640597165825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047027 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047028.P15778538640597165825

/-! ## A047028.P6112253800008541110

`Δ[A047027(n)]-A047022(n+1)`
-/

namespace A047028.P6112253800008541110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047022 (n + 1)

end

end A047028.P6112253800008541110

/-! ## A047028.P353141778102428873

`A047027(n+1)-A047026(n+1)`
-/

namespace A047028.P353141778102428873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047027 (n + 1) - A047026 (n + 1)

end

end A047028.P353141778102428873

/-! ## A047028.P88103770589748361

`A047027(n+1)-(A047027(n)+A047022(n+1))`
-/

namespace A047028.P88103770589748361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047027 (n + 1) - (A047027 n + A047022 (n + 1))

end

end A047028.P88103770589748361

/-! ## A047028.P5205821213228682016

`A047020(2*(n+1)*(n+3))`
-/

namespace A047028.P5205821213228682016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (2 * ((n + 1) * (n + 3)))

end

end A047028.P5205821213228682016

/-!
# A047029: T(2n,n), array T given by A047020.

The programs for A047029, there is no canonical definition to state claims against.
-/

/-! ## A047029.P8913335999018355858

`A047020(A062728(n))`
-/

namespace A047029.P8913335999018355858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A062728 n).toNat

end

end A047029.P8913335999018355858

/-! ## A047029.P392529602074974423

`A047020(A027468(n)-n)`
-/

namespace A047029.P392529602074974423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A027468 n - (n : ℤ)).toNat

end

end A047029.P392529602074974423

/-! ## A047029.P15339414249136056591

`A047020(A060544(n+1)-(n+1))`
-/

namespace A047029.P15339414249136056591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A060544 (n + 1) - (n + 1 : ℤ)).toNat

end

end A047029.P15339414249136056591

/-! ## A047029.P11298100392080432883

`A047020(A147875(n)+A106232(n+1))`
-/

namespace A047029.P11298100392080432883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A147875 n + A106232 (n + 1)).toNat

end

end A047029.P11298100392080432883

/-! ## A047029.P10979933108534842618

`A047020(eq[A099375(n), A131818(n+1)])`
-/

namespace A047029.P10979933108534842618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047029.P10979933108534842618

/-!
# A047030: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=x/4 unless x=0 or x=h.

The programs for A047030, there is no canonical definition to state claims against.
-/

/-! ## A047030.P8407633983910064838

`A023973(A060949(n+1))*A331295(A145905(n))`
-/

namespace A047030.P8407633983910064838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023973 (A060949 (n + 1)).toNat * A331295 (A145905 n).toNat

end

end A047030.P8407633983910064838

/-! ## A047030.P12120640652314469176

`A341994(A328850(n+1))+A331295(A145905(n))`
-/

namespace A047030.P12120640652314469176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A328850 (n + 1)).toNat + A331295 (A145905 n).toNat

end

end A047030.P12120640652314469176

/-! ## A047030.P13852673557092749314

`A331295(A145905(n))*A341998(A118638(n+1))`
-/

namespace A047030.P13852673557092749314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 (A145905 n).toNat * A341998 (A118638 (n + 1)).toNat

end

end A047030.P13852673557092749314

/-!
# A047031: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047030.

The programs for A047031, there is no canonical definition to state claims against.
-/

/-! ## A047031.P419393251228664443

`A282566(n)+A001221(A124107(n+1))`
-/

namespace A047031.P419393251228664443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282566 n + A001221 (A124107 (n + 1)).toNat

end

end A047031.P419393251228664443

/-! ## A047031.P8196275089968439588

`or(A066246(n+1), A185283(A149994(n)))`
-/

namespace A047031.P8196275089968439588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066246 (n + 1)) (A185283 (A149994 n).toNat)

end

end A047031.P8196275089968439588

/-! ## A047031.P23685836286903515

`A329579(A304975(n))+A326117(n)`
-/

namespace A047031.P23685836286903515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329579 (A304975 n).toNat + A326117 n

end

end A047031.P23685836286903515

/-! ## A047031.P16240244555841297122

`A232746(A068869(n+1)+A027377(n))`
-/

namespace A047031.P16240244555841297122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A068869 (n + 1) + A027377 n).toNat

end

end A047031.P16240244555841297122

/-! ## A047031.P11762979049931072228

`A280543(n)+A071625(A271486(3*n))`
-/

namespace A047031.P11762979049931072228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280543 n + A071625 (A271486 (3 * n)).toNat

end

end A047031.P11762979049931072228

/-!
# A047032: T(n,n), array T as in A047030.

The programs for A047032, there is no canonical definition to state claims against.
-/

/-! ## A047032.P14521978478108627459

`A047030(∑[4*n])`
-/

namespace A047032.P14521978478108627459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047032.P14521978478108627459

/-! ## A047032.P7203538509375441140

`or(A000007(n), A047030(A046092(n)))`
-/

namespace A047032.P7203538509375441140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047030 (A046092 n).toNat)

end

end A047032.P7203538509375441140

/-! ## A047032.P16584750017104344569

`A047030(A046092(n))+A000007(n+1)`
-/

namespace A047032.P16584750017104344569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A046092 n).toNat + A000007 (n + 1)

end

end A047032.P16584750017104344569

/-! ## A047032.P16987320063057818728

`∏{p}[n, A001221(#)]*A047030(A046092(n))`
-/

namespace A047032.P16987320063057818728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A047030 (A046092 n).toNat

end

end A047032.P16987320063057818728

/-! ## A047032.P8427102834860931828

`A047030(A046092(n))+A008683(8*n+4)`
-/

namespace A047032.P8427102834860931828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A046092 n).toNat + A008683 (8 * n + 4)

end

end A047032.P8427102834860931828

/-! ## A047032.P14494456739797902338

`A001222(A000928(n+1))*A047030(A046092(n))`
-/

namespace A047032.P14494456739797902338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000928 (n + 1)).toNat * A047030 (A046092 n).toNat

end

end A047032.P14494456739797902338

/-! ## A047032.P2039665804497053215

`A001222(A002313(n+1))*A047030(A046092(n))`
-/

namespace A047032.P2039665804497053215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002313 (n + 1)).toNat * A047030 (A046092 n).toNat

end

end A047032.P2039665804497053215

/-! ## A047032.P546460980383688163

`A001222(A006005(n+2))*A047030(A046092(n))`
-/

namespace A047032.P546460980383688163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006005 (n + 2)).toNat * A047030 (A046092 n).toNat

end

end A047032.P546460980383688163

/-! ## A047032.P5090619840368025997

`A047030(A046092(n))+8%A000005(A005117(n+1))`
-/

namespace A047032.P5090619840368025997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A046092 n).toNat + Int.tmod 8 (A000005 (A005117 (n + 1)).toNat)

end

end A047032.P5090619840368025997

/-!
# A047033: T(n,n-1), array T as in A047030.

The programs for A047033, there is no canonical definition to state claims against.
-/

/-! ## A047033.P10021933518529374901

`Δ[A047036(n)]%A047037(A028310(n))`
-/

namespace A047033.P10021933518529374901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A047037 (A028310 n).toNat)

end

end A047033.P10021933518529374901

/-! ## A047033.P17632586542223731024

`A047030(2*(n+1)²)`
-/

namespace A047033.P17632586542223731024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (2 * (n + 1) ^ 2)

end

end A047033.P17632586542223731024

/-! ## A047033.P7276092618390895293

`A047030(A184636(n+1))%(10^n+1)`
-/

namespace A047033.P7276092618390895293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047030 (A184636 (n + 1)).toNat) (10 ^ n + 1 : ℤ)

end

end A047033.P7276092618390895293

/-! ## A047033.P14640236864943940394

`and(-gcd(2, A046534(n+1)), A047030(A184636(n+1)))`
-/

namespace A047033.P14640236864943940394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Int.gcd 2 (A046534 (n + 1)) : ℤ)) (A047030 (A184636 (n + 1)).toNat)

end

end A047033.P14640236864943940394

/-! ## A047033.P13984279866712652789

`A047030(A184636(n+1))/A049864(2-Δ[floor((n+1)/ϕ)])`
-/

namespace A047033.P13984279866712652789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047030 (A184636 (n + 1)).toNat : ℚ) / (A049864 (2 - (f1 (n + 1) - f1 n)).toNat : ℚ)

end

end A047033.P13984279866712652789

/-! ## A047033.P14300261273132739666

`A047030(A184636(n+1))/A144431(2-Δ[floor((n+1)/ϕ)])`
-/

namespace A047033.P14300261273132739666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047030 (A184636 (n + 1)).toNat : ℚ) / (A144431 (2 - (f1 (n + 1) - f1 n)).toNat : ℚ)

end

end A047033.P14300261273132739666

/-!
# A047034: T(n,n-2), array T as in A047030.

The programs for A047034, there is no canonical definition to state claims against.
-/

/-! ## A047034.P11750301443955674577

`abs(Δ[A047033(n+1)]-A047036(n))`
-/

namespace A047034.P11750301443955674577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A047036 n|

end

end A047034.P11750301443955674577

/-! ## A047034.P9339480773052235742

`A047030((n+1)²+(n+2)²)`
-/

namespace A047034.P9339480773052235742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047034.P9339480773052235742

/-! ## A047034.P16844886492771615043

`A047030(A099776(n+1))^A178334(n)`
-/

namespace A047034.P16844886492771615043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047030 (A099776 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A047034.P16844886492771615043

/-! ## A047034.P12827468240667079636

`or(A000007(n), A047030(A099776(n+1)))`
-/

namespace A047034.P12827468240667079636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047030 (A099776 (n + 1)).toNat)

end

end A047034.P12827468240667079636

/-! ## A047034.P10875583449666050272

`or(A047030(A099776(n+1)), A151933(n))`
-/

namespace A047034.P10875583449666050272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047030 (A099776 (n + 1)).toNat) (A151933 n)

end

end A047034.P10875583449666050272

/-! ## A047034.P8597186192531885505

`A151933(n+1)+A047030(A099776(n+1))`
-/

namespace A047034.P8597186192531885505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (n + 1) + A047030 (A099776 (n + 1)).toNat

end

end A047034.P8597186192531885505

/-! ## A047034.P6729390816943347103

`A047030(A099776(n+1))*A057427(n+1)`
-/

namespace A047034.P6729390816943347103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A099776 (n + 1)).toNat * A057427 (n + 1)

end

end A047034.P6729390816943347103

/-! ## A047034.P14563634107996723525

`and(-A057427(n+2), A047030(A099776(n+1)))`
-/

namespace A047034.P14563634107996723525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A057427 (n + 2)) (A047030 (A099776 (n + 1)).toNat)

end

end A047034.P14563634107996723525

/-! ## A047034.P3214424454641236727

`A047030(A099776(n+1))+char[A057442(n+2)]`
-/

namespace A047034.P3214424454641236727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057442 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A099776 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047034.P3214424454641236727

/-! ## A047034.P12929656384406216301

`A107246(A001222(n+1))+A047030(A099776(n+1))`
-/

namespace A047034.P12929656384406216301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107246 (A001222 (n + 1)).toNat + A047030 (A099776 (n + 1)).toNat

end

end A047034.P12929656384406216301

/-!
# A047035: T(n,n-3), array T as in A047030.

The programs for A047035, there is no canonical definition to state claims against.
-/

/-! ## A047035.P6467039495588954820

`A047030(A268581(n)+4)`
-/

namespace A047035.P6467039495588954820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A268581 n + 4).toNat

end

end A047035.P6467039495588954820

/-! ## A047035.P17956106947450569130

`A047030(A005408((n+2)²))`
-/

namespace A047035.P17956106947450569130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A005408 ((n + 2) ^ 2)).toNat

end

end A047035.P17956106947450569130

/-! ## A047035.P7931856062829213668

`A047030(A184636(n+2)+1)`
-/

namespace A047035.P7931856062829213668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A184636 (n + 2) + 1).toNat

end

end A047035.P7931856062829213668

/-! ## A047035.P11611954912889584811

`record[A047030(A147685(n)+1+n)]`
-/

namespace A047035.P11611954912889584811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A147685 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047035.P11611954912889584811

/-! ## A047035.P15012402561321207406

`record[A047030(A099392(n^(n%2)))]`
-/

namespace A047035.P15012402561321207406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A099392 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047035.P15012402561321207406

/-! ## A047035.P14298765174580060900

`record[A047030(A099392((n+1)/2^val(n+1, 2)))]`
-/

namespace A047035.P14298765174580060900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A099392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047035.P14298765174580060900

/-!
# A047036: T(n,n+1), array T as in A047030.

The programs for A047036, there is no canonical definition to state claims against.
-/

/-! ## A047036.P11908344698813721577

`A047030(A056220(n+1))`
-/

namespace A047036.P11908344698813721577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A056220 (n + 1)).toNat

end

end A047036.P11908344698813721577

/-! ## A047036.P8472375858094643626

`A047030(A054000(n+1)+1)`
-/

namespace A047036.P8472375858094643626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A054000 (n + 1) + 1).toNat

end

end A047036.P8472375858094643626

/-! ## A047036.P14084218237993112596

`A047030(A184636(n+1)-1)`
-/

namespace A047036.P14084218237993112596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A184636 (n + 1) - 1).toNat

end

end A047036.P14084218237993112596

/-! ## A047036.P2437210531050913026

`A047030(A001844(n)+2*n)`
-/

namespace A047036.P2437210531050913026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A001844 n + (2 * n : ℤ)).toNat

end

end A047036.P2437210531050913026

/-! ## A047036.P607129235430185729

`A047030(A001844(n)+n+n)`
-/

namespace A047036.P607129235430185729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A047036.P607129235430185729

/-! ## A047036.P10275735362834548672

`record[A047030(A147685(n+1)+n)]`
-/

namespace A047036.P10275735362834548672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A147685 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047036.P10275735362834548672

/-! ## A047036.P9470254463457220635

`A047030(A000217(2*n+1)+n)`
-/

namespace A047036.P9470254463457220635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A047036.P9470254463457220635

/-! ## A047036.P16232072194769675416

`A047030(A090288(n)-(2*n+1))`
-/

namespace A047036.P16232072194769675416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A090288 n - (2 * n + 1 : ℤ)).toNat

end

end A047036.P16232072194769675416

/-!
# A047037: T(n,n+2), array T as in A004730.

The programs for A047037, there is no canonical definition to state claims against.
-/

/-! ## A047037.P15707480962530823641

`A047036(n+1)-A047032(n+1)`
-/

namespace A047037.P15707480962530823641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047036 (n + 1) - A047032 (n + 1)

end

end A047037.P15707480962530823641

/-! ## A047037.P1670086944124482546

`A047030(A090288(n)+1)`
-/

namespace A047037.P1670086944124482546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A090288 n + 1).toNat

end

end A047037.P1670086944124482546

/-! ## A047037.P16912798320441871201

`A047030(A132209(n+1))`
-/

namespace A047037.P16912798320441871201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A132209 (n + 1)).toNat

end

end A047037.P16912798320441871201

/-! ## A047037.P9160529149896720010

`A047030(A142463(n+1))`
-/

namespace A047037.P9160529149896720010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A142463 (n + 1)).toNat

end

end A047037.P9160529149896720010

/-! ## A047037.P3102420461828873565

`A047030(A046092(n+1)-1)`
-/

namespace A047037.P3102420461828873565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A046092 (n + 1) - 1).toNat

end

end A047037.P3102420461828873565

/-! ## A047037.P6414041665798957988

`A047030(A001844(n+1)-2)`
-/

namespace A047037.P6414041665798957988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A001844 (n + 1) - 2).toNat

end

end A047037.P6414041665798957988

/-! ## A047037.P4569489805362740925

`A047030(A099776(n+1)-2)`
-/

namespace A047037.P4569489805362740925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A099776 (n + 1) - 2).toNat

end

end A047037.P4569489805362740925

/-! ## A047037.P5192081435875208222

`A047030(A184636(n+1)+Δ[n²])`
-/

namespace A047037.P5192081435875208222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A184636 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A047037.P5192081435875208222

/-!
# A047038: T(n,n+3), array T as in A047030.

The programs for A047038, there is no canonical definition to state claims against.
-/

/-! ## A047038.P3160878655823625950

`Δ[A047037(n)-∑[A047032(n)]]`
-/

namespace A047038.P3160878655823625950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047037 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047038.P3160878655823625950

/-! ## A047038.P6147234920418808785

`Δ[A047037(n)]-A047032(n+1)`
-/

namespace A047038.P6147234920418808785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047032 (n + 1)

end

end A047038.P6147234920418808785

/-! ## A047038.P7838240959718493742

`A047037(n+1)-A047036(n+1)`
-/

namespace A047038.P7838240959718493742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047037 (n + 1) - A047036 (n + 1)

end

end A047038.P7838240959718493742

/-! ## A047038.P3204763792304725976

`A047037(A036987(xor(n, n+1))+n)%A047036(n+1)`
-/

namespace A047038.P3204763792304725976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047037 (A036987 (Nat.xor n (n + 1)) + (n : ℤ)).toNat) (A047036 (n + 1))

end

end A047038.P3204763792304725976

/-! ## A047038.P12666063347339660600

`A047030(2*(n+1)*(n+3))`
-/

namespace A047038.P12666063347339660600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (2 * ((n + 1) * (n + 3)))

end

end A047038.P12666063347339660600

/-!
# A047039: T(2n,n), array T as in A047030.

The programs for A047039, there is no canonical definition to state claims against.
-/

/-! ## A047039.P6606675504442322182

`A047030(A062728(n))`
-/

namespace A047039.P6606675504442322182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A062728 n).toNat

end

end A047039.P6606675504442322182

/-! ## A047039.P15898925062437467044

`A047030(A062725(n)+n)`
-/

namespace A047039.P15898925062437467044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A062725 n + (n : ℤ)).toNat

end

end A047039.P15898925062437467044

/-! ## A047039.P1612260809029474129

`A047030(A060544(n+1)-(n+1))`
-/

namespace A047039.P1612260809029474129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A060544 (n + 1) - (n + 1 : ℤ)).toNat

end

end A047039.P1612260809029474129

/-! ## A047039.P163244209387798998

`A047030(A033954(n)+A000217(n))`
-/

namespace A047039.P163244209387798998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A033954 n + A000217 n).toNat

end

end A047039.P163244209387798998

/-! ## A047039.P5186396622772763554

`A047030(eq[A002260(n+1), A099375(n)])`
-/

namespace A047039.P5186396622772763554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047039.P5186396622772763554

/-!
# A047040: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=3x/4 unless x=0 or x=h.

The programs for A047040, there is no canonical definition to state claims against.
-/

/-! ## A047040.P2924930048464485342

`A047050((n²+n)%A080036(n))`
-/

namespace A047040.P2924930048464485342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat

end

end A047040.P2924930048464485342

/-! ## A047040.P16384172818148989468

`A047050(A061579(n%A008459(n)))`
-/

namespace A047040.P16384172818148989468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A061579 (Int.tmod (n : ℤ) (A008459 n)).toNat).toNat

end

end A047040.P16384172818148989468

/-! ## A047040.P14182662135091524818

`A047050(gcd(A010816(n), A061579(n)))`
-/

namespace A047040.P14182662135091524818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (Int.gcd (A010816 n) (A061579 n))

end

end A047040.P14182662135091524818

/-! ## A047040.P5659701420140268967

`A047050(A061579(n)-A144217(n+1))`
-/

namespace A047040.P5659701420140268967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A061579 n - A144217 (n + 1)).toNat

end

end A047040.P5659701420140268967

/-! ## A047040.P16988301503933624036

`A047050(A038722(n+2)%A008459(n))`
-/

namespace A047040.P16988301503933624036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (Int.tmod (A038722 (n + 2)) (A008459 n)).toNat

end

end A047040.P16988301503933624036

/-! ## A047040.P10419865537459348285

`A047050(A061579(n)+Δ[A130296(n+1)])`
-/

namespace A047040.P10419865537459348285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A061579 n + (f1 (n + 1) - f1 n)).toNat

end

end A047040.P10419865537459348285

/-! ## A047040.P7053286466154919774

`A047050(A038722(n+1)-A130296(n+1))`
-/

namespace A047040.P7053286466154919774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A038722 (n + 1) - A130296 (n + 1)).toNat

end

end A047040.P7053286466154919774

/-! ## A047040.P2767584280156533784

`A047050(A061579(n))`
-/

namespace A047040.P2767584280156533784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A061579 n).toNat

end

end A047040.P2767584280156533784

/-! ## A047040.P2293738510510534537

`A047050(A038722(n+1)-1)`
-/

namespace A047040.P2293738510510534537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A038722 (n + 1) - 1).toNat

end

end A047040.P2293738510510534537

/-! ## A047040.P13753070565265029853

`A047050(A038722(n+2))`
-/

namespace A047040.P13753070565265029853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A038722 (n + 2)).toNat

end

end A047040.P13753070565265029853

/-!
# A047041: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047040; Sum{T(i,n-i): i=0,1,...,n}, array T given by A047050.

The programs for A047041, there is no canonical definition to state claims against.
-/

/-! ## A047041.P18114785970158303355

`A050168(n)+Δ[A329070(A037957(n))]`
-/

namespace A047041.P18114785970158303355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329070 (A037957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n + (f1 (n + 1) - f1 n)

end

end A047041.P18114785970158303355

/-!
# A047042: T(n,n), array T as in A047040; T(n,n), array T given by A047050.

The programs for A047042, there is no canonical definition to state claims against.
-/

/-! ## A047042.P10455072469469648389

`A047040(∑[4*n])`
-/

namespace A047042.P10455072469469648389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047042.P10455072469469648389

/-! ## A047042.P5917537233503199452

`A047050(∑[4*n])`
-/

namespace A047042.P5917537233503199452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047042.P5917537233503199452

/-! ## A047042.P3232291912136840755

`A047050(2*A002378(n))+and(2, n²)`
-/

namespace A047042.P3232291912136840755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (2 * A002378 n).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A047042.P3232291912136840755

/-! ## A047042.P5093302195705655504

`A047040(A080476(2*n+1))%A001576(n)`
-/

namespace A047042.P5093302195705655504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047040 (A080476 (2 * n + 1)).toNat) (A001576 n)

end

end A047042.P5093302195705655504

/-! ## A047042.P11581713365641897059

`or(A000007(n), A047050(A080476(2*n+1)))`
-/

namespace A047042.P11581713365641897059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047050 (A080476 (2 * n + 1)).toNat)

end

end A047042.P11581713365641897059

/-! ## A047042.P13159585078512361691

`A047040(A080476(2*n+1))+A000035(2*n)`
-/

namespace A047042.P13159585078512361691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A080476 (2 * n + 1)).toNat + A000035 (2 * n)

end

end A047042.P13159585078512361691

/-! ## A047042.P17021332390858722653

`A047050(A080476(2*n+1))%A090816(n+1)`
-/

namespace A047042.P17021332390858722653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047050 (A080476 (2 * n + 1)).toNat) (A090816 (n + 1))

end

end A047042.P17021332390858722653

/-! ## A047042.P8790624750330719294

`A047040(A080476(2*n+1))+char[A047986(n+1)]`
-/

namespace A047042.P8790624750330719294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A080476 (2 * n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047042.P8790624750330719294

/-! ## A047042.P5240814081361102875

`A055672(A018252(n+1))+A047050(A080476(2*n+1))`
-/

namespace A047042.P5240814081361102875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A018252 (n + 1)).toNat + A047050 (A080476 (2 * n + 1)).toNat

end

end A047042.P5240814081361102875

/-!
# A047043: T(n,n-1), array T as in A047040; T(n-1,n), array T given by A047050.

The programs for A047043, there is no canonical definition to state claims against.
-/

/-! ## A047043.P16499903584757215626

`A047040(2*(n+1)²)`
-/

namespace A047043.P16499903584757215626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (2 * (n + 1) ^ 2)

end

end A047043.P16499903584757215626

/-! ## A047043.P7743000822167185584

`A047050(2*(n+1)²-1)`
-/

namespace A047043.P7743000822167185584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (2 * (n + 1) ^ 2 - 1)

end

end A047043.P7743000822167185584

/-! ## A047043.P1670140780394267674

`or(A000007(n), A047040(A184636(n+1)))`
-/

namespace A047043.P1670140780394267674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047040 (A184636 (n + 1)).toNat)

end

end A047043.P1670140780394267674

/-! ## A047043.P16991617814658762430

`A047040(A184636(n+1))+A000007(n+1)`
-/

namespace A047043.P16991617814658762430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A184636 (n + 1)).toNat + A000007 (n + 1)

end

end A047043.P16991617814658762430

/-! ## A047043.P3949221226731247366

`A047040(A184636(n+1))%A047025(n+7)`
-/

namespace A047043.P3949221226731247366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047040 (A184636 (n + 1)).toNat) (A047025 (n + 7))

end

end A047043.P3949221226731247366

/-!
# A047044: T(n,n-2), array T as in A047040; T(n-2,n), array T given by A047050.

The programs for A047044, there is no canonical definition to state claims against.
-/

/-! ## A047044.P17108410834031882774

`A047040((n+1)²+(n+2)²)`
-/

namespace A047044.P17108410834031882774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047044.P17108410834031882774

/-! ## A047044.P13871064186842204849

`A047050(A132209(n+1))`
-/

namespace A047044.P13871064186842204849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A132209 (n + 1)).toNat

end

end A047044.P13871064186842204849

/-! ## A047044.P6932641521099245249

`A047050(A142463(n+1))`
-/

namespace A047044.P6932641521099245249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A142463 (n + 1)).toNat

end

end A047044.P6932641521099245249

/-! ## A047044.P13903557599498710837

`A047050(A001844(n+1)-2)`
-/

namespace A047044.P13903557599498710837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A001844 (n + 1) - 2).toNat

end

end A047044.P13903557599498710837

/-! ## A047044.P475108836766683342

`A047050(A099776(n+1)-2)`
-/

namespace A047044.P475108836766683342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A099776 (n + 1) - 2).toNat

end

end A047044.P475108836766683342

/-! ## A047044.P18345348921167155993

`A047050(A055998(2*n+1)-n)`
-/

namespace A047044.P18345348921167155993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A055998 (2 * n + 1) - (n : ℤ)).toNat

end

end A047044.P18345348921167155993

/-!
# A047045: T(n,n-3), array T as in A047040; T(n-3,n), array T given by A047050.

The programs for A047045, there is no canonical definition to state claims against.
-/

/-! ## A047045.P13644247825634413295

`A047050(2*(n+1)*(n+3))`
-/

namespace A047045.P13644247825634413295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (2 * ((n + 1) * (n + 3)))

end

end A047045.P13644247825634413295

/-! ## A047045.P2825348134314979836

`A047040(A268581(n)+4)`
-/

namespace A047045.P2825348134314979836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A268581 n + 4).toNat

end

end A047045.P2825348134314979836

/-! ## A047045.P15857636401542826562

`A047040(A161532(n)+8)`
-/

namespace A047045.P15857636401542826562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A161532 n + 8).toNat

end

end A047045.P15857636401542826562

/-! ## A047045.P17686783995428700894

`A047040(A005408((n+2)²))`
-/

namespace A047045.P17686783995428700894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A005408 ((n + 2) ^ 2)).toNat

end

end A047045.P17686783995428700894

/-! ## A047045.P7459876830809882510

`A047040(A267873((n+2)²))`
-/

namespace A047045.P7459876830809882510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A267873 ((n + 2) ^ 2)).toNat

end

end A047045.P7459876830809882510

/-! ## A047045.P18128650790816782794

`A047040(A184636(n+2)+1)`
-/

namespace A047045.P18128650790816782794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A184636 (n + 2) + 1).toNat

end

end A047045.P18128650790816782794

/-! ## A047045.P6356483487529706584

`A047040(A167614(2*(n+1))+n)`
-/

namespace A047045.P6356483487529706584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A047045.P6356483487529706584

/-!
# A047046: T(n,n+1), array T as in A047040; T(n+1,n), array T given by A047050.

The programs for A047046, there is no canonical definition to state claims against.
-/

/-! ## A047046.P15104387196797188670

`A047050(2*(n+1)²)`
-/

namespace A047046.P15104387196797188670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (2 * (n + 1) ^ 2)

end

end A047046.P15104387196797188670

/-! ## A047046.P10680845507653355418

`A047040(2*(n+1)²-1)`
-/

namespace A047046.P10680845507653355418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (2 * (n + 1) ^ 2 - 1)

end

end A047046.P10680845507653355418

/-! ## A047046.P7885470588049606492

`record[A047040(A266074(n)+1)]`
-/

namespace A047046.P7885470588049606492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A266074 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047046.P7885470588049606492

/-! ## A047046.P16663923157592013093

`record[A047040(or(1, A266074(n)))]`
-/

namespace A047046.P16663923157592013093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (Int.lor 1 (A266074 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047046.P16663923157592013093

/-! ## A047046.P657491637320658805

`record[gcd(A047040(n), A047050(n+1))]`
-/

namespace A047046.P657491637320658805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047040 n) (A047050 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047046.P657491637320658805

/-! ## A047046.P7476099560827596274

`A047050(A184636(n+1))%A001576(n)`
-/

namespace A047046.P7476099560827596274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047050 (A184636 (n + 1)).toNat) (A001576 n)

end

end A047046.P7476099560827596274

/-! ## A047046.P8159248454453505862

`or(A000007(n), A047050(A184636(n+1)))`
-/

namespace A047046.P8159248454453505862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047050 (A184636 (n + 1)).toNat)

end

end A047046.P8159248454453505862

/-! ## A047046.P9703813108751612251

`A047050(A184636(n+1))+A000035(2*(n+2))`
-/

namespace A047046.P9703813108751612251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A184636 (n + 1)).toNat + A000035 (2 * (n + 2))

end

end A047046.P9703813108751612251

/-! ## A047046.P14566993453230878164

`A047050(A184636(n+1))+A000007(3*n+2)`
-/

namespace A047046.P14566993453230878164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A184636 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A047046.P14566993453230878164

/-! ## A047046.P6912548015195262392

`A047050(A184636(n+1))+A010816(3*n+2)`
-/

namespace A047046.P6912548015195262392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A184636 (n + 1)).toNat + A010816 (3 * n + 2)

end

end A047046.P6912548015195262392

/-!
# A047047: T(n,n+2), array T as in A047040; T(n+2,n), array T given by A047050.

The programs for A047047, there is no canonical definition to state claims against.
-/

/-! ## A047047.P17628280924023494212

`A047046(n+1)-A047042(n+1)`
-/

namespace A047047.P17628280924023494212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047046 (n + 1) - A047042 (n + 1)

end

end A047047.P17628280924023494212

/-! ## A047047.P614627156798627447

`A047050((n+1)²+(n+2)²)`
-/

namespace A047047.P614627156798627447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047047.P614627156798627447

/-! ## A047047.P2086046312448062743

`A047040(A132209(n+1))`
-/

namespace A047047.P2086046312448062743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A132209 (n + 1)).toNat

end

end A047047.P2086046312448062743

/-! ## A047047.P6171899078951834105

`A047040(A142463(n+1))`
-/

namespace A047047.P6171899078951834105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A142463 (n + 1)).toNat

end

end A047047.P6171899078951834105

/-! ## A047047.P379060740659626269

`A047040(eq[2, A114327(n)])`
-/

namespace A047047.P379060740659626269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047047.P379060740659626269

/-! ## A047047.P3898094018357352215

`A047040(A001844(n+1)-2)`
-/

namespace A047047.P3898094018357352215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A001844 (n + 1) - 2).toNat

end

end A047047.P3898094018357352215

/-! ## A047047.P16337608665140124372

`A047040(A099776(n+1)-2)`
-/

namespace A047047.P16337608665140124372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A099776 (n + 1) - 2).toNat

end

end A047047.P16337608665140124372

/-!
# A047048: T(n,n+3), array T as in A047040; T(n+3,n), array T given by A047050.

The programs for A047048, there is no canonical definition to state claims against.
-/

/-! ## A047048.P5660642946326850933

`Δ[A047047(n)-∑[A047042(n)]]`
-/

namespace A047048.P5660642946326850933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047047 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047048.P5660642946326850933

/-! ## A047048.P5490689818046735574

`Δ[A047047(n)]-A047042(n+1)`
-/

namespace A047048.P5490689818046735574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047042 (n + 1)

end

end A047048.P5490689818046735574

/-! ## A047048.P12604610864997353696

`A047047(n+1)-A047046(n+1)`
-/

namespace A047048.P12604610864997353696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047047 (n + 1) - A047046 (n + 1)

end

end A047048.P12604610864997353696

/-! ## A047048.P5496850112045130614

`A047047(n+1)-(A047047(n)+A047042(n+1))`
-/

namespace A047048.P5496850112045130614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047047 (n + 1) - (A047047 n + A047042 (n + 1))

end

end A047048.P5496850112045130614

/-! ## A047048.P10491010964191301230

`A047040(2*(n+1)*(n+3))`
-/

namespace A047048.P10491010964191301230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (2 * ((n + 1) * (n + 3)))

end

end A047048.P10491010964191301230

/-! ## A047048.P16340997819579162402

`record[A047040(A266074(n))]`
-/

namespace A047048.P16340997819579162402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A266074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047048.P16340997819579162402

/-! ## A047048.P7328796319058934735

`A047050(A184636(n+2)+1)`
-/

namespace A047048.P7328796319058934735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A184636 (n + 2) + 1).toNat

end

end A047048.P7328796319058934735

/-! ## A047048.P25214590492186749

`A047050(A167614(2*(n+1))+n)`
-/

namespace A047048.P25214590492186749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A047048.P25214590492186749

/-!
# A047049: T(2n,n), array T as in A047040.

The programs for A047049, there is no canonical definition to state claims against.
-/

/-! ## A047049.P18045952646104994590

`A047040(A062728(n))`
-/

namespace A047049.P18045952646104994590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A062728 n).toNat

end

end A047049.P18045952646104994590

/-! ## A047049.P1551474947916843651

`A047050(A062725(n))`
-/

namespace A047049.P1551474947916843651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A062725 n).toNat

end

end A047049.P1551474947916843651

/-! ## A047049.P10094519392248531030

`A047040(A062725(n)+n)`
-/

namespace A047049.P10094519392248531030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A062725 n + (n : ℤ)).toNat

end

end A047049.P10094519392248531030

/-! ## A047049.P3391855718774381830

`A047050(A081266(n)+n)`
-/

namespace A047049.P3391855718774381830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A081266 n + (n : ℤ)).toNat

end

end A047049.P3391855718774381830

/-! ## A047049.P18205519874109341216

`A047040(A027468(n)-n)`
-/

namespace A047049.P18205519874109341216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A027468 n - (n : ℤ)).toNat

end

end A047049.P18205519874109341216

/-!
# A047050: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=4x/3 unless x=0 or x=h.

The programs for A047050, there is no canonical definition to state claims against.
-/

/-! ## A047050.P5018028547551348468

`A047040(∑[2*n]%A080036(n))`
-/

namespace A047050.P5018028547551348468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A047050.P5018028547551348468

/-! ## A047050.P17735863396071646078

`A047040(A061579(n%A008459(n)))`
-/

namespace A047050.P17735863396071646078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A061579 (Int.tmod (n : ℤ) (A008459 n)).toNat).toNat

end

end A047050.P17735863396071646078

/-! ## A047050.P3500456746024933846

`A047040(gcd(A010816(n), A061579(n)))`
-/

namespace A047050.P3500456746024933846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (Int.gcd (A010816 n) (A061579 n))

end

end A047050.P3500456746024933846

/-! ## A047050.P2960971214935256632

`A047040(A061579(n)-A144217(n+1))`
-/

namespace A047050.P2960971214935256632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A061579 n - A144217 (n + 1)).toNat

end

end A047050.P2960971214935256632

/-! ## A047050.P16083314807046768179

`A047040(A038722(n+2)%A008459(n))`
-/

namespace A047050.P16083314807046768179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (Int.tmod (A038722 (n + 2)) (A008459 n)).toNat

end

end A047050.P16083314807046768179

/-! ## A047050.P17318731033065313098

`A047040(A061579(n)+Δ[A130296(n+1)])`
-/

namespace A047050.P17318731033065313098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A061579 n + (f1 (n + 1) - f1 n)).toNat

end

end A047050.P17318731033065313098

/-! ## A047050.P10543566552493195459

`A047040(A061579(n))`
-/

namespace A047050.P10543566552493195459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A061579 n).toNat

end

end A047050.P10543566552493195459

/-! ## A047050.P3646850075716788912

`A047040(A114327(n)+n)`
-/

namespace A047050.P3646850075716788912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A114327 n + (n : ℤ)).toNat

end

end A047050.P3646850075716788912

/-! ## A047050.P11973706330202998696

`A047040(A038722(n+1)-1)`
-/

namespace A047050.P11973706330202998696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A038722 (n + 1) - 1).toNat

end

end A047050.P11973706330202998696

/-! ## A047050.P6657673411609677171

`A047040(A038722(n+2))`
-/

namespace A047050.P6657673411609677171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A038722 (n + 2)).toNat

end

end A047050.P6657673411609677171

/-!
# A047051: Prime alternating tangle types (of knots) with n crossings.

The programs for A047051, there is no canonical definition to state claims against.
-/

/-! ## A047051.P11900264272473887079

`∑[A376455(A000110(n))]`
-/

namespace A047051.P11900264272473887079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376455 (A000110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047051.P11900264272473887079

/-! ## A047051.P8464773496644453566

`∑[A376455(abs(A292935(n)))]`
-/

namespace A047051.P8464773496644453566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376455 |A292935 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047051.P8464773496644453566

/-! ## A047051.P2704118824693581381

`∑[A100196(∑[A059032(n)])]`
-/

namespace A047051.P2704118824693581381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047051.P2704118824693581381

/-!
# A047053: a(n) = 4^n * n!.

The programs for A047053, the canonical program `A047053.P7600228685457433808` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047053 has offset 0).

The definition of A047053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*n!` (program `A047053.P7600228685457433808`, by `A047053.P7600228685457433808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047053.P7600228685457433808

`4^n*n!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A047053

/-- `4^n*n!` -/
def P7600228685457433808.Spec : Prop :=
  ∀ n, (P7600228685457433808.a n : ℤ) = A047053 n

theorem P7600228685457433808.correct : P7600228685457433808.Spec := by
  intro n
  simp only [A047053]

end A047053

/-! ## A047053.P12134081970099022943

`4*n*a(n-1)` with `a(0)=1`
-/

namespace A047053.P12134081970099022943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * (n * a (n - 1))

end

end A047053.P12134081970099022943

namespace A047053

/-- `4*n*a(n-1)` -/
def P12134081970099022943.Spec : Prop :=
  ∀ n, (P12134081970099022943.a n : ℤ) = A047053 n

end A047053

/-! ## A047053.P1757058632364278865

`A087299(2*n)`
-/

namespace A047053.P1757058632364278865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087299 (2 * n)

end

end A047053.P1757058632364278865

namespace A047053

/-- `A087299(2*n)` -/
def P1757058632364278865.Spec : Prop :=
  ∀ n, P1757058632364278865.a n = A047053 n

end A047053

/-! ## A047053.P13454185334230596110

`A000142(n)*A000302(n)`
-/

namespace A047053.P13454185334230596110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000302 n

end

end A047053.P13454185334230596110

namespace A047053

/-- `A000142(n)*A000302(n)` -/
def P13454185334230596110.Spec : Prop :=
  ∀ n, P13454185334230596110.a n = A047053 n

end A047053

/-! ## A047053.P2751057112238731048

`n!/4^-n`
-/

namespace A047053.P2751057112238731048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A047053.P2751057112238731048

namespace A047053

/-- `n!/4^-n` -/
def P2751057112238731048.Spec : Prop :=
  ∀ n, P2751057112238731048.a n = (A047053 n : ℚ)

theorem P2751057112238731048.correct : P2751057112238731048.Spec := by
  intro n
  simp only [A047053, Nat.add_sub_cancel, A047053.P2751057112238731048.a, A047053.P7600228685457433808.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A047053

/-! ## A047053.P477126231199950917

`∏[floor(4/sinh(acot(n)))]`
-/

namespace A047053.P477126231199950917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047053.P477126231199950917

namespace A047053

/-- `∏[floor(4/sinh(acot(n)))]` -/
def P477126231199950917.Spec : Prop :=
  ∀ n, P477126231199950917.a n = A047053 n

end A047053

/-! ## A047053.P11996606014071950095

`∏[floor(2/acot(2*n))]`
-/

namespace A047053.P11996606014071950095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (2 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047053.P11996606014071950095

namespace A047053

/-- `∏[floor(2/acot(2*n))]` -/
def P11996606014071950095.Spec : Prop :=
  ∀ n, P11996606014071950095.a n = A047053 n

end A047053

/-! ## A047053.P6171607001872941699

`∏[round(2/acot(2*n))]`
-/

namespace A047053.P6171607001872941699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047053.P6171607001872941699

namespace A047053

/-- `∏[round(2/acot(2*n))]` -/
def P6171607001872941699.Spec : Prop :=
  ∀ n, P6171607001872941699.a n = A047053 n

end A047053

/-! ## A047053.P18146285185815786875

`∏[floor(3/acot(n))+n]`
-/

namespace A047053.P18146285185815786875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047053.P18146285185815786875

namespace A047053

/-- `∏[floor(3/acot(n))+n]` -/
def P18146285185815786875.Spec : Prop :=
  ∀ n, P18146285185815786875.a n = A047053 n

end A047053

/-! ## A047053.P10462672841607651920

`∏[a(n-1)+4]` with `a(0)=1, a(1)=4`
-/

namespace A047053.P10462672841607651920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047053.P10462672841607651920

namespace A047053

/-- `∏[a(n-1)+4]` -/
def P10462672841607651920.Spec : Prop :=
  ∀ n, (P10462672841607651920.a n : ℤ) = A047053 n

end A047053

/-!
# A047055: Quintuple factorial numbers: a(n) = Product_{k=0..n-1} (5*k + 2).

The programs for A047055, there is no canonical definition to state claims against.
-/

/-! ## A047055.P11439787526139551168

`A084940(n)/A000142(n)*A000079(n)`
-/

namespace A047055.P11439787526139551168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084940 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A047055.P11439787526139551168

/-! ## A047055.P16686159436529997312

`∏[a(n-1)+5]` with `a(0)=1, a(1)=2`
-/

namespace A047055.P16686159436529997312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047055.P16686159436529997312

/-! ## A047055.P17727938428827064029

`∏[abs(3-5*n)]/3`
-/

namespace A047055.P17727938428827064029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (5 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A047055.P17727938428827064029

/-! ## A047055.P1991960208136083062

`(5*n-3)*a(n-1)` with `a(0)=1`
-/

namespace A047055.P1991960208136083062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * n : ℤ) - 3) * a (n - 1)

end

end A047055.P1991960208136083062

/-! ## A047055.P12834096522597036948

`abs(∏[a(n-1)-5]/3)` with `a(0)=3`
-/

namespace A047055.P12834096522597036948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3|

end

end A047055.P12834096522597036948

/-! ## A047055.P3188662656290183225

`∏[lcm(2, 1-2*n)+n-1]`
-/

namespace A047055.P3188662656290183225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (2 * n : ℤ)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047055.P3188662656290183225

/-! ## A047055.P1964042350705683704

`∏[lt[A071234(n), 6]]`
-/

namespace A047055.P1964042350705683704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071234 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047055.P1964042350705683704

/-! ## A047055.P2359534111624800518

`∏[A191709(∑[n+1])]`
-/

namespace A047055.P2359534111624800518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191709 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047055.P2359534111624800518

/-! ## A047055.P16012653924763300994

`∏[record[A074067(n+1)]]`
-/

namespace A047055.P16012653924763300994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047055.P16012653924763300994

/-! ## A047055.P5469466617314064370

`∏[record[A078688(n)-n]]`
-/

namespace A047055.P5469466617314064370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047055.P5469466617314064370

/-!
# A047056: Quintuple factorial numbers: Product_{k=0..n-1} (5*k+3).

The programs for A047056, there is no canonical definition to state claims against.
-/

/-! ## A047056.P14331236749813684817

`∏[floor(abs(5*n-ϕ))]`
-/

namespace A047056.P14331236749813684817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(5 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047056.P14331236749813684817

/-! ## A047056.P14233642803263140391

`(5*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A047056.P14233642803263140391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * n : ℤ) - 2) * a (n - 1)

end

end A047056.P14233642803263140391

/-! ## A047056.P8753437950776003078

`abs(∏[a(n-1)-5]/2)` with `a(0)=2`
-/

namespace A047056.P8753437950776003078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2|

end

end A047056.P8753437950776003078

/-! ## A047056.P13957585215343440290

`a(n-1)*A016885(n-1)` with `a(0)=1`
-/

namespace A047056.P13957585215343440290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016885 (n - 1)

end

end A047056.P13957585215343440290

/-! ## A047056.P8741662918196197713

`a(n-1)*A047219(2*n)` with `a(0)=1`
-/

namespace A047056.P8741662918196197713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047219 (2 * n)

end

end A047056.P8741662918196197713

/-! ## A047056.P2196860242005152078

`a(n-1)*A047220(3*n)` with `a(0)=1`
-/

namespace A047056.P2196860242005152078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047220 (3 * n)

end

end A047056.P2196860242005152078

/-! ## A047056.P16216020905771647851

`a(n-1)*A047223(3*n)` with `a(0)=1`
-/

namespace A047056.P16216020905771647851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047223 (3 * n)

end

end A047056.P16216020905771647851

/-! ## A047056.P11381439920229245146

`a(n-1)*A065187(5*n)` with `a(0)=1`
-/

namespace A047056.P11381439920229245146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A065187 (5 * n)

end

end A047056.P11381439920229245146

/-! ## A047056.P2009780190284419846

`a(n-1)*A079356(5*n)` with `a(0)=1`
-/

namespace A047056.P2009780190284419846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A079356 (5 * n)

end

end A047056.P2009780190284419846

/-! ## A047056.P4306099916387063666

`∏[abs(A000005(A318672(n+1)+1)-5*n)]/2`
-/

namespace A047056.P4306099916387063666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A318672 (n + 1) + 1).toNat - (5 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A047056.P4306099916387063666

/-!
# A047057: Number of n-step self-avoiding walks on the simple cubic lattice having exactly 1 pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A047057, there is no canonical definition to state claims against.
-/

/-! ## A047057.P179724366988504492

`3*A033155(n+1)+48*A038749(n+1)`
-/

namespace A047057.P179724366988504492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033155 (n + 1) + 48 * A038749 (n + 1)

end

end A047057.P179724366988504492

/-! ## A047057.P10604315636361611016

`24*A038747(n+1)+48*A038749(n+1)`
-/

namespace A047057.P10604315636361611016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A038747 (n + 1) + 48 * A038749 (n + 1)

end

end A047057.P10604315636361611016

/-!
# A047058: a(n) = 6^n * n!.

The programs for A047058, the canonical program `A047058.P4075058747115315762` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047058 has offset 0).

The definition of A047058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*n!` (program `A047058.P4075058747115315762`, by `A047058.P4075058747115315762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047058.P4075058747115315762

`6^n*n!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A047058

/-- `6^n*n!` -/
def P4075058747115315762.Spec : Prop :=
  ∀ n, (P4075058747115315762.a n : ℤ) = A047058 n

theorem P4075058747115315762.correct : P4075058747115315762.Spec := by
  intro n
  simp only [A047058]

end A047058

/-! ## A047058.P2608925144408336513

`n!/6^-n`
-/

namespace A047058.P2608925144408336513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (6 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A047058.P2608925144408336513

namespace A047058

/-- `n!/6^-n` -/
def P2608925144408336513.Spec : Prop :=
  ∀ n, P2608925144408336513.a n = (A047058 n : ℚ)

theorem P2608925144408336513.correct : P2608925144408336513.Spec := by
  intro n
  simp only [A047058, Nat.add_sub_cancel, A047058.P2608925144408336513.a, A047058.P4075058747115315762.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A047058

/-! ## A047058.P9148286568358512247

`∏[floor(2/acot(3*n))]`
-/

namespace A047058.P9148286568358512247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047058.P9148286568358512247

namespace A047058

/-- `∏[floor(2/acot(3*n))]` -/
def P9148286568358512247.Spec : Prop :=
  ∀ n, P9148286568358512247.a n = A047058 n

end A047058

/-! ## A047058.P4397524223495404544

`∏[round(2/acot(3*n))]`
-/

namespace A047058.P4397524223495404544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (3 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047058.P4397524223495404544

namespace A047058

/-- `∏[round(2/acot(3*n))]` -/
def P4397524223495404544.Spec : Prop :=
  ∀ n, P4397524223495404544.a n = A047058 n

end A047058

/-! ## A047058.P8969445490795241051

`∏[floor(acot(n))+6*n]`
-/

namespace A047058.P8969445490795241051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047058.P8969445490795241051

namespace A047058

/-- `∏[floor(acot(n))+6*n]` -/
def P8969445490795241051.Spec : Prop :=
  ∀ n, P8969445490795241051.a n = A047058 n

end A047058

/-!
# A047059: T(2n,n), array T given by A047050.

The programs for A047059, there is no canonical definition to state claims against.
-/

/-! ## A047059.P8024127548483425005

`A047050(∑[9*n]-n)`
-/

namespace A047059.P8024127548483425005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A047059.P8024127548483425005

/-! ## A047059.P2475157137449862112

`A047040(A062725(n))`
-/

namespace A047059.P2475157137449862112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A062725 n).toNat

end

end A047059.P2475157137449862112

/-! ## A047059.P18121693071719096150

`A047040(A081266(n)+n)`
-/

namespace A047059.P18121693071719096150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A081266 n + (n : ℤ)).toNat

end

end A047059.P18121693071719096150

/-! ## A047059.P8726121071757987070

`A047040(A062728(n)-n)`
-/

namespace A047059.P8726121071757987070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A062728 n - (n : ℤ)).toNat

end

end A047059.P8726121071757987070

/-! ## A047059.P13229619592805835719

`A047040(A027468(n)-2*n)`
-/

namespace A047059.P13229619592805835719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (A027468 n - (2 * n : ℤ)).toNat

end

end A047059.P13229619592805835719

/-!
# A047060: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=5x/3 unless x=0 or x=h.

The programs for A047060, there is no canonical definition to state claims against.
-/

/-! ## A047060.P5994558166943600717

`A047050(n)-Δ[A056926(A320114(n+1))]`
-/

namespace A047060.P5994558166943600717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A320114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 n - (f1 (n + 1) - f1 n)

end

end A047060.P5994558166943600717

/-! ## A047060.P3830705582474842209

`A050167(n)-Δ[A056926(A320114(n+1))]`
-/

namespace A047060.P3830705582474842209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A320114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050167 n - (f1 (n + 1) - f1 n)

end

end A047060.P3830705582474842209

/-! ## A047060.P4834076736045726772

`A047050(n)-A004198(A185044(n))`
-/

namespace A047060.P4834076736045726772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 n - A004198 (A185044 n).toNat

end

end A047060.P4834076736045726772

/-! ## A047060.P4255907931038214605

`A050167(n)-A004198(A185044(n))`
-/

namespace A047060.P4255907931038214605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050167 n - A004198 (A185044 n).toNat

end

end A047060.P4255907931038214605

/-! ## A047060.P13194341408947690750

`A047050(n)-A309785(A331562(n))`
-/

namespace A047060.P13194341408947690750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 n - A309785 (A331562 n).toNat

end

end A047060.P13194341408947690750

/-!
# A047061: a(n) = Sum_{i=0..n} A047060(i,n-i).

The programs for A047061, there is no canonical definition to state claims against.
-/

/-! ## A047061.P12766584922502656543

`A002024(∑[A148746(n)])`
-/

namespace A047061.P12766584922502656543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047061.P12766584922502656543

/-! ## A047061.P7014307912948970855

`A123578(∑[A148746(n)])`
-/

namespace A047061.P7014307912948970855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047061.P7014307912948970855

/-! ## A047061.P14185864271672396192

`∑[A000194(A299968(n))]`
-/

namespace A047061.P14185864271672396192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A299968 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047061.P14185864271672396192

/-! ## A047061.P7342758139114049814

`∑[A206551(A224704(n))]`
-/

namespace A047061.P7342758139114049814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A224704 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047061.P7342758139114049814

/-! ## A047061.P1429270149034046936

`∑[A354435(A202849(n))]`
-/

namespace A047061.P1429270149034046936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354435 (A202849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047061.P1429270149034046936

/-!
# A047062: T(n,n), array T as in A047060.

The programs for A047062, there is no canonical definition to state claims against.
-/

/-! ## A047062.P7336585494251592765

`A047060(∑[4*n])`
-/

namespace A047062.P7336585494251592765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047062.P7336585494251592765

/-! ## A047062.P10115818746851835927

`A047060(A046092(n))%A081076(n)`
-/

namespace A047062.P10115818746851835927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047060 (A046092 n).toNat) (A081076 n)

end

end A047062.P10115818746851835927

/-! ## A047062.P792124320836167814

`char[A246159(n)]*A047060(A046092(n))`
-/

namespace A047062.P792124320836167814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A047060 (A046092 n).toNat

end

end A047062.P792124320836167814

/-! ## A047062.P18249711257269055610

`A047060(A046092(n))*A057427(n+1)`
-/

namespace A047062.P18249711257269055610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A046092 n).toNat * A057427 (n + 1)

end

end A047062.P18249711257269055610

/-! ## A047062.P4512231861809282805

`A047060(A046092(n))+char[A034179(n+1)]`
-/

namespace A047062.P4512231861809282805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047062.P4512231861809282805

/-! ## A047062.P11846091377008652845

`A047060(A046092(n))+char[A043691(n+1)+1]`
-/

namespace A047062.P11846091377008652845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047062.P11846091377008652845

/-! ## A047062.P10504571285376821160

`A008683(-or(n, -2))²*A047060(A046092(n))`
-/

namespace A047062.P10504571285376821160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.lor (n : ℤ) (-2)).toNat ^ 2 * A047060 (A046092 n).toNat

end

end A047062.P10504571285376821160

/-! ## A047062.P2930620408993902889

`A001222(A049591(n+1))*A047060(A046092(n))`
-/

namespace A047062.P2930620408993902889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049591 (n + 1)).toNat * A047060 (A046092 n).toNat

end

end A047062.P2930620408993902889

/-! ## A047062.P16888652646464110002

`A001222(A002407(n+1))*A047060(A046092(n))`
-/

namespace A047062.P16888652646464110002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002407 (n + 1)).toNat * A047060 (A046092 n).toNat

end

end A047062.P16888652646464110002

/-!
# A047063: T(n,n-1), array T as in A047060.

The programs for A047063, there is no canonical definition to state claims against.
-/

/-! ## A047063.P14134681757639943244

`A047060(2*(n+1)²)`
-/

namespace A047063.P14134681757639943244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (2 * (n + 1) ^ 2)

end

end A047063.P14134681757639943244

/-! ## A047063.P11421587418203538792

`record[A047060(A070935(n+2))]`
-/

namespace A047063.P11421587418203538792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A070935 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047063.P11421587418203538792

/-! ## A047063.P2277460224948989096

`record[A047060(n*A025480(n))]`
-/

namespace A047063.P2277460224948989096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 ((n : ℤ) * A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047063.P2277460224948989096

/-! ## A047063.P4098442669525341660

`record[A047060(Δ[A049778(n+1)])]`
-/

namespace A047063.P4098442669525341660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047063.P4098442669525341660

/-! ## A047063.P9444322313249806971

`record[A047060(Δ[A049779(n+2)])]`
-/

namespace A047063.P9444322313249806971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047063.P9444322313249806971

/-! ## A047063.P2262337765612125114

`record[A047060(A025480(n²))]`
-/

namespace A047063.P2262337765612125114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A025480 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047063.P2262337765612125114

/-!
# A047064: T(n,n-2), array T as in A047060.

The programs for A047064, there is no canonical definition to state claims against.
-/

/-! ## A047064.P16657464695365321543

`A047063(n+2)-A047062(n+1)`
-/

namespace A047064.P16657464695365321543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047063 (n + 2) - A047062 (n + 1)

end

end A047064.P16657464695365321543

/-! ## A047064.P1385444307488242504

`A047060((n+1)²+(n+2)²)`
-/

namespace A047064.P1385444307488242504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047064.P1385444307488242504

/-! ## A047064.P7245897969385566334

`A047060(A099776(n+1))%A081076(n)`
-/

namespace A047064.P7245897969385566334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047060 (A099776 (n + 1)).toNat) (A081076 n)

end

end A047064.P7245897969385566334

/-! ## A047064.P10356195489649570757

`gcd(A000038(n), A047060(A099776(n+1)))`
-/

namespace A047064.P10356195489649570757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047060 (A099776 (n + 1)).toNat)

end

end A047064.P10356195489649570757

/-! ## A047064.P18178389569992089601

`lcm(A047060(A099776(n+1)), A106400(n))`
-/

namespace A047064.P18178389569992089601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047060 (A099776 (n + 1)).toNat) (A106400 n)

end

end A047064.P18178389569992089601

/-!
# A047065: T(n,n-3), array T as in A047060.

The programs for A047065, there is no canonical definition to state claims against.
-/

/-! ## A047065.P15283552847154551157

`A047064(n+3)-A047063(n+2)`
-/

namespace A047065.P15283552847154551157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047064 (n + 3) - A047063 (n + 2)

end

end A047065.P15283552847154551157

/-! ## A047065.P8515034987472479672

`Δ[A047064(n+2)-∑[A047062(n)]]`
-/

namespace A047065.P8515034987472479672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047064 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047065.P8515034987472479672

/-! ## A047065.P3470230676213640758

`Δ[A047064(n+2)]-A047062(n+1)`
-/

namespace A047065.P3470230676213640758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047064 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047062 (n + 1)

end

end A047065.P3470230676213640758

/-! ## A047065.P16019161523296239842

`A047064(n+3)-(A047064(n+2)+A047062(n+1))`
-/

namespace A047065.P16019161523296239842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047064 (n + 3) - (A047064 (n + 2) + A047062 (n + 1))

end

end A047065.P16019161523296239842

/-! ## A047065.P15521894360294398679

`Δ[A047063(n+2)]-A047062(n+2)`
-/

namespace A047065.P15521894360294398679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047062 (n + 2)

end

end A047065.P15521894360294398679

/-! ## A047065.P4627223939815718182

`record[A047060(A070935(n+2)+1)]`
-/

namespace A047065.P4627223939815718182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A070935 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047065.P4627223939815718182

/-! ## A047065.P4252543092021005355

`A047060(A167614(2*(n+1))+n)`
-/

namespace A047065.P4252543092021005355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A047065.P4252543092021005355

/-!
# A047066: T(n,n+1), array T as in A047060.

The programs for A047066, there is no canonical definition to state claims against.
-/

/-! ## A047066.P14357931853445371657

`A047060(2*(n+1)²-1)`
-/

namespace A047066.P14357931853445371657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (2 * (n + 1) ^ 2 - 1)

end

end A047066.P14357931853445371657

/-! ## A047066.P8296331170401999294

`A297959(A321722(n)+A195770(n+1))`
-/

namespace A047066.P8296331170401999294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A321722 n + A195770 (n + 1)).toNat

end

end A047066.P8296331170401999294

/-!
# A047067: T(n,n+2), array T as in A047060.

The programs for A047067, there is no canonical definition to state claims against.
-/

/-! ## A047067.P4455623237745373513

`A047060(A132209(n+1))`
-/

namespace A047067.P4455623237745373513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A132209 (n + 1)).toNat

end

end A047067.P4455623237745373513

/-! ## A047067.P10069407745110353060

`A047060(A142463(n+1))`
-/

namespace A047067.P10069407745110353060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A142463 (n + 1)).toNat

end

end A047067.P10069407745110353060

/-! ## A047067.P17850775703050516795

`A047060(A046092(n+1)-1)`
-/

namespace A047067.P17850775703050516795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A046092 (n + 1) - 1).toNat

end

end A047067.P17850775703050516795

/-! ## A047067.P11713530999347024966

`A047060(A001844(n+1)-2)`
-/

namespace A047067.P11713530999347024966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A001844 (n + 1) - 2).toNat

end

end A047067.P11713530999347024966

/-! ## A047067.P14871686436112429032

`A047060(A099776(n+1)-2)`
-/

namespace A047067.P14871686436112429032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A099776 (n + 1) - 2).toNat

end

end A047067.P14871686436112429032

/-! ## A047067.P17293623988888236600

`A047060(A014105(n+1)+n)`
-/

namespace A047067.P17293623988888236600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A014105 (n + 1) + (n : ℤ)).toNat

end

end A047067.P17293623988888236600

/-! ## A047067.P4941155039076603923

`A047060(4*n+2+A001844(n))`
-/

namespace A047067.P4941155039076603923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 ((4 * n + 2 : ℤ) + A001844 n).toNat

end

end A047067.P4941155039076603923

/-!
# A047068: T(n,n+3), array T as in A047060.

The programs for A047068, there is no canonical definition to state claims against.
-/

/-! ## A047068.P16521858065664289549

`A047060(2*(n+1)*(n+3))`
-/

namespace A047068.P16521858065664289549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (2 * ((n + 1) * (n + 3)))

end

end A047068.P16521858065664289549

/-! ## A047068.P10288960038981691634

`A047060(A054000(n+2))+char[A017444(n)]`
-/

namespace A047068.P10288960038981691634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017444 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A054000 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047068.P10288960038981691634

/-! ## A047068.P5172183133264537999

`A047060(A054000(n+2))%A104091(n+1)`
-/

namespace A047068.P5172183133264537999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047060 (A054000 (n + 2)).toNat) (A104091 (n + 1))

end

end A047068.P5172183133264537999

/-! ## A047068.P17297302082149068331

`A047060(A054000(n+2))+n%A028310(n)`
-/

namespace A047068.P17297302082149068331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A054000 (n + 2)).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A047068.P17297302082149068331

/-! ## A047068.P13808482901775967367

`A047060(A054000(n+2))/gcd(n, A016755(n))`
-/

namespace A047068.P13808482901775967367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047060 (A054000 (n + 2)).toNat : ℚ) / (Int.gcd (n : ℤ) (A016755 n) : ℚ)

end

end A047068.P13808482901775967367

/-!
# A047069: T(2n,n), array T as in A047060.

The programs for A047069, there is no canonical definition to state claims against.
-/

/-! ## A047069.P13583294735768514740

`A047060(A062728(n))`
-/

namespace A047069.P13583294735768514740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A062728 n).toNat

end

end A047069.P13583294735768514740

/-! ## A047069.P9444997917930472446

`A047060(A062725(n)+n)`
-/

namespace A047069.P9444997917930472446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A062725 n + (n : ℤ)).toNat

end

end A047069.P9444997917930472446

/-! ## A047069.P367832203460013253

`A047060(A027468(n)-n)`
-/

namespace A047069.P367832203460013253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A027468 n - (n : ℤ)).toNat

end

end A047069.P367832203460013253

/-! ## A047069.P4654755905139099768

`A047060(A052905(n)+A000466(n))`
-/

namespace A047069.P4654755905139099768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A052905 n + A000466 n).toNat

end

end A047069.P4654755905139099768

/-! ## A047069.P14998043556503435070

`A047060(A124080(n)-A000096(n))`
-/

namespace A047069.P14998043556503435070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047060 (A124080 n - A000096 n).toNat

end

end A047069.P14998043556503435070

/-!
# A047070: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=2x unless x=0 or x=h.

The programs for A047070, there is no canonical definition to state claims against.
-/

/-! ## A047070.P6068834624004672098

`A047000(∑[2*n]%A080036(n))`
-/

namespace A047070.P6068834624004672098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A047070.P6068834624004672098

/-! ## A047070.P10196000366626714552

`A047000(gcd(A061579(n), A133089(n)))`
-/

namespace A047070.P10196000366626714552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 (Int.gcd (A061579 n) (A133089 n))

end

end A047070.P10196000366626714552

/-! ## A047070.P46832524841105377

`A047000(∑[char[∑[n]]]²-(n+1))`
-/

namespace A047070.P46832524841105377
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047000 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A047070.P46832524841105377

/-! ## A047070.P9786280374649041837

`lcm(A033999(n), A047000(A061579(n)))`
-/

namespace A047070.P9786280374649041837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047000 (A061579 n).toNat)

end

end A047070.P9786280374649041837

/-! ## A047070.P16418278373285869281

`or(A000007(n), A047000(A061579(n)))`
-/

namespace A047070.P16418278373285869281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047000 (A061579 n).toNat)

end

end A047070.P16418278373285869281

/-! ## A047070.P8792060317239414957

`A047000(A061579(n))%A033937(n)`
-/

namespace A047070.P8792060317239414957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047000 (A061579 n).toNat) (A033937 n)

end

end A047070.P8792060317239414957

/-!
# A047071: Array T by antidiagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=3x unless x=0 or x=h.

The programs for A047071, there is no canonical definition to state claims against.
-/

/-! ## A047071.P2399970438593472270

`A047010(∑[2*n]%A080036(n))`
-/

namespace A047071.P2399970438593472270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A047071.P2399970438593472270

/-! ## A047071.P8173395678097907049

`A047010(A061579(n%A008459(n)))`
-/

namespace A047071.P8173395678097907049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A061579 (Int.tmod (n : ℤ) (A008459 n)).toNat).toNat

end

end A047071.P8173395678097907049

/-! ## A047071.P5087967818903785213

`A047010(gcd(A010816(n), A061579(n)))`
-/

namespace A047071.P5087967818903785213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (Int.gcd (A010816 n) (A061579 n))

end

end A047071.P5087967818903785213

/-! ## A047071.P676742636777211444

`A047010(A038722(n+2)%A008459(n))`
-/

namespace A047071.P676742636777211444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (Int.tmod (A038722 (n + 2)) (A008459 n)).toNat

end

end A047071.P676742636777211444

/-! ## A047071.P10381100484908771787

`A047010(A061579(n)+Δ[A130296(n+1)])`
-/

namespace A047071.P10381100484908771787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A061579 n + (f1 (n + 1) - f1 n)).toNat

end

end A047071.P10381100484908771787

/-! ## A047071.P10976606759928103257

`A047010(A038722(n+1)-A130296(n+1))`
-/

namespace A047071.P10976606759928103257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A038722 (n + 1) - A130296 (n + 1)).toNat

end

end A047071.P10976606759928103257

/-! ## A047071.P6791025768217930533

`A047010(A061579(n))`
-/

namespace A047071.P6791025768217930533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A061579 n).toNat

end

end A047071.P6791025768217930533

/-! ## A047071.P7156293799459065816

`A047010(A114327(n)+n)`
-/

namespace A047071.P7156293799459065816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A114327 n + (n : ℤ)).toNat

end

end A047071.P7156293799459065816

/-! ## A047071.P13813421638712204417

`A047010(A038722(n+1)-1)`
-/

namespace A047071.P13813421638712204417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A038722 (n + 1) - 1).toNat

end

end A047071.P13813421638712204417

/-! ## A047071.P6106651819319978464

`A047010(A038722(n+2))`
-/

namespace A047071.P6106651819319978464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A038722 (n + 2)).toNat

end

end A047071.P6106651819319978464

/-!
# A047072: Array A read by diagonals: A(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no step touches the line y=x unless x=0 or x=h.

The programs for A047072, there is no canonical definition to state claims against.
-/

/-! ## A047072.P4414065176159581405

`gcd(A080232(n), A129402(A261709(n+1)))`
-/

namespace A047072.P4414065176159581405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A129402 (A261709 (n + 1)).toNat)

end

end A047072.P4414065176159581405

/-! ## A047072.P7094782592004913512

`A062756(A157153(n)+6)`
-/

namespace A047072.P7094782592004913512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A157153 n + 6).toNat

end

end A047072.P7094782592004913512

/-! ## A047072.P1814824437720502856

`A062756(xor(8, A157153(n)))`
-/

namespace A047072.P1814824437720502856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.xor 8 (A157153 n)).toNat

end

end A047072.P1814824437720502856

/-! ## A047072.P3823182905013691605

`A062756(or(10, A157153(n)))`
-/

namespace A047072.P3823182905013691605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.lor 10 (A157153 n)).toNat

end

end A047072.P3823182905013691605

/-! ## A047072.P11992216499244351955

`A051700(A000040(A146774(n))-A146774(n))`
-/

namespace A047072.P11992216499244351955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A000040 (A146774 n).toNat - A146774 n).toNat

end

end A047072.P11992216499244351955

/-!
# A047073: a(n) = Sum_{j=0..n} A047072(j, n-j).

The programs for A047073, the canonical program `A047073.P905956312176174128` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047073 has offset 0).

The definition of A047073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047073.P17067478375089164675

`lcm(A131136(n), A182027(n))`
-/

namespace A047073.P17067478375089164675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131136 n) (A182027 n)

end

end A047073.P17067478375089164675

namespace A047073

/-- `lcm(A131136(n), A182027(n))` -/
def P17067478375089164675.Spec : Prop :=
  ∀ n, (P17067478375089164675.a n : ℤ) = A047073 n

end A047073

/-! ## A047073.P3632334105537106555

`A089408(n)*A131055(n+1)`
-/

namespace A047073.P3632334105537106555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n * A131055 (n + 1)

end

end A047073.P3632334105537106555

namespace A047073

/-- `A089408(n)*A131055(n+1)` -/
def P3632334105537106555.Spec : Prop :=
  ∀ n, P3632334105537106555.a n = A047073 n

end A047073

/-! ## A047073.P16618276830050446854

`A097331(n)+n*A089408(n)`
-/

namespace A047073.P16618276830050446854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n + (n : ℤ) * A089408 n

end

end A047073.P16618276830050446854

namespace A047073

/-- `A097331(n)+n*A089408(n)` -/
def P16618276830050446854.Spec : Prop :=
  ∀ n, P16618276830050446854.a n = A047073 n

end A047073

/-! ## A047073.P15764325582640320479

`abs(A090192(n))+n*A089408(n)`
-/

namespace A047073.P15764325582640320479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 n| + (n : ℤ) * A089408 n

end

end A047073.P15764325582640320479

namespace A047073

/-- `abs(A090192(n))+n*A089408(n)` -/
def P15764325582640320479.Spec : Prop :=
  ∀ n, P15764325582640320479.a n = A047073 n

end A047073

/-! ## A047073.P13115422629536404402

`(A073097(n)²+n)*A089408(n)`
-/

namespace A047073.P13115422629536404402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073097 n ^ 2 + (n : ℤ)) * A089408 n

end

end A047073.P13115422629536404402

namespace A047073

/-- `(A073097(n)²+n)*A089408(n)` -/
def P13115422629536404402.Spec : Prop :=
  ∀ n, P13115422629536404402.a n = A047073 n

end A047073

/-! ## A047073.P4392193139904060962

`(A117569(n)²+n)*A089408(n)`
-/

namespace A047073.P4392193139904060962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117569 n ^ 2 + (n : ℤ)) * A089408 n

end

end A047073.P4392193139904060962

namespace A047073

/-- `(A117569(n)²+n)*A089408(n)` -/
def P4392193139904060962.Spec : Prop :=
  ∀ n, P4392193139904060962.a n = A047073 n

end A047073

/-! ## A047073.P14912169100978028367

`(A163805(n)²+n)*A089408(n)`
-/

namespace A047073.P14912169100978028367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163805 n ^ 2 + (n : ℤ)) * A089408 n

end

end A047073.P14912169100978028367

namespace A047073

/-- `(A163805(n)²+n)*A089408(n)` -/
def P14912169100978028367.Spec : Prop :=
  ∀ n, P14912169100978028367.a n = A047073 n

end A047073

/-! ## A047073.P11884559724418947442

`∑[A000038(a(n-1))]*A089408(n)` with `a(0)=1, a(1)=1`
-/

namespace A047073.P11884559724418947442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000038 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A089408 n

end

end A047073.P11884559724418947442

namespace A047073

/-- `∑[A000038(a(n-1))]*A089408(n)` -/
def P11884559724418947442.Spec : Prop :=
  ∀ n, P11884559724418947442.a n = A047073 n

end A047073

/-! ## A047073.P905956312176174128

`A000032(C(2, n+2))*A063886((2*n)%(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047073

/-- `A000032(C(2, n+2))*A063886((2*n)%(n+1))` -/
def P905956312176174128.Spec : Prop :=
  ∀ n, P905956312176174128.a n = A047073 n

theorem P905956312176174128.correct : P905956312176174128.Spec := by
  intro n
  simp only [A047073]

end A047073

/-! ## A047073.P7810592199389264571

`A001405(n)+A089408(n)-A000007(n)`
-/

namespace A047073.P7810592199389264571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A089408 n - A000007 n)

end

end A047073.P7810592199389264571

namespace A047073

/-- `A001405(n)+A089408(n)-A000007(n)` -/
def P7810592199389264571.Spec : Prop :=
  ∀ n, P7810592199389264571.a n = A047073 n

end A047073

/-! ## A047073.P8650879051220913712

`A182027(A184985(n+1)-n)*A182027(n)`
-/

namespace A047073.P8650879051220913712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A184985 (n + 1) - (n : ℤ)).toNat * A182027 n

end

end A047073.P8650879051220913712

namespace A047073

/-- `A182027(A184985(n+1)-n)*A182027(n)` -/
def P8650879051220913712.Spec : Prop :=
  ∀ n, P8650879051220913712.a n = A047073 n

end A047073

/-! ## A047073.P14966683253088545339

`gcd(2, A128057(n))*A182027(n)`
-/

namespace A047073.P14966683253088545339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A128057 n) : ℤ) * A182027 n

end

end A047073.P14966683253088545339

namespace A047073

/-- `gcd(2, A128057(n))*A182027(n)` -/
def P14966683253088545339.Spec : Prop :=
  ∀ n, P14966683253088545339.a n = A047073 n

end A047073

/-! ## A047073.P16229695708067897364

`A237520(∑[A110654(n)]+n)`
-/

namespace A047073.P16229695708067897364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A047073.P16229695708067897364

namespace A047073

/-- `A237520(∑[A110654(n)]+n)` -/
def P16229695708067897364.Spec : Prop :=
  ∀ n, P16229695708067897364.a n = A047073 n

end A047073

/-! ## A047073.P8919346480586341675

`A237520(A024206(n+2)-1)`
-/

namespace A047073.P8919346480586341675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A024206 (n + 2) - 1).toNat

end

end A047073.P8919346480586341675

namespace A047073

/-- `A237520(A024206(n+2)-1)` -/
def P8919346480586341675.Spec : Prop :=
  ∀ n, P8919346480586341675.a n = A047073 n

end A047073

/-! ## A047073.P15816827633920402502

`A237520(A002620(n+3)-2)`
-/

namespace A047073.P15816827633920402502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A002620 (n + 3) - 2).toNat

end

end A047073.P15816827633920402502

namespace A047073

/-- `A237520(A002620(n+3)-2)` -/
def P15816827633920402502.Spec : Prop :=
  ∀ n, P15816827633920402502.a n = A047073 n

end A047073

/-! ## A047073.P15068130048230574789

`A237520(A000096(n)-A002620(n))`
-/

namespace A047073.P15068130048230574789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A000096 n - A002620 n).toNat

end

end A047073.P15068130048230574789

namespace A047073

/-- `A237520(A000096(n)-A002620(n))` -/
def P15068130048230574789.Spec : Prop :=
  ∀ n, P15068130048230574789.a n = A047073 n

end A047073

/-! ## A047073.P2787502692480099088

`A020639(A018819(n))*A182027(n)`
-/

namespace A047073.P2787502692480099088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018819 n).toNat * A182027 n

end

end A047073.P2787502692480099088

namespace A047073

/-- `A020639(A018819(n))*A182027(n)` -/
def P2787502692480099088.Spec : Prop :=
  ∀ n, P2787502692480099088.a n = A047073 n

end A047073

/-!
# A047074: a(n) = Sum_{i=0..floor(n/2)} T(i,n-i), array T as in A047072.

The programs for A047074, the canonical program `A047074.P16291066266653691884` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047074 has offset 0).

The definition of A047074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047074.P16291066266653691884

`ceil((n+1)/2*A089408(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A047074

/-- `ceil((n+1)/2*A089408(n))` -/
def P16291066266653691884.Spec : Prop :=
  ∀ n, P16291066266653691884.a n = A047074 n

theorem P16291066266653691884.correct : P16291066266653691884.Spec := by
  intro n
  simp only [A047074]

end A047074

/-! ## A047074.P1849947337909514654

`(n+1)/A014963(A001316(n))*A089408(n)`
-/

namespace A047074.P1849947337909514654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (A001316 n).toNat : ℚ) * (A089408 n : ℚ)

end

end A047074.P1849947337909514654

namespace A047074

/-- `(n+1)/A014963(A001316(n))*A089408(n)` -/
def P1849947337909514654.Spec : Prop :=
  ∀ n, P1849947337909514654.a n = (A047074 n : ℚ)

end A047074

/-! ## A047074.P6964077999168394966

`A089408(n)+Δ[A210736(n)]`
-/

namespace A047074.P6964077999168394966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n + (f1 (n + 1) - f1 n)

end

end A047074.P6964077999168394966

namespace A047074

/-- `A089408(n)+Δ[A210736(n)]` -/
def P6964077999168394966.Spec : Prop :=
  ∀ n, P6964077999168394966.a n = A047074 n

end A047074

/-! ## A047074.P17448105676725386839

`A089408(n)+A037952(log2(A011782(n)))`
-/

namespace A047074.P17448105676725386839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n + A037952 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A047074.P17448105676725386839

namespace A047074

/-- `A089408(n)+A037952(log2(A011782(n)))` -/
def P17448105676725386839.Spec : Prop :=
  ∀ n, P17448105676725386839.a n = A047074 n

end A047074

/-! ## A047074.P4879462999164265194

`A089408(n)+Δ[A034869(A002620(n))]`
-/

namespace A047074.P4879462999164265194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n + (f1 (n + 1) - f1 n)

end

end A047074.P4879462999164265194

namespace A047074

/-- `A089408(n)+Δ[A034869(A002620(n))]` -/
def P4879462999164265194.Spec : Prop :=
  ∀ n, P4879462999164265194.a n = A047074 n

end A047074

/-!
# A047075: All differences C(j)-C(i), j>i, of Catalan numbers A000108.

The programs for A047075, the canonical program `A047075.P16391672911939574512` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047075 has offset 0).

The definition of A047075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047075.P16391672911939574512

`record[A168256(n)-A000108(A025581(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A047075

/-- `record[A168256(n)-A000108(A025581(n))]` -/
def P16391672911939574512.Spec : Prop :=
  ∀ n, P16391672911939574512.a n = A047075 n

theorem P16391672911939574512.correct : P16391672911939574512.Spec := by
  intro n
  simp only [A047075]

end A047075

/-! ## A047075.P4370964719033805156

`record[A168256(n)-A000108(A004736(n+1))]`
-/

namespace A047075.P4370964719033805156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168256 n - A000108 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047075.P4370964719033805156

namespace A047075

/-- `record[A168256(n)-A000108(A004736(n+1))]` -/
def P4370964719033805156.Spec : Prop :=
  ∀ n, P4370964719033805156.a n = A047075 n

end A047075

/-! ## A047075.P17647238180788016000

`record[A000108(A002262(n))-A176602(n)]`
-/

namespace A047075.P17647238180788016000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat - A176602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047075.P17647238180788016000

namespace A047075

/-- `record[A000108(A002262(n))-A176602(n)]` -/
def P17647238180788016000.Spec : Prop :=
  ∀ n, P17647238180788016000.a n = A047075 n

end A047075

/-! ## A047075.P5950868101367186403

`A276986(record[A145342(n+1)])`
-/

namespace A047075.P5950868101367186403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047075.P5950868101367186403

namespace A047075

/-- `A276986(record[A145342(n+1)])` -/
def P5950868101367186403.Spec : Prop :=
  ∀ n, P5950868101367186403.a n = A047075 n

end A047075

/-! ## A047075.P3960063194590850898

`A276986(record[A342410(n)+1])`
-/

namespace A047075.P3960063194590850898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047075.P3960063194590850898

namespace A047075

/-- `A276986(record[A342410(n)+1])` -/
def P3960063194590850898.Spec : Prop :=
  ∀ n, P3960063194590850898.a n = A047075 n

end A047075

/-! ## A047075.P14699611688301104918

`A276986(A023758(n+1)+1)`
-/

namespace A047075.P14699611688301104918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (A023758 (n + 1) + 1).toNat

end

end A047075.P14699611688301104918

namespace A047075

/-- `A276986(A023758(n+1)+1)` -/
def P14699611688301104918.Spec : Prop :=
  ∀ n, P14699611688301104918.a n = A047075 n

end A047075

/-! ## A047075.P14359956411316409142

`A276986(record[A008619(A341915(n))])`
-/

namespace A047075.P14359956411316409142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047075.P14359956411316409142

namespace A047075

/-- `A276986(record[A008619(A341915(n))])` -/
def P14359956411316409142.Spec : Prop :=
  ∀ n, P14359956411316409142.a n = A047075 n

end A047075

/-! ## A047075.P8091448403330659737

`A276986(record[A008619(A342410(n))])`
-/

namespace A047075.P8091448403330659737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A342410 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047075.P8091448403330659737

namespace A047075

/-- `A276986(record[A008619(A342410(n))])` -/
def P8091448403330659737.Spec : Prop :=
  ∀ n, P8091448403330659737.a n = A047075 n

end A047075

/-!
# A047077: Number of pairs of integers (x,y) with n^2 <= x^2+y^2 <= (n+1)^2.

The programs for A047077, there is no canonical definition to state claims against.
-/

/-! ## A047077.P4345760009546144892

`A000328(n+1)-A051132(n)`
-/

namespace A047077.P4345760009546144892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) - A051132 n

end

end A047077.P4345760009546144892

/-! ## A047077.P1858995052851011518

`A046109(n)+Δ[A000328(n)]`
-/

namespace A047077.P1858995052851011518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n + (f1 (n + 1) - f1 n)

end

end A047077.P1858995052851011518

/-! ## A047077.P13448192885559946402

`A046109(n)+A036693(n+1)`
-/

namespace A047077.P13448192885559946402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n + A036693 (n + 1)

end

end A047077.P13448192885559946402

/-! ## A047077.P14619361524771432851

`Δ[A051132(n)+∑[A046109(n)]]`
-/

namespace A047077.P14619361524771432851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047077.P14619361524771432851

/-! ## A047077.P16568532707941711213

`A046109(n+1)+Δ[A051132(n)]`
-/

namespace A047077.P16568532707941711213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (n + 1) + (f1 (n + 1) - f1 n)

end

end A047077.P16568532707941711213

/-! ## A047077.P11389892456685381393

`A000328(n+1)-A053456(2*n)`
-/

namespace A047077.P11389892456685381393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) - A053456 (2 * n)

end

end A047077.P11389892456685381393

/-! ## A047077.P10480061152284530251

`A053411(2*(n+1))-A051132(n)`
-/

namespace A047077.P10480061152284530251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * (n + 1)) - A051132 n

end

end A047077.P10480061152284530251

/-! ## A047077.P10967765681241875209

`A053411(2*(n+1))-A053456(2*n)`
-/

namespace A047077.P10967765681241875209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * (n + 1)) - A053456 (2 * n)

end

end A047077.P10967765681241875209

/-! ## A047077.P17752944451165723851

`A000328(n+1)+A046109(n)-A000328(n)`
-/

namespace A047077.P17752944451165723851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) + (A046109 n - A000328 n)

end

end A047077.P17752944451165723851

/-! ## A047077.P13316859794313189523

`A046109(n+1)+A051132(n+1)-A051132(n)`
-/

namespace A047077.P13316859794313189523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (n + 1) + (A051132 (n + 1) - A051132 n)

end

end A047077.P13316859794313189523

/-! ## A047077.P418086814658115552

`A046109(n+1)+A077770(n)+A046109(n)`
-/

namespace A047077.P418086814658115552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (n + 1) + (A077770 n + A046109 n)

end

end A047077.P418086814658115552

/-! ## A047077.P10505398179871086862

`A333572(2*(n+1))+1-A053456(2*n)`
-/

namespace A047077.P10505398179871086862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (2 * (n + 1)) + (1 - A053456 (2 * n))

end

end A047077.P10505398179871086862

/-!
# A047078: Primes at which difference pattern X2Y (X and Y >= 6) occurs in A001223.

The programs for A047078, the canonical program `A047078.P11719807738729298579` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047078 has offset 1).

The definition of A047078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047078.P8308477224122084274

`∩[A210360(n+1), A384618(n+1)]`
-/

namespace A047078.P8308477224122084274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047078.P8308477224122084274

namespace A047078

/-- `∩[A210360(n+1), A384618(n+1)]` -/
def P8308477224122084274.Spec : Prop :=
  ∀ n, (P8308477224122084274.a n : ℤ) = A047078 (n + 1)

end A047078

/-! ## A047078.P8752341063310027709

`∩[A134100(n+1), A210360(n+1)]`
-/

namespace A047078.P8752341063310027709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047078.P8752341063310027709

namespace A047078

/-- `∩[A134100(n+1), A210360(n+1)]` -/
def P8752341063310027709.Spec : Prop :=
  ∀ n, (P8752341063310027709.a n : ℤ) = A047078 (n + 1)

end A047078

/-! ## A047078.P11719807738729298579

`∩[A083370(n+1)-2, A134100(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A047078

/-- `∩[A083370(n+1)-2, A134100(n+1)]` -/
def P11719807738729298579.Spec : Prop :=
  ∀ n, (P11719807738729298579.a n : ℤ) = A047078 (n + 1)

theorem P11719807738729298579.correct : P11719807738729298579.Spec := by
  intro n
  simp only [A047078, Nat.add_sub_cancel]

end A047078

/-! ## A047078.P11009078008638015022

`∩[A067833(n+1), A210360(n+1)]`
-/

namespace A047078.P11009078008638015022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047078.P11009078008638015022

namespace A047078

/-- `∩[A067833(n+1), A210360(n+1)]` -/
def P11009078008638015022.Spec : Prop :=
  ∀ n, (P11009078008638015022.a n : ℤ) = A047078 (n + 1)

end A047078

/-! ## A047078.P4727392903124439501

`p?[A073830(A134099(n+1)-8)%(72*n+38)]`
-/

namespace A047078.P4727392903124439501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073830 (A134099 (n + 1) - 8).toNat) (72 * n + 38 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A047078.P4727392903124439501

namespace A047078

/-- `p?[A073830(A134099(n+1)-8)%(72*n+38)]` -/
def P4727392903124439501.Spec : Prop :=
  ∀ n, P4727392903124439501.a n = A047078 (n + 1)

end A047078

/-!
# A047080: Triangular array T read by rows: T(h,k)=number of paths from (0,0) to (k,h-k) using step-vectors (0,1), (1,0), (1,1) with no right angles between pairs of consecutive steps.

The programs for A047080, there is no canonical definition to state claims against.
-/

/-! ## A047080.P14370564253378988607

`A127321(A322190(n)+A008518(n))`
-/

namespace A047080.P14370564253378988607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A322190 n + A008518 n).toNat

end

end A047080.P14370564253378988607

/-! ## A047080.P15117299074609912845

`A039836(floor(sqrt(A333157(n))))`
-/

namespace A047080.P15117299074609912845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (Int.sqrt (A333157 n)).toNat

end

end A047080.P15117299074609912845

/-! ## A047080.P4070897788035328678

`A039836(round(sqrt(A333157(n))))`
-/

namespace A047080.P4070897788035328678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (SequenceMachineLib.roundAway (Real.sqrt (A333157 n : ℝ))).toNat

end

end A047080.P4070897788035328678

/-! ## A047080.P18143684507140708599

`A004396(A104147(A108470(n+1)))`
-/

namespace A047080.P18143684507140708599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104147 (A108470 (n + 1)).toNat).toNat

end

end A047080.P18143684507140708599

/-! ## A047080.P8164925083002972679

`A105164(A282593(n+1))`
-/

namespace A047080.P8164925083002972679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105164 (A282593 (n + 1)).toNat

end

end A047080.P8164925083002972679

/-!
# A047081: a(n) = Sum_{k=0..n} T(n, k), array T as in A047080.

The programs for A047081, the canonical program `A047081.P11265777002277718936` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047081 has offset 0).

The definition of A047081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047081.P11265777002277718936

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A047081

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P11265777002277718936.Spec : Prop :=
  ∀ n, (P11265777002277718936.a n : ℤ) = A047081 n

theorem P11265777002277718936.correct : P11265777002277718936.Spec := by
  intro n
  simp only [A047081]

end A047081

/-! ## A047081.P16567587194244673632

`A001590(n+3)`
-/

namespace A047081.P16567587194244673632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3)

end

end A047081.P16567587194244673632

namespace A047081

/-- `A001590(n+3)` -/
def P16567587194244673632.Spec : Prop :=
  ∀ n, P16567587194244673632.a n = A047081 n

end A047081

/-! ## A047081.P9015529020228518846

`A000073(n+1)+A000073(n+2)`
-/

namespace A047081.P9015529020228518846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + A000073 (n + 2)

end

end A047081.P9015529020228518846

namespace A047081

/-- `A000073(n+1)+A000073(n+2)` -/
def P9015529020228518846.Spec : Prop :=
  ∀ n, P9015529020228518846.a n = A047081 n

end A047081

/-! ## A047081.P3937720152680762685

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A047081.P3937720152680762685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A047081.P3937720152680762685

namespace A047081

/-- `2*a(n-1)-a(n-4)` -/
def P3937720152680762685.Spec : Prop :=
  ∀ n, P3937720152680762685.a n = A047081 n

end A047081

/-! ## A047081.P7377457012137846171

`∑[a(n-1)-(a(n-4)-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047081.P7377457012137846171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047081.P7377457012137846171

namespace A047081

/-- `∑[a(n-1)-(a(n-4)-a(n-1))]` -/
def P7377457012137846171.Spec : Prop :=
  ∀ n, P7377457012137846171.a n = A047081 n

end A047081

/-! ## A047081.P8559025303980187192

`abs(A078042(n))`
-/

namespace A047081.P8559025303980187192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 n|

end

end A047081.P8559025303980187192

namespace A047081

/-- `abs(A078042(n))` -/
def P8559025303980187192.Spec : Prop :=
  ∀ n, P8559025303980187192.a n = A047081 n

end A047081

/-! ## A047081.P6769962923062646271

`∑[A000213(n)]`
-/

namespace A047081.P6769962923062646271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047081.P6769962923062646271

namespace A047081

/-- `∑[A000213(n)]` -/
def P6769962923062646271.Spec : Prop :=
  ∀ n, P6769962923062646271.a n = A047081 n

end A047081

/-! ## A047081.P3176958543755321919

`A213816(2*(n+1))`
-/

namespace A047081.P3176958543755321919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * (n + 1))

end

end A047081.P3176958543755321919

namespace A047081

/-- `A213816(2*(n+1))` -/
def P3176958543755321919.Spec : Prop :=
  ∀ n, P3176958543755321919.a n = A047081 n

end A047081

/-! ## A047081.P812467252418734071

`record[A001590(abs(1-n))]`
-/

namespace A047081.P812467252418734071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047081.P812467252418734071

namespace A047081

/-- `record[A001590(abs(1-n))]` -/
def P812467252418734071.Spec : Prop :=
  ∀ n, P812467252418734071.a n = A047081 n

end A047081

/-! ## A047081.P10870063699722257164

`∑[2*A192804(n)-1]`
-/

namespace A047081.P10870063699722257164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192804 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047081.P10870063699722257164

namespace A047081

/-- `∑[2*A192804(n)-1]` -/
def P10870063699722257164.Spec : Prop :=
  ∀ n, P10870063699722257164.a n = A047081 n

end A047081

/-! ## A047081.P351950429093273675

`2*A325473(n+1)-(n+1)`
-/

namespace A047081.P351950429093273675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325473 (n + 1) - (n + 1 : ℤ)

end

end A047081.P351950429093273675

namespace A047081

/-- `2*A325473(n+1)-(n+1)` -/
def P351950429093273675.Spec : Prop :=
  ∀ n, P351950429093273675.a n = A047081 n

end A047081

/-! ## A047081.P6928320032815628388

`A308189(A004278(n+2))`
-/

namespace A047081.P6928320032815628388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (A004278 (n + 2)).toNat

end

end A047081.P6928320032815628388

namespace A047081

/-- `A308189(A004278(n+2))` -/
def P6928320032815628388.Spec : Prop :=
  ∀ n, P6928320032815628388.a n = A047081 n

end A047081

/-! ## A047081.P15684670453736553287

`A192804(n)+A008937(n)`
-/

namespace A047081.P15684670453736553287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n + A008937 n

end

end A047081.P15684670453736553287

namespace A047081

/-- `A192804(n)+A008937(n)` -/
def P15684670453736553287.Spec : Prop :=
  ∀ n, P15684670453736553287.a n = A047081 n

end A047081

/-! ## A047081.P3999735207447755382

`A214727(n)+A000073(n)`
-/

namespace A047081.P3999735207447755382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + A000073 n

end

end A047081.P3999735207447755382

namespace A047081

/-- `A214727(n)+A000073(n)` -/
def P3999735207447755382.Spec : Prop :=
  ∀ n, P3999735207447755382.a n = A047081 n

end A047081

/-! ## A047081.P2493390389641463142

`A354784(n)+A275778(n)`
-/

namespace A047081.P2493390389641463142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A275778 n

end

end A047081.P2493390389641463142

namespace A047081

/-- `A354784(n)+A275778(n)` -/
def P2493390389641463142.Spec : Prop :=
  ∀ n, P2493390389641463142.a n = A047081 n

end A047081

/-! ## A047081.P12875244305129495470

`A214825(n)-A001590(n)`
-/

namespace A047081.P12875244305129495470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n - A001590 n

end

end A047081.P12875244305129495470

namespace A047081

/-- `A214825(n)-A001590(n)` -/
def P12875244305129495470.Spec : Prop :=
  ∀ n, P12875244305129495470.a n = A047081 n

end A047081

/-! ## A047081.P12823566420280452780

`A214826(n)-A020992(n)`
-/

namespace A047081.P12823566420280452780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n - A020992 n

end

end A047081.P12823566420280452780

namespace A047081

/-- `A214826(n)-A020992(n)` -/
def P12823566420280452780.Spec : Prop :=
  ∀ n, P12823566420280452780.a n = A047081 n

end A047081

/-! ## A047081.P3340474975910537838

`A033999(n)*A078042(n)`
-/

namespace A047081.P3340474975910537838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078042 n

end

end A047081.P3340474975910537838

namespace A047081

/-- `A033999(n)*A078042(n)` -/
def P3340474975910537838.Spec : Prop :=
  ∀ n, P3340474975910537838.a n = A047081 n

end A047081

/-! ## A047081.P12930933898271696067

`gcd(A000038(n), A078042(n))`
-/

namespace A047081.P12930933898271696067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A078042 n)

end

end A047081.P12930933898271696067

namespace A047081

/-- `gcd(A000038(n), A078042(n))` -/
def P12930933898271696067.Spec : Prop :=
  ∀ n, (P12930933898271696067.a n : ℤ) = A047081 n

end A047081

/-!
# A047082: a(n) = Sum_{i=0..floor(n/2)} A047080(n,i).

The programs for A047082, there is no canonical definition to state claims against.
-/

/-! ## A047082.P12619189926763252459

`A336358(A365967(n))`
-/

namespace A047082.P12619189926763252459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A365967 n).toNat

end

end A047082.P12619189926763252459

/-! ## A047082.P7015383758992685891

`A126120(n)+A000196(A006190(n))`
-/

namespace A047082.P7015383758992685891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A000196 (A006190 n).toNat

end

end A047082.P7015383758992685891

/-! ## A047082.P11444731124671840868

`A003059(A121724(n)-A002262(n))`
-/

namespace A047082.P11444731124671840868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A121724 n - A002262 n).toNat

end

end A047082.P11444731124671840868

/-! ## A047082.P3630572212575702818

`A003059(A121724(n)-A229745(n))`
-/

namespace A047082.P3630572212575702818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A121724 n - A229745 n).toNat

end

end A047082.P3630572212575702818

/-!
# A047083: a(n) = Sum_{i=0..floor((n+1)/2)} A047080(n,i).

The programs for A047083, there is no canonical definition to state claims against.
-/

/-! ## A047083.P15103543517319643669

`A225687(A181442(n))`
-/

namespace A047083.P15103543517319643669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A181442 n).toNat

end

end A047083.P15103543517319643669

/-! ## A047083.P13649770884182921440

`A000196(∑[A349819(n+1)])`
-/

namespace A047083.P13649770884182921440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047083.P13649770884182921440

/-! ## A047083.P7580321538353505934

`A104722(A032559(n+1))-A029012(n)`
-/

namespace A047083.P7580321538353505934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A032559 (n + 1)).toNat - A029012 n

end

end A047083.P7580321538353505934

/-! ## A047083.P14251523301238537751

`A038754(n)-A101080(A362042(2*n))`
-/

namespace A047083.P14251523301238537751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n - A101080 (A362042 (2 * n)).toNat

end

end A047083.P14251523301238537751

/-! ## A047083.P14310143421536434938

`A325785(or(A018499(n+1), A047080(n)))`
-/

namespace A047083.P14310143421536434938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (Int.lor (A018499 (n + 1)) (A047080 n)).toNat

end

end A047083.P14310143421536434938

/-!
# A047084: a(n) = Sum_{i=0..n} A047080(i,n-i).

The programs for A047084, the canonical program `A047084.P12843752671148501304` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047084 has offset 0).

The definition of A047084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047084.P12843752671148501304

`record[A013982(n)]-A013982(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047084

/-- `record[A013982(n)]-A013982(n+1)` -/
def P12843752671148501304.Spec : Prop :=
  ∀ n, P12843752671148501304.a n = A047084 n

theorem P12843752671148501304.correct : P12843752671148501304.Spec := by
  intro n
  simp only [A047084]

end A047084

/-! ## A047084.P6936144512623168413

`A013982(n+3)-A013982(n+1)`
-/

namespace A047084.P6936144512623168413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 (n + 3) - A013982 (n + 1)

end

end A047084.P6936144512623168413

namespace A047084

/-- `A013982(n+3)-A013982(n+1)` -/
def P6936144512623168413.Spec : Prop :=
  ∀ n, P6936144512623168413.a n = A047084 n

end A047084

/-! ## A047084.P13107016248777146595

`Δ[A072465(n+2)]`
-/

namespace A047084.P13107016248777146595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072465 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047084.P13107016248777146595

namespace A047084

/-- `Δ[A072465(n+2)]` -/
def P13107016248777146595.Spec : Prop :=
  ∀ n, P13107016248777146595.a n = A047084 n

end A047084

/-! ## A047084.P11503016450402534994

`A072465(n+3)-A072465(n+2)`
-/

namespace A047084.P11503016450402534994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072465 (n + 3) - A072465 (n + 2)

end

end A047084.P11503016450402534994

namespace A047084

/-- `A072465(n+3)-A072465(n+2)` -/
def P11503016450402534994.Spec : Prop :=
  ∀ n, P11503016450402534994.a n = A047084 n

end A047084

/-! ## A047084.P7203698185635988389

`Δ[A013982(n+1)+A013982(n+2)]`
-/

namespace A047084.P7203698185635988389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 (n + 1) + A013982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047084.P7203698185635988389

namespace A047084

/-- `Δ[A013982(n+1)+A013982(n+2)]` -/
def P7203698185635988389.Spec : Prop :=
  ∀ n, P7203698185635988389.a n = A047084 n

end A047084

/-! ## A047084.P5462761914232829683

`Δ[A023436(n+3)-A023436(n+1)]`
-/

namespace A047084.P5462761914232829683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023436 (n + 3) - A023436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047084.P5462761914232829683

namespace A047084

/-- `Δ[A023436(n+3)-A023436(n+1)]` -/
def P5462761914232829683.Spec : Prop :=
  ∀ n, P5462761914232829683.a n = A047084 n

end A047084

/-!
# A047085: a(n) = T(2*n, n), array T as in A047080.

The programs for A047085, the canonical program `A047085.P1439326172283854598` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047085 has offset 0).

The definition of A047085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047085.P507714174283409025

`A273905(2*round(sqrt(n²+1)))`
-/

namespace A047085.P507714174283409025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (2 * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A047085.P507714174283409025

namespace A047085

/-- `A273905(2*round(sqrt(n²+1)))` -/
def P507714174283409025.Spec : Prop :=
  ∀ n, P507714174283409025.a n = A047085 n

end A047085

/-! ## A047085.P10281504411840099455

`2*A294159(n)-a(n-1)` with `a(0)=1`
-/

namespace A047085.P10281504411840099455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A294159 n - a (n - 1)

end

end A047085.P10281504411840099455

namespace A047085

/-- `2*A294159(n)-a(n-1)` -/
def P10281504411840099455.Spec : Prop :=
  ∀ n, P10281504411840099455.a n = A047085 n

end A047085

/-! ## A047085.P340038315801211201

`A273905(2*n)/(val(a(n-1), 2)+1)` with `a(0)=1`
-/

namespace A047085.P340038315801211201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A273905 (2 * n) : ℚ) / (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (a (n - 1))).toNat 2 + 1 : ℚ)

end

end A047085.P340038315801211201

namespace A047085

/-- `A273905(2*n)/(val(a(n-1), 2)+1)` -/
def P340038315801211201.Spec : Prop :=
  ∀ n, P340038315801211201.a n = (A047085 n : ℚ)

end A047085

/-! ## A047085.P18207253574823468686

`abs(A273905(2*A028310(n))-n)+n`
-/

namespace A047085.P18207253574823468686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273905 (2 * A028310 n).toNat - (n : ℤ)| + (n : ℤ)

end

end A047085.P18207253574823468686

namespace A047085

/-- `abs(A273905(2*A028310(n))-n)+n` -/
def P18207253574823468686.Spec : Prop :=
  ∀ n, P18207253574823468686.a n = A047085 n

end A047085

/-! ## A047085.P1321722447390967804

`A047086(n+1)-Δ[A294159(n+1)]`
-/

namespace A047085.P1321722447390967804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 (n + 1) - (f1 (n + 1) - f1 n)

end

end A047085.P1321722447390967804

namespace A047085

/-- `A047086(n+1)-Δ[A294159(n+1)]` -/
def P1321722447390967804.Spec : Prop :=
  ∀ n, P1321722447390967804.a n = A047085 n

end A047085

/-! ## A047085.P4092730789275666593

`A273345(n+3)-(A273722(n+2)+A273714(n+2))`
-/

namespace A047085.P4092730789275666593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273345 (n + 3) - (A273722 (n + 2) + A273714 (n + 2))

end

end A047085.P4092730789275666593

namespace A047085

/-- `A273345(n+3)-(A273722(n+2)+A273714(n+2))` -/
def P4092730789275666593.Spec : Prop :=
  ∀ n, P4092730789275666593.a n = A047085 n

end A047085

/-! ## A047085.P1439326172283854598

`((4*n-3)*a(n-1)-(2*n-5)*a(n-2)+a(n-3)-(n-3)*a(n-4))/n` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A047085

/-- `((4*n-3)*a(n-1)-(2*n-5)*a(n-2)+a(n-3)-(n-3)*a(n-4))/n` -/
def P1439326172283854598.Spec : Prop :=
  ∀ n, P1439326172283854598.a n = (A047085 n : ℚ)

end A047085

/-! ## A047085.P16024573066225801169

`A047080(∑[4*n])`
-/

namespace A047085.P16024573066225801169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047085.P16024573066225801169

namespace A047085

/-- `A047080(∑[4*n])` -/
def P16024573066225801169.Spec : Prop :=
  ∀ n, P16024573066225801169.a n = A047085 n

end A047085

/-!
# A047086: a(n) = T(2*n+1, n), array T as in A047080.

The programs for A047086, there is no canonical definition to state claims against.
-/

/-! ## A047086.P4776543089275950894

`record[A273905(n+2)^(n%2)]`
-/

namespace A047086.P4776543089275950894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (n + 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047086.P4776543089275950894

/-! ## A047086.P1744800590700600991

`A273905(C(2, n+2)+2*n+1)`
-/

namespace A047086.P1744800590700600991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (Nat.choose 2 (n + 2) + (2 * n + 1))

end

end A047086.P1744800590700600991

/-! ## A047086.P4366494888778035105

`A273905(Δ[A010000(n)])`
-/

namespace A047086.P4366494888778035105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (f1 (n + 1) - f1 n).toNat

end

end A047086.P4366494888778035105

/-! ## A047086.P986607393356311867

`A273905(A004277(n)+1)`
-/

namespace A047086.P986607393356311867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A004277 n + 1).toNat

end

end A047086.P986607393356311867

/-! ## A047086.P3410636925263081614

`A273905(A004273(n)+2)`
-/

namespace A047086.P3410636925263081614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A004273 n + 2).toNat

end

end A047086.P3410636925263081614

/-! ## A047086.P9112205097634150171

`A273905(A004280(n+2))`
-/

namespace A047086.P9112205097634150171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A004280 (n + 2)).toNat

end

end A047086.P9112205097634150171

/-! ## A047086.P9455106437052299234

`A273905(A028310(2*n)+1)`
-/

namespace A047086.P9455106437052299234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A028310 (2 * n) + 1).toNat

end

end A047086.P9455106437052299234

/-! ## A047086.P1860873093824200815

`A273905(A233583(2*(n+1)))`
-/

namespace A047086.P1860873093824200815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A233583 (2 * (n + 1))).toNat

end

end A047086.P1860873093824200815

/-! ## A047086.P14794809309989465414

`A273905(A028310(n)+1+n)`
-/

namespace A047086.P14794809309989465414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A028310 n + 1 + (n : ℤ)).toNat

end

end A047086.P14794809309989465414

/-! ## A047086.P3623064917287340713

`A273905(A233583(n+2)+n)`
-/

namespace A047086.P3623064917287340713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A233583 (n + 2) + (n : ℤ)).toNat

end

end A047086.P3623064917287340713

/-! ## A047086.P15211367071029673712

`record[gcd(A035363(n), A273905(n+2))]`
-/

namespace A047086.P15211367071029673712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A273905 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047086.P15211367071029673712

/-! ## A047086.P3136172322906723116

`A273905(A000007(n)+2*n+1)`
-/

namespace A047086.P3136172322906723116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A000007 n + (2 * n + 1 : ℤ)).toNat

end

end A047086.P3136172322906723116

/-! ## A047086.P9306498398280763484

`A273905(A005408(n)+C(2, n+2))`
-/

namespace A047086.P9306498398280763484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A005408 n + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A047086.P9306498398280763484

/-! ## A047086.P10434379908472515808

`A273905(n+1+A000007(n)+n)`
-/

namespace A047086.P10434379908472515808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 ((n + 1 : ℤ) + (A000007 n + (n : ℤ))).toNat

end

end A047086.P10434379908472515808

/-! ## A047086.P9673807882781267927

`A273905(A010000(n+1)-A010000(n))`
-/

namespace A047086.P9673807882781267927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A010000 (n + 1) - A010000 n).toNat

end

end A047086.P9673807882781267927

/-! ## A047086.P18183531551671083207

`Δ[Δ[A271941(A254667(n+1))]]`
-/

namespace A047086.P18183531551671083207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (A254667 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047086.P18183531551671083207

/-! ## A047086.P4931655799505688321

`A047085(n+1)-Δ[A294159(n)]`
-/

namespace A047086.P4931655799505688321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 (n + 1) - (f1 (n + 1) - f1 n)

end

end A047086.P4931655799505688321

/-! ## A047086.P16814282879357138410

`A294159(n)+Δ[A047085(n)/2]`
-/

namespace A047086.P16814282879357138410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047085 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294159 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A047086.P16814282879357138410

/-! ## A047086.P719055949666093730

`A082582(n+1)+A271943(n+2)-A273345(n+3)`
-/

namespace A047086.P719055949666093730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1) + (A271943 (n + 2) - A273345 (n + 3))

end

end A047086.P719055949666093730

/-! ## A047086.P9931684659440086398

`A047083(2*n+1)-A047082(2*n+1)`
-/

namespace A047086.P9931684659440086398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047083 (2 * n + 1) - A047082 (2 * n + 1)

end

end A047086.P9931684659440086398

/-!
# A047087: a(n) = A047080(2*n, n+1).

The programs for A047087, there is no canonical definition to state claims against.
-/

/-! ## A047087.P7395019593995441944

`Δ[A108626(n)-A082582(n)]`
-/

namespace A047087.P7395019593995441944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A082582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P7395019593995441944

/-! ## A047087.P9270914184260683604

`Δ[A108626(n)-A086581(abs(1-n))]`
-/

namespace A047087.P9270914184260683604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A086581 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P9270914184260683604

/-! ## A047087.P16135765858849261958

`Δ[A108626(n)-A025242(A254667(n+1))]`
-/

namespace A047087.P16135765858849261958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A025242 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P16135765858849261958

/-! ## A047087.P14408791602439799413

`Δ[A108626(n)-A025242(A233583(n+2))]`
-/

namespace A047087.P14408791602439799413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A025242 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P14408791602439799413

/-! ## A047087.P12220037525109750917

`Δ[A108626(n)-A025242(A054977(n)+n)]`
-/

namespace A047087.P12220037525109750917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A025242 (A054977 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P12220037525109750917

/-! ## A047087.P12914493406791056410

`Δ[A000007(n)+A108626(n)-A025242(n+1)]`
-/

namespace A047087.P12914493406791056410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A108626 n - A025242 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P12914493406791056410

/-! ## A047087.P6334082235251756936

`Δ[A108626(n)-(A025242(n+1)-A008281(A057944(n)))]`
-/

namespace A047087.P6334082235251756936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - (A025242 (n + 1) - A008281 (A057944 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P6334082235251756936

/-! ## A047087.P4384982903128603625

`Δ[A108626(n)-A098978(A002620(n+1))]`
-/

namespace A047087.P4384982903128603625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A098978 (A002620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P4384982903128603625

/-! ## A047087.P10928191816305963900

`Δ[A108626(n)-A098978(A076921(n+1))]`
-/

namespace A047087.P10928191816305963900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A098978 (A076921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P10928191816305963900

/-! ## A047087.P13805861776582255106

`Δ[A108626(n)-A098978(A182531(n+1))]`
-/

namespace A047087.P13805861776582255106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A098978 (A182531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P13805861776582255106

/-! ## A047087.P14505971609693755189

`Δ[A108626(n)-A273342(∑[n-1]+3)]`
-/

namespace A047087.P14505971609693755189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A273342 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047087.P14505971609693755189

/-!
# A047088: a(n) = A047080(2*n+1, n+2).

The programs for A047088, there is no canonical definition to state claims against.
-/

/-! ## A047088.P4479028414723168677

`A047080(2*(n+1)*(n+3))`
-/

namespace A047088.P4479028414723168677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (2 * ((n + 1) * (n + 3)))

end

end A047088.P4479028414723168677

/-! ## A047088.P2670058513427976820

`record[A047080(A058331(A008611(n)))]`
-/

namespace A047088.P2670058513427976820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A058331 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047088.P2670058513427976820

/-! ## A047088.P2170086070066410531

`A180091(A141214(n+1))`
-/

namespace A047088.P2170086070066410531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180091 (A141214 (n + 1)).toNat

end

end A047088.P2170086070066410531

/-!
# A047089: Array T read by antidiagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and touches the line y=x/2 only at lattice points.

The programs for A047089, there is no canonical definition to state claims against.
-/

/-! ## A047089.P10188882049627302396

`A072405(n)-A200221(A195892(n+1))`
-/

namespace A047089.P10188882049627302396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - A200221 (A195892 (n + 1)).toNat

end

end A047089.P10188882049627302396

/-! ## A047089.P5130665217406067789

`A086617(A086629(n)%A324886(n+1))`
-/

namespace A047089.P5130665217406067789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (Int.tmod (A086629 n) (A324886 (n + 1))).toNat

end

end A047089.P5130665217406067789

/-! ## A047089.P7677006517935303773

`A072405(n)-A224782(A268079(A126885(n)))`
-/

namespace A047089.P7677006517935303773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - A224782 (A268079 (A126885 n).toNat).toNat

end

end A047089.P7677006517935303773

/-! ## A047089.P18471086971003424

`A080791(A196879(n)+A022168(n))`
-/

namespace A047089.P18471086971003424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A196879 n + A022168 n).toNat

end

end A047089.P18471086971003424

/-! ## A047089.P5591852511183995051

`A347643(A202979(n+1)-A335162(n))`
-/

namespace A047089.P5591852511183995051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A202979 (n + 1) - A335162 n).toNat

end

end A047089.P5591852511183995051

/-!
# A047090: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047089.

The programs for A047090, there is no canonical definition to state claims against.
-/

/-! ## A047090.P16565365544158564093

`or(A066568(A212804(n)), A082877(n+1))`
-/

namespace A047090.P16565365544158564093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066568 (A212804 n).toNat) (A082877 (n + 1))

end

end A047090.P16565365544158564093

/-! ## A047090.P6866644246829983784

`A330028(n+1)-A333628(A330028(n))`
-/

namespace A047090.P6866644246829983784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330028 (n + 1) - A333628 (A330028 n).toNat

end

end A047090.P6866644246829983784

/-!
# A047091: T(n,n), array T as in A047089.

The programs for A047091, there is no canonical definition to state claims against.
-/

/-! ## A047091.P8085063157235275044

`A047089(∑[4*n])`
-/

namespace A047091.P8085063157235275044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047091.P8085063157235275044

/-! ## A047091.P8159490750313380387

`char[A014681(n)]*A047089(A046092(n))`
-/

namespace A047091.P8159490750313380387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A047089 (A046092 n).toNat

end

end A047091.P8159490750313380387

/-! ## A047091.P13345612667781911020

`char[A035043(n)]*A047089(A046092(n))`
-/

namespace A047091.P13345612667781911020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A047089 (A046092 n).toNat

end

end A047091.P13345612667781911020

/-! ## A047091.P2103621110832192907

`A047089(A046092(n))+A000007(n+1)`
-/

namespace A047091.P2103621110832192907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A046092 n).toNat + A000007 (n + 1)

end

end A047091.P2103621110832192907

/-! ## A047091.P481521613200503014

`lcm(A047089(A046092(n)), A071935(n+1))`
-/

namespace A047091.P481521613200503014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047089 (A046092 n).toNat) (A071935 (n + 1))

end

end A047091.P481521613200503014

/-! ## A047091.P474086752700426225

`gcd(2-A000122(n²), A047089(A046092(n)))`
-/

namespace A047091.P474086752700426225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A000122 (n ^ 2)) (A047089 (A046092 n).toNat)

end

end A047091.P474086752700426225

/-! ## A047091.P16758447263066081904

`A047089(A046092(n))/A013609(∑[n+1])`
-/

namespace A047091.P16758447263066081904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047089 (A046092 n).toNat : ℚ) / (A013609 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A047091.P16758447263066081904

/-! ## A047091.P940622109558233828

`A047089(A046092(n))+char[A069674(n+1)]`
-/

namespace A047091.P940622109558233828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069674 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047091.P940622109558233828

/-! ## A047091.P9946553736163221336

`A047089(A046092(n))+A000122(5*n+2)`
-/

namespace A047091.P9946553736163221336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A046092 n).toNat + A000122 (5 * n + 2)

end

end A047091.P9946553736163221336

/-! ## A047091.P14602130974227494090

`A014963(A053743(n))*A047089(A046092(n))`
-/

namespace A047091.P14602130974227494090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053743 n).toNat * A047089 (A046092 n).toNat

end

end A047091.P14602130974227494090

/-!
# A047092: T(n,n-1), array T as in A047089.

The programs for A047092, there is no canonical definition to state claims against.
-/

/-! ## A047092.P11492176013277277820

`A047089(2*(n+1)²)`
-/

namespace A047092.P11492176013277277820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (2 * (n + 1) ^ 2)

end

end A047092.P11492176013277277820

/-! ## A047092.P794004402924520370

`record[A047089(∑[A014682(n)])]`
-/

namespace A047092.P794004402924520370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P794004402924520370

/-! ## A047092.P3432445981608519092

`record[A047089(n*A004526(n))]`
-/

namespace A047092.P3432445981608519092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 ((n : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P3432445981608519092

/-! ## A047092.P15132574173792555352

`record[A047089(n*A142150(n))]`
-/

namespace A047092.P15132574173792555352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 ((n : ℤ) * A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P15132574173792555352

/-! ## A047092.P5398851227549528198

`record[A047089(A286457(n+1)+n)]`
-/

namespace A047092.P5398851227549528198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A286457 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P5398851227549528198

/-! ## A047092.P4992566868797800199

`record[A047089(gcd(n, A051777(n+1)))]`
-/

namespace A047092.P4992566868797800199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (Int.gcd (n : ℤ) (A051777 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P4992566868797800199

/-! ## A047092.P8264486586292925171

`record[A047089(∑[A226782(n+1)]+1)]`
-/

namespace A047092.P8264486586292925171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P8264486586292925171

/-! ## A047092.P15706405466658320829

`record[(1-A051777(n+1))*A047089(n)]`
-/

namespace A047092.P15706405466658320829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051777 (n + 1)) * A047089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047092.P15706405466658320829

/-!
# A047093: T(n,n-2), array T as in A047089.

The programs for A047093, there is no canonical definition to state claims against.
-/

/-! ## A047093.P10354123612708733619

`A047089((n+1)²+(n+2)²)`
-/

namespace A047093.P10354123612708733619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047093.P10354123612708733619

/-! ## A047093.P12283153199587572554

`record[A047089(Δ[A235355(n)])]`
-/

namespace A047093.P12283153199587572554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047093.P12283153199587572554

/-! ## A047093.P4792441956846508303

`record[A047089(A286457(n+1))]`
-/

namespace A047093.P4792441956846508303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A286457 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047093.P4792441956846508303

/-! ## A047093.P17345919635001704897

`record[A047089(∑[A014682(n)]-n)]`
-/

namespace A047093.P17345919635001704897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047093.P17345919635001704897

/-! ## A047093.P10195456325371760109

`or(A000007(n), A047089(A001844(n+1)))`
-/

namespace A047093.P10195456325371760109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047089 (A001844 (n + 1)).toNat)

end

end A047093.P10195456325371760109

/-! ## A047093.P15258259022595157190

`A047089(A001844(n+1))+A000007(n+1)`
-/

namespace A047093.P15258259022595157190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A001844 (n + 1)).toNat + A000007 (n + 1)

end

end A047093.P15258259022595157190

/-! ## A047093.P10660304506105641939

`A126869(2*n+1)+A047089(A001844(n+1))`
-/

namespace A047093.P10660304506105641939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n + 1) + A047089 (A001844 (n + 1)).toNat

end

end A047093.P10660304506105641939

/-!
# A047094: T(n,n-3), array T as in A047089.

The programs for A047094, there is no canonical definition to state claims against.
-/

/-! ## A047094.P6890986947631139318

`A047089(A005408((n+2)²))`
-/

namespace A047094.P6890986947631139318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A005408 ((n + 2) ^ 2)).toNat

end

end A047094.P6890986947631139318

/-! ## A047094.P17612509850260772628

`A047089(A155705(∑[n+2]))`
-/

namespace A047094.P17612509850260772628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A155705 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047094.P17612509850260772628

/-! ## A047094.P11804101220424761652

`A047089(A152811(n+1)+7)`
-/

namespace A047094.P11804101220424761652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A152811 (n + 1) + 7).toNat

end

end A047094.P11804101220424761652

/-! ## A047094.P14898765076591893850

`A047089(eq[7, A316272(n+1)])`
-/

namespace A047094.P14898765076591893850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047094.P14898765076591893850

/-! ## A047094.P9894929266159370520

`record[A047089(Δ[A235355(n)]-n)]`
-/

namespace A047094.P9894929266159370520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047094.P9894929266159370520

/-! ## A047094.P14630085931626343692

`A047089(A167614(2*(n+1))+n)`
-/

namespace A047094.P14630085931626343692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A047094.P14630085931626343692

/-! ## A047094.P12574799543474765748

`A047089(eq[7, A253146(n+1)])`
-/

namespace A047094.P12574799543474765748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047094.P12574799543474765748

/-!
# A047095: T(n,n+1), array T as in A047089.

The programs for A047095, there is no canonical definition to state claims against.
-/

/-! ## A047095.P10841546271718654888

`A047089(2*n+∑[4*n]+1)`
-/

namespace A047095.P10841546271718654888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A047095.P10841546271718654888

/-! ## A047095.P14443126018050761053

`record[A047089(4*C(ceil(n/2), 2)+n)]`
-/

namespace A047095.P14443126018050761053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (4 * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047095.P14443126018050761053

/-! ## A047095.P16499396418044115036

`record[A047089(∑[A226782(n+1)])]`
-/

namespace A047095.P16499396418044115036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047095.P16499396418044115036

/-! ## A047095.P18163367563606202807

`record[A047089(Δ[A235355(n)]+n)]`
-/

namespace A047095.P18163367563606202807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047095.P18163367563606202807

/-! ## A047095.P14727559202214483035

`record[A047089(A286457(n+2)+n)]`
-/

namespace A047095.P14727559202214483035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A286457 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047095.P14727559202214483035

/-!
# A047096: T(n,n+2), array T as in A047089.

The programs for A047096, there is no canonical definition to state claims against.
-/

/-! ## A047096.P12667926275696868075

`A047095(n+1)-A047091(n+1)`
-/

namespace A047096.P12667926275696868075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047095 (n + 1) - A047091 (n + 1)

end

end A047096.P12667926275696868075

/-! ## A047096.P14721069424240842789

`A047089(A132209(n+1))`
-/

namespace A047096.P14721069424240842789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A132209 (n + 1)).toNat

end

end A047096.P14721069424240842789

/-! ## A047096.P5592589411412583293

`A047089(A142463(n+1))`
-/

namespace A047096.P5592589411412583293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A142463 (n + 1)).toNat

end

end A047096.P5592589411412583293

/-! ## A047096.P4389179821124492775

`A047089(A046092(n+1)-1)`
-/

namespace A047096.P4389179821124492775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A046092 (n + 1) - 1).toNat

end

end A047096.P4389179821124492775

/-! ## A047096.P3202009736554377719

`A047089(A001844(n+1)-2)`
-/

namespace A047096.P3202009736554377719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A001844 (n + 1) - 2).toNat

end

end A047096.P3202009736554377719

/-! ## A047096.P16578246344544597357

`A047089(A099776(n+1)-2)`
-/

namespace A047096.P16578246344544597357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A099776 (n + 1) - 2).toNat

end

end A047096.P16578246344544597357

/-! ## A047096.P13594593836861984795

`A047089(eq[1, A316272(n+2)])`
-/

namespace A047096.P13594593836861984795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316272 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047096.P13594593836861984795

/-! ## A047096.P14725303904023562553

`record[A047089(∑[A014682(n)]+n)]`
-/

namespace A047096.P14725303904023562553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047096.P14725303904023562553

/-! ## A047096.P3716863029369908828

`A047089(eq[1, A253146(n+2)])`
-/

namespace A047096.P3716863029369908828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047096.P3716863029369908828

/-!
# A047097: T(n,n+3), array T as in A047089.

The programs for A047097, there is no canonical definition to state claims against.
-/

/-! ## A047097.P3767155549388936459

`Δ[A047096(n)]-A047091(n+1)`
-/

namespace A047097.P3767155549388936459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047091 (n + 1)

end

end A047097.P3767155549388936459

/-! ## A047097.P13212125893194688550

`A047096(n+1)-A047095(n+1)`
-/

namespace A047097.P13212125893194688550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047096 (n + 1) - A047095 (n + 1)

end

end A047097.P13212125893194688550

/-! ## A047097.P5778175964903619103

`Δ[A047096(n)-A047091(n)]-A047091(n)`
-/

namespace A047097.P5778175964903619103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047096 n - A047091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047091 n

end

end A047097.P5778175964903619103

/-! ## A047097.P6904250423188818094

`A047096(n+1)-(A047096(n)+A047091(n+1))`
-/

namespace A047097.P6904250423188818094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047096 (n + 1) - (A047096 n + A047091 (n + 1))

end

end A047097.P6904250423188818094

/-! ## A047097.P12281591015763942394

`A047089(∑[a(n-1)+4])` with `a(0)=6`
-/

namespace A047097.P12281591015763942394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047097.P12281591015763942394

/-! ## A047097.P9368122364072358100

`A047089(2*(n+1)*(n+3))`
-/

namespace A047097.P9368122364072358100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (2 * ((n + 1) * (n + 3)))

end

end A047097.P9368122364072358100

/-! ## A047097.P2991064447940741843

`record[A047089(∑[A014682(n)+2])]`
-/

namespace A047097.P2991064447940741843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047097.P2991064447940741843

/-!
# A047098: a(n) = 2*binomial(3*n, n) - Sum_{k=0..n} binomial(3*n, k).

The programs for A047098, there is no canonical definition to state claims against.
-/

/-! ## A047098.P802662677293378590

`A126042(3*n)`
-/

namespace A047098.P802662677293378590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (3 * n)

end

end A047098.P802662677293378590

/-! ## A047098.P5624821950493505454

`A129874(Δ[n²])/2`
-/

namespace A047098.P5624821950493505454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129874 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A047098.P5624821950493505454

/-! ## A047098.P6214462348368461707

`2*A005809(n)-A066380(n)`
-/

namespace A047098.P6214462348368461707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005809 n - A066380 n

end

end A047098.P6214462348368461707

/-! ## A047098.P4377196041894002938

`A107030(A167614(n+2))`
-/

namespace A047098.P4377196041894002938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 (A167614 (n + 2)).toNat

end

end A047098.P4377196041894002938

/-! ## A047098.P10118461600204992070

`A107027(A055999(n+1)+2)`
-/

namespace A047098.P10118461600204992070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 (A055999 (n + 1) + 2).toNat

end

end A047098.P10118461600204992070

/-! ## A047098.P18419527672931868413

`A213028(∑[n+3])`
-/

namespace A047098.P18419527672931868413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213028 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047098.P18419527672931868413

/-! ## A047098.P9697598688615305538

`record[A213028(A027379(A059905(n)))]`
-/

namespace A047098.P9697598688615305538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213028 (A027379 (A059905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047098.P9697598688615305538

/-! ## A047098.P6961207862666305444

`record[A213028(A052938(A048840(n)))]`
-/

namespace A047098.P6961207862666305444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213028 (A052938 (A048840 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047098.P6961207862666305444

/-! ## A047098.P11638948129794785181

`record[A213028(A027379(A000188(n+1)))]`
-/

namespace A047098.P11638948129794785181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213028 (A027379 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047098.P11638948129794785181

/-! ## A047098.P10300038678747653809

`record[A213028(A027379(A050873(n+1)))]`
-/

namespace A047098.P10300038678747653809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213028 (A027379 (A050873 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047098.P10300038678747653809

/-!
# A047099: a(n) = A047098(n)/2.

The programs for A047099, there is no canonical definition to state claims against.
-/

/-! ## A047099.P10041740196740171464

`A047098(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047099.P10041740196740171464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047098 (n + 1) : ℚ) / 2

end

end A047099.P10041740196740171464

/-! ## A047099.P5589179788818419764

`A129874(2*(n+1))`
-/

namespace A047099.P5589179788818419764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129874 (2 * (n + 1))

end

end A047099.P5589179788818419764

/-! ## A047099.P11917585143451395163

`A126042(3*n+2)`
-/

namespace A047099.P11917585143451395163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (3 * n + 2)

end

end A047099.P11917585143451395163

/-! ## A047099.P17324847139846540978

`Δ[∑[A047098(n)]/2]`
-/

namespace A047099.P17324847139846540978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047099.P17324847139846540978

/-! ## A047099.P17199018104287904715

`A165817(n+1)+A165817(n+1)-A387033(n+1)`
-/

namespace A047099.P17199018104287904715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) + (A165817 (n + 1) - A387033 (n + 1))

end

end A047099.P17199018104287904715

/-! ## A047099.P16215825455100663724

`A005809(n+1)-A066380(n+1)/2`
-/

namespace A047099.P16215825455100663724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 (n + 1) : ℚ) - (A066380 (n + 1) : ℚ) / 2

end

end A047099.P16215825455100663724

/-! ## A047099.P208615134286621636

`A213027(A055998(n+2))`
-/

namespace A047099.P208615134286621636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A055998 (n + 2)).toNat

end

end A047099.P208615134286621636

/-! ## A047099.P15494198798036429847

`A213027(A155212(n)+5)`
-/

namespace A047099.P15494198798036429847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A155212 n + 5).toNat

end

end A047099.P15494198798036429847

/-! ## A047099.P2358499869952430505

`A213027(A052905(n+1)+2)`
-/

namespace A047099.P2358499869952430505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A052905 (n + 1) + 2).toNat

end

end A047099.P2358499869952430505

/-! ## A047099.P17401463346629078399

`record[A213027(A055998(A008611(n)))]`
-/

namespace A047099.P17401463346629078399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047099.P17401463346629078399

